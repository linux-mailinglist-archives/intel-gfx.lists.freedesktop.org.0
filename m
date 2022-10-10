Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 399F95FA33C
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Oct 2022 20:15:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E937510E6B6;
	Mon, 10 Oct 2022 18:15:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3CCE10E6B7
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Oct 2022 18:14:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665425676; x=1696961676;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=3IfIxOh4GcOBD5vGbiszKHjIIdjvwslGkQu3O8+wGzQ=;
 b=HvMjGUdEoZrzEVnGwh+uhEjx3N/bs3AsFUVj+HusgxsLlsKA482jSiWU
 amLF0H2+epRxCUSRXfpUunQ0AyhJXUiXhfw2GipItOLBhO6ZcVHb95a3z
 L35gDx1snlUNltzICHfVmzjYY/gM7Feap/lWM5KwqBsxM4k0aeGxFbNFB
 TgWRhknlbklyiGkCnzhZFeeka9jAp5M2HbUUNtxf9ELLUj6GW28eH1Yn8
 JLOvD9wr8mNlob96hMFNpJReAnCnZ8BhD/I5XOgw1sHSjbDE1b4ZnsPvP
 bKEvoAhYP/i7HgrXQjqwaE5yCt6J4ejKJk3FCBocJo1In/A5daLclfJZV g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="301909903"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; d="scan'208";a="301909903"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 11:14:36 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="603820260"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; d="scan'208";a="603820260"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 11:14:35 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>
Date: Mon, 10 Oct 2022 18:14:20 +0000
Message-Id: <20221010181434.513477-3-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221010181434.513477-1-umesh.nerlige.ramappa@intel.com>
References: <20221010181434.513477-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 02/16] drm/i915/perf: Add 32-bit OAG and OAR
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
index 315662329be3..41e9f620ee31 100644
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
@@ -4517,6 +4519,11 @@ static void oa_init_supported_formats(struct i915_perf *perf)
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
index 520ad2691a99..8b59590e06d4 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -2650,6 +2650,10 @@ enum drm_i915_oa_format {
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

