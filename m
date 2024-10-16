Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B222E9A1308
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2024 21:59:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3295010E765;
	Wed, 16 Oct 2024 19:59:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A64AD10E216;
 Wed, 16 Oct 2024 19:59:06 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/pfit=3A_Pan?=
 =?utf-8?q?el_fitter_stuff?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Oct 2024 19:59:06 -0000
Message-ID: <172910874667.1275618.1878339279360458568@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241016143134.26903-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20241016143134.26903-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915/pfit: Panel fitter stuff
URL   : https://patchwork.freedesktop.org/series/140066/
State : warning

== Summary ==

Error: dim checkpatch failed
df5c45ccdc0b drm/i915/pfit: Check pipe source size against pfit limits on ILK-BDW
32e09391e38a drm/i915/pfit: Check pfit scaling factors on ILK-BDW
da314a733c24 drm/i915/pfit: Reject pfit downscaling for GMCH platforms
f55885cd7645 drm/i915/pfit: Check pfit minimum timings in pre-SKL
dde2416f0585 drm/i915/pfit: Reject cloning when using pfit on ILK-BDW
458d45d38d7b drm/i915/pfit: Check pfit destination window on ILK-BDW
b13556b67b99 drm/i915/panel: Convert panel code to intel_display
531fe8f3bab7 drm/i915/pfit: Extract intel_pfit.c
-:657: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#657: 
new file mode 100644

-:861: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#861: FILE: drivers/gpu/drm/i915/display/intel_pfit.c:200:
+		x = (adjusted_mode->crtc_hdisplay - width + 1)/2;
 		                                              ^

-:862: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#862: FILE: drivers/gpu/drm/i915/display/intel_pfit.c:201:
+		y = (adjusted_mode->crtc_vdisplay - height + 1)/2;
 		                                               ^

-:886: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#886: FILE: drivers/gpu/drm/i915/display/intel_pfit.c:225:
+				x = y = 0;

-:898: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#898: FILE: drivers/gpu/drm/i915/display/intel_pfit.c:237:
+		x = y = 0;

-:995: WARNING:LINE_SPACING: Missing a blank line after declarations
#995: FILE: drivers/gpu/drm/i915/display/intel_pfit.c:334:
+	u32 ratio = source * FACTOR / target;
+	return (FACTOR * ratio + FACTOR/2) / FACTOR;

-:995: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#995: FILE: drivers/gpu/drm/i915/display/intel_pfit.c:334:
+	return (FACTOR * ratio + FACTOR/2) / FACTOR;
 	                               ^

total: 0 errors, 2 warnings, 5 checks, 1189 lines checked
55ebe385d8e2 drm/i915: Remove ckey/format checks from skl_update_scaler_plane()


