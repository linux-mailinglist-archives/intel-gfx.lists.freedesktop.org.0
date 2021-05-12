Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B4DFD37B4E3
	for <lists+intel-gfx@lfdr.de>; Wed, 12 May 2021 06:22:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB1216EB48;
	Wed, 12 May 2021 04:22:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AE666E040
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 May 2021 04:21:54 +0000 (UTC)
IronPort-SDR: KMuzw7aDWZMfMifsE+iPP84+xiNcGo8akq2wiop6g2ObXyjQ1RJF4yeolCYQzqiIsuX3lcQjaW
 FY+PnZfI7Y7A==
X-IronPort-AV: E=McAfee;i="6200,9189,9981"; a="260869174"
X-IronPort-AV: E=Sophos;i="5.82,292,1613462400"; d="scan'208";a="260869174"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2021 21:21:53 -0700
IronPort-SDR: webN9rWDHmzgsT9B0UGA2aYoMf6mnxtuwp+WDhjjFwnplYHyWfL4Xm4PqvtjaoinnU8CdHIvr1
 ZVwJbgfujnYQ==
X-IronPort-AV: E=Sophos;i="5.82,292,1613462400"; d="scan'208";a="409096207"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2021 21:21:53 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 May 2021 21:21:44 -0700
Message-Id: <20210512042144.2089071-8-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210512042144.2089071-1-matthew.d.roper@intel.com>
References: <20210512042144.2089071-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 7/7] drm/i915/perf: Enable OA formats for ADL_P
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
Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 85ad62dbabfa..de8ebc34af0f 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -4318,6 +4318,7 @@ static void oa_init_supported_formats(struct i915_perf *perf)
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
