Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EED505E82FC
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Sep 2022 22:12:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82C5E10E94C;
	Fri, 23 Sep 2022 20:12:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C20110E8D2
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Sep 2022 20:12:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663963924; x=1695499924;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=SQle5IW85Ahla/HmEBldRHb1l6AQcthBj6j+01gHeTc=;
 b=ipTtyI/QrU5ZQukeVvg0oPT2Q3xs5en7LcmtcNPHfO+72CgVFxzc6rbI
 sOseqEfcr/qlCOTGq4RRC+fXBhpRmGHKq0PNS7BhYoZ+N9OjljpoCCcDC
 EYQI06oTJnBppg5vz5bd93KU91N+3Cbb3+SRkgV4DaOetOxqir0Fs7Kxo
 lcZNGIY1gGDKwPpT/d0bXIdt3dfK2wQPddoZzyJ/aCBbr9UyvMXlTqMds
 kX0LVeCig6V+aPpfYZQQ259ozljH/GiRfV2sr4KxPkFsQbqNx6UE+XbUh
 hdvhqzkQ1t7bw6oLb+hm/Uowh/Oiuia5PkCcLJ9BnGB+YjEAw+EmM8gVQ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10479"; a="287807863"
X-IronPort-AV: E=Sophos;i="5.93,340,1654585200"; d="scan'208";a="287807863"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 13:12:03 -0700
X-IronPort-AV: E=Sophos;i="5.93,340,1654585200"; d="scan'208";a="762747276"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 13:12:02 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Date: Fri, 23 Sep 2022 20:11:41 +0000
Message-Id: <20220923201154.283784-3-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220923201154.283784-1-umesh.nerlige.ramappa@intel.com>
References: <20220923201154.283784-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 02/15] drm/i915/perf: Add OAG and OAR formats
 for DG2
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

Add new OA formats for DG2. Some of the newer OA formats are not
multples of 64 bytes and are not powers of 2. For those formats, adjust
hw_tail accordingly when checking for new reports.

v2:
- Update commit title (Ashutosh)
- Coding style fixes (Lionel)
- 64 bit OA formats need UMD changes in GPUvis, drop for now and send in a
  separate series with UMD changes

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com> #1
Acked-by: Ashutosh Dixit <ashutosh.dixit@intel.com> #1
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

