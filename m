Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 316424D8914
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Mar 2022 17:27:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9517D10E34D;
	Mon, 14 Mar 2022 16:27:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7196F10E2E0;
 Mon, 14 Mar 2022 16:27:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 71BA9AA01E;
 Mon, 14 Mar 2022 16:27:51 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Mon, 14 Mar 2022 16:27:51 -0000
Message-ID: <164727527146.20568.18092253370933004343@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220311172428.14685-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220311172428.14685-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_DRRS_fixes/cleanups_and_start_of_static_DRRS_?=
 =?utf-8?b?KHJldjQp?=
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

Series: drm/i915: DRRS fixes/cleanups and start of static DRRS (rev4)
URL   : https://patchwork.freedesktop.org/series/101222/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
d81ae837b734 drm/i915/dsi: Pass fixed_mode to *_dsi_add_properties()
f3f40125db96 drm/i915/sdvo: Passt the requesed mode to intel_sdvo_create_preferred_input_timing()
c0d54ff91d82 drm/i915/lvds: Pass fixed_mode to compute_is_dual_link_lvds()
df61e86adabf drm/i915: Simplify intel_panel_info()
4655c23aed38 drm/i915: Nuke dev_priv->drrs.type
a5be67652ad2 drm/i915: Introduce intel_panel_{fixed, downclock}_mode()
104c974e62b6 drm/i915: Introduce intel_panel_get_modes()
97b2209e3211 drm/i915: Introduce intel_panel_preferred_fixed_mode()
dd1f2c954174 drm/i915: Introduce intel_panel_drrs_type()
24f76aed4e8b drm/i915: Introduce intel_drrs_type_str()
7f7cb9202f42 drm/i915: Eliminate the intel_dp dependency from DRRS
-:15: WARNING:BAD_SIGN_OFF: Duplicate signature
#15: 
Reviewed-by: Jani Nikula <jani.nikula@intel.com>

total: 0 errors, 1 warnings, 0 checks, 350 lines checked
9f61fbde6a08 drm/i915: Stash DRRS state under intel_crtc
-:192: CHECK:UNCOMMENTED_DEFINITION: struct mutex definition without comment
#192: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:1303:
+		struct mutex mutex;

total: 0 errors, 0 warnings, 1 checks, 561 lines checked
414a8ca23235 drm/i915: Move DRRS enable/disable higher up
492ca039f4d2 drm/i915: Enable eDP DRRS on ilk/snb port A
99f028609a17 drm/i915: Implement static DRRS
37a65319fc22 drm/i915: Convert fixed_mode/downclock_mode into a list


