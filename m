Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC5F8718E6D
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jun 2023 00:27:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E405910E1EB;
	Wed, 31 May 2023 22:27:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F01810E1EB
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 May 2023 22:27:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685572055; x=1717108055;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RFlNjFT/kR+wU2SDb7bJFfNcSGMLfuxHva0MBtyTvzc=;
 b=MiMXg0WbYFiPI+688tH4JGw5nXm9Y8adeH7jnMnMO/M6JZRfQG2T/Bef
 +UVRsXqGDEJYmN6095+BE/bA+32lC0x7S3/vOt4xnyzI0Mo0J612COpd0
 OQKoG9hI3fLuGHg7H9vcXgte+FF12wpHLvC5V/DRDcx+lHMomvVcdXMb8
 BfcTfGIH3UvTsPfy8WnTkDYjqoeefDzqnbApkhYwsurnd0IRla/R2VCle
 SM72Ur/X3//Vi6zWGYi+fr05yc2XxsVcgnYKvbwhGow/9GdfMgNmeHIDd
 pwVYuNRaC1U7R8+ae5NzKyeQibZGKeSknH8Mb3McB6MLX8PIgx4v80ozV g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="383651547"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="383651547"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 15:27:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="1037222063"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="1037222063"
Received: from gliakhov-mobl.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.252.47.114])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 15:27:31 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Jun 2023 01:27:08 +0300
Message-Id: <20230531222714.439313-2-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230531222714.439313-1-vinod.govindapillai@intel.com>
References: <20230531222714.439313-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v10 1/7] drm/i915: fix the derating percentage
 for MTL
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

Follow the values from bspec for the percentage overhead for
efficiency in MTL BW calculations.

Bspec: 64631

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 597d5816ad1b..ab405c48ca3a 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -379,7 +379,7 @@ static const struct intel_sa_info mtl_sa_info = {
 	.deburst = 32,
 	.deprogbwlimit = 38, /* GB/s */
 	.displayrtids = 256,
-	.derating = 20,
+	.derating = 10,
 };
 
 static int icl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel_sa_info *sa)
-- 
2.34.1

