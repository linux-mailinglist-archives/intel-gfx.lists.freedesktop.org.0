Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E84FA1A088E
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 09:45:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FCD76E570;
	Tue,  7 Apr 2020 07:45:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 078146E570;
 Tue,  7 Apr 2020 07:45:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 01CA1A00C7;
 Tue,  7 Apr 2020 07:45:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jeevan B" <jeevan.b@intel.com>
Date: Tue, 07 Apr 2020 07:45:01 -0000
Message-ID: <158624550100.26325.16307056540194785137@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <1586242207-23214-1-git-send-email-jeevan.b@intel.com>
In-Reply-To: <1586242207-23214-1-git-send-email-jeevan.b@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?series_starting_with_=5B1/5=5D_drm=3A_report_dp_downstream_port?=
 =?utf-8?q?_type_as_a_subconnector_property?=
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

Series: series starting with [1/5] drm: report dp downstream port type as a subconnector property
URL   : https://patchwork.freedesktop.org/series/75585/
State : warning

== Summary ==

$ dim sparse origin/drm-tip
Sparse version: v0.6.0
Commit: drm: report dp downstream port type as a subconnector property
Okay!

Commit: drm/i915: utilize subconnector property for DP
Okay!

Commit: drm/nouveau: utilize subconnector property for DP
Okay!

Commit: drm/amdgpu: utilize subconnector property for DP through atombios
Okay!

Commit: drm/amdgpu: utilize subconnector property for DP through DisplayManager
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1154:17: warning: cast to restricted __le32
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1154:17: warning: cast to restricted __le32
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1154:17: warning: cast to restricted __le32
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1154:17: warning: cast to restricted __le32
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1154:17: warning: cast to restricted __le32
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1154:17: warning: cast to restricted __le32
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1159:17: warning: cast to restricted __le32
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1159:17: warning: cast to restricted __le32
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1159:17: warning: cast to restricted __le32
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1161:36: warning: cast to restricted __le32
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1228:25: warning: cast to restricted __le32
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1228:25: warning: cast to restricted __le32
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1228:25: warning: cast to restricted __le32
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1234:37: warning: cast to restricted __le32
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1260:41: warning: cast to restricted __le32
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1262:39: warning: cast to restricted __le32
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1266:17: warning: cast to restricted __le32
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1267:17: warning: cast to restricted __le32
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:2511:24: warning: symbol 'dm_atomic_get_new_state' was not declared. Should it be static?
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:2529:24: warning: symbol 'dm_atomic_get_old_state' was not declared. Should it be static?
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:5298:6: warning: symbol 'dm_drm_plane_destroy_state' was not declared. Should it be static?
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:750:6: warning: symbol 'amdgpu_dm_audio_eld_notify' was not declared. Should it be static?
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:805:25: warning: cast to restricted __le32
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:809:23: warning: cast to restricted __le32
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:810:23: warning: cast to restricted __le32
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:813:30: warning: cast to restricted __le32
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:816:28: warning: cast to restricted __le32
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:8632:6: warning: symbol 'amdgpu_dm_psr_enable' was not declared. Should it be static?
-drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:8636:50: warning: missing braces around initializer
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1190:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1190:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1190:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1190:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1190:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1190:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1195:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1195:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1195:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1197:36: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1264:25: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1264:25: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1264:25: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1270:37: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1296:41: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1298:39: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1302:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:1303:17: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:2548:24: warning: symbol 'dm_atomic_get_new_state' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:2566:24: warning: symbol 'dm_atomic_get_old_state' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:5337:6: warning: symbol 'dm_drm_plane_destroy_state' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:786:6: warning: symbol 'amdgpu_dm_audio_eld_notify' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:841:25: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:845:23: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:846:23: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:849:30: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:852:28: warning: cast to restricted __le32
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:8671:6: warning: symbol 'amdgpu_dm_psr_enable' was not declared. Should it be static?
+drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:8675:50: warning: missing braces around initializer

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
