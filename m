Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1A8E9B0914
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 18:02:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 488F110EB14;
	Fri, 25 Oct 2024 16:02:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JyYFTu/a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA3C810EB0D
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2024 16:02:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729872152; x=1761408152;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1YXb+6uJBcYGNh3ZeO/9v4QAUB0mKmX4ATzHaF/O+SI=;
 b=JyYFTu/aFZOSXotjCCjafPmRG8dnThvm/0aCdxEZop+iZtLym2H+gbk7
 ffwgzIC86HXI4tU2VWhzcJqc2Tz32YRxoqDcTS3TKDribPzrdkru6k1dP
 W+9JlTNgefBgeN+s1874P26OUeGLL1YyUVJr9FmSduVCoGFra3DdxFTyr
 oDfnnHGUO0m+26+IAw3PPckrOJbmm+1/OmU5TksMlGFI/VAYM1XDzgZFu
 ahbh0lagFa3NfXDmy8E85k9j6ij9KBeIDt+6KAE1hVxhBfenTh3ZOK7gn
 xjnwpa7ofZJaIB3VaFYJsdiMvuX8bVz5SYkRshONTwc6ixAlUhiwhZu+I g==;
X-CSE-ConnectionGUID: oHSrkg+zRCKQ9h62Ep29mw==
X-CSE-MsgGUID: FGofLLBwRSW+JnfQn9X0Og==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="33242386"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="33242386"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 09:02:31 -0700
X-CSE-ConnectionGUID: 3sKlrTJ5SU6g1XPVsUBb2g==
X-CSE-MsgGUID: kvekcTnSTIKGahiGLd7y2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,232,1725346800"; d="scan'208";a="81783701"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 09:02:31 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v5 3/8] drm/i915/dp: Initialize the source OUI write timestamp
 always
Date: Fri, 25 Oct 2024 19:02:54 +0300
Message-ID: <20241025160259.3088727-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20241025160259.3088727-1-imre.deak@intel.com>
References: <20241025160259.3088727-1-imre.deak@intel.com>
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

If the source OUI DPCD register value matches the expected Intel OUI
value, the write timestamp doesn't get updated leaving it at the 0
initial value if the OUI wasn't written before. This can lead to an
incorrect wait duration in intel_dp_wait_source_oui(), since jiffies is
not inited to 0 in general (on a 32 bit system INITIAL_JIFFIES is set to
5 minutes ahead of wrap-around). Fix this by intializing the write
timestamp in the above case as well.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 69a4e9c86d386..778cc33d3c690 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3415,8 +3415,11 @@ intel_edp_init_source_oui(struct intel_dp *intel_dp, bool careful)
 		if (drm_dp_dpcd_read(&intel_dp->aux, DP_SOURCE_OUI, buf, sizeof(buf)) < 0)
 			drm_err(&i915->drm, "Failed to read source OUI\n");
 
-		if (memcmp(oui, buf, sizeof(oui)) == 0)
+		if (memcmp(oui, buf, sizeof(oui)) == 0) {
+			/* Assume the OUI was written now. */
+			intel_dp->last_oui_write = jiffies;
 			return;
+		}
 	}
 
 	if (drm_dp_dpcd_write(&intel_dp->aux, DP_SOURCE_OUI, oui, sizeof(oui)) < 0)
-- 
2.44.2

