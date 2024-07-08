Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 427DE929E80
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jul 2024 10:49:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EDEE10E2CE;
	Mon,  8 Jul 2024 08:49:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 975C510E2D6;
 Mon,  8 Jul 2024 08:49:47 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Introduce_drm_sharpe?=
 =?utf-8?q?ning_property_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nemesa Garg" <nemesa.garg@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 08 Jul 2024 08:49:47 -0000
Message-ID: <172042858761.49295.17635680161492235155@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240708080917.257857-1-nemesa.garg@intel.com>
In-Reply-To: <20240708080917.257857-1-nemesa.garg@intel.com>
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

Series: Introduce drm sharpening property (rev4)
URL   : https://patchwork.freedesktop.org/series/129888/
State : warning

== Summary ==

Error: dim checkpatch failed
752c31d74f74 drm: Introduce sharpness mode property
6f1bbf74c46d drm/i915/display: Compute the scaler filter coefficients
-:76: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#76: 
new file mode 100644

-:198: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#198: FILE: drivers/gpu/drm/i915/display/intel_sharpen_filter.c:118:
+				SHARP_COEFF_TO_REG_FORMAT(crtc_state->hw.casf_params.coeff[tapindex]);

-:218: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'coefficient' - possible side-effects?
#218: FILE: drivers/gpu/drm/i915/display/intel_sharpen_filter.h:11:
+#define SHARP_COEFF_TO_REG_FORMAT(coefficient) ((u16)(coefficient.sign << 15 | \
+			coefficient.exp << 12 | coefficient.mantissa << 3))

total: 0 errors, 2 warnings, 1 checks, 205 lines checked
81e96028fb8d drm/i915/display: Enable the second scaler for sharpness
-:224: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#224: FILE: drivers/gpu/drm/i915/display/skl_scaler.c:746:
+	x = y = 0;

total: 0 errors, 0 warnings, 1 checks, 224 lines checked
43dba0cb02ef drm/i915/display: Add registers and compute the strength
617fde77bbb3 drm/i915/display: Load the lut values and enable sharpness


