Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DDB305A233E
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Aug 2022 10:39:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8BCA10E77D;
	Fri, 26 Aug 2022 08:39:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E541A10E752
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Aug 2022 08:38:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661503115; x=1693039115;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SjoMgmo5Si9e6ilTBj3cbG46t80+Hf1EWLK49Tx+qJg=;
 b=YZp9vEFLewB/OBN3Oor2ghsp9DMITRlN0f2Rp4L9zZqVTDo3+7y/aEva
 q1bGgS+WbM9OJWBWhIdQEgzhUxlW2CU+uwvLN3Z4NWyFAbqc0czX6lzk6
 SrvDZtB5xLCql+7MDNOAKvq3Sx+cCeVVQzT8h2GtRlomYMFP+KLVAMGMU
 id8n4fdOVCwVfK7DtN4J0fUPGY/37BLxkLLpByn3UjyI6/uiJi1mi7HLh
 wv80CEEYQkKB3IcBmed2DJGGwe7NpybfO4ScF7xModEHSidoGxY5HmQfI
 B6ySLSClZxnrQD0In6p4ajk8XiIgFXLSWjJMN2wsJpOXs3PNTfEaqxKgU g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10450"; a="292038728"
X-IronPort-AV: E=Sophos;i="5.93,264,1654585200"; d="scan'208";a="292038728"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2022 01:38:35 -0700
X-IronPort-AV: E=Sophos;i="5.93,264,1654585200"; d="scan'208";a="639978755"
Received: from plomuzio-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.40.203])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2022 01:38:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 Aug 2022 11:38:15 +0300
Message-Id: <5efbacc901be33afe967e4d4cdf196feac80867e.1661503049.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1661503049.git.jani.nikula@intel.com>
References: <cover.1661503049.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/5] drm/i915/pch: replace BUG_ON() with
 drm_WARN_ON()
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Avoid BUG_ON(). Replace with drm_WARN_ON().

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pch_refclk.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pch_refclk.c b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
index 9934c8a9e240..38608efd5749 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_refclk.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
@@ -654,7 +654,7 @@ static void ilk_init_pch_refclk(struct drm_i915_private *dev_priv)
 		}
 	}
 
-	BUG_ON(val != final);
+	drm_WARN_ON(&dev_priv->drm, val != final);
 }
 
 /*
-- 
2.34.1

