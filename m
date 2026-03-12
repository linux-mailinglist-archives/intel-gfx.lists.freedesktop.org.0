Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kFQ1CUh7sml/MwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 09:37:28 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3F8326F04A
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 09:37:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7CF710EA20;
	Thu, 12 Mar 2026 08:37:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Bmc+vyfR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8616B10EA1E;
 Thu, 12 Mar 2026 08:37:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773304645; x=1804840645;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+PDs5kO4XWxeWJLel8FIrYbpdAkDxtWwyfQYc507CXo=;
 b=Bmc+vyfRpl7h7xJc1gL+MM2UmjbjD/m5aOuJ5QnOUf+JrdzSHcdMrzhS
 cH2jPtqGUlFMPjKK41tBs709HJRFmlnuXJ1CbLaEDXvEEW/cLxiLncqeU
 rFbWiaIKMcx8i16gY8PYnWu35TYX7wvimj68JTNkHlfW7hmNaI053tM+1
 wu6KltH1ulhCBQFTD1xgnxGfqzklddCLgJ9AC+KutS8Zpe3GZXOjS9t7a
 jUTQ636jfDRex731tHsA4BOI86As8fe2xFnvYpCuc3SaYLiiqhKLGWIJI
 L+dcNSpkK60rep9u3TPKQxACTvSqcbpJA9O7dZSKCsHkiRjLsaQOoradi g==;
X-CSE-ConnectionGUID: wWE3xRzfSlScb+a4Aok2Iw==
X-CSE-MsgGUID: n5WObF4qRiCAqnjktRyBEQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="74280163"
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="74280163"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 01:37:25 -0700
X-CSE-ConnectionGUID: cKEma0IuQOCq4J9dLdzdiw==
X-CSE-MsgGUID: PZ+hXmPqSHKBUU9YXMSEkw==
X-ExtLoop1: 1
Received: from vpanait-mobl.ger.corp.intel.com (HELO jhogande-mobl3.intel.com)
 ([10.245.245.57])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 01:37:23 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 stable@vger.kernel.org
Subject: [PATCH 1/2] drm/i915/psr: Disable PSR on update_m_n and update_lrr
Date: Thu, 12 Mar 2026 10:37:09 +0200
Message-ID: <20260312083710.1593781-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260312083710.1593781-1-jouni.hogander@intel.com>
References: <20260312083710.1593781-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid,gitlab.freedesktop.org:url]
X-Rspamd-Queue-Id: C3F8326F04A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PSR/PR parameters might be changing on update_m_n or update_lrr. Disable on
update_m_n and update_lrr to ensure proper parameters are taken into use on
next PSR enable in intel_psr_post_plane_update.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15771
Fixes: 2bc98c6f97af ("drm/i915/alpm: Compute ALPM parameters into crtc_state->alpm_state")
Cc: <stable@vger.kernel.org> # v6.19+
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 5041a5a138d1..7e0e4c3bf985 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3112,6 +3112,8 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
 			 * - Display WA #1136: skl, bxt
 			 */
 			if (intel_crtc_needs_modeset(new_crtc_state) ||
+			    new_crtc_state->update_m_n ||
+			    new_crtc_state->update_lrr ||
 			    !new_crtc_state->has_psr ||
 			    !new_crtc_state->active_planes ||
 			    new_crtc_state->has_sel_update != psr->sel_update_enabled ||
-- 
2.43.0

