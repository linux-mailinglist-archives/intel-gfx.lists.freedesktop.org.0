Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A32451CF1BD
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2020 11:38:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12D0489101;
	Tue, 12 May 2020 09:38:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 09AC989101;
 Tue, 12 May 2020 09:38:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 02E1FA47EE;
 Tue, 12 May 2020 09:38:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Tue, 12 May 2020 09:38:37 -0000
Message-ID: <158927631798.18142.4111847127312310578@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200512085944.222637-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200512085944.222637-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?dma-fence_lockdep_annotations?=
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

Series: dma-fence lockdep annotations
URL   : https://patchwork.freedesktop.org/series/77178/
State : warning

== Summary ==

$ dim sparse origin/drm-tip
Sparse version: v0.6.0
Commit: dma-fence: add might_sleep annotation to _wait()
Okay!

Commit: dma-fence: basic lockdep annotations
Okay!

Commit: dma-fence: prime lockdep annotations
Okay!

Commit: drm/vkms: Annotate vblank timer
Okay!

Commit: drm/vblank: Annotate with dma-fence signalling section
Okay!

Commit: drm/atomic-helper: Add dma-fence annotations
Okay!

Commit: drm/amdgpu: add dma-fence annotations to atomic commit path
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1155:17: warning: cast to restricted __le32
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1155:17: warning: cast to restricted __le32
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1155:17: warning: cast to restricted __le32
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1155:17: warning: cast to restricted __le32
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1155:17: warning: cast to restricted __le32
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1155:17: warning: cast to restricted __le32
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1160:17: warning: cast to restricted __le32
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1160:17: warning: cast to restricted __le32
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1160:17: warning: cast to restricted __le32
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1162:36: warning: cast to restricted __le32
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1229:25: warning: cast to restricted __le32
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1229:25: warning: cast to restricted __le32
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1229:25: warning: cast to restricted __le32
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1235:37: warning: cast to restricted __le32
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1261:41: warning: cast to restricted __le32
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1263:39: warning: cast to restricted __le32
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1267:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1156:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1156:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1156:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1156:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1156:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1156:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1161:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1161:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1161:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1163:36: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1230:25: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1230:25: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1230:25: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1236:37: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1262:41: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1264:39: warning: cast to restricted __le32
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1271:17: warning: cast to restricted __le32
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:2521:24: warning: symbol 'dm_atomic_get_new_state' was not declared. Should it be static?
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:2539:24: warning: symbol 'dm_atomic_get_old_state' was not declared. Should it be static?
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:5337:6: warning: symbol 'dm_drm_plane_destroy_state' was not declared. Should it be static?
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:750:6: warning: symbol 'amdgpu_dm_audio_eld_notify' was not declared. Should it be static?
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:805:25: warning: cast to restricted __le32
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:809:23: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1269:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1272:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:2522:24: warning: symbol 'dm_atomic_get_new_state' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:2540:24: warning: symbol 'dm_atomic_get_old_state' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:5338:6: warning: symbol 'dm_drm_plane_destroy_state' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:751:6: warning: symbol 'amdgpu_dm_audio_eld_notify' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:806:25: warning: cast to restricted __le32
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:813:30: warning: cast to restricted __le32
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:816:28: warning: cast to restricted __le32
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:8702:6: warning: symbol 'amdgpu_dm_psr_enable' was not declared. Should it be static?
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:8706:50: warning: missing braces around initializer
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:811:23: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:814:30: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:817:28: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:8708:6: warning: symbol 'amdgpu_dm_psr_enable' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:8712:50: warning: missing braces around initializer

Commit: drm/scheduler: use dma-fence annotations in main thread
Okay!

Commit: drm/amdgpu: use dma-fence annotations in cs_submit()
Okay!

Commit: drm/amdgpu: s/GFP_KERNEL/GFP_ATOMIC in scheduler code
Okay!

Commit: drm/amdgpu: DC also loves to allocate stuff where it shouldn't
Okay!

Commit: drm/amdgpu/dc: Stop dma_resv_lock inversion in commit_tail
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:8708:6: warning: symbol 'amdgpu_dm_psr_enable' was not declared. Should it be static?
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:8712:50: warning: missing braces around initializer
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:8718:6: warning: symbol 'amdgpu_dm_psr_enable' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:8722:50: warning: missing braces around initializer

Commit: drm/scheduler: use dma-fence annotations in tdr work
Okay!

Commit: drm/amdgpu: use dma-fence annotations for gpu reset code
Okay!

Commit: Revert "drm/amdgpu: add fbdev suspend/resume on gpu reset"
Okay!

Commit: drm/amdgpu: gpu recovery does full modesets
Okay!

Commit: drm/i915: Annotate dma_fence_work
Okay!

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
