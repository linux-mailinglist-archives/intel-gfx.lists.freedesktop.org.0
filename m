Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B68B74D9C2D
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 14:28:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F423B10E47D;
	Tue, 15 Mar 2022 13:28:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81FC310E422
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Mar 2022 13:28:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647350892; x=1678886892;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=TYnwqzjntIaoY3AhSZ3wAC22u4jLnCilsNhw9tyKNFQ=;
 b=n4ML27rMvCsPqYFT5YpbZjXeVt5D8YeZ7x4vLYb8eSzzZ5qZZ/LwmrQ6
 nvz4K4GejVUY96kwE/vumuWWh3K9T4LMC7F86GhpecFOKIWKCmWPI2lbX
 y0XvdI00oSi1aCJTj7Gt2DkShFFSjrHHosge4cuJo4P5FmXOL+MNdgJAH
 +DyrYV6LsvqibfoY5kDSnrU+teOkuBVX1yPPKxxEzhjBrILyn8Lp7xfft
 bncbJF2zTTwZl4IsPevyypiKgvkO6OiR6KLwlMLQzsgvrGglph7YekHzU
 PCUMrGrz7mZfDv24prmmeD/7CPlM/KqG+H+GaePQxtoEPjFWEGX9UgsN9 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="256250018"
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; d="scan'208";a="256250018"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 06:28:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; d="scan'208";a="549595226"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga007.fm.intel.com with SMTP; 15 Mar 2022 06:27:59 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 15 Mar 2022 15:27:58 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Mar 2022 15:27:45 +0200
Message-Id: <20220315132752.11849-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220315132752.11849-1-ville.syrjala@linux.intel.com>
References: <20220315132752.11849-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/9] drm/i915: Add missing tab to DRRS debugfs
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

The DRRS refresh rate should be indented by one tab like the
other per-crtc DRRS stuff.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index b3d426cc3266..e0a126e7ebb8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1171,7 +1171,7 @@ static int i915_drrs_status(struct seq_file *m, void *unused)
 		seq_printf(m, "\tBusy_frontbuffer_bits: 0x%X\n",
 			   crtc->drrs.busy_frontbuffer_bits);
 
-		seq_printf(m, "DRRS refresh rate: %s\n",
+		seq_printf(m, "\tDRRS refresh rate: %s\n",
 			   crtc->drrs.refresh_rate == DRRS_REFRESH_RATE_LOW ?
 			   "low" : "high");
 
-- 
2.34.1

