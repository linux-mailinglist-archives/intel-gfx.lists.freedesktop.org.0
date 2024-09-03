Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C93096A67D
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2024 20:28:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 534EC10E398;
	Tue,  3 Sep 2024 18:28:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2835A10E395;
 Tue,  3 Sep 2024 18:28:41 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/display=3A_?=
 =?utf-8?q?add_snapshot_capture/print_infra?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 03 Sep 2024 18:28:41 -0000
Message-ID: <172538812115.920385.9481331583399204466@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <cover.1725372032.git.jani.nikula@intel.com>
In-Reply-To: <cover.1725372032.git.jani.nikula@intel.com>
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

Series: drm/i915/display: add snapshot capture/print infra
URL   : https://patchwork.freedesktop.org/series/138151/
State : warning

== Summary ==

Error: dim checkpatch failed
f3820671e52e drm/i915: dump display parameters captured in error state, not current
-:34: WARNING:MACRO_ARG_UNUSED: Argument 'T' is not used in function-like macro
#34: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:185:
+#define PRINT(T, x, ...) _param_print(p, driver_name, #x, params->x);

-:34: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'x' may be better as '(x)' to avoid precedence issues
#34: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:185:
+#define PRINT(T, x, ...) _param_print(p, driver_name, #x, params->x);

-:34: WARNING:TRAILING_SEMICOLON: macros should not use a trailing semicolon
#34: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:185:
+#define PRINT(T, x, ...) _param_print(p, driver_name, #x, params->x);

total: 0 errors, 2 warnings, 1 checks, 52 lines checked
6365571faddb drm/i915/display: add intel_display_snapshot abstraction
-:28: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#28: 
new file mode 100644

-:176: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#176: FILE: drivers/gpu/drm/i915/display/intel_overlay.h:54:
 }
+static inline struct intel_overlay_snapshot *

-:183: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#183: FILE: drivers/gpu/drm/i915/display/intel_overlay.h:59:
 }
+static inline void intel_overlay_snapshot_print(const struct intel_overlay_snapshot *error,

total: 0 errors, 1 warnings, 2 checks, 207 lines checked
a5cc323f664c drm/i915/display: move device info and params handling to snapshot
cf44129858d1 drm/i915/display: move dmc snapshotting to new display snapshot


