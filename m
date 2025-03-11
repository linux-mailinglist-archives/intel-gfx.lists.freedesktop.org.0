Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C01BA5CAE8
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 17:32:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F1E910E1EE;
	Tue, 11 Mar 2025 16:32:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 18a75f3d1eae (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8352610E1EE;
 Tue, 11 Mar 2025 16:32:23 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/display=3A_?=
 =?utf-8?q?add_display_specific_runtime_PM_interface?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Mar 2025 16:32:23 -0000
Message-ID: <174171074353.20305.6593936534807967253@18a75f3d1eae>
X-Patchwork-Hint: ignore
References: <cover.1741694400.git.jani.nikula@intel.com>
In-Reply-To: <cover.1741694400.git.jani.nikula@intel.com>
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

Series: drm/i915/display: add display specific runtime PM interface
URL   : https://patchwork.freedesktop.org/series/146134/
State : warning

== Summary ==

Error: dim checkpatch failed
92c803c467d2 drm/i915/display: add display specific runtime PM wrappers
-:28: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#28: 
new file mode 100644

-:121: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__display' - possible side-effects?
#121: FILE: drivers/gpu/drm/i915/display/intel_display_rpm.h:15:
+#define __with_intel_display_rpm(__display, __wakeref) \
+	for (struct ref_tracker *(__wakeref) = intel_display_rpm_get(__display); (__wakeref); \
+	     intel_display_rpm_put((__display), (__wakeref)), (__wakeref) = NULL)

-:121: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__wakeref' - possible side-effects?
#121: FILE: drivers/gpu/drm/i915/display/intel_display_rpm.h:15:
+#define __with_intel_display_rpm(__display, __wakeref) \
+	for (struct ref_tracker *(__wakeref) = intel_display_rpm_get(__display); (__wakeref); \
+	     intel_display_rpm_put((__display), (__wakeref)), (__wakeref) = NULL)

total: 0 errors, 1 warnings, 2 checks, 190 lines checked
48944fb4386a drm/i915/display: conversions to with_intel_display_rpm()
b04c0a4355b0 drm/i915/display: use display runtime PM interfaces for for atomic state
adc03e3597cc drm/i915/display: convert to display runtime PM interfaces
120f0f95b731 drm/i915/power: convert to display runtime PM interfaces
ea8edc3a7dd8 drm/xe/compat: remove intel_runtime_pm.h
-:24: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#24: 
deleted file mode 100644

total: 0 errors, 1 warnings, 0 checks, 7 lines checked


