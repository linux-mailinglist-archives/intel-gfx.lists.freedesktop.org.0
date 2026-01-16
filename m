Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A17F7D2E53A
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jan 2026 09:55:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77A4E10E837;
	Fri, 16 Jan 2026 08:55:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mRaFjH/S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A6A110E82E;
 Fri, 16 Jan 2026 08:55:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768553712; x=1800089712;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RP59RR1HWAvbsj4hT/gEhWhXF9JkI5v28sHskBYWKB4=;
 b=mRaFjH/S09PlU1BfZt7scSrmerLIAS9Po6EOxh5PLhRQ4C/vJVtQ5uaJ
 qZ+6kkksTO4Mpoesrg/Z5Tb5Sk9DtgSgaUkis5zZMph6erK8WdXXrSr2g
 b4KSs8XyUpxRu/t6L1m1LOG8AMbrL8T+Y0Mx1vSTBu1+2dVqKWA3lowtW
 55VDSIzeortBu58ye33aFUUQ9u86soc2yODogqCeyvFXoGjGOY3IDL0NI
 nrRZgIvzFYvMM01rTjS8D2hooqy2gHwJv3/LFVr0AnIawWz9HB3SSLYo8
 PNVO5TGlKp6TpGP/Pg9GPuXP+LtmRsHEvhBDUzbxOghCz2k/xuCcmCIWV A==;
X-CSE-ConnectionGUID: 8eSyttTwTMCLAOR8lTqc7g==
X-CSE-MsgGUID: 2x8mQD0PQx+rPURqupZI7Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11672"; a="69918119"
X-IronPort-AV: E=Sophos;i="6.21,230,1763452800"; d="scan'208";a="69918119"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2026 00:55:11 -0800
X-CSE-ConnectionGUID: J1tTs30zQpGmT7oTJrwFKA==
X-CSE-MsgGUID: pUMZplRbRhGAwknXPmd7Xw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,230,1763452800"; d="scan'208";a="204398219"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa010.jf.intel.com with ESMTP; 16 Jan 2026 00:55:06 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>,
 Gustavo Sousa <gustavo.sousa@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v3 2/3] drm/i915/cx0: Clear response ready & error bit
Date: Fri, 16 Jan 2026 14:24:54 +0530
Message-Id: <20260116085455.571766-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260116085455.571766-1-suraj.kandpal@intel.com>
References: <20260116085455.571766-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
Reviewed-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 7288065d2461..5b6b1ce40b0d 100644
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

