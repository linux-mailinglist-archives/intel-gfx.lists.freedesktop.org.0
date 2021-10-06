Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EE85424849
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Oct 2021 22:50:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 319176EE7F;
	Wed,  6 Oct 2021 20:50:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B52EF6EE87
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Oct 2021 20:50:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10129"; a="206218904"
X-IronPort-AV: E=Sophos;i="5.85,352,1624345200"; d="scan'208";a="206218904"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2021 13:50:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,352,1624345200"; d="scan'208";a="524389909"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 06 Oct 2021 13:50:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 06 Oct 2021 23:50:17 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 Oct 2021 23:49:32 +0300
Message-Id: <20211006204937.30774-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211006204937.30774-1-ville.syrjala@linux.intel.com>
References: <20211006204937.30774-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/16] drm/i915: Query the vswing levels
 per-lane for snps phy
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

Prepare for per-lane drive settings by querying the desired vswing
level per-lane.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_snps_phy.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
index 5e20f340730f..c2251218a39e 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
@@ -58,7 +58,6 @@ void intel_snps_phy_set_signal_levels(struct intel_encoder *encoder,
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	const struct intel_ddi_buf_trans *trans;
 	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
-	int level = intel_ddi_level(encoder, crtc_state, 0);
 	int n_entries, ln;
 
 	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
@@ -66,6 +65,7 @@ void intel_snps_phy_set_signal_levels(struct intel_encoder *encoder,
 		return;
 
 	for (ln = 0; ln < 4; ln++) {
+		int level = intel_ddi_level(encoder, crtc_state, ln);
 		u32 val = 0;
 
 		val |= REG_FIELD_PREP(SNPS_PHY_TX_EQ_MAIN, trans->entries[level].snps.vswing);
-- 
2.32.0

