Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D2467D8870
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Oct 2023 20:36:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C545910E857;
	Thu, 26 Oct 2023 18:36:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57E2010E854
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Oct 2023 18:36:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698345406; x=1729881406;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=MaIIC5+jLotuZfswE6jbxOhim++eaDpNW2KNVSpJeug=;
 b=cmgP64NiNyXI40Iwk0drC8xkxgHAbMoN0Waietss+G/6Q2Dg86rOgzV1
 1fN32Ykh4K23vFCBsehOey88FsdEXQeEOzjQxFvfZ1Q4TZK9GkvEoo/IN
 Jqw38lOUweu1uG5f17kVOZK3R1kLO4PuzizpUK3MTnK9LpqqzgZBaYQhi
 FyJn+QT7AClUDcifmVNX5hs9sJ9I+P6nELnUZuRJ/UoQoiYgFBEDArkpE
 ysGsGNdCqQErqu21xYcM3yAagZpgazfYKqCPytn5YAvF5dutaate/zoE6
 vkLgfNti+HaYp4AzEPG75AbS2rvxXjvKDhFQw3L6tt2oxgNIFuh3DuFUP A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="391497780"
X-IronPort-AV: E=Sophos;i="6.03,254,1694761200"; d="scan'208";a="391497780"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 11:36:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="762941937"
X-IronPort-AV: E=Sophos;i="6.03,254,1694761200"; d="scan'208";a="762941937"
Received: from lab-ah.igk.intel.com ([10.102.138.202])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 11:36:44 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
Date: Thu, 26 Oct 2023 20:36:29 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231026-wabb-v6-4-4aa7d55d0a8a@intel.com>
References: <20231026-wabb-v6-0-4aa7d55d0a8a@intel.com>
In-Reply-To: <20231026-wabb-v6-0-4aa7d55d0a8a@intel.com>
To: intel-gfx@lists.freedesktop.org
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1937;
 i=andrzej.hajda@intel.com; h=from:subject:message-id;
 bh=9gE7Hw27KBcB9MG25aFN/4oXxak8vUVcOmAtGhnJbio=;
 b=owEB7QES/pANAwAKASNispPeEP3XAcsmYgBlOrG0j4eM+ZP9dk58b9OdlZtixanDFO30HDqARQE9
 zMFPPsyJAbMEAAEKAB0WIQT8qEQxNN2/XeF/A00jYrKT3hD91wUCZTqxtAAKCRAjYrKT3hD91zOeC/
 99WFrhLkmZKuOEvSzRyuiWplOOyrzhaGilSsvU03Qy8tHQzmObo+MGp6JblsqvdlZjgaXB7z1TZSCy
 /2YL16NFLH+uMWA9WMJvOuKHlYY2v25dNgjqOUbkvoMPAHH4HfVzQ6xXNqtkosRXHK2NjpA0xNxMmH
 rYPhlr+rmBir1JtUyxUeUtFK8oxTlcKp7ZIpQwioxT0swI53C5SAYCn6qWB5jk7D8PzaaxTdMKnqf1
 TOo2ZvnsqFY+ik3yNQr1WVVEvy/fkX89PFu2PCiGnBaJCwmaTq34XMSgE8ox8qStXsCvbXdVvL/jr1
 /oazwUHqRC/v+7SkCGfaNbLXqvEEbqn4kT6lQKb/FUx5+1GyiRIlfyReQJ2qiK7k9EgyUCWrgD+qI9
 nRzvQUMh19SZ1xYEc/VvVWcTwwKeahXE79y0oBkiHRDgvE0DUhjBtXI/78w3vYIEDQ6PifG8OKlFlD
 0Ak0jDE9DJu9Gy5z1/WOg7VLxdV//5NIofuj7qc/wX9xY=
X-Developer-Key: i=andrzej.hajda@intel.com; a=openpgp;
 fpr=FCA8443134DDBF5DE17F034D2362B293DE10FDD7
Subject: [Intel-gfx] [PATCH v6 4/4] drm/i915: Set copy engine arbitration
 for Wa_16018031267 / Wa_16018063123
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
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 20231026-gtt_size_fix-v1-2-882d0e0022ec@intel.com,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Jonathan Cavitt <jonathan.cavitt@intel.com>

Set copy engine arbitration into round robin mode
for part of Wa_16018031267 / Wa_16018063123 mitigation.

Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_regs.h | 3 +++
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 +++++
 2 files changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_regs.h b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
index b8618ee3e3041a..c0c8c12edea104 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
@@ -124,6 +124,9 @@
 #define RING_INDIRECT_CTX(base)			_MMIO((base) + 0x1c4) /* gen8+ */
 #define RING_INDIRECT_CTX_OFFSET(base)		_MMIO((base) + 0x1c8) /* gen8+ */
 #define ECOSKPD(base)				_MMIO((base) + 0x1d0)
+#define   XEHP_BLITTER_SCHEDULING_MODE_MASK	REG_GENMASK(12, 11)
+#define   XEHP_BLITTER_ROUND_ROBIN_MODE		\
+		REG_FIELD_PREP(XEHP_BLITTER_SCHEDULING_MODE_MASK, 1)
 #define   ECO_CONSTANT_BUFFER_SR_DISABLE	REG_BIT(4)
 #define   ECO_GATING_CX_ONLY			REG_BIT(3)
 #define   GEN6_BLITTER_FBC_NOTIFY		REG_BIT(3)
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 192ac0e59afa13..108d9326735910 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2782,6 +2782,11 @@ xcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 			 RING_SEMA_WAIT_POLL(engine->mmio_base),
 			 1);
 	}
+	/* Wa_16018031267, Wa_16018063123 */
+	if (NEEDS_FASTCOLOR_BLT_WABB(engine))
+		wa_masked_field_set(wal, ECOSKPD(engine->mmio_base),
+				    XEHP_BLITTER_SCHEDULING_MODE_MASK,
+				    XEHP_BLITTER_ROUND_ROBIN_MODE);
 }
 
 static void

-- 
2.34.1

