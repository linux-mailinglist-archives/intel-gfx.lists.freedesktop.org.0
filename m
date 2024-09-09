Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94587971913
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 14:15:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1ABEF10E437;
	Mon,  9 Sep 2024 12:15:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jPvHJR1q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CC8B10E43B
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2024 12:15:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725884151; x=1757420151;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=18zsR8UQsNJhLjdzTb5IQVrtTb3Z3/T+2FJgzaTj7PY=;
 b=jPvHJR1qLvOoduikuSpEE2gSPAkUPJuV025tEPFHa3ZDYtzfRfTqERd4
 tqMwA3PX/ZW7qo84u4Fnd9Xr74GAP/99BprOkF0kPvPuTM1G4qvgulLZa
 1zFYc5Ogl31br8ZVM4wrUK4i9eB4NUEYGNJygSZhFiLAShuLhiJk/v7ud
 nJ6G3RC++f7ONzOwywoT1+mIeCqHKM/t9vqlHKm760jvaKl9ZY57gv1QV
 zsduRdlGjNkkIiW0jOaUNdSAtyZv+iYL5oysBefOjbQU6s9S4u8gwGWzL
 EzHN0uoTkQ/B7VtnTlzY3+17b+3N29M/xMBjhCZJp7eQmkLHXxpM+pzpw Q==;
X-CSE-ConnectionGUID: Mg4faoupTrW5Fxwz2DUnPQ==
X-CSE-MsgGUID: T443prhORNetu9BNlYj2pw==
X-IronPort-AV: E=McAfee;i="6700,10204,11189"; a="35168339"
X-IronPort-AV: E=Sophos;i="6.10,214,1719903600"; d="scan'208";a="35168339"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 05:15:51 -0700
X-CSE-ConnectionGUID: o8ibtaF/QR6Zmqe0J33+Tg==
X-CSE-MsgGUID: t4hhu8JaQsy1hH2zqJ3Ybg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,214,1719903600"; d="scan'208";a="71436381"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 05:15:50 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [CI] drm/i915/dp: Dump the LTTPR PHY descriptors
Date: Mon,  9 Sep 2024 15:16:13 +0300
Message-ID: <20240909121613.2915283-1-imre.deak@intel.com>
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

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com> # v1
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---

Resending [1] now, after the corresponding DRM core helper is merged to
drm-intel-next.

[1] https://lore.kernel.org/all/20240708190029.271247-7-imre.deak@intel.com

 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index f45797c1a2051..b7bd8135c1138 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -21,6 +21,8 @@
  * IN THE SOFTWARE.
  */
 
+#include <drm/display/drm_dp_helper.h>
+
 #include <linux/debugfs.h>
 
 #include <drm/display/drm_dp_helper.h>
@@ -210,8 +212,10 @@ static int intel_dp_init_lttpr(struct intel_dp *intel_dp, const u8 dpcd[DP_RECEI
 
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

