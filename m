Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB378AB416B
	for <lists+intel-gfx@lfdr.de>; Mon, 12 May 2025 20:05:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58D9310E479;
	Mon, 12 May 2025 18:05:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from c664b1dc75d1 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A74410E47A;
 Mon, 12 May 2025 18:05:48 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_refactor?=
 =?utf-8?q?_VLV_IOSF_SB_for_display_usage_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 12 May 2025 18:05:48 -0000
Message-ID: <174707314823.69697.16671641111325943158@c664b1dc75d1>
X-Patchwork-Hint: ignore
References: <cover.1747061743.git.jani.nikula@intel.com>
In-Reply-To: <cover.1747061743.git.jani.nikula@intel.com>
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

Series: drm/i915: refactor VLV IOSF SB for display usage (rev3)
URL   : https://patchwork.freedesktop.org/series/148266/
State : warning

== Summary ==

Error: dim checkpatch failed
daa6ad2d9eb6 drm/i915: rename vlv_sideband*.[ch] to vlv_iosf_sb*.[ch]
-:240: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#240: 
rename from drivers/gpu/drm/i915/vlv_sideband.c

total: 0 errors, 1 warnings, 0 checks, 207 lines checked
1cb5009eb2d8 drm/i915: add generic read/write functions for VLV IOSF SB
-:152: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#152: FILE: drivers/gpu/drm/xe/compat-i915-headers/vlv_iosf_sb.h:31:
+static inline u32 vlv_iosf_sb_read(struct drm_i915_private *i915, enum vlv_iosf_sb_unit unit, u32 addr)

-:152: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#152: FILE: drivers/gpu/drm/xe/compat-i915-headers/vlv_iosf_sb.h:31:
 }
+static inline u32 vlv_iosf_sb_read(struct drm_i915_private *i915, enum vlv_iosf_sb_unit unit, u32 addr)

-:158: WARNING:LONG_LINE: line length of 113 exceeds 100 columns
#158: FILE: drivers/gpu/drm/xe/compat-i915-headers/vlv_iosf_sb.h:35:
+static inline int vlv_iosf_sb_write(struct drm_i915_private *i915, enum vlv_iosf_sb_unit unit, u32 addr, u32 val)

-:158: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#158: FILE: drivers/gpu/drm/xe/compat-i915-headers/vlv_iosf_sb.h:35:
 }
+static inline int vlv_iosf_sb_write(struct drm_i915_private *i915, enum vlv_iosf_sb_unit unit, u32 addr, u32 val)

total: 0 errors, 2 warnings, 2 checks, 130 lines checked
a68c34963497 drm/i915: rewrite VLV IOSF SB unit specific read/write functions
3888a7c1e4df drm/i915: switch i915 core to generic VLV IOSF SB functions
283e6f02ac1e drm/i915: move VLV IOSF SB unit specific helpers under display
-:168: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#168: 
new file mode 100644

-:313: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#313: FILE: drivers/gpu/drm/i915/display/vlv_sideband.h:90:
+}
+static inline void vlv_dpio_write(struct drm_i915_private *i915,

total: 0 errors, 1 warnings, 1 checks, 599 lines checked
ad56eca8f3df drm/i915: convert VLV IOSF SB interface to struct drm_device
-:1833: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#1833: FILE: drivers/gpu/drm/i915/display/vlv_sideband.h:90:
 }
+static inline void vlv_dpio_write(struct drm_device *drm,

-:2258: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#2258: FILE: drivers/gpu/drm/xe/compat-i915-headers/vlv_iosf_sb.h:30:
 }
+static inline u32 vlv_iosf_sb_read(struct drm_device *drm, enum vlv_iosf_sb_unit unit, u32 addr)

-:2263: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#2263: FILE: drivers/gpu/drm/xe/compat-i915-headers/vlv_iosf_sb.h:34:
+static inline int vlv_iosf_sb_write(struct drm_device *drm, enum vlv_iosf_sb_unit unit, u32 addr, u32 val)

-:2263: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#2263: FILE: drivers/gpu/drm/xe/compat-i915-headers/vlv_iosf_sb.h:34:
 }
+static inline int vlv_iosf_sb_write(struct drm_device *drm, enum vlv_iosf_sb_unit unit, u32 addr, u32 val)

-:2268: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#2268: FILE: drivers/gpu/drm/xe/compat-i915-headers/vlv_iosf_sb.h:38:
 }
+static inline void vlv_iosf_sb_put(struct drm_device *drm, unsigned long ports)

total: 0 errors, 1 warnings, 4 checks, 2084 lines checked
ee8bc5c01867 drm/i915: rename VLV IOSF SB ports parameter to unit_mask
d1af7bd75765 drm/i915: ensure correct VLV IOSF SB units have been get/put


