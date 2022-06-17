Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF12A54FB49
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jun 2022 18:40:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44A8710E5E8;
	Fri, 17 Jun 2022 16:40:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E48C10E58E
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jun 2022 16:40:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655484049; x=1687020049;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MkP4eKYv6L9/5yvOBQsO1A+bd2C7dP1cOpkpTVpirwo=;
 b=bpTSHOyySZgFXDaGmF8Q/QtUDz2xXUrtOouFiyv3trFwy2uVOGyvf8f4
 hzyTufC1OM9r2y1IhcUGUjxQZPK1mCB7yg4+10gE920bB1vZugkx3eIDp
 gI/uxfQ7awFUQn36JCNw3wGMuwOtCq+hqyUSa72tUfAX4Bfq9ePFd1LIq
 eLeFagKE+k3TR+rnE5tZXqHElI3eBPrGsD6I7nYdbR/dKOZjHxYHsO8mk
 euy3TnedN4YC1jKssEuqxcDpdvCye8Swg4y+Lesi05H18q0QFmVit6VpV
 IwQ8kkJDrR+IwB+GBnITsSWm1shqIU4xYHiJY/PYOkK0PXZonoSj+xksO w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="259336932"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="259336932"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2022 09:05:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="584059388"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by orsmga007.jf.intel.com with SMTP; 17 Jun 2022 09:05:35 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Jun 2022 19:05:34 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jun 2022 19:05:02 +0300
Message-Id: <20220617160510.2082-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220617160510.2082-1-ville.syrjala@linux.intel.com>
References: <20220617160510.2082-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 08/16] drm/i915: Make M/N checks non-fuzzy
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Now that we no longer fuzz M/N during fastset these should
match exctly.

In order to get a match with what the BIOS does we need to round
M/N down. And we do the opposite rounding when doing the readback.
That gets us pretty much the same thing back.

There can still be slight rounding differences between FDI M/N
vs. the DPLL output so we allow for tiny deviation in
intel_pipe_config_sanity_check().

v2: Tweak rounding/sanity check stuff a bit

Reviewed-by: Jani Nikula <jani.nikula@intel.com> #v1
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 52 ++++---------------
 .../drm/i915/display/intel_modeset_verify.c   |  6 +--
 2 files changed, 13 insertions(+), 45 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ef7454c5b947..81ed371e8700 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4575,7 +4575,8 @@ int intel_dotclock_calculate(int link_freq,
 	if (!m_n->link_n)
 		return 0;
 
-	return div_u64(mul_u32_u32(m_n->link_m, link_freq), m_n->link_n);
+	return DIV_ROUND_UP_ULL(mul_u32_u32(m_n->link_m, link_freq),
+				m_n->link_n);
 }
 
 int intel_crtc_dotclock(const struct intel_crtc_state *pipe_config)
@@ -5521,47 +5522,15 @@ bool intel_fuzzy_clock_check(int clock1, int clock2)
 	return false;
 }
 
-static bool
-intel_compare_m_n(unsigned int m, unsigned int n,
-		  unsigned int m2, unsigned int n2,
-		  bool exact)
-{
-	if (m == m2 && n == n2)
-		return true;
-
-	if (exact || !m || !n || !m2 || !n2)
-		return false;
-
-	BUILD_BUG_ON(DATA_LINK_M_N_MASK > INT_MAX);
-
-	if (n > n2) {
-		while (n > n2) {
-			m2 <<= 1;
-			n2 <<= 1;
-		}
-	} else if (n < n2) {
-		while (n < n2) {
-			m <<= 1;
-			n <<= 1;
-		}
-	}
-
-	if (n != n2)
-		return false;
-
-	return intel_fuzzy_clock_check(m, m2);
-}
-
 static bool
 intel_compare_link_m_n(const struct intel_link_m_n *m_n,
-		       const struct intel_link_m_n *m2_n2,
-		       bool exact)
+		       const struct intel_link_m_n *m2_n2)
 {
 	return m_n->tu == m2_n2->tu &&
-		intel_compare_m_n(m_n->data_m, m_n->data_n,
-				  m2_n2->data_m, m2_n2->data_n, exact) &&
-		intel_compare_m_n(m_n->link_m, m_n->link_n,
-				  m2_n2->link_m, m2_n2->link_n, exact);
+		m_n->data_m == m2_n2->data_m &&
+		m_n->data_n == m2_n2->data_n &&
+		m_n->link_m == m2_n2->link_m &&
+		m_n->link_n == m2_n2->link_n;
 }
 
 static bool
@@ -5755,8 +5724,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 
 #define PIPE_CONF_CHECK_M_N(name) do { \
 	if (!intel_compare_link_m_n(&current_config->name, \
-				    &pipe_config->name,\
-				    !fastset)) { \
+				    &pipe_config->name)) { \
 		pipe_config_mismatch(fastset, crtc, __stringify(name), \
 				     "(expected tu %i data %i/%i link %i/%i, " \
 				     "found tu %i, data %i/%i link %i/%i)", \
@@ -5803,9 +5771,9 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
  */
 #define PIPE_CONF_CHECK_M_N_ALT(name, alt_name) do { \
 	if (!intel_compare_link_m_n(&current_config->name, \
-				    &pipe_config->name, !fastset) && \
+				    &pipe_config->name) && \
 	    !intel_compare_link_m_n(&current_config->alt_name, \
-				    &pipe_config->name, !fastset)) { \
+				    &pipe_config->name)) { \
 		pipe_config_mismatch(fastset, crtc, __stringify(name), \
 				     "(expected tu %i data %i/%i link %i/%i, " \
 				     "or tu %i data %i/%i link %i/%i, " \
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
index a91586d77cb6..073607162acc 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
@@ -94,10 +94,10 @@ static void intel_pipe_config_sanity_check(struct drm_i915_private *dev_priv,
 
 		/*
 		 * FDI already provided one idea for the dotclock.
-		 * Yell if the encoder disagrees.
+		 * Yell if the encoder disagrees. Allow for slight
+		 * rounding differences.
 		 */
-		drm_WARN(&dev_priv->drm,
-			 !intel_fuzzy_clock_check(fdi_dotclock, dotclock),
+		drm_WARN(&dev_priv->drm, abs(fdi_dotclock - dotclock) > 1,
 			 "FDI dotclock and encoder dotclock mismatch, fdi: %i, encoder: %i\n",
 			 fdi_dotclock, dotclock);
 	}
-- 
2.35.1

