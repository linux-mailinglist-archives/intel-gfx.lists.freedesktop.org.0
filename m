Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 377DD977178
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 21:37:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1680910E977;
	Thu, 12 Sep 2024 19:37:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFB0610E977;
 Thu, 12 Sep 2024 19:36:58 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/display=3A_?=
 =?utf-8?q?add_snapshot_capture/print_infra_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Sep 2024 19:36:58 -0000
Message-ID: <172616981871.993444.5315428596441691112@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <cover.1726151571.git.jani.nikula@intel.com>
In-Reply-To: <cover.1726151571.git.jani.nikula@intel.com>
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

Series: drm/i915/display: add snapshot capture/print infra (rev4)
URL   : https://patchwork.freedesktop.org/series/138151/
State : warning

== Summary ==

Error: dim checkpatch failed
878773ed0332 drm/i915: dump display parameters captured in error state, not current
-:35: WARNING:MACRO_ARG_UNUSED: Argument 'T' is not used in function-like macro
#35: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:185:
+#define PRINT(T, x, ...) _param_print(p, driver_name, #x, params->x);

-:35: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'x' may be better as '(x)' to avoid precedence issues
#35: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:185:
+#define PRINT(T, x, ...) _param_print(p, driver_name, #x, params->x);

-:35: WARNING:TRAILING_SEMICOLON: macros should not use a trailing semicolon
#35: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:185:
+#define PRINT(T, x, ...) _param_print(p, driver_name, #x, params->x);

total: 0 errors, 2 warnings, 1 checks, 52 lines checked
3a65ca9dabc6 drm/i915/display: add intel_display_snapshot abstraction
-:33: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#33: 
new file mode 100644

-:198: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#198: FILE: drivers/gpu/drm/i915/display/intel_overlay.h:65:
 }
+static inline void intel_overlay_snapshot_print(const struct intel_overlay_snapshot *error,

total: 0 errors, 1 warnings, 1 checks, 217 lines checked
de4f3fb05fa5 drm/i915/display: move device info and params handling to snapshot
dc466f6185b3 drm/i915/display: move dmc snapshotting to new display snapshot


