Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1477FD1C496
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jan 2026 04:43:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99A7A10E5C6;
	Wed, 14 Jan 2026 03:43:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YCas8Wj+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32DEE10E5C3;
 Wed, 14 Jan 2026 03:43:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768362189; x=1799898189;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=a/+6gFeZrRXEO/Fs31a8bDXekTx1JPY70Y9mpDpGJ3g=;
 b=YCas8Wj+IL46qDBmDisMTMk7em09E6639+I68XC5jjaNa1EuEMzz13Wb
 wli31/eEmz899Zmk2v6BcGEZlj76PnhiYCKYiSmosbEuNwhlRR7DaZ9zh
 k/cPA9qnicCGXf3zBONBhLZ/0euHOtzOCh78b7v+ji1KSNG7cXHwPNsM4
 fKhN6feEl2I3NKaNWi6caOsn3rwgpTYh9ldCMBUTxPtSD4bzOVPN2NGCV
 lO/+mKqcE8ugfqKagW+8FaToeqXjsYsdHM3ePhwp6slguuABnFQdugPcA
 92Gdv0sMkEyLsTAVQY8iGYBoRB1cPRSIegkE4AglGVp+PVIO6NIdpwalp Q==;
X-CSE-ConnectionGUID: 2wGWwn7ATCG/rESMLo2Teg==
X-CSE-MsgGUID: GfQZ48n3TNaOOXohZDO36A==
X-IronPort-AV: E=McAfee;i="6800,10657,11670"; a="68664594"
X-IronPort-AV: E=Sophos;i="6.21,224,1763452800"; d="scan'208";a="68664594"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2026 19:43:09 -0800
X-CSE-ConnectionGUID: zJtZckN3Q9ifHaU3A0ESTw==
X-CSE-MsgGUID: QqFvMgBkQxGDKS0PEPYyVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,224,1763452800"; d="scan'208";a="204833753"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa008.fm.intel.com with ESMTP; 13 Jan 2026 19:43:07 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>,
 Gustavo Sousa <gustavo.sousa@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v2 2/3] drm/i915/cx0: Clear response ready & error bit
Date: Wed, 14 Jan 2026 09:12:58 +0530
Message-Id: <20260114034259.466605-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260114034259.466605-1-suraj.kandpal@intel.com>
References: <20260114034259.466605-1-suraj.kandpal@intel.com>
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
index 3418a3ed28fd..00c7fa9040ee 100644
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

