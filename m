Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58C684D0C23
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Mar 2022 00:39:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F4A510E1C7;
	Mon,  7 Mar 2022 23:39:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C973C10E1C7
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Mar 2022 23:39:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646696389; x=1678232389;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=lQ+61yliDFG7419zQg7LBzhtw24GL6Oclt6uwNxz0z8=;
 b=mSTs+fDPDFAfsOpCGYDhxLtSbmirGGbmZSG2E89Vk/b4Yv8M36QSGPvt
 id8ExMYgCE9UFiKgUwnm576iHyio+hLnM955yK3x4neOD81gsdzdY/Bj4
 6a0VJAIyG+42XTx7xiGFma9DGU6CJYiPPcct7WtVAl1hKa47AOyOm50lP
 qHtyKcg1Smjf8gb9IIK7k0vWe/qHNNi7sDxwCol3cdc7V7xnrS9sllLjL
 J39cpvSvrJxs+k7OZ8xp/RTdn7uhMFWyacF8WyPQZpw4kF/4Jn1RyNAau
 kj9FGNhRtATlAfkTMXoBY7HEki/TE5+cayaT+P/1kstSG4M1pTEIboa3X w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10279"; a="253365594"
X-IronPort-AV: E=Sophos;i="5.90,163,1643702400"; d="scan'208";a="253365594"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2022 15:39:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,163,1643702400"; d="scan'208";a="537324804"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga007.jf.intel.com with SMTP; 07 Mar 2022 15:39:46 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 08 Mar 2022 01:39:45 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Mar 2022 01:39:34 +0200
Message-Id: <20220307233940.4161-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220307233940.4161-1-ville.syrjala@linux.intel.com>
References: <20220307233940.4161-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/8] drm/i915: Remove redundant/wrong comments
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Remove the comment specifying the exact formulat for calculating
the DPLL frequency from the *_find_best_dpll() functions. Each
platform variant has its own way to calculate these and we have
the code already to do that. These comments are entirely redundant
and often even wrong so just get rid of them.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll.c | 15 +++++----------
 1 file changed, 5 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index b3fd94538c44..f4e5290b86a4 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -425,8 +425,7 @@ i9xx_select_p2_div(const struct intel_limit *limit,
 
 /*
  * Returns a set of divisors for the desired target clock with the given
- * refclk, or FALSE.  The returned values represent the clock equation:
- * reflck * (5 * (m1 + 2) + (m2 + 2)) / (n + 2) / p1 / p2.
+ * refclk, or FALSE.
  *
  * Target and reference clocks are specified in kHz.
  *
@@ -484,8 +483,7 @@ i9xx_find_best_dpll(const struct intel_limit *limit,
 
 /*
  * Returns a set of divisors for the desired target clock with the given
- * refclk, or FALSE.  The returned values represent the clock equation:
- * reflck * (5 * (m1 + 2) + (m2 + 2)) / (n + 2) / p1 / p2.
+ * refclk, or FALSE.
  *
  * Target and reference clocks are specified in kHz.
  *
@@ -541,8 +539,7 @@ pnv_find_best_dpll(const struct intel_limit *limit,
 
 /*
  * Returns a set of divisors for the desired target clock with the given
- * refclk, or FALSE.  The returned values represent the clock equation:
- * reflck * (5 * (m1 + 2) + (m2 + 2)) / (n + 2) / p1 / p2.
+ * refclk, or FALSE.
  *
  * Target and reference clocks are specified in kHz.
  *
@@ -641,8 +638,7 @@ static bool vlv_PLL_is_optimal(struct drm_device *dev, int target_freq,
 
 /*
  * Returns a set of divisors for the desired target clock with the given
- * refclk, or FALSE.  The returned values represent the clock equation:
- * reflck * (5 * (m1 + 2) + (m2 + 2)) / (n + 2) / p1 / p2.
+ * refclk, or FALSE.
  */
 static bool
 vlv_find_best_dpll(const struct intel_limit *limit,
@@ -700,8 +696,7 @@ vlv_find_best_dpll(const struct intel_limit *limit,
 
 /*
  * Returns a set of divisors for the desired target clock with the given
- * refclk, or FALSE.  The returned values represent the clock equation:
- * reflck * (5 * (m1 + 2) + (m2 + 2)) / (n + 2) / p1 / p2.
+ * refclk, or FALSE.
  */
 static bool
 chv_find_best_dpll(const struct intel_limit *limit,
-- 
2.34.1

