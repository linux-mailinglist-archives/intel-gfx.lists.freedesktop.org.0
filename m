Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0OAOCW5ggWnfFwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 03:41:50 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFA5CD3D37
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 03:41:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3396910E4D1;
	Tue,  3 Feb 2026 02:41:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iyrQh7cc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EAB910E4C8;
 Tue,  3 Feb 2026 02:41:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770086507; x=1801622507;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=f4sI9rmaVXPffMelMtqKY4kvhIM6UXiS1A7zEhdsEmU=;
 b=iyrQh7cc8zgj010AYf4Nr+AOZPechtf0xe7HlwRiPdx6qECBM6RxAYPs
 z4KZr9R8QY4rUF9mHWEibaHv9VqfdFBMMNPTr4Jo8XsMr4/wG7OqLabtd
 UwpBaH6yX/bBHnddbxnxy/y6Apn95MHwSBWWRs6akcelAn9qftALp+IaM
 rQkN11X4QVDqWyrxQnqdoqwN/ATF188/KlupINHJOPswpqOR2M+iHMWTZ
 idGr1nmXuwStXysydjY+ByLN/WESa5c5yzNKyQgbkR5cvOrtgbXtmqZA2
 1qymN+Q4yGU0wFyrtopHybPoFq6yxYSIlC0A7kGaSBoMX3NMf6crEbU0W g==;
X-CSE-ConnectionGUID: ijB6HKo9Rhqsxb88wynljw==
X-CSE-MsgGUID: pbk5xOyzRjCz3Sn/vD/Y1w==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="74875604"
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="74875604"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 18:41:46 -0800
X-CSE-ConnectionGUID: K2n321HORGm0hpYZH4yFjg==
X-CSE-MsgGUID: dEQspnRoTTa8FNABLLd0Cg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="214224417"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa004.jf.intel.com with ESMTP; 02 Feb 2026 18:41:44 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/ltphy: Return true for TBT scenario during
 lt_phy_state compare
Date: Tue,  3 Feb 2026 08:11:41 +0530
Message-Id: <20260203024141.1549517-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: BFA5CD3D37
X-Rspamd-Action: no action

TBT PHY is enablement/disablement is handled by its own TBT module.
We do not play a big part in it's state management that being take care
by it's own TBT modeule. With that in mind comparing the state would be
wrong since we really don't touch it.
Simple return true when we are in tbt mode.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
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

