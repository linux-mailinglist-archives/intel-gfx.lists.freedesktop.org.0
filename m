Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD2EE879AB3
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Mar 2024 18:35:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50731112AA4;
	Tue, 12 Mar 2024 17:35:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31317112F27;
 Tue, 12 Mar 2024 17:35:27 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_pass_enc?=
 =?utf-8?q?oder_around_more_for_port/phy_checks?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 12 Mar 2024 17:35:27 -0000
Message-ID: <171026492720.696620.17814919044993790321@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <cover.1710253533.git.jani.nikula@intel.com>
In-Reply-To: <cover.1710253533.git.jani.nikula@intel.com>
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

Series: drm/i915: pass encoder around more for port/phy checks
URL   : https://patchwork.freedesktop.org/series/131031/
State : warning

== Summary ==

Error: dim checkpatch failed
e1b7c8c052d0 drm/hdmi: convert *_port_to_ddc_pin() to *_encoder_to_ddc_pin()
d4b8dffcc1db drm/i915/ddi: pass encoder to intel_wait_ddi_buf_active()
254a54ef205c drm/i915/snps: pass encoder to intel_snps_phy_update_psr_power_state()
4e620962b4b9 drm/i915/display: add intel_encoder_is_*() and _to_*() functions
e9fd125d155d drm/i915/display: use intel_encoder_is/to_* functions
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:643: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#643: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1696:
+	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI) && !(intel_encoder_is_c10phy(encoder)))

total: 0 errors, 2 warnings, 0 checks, 964 lines checked
0f16c202ad7c drm/i915/cx0: remove intel_is_c10phy()
6fadfbd31454 drm/i915/cx0: pass encoder instead of i915 and port around
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:201: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#201: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:295:
+		ack = intel_cx0_wait_for_ack(encoder, XELPDP_PORT_P2M_COMMAND_WRITE_ACK, lane, &val);

-:445: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#445: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1923:
+	intel_cx0_write(encoder, INTEL_CX0_LANE0, PHY_C10_VDR_CMN(0), pll_state->cmn, MB_WRITE_COMMITTED);

-:446: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#446: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1924:
+	intel_cx0_write(encoder, INTEL_CX0_LANE0, PHY_C10_VDR_TX(0), pll_state->tx, MB_WRITE_COMMITTED);

-:466: WARNING:LONG_LINE: line length of 113 exceeds 100 columns
#466: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2168:
+	cntx = intel_cx0_read(encoder, INTEL_CX0_LANE0, PHY_C20_VDR_CUSTOM_SERDES_RATE) & PHY_C20_CONTEXT_TOGGLE;

-:531: WARNING:LONG_LINE: line length of 117 exceeds 100 columns
#531: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2358:
+			intel_c20_sram_write(encoder, INTEL_CX0_LANE0, RAWLANEAONX_DIG_TX_MPLLB_CAL_DONE_BANK(i), 0);

-:540: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#540: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2366:
+			intel_c20_sram_write(encoder, INTEL_CX0_LANE0, PHY_C20_A_TX_CNTX_CFG(i), pll_state->tx[i]);

-:543: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#543: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2368:
+			intel_c20_sram_write(encoder, INTEL_CX0_LANE0, PHY_C20_B_TX_CNTX_CFG(i), pll_state->tx[i]);

-:550: WARNING:LONG_LINE: line length of 117 exceeds 100 columns
#550: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2374:
+			intel_c20_sram_write(encoder, INTEL_CX0_LANE0, PHY_C20_A_CMN_CNTX_CFG(i), pll_state->cmn[i]);

-:553: WARNING:LONG_LINE: line length of 117 exceeds 100 columns
#553: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2376:
+			intel_c20_sram_write(encoder, INTEL_CX0_LANE0, PHY_C20_B_CMN_CNTX_CFG(i), pll_state->cmn[i]);

total: 0 errors, 10 warnings, 0 checks, 730 lines checked


