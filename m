Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 689D516BBE2
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2020 09:31:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B665A6EA0F;
	Tue, 25 Feb 2020 08:31:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 82B976EA0C;
 Tue, 25 Feb 2020 08:31:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 78D06A66C9;
 Tue, 25 Feb 2020 08:31:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 25 Feb 2020 08:31:30 -0000
Message-ID: <158261949046.5721.2283253365926869980@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200225082233.274530-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200225082233.274530-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/11=5D_drm/i915=3A_Drop_assertion?=
 =?utf-8?q?_that_active-=3Efence_is_unchanged?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [01/11] drm/i915: Drop assertion that active->fence is unchanged
URL   : https://patchwork.freedesktop.org/series/73885/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
116a85830f70 drm/i915: Drop assertion that active->fence is unchanged
99c957394dc0 drm/i915: Manually acquire engine-wakeref around use of kernel_context
4a107b77a0ee drm/i915/gt: Pull marking vm as closed underneath the vm->mutex
-:12: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#12: 
References: 00de702c6c6f ("drm/i915: Check that the vma hasn't been closed before we insert it")

-:12: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 00de702c6c6f ("drm/i915: Check that the vma hasn't been closed before we insert it")'
#12: 
References: 00de702c6c6f ("drm/i915: Check that the vma hasn't been closed before we insert it")

total: 1 errors, 1 warnings, 0 checks, 26 lines checked
197b287a872f drm/i915/gem: Cleanup shadow batch after I915_EXEC_SECURE
4a5d710d5720 drm/i915: Protect i915_request_await_start from early waits
e0ed0c3b4803 drm/i915/selftests: Verify LRC isolation
-:449: WARNING:MEMORY_BARRIER: memory barrier without comment
#449: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:5179:
+	wmb();

total: 0 errors, 1 warnings, 0 checks, 557 lines checked
9635b717c078 drm/i915/selftests: Check recovery from corrupted LRC
d88c6fb794e9 drm/i915/selftests: Be a little more lenient for reset workers
38f0de3a05b3 drm/i915/gem: Consolidate ctx->engines[] release
3629118c25f6 drm/i915/gt: Prevent allocation on a banned context
673a1ac1e5fc drm/i915/gem: Check that the context wasn't closed during setup

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
