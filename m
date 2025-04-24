Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03DA6A9B8B9
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Apr 2025 22:02:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 710F910E877;
	Thu, 24 Apr 2025 20:02:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BvHTDfDI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F95910E871;
 Thu, 24 Apr 2025 20:02:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745524961; x=1777060961;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Fxuu61NkWZfTqsE0w/InQBoVHk16hsVoO3n4uPL6Vsg=;
 b=BvHTDfDI7pOH2dvWoMmAThEqpkk8a/xUdwyxMk4gJNkc4XQCLOqszYUE
 YL0eSViDgetGWsSzzJncDkKzFUDlNo4/dDTDAW6+OBEwz2WF2txQcvtPj
 GDXpnyNwf6pr/9cN4HDztd4nEHhv/C+h0U51Lp3pf1lPefXJBcMslkgWC
 MCrxdevwJqzXEDb+rtcatlc+eYZWueslH+84yk+k46FkyWSiX2Vwekn5w
 hku/2EbtPPQpyAVjONHH4h8KROk93u3Z59f6Qj4HZqEwg3WQtavl4e7My
 GIMGJ3e4pmh2qJmmmtyH+K2jC/wFvgJi56XZ7kVxZnUSwccctdpK0qJyb g==;
X-CSE-ConnectionGUID: D4RuLChtR/eYwEjjSkttYQ==
X-CSE-MsgGUID: WQFCB40cSrGhgxYqCgW5jA==
X-IronPort-AV: E=McAfee;i="6700,10204,11413"; a="58543459"
X-IronPort-AV: E=Sophos;i="6.15,237,1739865600"; d="scan'208";a="58543459"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2025 13:02:41 -0700
X-CSE-ConnectionGUID: Wof3MFvjQZG/r6kUKhkTDA==
X-CSE-MsgGUID: Wu1VE4QFQE2eDO3rSINGsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,237,1739865600"; d="scan'208";a="133637232"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.48])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2025 13:02:39 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 10/10] drm/i915/hdcp: drop unnecessary include from
 intel_hdcp_gsc.h
Date: Thu, 24 Apr 2025 23:01:42 +0300
Message-Id: <26ae2c04554fc8dd76d2fdb0f2b0a63cb1fed98f.1745524803.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1745524803.git.jani.nikula@intel.com>
References: <cover.1745524803.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Nothing in intel_hdcp_gsc.c needs linux/err.h. Remove it.

Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
index e014336aa2e4..9305c14aaffe 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
@@ -6,7 +6,6 @@
 #ifndef __INTEL_HDCP_GSC_H__
 #define __INTEL_HDCP_GSC_H__
 
-#include <linux/err.h>
 #include <linux/types.h>
 
 struct drm_device;
-- 
2.39.5

