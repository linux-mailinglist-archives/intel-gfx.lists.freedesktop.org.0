Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D8A456D6EAB
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Apr 2023 23:07:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03E8510E7B1;
	Tue,  4 Apr 2023 21:07:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 51A7110E7B1;
 Tue,  4 Apr 2023 21:07:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 47D16AADF8;
 Tue,  4 Apr 2023 21:07:13 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel@ffwll.ch>
Date: Tue, 04 Apr 2023 21:07:13 -0000
Message-ID: <168064243325.18899.11663675602700990589@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230308155322.344664-1-robdclark@gmail.com>
In-Reply-To: <20230308155322.344664-1-robdclark@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_dma-fence=3A_Deadline_awareness_=28rev2=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: dma-fence: Deadline awareness (rev2)
URL   : https://patchwork.freedesktop.org/series/114863/
State : warning

== Summary ==

Error: dim checkpatch failed
b82ef96a4f95 dma-buf/sync_file: Add SET_DEADLINE ioctl
-:12: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#12: 
https://gitlab.freedesktop.org/robclark/igt-gpu-tools/-/commits/fence-deadline

total: 0 errors, 1 warnings, 0 checks, 73 lines checked
1f0b01a9198a dma-buf/sw_sync: Add fence deadline support
-:57: CHECK:LINE_SPACING: Please don't use multiple blank lines
#57: FILE: drivers/dma-buf/sw_sync.c:80:
+
+

-:119: WARNING:BRACES: braces {} are not necessary for any arm of this statement
#119: FILE: drivers/dma-buf/sw_sync.c:450:
+	if (test_bit(SW_SYNC_HAS_DEADLINE_BIT, &fence->flags)) {
[...]
+	} else {
[...]

total: 0 errors, 1 warnings, 1 checks, 130 lines checked
d0201cc976fc drm/syncobj: Add deadline support for syncobj waits
-:41: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#41: FILE: drivers/gpu/drm/drm_syncobj.c:981:
+						  uint32_t *idx,

-:96: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#96: FILE: drivers/gpu/drm/drm_syncobj.c:1264:
+	unsigned possible_flags;

-:137: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#137: FILE: drivers/gpu/drm/drm_syncobj.c:1307:
+	unsigned possible_flags;

total: 0 errors, 2 warnings, 1 checks, 177 lines checked
f0f1f4138061 drm/atomic-helper: Set fence deadline for vblank
-:14: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#14: 
> > v3: If there are multiple CRTCs, consider the time of the soonest vblank

-:156: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 1 warnings, 0 checks, 18 lines checked
5d36f6c01873 drm/msm: Add deadline based boost support
-:26: WARNING:LINE_SPACING: Missing a blank line after declarations
#26: FILE: drivers/gpu/drm/msm/msm_fence.c:16:
+	struct msm_drm_private *priv = fctx->dev->dev_private;
+	return priv->gpu;

-:91: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#91: FILE: drivers/gpu/drm/msm/msm_fence.c:144:
+	if (ktime_after(now, fctx->next_deadline) ||
+			ktime_before(deadline, fctx->next_deadline)) {

-:105: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#105: FILE: drivers/gpu/drm/msm/msm_fence.c:158:
+			kthread_queue_work(fctx2gpu(fctx)->worker,
+					&fctx->deadline_work);

-:108: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#108: FILE: drivers/gpu/drm/msm/msm_fence.c:161:
+			hrtimer_start(&fctx->deadline_timer, deadline,
+					HRTIMER_MODE_ABS);

-:147: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#147: FILE: drivers/gpu/drm/msm/msm_fence.h:71:
+	uint32_t next_deadline_fence;

total: 0 errors, 1 warnings, 4 checks, 128 lines checked
25a5a1fbc3ed drm/msm: Add wait-boost support
651372c8d54b drm/msm/atomic: Switch to vblank_start helper
e60e06f3c7e1 drm/i915: Add deadline based boost support


