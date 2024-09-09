Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC9D2971BD3
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 15:56:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B69210E593;
	Mon,  9 Sep 2024 13:56:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XF1isguX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB88110E593
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2024 13:56:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725890168; x=1757426168;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DNAO2+ehxQwWr5Vvbprq1N7fYyLSUdiSf+wc1fwqsak=;
 b=XF1isguXujB03zIDMO1Jj7VwMaKjKvLdMpvXLPQn+mFdH+1MF09CVXMv
 WBxSUd3pHr0prhkI49AVkboihV7pofJEQOM3S1B9gyWIlB9SDYWMRmtKK
 USsvi+4eIbx+qS39i3FvX8AL4QpR+FiA41c/CmV3OF1pdOgsteuic/E8+
 Ip2W6+klzsGNDXT+diIfvzG2jHCulEzaoQJYYJG6SnV8FTfRfDNgJAgQ9
 PvFJb7jcE0M/mZ3YAl0m+0l/maJgSDbO6XrknEA1z4vNcrmESbCssfSgW
 9PDRIbnQn6XHCwSJtBGlPxm4TWxPfgCM3c+cDnjx8deYPisk21C/6LZDZ w==;
X-CSE-ConnectionGUID: NZWbW+pOS5+HMU5xKEHE8Q==
X-CSE-MsgGUID: AU0dl1QET4q94mJs/fD1pg==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="24780405"
X-IronPort-AV: E=Sophos;i="6.10,214,1719903600"; d="scan'208";a="24780405"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 06:56:06 -0700
X-CSE-ConnectionGUID: eax1PyrgR0K0tXaXYosbGw==
X-CSE-MsgGUID: BNPYMbz9SWyNU5jv2Gs0xw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,214,1719903600"; d="scan'208";a="66980270"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 06:56:04 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [CI v2] drm/i915/dp: Dump the LTTPR PHY descriptors
Date: Mon,  9 Sep 2024 16:56:27 +0300
Message-ID: <20240909135627.2926906-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
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

Dump the descriptor of the detected LTTPRs in non-transparent mode to
help the debugging related to LTTPRs easier.

v2: Use drm_dp_dump_lttpr_desc() instead of the driver specific
    equivalent.
v3: Add empty line between license and header section. (Ankit)
v4: Don't include drm_dp_helper.h twice. (Jani)

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com> # v1
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index f45797c1a2051..abe7b9c035d20 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -210,8 +210,10 @@ static int intel_dp_init_lttpr(struct intel_dp *intel_dp, const u8 dpcd[DP_RECEI
 
 	lttpr_count = intel_dp_init_lttpr_phys(intel_dp, dpcd);
 
-	for (i = 0; i < lttpr_count; i++)
+	for (i = 0; i < lttpr_count; i++) {
 		intel_dp_read_lttpr_phy_caps(intel_dp, dpcd, DP_PHY_LTTPR(i));
+		drm_dp_dump_lttpr_desc(&intel_dp->aux, DP_PHY_LTTPR(i));
+	}
 
 	return lttpr_count;
 }
-- 
2.44.2

