Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85D3C7B83B5
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Oct 2023 17:36:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB10910E18F;
	Wed,  4 Oct 2023 15:36:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D91ED10E18F
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Oct 2023 15:36:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696433771; x=1727969771;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=VgFjBxasHjESg//gzXo2YmmnXylHASFEG44gZmVjC6o=;
 b=MhV6HjV702ZHzVPsJWRYIXskvYRnFDaE+FnCkFGyEj//mzSNAgzVK9HM
 QXj7wKUXhXoIVUguV+19QPeWPBw8qOHN0E4/cnECMyosrlVtwISbR6LM2
 kgHh/OyXc2JdClxyhx3G/3EF6qwlF9kdmw2456N43ivESSkPkWJUiBjU3
 N5HxzuS+72tO/w0r+9XF4af69kwNuOOCdYcYNymPgjwaPLGWWDWCOKmo/
 leK+vEuuzmETyiO1evJqXfXxdRWV9xqY2XwAXRhXXv35kYamAp6Fx73vR
 EEFRbo5GBrzFBTQnMYvY2/G2P7Ej57z/esHukQnkS07NAfydqqonz4M9J g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="4768464"
X-IronPort-AV: E=Sophos;i="6.03,200,1694761200"; 
   d="scan'208";a="4768464"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 08:36:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="867430903"
X-IronPort-AV: E=Sophos;i="6.03,200,1694761200"; d="scan'208";a="867430903"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga002.fm.intel.com with SMTP; 04 Oct 2023 08:36:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 04 Oct 2023 18:36:07 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Oct 2023 18:36:07 +0300
Message-ID: <20231004153607.21629-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230913150356.9477-2-ville.syrjala@linux.intel.com>
References: <20230913150356.9477-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915: Require FEC for DSC on DP-MST
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

The current check just asserts that we need FEC to use DSC
with (non-eDP) DP-SST. But MST also needs FEC for DSC. Just
check for !eDP instead to cover all the cases correctly.

v2: DP2/UHBR always uses FEC even though we don't flag it (Jani)

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 2cde8ac513bb..d411538118f8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1377,10 +1377,15 @@ static bool intel_dp_supports_fec(struct intel_dp *intel_dp,
 		drm_dp_sink_supports_fec(intel_dp->fec_capable);
 }
 
+static bool intel_dp_is_fec_enabled(const struct intel_crtc_state *crtc_state)
+{
+	return intel_dp_is_uhbr(crtc_state) || crtc_state->fec_enable;
+}
+
 static bool intel_dp_supports_dsc(struct intel_dp *intel_dp,
 				  const struct intel_crtc_state *crtc_state)
 {
-	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP) && !crtc_state->fec_enable)
+	if (!intel_dp_is_edp(intel_dp) && !intel_dp_is_fec_enabled(crtc_state))
 		return false;
 
 	return intel_dsc_source_support(crtc_state) &&
@@ -2127,6 +2132,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	}
 
 	pipe_config->fec_enable = !intel_dp_is_edp(intel_dp) &&
+		!intel_dp_is_uhbr(pipe_config) &&
 		intel_dp_supports_fec(intel_dp, pipe_config);
 
 	if (!intel_dp_supports_dsc(intel_dp, pipe_config))
-- 
2.41.0

