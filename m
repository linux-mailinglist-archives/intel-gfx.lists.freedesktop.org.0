Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GDFfB1it+Wky+wIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 05 May 2026 10:42:00 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93BE04C8C85
	for <lists+intel-gfx@lfdr.de>; Tue, 05 May 2026 10:41:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F83510E9EE;
	Tue,  5 May 2026 08:41:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hIlQ6xC8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7787C10E9EE
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 May 2026 08:41:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777970515; x=1809506515;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Qtxnoy7BH2bi+vFGp0AFWv2ozIaHTdP/+U01o/6+bRM=;
 b=hIlQ6xC8r4idaRcM6N7KM4OcnN62Gf71fAyE2P3w5NrvDE3e1Yf8NQKN
 /w6dJJqC1v9ngJNVLuxkKUY3+lZ7zizmuZfKgPMqLnyc3+IF2TnCByrkd
 SdPJsPbp9BdNWTXAzypYszKKOKuNz5oQNfs7cnbzlohxYdNJyKSieCahq
 weNwphdFS9IyPFBqLnsgBzIn+z3FOJQzi7eBDbhadd1An5Vfn+1Vj9PHb
 K9x/uyvv+dNrT6EvZ3NnB3Srr4urdCimfH5rxnGhEhoCCM6Y6H4rs+tCI
 9pJrYTJiGrmfrsDWRb9ypU80gfzszUQvgHBYiPcGlqW5+ZBE2WL9/HY9u A==;
X-CSE-ConnectionGUID: Ido3d21US/+vlMV54ZKrmg==
X-CSE-MsgGUID: cESuaReTRMSQ8is2o9fcRA==
X-IronPort-AV: E=McAfee;i="6800,10657,11776"; a="78740907"
X-IronPort-AV: E=Sophos;i="6.23,217,1770624000"; d="scan'208";a="78740907"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2026 01:41:55 -0700
X-CSE-ConnectionGUID: i9v8ypeSTySoQ/YFEUfc6g==
X-CSE-MsgGUID: evI0DIgnQJGBF75CnMKiNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,217,1770624000"; d="scan'208";a="229269366"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.244.55])
 by fmviesa009-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 May 2026 01:41:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH] drm/i915/irq: drop unnecessary forward declarations and
 includes
Date: Tue,  5 May 2026 11:41:50 +0300
Message-ID: <20260505084150.3346378-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
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
X-Rspamd-Queue-Id: 93BE04C8C85
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]

The i915_irq.h header has a bunch of leftover forward declarations and
includes. Remove them.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_irq.h | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.h b/drivers/gpu/drm/i915/i915_irq.h
index 5c87d6d41c74..108a187618de 100644
--- a/drivers/gpu/drm/i915/i915_irq.h
+++ b/drivers/gpu/drm/i915/i915_irq.h
@@ -6,18 +6,11 @@
 #ifndef __I915_IRQ_H__
 #define __I915_IRQ_H__
 
-#include <linux/ktime.h>
 #include <linux/types.h>
 
 #include "i915_reg_defs.h"
 
-enum pipe;
-struct drm_crtc;
-struct drm_device;
-struct drm_display_mode;
 struct drm_i915_private;
-struct intel_crtc;
-struct intel_encoder;
 struct intel_uncore;
 
 void intel_irq_init(struct drm_i915_private *dev_priv);
-- 
2.47.3

