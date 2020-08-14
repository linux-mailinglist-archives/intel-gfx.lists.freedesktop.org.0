Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B94BD24474E
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Aug 2020 11:46:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD9376EB20;
	Fri, 14 Aug 2020 09:46:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 897936EB1D
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Aug 2020 09:46:17 +0000 (UTC)
IronPort-SDR: MoKAPQ+EMbR62SM1PR+IiboovuuAgsW1lEVpByoJuRFEhHSImkpvawqB7ZkdVxy8OfAh80gfXA
 FJZ7q+kPo5gA==
X-IronPort-AV: E=McAfee;i="6000,8403,9712"; a="152026599"
X-IronPort-AV: E=Sophos;i="5.76,311,1592895600"; d="scan'208";a="152026599"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2020 02:46:17 -0700
IronPort-SDR: p2i9q5eCH2Ca4FdH9Dt6zlvYR16Cq5Zl7mvtM8FwY2pb0SmVce0JeTFjUaiDsX2FtxuKxzC0F2
 kxP2afxqWQ2A==
X-IronPort-AV: E=Sophos;i="5.76,311,1592895600"; d="scan'208";a="440068642"
Received: from unknown (HELO john.iind.intel.com) ([10.223.74.105])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 14 Aug 2020 02:46:16 -0700
From: Nischal Varide <nischal.varide@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Aug 2020 08:19:50 +0530
Message-Id: <20200814024950.26830-8-nischal.varide@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200814024950.26830-1-nischal.varide@intel.com>
References: <20200814024950.26830-1-nischal.varide@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 8/8] Critical KlockWork Error - Fixes -
 intel_combo_phy.c Uninitialized Variable-1
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
Cc: Nischal Varide <nischal.varide@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

---
 drivers/gpu/drm/i915/display/intel_combo_phy.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu/drm/i915/display/intel_combo_phy.c
index eccaa79cb4a9..6e721b8ed611 100644
--- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
@@ -258,7 +258,7 @@ static bool phy_is_master(struct drm_i915_private *dev_priv, enum phy phy)
 static bool icl_combo_phy_verify_state(struct drm_i915_private *dev_priv,
 				       enum phy phy)
 {
-	bool ret;
+	bool ret = 1;
 	u32 expected_val = 0;
 
 	if (!icl_combo_phy_enabled(dev_priv, phy))
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
