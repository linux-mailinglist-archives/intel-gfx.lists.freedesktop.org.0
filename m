Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F221C1F7EB2
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Jun 2020 00:02:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F6AB6E1F3;
	Fri, 12 Jun 2020 22:02:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B46976E1F3;
 Fri, 12 Jun 2020 22:02:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B192AA0091;
 Fri, 12 Jun 2020 22:02:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Fri, 12 Jun 2020 22:02:46 -0000
Message-ID: <159199936672.21335.11184474515650980594@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200612160056.2082681-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200612160056.2082681-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?series_starting_with_=5B1/8=5D_drm/atomic-helper=3A_reset_vblan?=
 =?utf-8?q?k_on_crtc_reset_=28rev2=29?=
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

Series: series starting with [1/8] drm/atomic-helper: reset vblank on crtc reset (rev2)
URL   : https://patchwork.freedesktop.org/series/78268/
State : warning

== Summary ==

$ dim sparse --fast origin/drm-tip
Sparse version: v0.6.0
Fast mode used, each commit won't be checked separately.
-
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1121:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1121:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1121:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1121:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1121:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1121:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1126:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1126:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1126:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1128:36: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1195:25: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1195:25: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1195:25: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1201:37: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1227:41: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1229:39: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1233:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1234:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1237:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1576:16: warning: symbol 'amdgpu_dm_commit_zero_streams' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:2696:24: warning: symbol 'dm_atomic_get_new_state' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:2714:24: warning: symbol 'dm_atomic_get_old_state' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:5537:6: warning: symbol 'dm_drm_plane_destroy_state' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:699:6: warning: symbol 'amdgpu_dm_audio_eld_notify' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:754:25: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:758:23: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:759:23: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:762:30: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:765:28: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:8921:6: warning: symbol 'amdgpu_dm_psr_enable' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:8925:50: warning: missing braces around initializer

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
