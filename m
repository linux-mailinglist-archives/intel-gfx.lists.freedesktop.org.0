Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EEDFCEBDC5
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Dec 2025 12:26:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F0DE10E9B1;
	Wed, 31 Dec 2025 11:26:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RxQOYa0J";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B3A410E9B1
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Dec 2025 11:26:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767180397; x=1798716397;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=F5rSNSsMjLV9b95DkYjpHACB0YPFJvMdqa3rsa2WXeQ=;
 b=RxQOYa0JJITJzAnmBaIHX5FYgXPQUkQ5vtDtRTtX+qXM0yz85IvyWZBB
 kzCc//6Ezq93gE4PSjiSk6pTxt0sLpD7z+p4m3cSCkH/K/YaPMWw0VSpw
 xsm3CHrBWE7bZvSkTdqV9utaIRDSmgtQiJJ6RYTdLhml5mN7MEshIS4GN
 LRj1GIqLWxmfrokuB0BQOiwLcGSrowwQJEne/+WLUbe3viAO8hfstUJBA
 /nY6RdlwLA64VpKVWGFR0+rSrWF2wSsNROFX9bPDxw37f/mhDT/F2yZ3M
 Zif5VHFxQThoJsAS7jTLEZ8FgYTNVR9IRRSD+MUcV6yHbCuwZMEZo8w1v Q==;
X-CSE-ConnectionGUID: uY2wiXDIRSiFtkJF0ulEDg==
X-CSE-MsgGUID: Nnp5Ut4hQhS2pl/csRVtQw==
X-IronPort-AV: E=McAfee;i="6800,10657,11657"; a="68817572"
X-IronPort-AV: E=Sophos;i="6.21,191,1763452800"; d="scan'208";a="68817572"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Dec 2025 03:26:36 -0800
X-CSE-ConnectionGUID: UG8IihawTN+Eb+QBz94Quw==
X-CSE-MsgGUID: EjrhZ6TRQfqlv5oMQCAvgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,191,1763452800"; d="scan'208";a="200550240"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Dec 2025 03:26:34 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ankit.k.nautiyal@intel.com
Subject: [PATCH 4/5] drm/i915/gvt: reduce include of vfio.h
Date: Wed, 31 Dec 2025 13:26:10 +0200
Message-ID: <fbfca6252798ab58717486d1592fed310f880d42.1767180318.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1767180318.git.jani.nikula@intel.com>
References: <cover.1767180318.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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

Nothing in dmabuf.h needs vfio.h. Replace with actually needed minimal
includes.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gvt/dmabuf.h | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gvt/dmabuf.h b/drivers/gpu/drm/i915/gvt/dmabuf.h
index 06445e1cf3cf..aa7523386d94 100644
--- a/drivers/gpu/drm/i915/gvt/dmabuf.h
+++ b/drivers/gpu/drm/i915/gvt/dmabuf.h
@@ -31,7 +31,11 @@
 #ifndef _GVT_DMABUF_H_
 #define _GVT_DMABUF_H_
 
-#include <linux/vfio.h>
+#include <linux/kref.h>
+#include <linux/types.h>
+
+struct intel_vgpu;
+struct intel_vgpu_dmabuf_obj;
 
 struct intel_vgpu_fb_info {
 	__u64 start;
-- 
2.47.3

