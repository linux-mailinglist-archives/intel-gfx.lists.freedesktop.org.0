Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 18FD53D356D
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jul 2021 09:39:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8454F6E9FB;
	Fri, 23 Jul 2021 07:39:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4408C6E93F;
 Fri, 23 Jul 2021 07:39:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3D7C6AA01E;
 Fri, 23 Jul 2021 07:39:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lee Shawn C" <shawn.c.lee@intel.com>
Date: Fri, 23 Jul 2021 07:39:13 -0000
Message-ID: <162702595324.3044.10179454504251970087@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210723070548.29315-1-shawn.c.lee@intel.com>
In-Reply-To: <20210723070548.29315-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_MIPI_DSI_driver_enhancements_=28rev3=29?=
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

Series: MIPI DSI driver enhancements (rev3)
URL   : https://patchwork.freedesktop.org/series/92695/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
d7af033a52e3 drm/i915/dsi: send correct gpio_number on gen11 platform
0071f18cf3f3 drm/i915/jsl: program DSI panel GPIOs
57d3de727a89 drm/i915/dsi: wait for header and payload credit available
72480625ce94 drm/i915/dsi: refine send MIPI DCS command sequence
0df46fa4d7cc drm/i915: Get proper min cdclk if vDSC enabled
20289018e0a5 drm/i915/dsi: Retrieve max brightness level from VBT.
-:58: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
#58: FILE: drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c:154:
+	panel->backlight.max = dev_priv->vbt.backlight.max_brightness_level \

-:61: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
#61: FILE: drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c:157:
+	panel->backlight.level = dev_priv->vbt.backlight.max_brightness_level \

total: 0 errors, 2 warnings, 0 checks, 42 lines checked
86a133132144 drm/i915/dsi: Send proper brightness value via MIPI DCS command


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
