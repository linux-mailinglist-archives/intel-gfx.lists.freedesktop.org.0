Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FF949D3AFF
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 13:45:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34C0410E755;
	Wed, 20 Nov 2024 12:45:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A084110E758;
 Wed, 20 Nov 2024 12:45:51 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_intel=5F?=
 =?utf-8?q?display_conversions=2C_cleanups_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 20 Nov 2024 12:45:51 -0000
Message-ID: <173210675166.719028.2424006069031880374@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <cover.1732102179.git.jani.nikula@intel.com>
In-Reply-To: <cover.1732102179.git.jani.nikula@intel.com>
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

Series: drm/i915: intel_display conversions, cleanups (rev4)
URL   : https://patchwork.freedesktop.org/series/141176/
State : warning

== Summary ==

Error: dim checkpatch failed
34c9af9d4c0f drm/i915/overlay: convert to struct intel_display
-:609: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#609: FILE: drivers/gpu/drm/i915/display/intel_overlay.h:32:
 }
+static inline void intel_overlay_cleanup(struct intel_display *display)

-:627: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#627: FILE: drivers/gpu/drm/i915/display/intel_overlay.h:49:
 }
+static inline void intel_overlay_reset(struct intel_display *display)

total: 0 errors, 0 warnings, 2 checks, 578 lines checked
16eeb090a5f5 drm/i915/overlay: add intel_overlay_available() and use it
-:45: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#45: FILE: drivers/gpu/drm/i915/display/intel_overlay.h:33:
 }
+static inline bool intel_overlay_available(struct intel_display *display)

-:57: WARNING:SPDX_LICENSE_TAG: Misplaced SPDX-License-Identifier tag - use line 1 instead
#57: FILE: drivers/gpu/drm/i915/i915_getparam.c:2:
  * SPDX-License-Identifier: MIT

total: 0 errors, 1 warnings, 1 checks, 53 lines checked
9d62f8a6f568 drm/i915/plane: convert initial plane setup to struct intel_display
dae930ff6fe3 drm/i915/irq: hide display_irqs_enabled access
0942035067d8 drm/i915/irq: emphasize display_irqs_enabled is only about VLV/CHV


