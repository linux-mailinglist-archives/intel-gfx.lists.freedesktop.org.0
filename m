Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3387F79EC14
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Sep 2023 17:05:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3FE610E46A;
	Wed, 13 Sep 2023 15:05:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1E2C10E461
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Sep 2023 15:05:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694617547; x=1726153547;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wNZV38sX1Sr1cYxfkXkbQ3Q/UfIDMb9SUJC1kNm8g4I=;
 b=MNyzbdI291F+mjqXncnFo2Pw5YumN/ukwcTu23lNMRvdRYE6DYUcUUye
 LyASltw+e7tMuIflhvTNa/MZ3nWrilTvnqIIkvdM0vGQc3uMko2GDt6uf
 BRC8WAmS9lxKFTaHDuRPtRPJ2sS057n1HFaCjNayUp4x0F/P1Uqnug524
 VfeoSlZprZ58CmPth+iHoOislh+uzLnzvJH0kda5OXMvyV7phXyc9kRhr
 WtjC2hILEcaUkof/LSGAR8QfnsSBGSElY/A6TFZ6apU7ZLuQxQFvvv2T7
 J9S1lzXmykeifGyQbp/ha6OYTTHxn6nfWXHm7f5kNtU83dGwbxM4Dgozz A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="363717931"
X-IronPort-AV: E=Sophos;i="6.02,143,1688454000"; d="scan'208";a="363717931"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2023 08:04:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="809696197"
X-IronPort-AV: E=Sophos;i="6.02,143,1688454000"; d="scan'208";a="809696197"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga008.fm.intel.com with SMTP; 13 Sep 2023 08:04:00 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 13 Sep 2023 18:03:59 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Sep 2023 18:03:56 +0300
Message-ID: <20230913150356.9477-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230913150356.9477-1-ville.syrjala@linux.intel.com>
References: <20230913150356.9477-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Require FEC for DSC on DP-MST
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

The current check just asserts that we need FEC to use DSC
with (non-eDP) DP-SST. But MST also needs FEC for DSC. Just
check for !eDP instead to cover all the cases correctly.

Cc: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 2cde8ac513bb..41f180f2879e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1380,7 +1380,7 @@ static bool intel_dp_supports_fec(struct intel_dp *intel_dp,
 static bool intel_dp_supports_dsc(struct intel_dp *intel_dp,
 				  const struct intel_crtc_state *crtc_state)
 {
-	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP) && !crtc_state->fec_enable)
+	if (!intel_dp_is_edp(intel_dp) && !crtc_state->fec_enable)
 		return false;
 
 	return intel_dsc_source_support(crtc_state) &&
-- 
2.41.0

