Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E380195084
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2020 06:25:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57A8D6E97C;
	Fri, 27 Mar 2020 05:25:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D7BC6E32D
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Mar 2020 05:25:24 +0000 (UTC)
IronPort-SDR: 2qKDdR8vs1/ciExbshi4Qu3NJtJfkTUKeyX2h8LbaL12zuMY67niiQN4p67c4pJfh357g843Sb
 7cKQgXOq/1LQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2020 22:25:24 -0700
IronPort-SDR: RqwbBK+ev44BmrxywEFPQ8kNV9/JWcD+MJEVi5wGuqUgxK30eFW/dySgY3cPLKklM27MSUxa/J
 jsipyhlQ/vgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,311,1580803200"; d="scan'208";a="394268155"
Received: from vipinana-nuc7i7bnh.iind.intel.com ([10.66.179.10])
 by orsmga004.jf.intel.com with ESMTP; 26 Mar 2020 22:25:23 -0700
From: Vipin Anand <vipin.anand@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Mar 2020 10:53:54 +0530
Message-Id: <20200327052357.22269-5-vipin.anand@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200327052357.22269-1-vipin.anand@intel.com>
References: <20200327052357.22269-1-vipin.anand@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/7] drm/i915/display: Set HDR Infoframe for HDR
 capable LSPCON devices
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

From: Uma Shankar <uma.shankar@intel.com>

Send Dynamic Range and Mastering Infoframe (DRM for HDR metadata)
as SDP packet to LSPCON following the DP spec. LSPCON receives the
same and sends it to HDMI sink.

v2: Suppressed some warnings. No functional change.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/drm_atomic_state_helper.c   | 1 +
 drivers/gpu/drm/drm_atomic_uapi.c           | 1 +
 drivers/gpu/drm/i915/display/intel_lspcon.h | 1 +
 include/drm/drm_connector.h                 | 1 +
 4 files changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/drm_atomic_state_helper.c b/drivers/gpu/drm/drm_atomic_state_helper.c
index 7cf3cf936547..7cf98c06f424 100644
--- a/drivers/gpu/drm/drm_atomic_state_helper.c
+++ b/drivers/gpu/drm/drm_atomic_state_helper.c
@@ -468,6 +468,7 @@ __drm_atomic_helper_connector_duplicate_state(struct drm_connector *connector,
 
 	if (state->hdr_output_metadata)
 		drm_property_blob_get(state->hdr_output_metadata);
+	state->hdr_metadata_changed = false;
 
 	/* Don't copy over a writeback job, they are used only once */
 	state->writeback_job = NULL;
diff --git a/drivers/gpu/drm/drm_atomic_uapi.c b/drivers/gpu/drm/drm_atomic_uapi.c
index a1e5e262bae2..4c520e0b9872 100644
--- a/drivers/gpu/drm/drm_atomic_uapi.c
+++ b/drivers/gpu/drm/drm_atomic_uapi.c
@@ -734,6 +734,7 @@ static int drm_atomic_connector_set_property(struct drm_connector *connector,
 				val,
 				sizeof(struct hdr_output_metadata), -1,
 				&replaced);
+		state->hdr_metadata_changed |= replaced;
 		return ret;
 	} else if (property == config->aspect_ratio_property) {
 		state->picture_aspect_ratio = val;
diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.h b/drivers/gpu/drm/i915/display/intel_lspcon.h
index b2051f236223..bc34124f532e 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.h
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.h
@@ -38,4 +38,5 @@ void lspcon_drm_write_infoframe(struct intel_encoder *encoder,
 				const struct intel_crtc_state *crtc_state,
 				unsigned int type,
 				const void *frame, ssize_t len);
+
 #endif /* __INTEL_LSPCON_H__ */
diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
index 221910948b37..28df268aa1a7 100644
--- a/include/drm/drm_connector.h
+++ b/include/drm/drm_connector.h
@@ -661,6 +661,7 @@ struct drm_connector_state {
 	 * DRM blob property for HDR output metadata
 	 */
 	struct drm_property_blob *hdr_output_metadata;
+	u8 hdr_metadata_changed : 1;
 };
 
 /**
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
