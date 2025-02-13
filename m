Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26E3DA34667
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 16:25:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7BD710E3C0;
	Thu, 13 Feb 2025 15:25:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF47710E3C0;
 Thu, 13 Feb 2025 15:25:27 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_Hoist_so?=
 =?utf-8?q?me_stuff_out_from_intel=5Fdisplay=2Ec?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Feb 2025 15:25:27 -0000
Message-ID: <173946032797.1709494.11387440657547180339@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250213150220.13580-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20250213150220.13580-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915: Hoist some stuff out from intel_display.c
URL   : https://patchwork.freedesktop.org/series/144803/
State : warning

== Summary ==

Error: dim checkpatch failed
982b141eeb11 drm/i915: Move modeset_retry stuff into intel_connector.c
57a7a8efd3d5 drm/i915: Always initialize connector->modeset_retry_work
77ed014a3089 drm/i915: Extract intel_connector_cancel_modeset_retry_work()
51d5b48a9acf drm/i915: Extract intel_hdcp_cancel_works()
53f938e34597 drm/i915: Move intel_hpd_poll_fini() into intel_hotplug.c
4a92729f1c1c drm/i915: Move intel_plane_destroy() into intel_atomic_plane.c
cac50d7f93ba drm/i915: Relocate vlv_wait_port_ready()
-:134: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#134: FILE: drivers/gpu/drm/i915/display/intel_dpio_phy.h:176:
 }
+static inline void vlv_wait_port_ready(struct intel_display *display,

total: 0 errors, 0 warnings, 1 checks, 106 lines checked
e85fa0c4488f drm/i915: Simplify vlv_wait_port_ready() arguments
-:120: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#120: FILE: drivers/gpu/drm/i915/display/intel_dpio_phy.h:175:
 }
+static inline void vlv_wait_port_ready(struct intel_encoder *encoder,

total: 0 errors, 0 warnings, 1 checks, 84 lines checked
0261343af32e drm/i915: Relocate intel_plane_uses_fence()
a69e3d9eeaca drm/i915: Relocate intel_{rotation, remapped}_info_size()
e6b19c3571ef drm/i915: Relocate some other plane fb related stuff into intel_fb.c
-:84: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#84: FILE: drivers/gpu/drm/i915/display/intel_fb.c:1940:
 }
+/*

total: 0 errors, 0 warnings, 1 checks, 96 lines checked
347a1d216dae drm/i915: s/state/plane_state/
-:35: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#35: FILE: drivers/gpu/drm/i915/display/intel_fb.c:1058:
+					   plane_state->view.color_plane[color_plane].mapping_stride,

total: 0 errors, 1 warnings, 0 checks, 94 lines checked


