Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AE7B903ED5
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2024 16:30:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E055B10E665;
	Tue, 11 Jun 2024 14:30:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VArxkGX6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D79510E15D;
 Tue, 11 Jun 2024 14:30:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718116248; x=1749652248;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BRZ65KgMChPgz3iLzvflJBeEdG7xcZXYraEiNxEaDNI=;
 b=VArxkGX6yOh2iqDh+f8s9+33W9etSYKZP38BcnBWxx2EG0vQioF2XKYv
 QtfMaITx/3cs8hEt4GNXbX61DMSyL4m25wqe2f+MV3CNyY8xhv5SO5KZr
 ld9YVit3uretHMTVtoZEMmcF7mIpzcTTWG9mzZYDanJsveIS3fZZptlsC
 Jxnu/KiH15ooQ9aXjCtsvHnhqsOOR6yRwYX4TENdMPrOuMXw3vSIoO+Ke
 lORTWnMik/cDapnapGlwTaI2Qw5iusPaTNF6VHNu80L8EBNXjuS8fPhYs
 9F3PgZP7eJDLjNP36FryeonrsIzldgTEk7I2+YU1tI/wLGOhU7Fi8iihc g==;
X-CSE-ConnectionGUID: KC9B3/dbR3Gw+h66td1KxA==
X-CSE-MsgGUID: YVVujU+bTnCAF2OMYyOrjg==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="14957532"
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="14957532"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 07:30:45 -0700
X-CSE-ConnectionGUID: xD6Je8JHRheA5e69nYEJeA==
X-CSE-MsgGUID: q5wQ/WY0SkWTmAViegc7GA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="44357818"
Received: from mwajdecz-mobl.ger.corp.intel.com ([10.94.248.185])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 07:30:44 -0700
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Subject: [RFC 4/7] drm/intel/guc: Update CTB communication ABI
Date: Tue, 11 Jun 2024 16:30:05 +0200
Message-Id: <20240611143008.1900-5-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20240611143008.1900-1-michal.wajdeczko@intel.com>
References: <20240611143008.1900-1-michal.wajdeczko@intel.com>
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

Add missing definition of the CTB_STATUS_UNUSED bit.

Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
---
 drivers/gpu/drm/intel/guc/abi/guc_communication_ctb_abi.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/intel/guc/abi/guc_communication_ctb_abi.h b/drivers/gpu/drm/intel/guc/abi/guc_communication_ctb_abi.h
index 8f86a16dc577..57f3c44e0a40 100644
--- a/drivers/gpu/drm/intel/guc/abi/guc_communication_ctb_abi.h
+++ b/drivers/gpu/drm/intel/guc/abi/guc_communication_ctb_abi.h
@@ -37,6 +37,7 @@
  *  |   |       |   - _`GUC_CTB_STATUS_OVERFLOW` = 1 (head/tail too large)     |
  *  |   |       |   - _`GUC_CTB_STATUS_UNDERFLOW` = 2 (truncated message)      |
  *  |   |       |   - _`GUC_CTB_STATUS_MISMATCH` = 4 (head/tail modified)      |
+ *  |   |       |   - _`GUC_CTB_STATUS_UNUSED` = 8 (CTB is not in use)         |
  *  +---+-------+--------------------------------------------------------------+
  *  |...|       | RESERVED = MBZ                                               |
  *  +---+-------+--------------------------------------------------------------+
@@ -52,6 +53,7 @@ struct guc_ct_buffer_desc {
 #define GUC_CTB_STATUS_OVERFLOW				(1 << 0)
 #define GUC_CTB_STATUS_UNDERFLOW			(1 << 1)
 #define GUC_CTB_STATUS_MISMATCH				(1 << 2)
+#define GUC_CTB_STATUS_UNUSED				(1 << 3)
 	u32 reserved[13];
 } __packed;
 static_assert(sizeof(struct guc_ct_buffer_desc) == 64);
-- 
2.43.0

