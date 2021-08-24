Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E05B3F6993
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Aug 2021 21:11:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C11596E0B9;
	Tue, 24 Aug 2021 19:11:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 686CB6E0B8;
 Tue, 24 Aug 2021 19:11:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3FE2FAA917;
 Tue, 24 Aug 2021 19:11:11 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lee, Shawn C" <shawn.c.lee@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Aug 2021 19:11:11 -0000
Message-ID: <162983227123.27154.2196755358868612908@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210812154237.13911-1-shawn.c.lee@intel.com>
In-Reply-To: <20210812154237.13911-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_MIPI_DSI_driver_enhancements_=28rev8=29?=
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

Series: MIPI DSI driver enhancements (rev8)
URL   : https://patchwork.freedesktop.org/series/92695/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
07b88ff475db drm/i915/dsi: send correct gpio_number on gen11 platform
d6923c203e23 drm/i915/jsl: program DSI panel GPIOs
ce55c52173da drm/i915/dsi: wait for header and payload credit available
255ca7c1ec48 drm/i915/dsi: refine send MIPI DCS command sequence
10e485919308 drm/i915: Get proper min cdclk if vDSC enabled
5de9e51eab61 drm/i915/dsi: Retrieve max brightness level from VBT
-:52: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
#52: FILE: drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c:154:
+	panel->backlight.max = (dev_priv->vbt.backlight.brightness_precision_bits > 8) \

total: 0 errors, 1 warnings, 0 checks, 32 lines checked
5ecaff623347 drm/i915/dsi: Read/write proper brightness value via MIPI DCS command


