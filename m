Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B9CAC7CA8C2
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Oct 2023 15:01:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D98510E1CB;
	Mon, 16 Oct 2023 13:01:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFFCE10E1CB
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Oct 2023 13:01:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697461304; x=1728997304;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Muls4FGNXHs9a3u5Z9hcNTGHqXf398ieKcRae2IOW+M=;
 b=ANsLoN8oqr0TxziZJ8xt8BobQg0VnMOaCddgrIQJrI8cIkhtZpuBFR2u
 beLvmEsOruL//8zgKtP5S9+SHorTbrdOJDiylOV3460ipkQZ4TBqWnlx5
 UOdQxX+7opYBZblJ2ct+aMGeLRWxupBC3jG4K1U9Qw6jwtT/OgjrD03K2
 F45rFuSSNJapX4zlnRghfvYgx8kzzl+0MAKWI8HlzduEZfOSYudIMEPiF
 r3Xk0aRXX1MDYGVk0rojkef0MZImYA3ZwfrQ6MSmeozzTxlIyWxoTVFgH
 OQ4ySTNN5YkxvUNcu7OAtdXlXnFIm65vBcclQta0Fx8/tgKLLSXY8UBEs Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="4131356"
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; 
   d="scan'208";a="4131356"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2023 06:01:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="755686462"
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; d="scan'208";a="755686462"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga002.jf.intel.com with ESMTP; 16 Oct 2023 06:01:41 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Oct 2023 15:55:44 +0300
Message-Id: <20231016125544.719963-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3] drm/i915/display: Reset message bus after
 each read/write operation
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
Cc: rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Every know and then we receive the following error when running
for example IGT test kms_flip.

[drm] *ERROR* PHY G Read 0d80 failed after 3 retries.
[drm] *ERROR* PHY G Write 0d81 failed after 3 retries.

Since the error is sporadic in nature, the patch proposes
to reset the message bus after every successful or unsuccessful
read or write operation.

v2: Add FIXME's to indicate the experimental nature of
    this workaround (Rodrigo)
v3: Dropping the additional delay as moving reset to *_read_once()
    and *_write_once() functions seem unnecessary delay

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 6e6a1818071e..9e24f820d4cf 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -206,6 +206,13 @@ static int __intel_cx0_read_once(struct drm_i915_private *i915, enum port port,
 
 	intel_clear_response_ready_flag(i915, port, lane);
 
+	/*
+	 * FIXME: Workaround to let HW to settle
+	 * down and let the message bus to end up
+	 * in a known state
+	 */
+	intel_cx0_bus_reset(i915, port, lane);
+
 	return REG_FIELD_GET(XELPDP_PORT_P2M_DATA_MASK, val);
 }
 
@@ -285,6 +292,13 @@ static int __intel_cx0_write_once(struct drm_i915_private *i915, enum port port,
 
 	intel_clear_response_ready_flag(i915, port, lane);
 
+	/*
+	 * FIXME: Workaround to let HW to settle
+	 * down and let the message bus to end up
+	 * in a known state
+	 */
+	intel_cx0_bus_reset(i915, port, lane);
+
 	return 0;
 }
 
-- 
2.34.1

