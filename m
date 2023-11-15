Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1EF17EC1DB
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Nov 2023 13:10:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84A7910E070;
	Wed, 15 Nov 2023 12:10:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE60010E070
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Nov 2023 12:10:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700050242; x=1731586242;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:to:cc;
 bh=LBBfLDybeHIN5H+i52UpTbfe5at+EcjMK/eGVEQgqLg=;
 b=czCC7G1zeML1CmJEhOIrjckkyrMsc+Z2OjfSsUmdoUdRLrFeNHelSv7X
 LB5l5+PPJE+u55o3HAAUlP/a8DASnQNrfskcSEsZQLpCcn4Cpi+Wl5ktC
 aNDpfWszFflJkwaYKElEZYHJRn2JjkOmMiznA6vUzAl+U5PnNodr9Yr9t
 jKDaISGcp9ck9/jXuzXqtlHdpgEh7Z8I9PU4YlQrgWdR8hbSiBNTNT59w
 8/4bXUpxe8WrM8e7V7eb4Iyl+NoezH5YlJ0SvazFAi6cSJQr8csWyrT4C
 Ta1bTloQqJYmF3HQsxWthY+xP1l+/y6z7r2aXT9dNtq5ib1s33g6OW+3w Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="370210046"
X-IronPort-AV: E=Sophos;i="6.03,304,1694761200"; d="scan'208";a="370210046"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 04:10:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="855624292"
X-IronPort-AV: E=Sophos;i="6.03,304,1694761200"; d="scan'208";a="855624292"
Received: from lab-ah.igk.intel.com ([10.102.138.202])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 04:10:40 -0800
From: Andrzej Hajda <andrzej.hajda@intel.com>
Date: Wed, 15 Nov 2023 13:10:33 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231115-eols-v1-1-d47a2f52b807@intel.com>
X-B4-Tracking: v=1; b=H4sIADi1VGUC/x3MQQqDMBCF4avIrDvUJAi1VyldxDipAxrDjIog3
 t3Y5Qf/ewcoCZPCuzpAaGPlORWYRwVh8OlHyH0x2No6Y0yDNI+Kto5tbGyIzr2gpFko8v6/+Xy
 LO6+EnfgUhnu8Zl2E/PTsZcKFM5znBQqe32d5AAAA
To: intel-gfx@lists.freedesktop.org
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1026;
 i=andrzej.hajda@intel.com; h=from:subject:message-id;
 bh=LBBfLDybeHIN5H+i52UpTbfe5at+EcjMK/eGVEQgqLg=;
 b=owEB7QES/pANAwAKASNispPeEP3XAcsmYgBlVLVAU3LWUSeISadENZPz310GyoAxGNl4vm8EXLp8
 9K1wsLiJAbMEAAEKAB0WIQT8qEQxNN2/XeF/A00jYrKT3hD91wUCZVS1QAAKCRAjYrKT3hD911obC/
 9YmSAgiwAs0VqhLyqwd1I8OBy4uf9hyU3WUKhe1CI07kgkbKxQNycS5Ox20QwY2nBN4X3PMOEUDiYO
 tNhZ9VemEoJAVMx60pIGiLBAqY1Ayfvgpe/+juRZ6yzHWaur8CJWfK03ZD8mMwrsp/Zk3biq9tXxpG
 IzxC7M71+lcTHTJjAUkZG3KyHjlS7sf2MOQcO+T6/0xFT2xmjjshvcFfvw9uzisWHNyGzsrukq4Lut
 D2MKIaZT/poayweXuPcX0TZhrN4wU+eRxQBH4mkdffyTy8tHMrskUZ3vnXazDgRAJzC2bzJJaoQGww
 7Aa281hV6NGTbe8qsOnbe5m3hLmkup7ftOyRRNdZkWNcVbhLQIoD57H7BRy4geL6uYltN7P5OWFp/u
 lvj87krT4BMOPaQqvReIclsYO+lgZoNaKCl7S3ECKMc19bZ1j9lqGxZo1H4mDEIdHPPRY4YY7bvmot
 y0uujkkAMnDWsZtLPw5OGyS+ffDtmboRCi32dqx/YDmcI=
X-Developer-Key: i=andrzej.hajda@intel.com; a=openpgp;
 fpr=FCA8443134DDBF5DE17F034D2362B293DE10FDD7
Subject: [Intel-gfx] [PATCH] drm/i915/gt: add missing new-line to GT_TRACE
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Trace requires new-line at the end of message (in opposition to printk),
otherwise trace dump becomes messy.

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_pm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index f5899d503e234b..471b7cdc10ba0f 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -167,7 +167,7 @@ static void gt_sanitize(struct intel_gt *gt, bool force)
 	enum intel_engine_id id;
 	intel_wakeref_t wakeref;
 
-	GT_TRACE(gt, "force:%s", str_yes_no(force));
+	GT_TRACE(gt, "force:%s\n", str_yes_no(force));
 
 	/* Use a raw wakeref to avoid calling intel_display_power_get early */
 	wakeref = intel_runtime_pm_get(gt->uncore->rpm);

---
base-commit: 1489bab52c281a869295414031a56506a375b036
change-id: 20231115-eols-20f9f52cf338

Best regards,
-- 
Andrzej Hajda <andrzej.hajda@intel.com>

