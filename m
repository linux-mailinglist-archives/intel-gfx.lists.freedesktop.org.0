Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 603AD3F74DF
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Aug 2021 14:13:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEB2D6E1D7;
	Wed, 25 Aug 2021 12:13:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D0C736E1D7;
 Wed, 25 Aug 2021 12:13:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C9831AA917;
 Wed, 25 Aug 2021 12:13:49 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Aug 2021 12:13:49 -0000
Message-ID: <162989362980.17672.2263139169552738551@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1629888677.git.jani.nikula@intel.com>
In-Reply-To: <cover.1629888677.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_better_backlight_=26_panel_abstractions?=
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

Series: drm/i915: better backlight & panel abstractions
URL   : https://patchwork.freedesktop.org/series/94004/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
46e4b18ff71c drm/i915/backlight: extract backlight code to a separate file
-:58: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#58: 
new file mode 100644

-:263: WARNING:LINE_SPACING: Missing a blank line after declarations
#263: FILE: drivers/gpu/drm/i915/display/intel_backlight.c:201:
+	u32 val = intel_de_read(dev_priv, BLC_PWM_PCH_CTL2) & ~BACKLIGHT_DUTY_CYCLE_MASK;
+	intel_de_write(dev_priv, BLC_PWM_PCH_CTL2, val | level);

-:1823: WARNING:BRACES: braces {} are not necessary for any arm of this statement
#1823: FILE: drivers/gpu/drm/i915/display/intel_backlight.c:1761:
+		if (connector->base.connector_type == DRM_MODE_CONNECTOR_DSI) {
[...]
+		} else {
[...]

-:1892: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#1892: FILE: drivers/gpu/drm/i915/display/intel_backlight.h:46:
+}
+static inline void intel_backlight_device_unregister(struct intel_connector *connector)

total: 0 errors, 3 warnings, 1 checks, 3769 lines checked
46ca4e1f64e6 drm/i915/backlight: mass rename functions to have intel_backlight_ prefix
-:558: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#558: FILE: drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c:241:
+	panel->backlight.pwm_funcs->disable(conn_state, intel_backlight_invert_pwm_level(connector, 0));

total: 0 errors, 1 warnings, 0 checks, 568 lines checked
65bd1bc02fc9 drm/i915/panel: mass rename functions to have intel_panel_ prefix


