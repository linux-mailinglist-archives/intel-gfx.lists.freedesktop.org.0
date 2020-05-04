Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D3271C3BB7
	for <lists+intel-gfx@lfdr.de>; Mon,  4 May 2020 15:50:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 757336E402;
	Mon,  4 May 2020 13:50:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00A476E402
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 May 2020 13:50:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21106860-1500050 
 for multiple; Mon, 04 May 2020 14:50:33 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 May 2020 14:50:24 +0100
Message-Id: <20200504135030.19210-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] Wait-for-submit on future syncobj
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: kenneth@whitecape.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This series extends the I915_EXEC_FENCE_SUBMIT to syncobj; with the
primary motivation for this to allow userspace to schedule between
individual clients coordinating with semaphores. The advantage syncobj
have over sync-file is that since the syncobj is known a priori, it can
be used to pass the location of a not-yet-submitted fence. This is used
by iris in its deferred flush implementations where a fence is acquired
for an incomplete batch, and that future-fence may be used to
serlisation execution in another context. Since we already handle
'bonded execution' for media submission, we need only extend support to
syncobjs.

A simplified example of out-of-order execution that is required by iris:

        struct drm_i915_gem_exec_object2 obj = {
                .offset = 24 << 20,
                .handle = future_submit_batch(i915, 24 << 20),
                .flags = EXEC_OBJECT_PINNED,
        };
        struct drm_i915_gem_exec_fence fence = {
                .handle = syncobj_create(i915, 0),
        };
        struct drm_i915_gem_execbuffer2 execbuf  = {
                .buffers_ptr = to_user_pointer(&obj),
                .buffer_count = 1,
                .cliprects_ptr = to_user_pointer(&fence),
                .num_cliprects = 1,
                .flags = engine | I915_EXEC_FENCE_ARRAY,
        };
        uint32_t result;
        int out;

        /*
         * Here we submit client A waiting on client B, but internally client
         * B has a semaphore that waits on client A. This relies on timeslicing
         * to reorder B before A, even though userspace has asked to submit
         * A & B simultaneously (and due to the sequence we will submit B
         * then A).
         */
        igt_require(gem_scheduler_has_timeslicing(i915));

        execbuf.rsvd1 = gem_context_create(i915);
        fence.flags = I915_EXEC_FENCE_WAIT | I915_EXEC_FENCE_WAIT_SUBMIT;
        execbuf.batch_start_offset = 0;
        execbuf.flags |= I915_EXEC_FENCE_OUT;
        igt_require(__gem_execbuf_wr(i915, &execbuf) == 0); /* writes 1 */
        execbuf.flags &= ~I915_EXEC_FENCE_OUT;
        gem_context_destroy(i915, execbuf.rsvd1);

        execbuf.rsvd1 = gem_context_create(i915);
        fence.flags = I915_EXEC_FENCE_SIGNAL;
        execbuf.batch_start_offset = 64;
        gem_execbuf(i915, &execbuf); /* writes 2 */
        gem_context_destroy(i915, execbuf.rsvd1);

        gem_sync(i915, obj.handle); /* write hazard lies */
        gem_read(i915, obj.handle, 4000, &result, sizeof(result));
        igt_assert_eq(result, 2);

        /* check we didn't autotimeout */
        out = execbuf.rsvd2 >> 32;
        igt_assert_eq(sync_fence_status(out), 1);
        close(out);

        gem_close(i915, obj.handle);
        syncobj_destroy(i915, fence.handle);


Link: https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/3802
Link: https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/4854



_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
