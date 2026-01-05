Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 374A6CF35CE
	for <lists+intel-gfx@lfdr.de>; Mon, 05 Jan 2026 12:52:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCE4C10E306;
	Mon,  5 Jan 2026 11:52:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W/uXItJj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB35210E3C5;
 Mon,  5 Jan 2026 11:52:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767613921; x=1799149921;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=M6bXKJGeoNpwgmVuVWUlp9gn0VKsude8/rx2ImbqIfw=;
 b=W/uXItJjvUeH4BXAfMg9LLs2V7FzQFq3WXucGhQz/2ye82dPurOJw/7c
 Dr6lR7HGX8y3r3C7qe/sV4bjXQlQvJvxfbqjMj++C9gEdIu2YuU1Ie+yV
 thsUD0ZKwnBjbzeu5na1twv+sAlQDaOLzk+rv6M1FPoOjEUo2F7D0zVX2
 19lQe6XFSCm7Pg63GKf3rnL7lOd4h/yS/QTK88BnPObSH4a8FL3ZbYAhh
 jQNDrG4f8PiwElGIE5AhcW3P24ShHm+yGXXlw4gUzLdgqKnp2O1eMTjYN
 iotDHme4aQdEXdQ0oDSm2KKHqvLYL/giFI/RdXc3zQo77VUmqzx7QZCro w==;
X-CSE-ConnectionGUID: PfLSxw8GS3+EewJhq+Sq3A==
X-CSE-MsgGUID: /V5JZSZJQc2doEczO4Pd7w==
X-IronPort-AV: E=McAfee;i="6800,10657,11661"; a="69050660"
X-IronPort-AV: E=Sophos;i="6.21,203,1763452800"; d="scan'208";a="69050660"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 03:52:01 -0800
X-CSE-ConnectionGUID: jwkUlBFATaiajHXr8GA6EA==
X-CSE-MsgGUID: CZ0GTIh+REqzEIj8nEpTEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,203,1763452800"; d="scan'208";a="202614111"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 03:52:00 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 6/9] drm/i915/intel_dsb_buffer: Fix the SPDX identifier comment
Date: Mon,  5 Jan 2026 17:05:40 +0530
Message-ID: <20260105113544.574323-7-ankit.k.nautiyal@intel.com>
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
 drivers/gpu/drm/i915/display/intel_dsb_buffer.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb_buffer.h b/drivers/gpu/drm/i915/display/intel_dsb_buffer.h
index d746c872e0c7..f4577d1f25cd 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb_buffer.h
+++ b/drivers/gpu/drm/i915/display/intel_dsb_buffer.h
@@ -1,5 +1,5 @@
-/* SPDX-License-Identifier: MIT
- *
+/* SPDX-License-Identifier: MIT */
+/*
  * Copyright © 2023 Intel Corporation
  */
 
-- 
2.45.2

