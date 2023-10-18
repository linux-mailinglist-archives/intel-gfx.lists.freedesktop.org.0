Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 677B77CE15E
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Oct 2023 17:41:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE8EB10E15B;
	Wed, 18 Oct 2023 15:41:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06B5010E15B
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Oct 2023 15:41:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697643696; x=1729179696;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=LY7Dfz6TpA8lsOx84bbQZX5p+Cz3NQ+iVhsJlOpF3QY=;
 b=BLAnFZm1suSUxwlovohAa5q7JfJMaWOpJmR/USvkwf9+Z3L8Ba6nqeaa
 ygsQtYXkkAkfXMWFgeNxLQFB5NgUE7HQ0tm8j7Qgr5GL57Q50QuZQm9b4
 Z7rAOCeOgf6uuYdqpHfbBAo+RYO2m4NnGC7A0MMtSeF6KhMh1VMwCR/eS
 swU7hIOdNr8vEI+THgHJ9FdIAyWFWIRZJAm5sECkPAFlkGMHSG/tb5kem
 fogFxmsBZsTarBLX0q69DMT18llpnO5n4WhvAEbFA3NoQl/NqVuWlkrOj
 m+idC478airebxOk6FV9fq/UwTatAOoyI+UgRc1pcFq9HjzAKPKWogacj Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="388902972"
X-IronPort-AV: E=Sophos;i="6.03,235,1694761200"; d="scan'208";a="388902972"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 08:41:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="733219385"
X-IronPort-AV: E=Sophos;i="6.03,235,1694761200"; d="scan'208";a="733219385"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga006.jf.intel.com with SMTP; 18 Oct 2023 08:41:33 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Oct 2023 18:41:33 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Oct 2023 18:41:22 +0300
Message-ID: <20231018154123.5479-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231018154123.5479-1-ville.syrjala@linux.intel.com>
References: <20231018154123.5479-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/mst: Clear ACT just before
 triggering payload allocation
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

Follow the bspec sequqnece more closely and clear ACT sent just
before triggering the allocation. Can't see why we'd want to
deviate from the spec sequence here.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 57eb581b8a50..3c66a3e3cc5e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -791,8 +791,6 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
 
 	drm_WARN_ON(&dev_priv->drm, pipe_config->has_pch_encoder);
 
-	clear_act_sent(encoder, pipe_config);
-
 	if (intel_dp_is_uhbr(pipe_config)) {
 		const struct drm_display_mode *adjusted_mode =
 			&pipe_config->hw.adjusted_mode;
@@ -806,6 +804,8 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
 
 	intel_ddi_enable_transcoder_func(encoder, pipe_config);
 
+	clear_act_sent(encoder, pipe_config);
+
 	intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL(trans), 0,
 		     TRANS_DDI_DP_VC_PAYLOAD_ALLOC);
 
-- 
2.41.0

