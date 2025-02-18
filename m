Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43191A3AC01
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2025 23:51:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B36910E076;
	Tue, 18 Feb 2025 22:51:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2E2710E076;
 Tue, 18 Feb 2025 22:51:06 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_cdclk/bw?=
 =?utf-8?q?/dbuf_readout/sanitation_cleanup?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Feb 2025 22:51:06 -0000
Message-ID: <173991906672.3696413.9913952365747285244@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915: cdclk/bw/dbuf readout/sanitation cleanup
URL   : https://patchwork.freedesktop.org/series/145045/
State : warning

== Summary ==

Error: dim checkpatch failed
9946ff0c2bca drm/i915/cdclk: Do cdclk post plane programming later
-:46: WARNING:MISSING_FIXES_TAG: The commit message has 'stable@', perhaps it also needs a 'Fixes:' tag?

total: 0 errors, 1 warnings, 0 checks, 17 lines checked
22a6aa4f1374 drm/i915: Drop redundant shared_dpll=NULL assignments
6207ce5d262c drm/i915: Don't clobber crtc_state->cpu_transcoder for inactive crtcs
fb455ec651d9 drm/i915: Use intel_plane_set_invisible() in intel_plane_disable_noatomic()
af45e3cf432c drm/i915: Extract intel_cdclk_crtc_disable_noatomic()
87d6561af4c5 drm/i915: Extract skl_wm_crtc_disable_noatomic()
886f511899cb drm/i915: clean up pipe's ddb usage in intel_crtc_disable_noatomic()
5ba75f0e42bf drm/i915: Add skl_wm_plane_disable_noatomic()
4e0914ec2174 drm/i915: Extract intel_bw_crtc_disable_noatomic()
8406aef2140d drm/i915: Extract intel_cdclk_update_hw_state()
5601a9c924ef drm/i915: Extract intel_bw_update_hw_state()
5b0dfc051ec4 drm/i915: Update bw_state->active_pipes during readout
b36386609010 drm/i915: Skip some bw_state readout on pre-icl
f707d82272e9 sem/i915: Simplify intel_cdclk_update_hw_state()
6f55dfa31af3 drm/i915: Simplify cdclk_disable_noatomic()
257f93d5d1b6 drm/i915: Split wm sanitize from readout
71d0291efbdf drm/i915: Do wm readout ealier for skl+
009623e8eaca drm/i915: Move dbuf_state->active_piepes into skl_wm_get_hw_state()
31d69250e3f8 drm/i915: Relocate intel_bw_crtc_update()


