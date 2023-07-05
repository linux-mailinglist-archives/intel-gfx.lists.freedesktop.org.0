Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A3B65747C4B
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jul 2023 07:16:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7809A10E1BB;
	Wed,  5 Jul 2023 05:16:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEE6010E13D
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jul 2023 05:16:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688534197; x=1720070197;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UenZODvOlFMCBgd6gUmhtN3eTHqxwyTx7jTAxEK/bxU=;
 b=KxL1L2nbTodRH2DYDpSGmY0t4BgvY1p5+BvyrvDdxauy51EvwNS/owRJ
 IXtlEqHwH5pIHYweaphQUTT/+Xk1sADQJ4EJ8a6YsU62ZvRso/+jjemFH
 VmbhtBPk1cjNL6bwJOF8F1btMTkItpG6+rsMr0VWbP2S1sOjhONEdQaEd
 i4LqN1Cq1qxMnfJL1RxIG5XVFiKeV7RHUMemYcrHiivtD7IrWvo2AhRra
 ScVPZ4E1x5ezlX6SoYzSIVh7jyrQ83x9El7HybguaO+lA/B/S5fZEvqEp
 uXoocYtkQUxSM6LgINiCjB/JOzaOhpsecoJXmA6XAL1Agcpqmf+etNk6w w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10761"; a="365818006"
X-IronPort-AV: E=Sophos;i="6.01,182,1684825200"; d="scan'208";a="365818006"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2023 22:16:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10761"; a="722257918"
X-IronPort-AV: E=Sophos;i="6.01,182,1684825200"; d="scan'208";a="722257918"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga007.fm.intel.com with ESMTP; 04 Jul 2023 22:16:35 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Jul 2023 10:45:01 +0530
Message-Id: <20230705051502.2568245-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230705051502.2568245-1-suraj.kandpal@intel.com>
References: <20230705051502.2568245-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 2/3] drm/i915/drm: Fix comment for YCbCr20 qp
 table declaration
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

Fix comment for YCbCr420 qp table declaration of max value
where the min value is 4 and the max value is 12/15/18
depending on bpc.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_qp_tables.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_qp_tables.c b/drivers/gpu/drm/i915/display/intel_qp_tables.c
index 6e86c0971d24..543cdc46aa1d 100644
--- a/drivers/gpu/drm/i915/display/intel_qp_tables.c
+++ b/drivers/gpu/drm/i915/display/intel_qp_tables.c
@@ -17,13 +17,17 @@
 /* from BPP 6 to 36 in steps of 0.5 */
 #define RC_RANGE_QP444_12BPC_MAX_NUM_BPP	61
 
-/* from BPP 6 to 24 in steps of 0.5 */
+/* For YCbCr420 the bits_per_pixel sent in PPS params
+ * is double the target bpp. The below values represent
+ * the target bpp.
+ */
+/* from BPP 4 to 12 in steps of 0.5 */
 #define RC_RANGE_QP420_8BPC_MAX_NUM_BPP		17
 
-/* from BPP 6 to 30 in steps of 0.5 */
+/* from BPP 4 to 15 in steps of 0.5 */
 #define RC_RANGE_QP420_10BPC_MAX_NUM_BPP	23
 
-/* from BPP 6 to 36 in steps of 0.5 */
+/* from BPP 4 to 18 in steps of 0.5 */
 #define RC_RANGE_QP420_12BPC_MAX_NUM_BPP	29
 
 /*
-- 
2.25.1

