Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37B57338098
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 23:37:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDAF06EEB0;
	Thu, 11 Mar 2021 22:36:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B42FD6EEA9
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 22:36:50 +0000 (UTC)
IronPort-SDR: AeDDM9UO0rtQZq+/+4eruJvOXkJpTDEBqUASwFvZJPSDyl1yFt598rUlfvH/qQVwYRCN5LgrE1
 1qDLzw3wAhPQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="250116464"
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="250116464"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 14:36:48 -0800
IronPort-SDR: IMDUdswiblHvwFs8vPsUSlS5S58j3GqkmBjsOevW5FNGmF/kWvVIHpaslNYDV0k3SXwnG8YEnZ
 SjaDD0VbiAVw==
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="438852812"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 14:36:46 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Mar 2021 14:36:31 -0800
Message-Id: <20210311223632.3191939-56-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210311223632.3191939-1-matthew.d.roper@intel.com>
References: <20210311223632.3191939-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 55/56] drm/i915/perf: Enable OA formats for ADL_P
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Enable relevant OA formats for ADL_P.

Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Signed-off-by: Clinton Taylor <Clinton.A.Taylor@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index c15bead2dac7..e52b54ff0999 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -4291,6 +4291,7 @@ static void oa_init_supported_formats(struct i915_perf *perf)
 	case INTEL_ROCKETLAKE:
 	case INTEL_DG1:
 	case INTEL_ALDERLAKE_S:
+	case INTEL_ALDERLAKE_P:
 		oa_format_add(perf, I915_OA_FORMAT_A12);
 		oa_format_add(perf, I915_OA_FORMAT_A12_B8_C8);
 		oa_format_add(perf, I915_OA_FORMAT_A32u40_A4u32_B8_C8);
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
