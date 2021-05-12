Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9660B37BF05
	for <lists+intel-gfx@lfdr.de>; Wed, 12 May 2021 15:58:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E9426EBFB;
	Wed, 12 May 2021 13:58:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A43A26E073;
 Wed, 12 May 2021 13:58:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9BC8FA00CC;
 Wed, 12 May 2021 13:58:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 12 May 2021 13:58:25 -0000
Message-ID: <162082790560.28506.8447185153939330199@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1620825897.git.jani.nikula@intel.com>
In-Reply-To: <cover.1620825897.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_split_out_new_intel=5Fbacklight=2E=5Bch=5D?=
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

Series: drm/i915: split out new intel_backlight.[ch]
URL   : https://patchwork.freedesktop.org/series/90078/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
5c56f5e2aca2 drm/i915/backlight: extract backlight code to a separate file
-:57: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#57: 
new file mode 100644

-:262: WARNING:LINE_SPACING: Missing a blank line after declarations
#262: FILE: drivers/gpu/drm/i915/display/intel_backlight.c:201:
+	u32 val = intel_de_read(dev_priv, BLC_PWM_PCH_CTL2) & ~BACKLIGHT_DUTY_CYCLE_MASK;
+	intel_de_write(dev_priv, BLC_PWM_PCH_CTL2, val | level);

-:1822: WARNING:BRACES: braces {} are not necessary for any arm of this statement
#1822: FILE: drivers/gpu/drm/i915/display/intel_backlight.c:1761:
+		if (connector->base.connector_type == DRM_MODE_CONNECTOR_DSI) {
[...]
+		} else {
[...]

-:1891: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#1891: FILE: drivers/gpu/drm/i915/display/intel_backlight.h:46:
+}
+static inline void intel_backlight_device_unregister(struct intel_connector *connector)

total: 0 errors, 3 warnings, 1 checks, 3769 lines checked
019319571e81 drm/i915/backlight: mass rename functions to have intel_backlight_ prefix
-:557: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#557: FILE: drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c:239:
+	panel->backlight.pwm_funcs->disable(conn_state, intel_backlight_invert_pwm_level(connector, 0));

total: 0 errors, 1 warnings, 0 checks, 568 lines checked
edb31254e71a drm/i915/panel: mass rename functions to have intel_panel_ prefix


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
