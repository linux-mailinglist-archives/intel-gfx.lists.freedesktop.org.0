Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5C5D79EC13
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Sep 2023 17:05:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2124E10E461;
	Wed, 13 Sep 2023 15:05:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A8FB10E461
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Sep 2023 15:05:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694617546; x=1726153546;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=I10CKN7GoFAQf/qAZwohOvj/Q7LBfwXpWRiOikbqB6w=;
 b=RxgJkdQqF7UUQmzc918Li7J0C9fq33TfCjp6PsOKp1nIPhrOz0vvx+xQ
 QbuoIeMY+13kAVd/Af7xW0Wb+n2tc4aoMenF7g5Ttd3rRYXgOLvJgjdYn
 avEv7FYlfN5UPnWzUK9HdxHSh/HGChBs8GhJ7tDn6mQwkdnt39+bCcGsi
 Mq7rt4SJG8Nag9gEGxFljh8NAaOAKQjx85ivGTKwgx4jAvYa9zJG8jf6R
 mHirGkIMnQrKNal1glJvouOXbg6YavwWW1pOL7L+w0GPX62ZSp5BLNRfx
 RWJU3pji0VUxRq+SWwxcz8y/h+f8pEnH5ZkK2UnTJ/dRqZkE11Ux6tPZc A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="363717924"
X-IronPort-AV: E=Sophos;i="6.02,143,1688454000"; d="scan'208";a="363717924"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2023 08:03:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="809696191"
X-IronPort-AV: E=Sophos;i="6.02,143,1688454000"; d="scan'208";a="809696191"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga008.fm.intel.com with SMTP; 13 Sep 2023 08:03:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 13 Sep 2023 18:03:56 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Sep 2023 18:03:55 +0300
Message-ID: <20230913150356.9477-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Check lane count when determining
 FEC support
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
Cc: Luca Coelho <luciano.coelho@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

ICL doesn't support FEC with a x1 DP link. Make sure
we don't try to enable FEC in such cases.

Requires a bit of reordering to make sure we've computed lane_count
before checking it.

Cc: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 21 +++++++++++----------
 1 file changed, 11 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 55ba6eeaa810..2cde8ac513bb 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1363,7 +1363,8 @@ static bool intel_dp_source_supports_fec(struct intel_dp *intel_dp,
 	if (DISPLAY_VER(dev_priv) >= 12)
 		return true;
 
-	if (DISPLAY_VER(dev_priv) == 11 && encoder->port != PORT_A)
+	if (DISPLAY_VER(dev_priv) == 11 &&
+	    encoder->port != PORT_A && pipe_config->lane_count != 1)
 		return true;
 
 	return false;
@@ -2105,15 +2106,6 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 		&pipe_config->hw.adjusted_mode;
 	int ret;
 
-	pipe_config->fec_enable = !intel_dp_is_edp(intel_dp) &&
-		intel_dp_supports_fec(intel_dp, pipe_config);
-
-	if (!intel_dp_supports_dsc(intel_dp, pipe_config))
-		return -EINVAL;
-
-	if (!intel_dp_dsc_supports_format(intel_dp, pipe_config->output_format))
-		return -EINVAL;
-
 	/*
 	 * compute pipe bpp is set to false for DP MST DSC case
 	 * and compressed_bpp is calculated same time once
@@ -2134,6 +2126,15 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 		}
 	}
 
+	pipe_config->fec_enable = !intel_dp_is_edp(intel_dp) &&
+		intel_dp_supports_fec(intel_dp, pipe_config);
+
+	if (!intel_dp_supports_dsc(intel_dp, pipe_config))
+		return -EINVAL;
+
+	if (!intel_dp_dsc_supports_format(intel_dp, pipe_config->output_format))
+		return -EINVAL;
+
 	/* Calculate Slice count */
 	if (intel_dp_is_edp(intel_dp)) {
 		pipe_config->dsc.slice_count =
-- 
2.41.0

