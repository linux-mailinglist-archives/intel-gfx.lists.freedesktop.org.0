Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF884A575B5
	for <lists+intel-gfx@lfdr.de>; Sat,  8 Mar 2025 00:04:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3360D10EC44;
	Fri,  7 Mar 2025 23:04:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 18a75f3d1eae (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B504110EC44;
 Fri,  7 Mar 2025 23:04:04 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_sagv/bw_?=
 =?utf-8?q?cleanup_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 07 Mar 2025 23:04:04 -0000
Message-ID: <174138864473.4641.4420630176414346475@18a75f3d1eae>
X-Patchwork-Hint: ignore
References: <20250307180139.15744-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20250307180139.15744-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915: sagv/bw cleanup (rev2)
URL   : https://patchwork.freedesktop.org/series/146014/
State : warning

== Summary ==

Error: dim checkpatch failed
c73c696466a4 drm/i915: Drop the cached per-pipe min_cdclk[] from bw state
4d25dd1d8209 drm/i915: s/intel_crtc_bw/intel_dbuf_bw/
a83a49bb2114 drm/i915: Extract intel_dbuf_bw_changed()
a8c55fdd8320 drm/i915: Pass intel_dbuf_bw to skl_*_calc_dbuf_bw() explicitly
40d6c55ad7f8 drm/i915: Avoid triggering unwanted cdclk changes due to dbuf bandwidth changes
7997cd6ee0ef drm/i915: Do more bw readout
cd589a835fdd drm/i915: Flag even inactive crtcs as "inherited"
fd16e585381a drm/i915: Drop force_check_qgv
09435efd4163 drm/i915: Extract intel_bw_modeset_checks()
019cb7241149 drm/i915: Extract intel_bw_check_sagv_mask()
-:14: WARNING:UNKNOWN_COMMIT_ID: Unknown commit id '5e8146251f7b', maybe rebased or not pulled?
#14: 
changed in commit 5e8146251f7b ("extract intel_bw_check_sagv_mask()")

total: 0 errors, 1 warnings, 0 checks, 117 lines checked
be013f87a755 drm/i915: Make intel_bw_check_sagv_mask() internal to intel_bw.c
c8b077ceb6d5 drm/i915: Make intel_bw_modeset_checks() internal to intel_bw_atomic_check()
ecf992626b0b drm/i915: Skip bw stuff if per-crtc sagv state doesn't change
8ddb6a9215c6 drm/i915: Eliminate intel_compute_sagv_mask()


