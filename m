Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F47F8A6513
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Apr 2024 09:30:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FB1810EEF8;
	Tue, 16 Apr 2024 07:30:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XUNyvW4B";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C0C510F769
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Apr 2024 07:30:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713252604; x=1744788604;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mbJMXojXWNGgG9Rn0HRlRmoaZmMmc78PpkdtfTb0S0A=;
 b=XUNyvW4Bg5hz6L+okYAFozICcZ8Kt6Un6HBwzM1W1HEPa/+JthHDIc3P
 64KOwB9oFkaawxYrI/wS59y3epykTRZxiS8c3qwdbQK3TGMaUjIuhJyT2
 OfK2o3BXQgiZKXnuc3CEQP62UqV7qYB7ArOg0TE68zeaFADb5MLbMMXs3
 TelJFut5XWjA0O3R3+ERoC5+6xMDkFuOOIgE3I8l1CyJdAmLd/TyNZG8r
 Y7B/EwBCpN5kisNdog3Nq8gWH/bcaB3paxl22+0ShBZbElbqxs0Zv1A1U
 txG9iHTiPwcZaPBymHTBGGadh8XsFLV3qbpvWJReN8xl99rGtB/LdVGjo Q==;
X-CSE-ConnectionGUID: 2pVMSAL8Q9O96SClUGdGfA==
X-CSE-MsgGUID: Vw4DRd7jSueM1taCcS+krg==
X-IronPort-AV: E=McAfee;i="6600,9927,11045"; a="34063829"
X-IronPort-AV: E=Sophos;i="6.07,205,1708416000"; d="scan'208";a="34063829"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2024 00:30:04 -0700
X-CSE-ConnectionGUID: 4zUc5/sdTBilAFkLki4tWA==
X-CSE-MsgGUID: aPTtNH+ITqaev5tAEr+g9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,205,1708416000"; d="scan'208";a="22206633"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa010.fm.intel.com with ESMTP; 16 Apr 2024 00:30:02 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com, uma.shankar@intel.com,
 ankit.k.nautiyal@intel.com, dnyaneshwar.bhadane@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 1/2] drm/i915: Add SCLKGATE_DIS register definition
Date: Tue, 16 Apr 2024 12:57:33 +0530
Message-ID: <20240416072733.624048-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240416072733.624048-2-suraj.kandpal@intel.com>
References: <20240416072733.624048-2-suraj.kandpal@intel.com>
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

Add SCLKGATE_DIS register and it's register definition which
will be used the next patch.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 3f34efcd7d6c..beec91a2f493 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -6250,6 +6250,10 @@ enum skl_power_gate {
 #define  SFUSE_STRAP_DDIC_DETECTED	(1 << 1)
 #define  SFUSE_STRAP_DDID_DETECTED	(1 << 0)
 
+/* SCLKGATE_DIS */
+#define SCLKGATE_DIS			_MMIO(0xc2014)
+#define  DPLS_GATING_DISABLE		REG_BIT(29)
+
 #define WM_MISC				_MMIO(0x45260)
 #define  WM_MISC_DATA_PARTITION_5_6	(1 << 0)
 
-- 
2.43.2

