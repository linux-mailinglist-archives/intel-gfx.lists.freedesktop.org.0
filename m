Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0NmxMAbws2nYdgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 12:07:50 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 127CD281E6E
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 12:07:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2D9010E101;
	Fri, 13 Mar 2026 11:07:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AQJSCkq2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3A8010E0F5
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 11:07:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773400066; x=1804936066;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DzUf/8iRGA8qUsueHxIvGDpDNyCtY9vmcu0Q7nYLcAM=;
 b=AQJSCkq2U4ZMD3j22SQIUtQQWdtJmuBrVqnlxGZ8+1CX/HrbZcXIpRyC
 yMxk5eLNv3h0f+QsqCEZu9OMO2bHP3hpStq7pYgO+I/8mlHz8SWxJ9zFQ
 E9legoirhKSXBvwHLGNHqRc2GEOyY9nOTWQjLWPzjyOGIPpzL4+UDQaiQ
 agvnegAns61vrCfm3TYlYq/3Uakvn5cRW2yE9sNXWubavGcKhTfo6RICC
 X6GyNGOK5YoFf5t6xCcCggaozfoaDhekzRA24SBb/plpZmso1VEyNtOkb
 Y0HofkvMNk760lAK/ckoMngoWA7i0+U8mlCwpK/eshje3PCJqxrT8D1F5 A==;
X-CSE-ConnectionGUID: erh1KQLRQUOEOsKulwA5LQ==
X-CSE-MsgGUID: Rud+YDCrRKa99JAZc1Ddww==
X-IronPort-AV: E=McAfee;i="6800,10657,11727"; a="85134817"
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="85134817"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 04:07:45 -0700
X-CSE-ConnectionGUID: gfF/eYY5SVmFBvkyMAph5w==
X-CSE-MsgGUID: bEtW3hdpQJSVMuyRTvSw7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="226088946"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.21])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 04:07:44 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: stable@vger.kernel.org
Subject: [PATCH] drm/i915: Order OP vs. timeout correctly in __wait_for()
Date: Fri, 13 Mar 2026 13:07:40 +0200
Message-ID: <20260313110740.24620-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,linux.intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 127CD281E6E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Put the barrier() before the OP so that anything we read out in
OP and check in COND will actually be read out after the timeout
has been evaluated.

Currently the only place where we use OP is __intel_wait_for_register(),
but the use there is precisely susceptible to this reordering, assuming
the ktime_*() stuff itself doesn't act as a sufficient barrier:

__intel_wait_for_register(...)
{
	...
	ret = __wait_for(reg_value = intel_uncore_read_notrace(...),
 			 (reg_value & mask) == value, ...);
	...
}

Cc: stable@vger.kernel.org
Fixes: 1c3c1dc66a96 ("drm/i915: Add compiler barrier to wait_for")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_wait_util.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_wait_util.h b/drivers/gpu/drm/i915/i915_wait_util.h
index 7376898e3bf8..e1ed7921ec70 100644
--- a/drivers/gpu/drm/i915/i915_wait_util.h
+++ b/drivers/gpu/drm/i915/i915_wait_util.h
@@ -25,9 +25,9 @@
 	might_sleep();							\
 	for (;;) {							\
 		const bool expired__ = ktime_after(ktime_get_raw(), end__); \
-		OP;							\
 		/* Guarantee COND check prior to timeout */		\
 		barrier();						\
+		OP;							\
 		if (COND) {						\
 			ret__ = 0;					\
 			break;						\
-- 
2.52.0

