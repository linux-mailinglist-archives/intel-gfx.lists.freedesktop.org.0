Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F4E578FE08
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Sep 2023 15:05:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C562B10E7CF;
	Fri,  1 Sep 2023 13:05:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EA2910E7CF
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Sep 2023 13:05:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693573510; x=1725109510;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vNLJDHnI3YWt/ZD9M/hL/boc0kreOPAJgbg7wzVKTH0=;
 b=P7A3hSVDkEeszNCLQI5T/399WcUgfjaYPrl4K0cfClcZr+eSP7+R4Prw
 C+FiFrnGn9eEeL+PBqIB/1TGH8XTvcuZcJO/TkVWT/u1sj27wJpWAUsPH
 1hB3Su23BXTc5eU8t/eGiQmPMZlfFv6Q8Z/I5ndwiKDeu9gKvVPE6eEkX
 jqUDO/tJdZazkTzDA08WVtVbSVD1Zyz7xvLSNkH0+Ir12n2tFHI+6UeaH
 pHKxXka+D92sqCUBOSw4+hlyN5DtKHlmgIkNjpzyAdXNkFZHqcGw0jeF9
 zzlTaSoWeZ+NO5Sz5Ei7DL90HI7IcZH/qeTjjhnBFcCjRtmJZSY7gxKPZ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="361240639"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="361240639"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2023 06:05:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="774995005"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="774995005"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by orsmga001.jf.intel.com with SMTP; 01 Sep 2023 06:05:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 01 Sep 2023 16:05:07 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 Sep 2023 16:04:36 +0300
Message-ID: <20230901130440.2085-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230901130440.2085-1-ville.syrjala@linux.intel.com>
References: <20230901130440.2085-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/12] drm/i915: Validate that the timings are
 within the VRR range
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

Let's assume there are some crazy displays where the high
end of the VRR range ends up being lower than the refresh
rate as determined by the actual timings. In that case
when we toggle VRR on/off we would step outside the VRR
range when toggling VRR on/off. Let's just make sure that
never happens by not using VRR in such cases. If the user
really wants VRR they should then select the timings to
land within the VRR range.

Cc: Manasi Navare <navaremanasi@chromium.org>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 6ef782538337..12731ad725a8 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -117,10 +117,10 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	const struct drm_display_info *info = &connector->base.display_info;
 	int vmin, vmax;
 
-	if (!intel_vrr_is_capable(connector))
+	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
 		return;
 
-	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
+	if (!intel_vrr_is_in_range(connector, drm_mode_vrefresh(adjusted_mode)))
 		return;
 
 	vmin = DIV_ROUND_UP(adjusted_mode->crtc_clock * 1000,
-- 
2.41.0

