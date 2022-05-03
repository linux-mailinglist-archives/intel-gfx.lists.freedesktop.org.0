Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F2D0518C3A
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 20:23:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FE9D10E9A7;
	Tue,  3 May 2022 18:23:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0443710E4AA
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 18:23:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651602211; x=1683138211;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=GlLSzVn6Wpa3L70dOBzmFq/CETJzG49sYGQsTPdF1Vk=;
 b=aq5tNs/kHuJG79kXRG8IKPplwH61U21owYF56/Fjjvzl/uMuqNZp1Iin
 m5I4aVhzpHz2rvPTSedWsDEmzNWQtid0yj+04uoJtwUDb8iTL/cTGuoY8
 EGs5Ob25xzfwtMVvxwYAVqvlckvJCnA6wtzUSnzq9rVBlMJIfgbroWF1z
 GFujW5iWAO9GIRKJ/lzKnEnu3NHYnQsMswOYFMNuGDKC7p9BavkeqhJGq
 b5uBqQ/s8PWJYFVqy0Wsb0orbRX9F168lNWKy63pRSnDnhF1SpsM2mph2
 jZuIs9t/ChKmhve2s3kWIx+ZwRFE+YcCphjqvkXGDyefue44XzhTGfnej A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10336"; a="266396895"
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="266396895"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 11:23:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="664084971"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by fmsmga002.fm.intel.com with SMTP; 03 May 2022 11:23:28 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 May 2022 21:23:28 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 May 2022 21:22:31 +0300
Message-Id: <20220503182242.18797-16-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
References: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 15/26] drm/i915: Make M/N checks non-fuzzy
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

Now that we no longer fuzz M/N during fastset these should
match exctly.

TODO: we may need to do something for fastboot here as the
VBIOS/GOP may not compute M/N exactly the same way we do.
Though I guess we could try to match the VBIOS/GOP exactly.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 49 ++++----------------
 1 file changed, 8 insertions(+), 41 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 86971be92e57..198c6340a463 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5832,47 +5832,15 @@ bool intel_fuzzy_clock_check(int clock1, int clock2)
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
@@ -6066,8 +6034,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 
 #define PIPE_CONF_CHECK_M_N(name) do { \
 	if (!intel_compare_link_m_n(&current_config->name, \
-				    &pipe_config->name,\
-				    !fastset)) { \
+				    &pipe_config->name)) { \
 		pipe_config_mismatch(fastset, crtc, __stringify(name), \
 				     "(expected tu %i data %i/%i link %i/%i, " \
 				     "found tu %i, data %i/%i link %i/%i)", \
@@ -6114,9 +6081,9 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
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
-- 
2.35.1

