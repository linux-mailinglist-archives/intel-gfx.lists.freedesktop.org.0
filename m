Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 715696CEC70
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 17:11:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DEA110EB25;
	Wed, 29 Mar 2023 15:11:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D91A910E19A
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 15:11:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680102670; x=1711638670;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/yr5F50hYC9NLpRia9B25v6r+wHPjYIEfqqi/u7fP4s=;
 b=JwJKS4hFykxqJ2AzSgaCIGvdL/LXTMYDuDFxyT+0d+uXyrbF616d8nRL
 H62gQiWQ37c402WedzABkDJgHLkEnNyQ0ZwDXvEiUpekCYDZdq5tckfAv
 mtwyJVtf9rLJxcXIVeDdCopIsFdjGN9QRKz1bSZP+CmKLbPzJGyAcU9Zg
 5yoU9zkQ2xskfchNsvoqpWidWi5SBxhC7oI4HH3A7siXshLdadhK+SOzR
 RaXH4AU8Y6vbF5Ci0QCNZW6IvFhdKCpyciM5e44LPe24KomiFqJ1ojdd9
 0R5kU0ua8Ohha9cFV6NDbzB+kXaOiUccu32Q4r0KNxtkyzuxaL8o5gRf6 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="368672914"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="368672914"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 08:07:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="753626037"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="753626037"
Received: from pgarraul-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.251.223.204])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 08:07:45 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Mar 2023 18:07:01 +0300
Message-Id: <20230329150703.432072-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230329150703.432072-1-jouni.hogander@intel.com>
References: <20230329150703.432072-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 4/6] drm/i915/psr: Add helpers for block
 count number handling
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

Add helpers to make it more clear how PSR2_CTL[Block Count Number]
is configured.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 98f48eb10c44..07b0c016e78a 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -519,6 +519,17 @@ static u32 intel_psr2_get_tp_time(struct intel_dp *intel_dp)
 	return val;
 }
 
+static int psr2_block_count_lines(struct intel_dp *intel_dp)
+{
+	return intel_dp->psr.io_wake_lines < 9 &&
+		intel_dp->psr.fast_wake_lines < 9 ? 8 : 12;
+}
+
+static int psr2_block_count(struct intel_dp *intel_dp)
+{
+	return psr2_block_count_lines(intel_dp) / 4;
+}
+
 static void hsw_activate_psr2(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
@@ -536,11 +547,10 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 	val |= intel_psr2_get_tp_time(intel_dp);
 
 	if (DISPLAY_VER(dev_priv) >= 12) {
-		if (intel_dp->psr.io_wake_lines < 9 &&
-		    intel_dp->psr.fast_wake_lines < 9)
-			val |= TGL_EDP_PSR2_BLOCK_COUNT_NUM_2;
-		else
+		if (psr2_block_count(intel_dp) > 2)
 			val |= TGL_EDP_PSR2_BLOCK_COUNT_NUM_3;
+		else
+			val |= TGL_EDP_PSR2_BLOCK_COUNT_NUM_2;
 	}
 
 	/* Wa_22012278275:adl-p */
-- 
2.34.1

