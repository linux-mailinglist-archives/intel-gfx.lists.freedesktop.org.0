Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D707D405FD2
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Sep 2021 01:02:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FF876E945;
	Thu,  9 Sep 2021 23:02:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 044546E93F
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Sep 2021 23:02:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10102"; a="243251441"
X-IronPort-AV: E=Sophos;i="5.85,281,1624345200"; d="scan'208";a="243251441"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2021 16:02:08 -0700
X-IronPort-AV: E=Sophos;i="5.85,281,1624345200"; d="scan'208";a="466798519"
Received: from rsalmerx-mobl.amr.corp.intel.com (HELO josouza-mobl2.intel.com)
 ([10.209.166.193])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2021 16:02:08 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Thu,  9 Sep 2021 16:07:23 -0700
Message-Id: <20210909230725.33735-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210909230725.33735-1-jose.souza@intel.com>
References: <20210909230725.33735-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/5] drm/i915/display: Wait at least 2 frames
 before selective update
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

BSpec states that the minimum number of frames before selective update
is 2, so making sure this minimum limit is fulfilled.

BSpec: 50422
Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 92c0b2159559f..1a3effa3ce709 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -510,7 +510,7 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 	if (DISPLAY_VER(dev_priv) >= 10 && DISPLAY_VER(dev_priv) <= 12)
 		val |= EDP_Y_COORDINATE_ENABLE;
 
-	val |= EDP_PSR2_FRAME_BEFORE_SU(intel_dp->psr.sink_sync_latency + 1);
+	val |= EDP_PSR2_FRAME_BEFORE_SU(max_t(u8, intel_dp->psr.sink_sync_latency + 1, 2));
 	val |= intel_psr2_get_tp_time(intel_dp);
 
 	/* Wa_22012278275:adl-p */
-- 
2.33.0

