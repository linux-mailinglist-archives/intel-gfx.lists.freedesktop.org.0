Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 57C5E1A8D55
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2020 23:11:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FC2389BF4;
	Tue, 14 Apr 2020 21:11:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEFBC89BF4
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Apr 2020 21:11:27 +0000 (UTC)
IronPort-SDR: x6Xzmm04EftWlLlQpD+TGZV2tvl+hQI7aA5zX+JUXbjgQfFaj1/blivpzfn8Fe9Q0XgeSlo9fu
 qP4rhomus5hw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2020 14:11:27 -0700
IronPort-SDR: EyteYygeow2jeUajY5JtWBURCm2IE7WNW58BXyN7jBsw9DPo21lfjJyyGRHOmceYXVCSZLiDi5
 cEOWhXyCby4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,384,1580803200"; d="scan'208";a="298814814"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Apr 2020 14:11:27 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Apr 2020 14:11:16 -0700
Message-Id: <20200414211118.2787489-2-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200414211118.2787489-1-matthew.d.roper@intel.com>
References: <20200414211118.2787489-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/tgl: Extend Wa_1409767108:tgl to
 B0 stepping
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Cc: Matt Atwood <matthew.s.atwood@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 433e5a81dd4d..6cc0e23ca566 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -5024,7 +5024,7 @@ static void tgl_bw_buddy_init(struct drm_i915_private *dev_priv)
 	const struct buddy_page_mask *table;
 	int i;
 
-	if (IS_TGL_REVID(dev_priv, TGL_REVID_A0, TGL_REVID_A0))
+	if (IS_TGL_REVID(dev_priv, TGL_REVID_A0, TGL_REVID_B0))
 		/* Wa_1409767108: tgl */
 		table = wa_1409767108_buddy_page_masks;
 	else
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
