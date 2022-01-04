Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 190E9484711
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jan 2022 18:40:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3ABCB8905E;
	Tue,  4 Jan 2022 17:40:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0770489057
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jan 2022 17:40:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641318005; x=1672854005;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ht6IxEGbRqsB3YKADa7g2uDJGWMgDaf0x4y0PPVPjDo=;
 b=VEsMh6w37+z4GCamaUAqhxCJKCeIKl3mNV+Q/ClQxT0Rno8QG/XDD/N6
 PtlukiZR46fRIJrFvTzAuolreOr4Pnt/VoIivnhp0laA5m2ByyqdNb06o
 0Y3gB/AnRAzwvMkD36U9pCaXQFMhCEWpBUEwBtWJzBy7VshWXbNxGZhvn
 hpywy+A4VCWiYsTjtVjVyK58HL5iiyC+iqFjlIVFlezF1kEJcmW8xMLYm
 PC/OisTDUFge7Mtg4vGoz5Xc0aB3/kGolJ4SLFs2qzZeRL46hHDBSzCv5
 kUU0C/eBmiomSOSC3dj9ODTVGktfp8dWrBc8RPaEuGFhXKk6xdbYOlrre w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10216"; a="242063591"
X-IronPort-AV: E=Sophos;i="5.88,261,1635231600"; d="scan'208";a="242063591"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2022 09:40:04 -0800
X-IronPort-AV: E=Sophos;i="5.88,261,1635231600"; d="scan'208";a="620724138"
Received: from gtobin-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.11.253])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2022 09:40:02 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Jan 2022 19:39:45 +0200
Message-Id: <a16a25e3c5fa4ed0a927f77ed736424241dbc001.1641317930.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1641317930.git.jani.nikula@intel.com>
References: <cover.1641317930.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/7] drm/i915/mst: fix intel_dp_mst_hpd_irq()
 indentation
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Remove extra indentation.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index d6d8c9922feb..357c39e09bf6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3617,12 +3617,12 @@ static void intel_dp_handle_test_request(struct intel_dp *intel_dp)
 static void
 intel_dp_mst_hpd_irq(struct intel_dp *intel_dp, u8 *esi, bool *handled)
 {
-		drm_dp_mst_hpd_irq(&intel_dp->mst_mgr, esi, handled);
+	drm_dp_mst_hpd_irq(&intel_dp->mst_mgr, esi, handled);
 
-		if (esi[1] & DP_CP_IRQ) {
-			intel_hdcp_handle_cp_irq(intel_dp->attached_connector);
-			*handled = true;
-		}
+	if (esi[1] & DP_CP_IRQ) {
+		intel_hdcp_handle_cp_irq(intel_dp->attached_connector);
+		*handled = true;
+	}
 }
 
 /**
-- 
2.30.2

