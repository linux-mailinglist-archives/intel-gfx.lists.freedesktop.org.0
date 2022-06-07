Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC98D540F70
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jun 2022 21:08:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8ED2B10E1B9;
	Tue,  7 Jun 2022 19:08:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99B7F10E1B9;
 Tue,  7 Jun 2022 19:08:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654628916; x=1686164916;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=otw6I5b3sne75xQO8E/KPSr+ohwyA81q5xWmSNupFU8=;
 b=a2iTRuFoUqXUtlWdOtSaDxFi2VprSbGstbhh+p56snRVjBpnGy2kFds+
 JAHgUdcM9yrdP97S2gw1DhRSyuL9FaWBqMQQQL3RRrdXw3hM3aWFbTyB0
 3vj1fQ7Da4PSgldM31oVabdD180kpv+jj1OK7U2SC/6WByIEkTqbDrqvb
 8RuEF8izkwD/k/gOQkqPZemdJSLCF6y5s8gWNfT4DynAFOw3/GdRCYMSF
 UK1Sb3Ynx5wx986fFFBK8EtHiiThQnNK0cEOQLYazFlS7bQSOz6c6i/4X
 4QjawaDDe51BxdJWpqKxx7RMvR3vVyRup7sWbmiUNhphqdlhpU8uB1YNm w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10371"; a="277683326"
X-IronPort-AV: E=Sophos;i="5.91,284,1647327600"; d="scan'208";a="277683326"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2022 10:57:28 -0700
X-IronPort-AV: E=Sophos;i="5.91,284,1647327600"; d="scan'208";a="826466612"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2022 10:57:27 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Jun 2022 10:57:16 -0700
Message-Id: <20220607175716.3338661-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/xehp: Correct steering initialization
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Another mistake during the conversion to DSS bitmaps:  after retrieving
the DSS ID intel_sseu_find_first_xehp_dss() we forgot to modulo it down
to obtain which ID within the current gslice it is.

Fixes: b87d39019651 ("drm/i915/sseu: Disassociate internal subslice mask representation from uapi")
Cc: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index b7421f109c13..a5c0508c5b63 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1177,8 +1177,8 @@ xehp_init_mcr(struct intel_gt *gt, struct i915_wa_list *wal)
 	}
 
 	slice = __ffs(slice_mask);
-	subslice = intel_sseu_find_first_xehp_dss(sseu, GEN_DSS_PER_GSLICE, slice);
-	WARN_ON(subslice > GEN_DSS_PER_GSLICE);
+	subslice = intel_sseu_find_first_xehp_dss(sseu, GEN_DSS_PER_GSLICE, slice) %
+		GEN_DSS_PER_GSLICE;
 
 	__add_mcr_wa(gt, wal, slice, subslice);
 
-- 
2.35.3

