Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 990398C431C
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2024 16:19:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0496010E7D4;
	Mon, 13 May 2024 14:19:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gYNc6UfP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E651010E7D4
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 May 2024 14:19:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715609960; x=1747145960;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NiCnen4M/dgC32ktClBQExOeM1+hEuFF6PYoN1dhiBI=;
 b=gYNc6UfPjB6SFPgrtDxqbmPrt30zm+3AiehsrjW1DGi5qYaVuI5fJdnc
 6uF9lMBxP7C3txjZ0a+EsEY5wj2AUcQUBszClwYm3dyA0V05neBRtDlx9
 DlhEkhU5AvNi9AnO3AAGDIAcyMyRVBtboyzKoJI+mdYT8ezBMMU6AohzZ
 tjtgUfkjsUoC70jqmpTlJlXQ3cj3muXsgR3EyL25KEa1SeWca74ZwlvSs
 X4/LXJqAnnqMFr3zfAwFzs3NgELYCxrQ9f37sKQ4WXPYwp7qWb3rvcwQI
 abjQ5JFGz4+qVJm5aLc7bYJH2fKilLnm4yuH1YMOGeymjYjIv0pQ1vBIm g==;
X-CSE-ConnectionGUID: AiixPkrWT4Gqdefxce3Vcw==
X-CSE-MsgGUID: zjCdVBzWQnOwHiqUoPr//w==
X-IronPort-AV: E=McAfee;i="6600,9927,11072"; a="15337912"
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="15337912"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 07:19:20 -0700
X-CSE-ConnectionGUID: 0toqkNiJRRagvK8gP5Czbw==
X-CSE-MsgGUID: unDzhaW6T9KPpC2s5TVZrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="30420415"
Received: from unknown (HELO localhost.localdomain.iind.intel.com)
 ([10.49.75.6])
 by fmviesa010.fm.intel.com with ESMTP; 13 May 2024 07:19:18 -0700
From: "Chen, Angus" <angus.chen@intel.com>
To: tejas.upadhyay@intel.com
Cc: andi.shyti@linux.intel.com, angus.chen@intel.com,
 intel-gfx@lists.freedesktop.org
Subject: [PATCH v2] drm/i915/mtl: Update workaround 14018778641
Date: Mon, 13 May 2024 14:19:17 +0000
Message-Id: <20240513141917.74208-1-angus.chen@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <SJ1PR11MB6204A1D3BB33FFFBB6BF32E581E52@SJ1PR11MB6204.namprd11.prod.outlook.com>
References: <SJ1PR11MB6204A1D3BB33FFFBB6BF32E581E52@SJ1PR11MB6204.namprd11.prod.outlook.com>
MIME-Version: 1.0
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

The WA should be extended to cover VDBOX engine. We found that
28-channels 1080p VP9 encoding may hit this issue.

Signed-off-by: Chen, Angus <angus.chen@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index d1ab560fcdfc..da0a481a375e 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1586,6 +1586,9 @@ xelpmp_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 	 */
 	wa_write_or(wal, XELPMP_GSC_MOD_CTRL, FORCE_MISS_FTLB);
 
+	/* Wa_14018778641 */
+	wa_write_or(wal, XELPMP_VDBX_MOD_CTRL, FORCE_MISS_FTLB);
+
 	/* Wa_22016670082 */
 	wa_write_or(wal, GEN12_SQCNT1, GEN12_STRICT_RAR_ENABLE);
 
-- 
2.34.1

