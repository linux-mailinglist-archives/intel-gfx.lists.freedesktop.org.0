Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DD1AA57147
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 20:16:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E495310E099;
	Fri,  7 Mar 2025 19:16:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 18a75f3d1eae (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1ADA810E099;
 Fri,  7 Mar 2025 19:16:05 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_sagv/bw_?=
 =?utf-8?q?cleanup?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 07 Mar 2025 19:16:05 -0000
Message-ID: <174137496510.3728.4742864773518033484@18a75f3d1eae>
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

Series: drm/i915: sagv/bw cleanup
URL   : https://patchwork.freedesktop.org/series/146014/
State : warning

== Summary ==

Error: dim checkpatch failed
a5fb29a33b44 drm/i915: Drop the cached per-pipe min_cdclk[] from bw state
57ad45e27d59 drm/i915: s/intel_crtc_bw/intel_dbuf_bw/
c55712835a72 drm/i915: Extract intel_dbuf_bw_changed()
f4af456a9714 drm/i915: Pass intel_dbuf_bw to skl_*_calc_dbuf_bw() explicitly
91e1502d1583 drm/i915: Avoid triggering unwanted cdclk changes due to dbuf bandwidth changes
7080cc64ed44 drm/i915: Do more bw readout
32fc4fbb3ef0 drm/i915: Flag even inactive crtcs as "inherited"
f09a205bfb02 drm/i915: Drop force_check_qgv
84523bb6300c drm/i915: Extract intel_bw_modeset_checks()
39878f7bcca2 drm/i915: Extract intel_bw_check_sagv_mask()
-:14: WARNING:UNKNOWN_COMMIT_ID: Unknown commit id '5e8146251f7b', maybe rebased or not pulled?
#14: 
changed in commit 5e8146251f7b ("extract intel_bw_check_sagv_mask()")

total: 0 errors, 1 warnings, 0 checks, 117 lines checked
3921686a72dd drm/i915: Make intel_bw_check_sagv_mask() internal to intel_bw.c
e0a4e7fa3fb3 drm/i915: Make intel_bw_modeset_checks() internal to intel_bw_atomic_check()
38e59d3cd246 drm/i915: Skip bw stuff if per-crtc sagv state doesn't change
ec67532f8c97 drm/i915: Eliminate intel_compute_sagv_mask()


