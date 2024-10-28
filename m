Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 882879B3A6F
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 20:30:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A676D10E543;
	Mon, 28 Oct 2024 19:30:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RkkQzk6A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC73E10E536;
 Mon, 28 Oct 2024 19:30:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730143821; x=1761679821;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ZzhKKYwot3UMtRFi6MS5HLHYqjTsTycSbN3eKiH8MO0=;
 b=RkkQzk6AwhEhviam42LQG+Jrx37bjt70qNMq7wb9PNWN3acoXPXLjbui
 zrS7IyYpQ4Sc6q9I0dVzUe47M3yjeWARL3D7I0BvhXGikdny/8MKIJ+W/
 arn3ASUHTiEgEIpGB1g1QUhBZj19cjoTWBuTw5k2iTbgjHTNiLCQkqoec
 hfJgWDyag6OfKHbZJK33KdhfL0JlLVP33860SdDQlQopdUANxe1DTNUKq
 uBuByQTR1tyoW4in71qKsthjHf11cuiQ7Ty/pZEn9SBKcljhR0y80E2hq
 0y/zImTUxMVVZXfk8a6V3IdMKhZGYjCh0tE4tCGH9WaKoulrhNMO5gy9a A==;
X-CSE-ConnectionGUID: q4xsmTZSStKyRm/OPRbNEw==
X-CSE-MsgGUID: 0MBwrqVnRweQB5mbgQq/FQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="40855931"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="40855931"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 12:30:20 -0700
X-CSE-ConnectionGUID: sExV1IHJS4+q0B5vni3psg==
X-CSE-MsgGUID: 59DonePKRNSn25LRyJBHJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="81777546"
Received: from cataylo2-desk.jf.intel.com ([10.165.21.140])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 12:30:20 -0700
From: Clint Taylor <clinton.a.taylor@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH v6 5/9] drm/i915/cx0: Remove bus reset after every c10
 transaction
Date: Mon, 28 Oct 2024 12:30:11 -0700
Message-Id: <20241028193015.3241858-6-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241028193015.3241858-1-clinton.a.taylor@intel.com>
References: <20241028193015.3241858-1-clinton.a.taylor@intel.com>
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

C10 phy timeouts occur on xe3lpd if the c10 bus is reset every
transaction. Although not required by BSPEC bus resets were added for
prior platforms as a workaround. Starting with xe3_lpd this bus reset is
not necessary.

Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 4d6e1c135bdc..c6e0cbff5201 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -224,7 +224,8 @@ static int __intel_cx0_read_once(struct intel_encoder *encoder,
 	 * down and let the message bus to end up
 	 * in a known state
 	 */
-	intel_cx0_bus_reset(encoder, lane);
+	if (DISPLAY_VER(i915) < 30)
+		intel_cx0_bus_reset(encoder, lane);
 
 	return REG_FIELD_GET(XELPDP_PORT_P2M_DATA_MASK, val);
 }
@@ -313,7 +314,8 @@ static int __intel_cx0_write_once(struct intel_encoder *encoder,
 	 * down and let the message bus to end up
 	 * in a known state
 	 */
-	intel_cx0_bus_reset(encoder, lane);
+	if (DISPLAY_VER(i915) < 30)
+		intel_cx0_bus_reset(encoder, lane);
 
 	return 0;
 }
-- 
2.25.1

