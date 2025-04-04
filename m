Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03DDCA7C321
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Apr 2025 20:15:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 580F810E253;
	Fri,  4 Apr 2025 18:15:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from e6b6f09ec485 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A815D10E172;
 Fri,  4 Apr 2025 18:15:06 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_sagv/bw_?=
 =?utf-8?q?cleanup_=28rev5=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 04 Apr 2025 18:15:06 -0000
Message-ID: <174379050667.39356.14917548158032209371@e6b6f09ec485>
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

Series: drm/i915: sagv/bw cleanup (rev5)
URL   : https://patchwork.freedesktop.org/series/146014/
State : warning

== Summary ==

Error: dim checkpatch failed
5b69684a3536 drm/i915: Drop the cached per-pipe min_cdclk[] from bw state
bddd7efeb785 drm/i915: s/intel_crtc_bw/intel_dbuf_bw/
56bb7ec29fee drm/i915: Extract intel_dbuf_bw_changed()
a1a14fbc7e2c drm/i915: Pass intel_dbuf_bw to skl_*_calc_dbuf_bw() explicitly
caa7836a5d84 drm/i915: Avoid triggering unwanted cdclk changes due to dbuf bandwidth changes
a851f2c7d049 drm/i915: Do more bw readout
4d4db1cc38d6 drm/i915: Flag even inactive crtcs as "inherited"
97f5f395575c drm/i915: Drop force_check_qgv
3bf01e587900 drm/i915: Extract intel_bw_modeset_checks()
9017d81a8a6f drm/i915: Extract intel_bw_check_sagv_mask()
-:14: WARNING:UNKNOWN_COMMIT_ID: Unknown commit id '5e8146251f7b', maybe rebased or not pulled?
#14: 
changed in commit 5e8146251f7b ("extract intel_bw_check_sagv_mask()")

total: 0 errors, 1 warnings, 0 checks, 117 lines checked
4c696b98816b drm/i915: Make intel_bw_check_sagv_mask() internal to intel_bw.c
951bc98d3ac1 drm/i915: Make intel_bw_modeset_checks() internal to intel_bw_atomic_check()
46902617c853 drm/i915: Skip bw stuff if per-crtc sagv state doesn't change
1421ce406bf9 drm/i915: Eliminate intel_compute_sagv_mask()


