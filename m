Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58AFC97B0CB
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 15:30:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DFB710E227;
	Tue, 17 Sep 2024 13:30:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CC7910E227;
 Tue, 17 Sep 2024 13:30:40 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Introduce_drm_sharpn?=
 =?utf-8?q?ess_property?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nemesa Garg" <nemesa.garg@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Sep 2024 13:30:40 -0000
Message-ID: <172657984063.1022098.12655420627071365279@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240917092634.1109572-1-nemesa.garg@intel.com>
In-Reply-To: <20240917092634.1109572-1-nemesa.garg@intel.com>
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

Series: Introduce drm sharpness property
URL   : https://patchwork.freedesktop.org/series/138754/
State : warning

== Summary ==

Error: dim checkpatch failed
adc86d1a29f8 drm: Introduce sharpness strength property
025abcd09462 drm/i915/display: Compute the scaler filter coefficients
-:64: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#64: 
new file mode 100644

-:171: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#171: FILE: drivers/gpu/drm/i915/display/intel_sharpness_filter.c:103:
+				SHARP_COEFF_TO_REG_FORMAT(crtc_state->hw.casf_params.coeff[tapindex]);

-:191: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'coefficient' - possible side-effects?
#191: FILE: drivers/gpu/drm/i915/display/intel_sharpness_filter.h:11:
+#define SHARP_COEFF_TO_REG_FORMAT(coefficient) ((u16)(coefficient.sign << 15 | \
+			coefficient.exp << 12 | coefficient.mantissa << 3))

total: 0 errors, 2 warnings, 1 checks, 188 lines checked
b5f661272ad1 drm/i915/display: Enable the second scaler for sharpness
-:228: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#228: FILE: drivers/gpu/drm/i915/display/skl_scaler.c:742:
+	x = y = 0;

total: 0 errors, 0 warnings, 1 checks, 226 lines checked
6c385700d862 drm/i915/display: Add registers and compute the strength
ee3a2e85d784 drm/i915/display: Load the lut values and enable sharpness


