Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cFtSKGT0t2mfXQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 13:15:32 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F4AA2994DA
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 13:15:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB2E810E508;
	Mon, 16 Mar 2026 12:15:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iWl5aEOL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A56A10E508;
 Mon, 16 Mar 2026 12:15:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773663330; x=1805199330;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uAA/iqsYYWOIFhQl1c7GbFm+ukskIimF0O18s2IuI18=;
 b=iWl5aEOLD7fufDlNKGlwK5wTdc3AzYfz3CIA0a95S9dfZtrjo2Z/Hsxf
 OjaxgFqwSLkHKdskSmHiaP4HZL8kKIVKoaKBsHasSbwaNN+7kq+Nf6rw0
 jDRyo9xjY19S5Caf1AGHSgfJTJ5LueN870wP6WhSYaNl6HHJqtTxW1lNi
 ds8GDV6BJg9aTPkPo1tCyRxvmyKyuFmCYRCFbilf7VtEhbfVBHLybPfYr
 Ek+Z2KqIFd/ghwwNtvOnzbdzQTXNAJ/8XOfL5LC5MwH6cNTw8a60zGmmV
 qCMckIQjNFC8SKFdbt0peKsgvJeVnuvEKwdYmCc8vZEmVOzEPRWDdyND0 g==;
X-CSE-ConnectionGUID: T4WxdNBASqqGsE/YAklY1Q==
X-CSE-MsgGUID: /aYr2luaQqyxAHr1ikDqDg==
X-IronPort-AV: E=McAfee;i="6800,10657,11730"; a="74711463"
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="74711463"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 05:15:30 -0700
X-CSE-ConnectionGUID: F1TaDm+/ShWAfk2VxmYXxw==
X-CSE-MsgGUID: DHWSuNm7Sbar71iNM6Bbsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="221846877"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.238])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 05:15:28 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Luca Coelho <luciano.coelho@intel.com>
Subject: [CI 4/5] drm/xe/compat: remove intel_step_name macro
Date: Mon, 16 Mar 2026 14:15:01 +0200
Message-ID: <816e3f6dda0a112392e8f8ccff820a81aff63f32.1773663208.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1773663208.git.jani.nikula@intel.com>
References: <cover.1773663208.git.jani.nikula@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 5F4AA2994DA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

As there are no more compat users left for intel_step_name(), remove the
macro and use the more direct include for the enumerations.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/compat-i915-headers/intel_step.h | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_step.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_step.h
index 2cf13a572ab0..0eabe2866f5f 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/intel_step.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_step.h
@@ -6,9 +6,8 @@
 #ifndef __INTEL_STEP_H__
 #define __INTEL_STEP_H__
 
-#include "xe_step.h"
+#include "xe_step_types.h"
 
 #define intel_step xe_step
-#define intel_step_name xe_step_name
 
 #endif /* __INTEL_STEP_H__ */
-- 
2.47.3

