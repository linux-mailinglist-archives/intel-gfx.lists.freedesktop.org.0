Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE8DD5960A9
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Aug 2022 18:56:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9995BAFBDF;
	Tue, 16 Aug 2022 16:56:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B490AAFB69;
 Tue, 16 Aug 2022 16:56:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A8B93A7DFF;
 Tue, 16 Aug 2022 16:56:26 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 16 Aug 2022 16:56:26 -0000
Message-ID: <166066898668.9027.10618633932533411349@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1660664162.git.jani.nikula@intel.com>
In-Reply-To: <cover.1660664162.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/dsi=3A_fix_DSI_DCS_backlight_port_handling_=28rev2?=
 =?utf-8?q?=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/dsi: fix DSI DCS backlight port handling (rev2)
URL   : https://patchwork.freedesktop.org/series/107334/
State : warning

== Summary ==

Error: dim checkpatch failed
e67b2b46ff9e drm/i915/dsi: filter invalid backlight and CABC ports
-:21: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#21: FILE: drivers/gpu/drm/i915/display/icl_dsi.c:2073:
+	if (drm_WARN_ON(&dev_priv->drm, intel_connector->panel.vbt.dsi.bl_ports & ~intel_dsi->ports))

-:26: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#26: FILE: drivers/gpu/drm/i915/display/icl_dsi.c:2078:
+	if (drm_WARN_ON(&dev_priv->drm, intel_connector->panel.vbt.dsi.cabc_ports & ~intel_dsi->ports))

-:40: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#40: FILE: drivers/gpu/drm/i915/display/vlv_dsi.c:1936:
+	if (drm_WARN_ON(&dev_priv->drm, intel_connector->panel.vbt.dsi.bl_ports & ~intel_dsi->ports))

-:45: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#45: FILE: drivers/gpu/drm/i915/display/vlv_dsi.c:1941:
+	if (drm_WARN_ON(&dev_priv->drm, intel_connector->panel.vbt.dsi.cabc_ports & ~intel_dsi->ports))

total: 0 errors, 4 warnings, 0 checks, 28 lines checked
adb054df495d drm/i915/dsi: fix dual-link DSI backlight and CABC ports for display 11+
8745bf41c2dc drm/i915/dsi: use VBT backlight and CABC port definitions directly


