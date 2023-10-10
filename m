Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D5197C03D9
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 20:55:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C72A10E3BA;
	Tue, 10 Oct 2023 18:55:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70D8510E0D3
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 18:55:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696964107; x=1728500107;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=M1Czg5f0AUD6s8LQvrfBEq1VZw35aoj8/qlkdkheOLU=;
 b=Ka8xQo1mlPhkLU0e35uil853vaQY6O+s4iMd5j8kinXQx5h6WRNvc8M/
 FptwNcV4DBR+hlyXE3eWTyfhTie/Xg3/OUi7R2RhcOIj8wZr7EUU97nk5
 P+iR2lwSbURJdiAkx97YhBlJ/uYKRpOvy9S7eWz72zGSDqRAjImouhOIN
 SnVU++PvmHj1SQxW1p/sp6F7sXUx+n77LvE35RF8jCTdr5LcFBOy9fbHn
 Z86feht6p+KdSSlETkSCFgxhuR4dSPei6/Gz4TjMtkFoju4Pb/DrXkIqd
 f+6D/B3V2iHSNgFiYBEV+581A+QyoSGYWSQTiYXXQSTnSDihyrssidh3h g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="364776796"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="364776796"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 11:55:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="757234858"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="757234858"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 11:55:06 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Oct 2023 11:44:15 -0700
Message-Id: <20231010184423.2118908-5-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231010184423.2118908-1-jonathan.cavitt@intel.com>
References: <20231010184423.2118908-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH 02/10] drm/i915/guc: Add CT size delay helper
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
Cc: andi.shyti@intel.com, jonathan.cavitt@intel.com, saurabhg.gupta@intel.com,
 nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add a helper function to the GuC CT buffer that reports the expected
time to process all outstanding requests.  As of now, there is no
functionality to check number of requests in the buffer, so the helper
function just reports 2 seconds, or 1ms per request up to the maximum
number of requests the CT buffer can store.

Suggested-by: John Harrison <john.c.harrison@intel.com>
Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
index 58e42901ff498..36afc1ce9fabd 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
@@ -120,6 +120,19 @@ static inline bool intel_guc_ct_enabled(struct intel_guc_ct *ct)
 	return ct->enabled;
 }
 
+/*
+ * GuC has a timeout of 1ms for a TLB invalidation response from GAM.  On a
+ * timeout GuC drops the request and has no mechanism to notify the host about
+ * the timeout.  There is also no mechanism for determining the number of
+ * outstanding requests in the CT buffer.  Ergo, keep a larger timeout that accounts
+ * for this individual timeout and the max number of outstanding requests that
+ * can be queued in CT buffer.
+ */
+static inline long intel_guc_ct_expected_delay(struct intel_guc_ct *ct)
+{
+	return HZ * 2;
+}
+
 #define INTEL_GUC_CT_SEND_NB		BIT(31)
 #define INTEL_GUC_CT_SEND_G2H_DW_SHIFT	0
 #define INTEL_GUC_CT_SEND_G2H_DW_MASK	(0xff << INTEL_GUC_CT_SEND_G2H_DW_SHIFT)
-- 
2.25.1

