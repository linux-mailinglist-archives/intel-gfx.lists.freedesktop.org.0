Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BCB85B5924
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 13:18:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3244710E3BE;
	Mon, 12 Sep 2022 11:18:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE47F10E3A8
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Sep 2022 11:18:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662981506; x=1694517506;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Vr0L/xNTMQcN8ujNFjrBgsCu5SOCc6Xm2JyBRdo09JY=;
 b=iQoTbnGcv+jquom1EweFX9pNlIccDz9aqL80pDgcGLgdiKPvhX50UZSS
 52NnOgZmR0/xkW7BfOxO3fL6YdVMKMgkfvuyXzlfN7HEn6NZa1OtIidPK
 CUtqOMQVGlEGfV21bsIfMjbf4wMK6nI+VJwcsc5mh4REzRWrE2FKMPpb8
 Jq/xTyknLDCuChXmxQzoaAlbu65BmiPQvld2o9lJZBZXjK1KLbnTGAoll
 PrwSmepWhVV8mbbKvVhsI9MqQLwBvCNLoi4QKpUjUlq0nqAkp36qk58+f
 pShdhAQVrq9FRNGN1LO9h312GJU7YRh4oO8C/DJhrQ3xoBtFCiuAzH5Vq Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10467"; a="284860882"
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="284860882"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 04:18:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="646415997"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga008.jf.intel.com with SMTP; 12 Sep 2022 04:18:23 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 12 Sep 2022 14:18:23 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Sep 2022 14:18:02 +0300
Message-Id: <20220912111814.17466-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220912111814.17466-1-ville.syrjala@linux.intel.com>
References: <20220912111814.17466-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/15] drm/i915: Drop pointless 'budget' variable
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

Just return the thing directly from the switch statement.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 22 +++++--------------
 1 file changed, 6 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index e5fb66a5dd02..60b3277a857b 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -708,8 +708,6 @@ struct hsw_wrpll_rnp {
 
 static unsigned hsw_wrpll_get_budget_for_freq(int clock)
 {
-	unsigned budget;
-
 	switch (clock) {
 	case 25175000:
 	case 25200000:
@@ -742,21 +740,18 @@ static unsigned hsw_wrpll_get_budget_for_freq(int clock)
 	case 222750000:
 	case 296703000:
 	case 297000000:
-		budget = 0;
-		break;
+		return 0;
 	case 233500000:
 	case 245250000:
 	case 247750000:
 	case 253250000:
 	case 298000000:
-		budget = 1500;
-		break;
+		return 1500;
 	case 169128000:
 	case 169500000:
 	case 179500000:
 	case 202000000:
-		budget = 2000;
-		break;
+		return 2000;
 	case 256250000:
 	case 262500000:
 	case 270000000:
@@ -766,18 +761,13 @@ static unsigned hsw_wrpll_get_budget_for_freq(int clock)
 	case 281250000:
 	case 286000000:
 	case 291750000:
-		budget = 4000;
-		break;
+		return 4000;
 	case 267250000:
 	case 268500000:
-		budget = 5000;
-		break;
+		return 5000;
 	default:
-		budget = 1000;
-		break;
+		return 1000;
 	}
-
-	return budget;
 }
 
 static void hsw_wrpll_update_rnp(u64 freq2k, unsigned int budget,
-- 
2.35.1

