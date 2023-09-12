Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9989079D0AE
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 14:06:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D9A310E416;
	Tue, 12 Sep 2023 12:06:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1D6A10E05A
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Sep 2023 12:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694520360; x=1726056360;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6QrzqQD+x5IZwdpLrXRB5M1IR8xkM6tFUwZ5ECRKBIc=;
 b=Vh6npY5O1Wx+ra+ZDvq/fd2NmtrO/rXMlzHzfhse+qficXFvvn6/L1Ym
 VoJE3OL/o+N/IPb5t72pLf0cXtdwDOLRPHSZ8yflrRO+GQu8J+pzQtU3x
 kJicSMk3uHNCR/H2itA8GHcE0xg2wWBjKWzqe223BoTb28S9AaYiS+dtN
 4YEsd2WE5sn9KjQJPa/i3ic68Ad/f/N/A5ui6JvAl7SuSbe/qJp/rDe5X
 57r/OKK9AvkyUBhjSVaywQUA36uFeXo5TKEXoB63vawLme+cDpM6/NUlV
 kyvhFFNZwwHeTbrGC5QXdX5GvFTF47TqwTR+YycCfXw1+q7g7pdt5Zq20 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="377268090"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="377268090"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 05:06:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="746857489"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="746857489"
Received: from kscholl-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.63.206])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 05:05:47 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 12 Sep 2023 15:05:36 +0300
Message-Id: <20230912120537.2158209-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230912120537.2158209-1-jani.nikula@intel.com>
References: <20230912120537.2158209-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/display: call gmdid display probe
 at a higher level
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
Cc: jani.nikula@intel.com, Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move gmdid selection one abstraction level higher.

Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_device.c | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index ed564566e31b..4a6c4ee503b2 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -851,15 +851,11 @@ probe_gmdid_display(struct drm_i915_private *i915, u16 *ver, u16 *rel, u16 *step
 }
 
 static const struct intel_display_device_info *
-probe_display(struct drm_i915_private *i915, bool has_gmdid,
-	      u16 *gmdid_ver, u16 *gmdid_rel, u16 *gmdid_step)
+probe_display(struct drm_i915_private *i915)
 {
 	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
 	int i;
 
-	if (has_gmdid)
-		return probe_gmdid_display(i915, gmdid_ver, gmdid_rel, gmdid_step);
-
 	if (has_no_display(pdev)) {
 		drm_dbg_kms(&i915->drm, "Device doesn't have display\n");
 		return &no_display;
@@ -878,11 +874,16 @@ probe_display(struct drm_i915_private *i915, bool has_gmdid,
 
 void intel_display_device_probe(struct drm_i915_private *i915)
 {
+	const struct intel_display_device_info *info;
 	u16 ver, rel, step;
 
-	/* Probe display support */
-	i915->display.info.__device_info = probe_display(i915, HAS_GMD_ID(i915),
-							 &ver, &rel, &step);
+	if (HAS_GMD_ID(i915))
+		info = probe_gmdid_display(i915, &ver, &rel, &step);
+	else
+		info = probe_display(i915);
+
+	i915->display.info.__device_info = info;
+
 	memcpy(DISPLAY_RUNTIME_INFO(i915),
 	       &DISPLAY_INFO(i915)->__runtime_defaults,
 	       sizeof(*DISPLAY_RUNTIME_INFO(i915)));
-- 
2.39.2

