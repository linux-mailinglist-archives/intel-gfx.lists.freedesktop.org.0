Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B38A7A04F
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Apr 2025 11:45:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E11210E97A;
	Thu,  3 Apr 2025 09:45:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from e6b6f09ec485 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEEFC10E97A;
 Thu,  3 Apr 2025 09:45:32 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/wm=3A_conve?=
 =?utf-8?q?rt_to_struct_intel=5Fdisplay?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 03 Apr 2025 09:45:32 -0000
Message-ID: <174367353270.32001.5626710812224368173@e6b6f09ec485>
X-Patchwork-Hint: ignore
References: <cover.1743671373.git.jani.nikula@intel.com>
In-Reply-To: <cover.1743671373.git.jani.nikula@intel.com>
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

Series: drm/i915/wm: convert to struct intel_display
URL   : https://patchwork.freedesktop.org/series/147193/
State : warning

== Summary ==

Error: dim checkpatch failed
d0145874d948 drm/i915/wm: convert intel_wm.h external interfaces to struct intel_display
5cc459c2cc0e drm/i915/wm: convert intel_wm.c internally to struct intel_display
886924f76e0b drm/i915/wm: convert skl_watermark.h external interfaces to struct intel_display
abb66891ad2f drm/i915/wm: convert skl_watermarks.c internally to struct intel_display
21b1b010e1da drm/i915/wm: convert intel_wm.h external interfaces to struct intel_display
-:166: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#166: FILE: drivers/gpu/drm/i915/display/i9xx_wm.h:25:
 }
+static inline void ilk_wm_sanitize(struct intel_display *display)

-:170: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#170: FILE: drivers/gpu/drm/i915/display/i9xx_wm.h:28:
 }
+static inline bool intel_set_memory_cxsr(struct intel_display *display, bool enable)

-:175: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#175: FILE: drivers/gpu/drm/i915/display/i9xx_wm.h:32:
 }
+static inline void i9xx_wm_init(struct intel_display *display)

total: 0 errors, 0 warnings, 3 checks, 205 lines checked
559874779dd0 drm/i915/wm: convert i9xx_wm.c to intel_de_*() register interface
d9b03a5c9c04 drm/i915/wm: convert i9xx_wm.c internally to struct intel_display


