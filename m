Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19A26710982
	for <lists+intel-gfx@lfdr.de>; Thu, 25 May 2023 12:10:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A45910E8A6;
	Thu, 25 May 2023 10:10:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4ABD510E8A6
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 May 2023 10:10:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685009440; x=1716545440;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=N8G4G3ASy9mQvpFfHNU1wk0OUmJ1YEzsrjcXc+PAQUc=;
 b=EytDwOve6xGV0bPfuoZYtvd8HDvurWjqTNcFjFTS9BIIcNVoHmciukFF
 ObmC3j16yDxLTqy/wn8p1yX2qGjbNsnIncW83gXmCaAAkeQ1zRLBxQuc8
 lhMWRJykkF/XOxJ4zninRsorpTgo1Fnm5NaDeURxrD+UTAEu4cEdMAypN
 50NYF3t/HxVqqiEA+lAL30P/Lbqg1iHAFoCE80Ov4jxZQ8IJRq7LiTdE2
 A6aBAfH4KMe8zt8IJpLq/QEqSzjDvD1fc3E79FVCvQqM7JfxG0XJAjwvU
 DAG3K/rncMFZgBQwrabKd1/kEDsyzEWODs5EfLzEFzaO+wxkmCNNvtb20 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10720"; a="352690233"
X-IronPort-AV: E=Sophos;i="6.00,190,1681196400"; d="scan'208";a="352690233"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2023 03:10:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10720"; a="794599388"
X-IronPort-AV: E=Sophos;i="6.00,190,1681196400"; d="scan'208";a="794599388"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by FMSMGA003.fm.intel.com with ESMTP; 25 May 2023 03:10:37 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 May 2023 13:10:36 +0300
Message-Id: <20230525101036.21564-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Fix the disabling sequence for
 Bigjoiner
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

According to BSpec 49190, when enabling crtcs, we first setup
slave and then master crtc, however for disabling it should go
vice versa, i.e first master, then slave, however current code
does disabling in a same way as enabling. Fix this, by skipping
non-master crtcs, instead of non-slaves.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 0490c6412ab5..68958ba0ef49 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6662,7 +6662,7 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
 		 */
 		if (!is_trans_port_sync_slave(old_crtc_state) &&
 		    !intel_dp_mst_is_slave_trans(old_crtc_state) &&
-		    !intel_crtc_is_bigjoiner_slave(old_crtc_state))
+		    !intel_crtc_is_bigjoiner_master(old_crtc_state))
 			continue;
 
 		intel_old_crtc_state_disables(state, old_crtc_state,
-- 
2.37.3

