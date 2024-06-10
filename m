Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95AC790270F
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2024 18:49:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D977810E0D7;
	Mon, 10 Jun 2024 16:49:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VfXDzzgl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3482910E417
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2024 16:49:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718038185; x=1749574185;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Sj6EyBqaN9wK1ZU+Tr37ZfFtqhM/bdCi4ZthwXNUjhQ=;
 b=VfXDzzglbM5mjQ/7IKVAplcu81XbNsqkS8gG/tHW5eJxOjwt4J89E+5+
 IDROukLkLS1nYXXDHqZGRJOtPaJNCOSTIEdDCtwW33eQcLfaSRDUqCza9
 9D9mAgiMeikmSxgIZgkefMLfLipre0dgbV3FrYigkCyxiujicZsfZeTLR
 THiQFNkjHiZG87+VNErgryXD0GJhUYO5Y0oavFZ09SsVJRwMFmnAe91ur
 Lx21Ja8ayeARNdQc6F6cDUFvp+tTMkcb/RRzsCwn9q++Pqlpk6nn/W1Ix
 4zCSULX4EtjO/yZPpX0CWq7v5ZDaaG4/08IrHIGMkw3ynFVyAHGz8WLKM g==;
X-CSE-ConnectionGUID: hIkbmHnqTp+XVEQ3/+0YSg==
X-CSE-MsgGUID: JXJdr4maTkCJu/+0RBgGvA==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="18494012"
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="18494012"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 09:49:45 -0700
X-CSE-ConnectionGUID: qq9KFY/sQgCurE3luX7PPA==
X-CSE-MsgGUID: qeh4pOnPSeqRGwiMAoQNzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="39060602"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 09:49:43 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v3 15/21] drm/i915/dp_mst: Reset intel_dp->link_trained during
 disabling
Date: Mon, 10 Jun 2024 19:49:27 +0300
Message-ID: <20240610164933.2947366-16-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
In-Reply-To: <20240610164933.2947366-1-imre.deak@intel.com>
References: <20240610164933.2947366-1-imre.deak@intel.com>
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

Reset the flag indicating an active link after disabling an MST link,
similarly to how this is done for SST outputs. This avoids trying to
retrain an MST link while its disabled.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 9362eb958310f..c3514abed5a2d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -981,6 +981,9 @@ static void intel_mst_disable_dp(struct intel_atomic_state *state,
 	drm_dbg_kms(&i915->drm, "active links %d\n",
 		    intel_dp->active_mst_links);
 
+	if (intel_dp->active_mst_links == 1)
+		intel_dp->link_trained = false;
+
 	intel_hdcp_disable(intel_mst->connector);
 
 	intel_dp_sink_disable_decompression(state, connector, old_crtc_state);
-- 
2.43.3

