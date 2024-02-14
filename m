Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44CB085491E
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Feb 2024 13:22:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DFD310E8AD;
	Wed, 14 Feb 2024 12:22:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81C8B10E1E2;
 Wed, 14 Feb 2024 12:22:18 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Introduce_drm_sharpe?=
 =?utf-8?q?ning_property?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nemesa Garg" <nemesa.garg@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Feb 2024 12:22:18 -0000
Message-ID: <170791333849.1238604.6918047022123074542@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240214112457.3734871-1-nemesa.garg@intel.com>
In-Reply-To: <20240214112457.3734871-1-nemesa.garg@intel.com>
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

Series: Introduce drm sharpening property
URL   : https://patchwork.freedesktop.org/series/129888/
State : warning

== Summary ==

Error: dim checkpatch failed
f800fb698aab drm: Introduce sharpeness mode property
3f3bad5af877 drm/i915/display/: Compute the scaler filter coefficients
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:74: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#74: 
new file mode 100644

-:196: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#196: FILE: drivers/gpu/drm/i915/display/intel_sharpen_filter.c:118:
+				SHARP_COEFF_TO_REG_FORMAT(crtc_state->hw.casf_params.coeff[tapindex]);

-:216: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'coefficient' - possible side-effects?
#216: FILE: drivers/gpu/drm/i915/display/intel_sharpen_filter.h:11:
+#define SHARP_COEFF_TO_REG_FORMAT(coefficient) ((u16)(coefficient.sign << 15 | \
+			coefficient.exp << 12 | coefficient.mantissa << 3))

total: 0 errors, 2 warnings, 1 checks, 206 lines checked
cc434912b492 drm/i915/dispaly/: Enable the second scaler
-:177: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#177: FILE: drivers/gpu/drm/i915/display/skl_scaler.c:740:
+	x = y = 0;

total: 0 errors, 0 warnings, 1 checks, 187 lines checked
7cc66558b5a9 drm/i915/display/: Add registers and compute the strength
-:124: ERROR:TRAILING_WHITESPACE: trailing whitespace
#124: FILE: drivers/gpu/drm/i915/display/intel_sharpen_filter.c:126:
+^I$

total: 1 errors, 0 warnings, 0 checks, 140 lines checked
87344f4fc30c drm/i915/display: Load the lut values and enable sharpness


