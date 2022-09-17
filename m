Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B26205BB50C
	for <lists+intel-gfx@lfdr.de>; Sat, 17 Sep 2022 02:44:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F3F910E02A;
	Sat, 17 Sep 2022 00:44:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74C5E10E028
 for <intel-gfx@lists.freedesktop.org>; Sat, 17 Sep 2022 00:44:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663375468; x=1694911468;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qKMJuWlmEKsLUIygaMl8qrvy4lable2W2/uSnNAXtIw=;
 b=CO6RU19uApdQylfoO3/9djR0nmDh/hMt/1NcetMaT8UCgmeSTR7hTIea
 Zc5X+8F30K+ilxVdzFqZV0F8B4B5lEIMkb81GZLT5djHzEOuZutHetM/t
 eO30aCG/nYd0BWWHWVVpm/CaGjTitw8AZSdOOUD5HJE5OOAvCyF45SYGf
 hri3MylpODQCzWxo6e571TNn5KgMZ6/bPoRMcM056KWZRKzIwXehyrv7Y
 7srGeTnXLGHWGztUzV9ooJe0INZjm3yi0bk7LNDhLfPg1Si1GfX7J8N+R
 oywejGnr5AlFGGnUeUn7do3ND4J2PpAs9hpLHZ3mKu2qtiRSfsaQhM5xf A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10472"; a="278835744"
X-IronPort-AV: E=Sophos;i="5.93,321,1654585200"; d="scan'208";a="278835744"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 17:44:28 -0700
X-IronPort-AV: E=Sophos;i="5.93,321,1654585200"; d="scan'208";a="743519298"
Received: from cgros-mobl.amr.corp.intel.com (HELO anushasr-mobl7.intel.com)
 ([10.209.28.3])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 17:44:28 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Sep 2022 17:44:02 -0700
Message-Id: <20220917004404.414981-5-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220917004404.414981-1-anusha.srivatsa@intel.com>
References: <20220917004404.414981-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/6] drm/i915/display: Embed the new struct
 steps for crawling
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

Populate the new struct steps for crawl case.

Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index d2e81134b6f2..bb5bbb1ad982 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1951,8 +1951,9 @@ void intel_cdclk_uninit_hw(struct drm_i915_private *i915)
 
 static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
 				  const struct intel_cdclk_config *a,
-				  const struct intel_cdclk_config *b)
+				  struct intel_cdclk_config *b)
 {
+	struct cdclk_step *cdclk_transition = b->steps;
 	int a_div, b_div;
 
 	if (!HAS_CDCLK_CRAWL(dev_priv))
@@ -1965,6 +1966,12 @@ static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
 	a_div = DIV_ROUND_CLOSEST(a->vco, a->cdclk);
 	b_div = DIV_ROUND_CLOSEST(b->vco, b->cdclk);
 
+	if (a->vco != 0 && b->vco != 0 && a->vco != b->vco &&
+	    a_div == b_div && a->ref == b->ref) {
+		cdclk_transition->action = CDCLK_CRAWL_ONLY;
+		cdclk_transition->cdclk = b->cdclk;
+	}
+
 	return a->vco != 0 && b->vco != 0 &&
 		a->vco != b->vco &&
 		a_div == b_div &&
-- 
2.25.1

