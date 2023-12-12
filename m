Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E842580E880
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Dec 2023 11:02:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D51D10E17F;
	Tue, 12 Dec 2023 10:02:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FC7810E17F
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Dec 2023 10:02:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702375320; x=1733911320;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4d93tAxECp0NQYcJJVtj2+oVyHAgC7riaea7YXplzUs=;
 b=HWHv6+9RnKEymJpnQvzuDzhJdpByHCekT0NXetGJU/HLv5Xo8W0ZgVdK
 mf0/MmHykO4tICKADnAii9YiKweMZBqU7FZNAtvddgBLDjW6Ef689LEgh
 1rQ4sYhLdDTz7YIE+YKhcw8d0CrvOu/5XVA4YHLogD5HnEbCJAPFYoMKs
 4Klr2mI5hdanI5Q7wCOc4VWO/zipNTm6U/9XZABJLVhx1w3DtyA64WGf4
 gfYISPPj2cvtYnwRD5WXIEC5sm94oic0xAOTxsWYmSIvN6t4hrvPvqU+Z
 xQ6jxLnsWocZSQ3z3F5EzpgdIPlLHJ6l+t7eizbTBU6nBJHCvmODahxXg g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="385192863"
X-IronPort-AV: E=Sophos;i="6.04,269,1695711600"; d="scan'208";a="385192863"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 02:01:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="773479765"
X-IronPort-AV: E=Sophos;i="6.04,269,1695711600"; d="scan'208";a="773479765"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga002.jf.intel.com with ESMTP; 12 Dec 2023 02:01:42 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915/display: Wait for PHY readiness not needed for
 disabling sequence
Date: Tue, 12 Dec 2023 11:55:20 +0200
Message-Id: <20231212095520.452363-1-mika.kahola@intel.com>
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

When going through the disconnection flow we don't need to wait for PHY
readiness and hence we can skip the wait part. For disabling the function
returns false as an indicator that the power is not enabled. After all,
we are not even using the return value when Type-C is disconnecting.

BSpec: 65380

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index f64d348a969e..79ec17fa3edd 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -1030,6 +1030,9 @@ static bool xelpdp_tc_phy_enable_tcss_power(struct intel_tc_port *tc, bool enabl
 
 	__xelpdp_tc_phy_enable_tcss_power(tc, enable);
 
+	if (!enable)
+		return false;
+
 	if ((!tc_phy_wait_for_ready(tc) ||
 	     !xelpdp_tc_phy_wait_for_tcss_power(tc, enable)) &&
 	    !drm_WARN_ON(&i915->drm, tc->mode == TC_PORT_LEGACY)) {
-- 
2.34.1

