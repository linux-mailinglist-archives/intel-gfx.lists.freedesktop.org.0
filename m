Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CC3577FBCE
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Aug 2023 18:16:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB6E110E528;
	Thu, 17 Aug 2023 16:16:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D495B10E520
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Aug 2023 16:16:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692288977; x=1723824977;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=rxUbb6SJ50dOpEmtCgx9XjyUXEFpsMuS1qjFRujGFaE=;
 b=NgO07osA4di9/qv42AGehWDEQ3N9q9u6Da2N/nP7Ct51cut3p7pOrFi3
 9wBQ/bJMKYCq8u5MWr0rq5u0HNkNTVDNXBe5XeSCKHHtfClsTSMEcKQVp
 9QtyrdPDKkJUmSa1vbTiDY6vG+B/K5HLeAefzQ73Aod4gD7iv/7uHDAZn
 U4uaoPBy03KlYiuRKwkRDRVtt8BokyBKSO+SvEQi5437U19T+oJsK0GVJ
 lts/JCa9i35j/weLZ3xbbt0sezjg1IztyzZ9+e8eNI9jqhq+ooDcTbrF9
 1iwUgv7sx3wD0P6l2YlUF5DVedvLS1kWg4mPFYK6wA3SAVNMhKhfwXQJI w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="357826735"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="357826735"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 09:15:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="711601365"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="711601365"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 09:15:01 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Aug 2023 19:14:54 +0300
Message-Id: <20230817161456.3857111-16-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230817161456.3857111-1-imre.deak@intel.com>
References: <20230817161456.3857111-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 15/17] drm/i915/dp_mst: Add atomic state for all
 streams on pre-tgl platforms
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

If an MST stream is modeset, its state must be checked along all the
other streams on the same MST link, for instance to resolve a BW
overallocation of a non-sink MST port or to make sure that the FEC is
enabled/disabled the same way for all these streams.

To prepare for that this patch adds all the stream CRTCs to the atomic
state and marks them for modeset similarly to tgl+ platforms. (If the
state computation doesn't change the state the CRTC is switched back to
fastset mode.)

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 4fe10d7256630..b53254473e0d9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -499,9 +499,6 @@ intel_dp_mst_atomic_master_trans_check(struct intel_connector *connector,
 	struct intel_connector *connector_iter;
 	int ret = 0;
 
-	if (DISPLAY_VER(dev_priv) < 12)
-		return  0;
-
 	if (!intel_connector_needs_modeset(state, &connector->base))
 		return 0;
 
-- 
2.37.2

