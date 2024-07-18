Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC4939349AD
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2024 10:17:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A9BC10E5D1;
	Thu, 18 Jul 2024 08:17:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SbaMfrIK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 433FD10E5C0
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2024 08:17:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721290636; x=1752826636;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kOgEV9+d+q5J9kRC77BZ5SzmSxWDM/S/L+UbxfG7g14=;
 b=SbaMfrIKY5S7vKzW7tALkaKknrjMPRMt8HOswH1pbq/4Fclujo2lSl1i
 PwE7rkSrXSFtRcJGV78Ix+oE0jZDDTwBzMn0BeH57hPL6O7RLJiFU29/S
 jT+NXLhbIZUfBSZfiCwbcSZ1QtpfjvOzMjNyTQuQspsb0v22L9fWvfSwr
 +n5FnJtoOY87b5nusDxNJjsySBcs4CTpikVD93jSa6hYcHengo+Vbhvc0
 V7amPRUxOboz2hH3T2NW3StBcnGp9LE9bUSZlCsGyyinDSJ0ezxH9orr+
 iuwTJt46/Ja7K2ndUeXpH075zhPn/622EEkHziTw2yjdaae0jDLC5Oca4 A==;
X-CSE-ConnectionGUID: ETQwF/HDSw6kV4XSbVcWFg==
X-CSE-MsgGUID: H+p9WWQWR5e5YNxOPccasg==
X-IronPort-AV: E=McAfee;i="6700,10204,11136"; a="18706064"
X-IronPort-AV: E=Sophos;i="6.09,217,1716274800"; d="scan'208";a="18706064"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2024 01:17:16 -0700
X-CSE-ConnectionGUID: VlWuDLT5QCaGDczhN51tFA==
X-CSE-MsgGUID: WZMsVE1QQcGEanEU28iiHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,217,1716274800"; d="scan'208";a="51400641"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2024 01:17:14 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: stanislav.lisovskiy@intel.com, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 07/12] drm/i915: Add bigjoiner and uncompressed joiner hw
 readout sanity checks
Date: Thu, 18 Jul 2024 13:47:58 +0530
Message-ID: <20240718081803.3338564-8-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240718081803.3338564-1-ankit.k.nautiyal@intel.com>
References: <20240718081803.3338564-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Adding sanity checks for primary and secondary bigjoiner/uncompressed
bitmasks, should make it easier to spot possible issues.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 25 +++++++++++++++++++-
 1 file changed, 24 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 4aed8117f614..59cb0d2f773b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3648,11 +3648,17 @@ static void enabled_bigjoiner_pipes(struct drm_i915_private *dev_priv,
 	}
 }
 
+static u8 expected_secondary_pipes(u8 primary_pipes)
+{
+	return primary_pipes << 1;
+}
+
 static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
 				 u8 *primary_pipes, u8 *secondary_pipes)
 {
 	u8 primary_uncompressed_joiner_pipes, primary_bigjoiner_pipes;
 	u8 secondary_uncompressed_joiner_pipes, secondary_bigjoiner_pipes;
+	u8 uncompressed_joiner_pipes, bigjoiner_pipes;
 
 	enabled_uncompressed_joiner_pipes(dev_priv, &primary_uncompressed_joiner_pipes,
 					  &secondary_uncompressed_joiner_pipes);
@@ -3660,11 +3666,28 @@ static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
 	enabled_bigjoiner_pipes(dev_priv, &primary_bigjoiner_pipes,
 				&secondary_bigjoiner_pipes);
 
+	uncompressed_joiner_pipes = primary_uncompressed_joiner_pipes |
+				    secondary_uncompressed_joiner_pipes;
+	bigjoiner_pipes = primary_bigjoiner_pipes | secondary_bigjoiner_pipes;
+
+	drm_WARN(&dev_priv->drm, (uncompressed_joiner_pipes & bigjoiner_pipes) != 0,
+		 "Uncomressed joiner pipes(%x) and bigjoiner pipes(%x) can't intersect\n",
+		 uncompressed_joiner_pipes, bigjoiner_pipes);
+	drm_WARN(&dev_priv->drm, secondary_bigjoiner_pipes !=
+		 expected_secondary_pipes(primary_bigjoiner_pipes),
+		 "Wrong secondary bigjoiner pipes(expected %x, current %x)\n",
+		 expected_secondary_pipes(primary_bigjoiner_pipes),
+		 secondary_bigjoiner_pipes);
+	drm_WARN(&dev_priv->drm, secondary_uncompressed_joiner_pipes !=
+		 expected_secondary_pipes(primary_uncompressed_joiner_pipes),
+		 "Wrong secondary uncompressed joiner pipes(expected %x, current %x)\n",
+		 expected_secondary_pipes(primary_uncompressed_joiner_pipes),
+		 secondary_uncompressed_joiner_pipes);
+
 	*primary_pipes = 0;
 	*secondary_pipes = 0;
 
 	*primary_pipes = primary_uncompressed_joiner_pipes | primary_bigjoiner_pipes;
-
 	*secondary_pipes = secondary_uncompressed_joiner_pipes | secondary_bigjoiner_pipes;
 }
 
-- 
2.45.2

