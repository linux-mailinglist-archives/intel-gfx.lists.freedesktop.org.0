Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AE1A7B844D
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Oct 2023 17:56:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5BCC10E18F;
	Wed,  4 Oct 2023 15:56:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BED810E18F
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Oct 2023 15:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696434985; x=1727970985;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=P8fSaQc9XS5wRleJKAIqpN1r4K+XmbMQg6PWOiBK8p4=;
 b=BYa5xQFv5TBDvKJbtqSpDzTtyhp8P4wSyB/XfPN7sTXf7n1MwTR3yGf2
 F6/xWy6hkPnL/vUB6h99XXmergmX1k7dhMKOEnjpkZDm5h+BmnODL0sPE
 lxr9EsFFt7gYkoMAmzy1CBINDEnnIBk5JXikBc6IrYg0mPLncJkhybCs8
 R/WKbxqatVUyY4HOd3j4jgccJ+eEH+4z6NBT0mBZhv/S9Ga0CB0kf09fw
 Um2HWUAuNGb5Eellmo5X9Mfn/oMDkaRUTLyBsVDzQ8uIoaqfpXfrNswC1
 brHzfT/FD23UUh9TWjrQ6UGb7ShGVGwNPaH27bfalzrFsCbXnnwz0mMXe Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="363483790"
X-IronPort-AV: E=Sophos;i="6.03,200,1694761200"; d="scan'208";a="363483790"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 08:56:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="867441051"
X-IronPort-AV: E=Sophos;i="6.03,200,1694761200"; d="scan'208";a="867441051"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga002.fm.intel.com with SMTP; 04 Oct 2023 08:56:23 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 04 Oct 2023 18:56:22 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Oct 2023 18:56:00 +0300
Message-ID: <20231004155607.7719-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231004155607.7719-1-ville.syrjala@linux.intel.com>
References: <20231004155607.7719-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/12] drm/i915: Constify watermark state checker
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

The skl+ wm state checker has no reason to modify the crtc state,
so make it const.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 2 +-
 drivers/gpu/drm/i915/display/skl_watermark.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 846e9a3e94dc..d51cf92c96ae 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3135,7 +3135,7 @@ static void skl_wm_get_hw_state_and_sanitize(struct drm_i915_private *i915)
 }
 
 void intel_wm_state_verify(struct intel_crtc *crtc,
-			   struct intel_crtc_state *new_crtc_state)
+			   const struct intel_crtc_state *new_crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct skl_hw_state {
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/drm/i915/display/skl_watermark.h
index edb61e33df83..18e4b0661cbb 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.h
+++ b/drivers/gpu/drm/i915/display/skl_watermark.h
@@ -39,7 +39,7 @@ bool skl_ddb_allocation_overlaps(const struct skl_ddb_entry *ddb,
 				 int num_entries, int ignore_idx);
 
 void intel_wm_state_verify(struct intel_crtc *crtc,
-			   struct intel_crtc_state *new_crtc_state);
+			   const struct intel_crtc_state *new_crtc_state);
 
 void skl_watermark_ipc_init(struct drm_i915_private *i915);
 void skl_watermark_ipc_update(struct drm_i915_private *i915);
-- 
2.41.0

