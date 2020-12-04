Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 46CFE2CF712
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Dec 2020 23:47:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 155C76EC80;
	Fri,  4 Dec 2020 22:47:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F09B26EC7F;
 Fri,  4 Dec 2020 22:46:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E7374A0091;
 Fri,  4 Dec 2020 22:46:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lyude Paul" <lyude@redhat.com>
Date: Fri, 04 Dec 2020 22:46:58 -0000
Message-ID: <160712201891.27539.99761502457196152@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201204223603.249878-1-lyude@redhat.com>
In-Reply-To: <20201204223603.249878-1-lyude@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Add_support_for_Intel=27s_eDP_backlight_control?=
 =?utf-8?q?s_=28rev3=29?=
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

Series: drm/i915: Add support for Intel's eDP backlight controls (rev3)
URL   : https://patchwork.freedesktop.org/series/81702/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
f28a72ff60f8 drm/i915/dp: Program source OUI on eDP panels
9233620226ff drm/i915: Rename pwm_* backlight callbacks to ext_pwm_*
f6028d739181 drm/i915: Pass down brightness values to enable/disable backlight callbacks
ae85f27764dd drm/i915: Keep track of pwm-related backlight hooks separately
9af1a6377bd0 drm/i915/dp: Rename eDP VESA backlight interface functions
e013bc041067 drm/i915/dp: Add register definitions for Intel HDR backlight interface
0f59b8d11611 drm/i915/dp: Enable Intel's HDR backlight interface (only SDR for now)
-:151: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#151: FILE: drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c:147:
+			return panel->backlight.max;
+		} else {

-:172: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#172: FILE: drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c:168:
+	uint8_t buf[4] = { 0 };

-:191: WARNING:LINE_SPACING: Missing a blank line after declarations
#191: FILE: drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c:187:
+		const u32 pwm_level = intel_panel_backlight_level_to_pwm(connector, level);
+		intel_panel_set_pwm_level(conn_state, pwm_level);

-:218: WARNING:LINE_SPACING: Missing a blank line after declarations
#218: FILE: drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c:214:
+		u32 pwm_level = intel_panel_backlight_level_to_pwm(connector, level);
+		panel->backlight.pwm_funcs->enable(crtc_state, conn_state, pwm_level);

total: 0 errors, 3 warnings, 1 checks, 379 lines checked
1cd0fee4656f drm/i915/dp: Allow forcing specific interfaces through enable_dpcd_backlight
0246c3bf43a0 drm/dp: Revert "drm/dp: Introduce EDID-based quirks"


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
