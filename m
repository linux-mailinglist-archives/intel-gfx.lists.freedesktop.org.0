Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4513097BE1E
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 16:42:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB43E10E26F;
	Wed, 18 Sep 2024 14:42:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MMJkwcjh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05C8A10E5C8;
 Wed, 18 Sep 2024 14:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726670529; x=1758206529;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qe72ZSLcbXjGmAx1e41UjU/MJLZF+dx8xFFi/dzxrV4=;
 b=MMJkwcjh5fsbrI8IVJQW6nOU1tTXSJ946jeQ5EcHsgmY5Ir3mOrRsZSJ
 M9/HQEBGF/vvnrdTJknZl86H8vt5jk/y24htbg9CATtV+y4jYDSIlbl6C
 Pu8MWwY4SXivtA5ubOOsihgI4xii7lbpAL7FKVUdJ/z+8FAY3gN2qM9o0
 T/0Ju+Ao1GcXBJ6H9wGdemkaHMCWKJvNBbG6NDqpu1vTGyJjPi7BxBM4h
 POp//0AOavXqptFICUJWSSMYImLx6mUOoFP7/w/4AxAu8Ot6IXBJpam0N
 fBTqR+F3I+Mrpt7jU4FAIuFbopixLTFW/p/+YxK7X1nSIZQpfnZLUZ/qc w==;
X-CSE-ConnectionGUID: Ru9Nkk4aTP+HnDLqb+M7pA==
X-CSE-MsgGUID: Unuwp2VoT0OvmBPpnlHUcw==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="29481741"
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="29481741"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 07:42:09 -0700
X-CSE-ConnectionGUID: R3k7NT8LQdK62bYIcK2e6A==
X-CSE-MsgGUID: rlwhvLVSSO2befOs7drgug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="69200385"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 07:42:07 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 08/15] drm/i915: Add bigjoiner and uncompressed joiner hw
 readout sanity checks
Date: Wed, 18 Sep 2024 20:13:36 +0530
Message-ID: <20240918144343.2876184-9-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240918144343.2876184-1-ankit.k.nautiyal@intel.com>
References: <20240918144343.2876184-1-ankit.k.nautiyal@intel.com>
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

Add sanity checks for primary and secondary bigjoiner/uncompressed
bitmasks, should make it easier to spot possible issues.

v2:
-Streamline the expected masks and add few more drm_WARNs. (Ville)
-Use %#x format specifier for printing joiner masks. (Ville)
-Use struct intel_display instead of struct drm_i915_private. (Ankit)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com> (v1)
---
 drivers/gpu/drm/i915/display/intel_display.c | 49 +++++++++++++++++++-
 1 file changed, 47 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 28447d4c8934..a17e89fb5eb9 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3654,26 +3654,71 @@ static void enabled_bigjoiner_pipes(struct intel_display *display,
 	}
 }
 
+static u8 expected_secondary_pipes(u8 primary_pipes, int num_pipes)
+{
+	u8 secondary_pipes = 0;
+
+	for (int i = 1; i < num_pipes; i++)
+		secondary_pipes |= primary_pipes << i;
+
+	return secondary_pipes;
+}
+
+static u8 expected_uncompjoiner_secondary_pipes(u8 uncompjoiner_primary_pipes)
+{
+	return expected_secondary_pipes(uncompjoiner_primary_pipes, 2);
+}
+
+static u8 expected_bigjoiner_secondary_pipes(u8 bigjoiner_primary_pipes)
+{
+	return expected_secondary_pipes(bigjoiner_primary_pipes, 2);
+}
+
 static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
 				 u8 *primary_pipes, u8 *secondary_pipes)
 {
 	struct intel_display *display = to_intel_display(&dev_priv->drm);
 	u8 primary_uncompressed_joiner_pipes, primary_bigjoiner_pipes;
 	u8 secondary_uncompressed_joiner_pipes, secondary_bigjoiner_pipes;
+	u8 uncompressed_joiner_pipes, bigjoiner_pipes;
 
 	enabled_uncompressed_joiner_pipes(display, &primary_uncompressed_joiner_pipes,
 					  &secondary_uncompressed_joiner_pipes);
 
+	drm_WARN_ON(display->drm,
+		    (primary_uncompressed_joiner_pipes & secondary_uncompressed_joiner_pipes) != 0);
+
 	enabled_bigjoiner_pipes(display, &primary_bigjoiner_pipes,
 				&secondary_bigjoiner_pipes);
 
+	drm_WARN_ON(display->drm,
+		    (primary_bigjoiner_pipes & secondary_bigjoiner_pipes) != 0);
+
+	uncompressed_joiner_pipes = primary_uncompressed_joiner_pipes |
+				    secondary_uncompressed_joiner_pipes;
+	bigjoiner_pipes = primary_bigjoiner_pipes | secondary_bigjoiner_pipes;
+
+	drm_WARN(display->drm, (uncompressed_joiner_pipes & bigjoiner_pipes) != 0,
+		 "Uncomressed joiner pipes(%#x) and bigjoiner pipes(%#x) can't intersect\n",
+		 uncompressed_joiner_pipes, bigjoiner_pipes);
+	drm_WARN(display->drm, secondary_bigjoiner_pipes !=
+		 expected_bigjoiner_secondary_pipes(primary_bigjoiner_pipes),
+		 "Wrong secondary bigjoiner pipes(expected %#x, current %#x)\n",
+		 expected_bigjoiner_secondary_pipes(primary_bigjoiner_pipes),
+		 secondary_bigjoiner_pipes);
+	drm_WARN(display->drm, secondary_uncompressed_joiner_pipes !=
+		 expected_uncompjoiner_secondary_pipes(primary_uncompressed_joiner_pipes),
+		 "Wrong secondary uncompressed joiner pipes(expected %#x, current %#x)\n",
+		 expected_uncompjoiner_secondary_pipes(primary_uncompressed_joiner_pipes),
+		 secondary_uncompressed_joiner_pipes);
+
 	*primary_pipes = primary_uncompressed_joiner_pipes | primary_bigjoiner_pipes;
 
 	*secondary_pipes = secondary_uncompressed_joiner_pipes | secondary_bigjoiner_pipes;
 
 	/* Joiner pipes should always be consecutive primary and secondary */
-	drm_WARN(&dev_priv->drm, *secondary_pipes != *primary_pipes << 1,
-		 "Joiner misconfigured (primary pipes 0x%x, secondary pipes 0x%x)\n",
+	drm_WARN(display->drm, *secondary_pipes != *primary_pipes << 1,
+		 "Joiner misconfigured (primary pipes %#x, secondary pipes %#x)\n",
 		 *primary_pipes, *secondary_pipes);
 }
 
-- 
2.45.2

