Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eKSZEkMwqGm+pQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 14:14:43 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FDBC200359
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 14:14:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EA6210EA00;
	Wed,  4 Mar 2026 13:14:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bAqm/pYx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EA4C10E9DB;
 Wed,  4 Mar 2026 13:14:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772630080; x=1804166080;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rRNRmS+iwtEvjn8MSJXVsZiic2j5KBzh0QJCMIU7Qvk=;
 b=bAqm/pYxTQmM3dGRSGNcCVFNcLCDAWVLRomQ3zu8DQgREAPHVJEvNpkj
 2mkr1c/jLjOjEBcfaYM8cWaJrmfui1rr2t0x7dugBGacZ0FQBk0PIn3Ni
 l7E4zQEAY1uL6HIr4tdoCtJ2ev9SzaSExLo1jNhLPwuve4u2uZ4Mpzze1
 Fqiqt3z/m4cjuQjyCV/xnZfjT4LGye/QJxWKOKr/h6Ccd8Eg2YNfYMSBn
 nrIGBWG1vQzTzsu9234cgCX0st1QaDfEhatbs5wr1ji9Qfph2dkEqKqRZ
 Sfp0KoXsaWZ1eaRPNas+68cYc24kWhGsOZEABDms2XJjaJbdz444Ff/A2 g==;
X-CSE-ConnectionGUID: PPvfdhCcRfWfCseR+YHlzg==
X-CSE-MsgGUID: nOmOFoUBQ+G7N5KdHX08XQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11719"; a="77293470"
X-IronPort-AV: E=Sophos;i="6.21,324,1763452800"; d="scan'208";a="77293470"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 05:14:40 -0800
X-CSE-ConnectionGUID: KkiSHplKSFG5tklOgzF6CA==
X-CSE-MsgGUID: 8A7bdjtZQZCF0Bo+HRNoaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,324,1763452800"; d="scan'208";a="241350802"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa002.fm.intel.com with ESMTP; 04 Mar 2026 05:14:39 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v2 12/24] drm/i915/lt_phy: Add xe3plpd .compare_hw_state hook
Date: Wed,  4 Mar 2026 13:14:11 +0000
Message-ID: <20260304131423.1017821-13-mika.kahola@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260304131423.1017821-1-mika.kahola@intel.com>
References: <20260304131423.1017821-1-mika.kahola@intel.com>
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
X-Rspamd-Queue-Id: 1FDBC200359
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Action: no action

Add .compare_hw_state function pointer for xe3plpd platform
to support dpll framework.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 26b78063dd94..c1d7d9909544 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4655,6 +4655,15 @@ static void xe3plpd_dump_hw_state(struct drm_printer *p,
 	intel_lt_phy_dump_hw_state(p, &dpll_hw_state->ltpll);
 }
 
+static bool xe3plpd_compare_hw_state(const struct intel_dpll_hw_state *_a,
+				     const struct intel_dpll_hw_state *_b)
+{
+	const struct intel_lt_phy_pll_state *a = &_a->ltpll;
+	const struct intel_lt_phy_pll_state *b = &_b->ltpll;
+
+	return intel_lt_phy_pll_compare_hw_state(a, b);
+}
+
 __maybe_unused
 static const struct intel_dpll_mgr xe3plpd_pll_mgr = {
 	.dpll_info = xe3plpd_plls,
@@ -4664,6 +4673,7 @@ static const struct intel_dpll_mgr xe3plpd_pll_mgr = {
 	.update_active_dpll = icl_update_active_dpll,
 	.update_ref_clks = icl_update_dpll_ref_clks,
 	.dump_hw_state = xe3plpd_dump_hw_state,
+	.compare_hw_state = xe3plpd_compare_hw_state,
 };
 
 /**
-- 
2.43.0

