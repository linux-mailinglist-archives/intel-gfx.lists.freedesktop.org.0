Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57C722C517C
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Nov 2020 10:41:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 404326E839;
	Thu, 26 Nov 2020 09:41:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 513116E829;
 Thu, 26 Nov 2020 09:41:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3F5A5A41FB;
 Thu, 26 Nov 2020 09:41:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Shankar, Uma" <uma.shankar@intel.com>
Date: Thu, 26 Nov 2020 09:41:20 -0000
Message-ID: <160638368023.4110.2006642950104544680@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201126081445.29759-1-uma.shankar@intel.com>
In-Reply-To: <20201126081445.29759-1-uma.shankar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Enable_HDR_on_MCA_LSPCON_based_Gen9_devices_=28rev11=29?=
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

Series: Enable HDR on MCA LSPCON based Gen9 devices (rev11)
URL   : https://patchwork.freedesktop.org/series/68081/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e7d69665cf73 drm/i915/display: Add HDR Capability detection for LSPCON
b5fa510007a1 drm/i915/display: Enable HDR on gen9 devices with MCA Lspcon
94da9b381802 drm/i915/display: Attach HDR property for capable Gen9 devices
-:58: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#58: FILE: drivers/gpu/drm/i915/display/intel_dp.c:6804:
+						   connector->dev->mode_config.hdr_output_metadata_property,

total: 0 errors, 1 warnings, 0 checks, 45 lines checked
37af9241ac63 drm/i915/display: Enable quantization range for HDR on LSPCON devices
90a45305d915 drm/i915/display: Add a WARN for invalid output range and format
99311bb61d69 drm/i915/display: Attach content type property for LSPCON
78f2b24a1ff7 i915/display: Enable BT2020 for HDR on LSPCON devices
05833c4d31da drm/i915/display: Enable HDR for Parade based lspcon
9e5f135c0a29 drm/i915/display: Implement infoframes readback for LSPCON
ae81dd3d5f06 drm/i915/display: Implement DRM infoframe read for LSPCON
9cad91480b72 drm/i915/lspcon: Create separate infoframe_enabled helper
fd7bd8dacdb0 drm/i915/lspcon: Do not send DRM infoframes to non-HDMI sinks
35f0ce30d872 drm/i915/display: [NOT FOR MERGE] Reduce blanking to support 4k60@10bpp for LSPCON


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
