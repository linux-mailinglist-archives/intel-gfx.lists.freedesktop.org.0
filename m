Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FF216221E6
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Nov 2022 03:22:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F223610E558;
	Wed,  9 Nov 2022 02:22:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A95E10E559
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Nov 2022 02:22:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667960526; x=1699496526;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=05x+RwaIcF3OAYUm/VLtRWOiGDZNC8B1beBq40iyxLg=;
 b=EYTKj2MHlWWvKAoHzLOuLgoLj36A9ne8LdJRwb4HzNnqNV+DxR7xGXJ3
 E5v6XE/X6V2YxflcTbvcWyIQsGC0dBbAmBmNeOLyevCm2qVi7ACCWxslM
 w/VnhJ59274SxezE9GBn6QnQsJ/NdlMCDs2KH1a7RAgykLr5sXyxKx+90
 6+u1mRDzJydiz4L7D3YldGV7KEHWOdyCPBKDJqKXogQ/V37m27fpl3LOu
 PlOPITed2Jzf/3ruLibM2oF5Dvqz6aiDO0RJq9qVyVWKDSDp5/TzgQJim
 gLeDhmNugz1Vn6/DeXnEIWNyp8Kg+YkiUeYr0rny1tmKfoP5dYKgV9y0O g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="291255792"
X-IronPort-AV: E=Sophos;i="5.96,149,1665471600"; d="scan'208";a="291255792"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 18:22:05 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="639024094"
X-IronPort-AV: E=Sophos;i="5.96,149,1665471600"; d="scan'208";a="639024094"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril.jf.intel.com)
 ([10.165.21.138])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 18:22:05 -0800
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Nov 2022 18:22:01 -0800
Message-Id: <20221109022201.3205623-2-ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.38.0
In-Reply-To: <20221109022201.3205623-1-ashutosh.dixit@intel.com>
References: <20221109022201.3205623-1-ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 1/1] drm/i915/rps: Query min/max freq from FW when
 displaying in sysfs
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

CI ONLY, PLEASE DON'T REVIEW

Instead of displaying i915 cached values, query min/max freq from FW when
displaying in sysfs.

FIXME: "show" functions don't allow you to return error!!!

Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rps.c | 22 ++++++++++++++++------
 1 file changed, 16 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 6c34a83c24b34..12609714055d5 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -2162,10 +2162,15 @@ u32 intel_rps_get_max_frequency(struct intel_rps *rps)
 {
 	struct intel_guc_slpc *slpc = rps_to_slpc(rps);
 
-	if (rps_uses_slpc(rps))
-		return slpc->max_freq_softlimit;
-	else
+	if (rps_uses_slpc(rps)) {
+		u32 val;
+
+		intel_guc_slpc_get_max_freq(slpc, &val);
+
+		return val;
+	} else {
 		return intel_gpu_freq(rps, rps->max_freq_softlimit);
+	}
 }
 
 /**
@@ -2482,10 +2487,15 @@ u32 intel_rps_get_min_frequency(struct intel_rps *rps)
 {
 	struct intel_guc_slpc *slpc = rps_to_slpc(rps);
 
-	if (rps_uses_slpc(rps))
-		return slpc->min_freq_softlimit;
-	else
+	if (rps_uses_slpc(rps)) {
+		u32 val;
+
+		intel_guc_slpc_get_min_freq(slpc, &val);
+
+		return val;
+	} else {
 		return intel_gpu_freq(rps, rps->min_freq_softlimit);
+	}
 }
 
 /**
-- 
2.38.0

