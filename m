Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79630AAC62D
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 15:32:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9F9310E03E;
	Tue,  6 May 2025 13:32:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from c664b1dc75d1 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2A0E10E03E;
 Tue,  6 May 2025 13:32:26 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_irq=5Flo?=
 =?utf-8?q?ck_refactoring=2C_move_to_display?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 06 May 2025 13:32:26 -0000
Message-ID: <174653834664.51281.14033931406026875260@c664b1dc75d1>
X-Patchwork-Hint: ignore
References: <cover.1746536745.git.jani.nikula@intel.com>
In-Reply-To: <cover.1746536745.git.jani.nikula@intel.com>
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

Series: drm/i915: irq_lock refactoring, move to display
URL   : https://patchwork.freedesktop.org/series/148638/
State : warning

== Summary ==

Error: dim checkpatch failed
2b2995ee212e drm/i915/irq: move locking inside vlv_display_irq_reset()
7bceb1a29160 drm/i915/irq: move locking inside valleyview_{enable, disable}_display_irqs()
be64b61c0853 drm/i915/irq: move locking inside vlv_display_irq_postinstall()
6a92198672f2 drm/i915/irq: split out i915_display_irq_postinstall()
722925dff335 drm/i915/irq: split out i965_display_irq_postinstall()
17d0ff49e4e5 drm/i915/irq: make i915_enable_asle_pipestat() static
059fbdd34ae3 drm/i915/rps: refactor display rps support
-:115: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#115: FILE: drivers/gpu/drm/i915/display/intel_display_rps.h:30:
+}
+static inline void intel_display_rps_mark_interactive(struct intel_display *display,

-:120: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#120: FILE: drivers/gpu/drm/i915/display/intel_display_rps.h:35:
+}
+static inline void ilk_display_rps_enable(struct intel_display *display)

-:123: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#123: FILE: drivers/gpu/drm/i915/display/intel_display_rps.h:38:
+}
+static inline void ilk_display_rps_disable(struct intel_display *display)

-:126: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#126: FILE: drivers/gpu/drm/i915/display/intel_display_rps.h:41:
+}
+static inline void ilk_display_rps_irq_handler(struct intel_display *display)

-:180: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#180: 
deleted file mode 100644

total: 0 errors, 1 warnings, 4 checks, 134 lines checked
b3d0f4345232 drm/i915/irq: move i915->irq_lock to display->irq.lock


