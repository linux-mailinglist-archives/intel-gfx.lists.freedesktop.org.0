Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7208A71CF1
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Mar 2025 18:19:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2603210E764;
	Wed, 26 Mar 2025 17:19:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from e6b6f09ec485 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B94910E764;
 Wed, 26 Mar 2025 17:19:55 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_sagv/bw_?=
 =?utf-8?q?cleanup_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Mar 2025 17:19:55 -0000
Message-ID: <174300959510.5903.13300276177060135798@e6b6f09ec485>
X-Patchwork-Hint: ignore
References: <20250326162544.3642-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20250326162544.3642-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915: sagv/bw cleanup (rev4)
URL   : https://patchwork.freedesktop.org/series/146014/
State : warning

== Summary ==

Error: dim checkpatch failed
9fc812bc536d drm/i915: Drop the cached per-pipe min_cdclk[] from bw state
0bc4c8cc5e4c drm/i915: s/intel_crtc_bw/intel_dbuf_bw/
5485c667ad62 drm/i915: Extract intel_dbuf_bw_changed()
15e44704b8fa drm/i915: Pass intel_dbuf_bw to skl_*_calc_dbuf_bw() explicitly
2031229e315e drm/i915: Avoid triggering unwanted cdclk changes due to dbuf bandwidth changes
84afbcd3508e drm/i915: Do more bw readout
9a39c24248c9 drm/i915: Flag even inactive crtcs as "inherited"
192b2b8c7c92 drm/i915: Drop force_check_qgv
74dffb028602 drm/i915: Extract intel_bw_modeset_checks()
d47e5f5ce010 drm/i915: Extract intel_bw_check_sagv_mask()
-:14: WARNING:UNKNOWN_COMMIT_ID: Unknown commit id '5e8146251f7b', maybe rebased or not pulled?
#14: 
changed in commit 5e8146251f7b ("extract intel_bw_check_sagv_mask()")

total: 0 errors, 1 warnings, 0 checks, 117 lines checked
1c39696c2416 drm/i915: Make intel_bw_check_sagv_mask() internal to intel_bw.c
f72956da51b6 drm/i915: Make intel_bw_modeset_checks() internal to intel_bw_atomic_check()
aa8f370b03c5 drm/i915: Skip bw stuff if per-crtc sagv state doesn't change
9559970f05fb drm/i915: Eliminate intel_compute_sagv_mask()


