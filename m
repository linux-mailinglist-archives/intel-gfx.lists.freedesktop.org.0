Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A50AC63E6E3
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Dec 2022 02:05:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37A7310E524;
	Thu,  1 Dec 2022 01:05:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA28B10E525
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Dec 2022 01:05:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669856737; x=1701392737;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=LieA/ZpVmOxaO/0Rh0ylDNu9nivieve/GQ/6RmFpWk4=;
 b=l7kWYChRrOlyGfV2wcpfSBZYFCvsFwWbCTlEtXsUrlUWkS/I6f3iZApO
 tsd2jhPDZl3Qx8ZC6m5IBlKzvAq4fES2cQgOLFWtIDOeTgdqt4MIG8qcJ
 Y1d35ucVeYscvcmh9LGbS6BM56qtHY1Rczjl/U1ICq9i9d7eI9Ia2EC0W
 sv5TcibuTY725MDc0ZcVWXuZVh6lFLA1+duFL+Q4KVlC3ARsjhgf6SEau
 ZYXwbmysc42nrZHd2aWz8ng+iq0ONvFsNmYlmLxJmA0gAmwuZlwMs21Sa
 eKGP8Pr6acBrK4a5FhiFnHVe3Ex+0LKkViZsYIkevSorOQTHVGciyd34e w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="377718681"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="377718681"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 17:05:37 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="973322678"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="973322678"
Received: from unerlige-ril.jf.intel.com ([10.165.21.138])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 17:05:36 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Nov 2022 17:05:35 -0800
Message-Id: <20221201010535.1097741-5-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20221201010535.1097741-1-umesh.nerlige.ramappa@intel.com>
References: <20221201010535.1097741-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/4] drm/i915/mtl: Add OA support by enabling
 32 bit OAG formats for MTL
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

Without an entry in oa_init_supported_formats, OA will not be functional
in MTL. Enable OA support by enabling 32 bit OAG formats for MTL.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 8369ae4b850d..a735b9540113 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -4772,6 +4772,7 @@ static void oa_init_supported_formats(struct i915_perf *perf)
 		break;
 
 	case INTEL_DG2:
+	case INTEL_METEORLAKE:
 		oa_format_add(perf, I915_OAR_FORMAT_A32u40_A4u32_B8_C8);
 		oa_format_add(perf, I915_OA_FORMAT_A24u40_A14u32_B8_C8);
 		break;
-- 
2.36.1

