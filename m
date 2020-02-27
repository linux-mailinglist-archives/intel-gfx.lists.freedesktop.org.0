Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C81C170F84
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 05:14:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54F786E4B1;
	Thu, 27 Feb 2020 04:14:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7D4386E4B1;
 Thu, 27 Feb 2020 04:14:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 764C1A00FD;
 Thu, 27 Feb 2020 04:14:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Thu, 27 Feb 2020 04:14:05 -0000
Message-ID: <158277684545.29657.12893617570200214556@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200226203455.23032-1-imre.deak@intel.com>
In-Reply-To: <20200226203455.23032-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?drm/i915=3A_Clean_up_DPLL_output/refclock_tracking?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: Clean up DPLL output/refclock tracking
URL   : https://patchwork.freedesktop.org/series/73977/
State : warning

== Summary ==

$ dim sparse origin/drm-tip
Sparse version: v0.6.0
Commit: drm/i915: Fix bounds check in intel_get_shared_dpll_id()
Okay!

Commit: drm/i915: Move DPLL HW readout/sanitize fns to intel_dpll_mgr.c
Okay!

Commit: drm/i915: Keep the global DPLL state in a DPLL specific struct
Okay!

Commit: drm/i915: Move the DPLL vfunc inits after the func defines
Okay!

Commit: drm/i915/hsw: Use the DPLL ID when calculating DPLL clock
Okay!

Commit: drm/i915: Move DPLL frequency calculation to intel_dpll_mgr.c
Okay!

Commit: drm/i915/skl: Parametrize the DPLL ref clock instead of open-coding it
Okay!

Commit: drm/i915/hsw: Rename the get HDMI/DP DPLL funcs to get WRPLL/LCPLL
Okay!

Commit: drm/i915/hsw: Split out the SPLL parameter calculation
Okay!

Commit: drm/i915/hsw: Split out the WRPLL, LCPLL, SPLL frequency calculation
Okay!

Commit: drm/i915/skl, cnl: Split out the WRPLL/LCPLL frequency calculation
+drivers/gpu/drm/i915/display/intel_dpll_mgr.c:2514:5: warning: symbol 'cnl_hdmi_pll_ref_clock' was not declared. Should it be static?

Commit: drm/i915/hsw: Use the read-out WRPLL/SPLL state instead of reading out again
Okay!

Commit: drm/i915: Unify the DPLL ref clock frequency tracking
-O:drivers/gpu/drm/i915/display/intel_dpll_mgr.c:2511:5: warning: symbol 'cnl_hdmi_pll_ref_clock' was not declared. Should it be static?

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
