Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E817891034
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Mar 2024 02:13:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB72610E539;
	Fri, 29 Mar 2024 01:13:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hoeqrbUR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE7BB10E539
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Mar 2024 01:13:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711674804; x=1743210804;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=a3ntKU7QX+gSyhd9Gy6nzKjyfvZK33kkEsO2+4FSriA=;
 b=hoeqrbURTrufVaAK6KlPxrcf3C7+DX5ICYlVXDIiOhtn6TwvATemasna
 CDRkrixvnQ3en46AHyTo9Ui4fVSdYSzuVSnoHKWmXcKiDGuXfbQEURCgI
 rGJhzl6ePuph14e7vrdJLQKTkit5Qvt1ck4+qTrMRn0DG12BxZFLgcyBE
 z7IhzDTLMyD42ZSIDdTCkavQH655wp9RdC5a3LKYv9lh8upZhptCGhR8S
 k82wZsfN1LA10hcGA0cJFrlGPIKSwbRv5CKYrVkKLlP9CYFr7CpoeFk1L
 gHHdIOa1wH9tnr9mZGR88yDroJrr94F5pdWR8w+uZDlyM38k9kzHzTZLy A==;
X-CSE-ConnectionGUID: ve2p1qpNSTSliZ5N+uLi3A==
X-CSE-MsgGUID: SsVKig/BR1Oy9CBSRSpddA==
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="6756311"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; 
   d="scan'208";a="6756311"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 18:13:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="827786773"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; d="scan'208";a="827786773"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 28 Mar 2024 18:13:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 29 Mar 2024 03:13:20 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 09/22] drm/i915:
 s/intel_dp_can_bigjoiner()/intel_dp_can_bigjoiner()/
Date: Fri, 29 Mar 2024 03:12:41 +0200
Message-ID: <20240329011254.24160-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
References: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

Rename intel_dp_can_bigjoiner() to intel_dp_has_bigjoiner()
to better reflect its function.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 4 ++--
 drivers/gpu/drm/i915/display/intel_dp.h | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 2490ce32da50..402b3b8f6382 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -425,7 +425,7 @@ int intel_dp_max_link_data_rate(struct intel_dp *intel_dp,
 	return max_rate;
 }
 
-bool intel_dp_can_bigjoiner(struct intel_dp *intel_dp)
+bool intel_dp_has_bigjoiner(struct intel_dp *intel_dp)
 {
 	struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
 	struct intel_encoder *encoder = &intel_dig_port->base;
@@ -1199,7 +1199,7 @@ bool intel_dp_need_bigjoiner(struct intel_dp *intel_dp,
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	struct intel_connector *connector = intel_dp->attached_connector;
 
-	if (!intel_dp_can_bigjoiner(intel_dp))
+	if (!intel_dp_has_bigjoiner(intel_dp))
 		return false;
 
 	return clock > i915->max_dotclk_freq || hdisplay > 5120 ||
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index c540d3a73fe7..4a4b39f2748b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -119,7 +119,7 @@ int intel_dp_effective_data_rate(int pixel_clock, int bpp_x16,
 				 int bw_overhead);
 int intel_dp_max_link_data_rate(struct intel_dp *intel_dp,
 				int max_dprx_rate, int max_dprx_lanes);
-bool intel_dp_can_bigjoiner(struct intel_dp *intel_dp);
+bool intel_dp_has_bigjoiner(struct intel_dp *intel_dp);
 bool intel_dp_needs_vsc_sdp(const struct intel_crtc_state *crtc_state,
 			    const struct drm_connector_state *conn_state);
 void intel_dp_set_infoframes(struct intel_encoder *encoder, bool enable,
-- 
2.43.2

