Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC62730B8F6
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Feb 2021 08:54:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1D3F6E0E1;
	Tue,  2 Feb 2021 07:54:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F95C6E0E1
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Feb 2021 07:54:25 +0000 (UTC)
IronPort-SDR: 9aJdz3VOEAWsYi1uRWoym5BOowZOu3CQzPXtxVqdHZ0KXSFdr49lyss/v+goBgzndnryZs8LRk
 /BKqmA3D6FZQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9882"; a="167920409"
X-IronPort-AV: E=Sophos;i="5.79,394,1602572400"; d="scan'208";a="167920409"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 23:54:24 -0800
IronPort-SDR: HixWjT1FxpRjrmWxjW3evJZFQbUjZnvmDpsehpGelLZFas5PBgba6nbuRDd/0ue/+UyzAxawiC
 SKJpJO567yVw==
X-IronPort-AV: E=Sophos;i="5.79,394,1602572400"; d="scan'208";a="371858811"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 23:54:24 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Feb 2021 23:54:17 -0800
Message-Id: <20210202075417.28230-3-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210202075417.28230-1-umesh.nerlige.ramappa@intel.com>
References: <20210202075417.28230-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] i915/perf: Add additional OA formats for
 gen12
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

Gen12 supports additional OA formats as compared to what was added
earlier. Include the additional OA formats.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 81300cd534aa..817cfafea264 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -4293,17 +4293,14 @@ static void oa_init_supported_formats(struct i915_perf *perf)
 	case INTEL_ICELAKE:
 	case INTEL_ELKHARTLAKE:
 	case INTEL_JASPERLAKE:
-		oa_format_add(perf, I915_OA_FORMAT_A12);
-		oa_format_add(perf, I915_OA_FORMAT_A12_B8_C8);
-		oa_format_add(perf, I915_OA_FORMAT_A32u40_A4u32_B8_C8);
-		oa_format_add(perf, I915_OA_FORMAT_C4_B8);
-		break;
-
 	case INTEL_TIGERLAKE:
 	case INTEL_ROCKETLAKE:
 	case INTEL_DG1:
 	case INTEL_ALDERLAKE_S:
+		oa_format_add(perf, I915_OA_FORMAT_A12);
+		oa_format_add(perf, I915_OA_FORMAT_A12_B8_C8);
 		oa_format_add(perf, I915_OA_FORMAT_A32u40_A4u32_B8_C8);
+		oa_format_add(perf, I915_OA_FORMAT_C4_B8);
 		break;
 
 	default:
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
