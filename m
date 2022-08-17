Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E7565979BB
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Aug 2022 00:44:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13CED8B686;
	Wed, 17 Aug 2022 22:43:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB634AF005
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Aug 2022 22:43:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660776215; x=1692312215;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=pC6stzxX5sFmw5jRZ4YBWcV3Dx2qRscfF/Hrwl1u07g=;
 b=ju4cu6pPAjENUGJ4fVqz358mAhU1/q3jmuIP1Qwiaw8fJay0+tyzV+Rq
 CJX4K/J8Uy6tyyMDNjMxH47MWslS9hMoEp4tuEyMxXoNVwy5VZNO3Nogj
 KRrise9MS5H62okkeWr7rPLiJXVoLXvVVAfRmpbw7WL7rPzQdLK+rwpnE
 pvOeswMlu1oIsu1e03gRAZKGx8HjZ3VYvNSpTXeqD36VCt9p+qKMdneLB
 b6VYBB3tDrHQ4Q4tviLn0DietvqkK2CBtCBWOEPsKbDAl8RZ9Jf2GeRS6
 jKw9aVGb0Hl5YsyH3j4Btw+BK3XTjF57CIDgqAuYEKsn6OArLlR+oJR7l Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10442"; a="318633549"
X-IronPort-AV: E=Sophos;i="5.93,244,1654585200"; d="scan'208";a="318633549"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2022 15:43:33 -0700
X-IronPort-AV: E=Sophos;i="5.93,244,1654585200"; d="scan'208";a="583952520"
Received: from invictus.jf.intel.com ([10.165.21.205])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2022 15:43:33 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Aug 2022 15:43:04 -0700
Message-Id: <20220817224304.255767-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Skip Bit12 fw domain reset for gen12+
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

Bit12 of the Forcewake request register should not be cleared post
gen12. Do not touch this bit while clearing during fw domain reset.

Bspec: 52542

Signed-off-by: Sushma Venkatesh Reddy <sushma.venkatesh.reddy@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/intel_uncore.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index a852c471d1b3..c85e2b686c95 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -113,7 +113,10 @@ fw_domain_reset(const struct intel_uncore_forcewake_domain *d)
 	 * off in ICL+), so no waiting for acks
 	 */
 	/* WaRsClearFWBitsAtReset:bdw,skl */
-	fw_clear(d, 0xffff);
+	if (GRAPHICS_VER(d->uncore->i915) >= 12)
+		fw_clear(d, 0xefff);
+	else
+		fw_clear(d, 0xffff);
 }
 
 static inline void
-- 
2.25.1

