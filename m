Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BE9DCF35C2
	for <lists+intel-gfx@lfdr.de>; Mon, 05 Jan 2026 12:51:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08D7310E3BD;
	Mon,  5 Jan 2026 11:51:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hbyMhDbe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C34D710E3BC;
 Mon,  5 Jan 2026 11:51:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767613915; x=1799149915;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aX+ugELG4iHqywcar/h+THV0sghxHExCRJ61HMVo2wc=;
 b=hbyMhDbey8RjZX5YnLnuO9hyqWzqndS258i7hJq5BuDjuPGlpP/YQDT4
 UWN5PqLdQ629bS3B0K5XMmLkz2BeMDzKVXMo6AGHFLBb+MNGkpfzOKzu/
 sJCP8m8AIZwEqspfbSDVsROdO/uCJQtEsXG83hykdVBsikru5GCykMR1Y
 dnrBWyKVQwUVR7tfsEGv+k95emHsJaKsSVNAv/8VKgdis1lB7zHtttIxx
 /QHL9u2tRU3bSFvWm9dtkeNijvj7JquuNjo47j1Wp+0iZQ6/Hw4iBtdBs
 jpmYbbPYccgkIwgMnk6Dv0clydAwiyMvuv+HD94qkBDtrvux1+XMzf32N g==;
X-CSE-ConnectionGUID: JKKXoeV3R+GXxuumR/QG5w==
X-CSE-MsgGUID: 2ctd8+/vT4+gMbtKTC/ZEg==
X-IronPort-AV: E=McAfee;i="6800,10657,11661"; a="69050654"
X-IronPort-AV: E=Sophos;i="6.21,203,1763452800"; d="scan'208";a="69050654"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 03:51:54 -0800
X-CSE-ConnectionGUID: Fw5AlTxSTtmv0r13W/ZPtQ==
X-CSE-MsgGUID: XJIaoExnTwmhb2JbJUiI1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,203,1763452800"; d="scan'208";a="202614066"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 03:51:53 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 2/9] drm/i915/intel_cx0_phy: Fix the SPDX identifier comment
Date: Mon,  5 Jan 2026 17:05:36 +0530
Message-ID: <20260105113544.574323-3-ankit.k.nautiyal@intel.com>
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
 drivers/gpu/drm/i915/display/intel_cx0_phy.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index 9f10113e2d18..ae98ac23ea22 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: MIT
+/* SPDX-License-Identifier: MIT */
 /*
  * Copyright © 2023 Intel Corporation
  */
-- 
2.45.2

