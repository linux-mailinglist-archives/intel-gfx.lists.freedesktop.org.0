Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A3EB9C1058
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 22:02:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3CE710E8DE;
	Thu,  7 Nov 2024 21:02:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 632F010E8DE;
 Thu,  7 Nov 2024 21:02:25 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/mst=3A_clea?=
 =?utf-8?q?nups=2C_renames=2C_clarifications?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 07 Nov 2024 21:02:25 -0000
Message-ID: <173101334540.1424278.967884419036778204@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <cover.1731011435.git.jani.nikula@intel.com>
In-Reply-To: <cover.1731011435.git.jani.nikula@intel.com>
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

Series: drm/i915/mst: cleanups, renames, clarifications
URL   : https://patchwork.freedesktop.org/series/141068/
State : warning

== Summary ==

Error: dim checkpatch failed
ef6c68067b62 drm/i915/mst: pass primary encoder to primary encoder hooks
-:21: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#21: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:1116:
+		dig_port->base.post_pll_disable(state, &dig_port->base, old_crtc_state, old_conn_state);

total: 0 errors, 1 warnings, 0 checks, 8 lines checked
7f039a1c5d5a drm/i915/mst: rename intel_encoder to encoder
9bdaa39b492f drm/i915/mst: introduce to_primary_encoder() and to_primary_dp()
-:153: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#153: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:1126:
+		primary_encoder->post_pll_disable(state, primary_encoder, old_crtc_state, old_conn_state);

total: 0 errors, 1 warnings, 0 checks, 231 lines checked
f7ae58d18d5b drm/i915/mst: use primary_encoder in fake mst encoder creation
4a3974b3e04a drm/i915/display: make CHICKEN_TRANS() display version aware
-:224: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#224: FILE: drivers/gpu/drm/i915/i915_reg.h:2805:
+#define _CHICKEN_TRANS(trans)	_MMIO(_PICK((trans), \
 					    [TRANSCODER_EDP] = _CHICKEN_TRANS_EDP, \
 					    [TRANSCODER_A] = _CHICKEN_TRANS_A, \
 					    [TRANSCODER_B] = _CHICKEN_TRANS_B, \

-:236: WARNING:LONG_LINE: line length of 120 exceeds 100 columns
#236: FILE: drivers/gpu/drm/i915/i915_reg.h:2816:
+#define CHICKEN_TRANS(display, trans)	(DISPLAY_VER(display) >= 14 ? _MTL_CHICKEN_TRANS(trans) : _CHICKEN_TRANS(trans))

-:236: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'trans' - possible side-effects?
#236: FILE: drivers/gpu/drm/i915/i915_reg.h:2816:
+#define CHICKEN_TRANS(display, trans)	(DISPLAY_VER(display) >= 14 ? _MTL_CHICKEN_TRANS(trans) : _CHICKEN_TRANS(trans))

total: 1 errors, 1 warnings, 1 checks, 176 lines checked
143ff86a14e5 drm/i915/mst: convert to struct intel_display
789b889d2c2f drm/i915/mst: change naming from fake encoders to MST stream encoders
f43a16b99cb8 drm/i915/dp: add comments about hooks called from MST stream encoders


