Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04D1C4E74EB
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Mar 2022 15:19:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90E7310ECAE;
	Fri, 25 Mar 2022 14:19:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 75E0910ECAD;
 Fri, 25 Mar 2022 14:19:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 70252A00FD;
 Fri, 25 Mar 2022 14:19:10 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Fri, 25 Mar 2022 14:19:10 -0000
Message-ID: <164821795042.24038.12382773311790602435@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220325123205.22140-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220325123205.22140-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Start_reordering_modeset_clock_calculations?=
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

Series: drm/i915: Start reordering modeset clock calculations
URL   : https://patchwork.freedesktop.org/series/101789/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
3b931b51817a drm/i915: Make .get_dplls() return int
1b2d4a4a599e drm/i915: Pass dev_priv to intel_shared_dpll_init()
33ae484eb053 drm/i915: Remove pointless dpll_funcs checks
4a49b686c648 drm/i915: Adjust .crtc_compute_clock() calling convention
2e1ac19c4047 drm/i915: Move stuff into intel_dpll_crtc_compute_clock()
4e89276790b2 drm/i915: Move the dpll_hw_state clearing to intel_dpll_crtc_compute_clock()
3f11772ea836 drm/i915: Clear the dpll_hw_state when disabling a pipe
ca60dc3a2f8a drm/i915: Split out dg2_crtc_compute_clock()
f71777efae30 drm/i915: Add crtc .crtc_get_shared_dpll()
c64fe9a7ba0c drm/i915: Split shared dpll .get_dplls() into compute and get phases
-:191: CHECK:CAMELCASE: Avoid CamelCase: <SPLL_FREQ_1350MHz>
#191: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:1063:
+		SPLL_PLL_ENABLE | SPLL_FREQ_1350MHz | SPLL_REF_MUXED_SSC;

total: 0 errors, 0 warnings, 1 checks, 516 lines checked
f78032f898c7 drm/i915: Do .crtc_compute_clock() earlier
4d0d47819c90 drm/i915: Clean up DPLL related debugs
5d0098769f10 drm/i915: Reassign DPLLs only for crtcs going throug .compute_config()


