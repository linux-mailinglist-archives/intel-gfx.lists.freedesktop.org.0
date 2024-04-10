Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBCF88A00DB
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Apr 2024 21:49:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 241F6112CA0;
	Wed, 10 Apr 2024 19:49:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF173112CA0;
 Wed, 10 Apr 2024 19:49:38 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/pps=3A_pass?=
 =?utf-8?q?_display_to_PPS_register_macros_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Apr 2024 19:49:38 -0000
Message-ID: <171277857891.1338936.3681918529762294527@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240410165215.234938-1-jani.nikula@intel.com>
In-Reply-To: <20240410165215.234938-1-jani.nikula@intel.com>
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

Series: drm/i915/pps: pass display to PPS register macros (rev2)
URL   : https://patchwork.freedesktop.org/series/132286/
State : warning

== Summary ==

Error: dim checkpatch failed
760f2ae26bc9 drm/i915/pps: pass display to PPS register macros
-:57: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#57: FILE: drivers/gpu/drm/i915/display/intel_lvds.c:165:
+	pps->powerdown_on_reset = intel_de_read(dev_priv, PP_CONTROL(display, 0)) & PANEL_POWER_RESET;

-:142: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#142: FILE: drivers/gpu/drm/i915/display/intel_lvds.c:386:
+	if (intel_de_wait_for_clear(dev_priv, PP_STATUS(&dev_priv->display, 0), PP_CYCLE_DELAY_ACTIVE, 5000))

-:238: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#238: FILE: drivers/gpu/drm/i915/display/intel_pps.c:1720:
+		port_sel = intel_de_read(dev_priv, PP_ON_DELAYS(display, 0)) & PANEL_PORT_SELECT_MASK;

-:255: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#255: FILE: drivers/gpu/drm/i915/display/intel_pps.c:1747:
+		port_sel = intel_de_read(dev_priv, PP_ON_DELAYS(display, 0)) & PANEL_PORT_SELECT_MASK;

total: 0 errors, 4 warnings, 0 checks, 262 lines checked


