Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D492603606
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 00:37:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 902F810F03D;
	Tue, 18 Oct 2022 22:37:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2246810F03D
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Oct 2022 22:37:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666132629; x=1697668629;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=CZSFrJdR5WQWV4kIfwWVPzi99EJdBto1wxq7x7IOHx8=;
 b=fGPnxM9k1wnMUT6g1r8R9nVbyky5Xjp55bQq6g3n6rwoZBd1NYQquMSr
 S9egbN4prGM/6B7rVEIDJ0V5ZyBAyW1tqw1tdB7tcWkZhiLHGaU7ez/Jg
 W0eHOem1vTNd2PYbX05eQWrxseFyb5wz0tG7bh7nIRNdyA56BlUcbVJtn
 pCgoIESnFnmI9eeG+C81DOuwnztHKeYG64LhN0p6odnLz2UgXK+oGrHC6
 n5xlolBz+5QBRiGJs3Nh2ZtCuCUL/i6Z0m8+w3bv/eqq+PM6eB68ANzwT
 UmPBlJvFoAN3xqA/7PF3jvgrv8nz4UYaZD7hpUKGKYDg/DPufPegvmifA A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="304986532"
X-IronPort-AV: E=Sophos;i="5.95,194,1661842800"; d="scan'208";a="304986532"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2022 15:36:52 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="803986514"
X-IronPort-AV: E=Sophos;i="5.95,194,1661842800"; d="scan'208";a="803986514"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2022 15:36:51 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>
Date: Tue, 18 Oct 2022 22:36:34 +0000
Message-Id: <20221018223648.5244-3-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221018223648.5244-1-umesh.nerlige.ramappa@intel.com>
References: <20221018223648.5244-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 02/16] drm/i915/perf: Add 32-bit OAG and OAR
 formats for DG2
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

Add new OA formats for DG2.

MR: https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/18893

v2:
- Update commit title (Ashutosh)
- Coding style fixes (Lionel)
- 64 bit OA formats need UMD changes in GPUvis, drop for now and send in a
  separate series with UMD changes

v3:
- Update commit message to drop 64 bit related description

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com> #1
---
 drivers/gpu/drm/i915/i915_perf.c | 7 +++++++
 include/uapi/drm/i915_drm.h      | 4 ++++
 2 files changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 255335868b6a..2b772a6b1cd6 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -320,6 +320,8 @@ static const struct i915_oa_format oa_formats[I915_OA_FORMAT_MAX] = {
 	[I915_OA_FORMAT_A12]		    = { 0, 64 },
 	[I915_OA_FORMAT_A12_B8_C8]	    = { 2, 128 },
 	[I915_OA_FORMAT_A32u40_A4u32_B8_C8] = { 5, 256 },
+	[I915_OAR_FORMAT_A32u40_A4u32_B8_C8]    = { 5, 256 },
+	[I915_OA_FORMAT_A24u40_A14u32_B8_C8]    = { 5, 256 },
 };
 
 #define SAMPLE_OA_REPORT      (1<<0)
@@ -4515,6 +4517,11 @@ static void oa_init_supported_formats(struct i915_perf *perf)
 		oa_format_add(perf, I915_OA_FORMAT_C4_B8);
 		break;
 
+	case INTEL_DG2:
+		oa_format_add(perf, I915_OAR_FORMAT_A32u40_A4u32_B8_C8);
+		oa_format_add(perf, I915_OA_FORMAT_A24u40_A14u32_B8_C8);
+		break;
+
 	default:
 		MISSING_CASE(platform);
 	}
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index 2e613109356b..158b35fb28f3 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -2666,6 +2666,10 @@ enum drm_i915_oa_format {
 	I915_OA_FORMAT_A12_B8_C8,
 	I915_OA_FORMAT_A32u40_A4u32_B8_C8,
 
+	/* DG2 */
+	I915_OAR_FORMAT_A32u40_A4u32_B8_C8,
+	I915_OA_FORMAT_A24u40_A14u32_B8_C8,
+
 	I915_OA_FORMAT_MAX	    /* non-ABI */
 };
 
-- 
2.25.1

