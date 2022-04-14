Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AFEA500405
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Apr 2022 04:10:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1196E10F219;
	Thu, 14 Apr 2022 02:10:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1BDAE10F218;
 Thu, 14 Apr 2022 02:10:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1B68DAA0EB;
 Thu, 14 Apr 2022 02:10:53 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Thu, 14 Apr 2022 02:10:53 -0000
Message-ID: <164990225308.1348.8161903450968355754@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220325123205.22140-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220325123205.22140-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Start_reordering_modeset_clock_calculations_=28?=
 =?utf-8?q?rev4=29?=
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

Series: drm/i915: Start reordering modeset clock calculations (rev4)
URL   : https://patchwork.freedesktop.org/series/101789/
State : warning

== Summary ==

Error: dim checkpatch failed
380dc39b162a drm/i915: Make .get_dplls() return int
83841bcb2f20 drm/i915: Pass dev_priv to intel_shared_dpll_init()
f345e1d232bc drm/i915: Remove pointless dpll_funcs checks
3d66d884647b drm/i915: Adjust .crtc_compute_clock() calling convention
8af7100894c2 drm/i915: Move stuff into intel_dpll_crtc_compute_clock()
57a731414cc5 drm/i915: Move the dpll_hw_state clearing to intel_dpll_crtc_compute_clock()
4ed6a2773750 drm/i915: Clear the dpll_hw_state when disabling a pipe
b472e0b43e0f drm/i915: Split out dg2_crtc_compute_clock()
d127bc94034e drm/i915: Add crtc .crtc_get_shared_dpll()
71ccbd8a3e79 drm/i915: Split shared dpll .get_dplls() into compute and get phases
-:191: CHECK:CAMELCASE: Avoid CamelCase: <SPLL_FREQ_1350MHz>
#191: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:1063:
+		SPLL_PLL_ENABLE | SPLL_FREQ_1350MHz | SPLL_REF_MUXED_SSC;

total: 0 errors, 0 warnings, 1 checks, 516 lines checked
351839dec9ab drm/i915: Do .crtc_compute_clock() earlier
dbf225e1d964 drm/i915: Clean up DPLL related debugs
ff4fddbbc9c9 drm/i915: Reassign DPLLs only for crtcs going throug .compute_config()


