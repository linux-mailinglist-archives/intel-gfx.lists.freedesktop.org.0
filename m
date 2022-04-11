Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FF6D4FB5B0
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Apr 2022 10:12:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A96A610F053;
	Mon, 11 Apr 2022 08:12:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFDED10F060
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Apr 2022 08:12:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649664775; x=1681200775;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=k8E4U6zr6ETso+nJiXQW780VrhLnRM7rTqhp2Y1sJ8M=;
 b=mFul7Cfw29xNudqT4gHkbM+NXb4yYnzNznyY6kIr9DGRb+xG9TCtCD85
 fFirwsD0ZuJJFVJ1ZFHSWzbRlyxTC9UYrAmoOyNOkR1EM6XAhE1svIWIU
 UmFkXmtwfelZkQJGagVfpK27+l8Vqfz70obQH+EsvqYbmGzvngVyITKnP
 qR9skRe8MlI0DKL2xc9+KFO4RfYmOsI6usr/WgCPIiLIrsK8C3Cup+kX2
 +7euvaFKhg2Vwzil57ZWrcEWxFHxFtmT2EgCHzLQQH3tNqJMA8S+978Sw
 xIM4EV12rB7VANkrpD1KhJAi23ji2yopP1FIkYb/8ubyojTh0/xtB78cF g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10313"; a="249345257"
X-IronPort-AV: E=Sophos;i="5.90,251,1643702400"; d="scan'208";a="249345257"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 01:12:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,251,1643702400"; d="scan'208";a="507019831"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga003.jf.intel.com with ESMTP; 11 Apr 2022 01:12:53 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 11 Apr 2022 11:13:43 +0300
Message-Id: <20220411081343.18099-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20220408125200.9069-3-stanislav.lisovskiy@intel.com>
References: <20220408125200.9069-3-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Swap ret and status returned from
 skl_pcode_request
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

If ret isn't zero, it is almost for sure ETIMEDOUT, because
we use it in wait_for macro which does continuous retries
until timeout is reached. If we still ran out of time and
retries, we most likely would be interested in getting status,
to understand what was the actual error propagated from PCode,
rather than to find out that we had a time out, which is anyway
quite obvious, if the function fails.

v2: Make it status ? status : ret(thanks Vinod for the hint)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/intel_pcode.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/intel_pcode.c b/drivers/gpu/drm/i915/intel_pcode.c
index fb6c43e8a02f..ac727546868e 100644
--- a/drivers/gpu/drm/i915/intel_pcode.c
+++ b/drivers/gpu/drm/i915/intel_pcode.c
@@ -202,7 +202,7 @@ int skl_pcode_request(struct drm_i915_private *i915, u32 mbox, u32 request,
 
 out:
 	mutex_unlock(&i915->sb_lock);
-	return ret ? ret : status;
+	return status ? status : ret;
 #undef COND
 }
 
-- 
2.24.1.485.gad05a3d8e5

