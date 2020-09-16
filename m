Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D817926C93B
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Sep 2020 21:05:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 312BE6EAC2;
	Wed, 16 Sep 2020 19:05:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 71CAA6EAC9;
 Wed, 16 Sep 2020 19:05:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 686CFA008A;
 Wed, 16 Sep 2020 19:05:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lyude Paul" <lyude@redhat.com>
Date: Wed, 16 Sep 2020 19:05:33 -0000
Message-ID: <160028313339.19372.2292795761603430233@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200916171855.129511-1-lyude@redhat.com>
In-Reply-To: <20200916171855.129511-1-lyude@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Add_support_for_Intel=27s_eDP_backlight_control?=
 =?utf-8?q?s_=28rev2=29?=
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

Series: drm/i915: Add support for Intel's eDP backlight controls (rev2)
URL   : https://patchwork.freedesktop.org/series/81702/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
8aaf96a8cf98 drm/i915/dp: Program source OUI on eDP panels
ba0a5a5d9619 drm/i915: Rename pwm_* backlight callbacks to ext_pwm_*
52b7a7565310 drm/i915: Keep track of pwm-related backlight hooks separately
ed15e7f4a32d drm/i915/dp: Rename eDP VESA backlight interface functions
ecaa8bceac61 drm/i915/dp: Add register definitions for Intel HDR backlight interface
98099af6f150 drm/i915/dp: Enable Intel's HDR backlight interface (only SDR for now)
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

total: 0 errors, 2 warnings, 1 checks, 382 lines checked
f0c139b58661 drm/i915/dp: Allow forcing specific interfaces through enable_dpcd_backlight
6d35240b4140 drm/dp: Revert "drm/dp: Introduce EDID-based quirks"


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
