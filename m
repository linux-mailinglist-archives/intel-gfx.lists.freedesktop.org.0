Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DAFBA9CB22
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Apr 2025 16:08:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C918410E136;
	Fri, 25 Apr 2025 14:08:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from c664b1dc75d1 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 836D710E2ED;
 Fri, 25 Apr 2025 14:08:01 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_refactor?=
 =?utf-8?q?_VLV_IOSF_SB_for_display_usage?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Apr 2025 14:08:01 -0000
Message-ID: <174559008153.11342.7509821434103385758@c664b1dc75d1>
X-Patchwork-Hint: ignore
References: <cover.1745587049.git.jani.nikula@intel.com>
In-Reply-To: <cover.1745587049.git.jani.nikula@intel.com>
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

Series: drm/i915: refactor VLV IOSF SB for display usage
URL   : https://patchwork.freedesktop.org/series/148266/
State : warning

== Summary ==

Error: dim checkpatch failed
8d12bc3f7133 drm/i915: rename vlv_sideband*.[ch] to vlv_iosf_sb*.[ch]
-:236: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#236: 
rename from drivers/gpu/drm/i915/vlv_sideband.c

total: 0 errors, 1 warnings, 0 checks, 207 lines checked
6acb4974bc81 drm/i915: add generic read/write functions for VLV IOSF SB
-:70: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 12)
#70: FILE: drivers/gpu/drm/i915/vlv_iosf_sb.c:177:
+	if (drm_WARN_ONCE(&i915->drm, !port, "invalid unit %d\n", unit))
+	    return 0;

-:71: WARNING:TABSTOP: Statements should start on a tabstop
#71: FILE: drivers/gpu/drm/i915/vlv_iosf_sb.c:178:
+	    return 0;

-:86: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 12)
#86: FILE: drivers/gpu/drm/i915/vlv_iosf_sb.c:193:
+	if (drm_WARN_ONCE(&i915->drm, !port, "invalid unit %d\n", unit))
+	    return -EINVAL;

-:87: WARNING:TABSTOP: Statements should start on a tabstop
#87: FILE: drivers/gpu/drm/i915/vlv_iosf_sb.c:194:
+	    return -EINVAL;

-:146: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#146: FILE: drivers/gpu/drm/xe/compat-i915-headers/vlv_iosf_sb.h:31:
+static inline u32 vlv_iosf_sb_read(struct drm_i915_private *i915, enum vlv_iosf_sb_unit unit, u32 addr)

-:146: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#146: FILE: drivers/gpu/drm/xe/compat-i915-headers/vlv_iosf_sb.h:31:
 }
+static inline u32 vlv_iosf_sb_read(struct drm_i915_private *i915, enum vlv_iosf_sb_unit unit, u32 addr)

-:152: WARNING:LONG_LINE: line length of 113 exceeds 100 columns
#152: FILE: drivers/gpu/drm/xe/compat-i915-headers/vlv_iosf_sb.h:35:
+static inline int vlv_iosf_sb_write(struct drm_i915_private *i915, enum vlv_iosf_sb_unit unit, u32 addr, u32 val)

-:152: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#152: FILE: drivers/gpu/drm/xe/compat-i915-headers/vlv_iosf_sb.h:35:
 }
+static inline int vlv_iosf_sb_write(struct drm_i915_private *i915, enum vlv_iosf_sb_unit unit, u32 addr, u32 val)

total: 0 errors, 6 warnings, 2 checks, 130 lines checked
f09031009bae drm/i915: rewrite VLV IOSF SB unit specific read/write functions
5ed15ac4a69c drm/i915: switch i915 core to generic VLV IOSF SB functions
2d9a25d9d985 drm/i915: move VLV IOSF SB unit specific helpers under display
-:162: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#162: 
new file mode 100644

-:307: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#307: FILE: drivers/gpu/drm/i915/display/vlv_sideband.h:90:
+}
+static inline void vlv_dpio_write(struct drm_i915_private *i915,

total: 0 errors, 1 warnings, 1 checks, 599 lines checked
df2a8542e9a7 drm/i915: convert VLV IOSF SB interface to struct drm_device
-:1827: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#1827: FILE: drivers/gpu/drm/i915/display/vlv_sideband.h:90:
 }
+static inline void vlv_dpio_write(struct drm_device *drm,

-:2252: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#2252: FILE: drivers/gpu/drm/xe/compat-i915-headers/vlv_iosf_sb.h:30:
 }
+static inline u32 vlv_iosf_sb_read(struct drm_device *drm, enum vlv_iosf_sb_unit unit, u32 addr)

-:2257: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#2257: FILE: drivers/gpu/drm/xe/compat-i915-headers/vlv_iosf_sb.h:34:
+static inline int vlv_iosf_sb_write(struct drm_device *drm, enum vlv_iosf_sb_unit unit, u32 addr, u32 val)

-:2257: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#2257: FILE: drivers/gpu/drm/xe/compat-i915-headers/vlv_iosf_sb.h:34:
 }
+static inline int vlv_iosf_sb_write(struct drm_device *drm, enum vlv_iosf_sb_unit unit, u32 addr, u32 val)

-:2262: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#2262: FILE: drivers/gpu/drm/xe/compat-i915-headers/vlv_iosf_sb.h:38:
 }
+static inline void vlv_iosf_sb_put(struct drm_device *drm, unsigned long ports)

total: 0 errors, 1 warnings, 4 checks, 2084 lines checked


