Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCC3FA8B22F
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Apr 2025 09:33:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2473D10E86F;
	Wed, 16 Apr 2025 07:33:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b68e5b3b99e1 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E787310E86E;
 Wed, 16 Apr 2025 07:33:40 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Enable/Disable_DC_ba?=
 =?utf-8?q?lance_along_with_VRR_DSB?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mitul Golani" <mitulkumar.ajitkumar.golani@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Apr 2025 07:33:40 -0000
Message-ID: <174478882066.9294.17348055983905073562@b68e5b3b99e1>
X-Patchwork-Hint: ignore
References: <20250416062737.1766703-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20250416062737.1766703-1-mitulkumar.ajitkumar.golani@intel.com>
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

Series: Enable/Disable DC balance along with VRR DSB
URL   : https://patchwork.freedesktop.org/series/147799/
State : warning

== Summary ==

Error: dim checkpatch failed
7b2e46a2d56f drm/i915/vrr: Add DC balance registers
-:80: ERROR:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>'

total: 1 errors, 0 warnings, 0 checks, 61 lines checked
8ef5cb29300f drm/i915/dmc: Add pipe DMC DC balance registers
-:36: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#36: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:121:
+#define PIPEDMC_DCB_MAX_INCREASE(pipe)	_MMIO_PIPE((pipe), _PIPEDMC_DCB_MAX_INCREASE_A, _PIPEDMC_DCB_MAX_INCREASE_B)

-:40: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#40: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:125:
+#define PIPEDMC_DCB_MAX_DECREASE(pipe)	_MMIO_PIPE((pipe), _PIPEDMC_DCB_MAX_DECREASE_A, _PIPEDMC_DCB_MAX_DECREASE_B)

-:44: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#44: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:129:
+#define PIPEDMC_DCB_GUARDBAND(pipe)	_MMIO_PIPE((pipe), _PIPEDMC_DCB_GUARDBAND_A, _PIPEDMC_DCB_GUARDBAND_B)

-:48: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#48: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:133:
+#define PIPEDMC_DCB_SLOPE(pipe)		_MMIO_PIPE((pipe), _PIPEDMC_DCB_SLOPE_A, _PIPEDMC_DCB_SLOPE_B)

-:52: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#52: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:137:
+#define PIPEDMC_DCB_VBLANK(pipe)	_MMIO_PIPE((pipe), _PIPEDMC_DCB_VBLANK_A, _PIPEDMC_DCB_VBLANK_B)

-:56: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#56: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:141:
+#define PIPEDMC_DCB_DEBUG(pipe)		_MMIO_PIPE((pipe), _PIPEDMC_DCB_DEBUG_A, _PIPEDMC_DCB_DEBUG_B)

-:58: ERROR:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>'

total: 1 errors, 6 warnings, 0 checks, 41 lines checked
a478f2e5dc6e drm/i915/vrr: Refactor vmin/vmax stuff
-:37: CHECK:LINE_SPACING: Please don't use multiple blank lines
#37: FILE: drivers/gpu/drm/i915/display/intel_vrr.c:159:
 
+

-:39: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#39: FILE: drivers/gpu/drm/i915/display/intel_vrr.c:161:
+static int intel_vrr_vblank_start(const struct intel_crtc_state *crtc_state,
+	int vmin_vmax)

-:89: ERROR:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>'

total: 1 errors, 0 warnings, 2 checks, 71 lines checked
1d2dc6503782 drm/i915/vrr: Add functions to read out vmin/vmax stuff
-:97: ERROR:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>'

total: 1 errors, 0 warnings, 0 checks, 73 lines checked
d6066260ed78 drm/i915: Extract vrr_vblank_start()
-:43: ERROR:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>'

total: 1 errors, 0 warnings, 0 checks, 25 lines checked
4e957667b701 drm/i915/vrr: Implement vblank evasion with DC balancing
-:106: ERROR:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>'

total: 1 errors, 0 warnings, 0 checks, 78 lines checked
ed86467997cd drm/i915/dsb: Add pipedmc dc balance enable/disable
-:66: ERROR:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>'

total: 1 errors, 0 warnings, 0 checks, 42 lines checked
30dc1e414952 drm/i915/vrr: Pause DC balancing for DSB commits
-:130: ERROR:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>'

total: 1 errors, 0 warnings, 0 checks, 103 lines checked


