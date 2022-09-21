Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 51C085BFDC6
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Sep 2022 14:23:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A18D410E954;
	Wed, 21 Sep 2022 12:23:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3BEF10E951
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Sep 2022 12:23:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663763029; x=1695299029;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=QCB/0FijRQdHxFoHEt3BE8AHGYSrSOHe5/1jDCL0T9I=;
 b=NvalqOO4Dw+1ClCim3nxnusiRT3bZvGUy17vrqJ+qMtrVAvSt37RHjG/
 r6oe21UZRpu5O9cnjByMsCM2g4UhZ48y3UmBLxKzvU78v9IMVx8eUyoa8
 2W6dxDbLZXO6WJQqMMeMC7vPxbUjHSlBzTvRb1x4OzzcPyc5QUSjXXesr
 +Cq8dorkWG+hRgmQrkVWC6rMSaGrmpDPCUa8NgUmYhK8v6lGZOq2xFoiu
 tEpMdvCSboU/nRyV7WhXozG0/M1ZrgvlqxBPRUGVtXmnfVgAKX2iKNkRR
 mPloLztuCbU//78YKhc936bA/+UvAxM1WG8L6XThmjuMmX3IdkxyPwCjM Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10477"; a="361745110"
X-IronPort-AV: E=Sophos;i="5.93,333,1654585200"; d="scan'208";a="361745110"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 05:23:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,333,1654585200"; d="scan'208";a="650037132"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga008.jf.intel.com with SMTP; 21 Sep 2022 05:23:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 21 Sep 2022 15:23:46 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Sep 2022 15:23:40 +0300
Message-Id: <20220921122343.13061-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220921122343.13061-1-ville.syrjala@linux.intel.com>
References: <20220921122343.13061-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] drm/i915: Always initialize dpll.lock
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

Initialize the dll.lock mutex whether or not we manage to
initialize the rest of the dpll mgr.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index e5fb66a5dd02..9c60cf69cde1 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4193,6 +4193,8 @@ void intel_shared_dpll_init(struct drm_i915_private *dev_priv)
 	const struct dpll_info *dpll_info;
 	int i;
 
+	mutex_init(&dev_priv->display.dpll.lock);
+
 	if (IS_DG2(dev_priv))
 		/* No shared DPLLs on DG2; port PLLs are part of the PHY */
 		dpll_mgr = NULL;
@@ -4237,7 +4239,6 @@ void intel_shared_dpll_init(struct drm_i915_private *dev_priv)
 
 	dev_priv->display.dpll.mgr = dpll_mgr;
 	dev_priv->display.dpll.num_shared_dpll = i;
-	mutex_init(&dev_priv->display.dpll.lock);
 }
 
 /**
-- 
2.35.1

