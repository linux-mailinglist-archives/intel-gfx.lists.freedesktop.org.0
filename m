Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66F981C2322
	for <lists+intel-gfx@lfdr.de>; Sat,  2 May 2020 06:58:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEFE66ED7D;
	Sat,  2 May 2020 04:58:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 539ED6ED7C
 for <intel-gfx@lists.freedesktop.org>; Sat,  2 May 2020 04:58:02 +0000 (UTC)
IronPort-SDR: Qh2fOQ8aJKUOBj3EwLE67+b6VWuHCzPpvmRGPzl1bnVT4Rwppoiqdd/2cl0CtNVgU0er0dicJD
 IKMc09sAbmzQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2020 21:58:01 -0700
IronPort-SDR: ySaecG9Xe6hhf4G2GEnVlJd3IPJiqFoKcbIdGlZaFh1TZWqbLKKTYu2OYZwCFJwn91c8oN6Rdd
 BLovH0X9E5Mg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,342,1583222400"; d="scan'208";a="248710006"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by fmsmga007.fm.intel.com with ESMTP; 01 May 2020 21:58:01 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 May 2020 21:57:43 -0700
Message-Id: <20200502045744.407060-3-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200502045744.407060-1-matthew.d.roper@intel.com>
References: <20200502045744.407060-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/3] drm/i915: Setup MCR steering for RCS
 engine workarounds
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
Cc: chris@chris-wilson.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Reads of multicast registers give the value associated with
slice/subslice 0 by default unless we manually steer the reads to a
different slice/subslice.  If slice/subslice 0 are fused off in hardware,
performing unsteered reads of multicast registers will return a value of
0 rather than the value we wrote into the multicast register.

To ensure we can properly readback and verify workarounds that touch
registers in a multicast range, we currently setup MCR steering to a
known-valid slice/subslice as the very first item in the GT workaround
list for gen10+.  That steering will then be in place as we verify the
rest of the registers that show up in the GT workaround list, and at
initialization the steering will also still be in effect when we move on
to applying and verifying the workarounds in the RCS engine's workaround
list (which is where most of the multicast registers actually show up).

However we seem run into problems during resets where RCS engine
workarounds are applied without being preceded by application of the GT
workaround list and the steering isn't in place.  Let's add the same MCR
steering to the beginning of the RCS engine's workaround list to ensure
that it's always in place and we don't get erroneous messages about RCS
engine workarounds failing to apply.

References: https://gitlab.freedesktop.org/drm/intel/issues/1222
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: chris@chris-wilson.co.uk
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 4a255de13394..b11b83546696 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1345,6 +1345,9 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 {
 	struct drm_i915_private *i915 = engine->i915;
 
+	if (INTEL_GEN(i915) >= 10)
+		wa_init_mcr(i915, wal);
+
 	if (IS_TGL_REVID(i915, TGL_REVID_A0, TGL_REVID_A0)) {
 		/*
 		 * Wa_1607138336:tgl
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
