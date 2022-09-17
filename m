Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A38E55BB50D
	for <lists+intel-gfx@lfdr.de>; Sat, 17 Sep 2022 02:44:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC1BD10E028;
	Sat, 17 Sep 2022 00:44:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B81B10E02A
 for <intel-gfx@lists.freedesktop.org>; Sat, 17 Sep 2022 00:44:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663375467; x=1694911467;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VMbFGs7z3DMu0azf+O76F6bLEbq0rRbtQKe4M69bKhQ=;
 b=TsMfjiZxeeP1v20EbFmXwpk+gDYRhgIVzX/F4zr7G653YhEijSXEEUPk
 tunXq0sZV5FmgC1jZ0+GewbJIJJBsGtXW/zNCrFrjGIq++MDriIUkcbQc
 pJVMhdLrm2Oz0oyhXPehlbkdwyJZgsMjbnyY09f3tMLsPGgjN7gb61LQW
 yIY54U3HJdnz9F2BX4V3YzVh2L/klnNLd6ODjtRh35hOd+AF3J95rXX3h
 yhckiWqAxndltPhzMZxveC9J+6A127lKtjipY8FJRsthuNF1xL/N95KqT
 9so9KqwCRipHEldN8OJuSUtl6tcLuG4SOf7BcUoftjSBQyCyhqpFK6WZa g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10472"; a="278835742"
X-IronPort-AV: E=Sophos;i="5.93,321,1654585200"; d="scan'208";a="278835742"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 17:44:27 -0700
X-IronPort-AV: E=Sophos;i="5.93,321,1654585200"; d="scan'208";a="743519292"
Received: from cgros-mobl.amr.corp.intel.com (HELO anushasr-mobl7.intel.com)
 ([10.209.28.3])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 17:44:26 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Sep 2022 17:44:01 -0700
Message-Id: <20220917004404.414981-4-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220917004404.414981-1-anusha.srivatsa@intel.com>
References: <20220917004404.414981-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/6] drm/i915/display: Embed the new struct
 steps for squashing
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

Populate the new struct steps for squash case.

Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 220d32adbd12..d2e81134b6f2 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1973,8 +1973,9 @@ static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
 
 static bool intel_cdclk_can_squash(struct drm_i915_private *dev_priv,
 				   const struct intel_cdclk_config *a,
-				   const struct intel_cdclk_config *b)
+				   struct intel_cdclk_config *b)
 {
+	struct cdclk_step *cdclk_transition = b->steps;
 	/*
 	 * FIXME should store a bit more state in intel_cdclk_config
 	 * to differentiate squasher vs. cd2x divider properly. For
@@ -1984,6 +1985,12 @@ static bool intel_cdclk_can_squash(struct drm_i915_private *dev_priv,
 	if (!has_cdclk_squasher(dev_priv))
 		return false;
 
+	if (a->cdclk != b->cdclk && a->vco != 0 &&
+	    a->vco == b->vco &&	a->ref == b->ref) {
+		cdclk_transition->action = CDCLK_SQUASH_ONLY;
+		cdclk_transition->cdclk = b->cdclk;
+	}
+
 	return a->cdclk != b->cdclk &&
 		a->vco != 0 &&
 		a->vco == b->vco &&
-- 
2.25.1

