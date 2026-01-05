Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 328CBCF35D1
	for <lists+intel-gfx@lfdr.de>; Mon, 05 Jan 2026 12:52:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB0FC10E383;
	Mon,  5 Jan 2026 11:52:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kZuC4SvK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7988E10E3C5;
 Mon,  5 Jan 2026 11:52:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767613923; x=1799149923;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=c5eNOez6ot+Z49MGh7YRlZSpCKCanxDniw0Hlicvad4=;
 b=kZuC4SvKg2HQyHo3OXGcQL68z6VhLC32NKUP/m1CknS6rJzo3KOU1jFY
 Bos3EE95TgMmt7lBDcHEbUA601PSIJQn7g5Imb0uZ9VZZmBXVwfIZKwQt
 fR/XkFvLUGp5B7NvkJcpADGXj+o9aj04Z/UObKK7BD2htLbPI8reLUGTc
 0bZ+a/px/va7cPQm0ggSQXQPYIH7GsFITieUWQD7mOUiv1UamUHZYMKex
 Mx01vc1X2SjmF8lo1Laxj4y+Ual6E95Axw5jurAaQb3ci8PHiYnhHd8Fc
 4m5BUr6FJSXQH0E987zUMVZow7WMTMEEkrSEeBtUoS+JMtg8vC0rG3Oqz w==;
X-CSE-ConnectionGUID: 3IFVcayuQFOLQnqnkmvqow==
X-CSE-MsgGUID: uNdiOvsjTveUKMtYDrvtJw==
X-IronPort-AV: E=McAfee;i="6800,10657,11661"; a="69050661"
X-IronPort-AV: E=Sophos;i="6.21,203,1763452800"; d="scan'208";a="69050661"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 03:52:03 -0800
X-CSE-ConnectionGUID: Oi2txkVkSIqCspdIkXKwAg==
X-CSE-MsgGUID: ebiS9kI8Ryma1XisxHfZ7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,203,1763452800"; d="scan'208";a="202614121"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 03:52:01 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 7/9] drm/i915/intel_gvt_api: Fix the SPDX identifier comment
Date: Mon,  5 Jan 2026 17:05:41 +0530
Message-ID: <20260105113544.574323-8-ankit.k.nautiyal@intel.com>
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
 drivers/gpu/drm/i915/display/intel_gvt_api.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_gvt_api.h b/drivers/gpu/drm/i915/display/intel_gvt_api.h
index d4eea74026c6..ce3b744142a5 100644
--- a/drivers/gpu/drm/i915/display/intel_gvt_api.h
+++ b/drivers/gpu/drm/i915/display/intel_gvt_api.h
@@ -1,5 +1,5 @@
-/* SPDX-License-Identifier: MIT
- *
+/* SPDX-License-Identifier: MIT */
+/*
  * Copyright © 2025 Intel Corporation
  */
 
-- 
2.45.2

