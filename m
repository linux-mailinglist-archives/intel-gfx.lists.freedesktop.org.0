Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A63E69EF68
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Feb 2023 08:35:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A69A310E3EB;
	Wed, 22 Feb 2023 07:35:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63E6010E427
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Feb 2023 07:35:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677051352; x=1708587352;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Ao6o1pwZXecadDXivNPJcXnVX79P9Sr+18Rsgg0J9pM=;
 b=b5osVOBsO4/A80zdiAvIVaXfCXOHNKkUrYQ1sIC1MDIeYuc3aeUxJi3F
 kwvpWEENPXr2XGIsPExQfdjpe7qiZFb/HVmLYWiq264PwqQPAdRjYsCg/
 pbLCacF6kKMRdMoUO6soUuKSFWCMEnKRZXUuyazoNLlONacoLU66aoAQB
 R8kG1A27Fu8sy7LQqRHu5y1CZQWNes3Pd2s0bIAZROh/TgMeSzObWH0td
 bzgIxGbM0rWDrQJYoMQhyftrJFKW/c7+ba1Vvz6NE2T5fCrJoRl22ISig
 qr5+SrF4jNpXR0PtUdIp1I6hXcw2BGqNioX5ArUlZKcpPwGxpD7vol45Q w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="397544108"
X-IronPort-AV: E=Sophos;i="5.97,318,1669104000"; d="scan'208";a="397544108"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 23:35:50 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="795811232"
X-IronPort-AV: E=Sophos;i="5.97,318,1669104000"; d="scan'208";a="795811232"
Received: from invictus.jf.intel.com ([10.165.21.134])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 23:35:50 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Feb 2023 23:35:04 -0800
Message-Id: <20230222073507.788705-7-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230222073507.788705-1-radhakrishna.sripada@intel.com>
References: <20230222073507.788705-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 6/9] drm/i915/mtl: Drop FLAT CCS check
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

From: Pallavi Mishra <pallavi.mishra@intel.com>

Remove FLAT CCS check from XY_FAST_COLOR_BLT usage, thus
enabling MTL to use it.

Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Pallavi Mishra <pallavi.mishra@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_migrate.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_migrate.c b/drivers/gpu/drm/i915/gt/intel_migrate.c
index 3f638f198796..e0998879a0e1 100644
--- a/drivers/gpu/drm/i915/gt/intel_migrate.c
+++ b/drivers/gpu/drm/i915/gt/intel_migrate.c
@@ -920,7 +920,7 @@ static int emit_clear(struct i915_request *rq, u32 offset, int size,
 
 	GEM_BUG_ON(size >> PAGE_SHIFT > S16_MAX);
 
-	if (HAS_FLAT_CCS(i915) && ver >= 12)
+	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50))
 		ring_sz = XY_FAST_COLOR_BLT_DW;
 	else if (ver >= 8)
 		ring_sz = 8;
@@ -931,7 +931,7 @@ static int emit_clear(struct i915_request *rq, u32 offset, int size,
 	if (IS_ERR(cs))
 		return PTR_ERR(cs);
 
-	if (HAS_FLAT_CCS(i915) && ver >= 12) {
+	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50)) {
 		*cs++ = XY_FAST_COLOR_BLT_CMD | XY_FAST_COLOR_BLT_DEPTH_32 |
 			(XY_FAST_COLOR_BLT_DW - 2);
 		*cs++ = FIELD_PREP(XY_FAST_COLOR_BLT_MOCS_MASK, mocs) |
-- 
2.34.1

