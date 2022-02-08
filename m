Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 459844AE59F
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 00:50:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F31ED10E2A2;
	Tue,  8 Feb 2022 23:50:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 69AF010E2A2;
 Tue,  8 Feb 2022 23:50:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6A886AADE1;
 Tue,  8 Feb 2022 23:50:36 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Tue, 08 Feb 2022 23:50:36 -0000
Message-ID: <164436423643.22542.4489246870923748089@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220208213548.244829-1-jose.souza@intel.com>
In-Reply-To: <20220208213548.244829-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/display/tgl+=3A_Implement_new_PLL_programming_step?=
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/display/tgl+: Implement new PLL programming step
URL   : https://patchwork.freedesktop.org/series/99867/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
2f56199b0301 drm/i915/display/tgl+: Implement new PLL programming step
-:50: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#50: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:2753:
+		pll_state->div0 = TGL_DPLL0_DIV0_AFC_STARTUP(TGL_DPLL0_DIV0_AFC_STARTUP_OVERRIDE_VAL);

-:59: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#59: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:2956:
+			pll_state->mg_pll_div0 |= DKL_PLL_DIV0_AFC_STARTUP(TGL_DPLL0_DIV0_AFC_STARTUP_OVERRIDE_VAL);

-:196: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#196: FILE: drivers/gpu/drm/i915/i915_reg.h:7991:
+#define TGL_DPLL0_DIV0(pll)				_MMIO_PLL(pll, _TGL_DPLL0_DIV0, _TGL_DPLL1_DIV0)

-:198: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#198: FILE: drivers/gpu/drm/i915/i915_reg.h:7993:
+#define   TGL_DPLL0_DIV0_AFC_STARTUP(val)		REG_FIELD_PREP(TGL_DPLL0_DIV0_AFC_STARTUP_MASK, (val))

total: 0 errors, 4 warnings, 0 checks, 160 lines checked


