Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B0A111F985
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Dec 2019 18:11:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DE5C6E134;
	Sun, 15 Dec 2019 17:11:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 14C336E12A;
 Sun, 15 Dec 2019 17:11:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0CE95A0BA8;
 Sun, 15 Dec 2019 17:11:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hans de Goede" <hdegoede@redhat.com>
Date: Sun, 15 Dec 2019 17:11:12 -0000
Message-ID: <157642987203.27848.13009424546969586229@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191215163810.52356-1-hdegoede@redhat.com>
In-Reply-To: <20191215163810.52356-1-hdegoede@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/dsi=3A_Control_panel_and_backlight_enable_GPIOs_fr?=
 =?utf-8?q?om_VBT?=
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

Series: drm/i915/dsi: Control panel and backlight enable GPIOs from VBT
URL   : https://patchwork.freedesktop.org/series/70945/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
24c183bed8bd pinctrl: Export pinctrl_unregister_mappings
-:108: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#108: FILE: include/linux/pinctrl/machine.h:156:
+extern void pinctrl_unregister_mappings(const struct pinctrl_map *map);

total: 0 errors, 0 warnings, 1 checks, 80 lines checked
95aabcc5ecf7 drm/i915/dsi: Move poking of panel-enable GPIO to intel_dsi_vbt.c
-:84: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'mipi_config->pwm_blc == PPS_BLC_PMIC'
#84: FILE: drivers/gpu/drm/i915/display/intel_dsi_vbt.c:697:
+	if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
+	    (mipi_config->pwm_blc == PPS_BLC_PMIC)) {

total: 0 errors, 0 warnings, 1 checks, 128 lines checked
2d9012fa175f drm/i915/dsi: Init panel-enable GPIO to low when the LCD is initially off
-:70: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "current_mode"
#70: FILE: drivers/gpu/drm/i915/display/vlv_dsi.c:1910:
+	intel_dsi_vbt_gpio_init(intel_dsi, current_mode != NULL);

total: 0 errors, 0 warnings, 1 checks, 36 lines checked
080c4213d3a7 drm/i915/dsi: Move Crystal Cove PMIC panel GPIO lookup from mfd to the i915 driver
-:78: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'mipi_config->pwm_blc == PPS_BLC_PMIC'
#78: FILE: drivers/gpu/drm/i915/display/intel_dsi_vbt.c:732:
+	if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
+	    (mipi_config->pwm_blc == PPS_BLC_PMIC))

total: 0 errors, 0 warnings, 1 checks, 93 lines checked
619b4acd14d5 drm/i915/dsi: Control panel and backlight enable GPIOs on BYT

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
