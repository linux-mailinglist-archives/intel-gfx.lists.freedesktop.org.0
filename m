Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A8646F874
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Dec 2021 02:27:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF0F310E187;
	Fri, 10 Dec 2021 01:27:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CE3610E1C3
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Dec 2021 01:27:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639099672; x=1670635672;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9pKHZfz85EHSBq26TLqCZqvz1Fm//RZQXDGw51Z+QEQ=;
 b=hwaoiKKAc618ZqM6pRl5PQtSQToGCPS7mtsRLwEsW1pqLOAkl6FSL/I2
 wWFQhQqkpf+WjNaI3OITnxSFyGjOtXzhREvZCaP7AE5P7f0ocS5dEL9ee
 VCVpFfbD4Tunr3LGzn1fkxZzMtmtHyrfs5mI5PrBr3YiMt7MDri/8jlzq
 THtIf8FVy/pBEwKmE+WJlhYPeyoGfd3PmLl6GZAnPjzzMwZKwaJbO5uWD
 PNOPRJoInu82nukSAcX+H6S05m2i5XRhv1fH6oqt4/YoMTmR4M6VXksLx
 R+THE7LfUa3q1qSugvSsRuCszIRmnnRxHZqkSKGfwzOgQOIuCjeAc1jvL Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="238049604"
X-IronPort-AV: E=Sophos;i="5.88,194,1635231600"; d="scan'208";a="238049604"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 17:27:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,194,1635231600"; d="scan'208";a="516559458"
Received: from dong-desktop.sh.intel.com ([10.239.158.38])
 by orsmga008.jf.intel.com with ESMTP; 09 Dec 2021 17:27:50 -0800
From: dong.yang@intel.com
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Dec 2021 09:31:47 +0800
Message-Id: <20211210013147.2256699-1-dong.yang@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Do not add same i915_request to
 intel_context twice
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
Cc: dong.yang@intel.com, Yang@freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: "Yang, Dong" <dong.yang@intel.com>

With unknow race condition, the i915_request will be added
to intel_context list twice, and result in system panic.

If node alreay exist then do not add it again.

Signed-off-by: Yang, Dong <dong.yang@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
index 209cf265bf74..9c7bc060d2ae 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
@@ -387,6 +387,9 @@ static void insert_breadcrumb(struct i915_request *rq)
 		}
 	}
 
+	if (&rq->signal_link == pos)
+		return;
+
 	i915_request_get(rq);
 	list_add_rcu(&rq->signal_link, pos);
 	GEM_BUG_ON(!check_signal_order(ce, rq));
-- 
2.27.0

