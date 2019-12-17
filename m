Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F91E1222B2
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 04:46:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 014356E932;
	Tue, 17 Dec 2019 03:46:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 91CD86E930;
 Tue, 17 Dec 2019 03:46:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8A4FBA363B;
 Tue, 17 Dec 2019 03:46:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hans de Goede" <hdegoede@redhat.com>
Date: Tue, 17 Dec 2019 03:46:07 -0000
Message-ID: <157655436754.21845.13054258446119532788@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191216205122.1850923-1-hdegoede@redhat.com>
In-Reply-To: <20191216205122.1850923-1-hdegoede@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/dsi=3A_Control_panel_and_backlight_enable_GPIOs_fr?=
 =?utf-8?q?om_VBT_=28rev2=29?=
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

Series: drm/i915/dsi: Control panel and backlight enable GPIOs from VBT (rev2)
URL   : https://patchwork.freedesktop.org/series/70945/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ba8ffd907d53 pinctrl: Allow modules to use pinctrl_[un]register_mappings
-:71: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#71: FILE: drivers/pinctrl/core.c:1387:
+			      unsigned num_maps)

-:175: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#175: FILE: include/linux/pinctrl/machine.h:156:
+extern void pinctrl_unregister_mappings(const struct pinctrl_map *map);

total: 0 errors, 1 warnings, 1 checks, 120 lines checked
72d92aa99f18 drm/i915/dsi: Move poking of panel-enable GPIO to intel_dsi_vbt.c
df7d57216ef5 drm/i915/dsi: Init panel-enable GPIO to low when the LCD is initially off (v2)
5fb03807948e drm/i915/dsi: Move Crystal Cove PMIC panel GPIO lookup from mfd to the i915 driver
3fdf2fe66bbf drm/i915/dsi: Control panel and backlight enable GPIOs on BYT
-:138: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#138: FILE: drivers/gpu/drm/i915/display/intel_dsi_vbt.c:748:
+		ret = pinctrl_register_mappings(soc_pwm_pinctrl_map,
+					     ARRAY_SIZE(soc_pwm_pinctrl_map));

total: 0 errors, 0 warnings, 1 checks, 127 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
