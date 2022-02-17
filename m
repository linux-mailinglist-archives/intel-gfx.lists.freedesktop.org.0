Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 458394B9B47
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Feb 2022 09:39:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 556E410E8AE;
	Thu, 17 Feb 2022 08:39:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AC9010E8AE
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Feb 2022 08:39:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645087186; x=1676623186;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MZzimIp5d0BtjX+gy1u6bJJWGzihPZypwyIWCHAmihI=;
 b=E3vgR+Ah2W4EIeknoJ1ayauIXMKMOj+K2kcsrI/9FB0pJBn/nK7dMxne
 68YXCX0XYsqtJ0eCsAa3ZkvXluciE5LW7cEuoR5hy3PT0JTMFbyIPfxlJ
 1p4v/4zfN2Z2+AKJB2d6nFCgDNSQ3wkFpApjd0ZHs/1Rb1+6kk5bQloB3
 okzL8PjoERU6s813hU85ufUu665VgIY0MTTj6/ww4rOJ6fh0t9nJ1eiBc
 blpn/aGrcZrCiO06DMmvy3+4KOv8i1GTitAjYMsiLjVEmgQxNcc9jIJSL
 uWKBAvlO8fiqJa+pL+gzauGQQFu6NMiHB9iZuQ/7XiEf6t8gIH4PN50az g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10260"; a="230788660"
X-IronPort-AV: E=Sophos;i="5.88,375,1635231600"; d="scan'208";a="230788660"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 00:39:46 -0800
X-IronPort-AV: E=Sophos;i="5.88,375,1635231600"; d="scan'208";a="487982435"
Received: from acushion-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.21.45])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 00:39:44 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Feb 2022 10:39:38 +0200
Message-Id: <20220217083938.3587465-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dp: remove accidental static on what
 should be a local variable
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The variable should obviously be local, not static.

Fixes: a421d8a99216 ("drm/i915/dp: rewrite DP 2.0 128b/132b link training based on errata")
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 9197cc1734d2..5d98773efd1b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1408,7 +1408,7 @@ intel_dp_128b132b_link_train(struct intel_dp *intel_dp,
 void intel_dp_start_link_train(struct intel_dp *intel_dp,
 			       const struct intel_crtc_state *crtc_state)
 {
-	static bool passed;
+	bool passed;
 	/*
 	 * TODO: Reiniting LTTPRs here won't be needed once proper connector
 	 * HW state readout is added.
-- 
2.30.2

