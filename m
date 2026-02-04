Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IEy3J9evgmn/YAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Feb 2026 03:32:55 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30327E0E3C
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Feb 2026 03:32:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A2C510E291;
	Wed,  4 Feb 2026 02:32:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="czkPJ6zN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0905710E1CE;
 Wed,  4 Feb 2026 02:32:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770172372; x=1801708372;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4T49y/2I0wU/l1YzAqWO7G2wWcmJCdmOkVtzOO4WnzQ=;
 b=czkPJ6zNoOTWtb/b4ZCz36M5XxnSCEnW3bLMrgL0Gv5eFO6KpbybcT+W
 KMk11AC6bebTG3f7h/Olw8YF/SLMDCINEqz8ETjxdUZ6i9MA94P8/oZd5
 bhJbW7ZisRtpFFdgZMvJMt61StYFbiTQFXTZjnHUndbooY2WXTMSYYr2L
 P8RJE6YLy6pFmA2/QHcXobRzUGUSm6xK0GrFlnULkffEAFV80IdgQZLpv
 x/5y2rqZavBKwGzQTnsN/facJQN2ksa9NLKULl/X0P+xh2k/QLUFGwY90
 2wzN//7dFUYiBmFoobYm9BI0SY6zOSW7ncoHbdUnU5EfkBiIg6/x53QA5 g==;
X-CSE-ConnectionGUID: zfwnO052R3CHUpB8T1jOMw==
X-CSE-MsgGUID: ruUrSZY1QQqtLbm44qRZrQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="75212153"
X-IronPort-AV: E=Sophos;i="6.21,271,1763452800"; d="scan'208";a="75212153"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 18:32:51 -0800
X-CSE-ConnectionGUID: uc0qJWuKTRSJ6Wk6cVW+0w==
X-CSE-MsgGUID: h/wzDgmYTtyxMjcXn8fRzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,271,1763452800"; d="scan'208";a="210060487"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa008.jf.intel.com with ESMTP; 03 Feb 2026 18:32:49 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, imre.deak@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2] drm/i915/ltphy: Return true for TBT scenario during
 lt_phy_state compare
Date: Wed,  4 Feb 2026 08:02:47 +0530
Message-Id: <20260204023247.1560196-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260203024141.1549517-1-suraj.kandpal@intel.com>
References: <20260203024141.1549517-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: 30327E0E3C
X-Rspamd-Action: no action

TBT PHY is enablement/disablement is handled by its own TBT module.
We do not play a big part in it's state management, that being take care
by it's own TBT modeule.
The PHY/PLL TypeC mode (TBT, DP-alt) can change after the PLL state was
computed for a modeset, so the state verification after the modeset
sequence would indicate a mismatch in case the mode changed from DP-alt
to TBT, or from TBT to DP-alt mode. To avoid such a mismatch error the
verification is skipped if the mode for either the read-out or the
computed state is TBT (where that TBT PLL state doesn't reflect anyway
the PLL's actual HW state).
Simply return true when we are in tbt mode.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
V1 -> V2:
- Reframe commit messgae with give the full explanation as to why we
skip verification (Imre)

 drivers/gpu/drm/i915/display/intel_lt_phy.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index 04f63bdd0b87..27ad8407606b 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -2158,6 +2158,9 @@ bool
 intel_lt_phy_pll_compare_hw_state(const struct intel_lt_phy_pll_state *a,
 				  const struct intel_lt_phy_pll_state *b)
 {
+	if (a->tbt_mode || b->tbt_mode)
+		return true;
+
 	/*
 	 * With LT PHY values other than VDR0_CONFIG and VDR2_CONFIG are
 	 * unreliable. They cannot always be read back since internally
-- 
2.34.1

