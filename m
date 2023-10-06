Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F0A87BBEB9
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 20:31:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA97210E559;
	Fri,  6 Oct 2023 18:31:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E028B10E554
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Oct 2023 18:31:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696617094; x=1728153094;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=M1Czg5f0AUD6s8LQvrfBEq1VZw35aoj8/qlkdkheOLU=;
 b=kS10nW5TL5rjV6nXHL0UJZaWoQdVOI4f4w//M5X0uEbJezvQpOUghNO4
 nXjTZyrMRdcGOiXsF5V+AQh3c5kdS40o2zwUjCkTSheUYECCcxE5Uxejj
 1xKeVFW8DotXNQ1HIxQ0eR5jNd6GfnKEQOLX5T6zATK8wBCvFrjWMhWXq
 iylUw1llVkE7hkvRh5GhSfo0ZogXiL6WZKiJx/mcPRYeYeHgtJltnM8DB
 mwPo13Sfi7r76OTDRwKTARLHF3ILsqqnUK7M0bDaEmd7XndV/izzxOeek
 dtJcwtVMF2qjrebB8jETj18BUxXn2y8IKl1OZAwqXJpViTl2Yhmu0WC4C w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="387688165"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="387688165"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 11:31:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="745950579"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="745950579"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 11:31:33 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Oct 2023 11:20:46 -0700
Message-Id: <20231006182051.1599923-3-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231006182051.1599923-1-jonathan.cavitt@intel.com>
References: <20231006182051.1599923-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v8 2/7] drm/i915/guc: Add CT size delay helper
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
Cc: janusz.krzysztofik@intel.com, andi.shyti@intel.com,
 matthew.d.roper@intel.com, jonathan.cavitt@intel.com,
 chris.p.wilson@linux.intel.com, nirmoy.das@intel.com
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

