Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A62E17B9A32
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Oct 2023 05:28:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD1E710E110;
	Thu,  5 Oct 2023 03:28:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2107B10E110;
 Thu,  5 Oct 2023 03:28:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BDF8EAADD6;
 Thu,  5 Oct 2023 03:28:31 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Thu, 05 Oct 2023 03:28:31 -0000
Message-ID: <169647651169.7515.18311259137671690716@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231004155607.7719-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20231004155607.7719-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Display_state_checker_cleanup_=28rev2=29?=
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

Series: drm/i915: Display state checker cleanup (rev2)
URL   : https://patchwork.freedesktop.org/series/124616/
State : warning

== Summary ==

Error: dim checkpatch failed
f16d12e81dfd drm/i915/psr: Unify PSR pre/post plane update hooks
bd2ae6eb9eef drm/i915: Stop clobbering old crtc state during state check
35cdd75b7769 drm/i915: Constify the crtc states in the DPLL checker
2f0ce9902cbb drm/i915: Simplify DPLL state checker calling convention
bd1455bb7849 drm/i915: Constify watermark state checker
caf9f7500d64 drm/i915: Simplify watermark state checker calling convention
732f4f16b9ee drm/i915: Constify the snps/c10x PLL state checkers
4b59948c64d8 drm/i915: Simplify snps/c10x DPLL state checker calling convetion
e2afe57fdd69 drm/i915: Constify remainder of the state checker
576c0d65af08 drm/i915: Simplify the state checker calling convetions
37d3a2eaa1e6 drm/i915: s/pipe_config/crtc_state/ in the state checker
-:37: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#37: FILE: drivers/gpu/drm/i915/display/intel_modeset_verify.c:94:
+		int fdi_dotclock = intel_dotclock_calculate(intel_fdi_link_freq(dev_priv, crtc_state),

total: 0 errors, 1 warnings, 0 checks, 108 lines checked
72cd90903761 drm/i915: s/dev_priv/i915/ in the state checker


