Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1893A97CB9E
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2024 17:34:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6DBA10E060;
	Thu, 19 Sep 2024 15:34:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vi5Yg5Nw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C29710E060
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2024 15:34:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726760045; x=1758296045;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZxsLcDqdwgeyT9ZMYfZIwbvyqmhbMjfdAgcVwuMK+fM=;
 b=Vi5Yg5NwYiMghnFgsiUrGQxZjNxJ/IL9DYB18+BM/h13vE74L5iwg9fz
 gvao1bdv33ntZQc8aSzZjbLBfq08Q3zruY6nhYvzfrElJoNmM/K7S41gn
 dFWqRWIj6HRC8j5T+a3BIb+rZPH91b9zoO9l/+OIw84uG2fQSggdYxe4b
 FVizBT43xxNdVm28OaMlD7EQiNj1Qb6b13BW+ieoIBca/EfhcN03y5xs2
 N8n7uQEK5Ukh38XtGJqJduFw+IljbFlBDICdNzlVkT2yaI/4K4fitBaPt
 KFVr5oFvhs8kuOQDjz7sDjFJE7FlX3pWzvVI+CDmPX8NI0YU9xzp8TUUt Q==;
X-CSE-ConnectionGUID: P300cDdtR1eNgA3pMVZRpw==
X-CSE-MsgGUID: fSr+UkQ+RjW2F56dS0OBkQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11200"; a="48267114"
X-IronPort-AV: E=Sophos;i="6.10,242,1719903600"; d="scan'208";a="48267114"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 08:34:01 -0700
X-CSE-ConnectionGUID: NLSQvFYSSq+1W7kdNA9tAQ==
X-CSE-MsgGUID: e4KK9JrgS86unhW32JggYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,242,1719903600"; d="scan'208";a="70004139"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 08:33:59 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH] drm/i915/quirks: make intel_dpcd_quirks const
Date: Thu, 19 Sep 2024 18:33:54 +0300
Message-Id: <20240919153354.1269295-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

The array can be in rodate, make it const.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_quirks.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_quirks.c b/drivers/gpu/drm/i915/display/intel_quirks.c
index 29b56d53a340..28f497ae785b 100644
--- a/drivers/gpu/drm/i915/display/intel_quirks.c
+++ b/drivers/gpu/drm/i915/display/intel_quirks.c
@@ -231,7 +231,7 @@ static struct intel_quirk intel_quirks[] = {
 	{ 0x0f31, 0x103c, 0x220f, quirk_invert_brightness },
 };
 
-static struct intel_dpcd_quirk intel_dpcd_quirks[] = {
+static const struct intel_dpcd_quirk intel_dpcd_quirks[] = {
 	/* Dell Precision 5490 */
 	{
 		.device = 0x7d55,
@@ -272,7 +272,7 @@ void intel_init_dpcd_quirks(struct intel_dp *intel_dp,
 	int i;
 
 	for (i = 0; i < ARRAY_SIZE(intel_dpcd_quirks); i++) {
-		struct intel_dpcd_quirk *q = &intel_dpcd_quirks[i];
+		const struct intel_dpcd_quirk *q = &intel_dpcd_quirks[i];
 
 		if (d->device == q->device &&
 		    (d->subsystem_vendor == q->subsystem_vendor ||
-- 
2.39.2

