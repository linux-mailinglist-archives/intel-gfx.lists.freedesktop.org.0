Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AFC363E6CD
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Dec 2022 01:59:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64EDC10E534;
	Thu,  1 Dec 2022 00:59:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC67E10E525
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Dec 2022 00:59:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669856365; x=1701392365;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LieA/ZpVmOxaO/0Rh0ylDNu9nivieve/GQ/6RmFpWk4=;
 b=TkoY5JBDSpSYOYmjrolGvqH03bpELOHU6rpXbwi+zbEg5RYY4x2ujtnL
 0kCbSVvFafsppAkXAwKkXADloedB0XPP2gOgZBDI9mapH9gKQF2I+DlUB
 jr0xxQYCqF3TbesbNVPPEKPJqj38RwOsk8fv8wfZX47m7pPj0x1R8OX4M
 HljS+xiPxrgYnisb4OKaMaablDJjrn/+L4tP6f8cDE43zGEJLdoLy1u5I
 82uZ29QN5Jgjk1dJag0PbRaCSbnRAlj3QEQQyPyfxddDvEa6++Zl70qo6
 /FiQTTC6FboN5L7mGa0XTwhoDV1mZya6ivg6GXLd6fYxSmerXgYFeaST5 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="313180799"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="313180799"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 16:59:14 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="769035760"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="769035760"
Received: from unerlige-ril.jf.intel.com ([10.165.21.138])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 16:59:13 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Nov 2022 16:59:08 -0800
Message-Id: <20221201005908.1097616-5-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20221201005908.1097616-1-umesh.nerlige.ramappa@intel.com>
References: <20221201005908.1097616-1-umesh.nerlige.ramappa@intel.com>
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

