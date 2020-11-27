Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 281212C6971
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Nov 2020 17:32:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51AA46EE51;
	Fri, 27 Nov 2020 16:32:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C801E6EE4F;
 Fri, 27 Nov 2020 16:32:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BE2EFA7525;
 Fri, 27 Nov 2020 16:32:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Shankar, Uma" <uma.shankar@intel.com>
Date: Fri, 27 Nov 2020 16:32:20 -0000
Message-ID: <160649474074.26783.17999113978881182356@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201126210314.7882-1-uma.shankar@intel.com>
In-Reply-To: <20201126210314.7882-1-uma.shankar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Enable_HDR_on_MCA_LSPCON_based_Gen9_devices_=28rev14=29?=
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

Series: Enable HDR on MCA LSPCON based Gen9 devices (rev14)
URL   : https://patchwork.freedesktop.org/series/68081/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
7f90737a12fb drm/i915/display: Add HDR Capability detection for LSPCON
a44d7eb6654e drm/i915/display: Enable HDR on gen9 devices with MCA Lspcon
1319993255f3 drm/i915/display: Attach HDR property for capable Gen9 devices
-:58: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#58: FILE: drivers/gpu/drm/i915/display/intel_dp.c:6804:
+						   connector->dev->mode_config.hdr_output_metadata_property,

total: 0 errors, 1 warnings, 0 checks, 45 lines checked
36eb79c62329 drm/i915/display: Fixes quantization range for YCbCr output
5518242f17cc drm/i915/display: Add a WARN for invalid output range and format
8c6662304756 drm/i915/display: Attach content type property for LSPCON
953887a7e7fa drm/i915: Split intel_attach_colorspace_property() into HDMI vs. DP variants
952e986183d7 drm/i915/display: Enable colorspace programming for LSPCON devices
0d908347d855 drm/i915/display: Nuke bogus lspcon check
a62b61152c33 drm/i915/display: Enable HDR for Parade based lspcon
2897d74df2af drm/i915/lspcon: Create separate infoframe_enabled helper
617df78a8179 drm/i915/display: Implement infoframes readback for LSPCON
0fc199846536 drm/i915/display: Implement DRM infoframe read for LSPCON
9d54f5aa21a3 drm/i915/lspcon: Do not send DRM infoframes to non-HDMI sinks
de26a0b2bb4b drm/i915/display: [NOT FOR MERGE] Reduce blanking to support 4k60@10bpp for LSPCON


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
