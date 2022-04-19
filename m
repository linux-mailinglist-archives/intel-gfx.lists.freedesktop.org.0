Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF02850784C
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Apr 2022 20:26:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CC6A10E0EC;
	Tue, 19 Apr 2022 18:26:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5609510E0EC
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Apr 2022 18:26:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650392777; x=1681928777;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jwUEf18zbtQsKWlvFIbYszHbgb9v0L4slRdqtN7rT5s=;
 b=bggA65v4qBU0Rvy/NOSLkCE6mShWlHC9En14psQgt8Oan86DXq/293q1
 2kbFbB6Tr2Hv0tzT3wesIcue96HXuWsIC0083S026YDjJdf8nWSvfbyd3
 pnNHNqbSCkFRqzCM0W7nl0xBxNbnDP/0m571KvYP18wHRybwP13OcRgu1
 9sRYTkpD6lzLb5z8NGTJpjGMw4goTIOmWL51e1WEWQKfYInrWzeb3n0oV
 up6IRPGjt9nqmI3L5Vyxv24fsnb70oB2+Jx52neCWDzQvP4UnfnNscVMH
 Fo0GiXy/Je7hmMC/6bxlhY/3zaECDlJBusluTSN4OJMA382pmB0Sje/tW A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10322"; a="263599408"
X-IronPort-AV: E=Sophos;i="5.90,273,1643702400"; d="scan'208";a="263599408"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2022 11:26:17 -0700
X-IronPort-AV: E=Sophos;i="5.90,273,1643702400"; d="scan'208";a="554845108"
Received: from josouza-mobl2.fso.intel.com ([10.230.18.139])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2022 11:26:16 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Apr 2022 11:27:53 -0700
Message-Id: <20220419182753.364237-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20220419182753.364237-1-jose.souza@intel.com>
References: <20220419182753.364237-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915/dg2: Add workaround 18019627453
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

A new DG2 workaround added to fix some corner cases hangs.

v2:
- implementing the second and preferred option for this workaround

BSpec: 54077
BSpec: 68173
BSpec: 71488
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 29c8cd0a81b6f..a05c4b99b3fbc 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2194,11 +2194,15 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 		 */
 		wa_write_or(wal, GEN7_FF_THREAD_MODE,
 			    GEN12_FF_TESSELATION_DOP_GATE_DISABLE);
+	}
 
+	if (IS_ALDERLAKE_P(i915) || IS_DG2(i915) || IS_ALDERLAKE_S(i915) ||
+	    IS_DG1(i915) || IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
 		/*
 		 * Wa_1606700617:tgl,dg1,adl-p
 		 * Wa_22010271021:tgl,rkl,dg1,adl-s,adl-p
 		 * Wa_14010826681:tgl,dg1,rkl,adl-p
+		 * Wa_18019627453:dg2
 		 */
 		wa_masked_en(wal,
 			     GEN9_CS_DEBUG_MODE1,
-- 
2.35.3

