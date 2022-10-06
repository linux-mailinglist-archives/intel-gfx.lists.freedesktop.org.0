Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E5C25F6BD0
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Oct 2022 18:32:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16E6B10E83A;
	Thu,  6 Oct 2022 16:32:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6123210E470
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Oct 2022 16:32:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665073946; x=1696609946;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=airQxXOzYkAEpaTms0eMfKt2aTx2hg4bNjoJzJR4jWc=;
 b=fcjaqVYfG20W/jyCQWLLZTB6P5ktX8dat93HfXSM6ck2aBDtNL0PbNfD
 cvfl5vh+KD20b9QhrDzjXz046X62SG49hk5vej1aTCaKxjMzk1DEmn/lH
 deXSLKyJDnT0HszCMIGybE/Z81IUNQ1QbwgNX1LkaLoeKgRXegPbyfQNl
 fpISPiEsFhO7AABPVDud9oYpaoLjMhmk8276H9HTS3t2TWNfRmOx8MCKw
 ZvHdH1O/tDNQ8m4xqIwhDzzEA6y9wmsMo48qFq/7WpiZC90n0CNcMQIdy
 7vidqHzckHwEyhqLb/2d2pO6t1ZgQ7vGtssl0hY8fupYudIEjQvJsLFLd Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="303473884"
X-IronPort-AV: E=Sophos;i="5.95,164,1661842800"; d="scan'208";a="303473884"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2022 09:32:26 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="799951473"
X-IronPort-AV: E=Sophos;i="5.95,164,1661842800"; d="scan'208";a="799951473"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2022 09:32:23 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  6 Oct 2022 18:31:59 +0200
Message-Id: <20221006163200.2803722-4-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221006163200.2803722-1-andrzej.hajda@intel.com>
References: <20221006163200.2803722-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/4] drm/i915: make intel_uncore_rmw() write
 unconditionally
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Two small changes in intel_uncore_rmw will allow to use it more broadly:
- write register unconditionally, for use with latch registers,
- return old value of the register, IRQ cleanup and similar.

If we really want to keep write-only-if-changed feature maybe other
helper will be more suitable for it, intel_uncore_rmw name suggests
unconditional write.

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
Acked-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/intel_uncore.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/intel_uncore.h
index 7e1b3b89f68959..5449146a06247c 100644
--- a/drivers/gpu/drm/i915/intel_uncore.h
+++ b/drivers/gpu/drm/i915/intel_uncore.h
@@ -433,15 +433,15 @@ intel_uncore_read64_2x32(struct intel_uncore *uncore,
 #define intel_uncore_write64_fw(...) __raw_uncore_write64(__VA_ARGS__)
 #define intel_uncore_posting_read_fw(...) ((void)intel_uncore_read_fw(__VA_ARGS__))
 
-static inline void intel_uncore_rmw(struct intel_uncore *uncore,
-				    i915_reg_t reg, u32 clear, u32 set)
+static inline u32 intel_uncore_rmw(struct intel_uncore *uncore,
+				   i915_reg_t reg, u32 clear, u32 set)
 {
 	u32 old, val;
 
 	old = intel_uncore_read(uncore, reg);
 	val = (old & ~clear) | set;
-	if (val != old)
-		intel_uncore_write(uncore, reg, val);
+	intel_uncore_write(uncore, reg, val);
+	return old;
 }
 
 static inline void intel_uncore_rmw_fw(struct intel_uncore *uncore,
-- 
2.34.1

