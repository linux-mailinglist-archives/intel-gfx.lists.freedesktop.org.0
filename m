Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 39C78162C58
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2020 18:17:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 547186EA45;
	Tue, 18 Feb 2020 17:16:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail3-165.sinamail.sina.com.cn (mail3-165.sinamail.sina.com.cn
 [202.108.3.165])
 by gabe.freedesktop.org (Postfix) with SMTP id 648376E046
 for <intel-gfx@lists.freedesktop.org>; Sun, 16 Feb 2020 14:55:33 +0000 (UTC)
Received: from unknown (HELO localhost.localdomain)([222.131.68.206])
 by sina.com with ESMTP
 id 5E4957DF00034C8A; Sun, 16 Feb 2020 22:55:29 +0800 (CST)
X-Sender: hdanton@sina.com
X-Auth-ID: hdanton@sina.com
X-SMAIL-MID: 564330628796
From: Hillf Danton <hdanton@sina.com>
To: toralf.foerster@gmx.de
Date: Sun, 16 Feb 2020 22:55:18 +0800
Message-Id: <20200216145518.9728-1-hdanton@sina.com>
In-Reply-To: <20200216032625.11452-1-hdanton@sina.com>
References: <20200216032625.11452-1-hdanton@sina.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 18 Feb 2020 17:16:57 +0000
Subject: Re: [Intel-gfx] kernel 5.5.4: BUG: kernel NULL pointer dereference,
 address: 000000000000000
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Linux Kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On Sun, 16 Feb 2020 11:33:02 +0100 Toralf Foerster wrote:
> On 2/16/20 4:26 AM, Hillf Danton wrote:
> > Looks like a stray lock counts for the above NULL dereference.
> >
> Hi, the patch applied on top of 5.5.4 breaks the internal display now even
>  in the boot phase.

My bad.

Then try to do fence signaling before taking request's lock as we'll
take the fence specific lock if we're in the right direction.

--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -252,10 +252,10 @@ bool i915_request_retire(struct i915_req
 	 */
 	remove_from_engine(rq);
 
+	dma_fence_signal(&rq->fence);
+
 	spin_lock_irq(&rq->lock);
 	i915_request_mark_complete(rq);
-	if (!i915_request_signaled(rq))
-		dma_fence_signal_locked(&rq->fence);
 	if (test_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT, &rq->fence.flags))
 		i915_request_cancel_breadcrumb(rq);
 	if (i915_request_has_waitboost(rq)) {

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
