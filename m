Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A447128FBC3
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Oct 2020 01:31:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DCA96E804;
	Thu, 15 Oct 2020 23:31:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4E81F6E804;
 Thu, 15 Oct 2020 23:31:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 46009A47E2;
 Thu, 15 Oct 2020 23:31:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Shankar, Uma" <uma.shankar@intel.com>
Date: Thu, 15 Oct 2020 23:31:50 -0000
Message-ID: <160280471028.13180.424970745086665180@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201015234902.7134-1-uma.shankar@intel.com>
In-Reply-To: <20201015234902.7134-1-uma.shankar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Enable_HDR_on_MCA_LSPCON_based_Gen9_devices_=28rev8=29?=
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

Series: Enable HDR on MCA LSPCON based Gen9 devices (rev8)
URL   : https://patchwork.freedesktop.org/series/68081/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
62480888ccb1 drm/i915/display: Add HDR Capability detection for LSPCON
15c1cb8280c0 drm/i915/display: Enable HDR on gen9 devices with MCA Lspcon
721405832649 drm/i915/display: Attach HDR property for capable Gen9 devices
-:43: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#43: FILE: drivers/gpu/drm/i915/display/intel_dp.c:6698:
+						   connector->dev->mode_config.hdr_output_metadata_property,

total: 0 errors, 1 warnings, 0 checks, 38 lines checked
a05978eaafe6 drm/i915/display: Attach content type property for LSPCON
813cb31bc7d1 drm/i915/display: Nuke bogus lspcon check
cc0e9c0dc660 drm/i915/display: Enable BT2020 for HDR on LSPCON devices
0631b094c3ed drm/i915/display: Enable HDR for Parade based lspcon
c88e51dacf4d drm/i915/display: Implement infoframes readback for LSPCON
adc0af969c20 drm/i915/display: Implement DRM infoframe read for LSPCON
beefd06e6c9f drm/i915/lspcon: Create separate infoframe_enabled helper
02d1d49d45b9 drm/i915/lspcon: Do not send DRM infoframes to non-HDMI sinks
e6ee6102dccd drm/i915/display: [NOT FOR MERGE] Reduce blanking to support 4k60@10bpp for LSPCON


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
