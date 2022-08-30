Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 82BED5A66D0
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Aug 2022 17:03:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C36B10E021;
	Tue, 30 Aug 2022 15:03:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CA5110E021
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Aug 2022 15:03:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661871803; x=1693407803;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fZ+xyyX8JMtbWITSZBbA8rj+f9nD8KLzr3BdAZgBm9U=;
 b=dq/sioIMjsJe8HTuKZMMZ16IBbkbcoD2RkH3FP8KVr65eXk3gSLEQJ+H
 x3FGHE98bSFvV+RKfyFH9uWKhpCWvQ4JYt70VbMA9eoM2nPcO73bDi/ds
 i/vqXseIHQhKI/pbYzDuhflr1BOJ2mdZXXNn9JHvMoh4C+DvytKFqstJg
 ep6KjcAjb/sA3oSY3CbrBNRZN9V1swKeiwCTwlQYErD6WCXPU/9LFry/b
 SVWCHgrLP/uwIL99YPTXq6Xkp9XVCP7YQph87VWr1h4fRkOWQSGyttZ3x
 wGfXKhQh7S5KNszdpJxgftG1wdQ6OHCpCWnq9bo0gsjkCdQWdJgmVPCeZ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10455"; a="295199421"
X-IronPort-AV: E=Sophos;i="5.93,275,1654585200"; d="scan'208";a="295199421"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 08:02:31 -0700
X-IronPort-AV: E=Sophos;i="5.93,275,1654585200"; d="scan'208";a="672898758"
Received: from aberens-mobl.amr.corp.intel.com (HELO rdvivi-mobl4.intel.com)
 ([10.255.32.203])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 08:02:30 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Aug 2022 11:02:29 -0400
Message-Id: <20220830150229.165214-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/slpc: Fix inconsistent locked return
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
Cc: Dan Carpenter <dan.carpenter@oracle.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Fix for intel_guc_slpc_set_min_freq() warn: inconsistent returns '&slpc->lock'.

Fixes: 95ccf312a1e4 ("drm/i915/guc/slpc: Allow SLPC to use efficient frequency")
Reported-by: kernel test robot <lkp@intel.com>
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
index 9d49ccef03bb..f8a2bbcdf14f 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
@@ -477,7 +477,7 @@ int intel_guc_slpc_set_min_freq(struct intel_guc_slpc *slpc, u32 val)
 		if (unlikely(ret)) {
 			i915_probe_error(i915, "Failed to toggle efficient freq (%pe)\n",
 					 ERR_PTR(ret));
-			return ret;
+			goto unlock;
 		}
 
 		ret = slpc_set_param(slpc,
@@ -492,6 +492,7 @@ int intel_guc_slpc_set_min_freq(struct intel_guc_slpc *slpc, u32 val)
 	if (!ret)
 		slpc->min_freq_softlimit = val;
 
+unlock:
 	mutex_unlock(&slpc->lock);
 
 	return ret;
-- 
2.37.2

