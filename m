Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BFEEF3EAEBC
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Aug 2021 04:57:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64B4D6E4B0;
	Fri, 13 Aug 2021 02:57:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4AAC16E4AD;
 Fri, 13 Aug 2021 02:56:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 32CD7A01BB;
 Fri, 13 Aug 2021 02:56:59 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lee Shawn C" <shawn.c.lee@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Aug 2021 02:56:59 -0000
Message-ID: <162882341916.17679.10133810139982338258@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210812154237.13911-1-shawn.c.lee@intel.com>
In-Reply-To: <20210812154237.13911-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_MIPI_DSI_driver_enhancements_=28rev6=29?=
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

Series: MIPI DSI driver enhancements (rev6)
URL   : https://patchwork.freedesktop.org/series/92695/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
6f3864fcf0db drm/i915/dsi: send correct gpio_number on gen11 platform
6b6820f4e4a4 drm/i915/jsl: program DSI panel GPIOs
48f4d6536aef drm/i915/dsi: wait for header and payload credit available
e7ae3310a896 drm/i915/dsi: refine send MIPI DCS command sequence
de0acf69c4be drm/i915: Get proper min cdclk if vDSC enabled
39a6c39b217e drm/i915/dsi: Retrieve max brightness level from VBT.
-:58: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
#58: FILE: drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c:154:
+	panel->backlight.max = dev_priv->vbt.backlight.max_brightness_level \

-:61: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
#61: FILE: drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c:157:
+	panel->backlight.level = dev_priv->vbt.backlight.max_brightness_level \

total: 0 errors, 2 warnings, 0 checks, 42 lines checked
d832849b8f71 drm/i915/dsi: Send proper brightness value via MIPI DCS command


