Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 678A03EAC24
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Aug 2021 22:56:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92C906E486;
	Thu, 12 Aug 2021 20:56:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3D7E36E47E;
 Thu, 12 Aug 2021 20:56:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2C7A7A7E03;
 Thu, 12 Aug 2021 20:56:04 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lee Shawn C" <shawn.c.lee@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Aug 2021 20:56:04 -0000
Message-ID: <162880176416.21761.13635458550137985878@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210812154237.13911-1-shawn.c.lee@intel.com>
In-Reply-To: <20210812154237.13911-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_MIPI_DSI_driver_enhancements_=28rev5=29?=
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

Series: MIPI DSI driver enhancements (rev5)
URL   : https://patchwork.freedesktop.org/series/92695/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
7d2fc78e40b5 drm/i915/dsi: send correct gpio_number on gen11 platform
1241531858c4 drm/i915/jsl: program DSI panel GPIOs
65c6ffbb8eac drm/i915/dsi: wait for header and payload credit available
e30dd04203dc drm/i915/dsi: refine send MIPI DCS command sequence
245567762c34 drm/i915: Get proper min cdclk if vDSC enabled
cbb486a9e115 drm/i915/dsi: Retrieve max brightness level from VBT.
-:58: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
#58: FILE: drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c:154:
+	panel->backlight.max = dev_priv->vbt.backlight.max_brightness_level \

-:61: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
#61: FILE: drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c:157:
+	panel->backlight.level = dev_priv->vbt.backlight.max_brightness_level \

total: 0 errors, 2 warnings, 0 checks, 42 lines checked
b443fd6b6165 drm/i915/dsi: Send proper brightness value via MIPI DCS command


