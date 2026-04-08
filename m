Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qDgxNJty1ml2FQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 17:22:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C3163BE1D7
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 17:22:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8AB910E68C;
	Wed,  8 Apr 2026 15:22:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L0W/F8aw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3249410E68B;
 Wed,  8 Apr 2026 15:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775661720; x=1807197720;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PgTuL1CxrSE9DVnvmZ8Z1b3mbSq04a4hAhojm/bgwb0=;
 b=L0W/F8awUMIGev3vcE3h8YHZb7Jgf9kziSOmfVsxaMRl22FPyAvbrV2V
 nBxykIxqOR/o1FfzmjE9svzdwXjltjGIlSvQA1kuzDamdE2BDKxHPR3ZY
 GYmbw+AFwrBlItYU8Zp8vJ2YQ3uJt+MH2C8MPvdO0l4ojBYl1Chsacal1
 FRtqqBDAtcKdYy66KI7iU8yHb5KTfa+sEz0ahe501VIz5H3Q8+GujWkB1
 /bvmCY206ogcYDYfbvyhrtQ206ioMolkwgBvQs3czIzhlUSisxVH7Wem9
 BlHk8M3qHbfps4gudMaX22F2dAHy9HCDF5VYMLtrt1cGGeAdddmMXb6rO Q==;
X-CSE-ConnectionGUID: in4Unl8yTeajgZFXp0qsdw==
X-CSE-MsgGUID: 3CgMoDmDT+OqBGbtxKXFXw==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="64193881"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="64193881"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 08:22:00 -0700
X-CSE-ConnectionGUID: poeAa/oVRfegOr3KuIplHQ==
X-CSE-MsgGUID: NhJkOfZ4TzarwYaKj/O8+g==
X-ExtLoop1: 1
Received: from krybak-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.32])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 08:21:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 maarten.lankhorst@linux.intel.com
Subject: [PATCH 1/2] drm/i915: convert i915_fence_timeout() into a proper
 function
Date: Wed,  8 Apr 2026 18:21:48 +0300
Message-ID: <05f09eefef894bf87c3621b08a65d41c9050bc6f.1775661609.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1775661609.git.jani.nikula@intel.com>
References: <cover.1775661609.git.jani.nikula@intel.com>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 9C3163BE1D7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

We'll be needing a pointer to the function, and it'll be cleaner if it's
not a static inline. Make it so.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_config.c | 5 +++++
 drivers/gpu/drm/i915/i915_config.h | 7 +------
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_config.c b/drivers/gpu/drm/i915/i915_config.c
index 9e13b1be407c..71b195966a66 100644
--- a/drivers/gpu/drm/i915/i915_config.c
+++ b/drivers/gpu/drm/i915/i915_config.c
@@ -15,3 +15,8 @@ unsigned long i915_fence_context_timeout(u64 context)
 
 	return 0;
 }
+
+unsigned long i915_fence_timeout(void)
+{
+	return i915_fence_context_timeout(U64_MAX);
+}
diff --git a/drivers/gpu/drm/i915/i915_config.h b/drivers/gpu/drm/i915/i915_config.h
index f386328d9e95..efb02a85284e 100644
--- a/drivers/gpu/drm/i915/i915_config.h
+++ b/drivers/gpu/drm/i915/i915_config.h
@@ -7,13 +7,8 @@
 #define __I915_CONFIG_H__
 
 #include <linux/types.h>
-#include <linux/limits.h>
 
 unsigned long i915_fence_context_timeout(u64 context);
-
-static inline unsigned long i915_fence_timeout(void)
-{
-	return i915_fence_context_timeout(U64_MAX);
-}
+unsigned long i915_fence_timeout(void);
 
 #endif /* __I915_CONFIG_H__ */
-- 
2.47.3

