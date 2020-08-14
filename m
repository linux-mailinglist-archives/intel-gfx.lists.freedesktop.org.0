Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0C8124474D
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Aug 2020 11:46:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1510B6EB1E;
	Fri, 14 Aug 2020 09:46:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 258BD6EB1C
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Aug 2020 09:46:16 +0000 (UTC)
IronPort-SDR: 9FWsSVgLZHQl9mhWvW4CxKpIlqkAAs3y+5iD/7LK5sYkipFAh8Nzm+OXnr1EHAuNlWceDM2b+g
 6CYT7i3ivM/A==
X-IronPort-AV: E=McAfee;i="6000,8403,9712"; a="152026597"
X-IronPort-AV: E=Sophos;i="5.76,311,1592895600"; d="scan'208";a="152026597"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2020 02:46:15 -0700
IronPort-SDR: 6JjXjlIZRqYpDwJVazzHvX1po1jGQHgYAsTlkdqcDcJU6FA0EPVWQCUzpNYUtrNEXTINvQV0B7
 slNv8bevf+1g==
X-IronPort-AV: E=Sophos;i="5.76,311,1592895600"; d="scan'208";a="440068635"
Received: from unknown (HELO john.iind.intel.com) ([10.223.74.105])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 14 Aug 2020 02:46:14 -0700
From: Nischal Varide <nischal.varide@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Aug 2020 08:19:49 +0530
Message-Id: <20200814024950.26830-7-nischal.varide@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200814024950.26830-1-nischal.varide@intel.com>
References: <20200814024950.26830-1-nischal.varide@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 7/8] Critical KlockWork Error - Fixes -
 intel_display_power.c - Possible NullPointerDereference2
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
 drivers/gpu/drm/i915/display/intel_display_power.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 7946c6af4b1e..9530f6e0b10c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -601,6 +601,9 @@ icl_tc_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
 	bool timeout_expected;
 	u32 val;
 
+	if (!dig_port) 
+	    return;
+
 	icl_tc_port_assert_ref_held(dev_priv, power_well, dig_port);
 
 	val = intel_de_read(dev_priv, DP_AUX_CH_CTL(aux_ch));
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
