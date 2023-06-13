Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 088EB72EE3D
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jun 2023 23:47:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 409A310E087;
	Tue, 13 Jun 2023 21:47:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9BA410E087
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jun 2023 21:47:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686692831; x=1718228831;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yoCmvin/uGFVffVC0g3OoW1Bcfroqj8FWQI6leYuJzc=;
 b=f3DkjgM+VLbknAY/O9Ist4nCKBVF2EvCsVYnfaga5OBu1jrW5toZpkp7
 sggFIK60mUPArK5NxZbDsEAwIClWjxeOaY+w9oZmN1GHpH6cRGVgnCipD
 DAQF3Jq816Uq9ZPh+Y7JE42RdfHHAxm2nojc9c5009IHTCmwYoNoNOtSp
 oXyc0OUwfMgRvDY5fs0+Ha3ibnZaxJMOPBLBmxCL9uh/MCTAxQlVjKGnl
 gW6x50f6n386XqKG2A3whj/dmadmOxUakQQwMF15LHdA8r/JYlwYx9xgZ
 YhhyXgmXSyOiAc+PhjHgXgkfRADOp085W1cgUSORiKx6Y24DChXSN0Luf w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="338812432"
X-IronPort-AV: E=Sophos;i="6.00,240,1681196400"; d="scan'208";a="338812432"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 14:47:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="741602341"
X-IronPort-AV: E=Sophos;i="6.00,240,1681196400"; d="scan'208";a="741602341"
Received: from sparedes-mobl.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.255.35.217])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 14:47:09 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Jun 2023 18:46:58 -0300
Message-ID: <20230613214658.1099759-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Remove prototype for
 intel_cx0_phy_ddi_vswing_sequence()
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

That function is not defined anywhere.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.h | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index f99809af257d..4c4db5cdcbd0 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -43,8 +43,5 @@ int intel_c20pll_calc_port_clock(struct intel_encoder *encoder,
 void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
 				     const struct intel_crtc_state *crtc_state);
 int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int clock);
-void intel_cx0_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
-				       const struct intel_crtc_state *crtc_state,
-				       u32 level);
 int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder);
 #endif /* __INTEL_CX0_PHY_H__ */
-- 
2.41.0

