Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14FDA63CFD6
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Nov 2022 08:46:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CF0C10E41B;
	Wed, 30 Nov 2022 07:45:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E55A10E41B
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Nov 2022 07:45:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669794348; x=1701330348;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Jky2EXSA+dREtL9ZyhjN4LUFaRTjYSV9/CTMHk2ni7U=;
 b=V9WZNhPcwWoxxKZ9qFCWDMijvW5Q5nfaqGgTvA3KXNCPVbSkTErFSYSE
 WtOHb97q45P/eHzixnbyUtHQEnSrfwquZrEODlt2F/0iq7A3jdF/kXsVE
 dOF8EWkINaG/3JxCz7KZetu/1zTFpktxiLd6/s3KA0Zd6Ys+R/9Xj7HO7
 hGjxABiKkOwHHbwYVnuN9ih5alR6XnxJyOaWR5KqBEOsYkGzu+cvkky02
 zhnLdUt7wplxje+vK7hdGjpAluzqCeqnnFomSiW692r3BOMb27vT3IWTM
 dOokWhhZcoUERb8Be5Y0oCAOQljWGqiceYcnqrrKw5178NJ5dwXmWC7Jr w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="401610681"
X-IronPort-AV: E=Sophos;i="5.96,205,1665471600"; d="scan'208";a="401610681"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2022 23:45:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="973003891"
X-IronPort-AV: E=Sophos;i="5.96,205,1665471600"; d="scan'208";a="973003891"
Received: from chaitanya.iind.intel.com ([10.190.239.113])
 by fmsmga005.fm.intel.com with ESMTP; 29 Nov 2022 23:45:46 -0800
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Nov 2022 13:16:17 +0530
Message-Id: <20221130074617.1619099-3-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221130074617.1619099-1-chaitanya.kumar.borah@intel.com>
References: <20221130074617.1619099-1-chaitanya.kumar.borah@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 2/2] drm/i915: Add additional check for 480Mhz
 step CDCLK
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

There are still RPL-U boards which does not support the 480Mhz step of
CDCLK. We can differentiate these board by checking the CPUID Brand
String. 480Mhz step is only supported in SKUs which does not contain
the string "Genuine Intel" in the Brand string.

BSpec: 55409

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 9bfeb1abba47..1890e5135cfc 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -192,6 +192,19 @@ static bool is_rplu(struct drm_i915_private *dev_priv)
 	}
 }
 
+static bool is_480mhz_step_valid(void)
+{
+	struct cpuinfo_x86 *c;
+	unsigned int cpu = smp_processor_id();
+
+	c = &cpu_data(cpu);
+
+	if (c->x86_model_id[0] && !strstr(c->x86_model_id, "Genuine Intel"))
+		return true;
+
+	return false;
+}
+
 static void i915gm_get_cdclk(struct drm_i915_private *dev_priv,
 			     struct intel_cdclk_config *cdclk_config)
 {
@@ -3389,8 +3402,9 @@ void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
 		/*
 		 * BSpec: 55409
 		 * 480 MHz supported on SKUs that have a RPL-U Device ID
+		 * and  CPUID Brand String that does not contain "Genuine Intel".
 		 */
-		else if (is_rplu(dev_priv))
+		else if (is_rplu(dev_priv) && is_480mhz_step_valid())
 			dev_priv->cdclk.table = rplu_cdclk_table;
 		else
 			dev_priv->display.cdclk.table = adlp_cdclk_table;
-- 
2.25.1

