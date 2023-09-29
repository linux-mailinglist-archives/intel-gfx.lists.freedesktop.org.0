Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE69E7B310A
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Sep 2023 13:09:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B03F10E11A;
	Fri, 29 Sep 2023 11:09:57 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B16710E11A;
 Fri, 29 Sep 2023 11:09:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695985796; x=1727521796;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/tKbtrsi0kaoyLtXDjz+/gqvia8juzmOGDKHnMj5qgQ=;
 b=FRcO87Htmb91Sy5Nx/PDGQERLs7jQNH9ZVHGAQoTeqXAdphzoEMBlYub
 I3ytnb8mylqAwgT5CkYH99ygpaUpNG+TET1zekfiofumdG30dkMW7i//I
 lLOBmDTzEs80hWVUOeDtruVM0bNs++WzDArfZ46uGN1oX6ngc6TaBtbC7
 TTeoOQcPMM7EbWvMLiPkmK1W/aOTTSu1u0B2aRLGRyU593s6L4sutnPol
 HDwEKUydJ2Qb/xry5DGY2F5sMr09OR5GyReTWb/CVP1nuTPbmNb/puBVC
 duhBE99RCaVE4GTe3Yflvbua//Cno3xtO/bYLaGkDhP1KV8VWxfcWGotR w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="446434154"
X-IronPort-AV: E=Sophos;i="6.03,187,1694761200"; d="scan'208";a="446434154"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2023 04:09:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="699615706"
X-IronPort-AV: E=Sophos;i="6.03,187,1694761200"; d="scan'208";a="699615706"
Received: from pbrady4x-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.203.84])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2023 04:09:54 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Fri, 29 Sep 2023 12:09:49 +0100
Message-Id: <20230929110949.342325-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t] tools/intel_gpu_top: Restore user
 friendly error message
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

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

We have a nice error message displayed when an user with insufficient
permissions tries to run the tool, but that got lost while Meteorlake
support was added. Bring it back in.

v2:
 * Propagate unexpected errno on multi-tile systems too. (Umesh)

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 tools/intel_gpu_top.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index 87e9681e53b4..10601e66b18e 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -554,9 +554,9 @@ static int get_num_gts(uint64_t type)
 
 		close(fd);
 	}
-	assert(!errno || errno == ENOENT);
-	assert(cnt > 0);
-	errno = 0;
+
+	if (!cnt || (errno && errno != ENOENT))
+		cnt = -errno;
 
 	return cnt;
 }
@@ -590,6 +590,8 @@ static int pmu_init(struct engines *engines)
 	engines->fd = -1;
 	engines->num_counters = 0;
 	engines->num_gts = get_num_gts(type);
+	if (engines->num_gts <= 0)
+		return -1;
 
 	engines->irq.config = I915_PMU_INTERRUPTS;
 	fd = _open_pmu(type, engines->num_counters, &engines->irq, engines->fd);
-- 
2.39.2

