Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7A226ADC4D
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Mar 2023 11:49:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B0F910E468;
	Tue,  7 Mar 2023 10:48:41 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE10F10E457;
 Tue,  7 Mar 2023 10:48:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678186119; x=1709722119;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+aPUIYHD7DICRcKfwyOdEJV+UU5rx+U/9lVp66ESc/k=;
 b=AfpqSNPZwO129NoaorAcHcuSKIc4UGsgLFv9ZnZf2U/66JR7bMjkFQwD
 psIT/RePvzC9W/RVpWbKyWbYbZfrHaNEDrmsO+pTpxOzFXtLMXuDEpM7f
 gkyZlR4gZJDYq8dg1zgbB1LRnTsCMIWgSfD2/n0aKMR5DAI5iiHBGncFp
 L+4vF4pBoLHVhpvwWXPjBHIZl0kJqyIxGX/9t+RN0d1whl4QhZAdKwsit
 7ZmnB+g47UIIYACFVrmeuTLSGjh83hrGHJeeQ/NpqTRR0itrGioWeC8kJ
 pr+gsUu/EulQVwnAAe6/Q2ch6OjpZHmuhzMhQ+3xk0I2z8UtH3gnsllk5 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="400643418"
X-IronPort-AV: E=Sophos;i="5.98,240,1673942400"; d="scan'208";a="400643418"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 02:48:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="819712833"
X-IronPort-AV: E=Sophos;i="5.98,240,1673942400"; d="scan'208";a="819712833"
Received: from tanzeelu-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.205.53])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 02:48:37 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Tue,  7 Mar 2023 10:48:16 +0000
Message-Id: <20230307104824.231094-5-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230307104824.231094-1-tvrtko.ursulin@linux.intel.com>
References: <20230307104824.231094-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 04/12] drm/vmwgfx: Use fence callback
 initialization helper
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
Cc: Matt Turner <mattst88@gmail.com>, Zack Rusin <zackr@vmware.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Use the previously added initialization helper to ensure correct operation
of the common code.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Zack Rusin <zackr@vmware.com>
---
 drivers/gpu/drm/vmwgfx/vmwgfx_fence.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/vmwgfx/vmwgfx_fence.c b/drivers/gpu/drm/vmwgfx/vmwgfx_fence.c
index 2a0cda324703..0306596765e5 100644
--- a/drivers/gpu/drm/vmwgfx/vmwgfx_fence.c
+++ b/drivers/gpu/drm/vmwgfx/vmwgfx_fence.c
@@ -200,7 +200,7 @@ static long vmw_fence_wait(struct dma_fence *f, bool intr, signed long timeout)
 		goto out;
 	}
 
-	cb.base.func = vmwgfx_wait_cb;
+	__dma_fence_cb_init(&cb.base, vmwgfx_wait_cb);
 	cb.task = current;
 	list_add(&cb.base.node, &f->cb_list);
 
-- 
2.37.2

