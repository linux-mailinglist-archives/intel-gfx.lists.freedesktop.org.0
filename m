Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C268C8889
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2024 16:54:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70D5710EEF8;
	Fri, 17 May 2024 14:54:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B/q2cwpz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBDA310EEF5
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2024 14:54:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715957651; x=1747493651;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=KIcqWJWD5ntbikLN63K4z2+Kto0RbJB6GwcoC7gsW/g=;
 b=B/q2cwpz8NpDw4Cmkr0tTSHGb/BAX5ocEkDIXj01CPYXb7tyQOdRzp5a
 pgPUlF4vdMiQyspc9rdHfp3B25eUlrkm8c6tBvyfz3iVIpGmHFi3S/hT8
 IodIfHOpXYeWkZDl+0RX5vvx3E02yfqtxt3MYK6EUTsCSKrRnix63e99G
 jHoaR1OkHyFv4ncdcBZHMWkqsTiXBd6RML4g0MWIYCCiEpnbRCZY4Tg5C
 ZdwfcaUYTetA2uT6esyIsH8jc7laA5NEx42k05uj3Q4CsaSBVgJ4TYxwI
 Jp08F2dGk0GDxShssjLg5uBct1qI4CLunQb/sUIt+0/jf625LP1ueluSs g==;
X-CSE-ConnectionGUID: f1IAbUn3Q/qOqe/5tKLjSw==
X-CSE-MsgGUID: TcYn7q14RTSoOjc/+sR6ug==
X-IronPort-AV: E=McAfee;i="6600,9927,11075"; a="12008029"
X-IronPort-AV: E=Sophos;i="6.08,168,1712646000"; d="scan'208";a="12008029"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2024 07:54:05 -0700
X-CSE-ConnectionGUID: pRB+tCgcR+ekYmjYjmLn6A==
X-CSE-MsgGUID: dNjjqjjMRfGzMAuJMpSsJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,168,1712646000"; d="scan'208";a="31800953"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 17 May 2024 07:54:03 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 May 2024 17:54:02 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/7] drm/i915: Extract intel_dp_has_dsc()
Date: Fri, 17 May 2024 17:53:51 +0300
Message-ID: <20240517145356.26103-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.1
In-Reply-To: <20240517145356.26103-1-ville.syrjala@linux.intel.com>
References: <20240517145356.26103-1-ville.syrjala@linux.intel.com>
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

Extract a helper to check whether the source+sink combo
supports DSC. That basic check is needed both during mode
validation and compute config. We'll also need to add extra
checks to both places, so having a single place for it is nicer.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1e88449fe5f2..7bf283b4df7f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1220,6 +1220,19 @@ bool intel_dp_need_bigjoiner(struct intel_dp *intel_dp,
 	       connector->force_bigjoiner_enable;
 }
 
+static bool intel_dp_has_dsc(struct intel_connector *connector)
+{
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+
+	if (!HAS_DSC(i915))
+		return false;
+
+	if (!drm_dp_sink_supports_dsc(connector->dp.dsc_dpcd))
+		return false;
+
+	return true;
+}
+
 static enum drm_mode_status
 intel_dp_mode_valid(struct drm_connector *_connector,
 		    struct drm_display_mode *mode)
@@ -1274,8 +1287,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	mode_rate = intel_dp_link_required(target_clock,
 					   intel_dp_mode_min_output_bpp(connector, mode));
 
-	if (HAS_DSC(dev_priv) &&
-	    drm_dp_sink_supports_dsc(connector->dp.dsc_dpcd)) {
+	if (intel_dp_has_dsc(connector)) {
 		enum intel_output_format sink_format, output_format;
 		int pipe_bpp;
 
-- 
2.44.1

