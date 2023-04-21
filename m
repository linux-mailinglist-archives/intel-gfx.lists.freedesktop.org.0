Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EA8D26EB1FB
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 21:02:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1CD410EEC5;
	Fri, 21 Apr 2023 19:02:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5805B10E324;
 Fri, 21 Apr 2023 19:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682103725; x=1713639725;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9nyPFwQxPjuOGJyqvk6mfBDMpAV5D1sJ3q80YV00LR0=;
 b=RgQ+G7GGFCSSp/2VBzZvL/+NOjegINO2JeblOto8KEq6NSMSHkH8Lang
 sNdFV8/eqhvKK27PXfPJlatcamxgohz8rC7gSFWy87Zg+eByr9Lvou+1q
 gNjjFo6gBr9d1HI9dOziByH+zWjPsbqSTygIGI3U3F9j6wBS0u08WOv+r
 iWZjtAf16/LyjQgWKOPV9Udc21UYytAjVsoSYYEx/NLUfw5GYsSooLjWk
 ejKKQJA0GyOkUD7ajJnV3UT8urjuF2oOMwNY3RXNjzIzFXZhm1Y2Zh1zZ
 FIe5U3np1c6TVyYknooYXZ1whxo0Hg2R4bPk37aaIFVuLkOV62iOEzkge g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10687"; a="347966486"
X-IronPort-AV: E=Sophos;i="5.99,216,1677571200"; d="scan'208";a="347966486"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 12:00:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10687"; a="781690470"
X-IronPort-AV: E=Sophos;i="5.99,216,1677571200"; d="scan'208";a="781690470"
Received: from ameghere-mobl2.ger.corp.intel.com (HELO intel.com)
 ([10.249.35.194])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 12:00:50 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Intel GFX <intel-gfx@lists.freedesktop.org>,
 DRI Devel <dri-devel@lists.freedesktop.org>
Date: Fri, 21 Apr 2023 21:00:25 +0200
Message-Id: <20230421190026.294208-2-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230421190026.294208-1-andi.shyti@linux.intel.com>
References: <20230421190026.294208-1-andi.shyti@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915/i915_drv: Use proper parameter
 naming in for_each_engine()
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

for_each_engine() loops through engines in the GT, not in
dev_priv.  Because it's misleading, call it "gt__" instead of
"dev_priv__".

Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index fe7eeafe9cff6..c16f8a3cd914f 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -381,11 +381,11 @@ static inline struct intel_gt *to_gt(struct drm_i915_private *i915)
 }
 
 /* Simple iterator over all initialised engines */
-#define for_each_engine(engine__, dev_priv__, id__) \
+#define for_each_engine(engine__, gt__, id__) \
 	for ((id__) = 0; \
 	     (id__) < I915_NUM_ENGINES; \
 	     (id__)++) \
-		for_each_if ((engine__) = (dev_priv__)->engine[(id__)])
+		for_each_if ((engine__) = (gt__)->engine[(id__)])
 
 /* Iterator over subset of engines selected by mask */
 #define for_each_engine_masked(engine__, gt__, mask__, tmp__) \
-- 
2.40.0

