Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D22C0797CE0
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 21:39:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D43A10E0A7;
	Thu,  7 Sep 2023 19:39:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3EBFC10E0A7;
 Thu,  7 Sep 2023 19:39:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3A666A0BA8;
 Thu,  7 Sep 2023 19:39:41 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vodapalli, Ravi Kumar" <ravi.kumar.vodapalli@intel.com>
Date: Thu, 07 Sep 2023 19:39:41 -0000
Message-ID: <169411558123.17901.9185177959634213799@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230907153757.2249452-1-lucas.demarchi@intel.com>
In-Reply-To: <20230907153757.2249452-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBF?=
 =?utf-8?q?nable_Lunar_Lake_display_=28rev3=29?=
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

Series: Enable Lunar Lake display (rev3)
URL   : https://patchwork.freedesktop.org/series/122799/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/122799/revisions/3/mbox/ not applied
Applying: drm/i915/xelpdp: Add XE_LPDP_FEATURES
Applying: drm/i915/lnl: Add display definitions
Applying: drm/i915/xe2lpd: FBC is now supported on all pipes
Applying: drm/i915: Re-order if/else ladder in intel_detect_pch()
Applying: drm/i915/xe2lpd: Add fake PCH
Applying: drm/i915/xe2lpd: Treat cursor plane as regular plane for DDB allocation
Applying: drm/i915/display: Consolidate saved port bits in intel_digital_port
Applying: drm/i915/xe2lpd: Move D2D enable/disable
Applying: drm/i915/xe2lpd: Move registers to PICA
Applying: drm/i915/xe2lpd: Don't try to program PLANE_AUX_DIST
Applying: drm/i915/xe2lpd: Register DE_RRMR has been removed
Applying: FIXME: drm/i915/xe2lpd: Add display power well
Applying: drm/i915/xe2lpd: Add DC state support
Applying: drm/i915/display: Remove FBC capability from fused off pipes
Applying: FIXME: drm/i915/xe2lpd: Add support for DP aux channels
Applying: drm/i915/xe2lpd: Handle port AUX interrupts
Applying: drm/i915/xe2lpd: Read pin assignment from IOM
Applying: drm/i915/xe2lpd: Enable odd size and panning for planar yuv
Applying: drm/i915/xe2lpd: Add support for HPD
Applying: drm/i915/xe2lpd: Extend Wa_15010685871
Applying: drm/i915/lnl: Add gmbus/ddc support
Applying: drm/i915/lnl: Add CDCLK table
Applying: drm/i915/lnl: Start using CDCLK through PLL
Applying: drm/i915/lnl: Introduce MDCLK_CDCLK ratio to DBuf
Applying: drm/i915/lnl: Add support for CDCLK initialization sequence
error: corrupt patch at line 83
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0025 drm/i915/lnl: Add support for CDCLK initialization sequence
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


