Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBFD249C7C3
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jan 2022 11:44:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D808210E808;
	Wed, 26 Jan 2022 10:44:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5183210E808
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jan 2022 10:44:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643193844; x=1674729844;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=f+7+QoBhlzImHYkfJJm3hZlgyky9AOV+11LcpKZ8Bbo=;
 b=eBki3oA5M1ztDUDMOkwpEYrFc3Ftv2QuLAaalP0RFIb6bpH/Le8p0KI6
 zo9NC9WE5k+9ILBUmuT91cSC+3V99zPbUjNLpRJwZD+eBL7HrzCwBKh/b
 fXzNRWDR/KiqIEUvpByx+gqtKY+b0lY9Pc3Gdsa1rT2ph/hEmWNSX2AVt
 AgP9m5X1suNMfrM0ozMOsjGv1GN36j+FJjT85VoBo5AF6m6cw0CgXUtXb
 OjB08hvmT2+Ke5Pg5+8gPgqjkBQLOWnxFLjmDkC43VwsnHVMwsqFBAQUt
 JOEZwVsX729dR8kf3aKMOG9fqbfXo1PH2JSmFdFZsLvfLWup+c/fc/g1z A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10238"; a="226500346"
X-IronPort-AV: E=Sophos;i="5.88,317,1635231600"; d="scan'208";a="226500346"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 02:44:01 -0800
X-IronPort-AV: E=Sophos;i="5.88,317,1635231600"; d="scan'208";a="479842901"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 02:43:59 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Jan 2022 12:43:56 +0200
Message-Id: <20220126104356.2022975-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/adlp: Fix TypeC PHY-ready status
 readout
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
Cc: Chia-Lin Kao <acelan.kao@canonical.com>, stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The TCSS_DDI_STATUS register is indexed by tc_port not by the FIA port
index, fix this up. This only caused an issue on TC#3/4 ports in legacy
mode, as in all other cases the two indices either match (on TC#1/2) or
the TCSS_DDI_STATUS_READY flag is set regardless of something being
connected or not (on TC#1/2/3/4 in dp-alt and tbt-alt modes).

Reported-and-tested-by: Chia-Lin Kao (AceLan) <acelan.kao@canonical.com>
Fixes: 55ce306c2aa1 ("drm/i915/adl_p: Implement TC sequences")
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/4698
Cc: José Roberto de Souza <jose.souza@intel.com>
Cc: <stable@vger.kernel.org> # v5.14+
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 4eefe7b0bb263..3291124a99e5a 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -346,10 +346,11 @@ static bool icl_tc_phy_status_complete(struct intel_digital_port *dig_port)
 static bool adl_tc_phy_status_complete(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	enum tc_port tc_port = intel_port_to_tc(i915, dig_port->base.port);
 	struct intel_uncore *uncore = &i915->uncore;
 	u32 val;
 
-	val = intel_uncore_read(uncore, TCSS_DDI_STATUS(dig_port->tc_phy_fia_idx));
+	val = intel_uncore_read(uncore, TCSS_DDI_STATUS(tc_port));
 	if (val == 0xffffffff) {
 		drm_dbg_kms(&i915->drm,
 			    "Port %s: PHY in TCCOLD, assuming not complete\n",
-- 
2.27.0

