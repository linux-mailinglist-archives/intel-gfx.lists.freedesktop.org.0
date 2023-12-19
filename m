Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 742608187A1
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Dec 2023 13:39:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49C3810E0A1;
	Tue, 19 Dec 2023 12:39:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D842510E0A1
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Dec 2023 12:39:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702989550; x=1734525550;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KItoAJg6JdBAPRy7+6xTlwDzofwKoLXz/UClehihyDg=;
 b=PRKwRC7cOTV5KblX0Wxwf6ZC9IOJqi7szuaOu+r+czdiyfz+qgK7ZE3W
 hJmSbP13XXiDgCy9GpZRKMXhkusd5w4z0y1uODTUR6Ld5CUkrNP0oJK8A
 1LTpKdXDxbXu7JN7tdCnPQSaUswgAYi/XTnjwz3gcXyGPpZz4zu0CV6vB
 CMeaHxjkTcxi9qebkZTYkPJQongB4d3yPTYgE0IL30FiSjBG6zfT3Rcht
 RwDC5XpW+Bl3kCNFJFZJwKw4qiJUxvMsg7uteRaVbl6fqXaNGt9kUYTK4
 AvjFIRE9aTm6XCLpaBrZEl935qlaZ6wNRWTiaktsKIJ25p8/bNHSwxmYR g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="9098498"
X-IronPort-AV: E=Sophos;i="6.04,288,1695711600"; 
   d="scan'208";a="9098498"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2023 04:39:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="841868874"
X-IronPort-AV: E=Sophos;i="6.04,288,1695711600"; d="scan'208";a="841868874"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by fmsmga008.fm.intel.com with ESMTP; 19 Dec 2023 04:39:07 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915/display: Skip C10 state verification in case of
 fastset
Date: Tue, 19 Dec 2023 14:32:46 +0200
Message-Id: <20231219123246.832245-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
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

PLL's are not programmed in case of fastset so the state
verfication compares bios programmed PLL values against
sw PLL values. To overcome this limitation, we can skip
the state verification for C10 in fastset case as the
driver is not writing PLL values.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 884a1da36089..3ef54eaca9e4 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -3016,6 +3016,9 @@ static void intel_c10pll_state_verify(const struct intel_crtc_state *state,
 	const struct intel_c10pll_state *mpllb_sw_state = &state->cx0pll_state.c10;
 	int i;
 
+	if (intel_crtc_needs_fastset(state))
+		return;
+
 	for (i = 0; i < ARRAY_SIZE(mpllb_sw_state->pll); i++) {
 		u8 expected = mpllb_sw_state->pll[i];
 
-- 
2.34.1

