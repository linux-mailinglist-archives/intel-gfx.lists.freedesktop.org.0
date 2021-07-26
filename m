Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49F383D537D
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jul 2021 09:01:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 885D36E5CA;
	Mon, 26 Jul 2021 06:56:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0B34D6E5CA;
 Mon, 26 Jul 2021 06:56:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E9133A0BCB;
 Mon, 26 Jul 2021 06:56:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lee Shawn C" <shawn.c.lee@intel.com>
Date: Mon, 26 Jul 2021 06:56:20 -0000
Message-ID: <162728258092.2615.14971865704293782067@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210723070548.29315-1-shawn.c.lee@intel.com>
In-Reply-To: <20210723070548.29315-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_MIPI_DSI_driver_enhancements_=28rev4=29?=
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

Series: MIPI DSI driver enhancements (rev4)
URL   : https://patchwork.freedesktop.org/series/92695/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
77529e9e348e drm/i915/dsi: send correct gpio_number on gen11 platform
1994193a9893 drm/i915/jsl: program DSI panel GPIOs
4a2d5040a99d drm/i915/dsi: wait for header and payload credit available
cb2493d12c0d drm/i915/dsi: refine send MIPI DCS command sequence
fef2d31a1c41 drm/i915: Get proper min cdclk if vDSC enabled
b62bfc065334 drm/i915/dsi: Retrieve max brightness level from VBT.
-:58: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
#58: FILE: drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c:154:
+	panel->backlight.max = dev_priv->vbt.backlight.max_brightness_level \

-:61: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
#61: FILE: drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c:157:
+	panel->backlight.level = dev_priv->vbt.backlight.max_brightness_level \

total: 0 errors, 2 warnings, 0 checks, 42 lines checked
4956eeca561c drm/i915/dsi: Send proper brightness value via MIPI DCS command


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
