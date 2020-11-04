Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 379802A5EAC
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Nov 2020 08:23:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02A8E6E94C;
	Wed,  4 Nov 2020 07:22:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6388C6E94C;
 Wed,  4 Nov 2020 07:22:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 525E8A73C9;
 Wed,  4 Nov 2020 07:22:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Uma Shankar" <uma.shankar@intel.com>
Date: Wed, 04 Nov 2020 07:22:55 -0000
Message-ID: <160447457530.21430.17796995338703613240@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201103152834.12727-1-uma.shankar@intel.com>
In-Reply-To: <20201103152834.12727-1-uma.shankar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Enable_HDR_on_MCA_LSPCON_based_Gen9_devices_=28rev10=29?=
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

Series: Enable HDR on MCA LSPCON based Gen9 devices (rev10)
URL   : https://patchwork.freedesktop.org/series/68081/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
78d17307adc1 drm/i915/display: Add HDR Capability detection for LSPCON
bf9c35469dac drm/i915/display: Enable HDR on gen9 devices with MCA Lspcon
d73d7c3ca651 drm/i915/display: Attach HDR property for capable Gen9 devices
-:48: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#48: FILE: drivers/gpu/drm/i915/display/intel_dp.c:6740:
+						   connector->dev->mode_config.hdr_output_metadata_property,

total: 0 errors, 1 warnings, 0 checks, 41 lines checked
88b5fbb99a2f drm/i915/display: Attach content type property for LSPCON
d9e635f7c9ac drm/i915/display: Nuke bogus lspcon check
1ca01e1aacd1 drm/i915/display: Enable BT2020 for HDR on LSPCON devices
beba142c70b1 drm/i915/display: Enable HDR for Parade based lspcon
3b1d8c7620a6 drm/i915/display: Implement infoframes readback for LSPCON
65e33553e3ac drm/i915/display: Implement DRM infoframe read for LSPCON
dd2812964cd8 drm/i915/lspcon: Create separate infoframe_enabled helper
10549dbe552e drm/i915/lspcon: Do not send DRM infoframes to non-HDMI sinks
4031ba5793c0 drm/i915/display: [NOT FOR MERGE] Reduce blanking to support 4k60@10bpp for LSPCON


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
