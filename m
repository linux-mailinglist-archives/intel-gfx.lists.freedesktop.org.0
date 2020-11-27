Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 43D3D2C60AA
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Nov 2020 08:53:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F215E6E965;
	Fri, 27 Nov 2020 07:53:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0688A6E965;
 Fri, 27 Nov 2020 07:53:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F0CC9A47E2;
 Fri, 27 Nov 2020 07:53:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Uma Shankar" <uma.shankar@intel.com>
Date: Fri, 27 Nov 2020 07:53:26 -0000
Message-ID: <160646360694.26783.4970083016440222657@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201126210314.7882-1-uma.shankar@intel.com>
In-Reply-To: <20201126210314.7882-1-uma.shankar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Enable_HDR_on_MCA_LSPCON_based_Gen9_devices_=28rev12=29?=
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

Series: Enable HDR on MCA LSPCON based Gen9 devices (rev12)
URL   : https://patchwork.freedesktop.org/series/68081/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
07f151724145 drm/i915/display: Add HDR Capability detection for LSPCON
015b28ecdd00 drm/i915/display: Enable HDR on gen9 devices with MCA Lspcon
566633074760 drm/i915/display: Attach HDR property for capable Gen9 devices
-:58: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#58: FILE: drivers/gpu/drm/i915/display/intel_dp.c:6804:
+						   connector->dev->mode_config.hdr_output_metadata_property,

total: 0 errors, 1 warnings, 0 checks, 45 lines checked
819a38caa76a drm/i915/display: Fixes quantization range for YCbCr output
caa7a05c57aa drm/i915/display: Add a WARN for invalid output range and format
19e480392aa1 drm/i915/display: Attach content type property for LSPCON
5904fa4c5259 drm/i915: Split intel_attach_colorspace_property() into HDMI vs. DP variants
9e4c990a2a21 drm/i915/display: Enable colorspace programming for LSPCON devices
589d8106afd0 drm/i915/display: Nuke bogus lspcon check
82c84c1a78fa drm/i915/display: Enable HDR for Parade based lspcon
1a2451b47ea0 drm/i915/lspcon: Create separate infoframe_enabled helper
76e7ab963acd drm/i915/display: Implement infoframes readback for LSPCON
e9838030d807 drm/i915/display: Implement DRM infoframe read for LSPCON
b992e94961f3 drm/i915/lspcon: Do not send DRM infoframes to non-HDMI sinks
1702176c40ec drm/i915/display: [NOT FOR MERGE] Reduce blanking to support 4k60@10bpp for LSPCON


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
