Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AB777C6E01
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 14:25:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9BCF10E4C9;
	Thu, 12 Oct 2023 12:25:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 883F110E4C9
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Oct 2023 12:25:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697113500; x=1728649500;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=jo0z0ZdgeuC7yAPkPXQNUg2LXkblkM3rgd7g2cBzt40=;
 b=iCq+40SDT+g+ZTOfwnQDha/Iu61qOqOO85DVCklT1YRXJzyY0Vcvr2gh
 q6vnKScvWee7T3MJQXcFZcrK56WZhclYBx5noB9Y8vW04x1G2X/19aLQZ
 IB0tXDCYn95lOgDpQbk6HONcZukyxVGVEffmRDstEE3IuLeasKwgkwDDz
 RacD1NsPb/lS41PGVomLIngswrX3ES/FFhri5+zVucvEDO2HLgDMWHcWY
 chSEoAHkxhdBIjqbPXQijQ3jBCxSySFWnM3wCLPPAXwP+0ffT4GkJqrJS
 dZMzzkgPGs9oDFnqcPQhEKJ+so4/Vnr5EYZ51HU5tjVFy3B3MNf9zV0j4 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="382140860"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="382140860"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 05:25:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="844979071"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="844979071"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by FMSMGA003.fm.intel.com with SMTP; 12 Oct 2023 05:24:58 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 12 Oct 2023 15:24:57 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Oct 2023 15:24:41 +0300
Message-ID: <20231012122442.15718-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231012122442.15718-1-ville.syrjala@linux.intel.com>
References: <20231012122442.15718-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/6] drm/i915/pxp: Clean up zero initializers
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

Just use a simple {} to zero initialize arrays/structs instead
of the hodgepodge of stuff we are using currently.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c | 8 ++++----
 drivers/gpu/drm/i915/pxp/intel_pxp_huc.c   | 4 ++--
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c   | 8 ++++----
 3 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c b/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c
index 27402ecf0457..75df959b0aa0 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c
@@ -209,8 +209,8 @@ int intel_pxp_gsccs_create_session(struct intel_pxp *pxp,
 				   int arb_session_id)
 {
 	struct drm_i915_private *i915 = pxp->ctrl_gt->i915;
-	struct pxp43_create_arb_in msg_in = {0};
-	struct pxp43_create_arb_out msg_out = {0};
+	struct pxp43_create_arb_in msg_in = {};
+	struct pxp43_create_arb_out msg_out = {};
 	int ret;
 
 	msg_in.header.api_version = PXP_APIVER(4, 3);
@@ -247,8 +247,8 @@ int intel_pxp_gsccs_create_session(struct intel_pxp *pxp,
 void intel_pxp_gsccs_end_arb_fw_session(struct intel_pxp *pxp, u32 session_id)
 {
 	struct drm_i915_private *i915 = pxp->ctrl_gt->i915;
-	struct pxp42_inv_stream_key_in msg_in = {0};
-	struct pxp42_inv_stream_key_out msg_out = {0};
+	struct pxp42_inv_stream_key_in msg_in = {};
+	struct pxp42_inv_stream_key_out msg_out = {};
 	int ret = 0;
 
 	/*
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c b/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
index 5eedce916942..0e609547bef8 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
@@ -18,8 +18,8 @@ int intel_pxp_huc_load_and_auth(struct intel_pxp *pxp)
 {
 	struct intel_gt *gt;
 	struct intel_huc *huc;
-	struct pxp43_start_huc_auth_in huc_in = {0};
-	struct pxp43_huc_auth_out huc_out = {0};
+	struct pxp43_start_huc_auth_in huc_in = {};
+	struct pxp43_huc_auth_out huc_out = {};
 	dma_addr_t huc_phys_addr;
 	u8 client_id = 0;
 	u8 fence_id = 0;
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
index bb58fa9579b8..9327701da1b5 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
@@ -327,8 +327,8 @@ int intel_pxp_tee_cmd_create_arb_session(struct intel_pxp *pxp,
 					 int arb_session_id)
 {
 	struct drm_i915_private *i915 = pxp->ctrl_gt->i915;
-	struct pxp42_create_arb_in msg_in = {0};
-	struct pxp42_create_arb_out msg_out = {0};
+	struct pxp42_create_arb_in msg_in = {};
+	struct pxp42_create_arb_out msg_out = {};
 	int ret;
 
 	msg_in.header.api_version = PXP_APIVER(4, 2);
@@ -365,8 +365,8 @@ int intel_pxp_tee_cmd_create_arb_session(struct intel_pxp *pxp,
 void intel_pxp_tee_end_arb_fw_session(struct intel_pxp *pxp, u32 session_id)
 {
 	struct drm_i915_private *i915 = pxp->ctrl_gt->i915;
-	struct pxp42_inv_stream_key_in msg_in = {0};
-	struct pxp42_inv_stream_key_out msg_out = {0};
+	struct pxp42_inv_stream_key_in msg_in = {};
+	struct pxp42_inv_stream_key_out msg_out = {};
 	int ret, trials = 0;
 
 try_again:
-- 
2.41.0

