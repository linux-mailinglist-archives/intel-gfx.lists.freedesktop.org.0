Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B75C7B8A63
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Oct 2023 20:35:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C813C10E3B3;
	Wed,  4 Oct 2023 18:35:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27ECD10E3B3
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Oct 2023 18:35:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696444501; x=1727980501;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bpSnUeyMCwr5z8q24pn1zkzo5CtrPo+vd10q6+Wf0l0=;
 b=itBAySKL5uv5xxJIvBZA1E2WFO7CrgDAfCkQdTFPf3E2XKnInM7IqpLT
 xlyl75X8rDkvVR43fZmhenqa8N92KazJKs3u3e9luHeg9g0eJgZgA1pXi
 U6TlcEwqUDJQ10Bveg5O3inanHNJ8AW3KWIrKH6dU3rWbtJ0IWzAeAtbZ
 lovhomPQqcwlGB9V6D3ozsAAKpBJTfiyLfDp/GpyQlUxCvOadO9xwczqf
 9oS5rD6SEbrDHRVf81S9ZWxAPdzXIiP0WBe7cIRYcu8RD+qkdGO8J8hKy
 hXCG8T7BN2lEYCV8heERLh0zJtLd9RPoWtCuvZ5coH2UIwNVEvY+Xb50Q Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="383168101"
X-IronPort-AV: E=Sophos;i="6.03,201,1694761200"; d="scan'208";a="383168101"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 11:34:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="780909015"
X-IronPort-AV: E=Sophos;i="6.03,201,1694761200"; d="scan'208";a="780909015"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by orsmga008.jf.intel.com with SMTP; 04 Oct 2023 11:34:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 04 Oct 2023 21:34:55 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: linux-pm@vger.kernel.org
Date: Wed,  4 Oct 2023 21:34:55 +0300
Message-ID: <20231004183455.27797-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] powercap: intel_rapl: Don't warn about BIOS
 locked limits during resume
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
Cc: intel-gfx@lists.freedesktop.org,
 "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
 linux-kernel@vger.kernel.org,
 Srinivas Pandruvada <srinivas.pandruvada@intel.com>,
 Zhang Rui <rui.zhang@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Restore enough of the original behaviour to stop spamming
dmesg with warnings about BIOS locked limits when trying
to restore them during resume.

This still doesn't 100% match the original behaviour
as we no longer attempt to blindly restore the BIOS locked
limits. No idea if that makes any difference in practice.

Cc: Zhang Rui <rui.zhang@intel.com>
Cc: Wang Wendy <wendy.wang@intel.com>
Cc: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
Cc: Srinivas Pandruvada <srinivas.pandruvada@intel.com>
Fixes: 9050a9cd5e4c ("powercap: intel_rapl: Cleanup Power Limits support")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/powercap/intel_rapl_common.c | 28 ++++++++++++++++++++--------
 1 file changed, 20 insertions(+), 8 deletions(-)

diff --git a/drivers/powercap/intel_rapl_common.c b/drivers/powercap/intel_rapl_common.c
index 40a2cc649c79..9a6a40c83f82 100644
--- a/drivers/powercap/intel_rapl_common.c
+++ b/drivers/powercap/intel_rapl_common.c
@@ -882,22 +882,34 @@ static int rapl_read_pl_data(struct rapl_domain *rd, int pl,
 	return rapl_read_data_raw(rd, prim, xlate, data);
 }
 
-static int rapl_write_pl_data(struct rapl_domain *rd, int pl,
-			       enum pl_prims pl_prim,
-			       unsigned long long value)
+static int rapl_write_pl_data_nowarn(struct rapl_domain *rd, int pl,
+				     enum pl_prims pl_prim,
+				     unsigned long long value)
 {
 	enum rapl_primitives prim = get_pl_prim(rd, pl, pl_prim);
 
 	if (!is_pl_valid(rd, pl))
 		return -EINVAL;
 
-	if (rd->rpl[pl].locked) {
-		pr_warn("%s:%s:%s locked by BIOS\n", rd->rp->name, rd->name, pl_names[pl]);
+	if (rd->rpl[pl].locked)
 		return -EACCES;
-	}
 
 	return rapl_write_data_raw(rd, prim, value);
 }
+
+static int rapl_write_pl_data(struct rapl_domain *rd, int pl,
+			      enum pl_prims pl_prim,
+			      unsigned long long value)
+{
+	int ret;
+
+	ret = rapl_write_pl_data_nowarn(rd, pl, pl_prim, value);
+	if (ret == -EACCES)
+		pr_warn("%s:%s:%s locked by BIOS\n", rd->rp->name, rd->name, pl_names[pl]);
+
+	return ret;
+}
+
 /*
  * Raw RAPL data stored in MSRs are in certain scales. We need to
  * convert them into standard units based on the units reported in
@@ -1634,8 +1646,8 @@ static void power_limit_state_restore(void)
 		rd = power_zone_to_rapl_domain(rp->power_zone);
 		for (i = POWER_LIMIT1; i < NR_POWER_LIMITS; i++)
 			if (rd->rpl[i].last_power_limit)
-				rapl_write_pl_data(rd, i, PL_LIMIT,
-					       rd->rpl[i].last_power_limit);
+				rapl_write_pl_data_nowarn(rd, i, PL_LIMIT,
+							  rd->rpl[i].last_power_limit);
 	}
 	cpus_read_unlock();
 }
-- 
2.41.0

