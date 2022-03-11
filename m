Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE38F4D69ED
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 22:55:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16C0C10E953;
	Fri, 11 Mar 2022 21:55:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2DC7110E953;
 Fri, 11 Mar 2022 21:55:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2E8BEA363D;
 Fri, 11 Mar 2022 21:55:53 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Fri, 11 Mar 2022 21:55:53 -0000
Message-ID: <164703575318.23983.11887355432639999694@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220311172428.14685-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220311172428.14685-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_DRRS_fixes/cleanups_and_start_of_static_DRRS_?=
 =?utf-8?b?KHJldjMp?=
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

Series: drm/i915: DRRS fixes/cleanups and start of static DRRS (rev3)
URL   : https://patchwork.freedesktop.org/series/101222/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
9d0ea3d28235 drm/i915/dsi: Pass fixed_mode to *_dsi_add_properties()
1c936de54ac4 drm/i915/sdvo: Passt the requesed mode to intel_sdvo_create_preferred_input_timing()
7b4599fa0f72 drm/i915/lvds: Pass fixed_mode to compute_is_dual_link_lvds()
71486ec158b5 drm/i915: Simplify intel_panel_info()
a09635426235 drm/i915: Nuke dev_priv->drrs.type
635266e02bf4 drm/i915: Introduce intel_panel_{fixed, downclock}_mode()
b02295ca2d91 drm/i915: Introduce intel_panel_get_modes()
201ac802dc08 drm/i915: Introduce intel_panel_preferred_fixed_mode()
fac32624a89b drm/i915: Introduce intel_panel_drrs_type()
152e512e8006 drm/i915: Introduce intel_drrs_type_str()
e0baa980781d drm/i915: Eliminate the intel_dp dependency from DRRS
4a3306046902 drm/i915: Stash DRRS state under intel_crtc
-:191: CHECK:UNCOMMENTED_DEFINITION: struct mutex definition without comment
#191: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:1303:
+		struct mutex mutex;

total: 0 errors, 0 warnings, 1 checks, 561 lines checked
a616c41d7276 drm/i915: Move DRRS enable/disable higher up
3426023c889f drm/i915: Enable eDP DRRS on ilk/snb port A
bcbcb792b6f3 drm/i915: Implement static DRRS
564a0df92dfe drm/i915: Convert fixed_mode/downclock_mode into a list


