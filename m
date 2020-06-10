Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0B451F5B39
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2020 20:31:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAE4A6E509;
	Wed, 10 Jun 2020 18:31:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D0126E509
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jun 2020 18:31:42 +0000 (UTC)
IronPort-SDR: 4ESpm1d6KXx3R7upJvRxLMoMKDPcnXZaKau3x1Yga6tfLpILH74c712m9WBZ7yLrPrnb9078/+
 qLqBz8LfbqeQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2020 11:31:41 -0700
IronPort-SDR: ea2IHmX0eZixm2lWeCUuXoA8FCmIllYn+EmE47likFZVYs9AaZHp8kzp8A1k3cMshybZltgSGB
 ppRaxGKPddUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,496,1583222400"; d="scan'208";a="271336324"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga003.jf.intel.com with ESMTP; 10 Jun 2020 11:31:40 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Jun 2020 21:31:32 +0300
Message-Id: <20200610183132.13341-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.23.1
In-Reply-To: <20200610183132.13341-1-imre.deak@intel.com>
References: <20200610183132.13341-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/dp_mst: Clear ACT sent flag before
 waiting for it
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We do this during enabling, but not during disabling. BSpec doesn't
require this explicitly in either case, however based on my tests
nothing clears it after it gets set, so let's do this during disabling
as well.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 1c3654a117a9..566fe469940d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -368,6 +368,8 @@ static void intel_mst_disable_dp(struct intel_atomic_state *state,
 
 	drm_dp_mst_reset_vcpi_slots(&intel_dp->mst_mgr, connector->port);
 
+	clear_act_sent(old_crtc_state, intel_dp);
+
 	ret = drm_dp_update_payload_part1(&intel_dp->mst_mgr);
 	if (ret) {
 		drm_dbg_kms(&i915->drm, "failed to update payload %d\n", ret);
-- 
2.23.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
