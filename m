Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB04697BE24
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 16:42:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E67410E5CB;
	Wed, 18 Sep 2024 14:42:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cl+2i5A2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27A3510E5C1;
 Wed, 18 Sep 2024 14:42:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726670540; x=1758206540;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zYV4YGC4dbzMcZObtM6IToOpT6JU57Gt9jn/B8QuwJo=;
 b=cl+2i5A2TIwCW2uNiq0taUGQ+6ZutdKZE3USnSEfF9PL7/iWPBBvvxrH
 725RQ+ahhPTUYL9I/nGr+JTXJGO4UoFCONgXnST2JbsYUisbs509hFKlU
 Caw3TArww4oH6s0VvbeWR/ks5Pka/RWqHREuqElKQ/nQBsJvwc7CZknc0
 OQK6aikbL7dUzT91WvGfFgVNigMsk2QriTez75VtwqEfE1dsDn1/OtT9D
 OCQnfPzvIeJVnRA73GD2DdALkQG6X8wvdoCSE/U5ysAZCOE9YcRgt0Yth
 cf2UWoL8pghhPBuIKRFLkUbi+VgdWBX53YgUq1oVLE1nBuw3xVE6k8OYi w==;
X-CSE-ConnectionGUID: z1wrgKMaQOuDpeHQagZ7kw==
X-CSE-MsgGUID: aY1c8fDbSEKnW189tp+AMQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="29481772"
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="29481772"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 07:42:20 -0700
X-CSE-ConnectionGUID: 7++vhC5RSdKOgevbuq2PWw==
X-CSE-MsgGUID: 1tHd2nNbSS2/gpP0qFLigQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="69200403"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 07:42:17 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 14/15] drm/i915/display: Consider ultrajoiner for computing
 maxdotclock
Date: Wed, 18 Sep 2024 20:13:42 +0530
Message-ID: <20240918144343.2876184-15-ankit.k.nautiyal@intel.com>
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

Use the check for ultrajoiner while computing maxdotclock.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 044f91359c42..b1dc44f9fa88 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8197,8 +8197,11 @@ static int max_dotclock(struct drm_i915_private *i915)
 {
 	int max_dotclock = i915->display.cdclk.max_dotclk_freq;
 
+	if (HAS_ULTRAJOINER(i915))
+		max_dotclock *= 4;
+
 	/* icl+ might use joiner */
-	if (HAS_BIGJOINER(i915))
+	else if (HAS_BIGJOINER(i915))
 		max_dotclock *= 2;
 
 	return max_dotclock;
-- 
2.45.2

