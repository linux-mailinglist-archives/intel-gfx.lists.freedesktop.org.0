Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C4A6437B9D
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Oct 2021 19:13:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43EE16EDB7;
	Fri, 22 Oct 2021 17:13:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 183866EDB7;
 Fri, 22 Oct 2021 17:13:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0F440A0169;
 Fri, 22 Oct 2021 17:13:16 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 22 Oct 2021 17:13:16 -0000
Message-ID: <163492279602.14705.8276940797209714189@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211022103304.24164-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20211022103304.24164-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Fix_bigjoiner_state_readout_=28rev2=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: Fix bigjoiner state readout (rev2)
URL   : https://patchwork.freedesktop.org/series/94609/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
9b834bd6bbea drm/i915/psr: Disable PSR before modesets turn off all planes
4a710bf77f9e Revert "drm/i915/display: Disable audio, DRRS and PSR before planes"
c17b15ad96c9 drm/i915: Disable all planes before modesetting any pipes
0528d44fc4ec drm/i915: Introduce intel_master_crtc()
2852fb0b99d4 drm/i915: Simplify intel_crtc_copy_uapi_to_hw_state_nomodeset()
41811b325b36 drm/i915: Split PPS write from DSC enable
0fb2e7d625be drm/i915: Perform correct cpu_transcoder readout for bigjoiner
-:53: CHECK:SPACING: No space is necessary after a cast
#53: FILE: drivers/gpu/drm/i915/display/intel_display.c:4105:
+		power_domain = intel_dsc_power_domain(crtc, (enum transcoder) pipe);

-:102: CHECK:SPACING: No space is necessary after a cast
#102: FILE: drivers/gpu/drm/i915/display/intel_display.c:4208:
+		cpu_transcoder = (enum transcoder) crtc->pipe - 1;

total: 0 errors, 0 warnings, 2 checks, 88 lines checked
70dc7e08d720 drm/i915: Reduce bigjoiner special casing
15721df82bec drm/i915: Nuke PIPE_CONFIG_QUIRK_BIGJOINER_SLAVE


