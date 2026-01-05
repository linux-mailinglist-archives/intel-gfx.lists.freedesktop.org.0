Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E57BCF35C8
	for <lists+intel-gfx@lfdr.de>; Mon, 05 Jan 2026 12:52:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC91E10E3C6;
	Mon,  5 Jan 2026 11:51:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ga0I6GVN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4236810E3C3;
 Mon,  5 Jan 2026 11:51:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767613918; x=1799149918;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gAwQST+Dy+zTk5feJNNw/OeE37PpopGrvfbE9tdMzrw=;
 b=ga0I6GVNGfXormXz2OcGmD1r4Jz/tWB7r5sh5LqXdMS6YJ+DomWBRXGH
 GxbO0vVRA+5XbNAiclzOQ5cxlcFqbAvnuk8h9nRQR+PCFxbppFCQR0Pt6
 7oWF1mcmTWghpDgZFWup4ScgpyjVocJ/12avHb9IfT3T+0tKrKqxY8u89
 tzWje89wOC6cj2jYxS7CpuTKHJA5+Ccibw7JDLiOt3l8Bb6j3YPWASwu3
 PaKTLqM554vpWcx2KIDiiD5OV3bNb2n0PBW+y7dIckrVZbm7i2/aiiIsG
 zMNxC1liPgTXOni/slcjgwtQiUJNFtIILVhELhG3z2y193e7KKHwV9vLT g==;
X-CSE-ConnectionGUID: N+AXuIGtSNKE/LzfjelJ/g==
X-CSE-MsgGUID: sQ3RGz0rRJugt/qGvq6b7g==
X-IronPort-AV: E=McAfee;i="6800,10657,11661"; a="69050657"
X-IronPort-AV: E=Sophos;i="6.21,203,1763452800"; d="scan'208";a="69050657"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 03:51:58 -0800
X-CSE-ConnectionGUID: vyzbp2FuRcGydmuTkVDuOg==
X-CSE-MsgGUID: grWSjjqmQKKWPglYl99Z1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,203,1763452800"; d="scan'208";a="202614092"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 03:51:56 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 4/9] drm/i915/intel_display_params: Fix the SPDX identifier
 comment
Date: Mon,  5 Jan 2026 17:05:38 +0530
Message-ID: <20260105113544.574323-5-ankit.k.nautiyal@intel.com>
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
 drivers/gpu/drm/i915/display/intel_display_params.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/drivers/gpu/drm/i915/display/intel_display_params.h
index b01bc5700c52..b95ecf728daa 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.h
+++ b/drivers/gpu/drm/i915/display/intel_display_params.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: MIT
+/* SPDX-License-Identifier: MIT */
 /*
  * Copyright © 2023 Intel Corporation
  */
-- 
2.45.2

