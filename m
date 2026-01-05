Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B349CF35C5
	for <lists+intel-gfx@lfdr.de>; Mon, 05 Jan 2026 12:51:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B134F10E3C0;
	Mon,  5 Jan 2026 11:51:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Yuu9CqBn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BA8910E3C0;
 Mon,  5 Jan 2026 11:51:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767613916; x=1799149916;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=L4S3GlcG9BBHpR8NQwUsjDGFfa0GSAgZ3yV3Tebyxwc=;
 b=Yuu9CqBnj0wfsd5d0B5mQiDmn3ky+2j6uQd8XI+/QLKUsdtQkxWPIR6J
 GEvVsdupdVLQRsc+9sHx2MhTJuvlUjlco8+KE4wGVMFDDK1CfuR+xciFW
 Gyuvtwpn+O0TZbSpf7TXeDcObhgl0lK1JaWji+l9i9WuS5FfJviupqJWI
 56xSDCM5QZKcdZsUuy09EQ0z0kgnQBUz688vxTrCbWLy7UBQTwyMvJWvb
 NdDxpMBeFTqOFED0V/FIYrj9nYo/9yj65awwaEtGzWmoXHhxf3cm6ZfQg
 eLucpKgYgH6o6Oh5ih4j7K2tnRjcHDgsYHxbTx2lScCf6EkWSUvdXJpi6 w==;
X-CSE-ConnectionGUID: MbOarXU+RJCv1y8B5p/xkQ==
X-CSE-MsgGUID: Slak8R4fSO2K0MYZtGuN/g==
X-IronPort-AV: E=McAfee;i="6800,10657,11661"; a="69050655"
X-IronPort-AV: E=Sophos;i="6.21,203,1763452800"; d="scan'208";a="69050655"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 03:51:56 -0800
X-CSE-ConnectionGUID: iunOLwySQweWD7AR4xRPmw==
X-CSE-MsgGUID: Evj6CikXQAOf6F2Cj8WpIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,203,1763452800"; d="scan'208";a="202614080"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 03:51:55 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 3/9] drm/i915/intel_cx0_phy_regs: Fix the SPDX identifier
 comment
Date: Mon,  5 Jan 2026 17:05:37 +0530
Message-ID: <20260105113544.574323-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260105113544.574323-1-ankit.k.nautiyal@intel.com>
References: <20260105113544.574323-1-ankit.k.nautiyal@intel.com>
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

Fix the SPDX identifier comment as per the licensing rules [1].

[1] https://www.kernel.org/doc/html/latest/process/license-rules.html

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index 8df5cd5ce418..658890f73515 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -1,5 +1,5 @@
-/* SPDX-License-Identifier: MIT
- *
+/* SPDX-License-Identifier: MIT */
+/*
  * Copyright © 2023 Intel Corporation
  */
 
-- 
2.45.2

