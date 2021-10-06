Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 120E342483E
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Oct 2021 22:49:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D3C66EE79;
	Wed,  6 Oct 2021 20:49:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF68E6EE79
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Oct 2021 20:49:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10129"; a="226411739"
X-IronPort-AV: E=Sophos;i="5.85,352,1624345200"; d="scan'208";a="226411739"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2021 13:49:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,352,1624345200"; d="scan'208";a="568309600"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga002.fm.intel.com with SMTP; 06 Oct 2021 13:49:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 06 Oct 2021 23:49:46 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 Oct 2021 23:49:23 +0300
Message-Id: <20211006204937.30774-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211006204937.30774-1-ville.syrjala@linux.intel.com>
References: <20211006204937.30774-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/16] drm/i915: Shrink {icl_mg,
 tgl_dkl}_phy_ddi_buf_trans
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

All the values we have in {icl_mg,tgl_dkl}_phy_ddi_buf_trans
fit into u8. Shrink the types accordingly.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
index 82fdc5ecd9de..2133984a572b 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
@@ -34,15 +34,15 @@ struct icl_ddi_buf_trans {
 };
 
 struct icl_mg_phy_ddi_buf_trans {
-	u32 cri_txdeemph_override_11_6;
-	u32 cri_txdeemph_override_5_0;
-	u32 cri_txdeemph_override_17_12;
+	u8 cri_txdeemph_override_11_6;
+	u8 cri_txdeemph_override_5_0;
+	u8 cri_txdeemph_override_17_12;
 };
 
 struct tgl_dkl_phy_ddi_buf_trans {
-	u32 vswing;
-	u32 preshoot;
-	u32 de_emphasis;
+	u8 vswing;
+	u8 preshoot;
+	u8 de_emphasis;
 };
 
 struct dg2_snps_phy_buf_trans {
-- 
2.32.0

