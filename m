Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14DFC8A77F0
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Apr 2024 00:44:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86C0510F3C1;
	Tue, 16 Apr 2024 22:44:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E08310E262;
 Tue, 16 Apr 2024 22:44:24 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/dp=3A_Few_M?=
 =?utf-8?q?TL/DSC_and_a_UHBR_monitor_fix_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 16 Apr 2024 22:44:24 -0000
Message-ID: <171330746425.1452189.17073762173280923131@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240416221010.376865-1-imre.deak@intel.com>
In-Reply-To: <20240416221010.376865-1-imre.deak@intel.com>
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

Series: drm/i915/dp: Few MTL/DSC and a UHBR monitor fix (rev2)
URL   : https://patchwork.freedesktop.org/series/131386/
State : warning

== Summary ==

Error: dim checkpatch failed
5724c674a1ec drm/i915/dp: Fix DSC line buffer depth programming
14de0d36c5c7 drm/i915/dp_mst: Fix symbol clock when calculating the DSC DPT bpp limit
4ddc14d15b02 drm/i915/dp_mst: Fix BW limit check when calculating DSC DPT bpp
8917c224c3d3 drm/i915/dp_mst: Account for channel coding efficiency in the DSC DPT bpp limit
c7b0c9026fa2 drm/i915/dp_mst: Account with the DSC DPT bpp limit on MTL
15320ff69e03 drm/i915/dp_mst: Sanitize calculating the DSC DPT bpp limit
106281453d04 drm/dp: Add drm_dp_uhbr_channel_coding_supported()
e6289b512704 drm/dp_mst: Factor out drm_dp_mst_port_is_logical()
de54f2b85a15 drm/dp_mst: Add drm_dp_mst_aux_for_parent()
4e68979f4124 drm/i915/dp_mst: Make HBLANK expansion quirk work for logical ports
e98b5e65b7ef drm/i915/dp_mst: Enable HBLANK expansion quirk for UHBR rates
-:37: WARNING:LONG_LINE_COMMENT: line length of 109 exceeds 100 columns
#37: FILE: drivers/gpu/drm/display/drm_dp_helper.c:2284:
+	/* MediaTek panels (at least in U3224KBA) require DSC for modes with a short HBLANK on UHBR links. */

-:38: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#38: FILE: drivers/gpu/drm/display/drm_dp_helper.c:2285:
+	{ OUI(0x00, 0x0C, 0xE7), DEVICE_ID_ANY, false, BIT(DP_DPCD_QUIRK_HBLANK_EXPANSION_REQUIRES_DSC) },

total: 0 errors, 2 warnings, 0 checks, 55 lines checked


