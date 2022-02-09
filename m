Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E16464AF671
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 17:22:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37F2210E277;
	Wed,  9 Feb 2022 16:22:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C7C8110E28E;
 Wed,  9 Feb 2022 16:22:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C3BE9A47DF;
 Wed,  9 Feb 2022 16:22:02 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Wed, 09 Feb 2022 16:22:02 -0000
Message-ID: <164442372277.23775.9680267965031971982@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220208213548.244829-1-jose.souza@intel.com>
In-Reply-To: <20220208213548.244829-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/display/tgl+=3A_Implement_new_PLL_programming_step?=
 =?utf-8?q?_=28rev2=29?=
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

Series: drm/i915/display/tgl+: Implement new PLL programming step (rev2)
URL   : https://patchwork.freedesktop.org/series/99867/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
1dc3174e835d drm/i915/display/tgl+: Implement new PLL programming step
-:51: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#51: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:2753:
+		pll_state->div0 = TGL_DPLL0_DIV0_AFC_STARTUP(TGL_DPLL0_DIV0_AFC_STARTUP_OVERRIDE_VAL);

-:60: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#60: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:2956:
+			pll_state->mg_pll_div0 |= DKL_PLL_DIV0_AFC_STARTUP(TGL_DPLL0_DIV0_AFC_STARTUP_OVERRIDE_VAL);

-:197: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#197: FILE: drivers/gpu/drm/i915/i915_reg.h:7991:
+#define TGL_DPLL0_DIV0(pll)				_MMIO_PLL(pll, _TGL_DPLL0_DIV0, _TGL_DPLL1_DIV0)

-:199: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#199: FILE: drivers/gpu/drm/i915/i915_reg.h:7993:
+#define   TGL_DPLL0_DIV0_AFC_STARTUP(val)		REG_FIELD_PREP(TGL_DPLL0_DIV0_AFC_STARTUP_MASK, (val))

total: 0 errors, 4 warnings, 0 checks, 160 lines checked


