Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E3E67B984E
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Oct 2023 00:45:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D53F10E13D;
	Wed,  4 Oct 2023 22:45:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8AD6110E13D;
 Wed,  4 Oct 2023 22:45:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 831CEAADEF;
 Wed,  4 Oct 2023 22:45:21 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Wed, 04 Oct 2023 22:45:21 -0000
Message-ID: <169645952151.7833.11700700160467520374@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231004155607.7719-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20231004155607.7719-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Display_state_checker_cleanup?=
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

Series: drm/i915: Display state checker cleanup
URL   : https://patchwork.freedesktop.org/series/124616/
State : warning

== Summary ==

Error: dim checkpatch failed
939f6b0c8b59 drm/i915/psr: Unify PSR pre/post plane update hooks
a2b3d7be79dc drm/i915: Stop clobbering old crtc state during state check
f96aa8be9d99 drm/i915: Constify the crtc states in the DPLL checker
221b96d74d0f drm/i915: Simplify DPLL state checker calling convention
f00e6dfc63c5 drm/i915: Constify watermark state checker
3dc553da9288 drm/i915: Simplify watermark state checker calling convention
8e3a9f5452a7 drm/i915: Constify the snps/c10x PLL state checkers
f9d2e9d79095 drm/i915: Simplify snps/c10x DPLL state checker calling convetion
e87030865f20 drm/i915: Constify remainder of the state checker
bf3ebc47a6e2 drm/i915: Simplify the state checker calling convetions
57f5185124b1 drm/i915: s/pipe_config/crtc_state/ in the state checker
-:37: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#37: FILE: drivers/gpu/drm/i915/display/intel_modeset_verify.c:94:
+		int fdi_dotclock = intel_dotclock_calculate(intel_fdi_link_freq(dev_priv, crtc_state),

total: 0 errors, 1 warnings, 0 checks, 108 lines checked
4c5cc6599550 drm/i915: s/dev_priv/i915/ in the state checker


