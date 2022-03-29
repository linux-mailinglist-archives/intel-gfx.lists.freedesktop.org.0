Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 29FE04EAE3E
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 15:18:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6789910E94D;
	Tue, 29 Mar 2022 13:18:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E85E310E94D;
 Tue, 29 Mar 2022 13:18:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E4719AADD5;
 Tue, 29 Mar 2022 13:18:33 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Tue, 29 Mar 2022 13:18:33 -0000
Message-ID: <164855991393.5798.4906368874223341130@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220325123205.22140-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220325123205.22140-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Start_reordering_modeset_clock_calculations_=28?=
 =?utf-8?q?rev2=29?=
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

Series: drm/i915: Start reordering modeset clock calculations (rev2)
URL   : https://patchwork.freedesktop.org/series/101789/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
0cc647463e24 drm/i915: Make .get_dplls() return int
26c2cde200f7 drm/i915: Pass dev_priv to intel_shared_dpll_init()
9cf895d61032 drm/i915: Remove pointless dpll_funcs checks
b7d2de662b35 drm/i915: Adjust .crtc_compute_clock() calling convention
9c981811d68a drm/i915: Move stuff into intel_dpll_crtc_compute_clock()
b0721bb72949 drm/i915: Move the dpll_hw_state clearing to intel_dpll_crtc_compute_clock()
9ecae4f49f80 drm/i915: Clear the dpll_hw_state when disabling a pipe
beebcc4f0775 drm/i915: Split out dg2_crtc_compute_clock()
c5be89e9a6f5 drm/i915: Add crtc .crtc_get_shared_dpll()
0ae7daafcb24 drm/i915: Split shared dpll .get_dplls() into compute and get phases
-:191: CHECK:CAMELCASE: Avoid CamelCase: <SPLL_FREQ_1350MHz>
#191: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:1063:
+		SPLL_PLL_ENABLE | SPLL_FREQ_1350MHz | SPLL_REF_MUXED_SSC;

total: 0 errors, 0 warnings, 1 checks, 516 lines checked
6bcc7005f5e4 drm/i915: Do .crtc_compute_clock() earlier
1d25064542ce drm/i915: Clean up DPLL related debugs
1ebfaa21192e drm/i915: Reassign DPLLs only for crtcs going throug .compute_config()


