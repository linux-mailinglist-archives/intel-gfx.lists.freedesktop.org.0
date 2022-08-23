Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 563F059CCBF
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Aug 2022 02:05:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8972A74C8;
	Tue, 23 Aug 2022 00:04:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E380A74BF
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Aug 2022 00:03:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661213025; x=1692749025;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=BPQ/Tr0PBQkuvzysPSmKTuUicqO5cECLYwfkGqwlOQg=;
 b=XM357UcNkYRyHeX/duxTcsVkkIg6KAvcNM0FtLyffkRsZv2cTJYLyG+t
 6w0N+Hzr6G+1DgFIVDjn+2qOTtOmE5SyPirjurKqxAR/6QAsieTOj6WTE
 ThVlqmo77HH9zNTwwBtQmwalLv0GjRoJqQuvAntk865EfRIVxkJOV4C9b
 QRatA4UNgR81rqANu6V5InCiq+BofOpqP14D+vQZIE3onW8zxCO2kQ3kq
 jw30hjElnRTcYcUmhVNRyZwLodP7Gvv9fydiPa3l1wCsA7xbLXYuyDVuR
 uBqGVUE6+KYUS9t3OSwOW1Wb6t5kXJiatJzKTWauZdZw4Mu3vzaJ5SBB2 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10447"; a="273304839"
X-IronPort-AV: E=Sophos;i="5.93,255,1654585200"; d="scan'208";a="273304839"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 17:03:42 -0700
X-IronPort-AV: E=Sophos;i="5.93,255,1654585200"; d="scan'208";a="669775545"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 17:03:42 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>
Date: Tue, 23 Aug 2022 00:03:36 +0000
Message-Id: <20220823000342.281222-14-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220823000342.281222-1-umesh.nerlige.ramappa@intel.com>
References: <20220823000342.281222-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 13/19] drm/i915/perf: Add Wa_16010703925:dg2
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

On DG2 A0, the OAR report format is buggy. Workaround is to not use it
for A0. For A0, remove the OAR format from the bitmask of supported
formats.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index c3183aedc712..3a1e0c5271e2 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -4750,6 +4750,11 @@ static void oa_init_supported_formats(struct i915_perf *perf)
 	default:
 		MISSING_CASE(platform);
 	}
+
+ 	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_B0)) {
+		/* Wa_16010703925:dg2 */
+		clear_bit(I915_OAR_FORMAT_A36u64_B8_C8, perf->format_mask);
+ 	}
 }
 
 static void i915_perf_init_info(struct drm_i915_private *i915)
-- 
2.25.1

