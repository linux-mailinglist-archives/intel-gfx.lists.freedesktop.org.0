Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A573A5F1CC
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Mar 2025 12:04:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 086A110E83F;
	Thu, 13 Mar 2025 11:04:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 18a75f3d1eae (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24B1510E840;
 Thu, 13 Mar 2025 11:04:06 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/display=3A_?=
 =?utf-8?q?add_display_specific_runtime_PM_interface_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Mar 2025 11:04:06 -0000
Message-ID: <174186384614.28618.8071931612797404384@18a75f3d1eae>
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

Series: drm/i915/display: add display specific runtime PM interface (rev2)
URL   : https://patchwork.freedesktop.org/series/146134/
State : warning

== Summary ==

Error: dim checkpatch failed
f7572225bedd drm/i915/display: add display specific runtime PM wrappers
-:29: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#29: 
new file mode 100644

-:122: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__display' - possible side-effects?
#122: FILE: drivers/gpu/drm/i915/display/intel_display_rpm.h:15:
+#define __with_intel_display_rpm(__display, __wakeref) \
+	for (struct ref_tracker *(__wakeref) = intel_display_rpm_get(__display); (__wakeref); \
+	     intel_display_rpm_put((__display), (__wakeref)), (__wakeref) = NULL)

-:122: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__wakeref' - possible side-effects?
#122: FILE: drivers/gpu/drm/i915/display/intel_display_rpm.h:15:
+#define __with_intel_display_rpm(__display, __wakeref) \
+	for (struct ref_tracker *(__wakeref) = intel_display_rpm_get(__display); (__wakeref); \
+	     intel_display_rpm_put((__display), (__wakeref)), (__wakeref) = NULL)

total: 0 errors, 1 warnings, 2 checks, 190 lines checked
71beccca3e2a drm/i915/display: conversions to with_intel_display_rpm()
698de3bf03cd drm/i915/display: use display runtime PM interfaces for for atomic state
a8e755ae2f70 drm/i915/display: convert to display runtime PM interfaces
6ef89ab24fce drm/i915/power: convert to display runtime PM interfaces
da70b08f8537 drm/xe/compat: remove intel_runtime_pm.h
-:25: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#25: 
deleted file mode 100644

total: 0 errors, 1 warnings, 0 checks, 7 lines checked


