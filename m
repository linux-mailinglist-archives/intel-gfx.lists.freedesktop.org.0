Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D013CE908A
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Dec 2025 09:31:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52F8910E870;
	Tue, 30 Dec 2025 08:31:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Hc08w83A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DC7710E870;
 Tue, 30 Dec 2025 08:31:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767083515; x=1798619515;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fczkTzIF+0fXxW3BFBWrDviRhwPc7UpfKn80z1X/f00=;
 b=Hc08w83ASyqQJ61N/RWWjwrLaUAJrSqxD5wYALpbJF76ltnbALhYV90T
 bfYVwvfAoty2OEg29fia1NmAe/ae2fZafZ2zrv+XLhxox+ZhY8v6lWl3X
 MR1oHBQgvxpSOSOvE0qb/kF43IOzm1bQqpXzEj8CYzPGipFNXRq9cNric
 oWSLhk7isJD3iZACsEcFpvEmeseMwFJjN73pSJT1ieww1Ag4VkbbNXklN
 2nOcMouUq6qDmGkuG4tMaxoj9ctyDBi+dnp5GkwkMDt3QF+F2ohuWjos/
 DR1OmdgCkO15bo2UbrF6PvG5BEoZOEvG0NHBBTLemWKMzTlyAwQXX5U3c g==;
X-CSE-ConnectionGUID: Fck8/OpETNOs1kR/lvXDhQ==
X-CSE-MsgGUID: osAFOTtzQOOr50jsPgNL4w==
X-IronPort-AV: E=McAfee;i="6800,10657,11656"; a="72298397"
X-IronPort-AV: E=Sophos;i="6.21,188,1763452800"; d="scan'208";a="72298397"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2025 00:31:55 -0800
X-CSE-ConnectionGUID: DQ/DbSxWReCOjpFTlVCELg==
X-CSE-MsgGUID: swfGfssfSViiCzsRe5Yq7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,188,1763452800"; d="scan'208";a="238604456"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa001.jf.intel.com with ESMTP; 30 Dec 2025 00:31:54 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, mika.kahola@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 3/3] drm/i915/cx0: Clear response ready & error bit
Date: Tue, 30 Dec 2025 14:01:42 +0530
Message-Id: <20251230083142.70064-4-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251230083142.70064-1-suraj.kandpal@intel.com>
References: <20251230083142.70064-1-suraj.kandpal@intel.com>
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

Clear the response ready and error bit of PORT_P2M_MESSAGE_BUS_STATUS
before writing the transaction pending bit of
PORT_M2P_MSGBUS_CTL as that is a hard requirement. If not done
we find that the PHY hangs since it ends up in a weird state if left
idle for more than 1 hour.

Bspec: 65101
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 5edd293b533b..5ebc3404eee2 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -222,6 +222,8 @@ static int __intel_cx0_read_once(struct intel_encoder *encoder,
 		return -ETIMEDOUT;
 	}
 
+	intel_clear_response_ready_flag(encoder, lane);
+
 	intel_de_write(display, XELPDP_PORT_M2P_MSGBUS_CTL(display, port, lane),
 		       XELPDP_PORT_M2P_TRANSACTION_PENDING |
 		       XELPDP_PORT_M2P_COMMAND_READ |
@@ -293,6 +295,8 @@ static int __intel_cx0_write_once(struct intel_encoder *encoder,
 		return -ETIMEDOUT;
 	}
 
+	intel_clear_response_ready_flag(encoder, lane);
+
 	intel_de_write(display, XELPDP_PORT_M2P_MSGBUS_CTL(display, port, lane),
 		       XELPDP_PORT_M2P_TRANSACTION_PENDING |
 		       (committed ? XELPDP_PORT_M2P_COMMAND_WRITE_COMMITTED :
-- 
2.34.1

