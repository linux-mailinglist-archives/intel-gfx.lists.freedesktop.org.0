Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B798597B383
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 19:23:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4D3E10E091;
	Tue, 17 Sep 2024 17:23:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F2AA10E091;
 Tue, 17 Sep 2024 17:23:43 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Introduce_drm_sharpn?=
 =?utf-8?q?ess_property_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nemesa Garg" <nemesa.garg@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Sep 2024 17:23:43 -0000
Message-ID: <172659382318.1022947.10817949560706972790@2413ebb6fbb6>
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

Series: Introduce drm sharpness property (rev2)
URL   : https://patchwork.freedesktop.org/series/138754/
State : warning

== Summary ==

Error: dim checkpatch failed
916b12ed3724 drm: Introduce sharpness strength property
f0b0e2321ed3 drm/i915/display: Compute the scaler filter coefficients
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
cd18f03d0495 drm/i915/display: Enable the second scaler for sharpness
-:228: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#228: FILE: drivers/gpu/drm/i915/display/skl_scaler.c:742:
+	x = y = 0;

total: 0 errors, 0 warnings, 1 checks, 226 lines checked
c29c1fcd3820 drm/i915/display: Add registers and compute the strength
44f65c3190d6 drm/i915/display: Load the lut values and enable sharpness


