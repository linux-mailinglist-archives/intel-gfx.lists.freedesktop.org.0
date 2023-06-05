Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EE22722CE9
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Jun 2023 18:49:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72C3B10E1C2;
	Mon,  5 Jun 2023 16:49:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1013810E1C2
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Jun 2023 16:48:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685983738; x=1717519738;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Fpd69Ha4P1kSzv554EKW/Jz+f2dRa1XRcEr7Amk+2uE=;
 b=Pfde0f0yxyUEbeDENW88FetWRKNF/RHiHs86xfRx4NqqU/CoZCPv0WR5
 zua/MTGtT4IKdviKONdnUekyRALu2qpqQkWwgxa/Xbz1kyj2gfHWK2Iqs
 J+Mkfjrvppo8Xg0j6sb9hQs2Ny5cOo+Pe4nG3OlrHa1OKlp6jQFrIUEL5
 65rRlf07h6aK3baqC1aFAds1ozEztRw6ti4Mw0CL5IpiOXE8ityVlAlRf
 +uI4+6oBobInZw2ZJogSd75e78vHkE/TJk8vwtszo7WSgIdEmmGSZZdsN
 UGbiUz49N0/ZrJLGhJwshJj87vW4uSkLIl2641oSYXqcivaZymXitn0nA A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="384725233"
X-IronPort-AV: E=Sophos;i="6.00,218,1681196400"; d="scan'208";a="384725233"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 09:48:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="853045023"
X-IronPort-AV: E=Sophos;i="6.00,218,1681196400"; d="scan'208";a="853045023"
Received: from lab-ah.igk.intel.com ([10.102.138.202])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 09:48:55 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  5 Jun 2023 18:48:40 +0200
Message-Id: <20230605164840.1234582-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: do not dereference dangling engine
 pointer on fence release
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

rq->engine can be a dangling pointer if rq->execution_mask has more than
one bit set, ie it could be already freed virtual engine. Changing check
order prevents dereferncing it in intel_engine_is_virtual(rq->engine).
Full description of possible scenarios at the inline comment before
the change.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/7926
Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/i915_request.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 630a732aaecca8..8775952f5c1bbd 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -166,8 +166,8 @@ static void i915_fence_release(struct dma_fence *fence)
 	 * know that if the rq->execution_mask is a single bit, rq->engine
 	 * can be a physical engine with the exact corresponding mask.
 	 */
-	if (!intel_engine_is_virtual(rq->engine) &&
-	    is_power_of_2(rq->execution_mask) &&
+	if (is_power_of_2(rq->execution_mask) &&
+	    !intel_engine_is_virtual(rq->engine) &&
 	    !cmpxchg(&rq->engine->request_pool, NULL, rq))
 		return;
 
-- 
2.34.1

