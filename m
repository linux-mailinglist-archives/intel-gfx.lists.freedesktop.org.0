Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A6257BAF01
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 01:00:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A0A310E4B1;
	Thu,  5 Oct 2023 23:00:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5A0BB10E4B1;
 Thu,  5 Oct 2023 23:00:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 514D0A47E9;
 Thu,  5 Oct 2023 23:00:20 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Thu, 05 Oct 2023 23:00:20 -0000
Message-ID: <169654682029.7514.8142273489846539741@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231004155607.7719-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20231004155607.7719-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Display_state_checker_cleanup_=28rev3=29?=
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

Series: drm/i915: Display state checker cleanup (rev3)
URL   : https://patchwork.freedesktop.org/series/124616/
State : warning

== Summary ==

Error: dim checkpatch failed
2e9294527e33 drm/i915/psr: Unify PSR pre/post plane update hooks
1bb2e1ff46ca drm/i915: Stop clobbering old crtc state during state check
65df6c683834 drm/i915: Constify the crtc states in the DPLL checker
ea14f7c72e3c drm/i915: Simplify DPLL state checker calling convention
8b3242bcd0e7 drm/i915: Constify watermark state checker
84bffbe3a29f drm/i915: Simplify watermark state checker calling convention
48a6850e4975 drm/i915: Constify the snps/c10x PLL state checkers
7b2a44003b2b drm/i915: Simplify snps/c10x DPLL state checker calling convetion
fbb924cd14ee drm/i915: Constify remainder of the state checker
3c4520715c28 drm/i915: Simplify the state checker calling convetions
014878173e3b drm/i915: s/pipe_config/crtc_state/ in the state checker
-:37: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#37: FILE: drivers/gpu/drm/i915/display/intel_modeset_verify.c:94:
+		int fdi_dotclock = intel_dotclock_calculate(intel_fdi_link_freq(dev_priv, crtc_state),

total: 0 errors, 1 warnings, 0 checks, 108 lines checked
1ae973a64218 drm/i915: s/dev_priv/i915/ in the state checker


