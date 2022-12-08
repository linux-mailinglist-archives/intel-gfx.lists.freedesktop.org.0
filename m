Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DCEFB6473C6
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Dec 2022 17:02:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CD4410E4C0;
	Thu,  8 Dec 2022 16:02:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAD2010E4BB
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Dec 2022 16:01:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670515311; x=1702051311;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NSCGykV8BLEhAH7r3H5I/NxZrZ5aTro0M63ifDQ4Tok=;
 b=SRDTVn23YtEGHP1VCeRd/wBmQqO/L/LMGyRBkAHTE/CNfSZUsjBFQjxq
 ZqHWNZ9s/MljL9p8DIQiLGUknGs6HGXVbl8cgcyeaeqFsCDHyvc1cj3VW
 6cFrlcZjRZESDhyU3+B8yMl777SkYHKcImjUX+eT7oHxyNfcxxvsD/ycX
 145AcLIxUbldYH+6kF0GPxbSdp9rF2wl59waLdX8UulgXNgcyL/TmrzFw
 3gkOAlVj17Uv9VpMSNLYHnSuZ91eTv2uWTXwnR2cMFmHJ6fDwoWL5oU6f
 OUMrAV9eMDQfK0MFjGq8ta4h7aNppdX7n/3g5RQE6BONkIq8Upbao1ZrH A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="304861156"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="304861156"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 08:01:20 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="679580869"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="679580869"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 08:01:18 -0800
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Dec 2022 17:01:02 +0100
Message-Id: <20221208160103.308581-3-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221208160103.308581-1-andrzej.hajda@intel.com>
References: <20221208160103.308581-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/gvt: kill fetch_and_zero usage
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Macro fetch_and_zero will be dropped.

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/gvt/kvmgt.c     | 2 +-
 drivers/gpu/drm/i915/gvt/scheduler.c | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/kvmgt.c b/drivers/gpu/drm/i915/gvt/kvmgt.c
index 077892a9aa8fdc..dca775b874deaa 100644
--- a/drivers/gpu/drm/i915/gvt/kvmgt.c
+++ b/drivers/gpu/drm/i915/gvt/kvmgt.c
@@ -1831,7 +1831,7 @@ static int init_service_thread(struct intel_gvt *gvt)
  */
 static void intel_gvt_clean_device(struct drm_i915_private *i915)
 {
-	struct intel_gvt *gvt = fetch_and_zero(&i915->gvt);
+	struct intel_gvt *gvt = xchg(&i915->gvt, NULL);
 
 	if (drm_WARN_ON(&i915->drm, !gvt))
 		return;
diff --git a/drivers/gpu/drm/i915/gvt/scheduler.c b/drivers/gpu/drm/i915/gvt/scheduler.c
index 9cd8fcbf7cad16..f6cec1098a186b 100644
--- a/drivers/gpu/drm/i915/gvt/scheduler.c
+++ b/drivers/gpu/drm/i915/gvt/scheduler.c
@@ -826,7 +826,7 @@ static int dispatch_workload(struct intel_vgpu_workload *workload)
 		/* We might still need to add request with
 		 * clean ctx to retire it properly..
 		 */
-		rq = fetch_and_zero(&workload->req);
+		rq = xchg(&workload->req, NULL);
 		i915_request_put(rq);
 	}
 
@@ -1103,7 +1103,7 @@ static void complete_current_workload(struct intel_gvt *gvt, int ring_id)
 				intel_vgpu_trigger_virtual_event(vgpu, event);
 		}
 
-		i915_request_put(fetch_and_zero(&workload->req));
+		i915_request_put(xchg(&workload->req, 0));
 	}
 
 	gvt_dbg_sched("ring id %d complete workload %p status %d\n",
-- 
2.34.1

