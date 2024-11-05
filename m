Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C0E39BC7D6
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2024 09:17:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBD7F10E0A2;
	Tue,  5 Nov 2024 08:17:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8066C10E2B4;
 Tue,  5 Nov 2024 08:17:46 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_use_hw_support_for_m?=
 =?utf-8?q?in/interim_ddb_allocation_for_async_flip?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vinod Govindapillai" <vinod.govindapillai@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 05 Nov 2024 08:17:46 -0000
Message-ID: <173079466652.1410778.4889938771492026431@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241105071600.235338-1-vinod.govindapillai@intel.com>
In-Reply-To: <20241105071600.235338-1-vinod.govindapillai@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: use hw support for min/interim ddb allocation for async flip
URL   : https://patchwork.freedesktop.org/series/140926/
State : warning

== Summary ==

Error: dim checkpatch failed
acb3e49da85c drm/i915/display: update intel_enabled_dbuf_slices_mask to use intel_display
b84a5d898f42 drm/i9i5/display: use intel_display in intel_de_read calls of skl_watermark.c
2934034c4582 drm/i915/display: update use_minimal_wm0_only to use intel_display
3122450e2068 drm/i915/display: update use_min_ddb to use intel_display
2360df5e99fa drm/i915/display: update skl_plane_wm_equals to use intel_display
ce94cb899eb4 drm/i915/display: update to plane_wm register access function
09dc311e04dd drm/i915/xe3: Use hw support for min/interim ddb allocations for async flip
-:147: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#147: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:382:
+							_PLANE_MIN_BUF_CFG_1_A, _PLANE_MIN_BUF_CFG_1_B, \

-:148: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#148: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:383:
+							_PLANE_MIN_BUF_CFG_2_A, _PLANE_MIN_BUF_CFG_2_B)

-:241: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#241: FILE: drivers/gpu/drm/i915/display/skl_watermark.c:1549:
+	memset(crtc_state->wm.skl.plane_interim_ddb, 0, sizeof(crtc_state->wm.skl.plane_interim_ddb));

total: 0 errors, 3 warnings, 0 checks, 338 lines checked
4a7a49977f30 drm/i915/debugfs: add dbuf alloc status as part of i915_ddb_info


