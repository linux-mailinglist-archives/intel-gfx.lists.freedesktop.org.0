Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B4241D9C7A
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2020 18:25:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BCFD89F3C;
	Tue, 19 May 2020 16:25:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4152189F3C
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 May 2020 16:25:36 +0000 (UTC)
IronPort-SDR: LT3Yb8EfOu8tmHLY4D37YUuUNzK9iO/OlwtqwENA9+pvtMkxwN1uLr+jBqjEowGuXcN4kMc+Uu
 SrZLJI+rmkmQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2020 09:25:35 -0700
IronPort-SDR: rQYCUoP0UsRPYIoSE5OW7bfRzcUv0HeIrAlUmRRkZcQML5Tq898eAeRlGby3vzAJK1F01+wP/r
 aCay3bBh1rUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,410,1583222400"; d="scan'208";a="466185463"
Received: from unknown (HELO msatwood-mobl.intel.com) ([10.212.134.205])
 by fmsmga006.fm.intel.com with ESMTP; 19 May 2020 09:25:35 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 May 2020 09:25:34 -0700
Message-Id: <20200519162534.10035-1-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.21.3
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/ehl: Wa_22010271021
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Reflect recent Bspec changes.

Bspec: 33451

Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 90a2b9e399b0..fa1e15657663 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1484,6 +1484,12 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 		wa_write_or(wal,
 			    GEN7_FF_THREAD_MODE,
 			    GEN12_FF_TESSELATION_DOP_GATE_DISABLE);
+
+		/* Wa_22010271021:ehl */
+		if (IS_ELKHARTLAKE(i915))
+			wa_masked_en(wal,
+				     GEN9_CS_DEBUG_MODE1,
+				     FF_DOP_CLOCK_GATE_DISABLE);
 	}
 
 	if (IS_GEN_RANGE(i915, 9, 12)) {
-- 
2.21.3

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
