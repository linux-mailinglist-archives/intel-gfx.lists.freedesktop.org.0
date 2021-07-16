Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B4DD3CBBDD
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jul 2021 20:30:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDCD06E9CC;
	Fri, 16 Jul 2021 18:30:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 094456E9CC;
 Fri, 16 Jul 2021 18:30:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EDE6EAA916;
 Fri, 16 Jul 2021 18:30:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Fri, 16 Jul 2021 18:30:15 -0000
Message-ID: <162646021594.12776.15958040130328202807@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210715093530.31711-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210715093530.31711-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Clean_up_DPLL_stuff?=
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

Series: drm/i915: Clean up DPLL stuff
URL   : https://patchwork.freedesktop.org/series/92577/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
85b53fd77510 drm/i915: Set output_types to EDP for vlv/chv DPLL forcing
f9828f0fa648 drm/i915: Clean up gen2 DPLL readout
f38f6423f164 drm/i915: Extract ilk_update_pll_dividers()
1dfbc5556829 drm/i915: Constify struct dpll all over
75de79108280 drm/i915: Clean dpll calling convention
a8495dcd7c24 drm/i915: Clean up variable names in old dpll functions
9bb9d3e38217 drm/i915: Remove the 'reg' local variable
a5fd8442c9f2 drm/i915: Program DPLL P1 dividers consistently
13ef7a1fd2ee drm/i915: Call {vlv, chv}_prepare_pll() from {vlv, chv}_enable_pll()
-:183: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#183: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1566:
+	udelay(150);

total: 0 errors, 0 warnings, 1 checks, 317 lines checked
d57101706e6f drm/i915: Reuse ilk_needs_fb_cb_tune() for the reduced clock as well
9ab5635edef8 drm/i915: Fold i9xx_set_pll_dividers() into i9xx_enable_pll()
6be0972a6060 drm/i915: Fold ibx_pch_dpll_prepare() into ibx_pch_dpll_enable()
d6989dbe6a38 drm/i915: Nuke intel_prepare_shared_dpll()


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
