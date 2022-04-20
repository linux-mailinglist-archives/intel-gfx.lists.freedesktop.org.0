Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7934A509009
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Apr 2022 21:09:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6E5710E2AC;
	Wed, 20 Apr 2022 19:09:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 781F110E2AC
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Apr 2022 19:09:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650481784; x=1682017784;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dcCd3rNNWYI9YzlOCIU9Pe3okube4EYF6sFF92T+9XI=;
 b=SmKY9ZHkyQU0wHZQ+8/0FzyfCd+T2FTP1EXaxqVMW07QY9Qnw+4PxRps
 M7iqClG+p5okhjmH10zHgt5k3kzqU6vDExqgYbIvJDMj9egDFd9Pcj9Sb
 SaSNXIrILa+xWSzev0TK2LHdO4TMPlCeMI4qfkVBGmDljFT/cGUVUja84
 vnuyPDqM8ZqxqDVZW2rSCzQXsVDCquLX+5GLbR3dc6A1U/C1Q2wuDFy7f
 ALpMB2lwyyx5I4g5OjKJ0wOO1hLiBOOKWPAJ5iL9aZ1vm4r2668xLsGKr
 M0Bu4mr8SMqkYciLaegEBOa3LdGyyidJ8VT5vUsoT1p+QYLLcUI0fyJi9 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10323"; a="263592261"
X-IronPort-AV: E=Sophos;i="5.90,276,1643702400"; d="scan'208";a="263592261"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2022 12:09:29 -0700
X-IronPort-AV: E=Sophos;i="5.90,276,1643702400"; d="scan'208";a="576754480"
Received: from nshlomov-mobl.ger.corp.intel.com (HELO rdvivi-mobl4.intel.com)
 ([10.255.39.73])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2022 12:09:28 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 20 Apr 2022 15:09:21 -0400
Message-Id: <20220420190921.419345-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Disable DC5 before going to DC9
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

According to BSPec:
	Sequence to Allow DC9:
		1. Follow Sequence to Disallow DC5.

which is:
	Sequence to Disallow DC5 and DC6
		Set DC_STATE_EN Dynamic DC State Enable = "Disable".

I understand that we haven't had any issue so far. But since
DC9 is a software thing, it is better to disable DC5 before
to avoid any conflict. And respect the spec to avoid potential
future issues.

Cc: Imre Deak <imre.deak@intel.com>
Cc: Anshuman Gupta <anshuman.gupta@intel.com>
Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 6a5695008f7c..b3cf5182044f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -883,6 +883,9 @@ static void bxt_enable_dc9(struct drm_i915_private *dev_priv)
 {
 	assert_can_enable_dc9(dev_priv);
 
+	/* Disable DC5 before enabling DC9 */
+	gen9_set_dc_state(dev_priv, DC_STATE_DISABLE);
+
 	drm_dbg_kms(&dev_priv->drm, "Enabling DC9\n");
 	/*
 	 * Power sequencer reset is not needed on
-- 
2.34.1

