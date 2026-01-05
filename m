Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC769CF38D0
	for <lists+intel-gfx@lfdr.de>; Mon, 05 Jan 2026 13:35:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF21F10E267;
	Mon,  5 Jan 2026 12:35:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XV+qpBpX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16BA610E1A4;
 Mon,  5 Jan 2026 12:35:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767616535; x=1799152535;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0tLETMzt65/r+uUmdN4LKpNjCGh36re4FXp0+03Q/Lw=;
 b=XV+qpBpXML7IUu4okI3Ve2u5FW+7vVT6fJtiDYD7SYf/To3AcUnRtO88
 51Z7/LkBR/tKqPUWdIbIQRoX77EneC4PqkwCtamHaYem3XZNjO9wlEprm
 l3PixjWS2FpvGHdBZzkfNLQmBolKXCyvMAI18chZCW3JtJGNjH1Kawsxd
 jHGi6h/J0lw5GzdGL0P9Fk9EoCHrKO44/K5HlJQBwrdXNtT5t5qFDJacI
 waQvXaGdg3j24dmlQSYySmNM0X+gh9Kgy2qp5OSVoPPMGuRvtO2dlYSyf
 0aZG9iKUv4oLBxvVl9+O64SkXMJtl8ikFt89ZbZgBAxU3UGGdGUP0X+7F A==;
X-CSE-ConnectionGUID: 2CanZf4NQri/4Ov0GBuqXA==
X-CSE-MsgGUID: 10Q5LNoORYueAtQX4X6Znw==
X-IronPort-AV: E=McAfee;i="6800,10657,11662"; a="91631891"
X-IronPort-AV: E=Sophos;i="6.21,203,1763452800"; d="scan'208";a="91631891"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 04:35:34 -0800
X-CSE-ConnectionGUID: /7m/+RzsRzCle0vxPgD9tA==
X-CSE-MsgGUID: NQOQCahSReau8X77U77VHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,203,1763452800"; d="scan'208";a="202431946"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 04:35:33 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 8/9] drm/i915/intel_lt_phy: Fix the SPDX identifier comment
Date: Mon,  5 Jan 2026 17:49:28 +0530
Message-ID: <20260105121929.576304-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260105113544.574323-9-ankit.k.nautiyal@intel.com>
References: <20260105113544.574323-9-ankit.k.nautiyal@intel.com>
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

v2: Drop the superfluous blank line. (Jani)

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lt_phy.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h b/drivers/gpu/drm/i915/display/intel_lt_phy.h
index 7659c92b6c3c..bf41858f1bc3 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
@@ -1,5 +1,5 @@
-/* SPDX-License-Identifier: MIT
- *
+/* SPDX-License-Identifier: MIT */
+/*
  * Copyright © 2025 Intel Corporation
  */
 
-- 
2.45.2

