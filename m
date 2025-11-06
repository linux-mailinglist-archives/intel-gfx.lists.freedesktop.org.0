Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76552C39CB0
	for <lists+intel-gfx@lfdr.de>; Thu, 06 Nov 2025 10:21:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02D1410E85F;
	Thu,  6 Nov 2025 09:21:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QpdhWtRz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D705910E857
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Nov 2025 09:21:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762420868; x=1793956868;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FztVZOkpBwxXXSRf8PZSeLK6cz4JmfYvA+krF2qfvUQ=;
 b=QpdhWtRze/TeqnfwU49gkyZmpxd9bEeHreZONL0p2L8d1oL9yh9HgdJd
 CumuhvCJsmfGNlGknixVMogMyuxt//Yaxem5eYkKHCLusM/wwamNgjznb
 jbQzsWap7XIxpfcmtLrk6noCjPwwVNdbKqpBCyX0fH4C6nT0sgu+bcjHm
 MbHRznGyE4U84LGQ48Q9iGGe0mqBO0cffMApSs/KSUySJZQlKt+2XyDhF
 2/2xihLwouAijZFD0+OlhWPURpA7M+PSd1dNCtW9Pp05Dn7W+p8Wk2aax
 rxj1bKf1yvVA249vgaEjYqmIizk2izkt2hQJczzhOfeq9u4q3EXAiJOKB A==;
X-CSE-ConnectionGUID: HPzLWHm1QXWHCEQFuAZEkw==
X-CSE-MsgGUID: mnO5pof6S7KzK2JbW6bBDg==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="87181863"
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="87181863"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 01:21:08 -0800
X-CSE-ConnectionGUID: AaksM4n9TTiPD5/mvDm4oQ==
X-CSE-MsgGUID: M97frBuQTRiXqy75UDrzQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="187423860"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orviesa009.jf.intel.com with ESMTP; 06 Nov 2025 01:21:06 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH] drm/i915/display: Initialize the ret variable for default case
Date: Thu,  6 Nov 2025 14:23:54 +0530
Message-Id: <20251106085354.1237867-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
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

To make the coverity tool happy initialize the variable.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
index 31edf57a296f..fb9689acf814 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
@@ -171,6 +171,9 @@ static const u8 *mipi_exec_send_packet(struct intel_dsi *intel_dsi,
 	case MIPI_DSI_DCS_LONG_WRITE:
 		ret = mipi_dsi_dcs_write_buffer(dsi_device, data, len);
 		break;
+	default:
+		ret = 0;
+		break;
 	}
 
 	if (ret < 0)
-- 
2.29.0

