Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IJfpJ4W0pmk7TAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Mar 2026 11:14:29 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C85D21EC836
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Mar 2026 11:14:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4ACD810E758;
	Tue,  3 Mar 2026 10:14:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dnCa20iq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3255E10E715;
 Tue,  3 Mar 2026 10:14:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772532863; x=1804068863;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bqYDiru/k8GksBP7ROVaqvdG5/iSGWfJ70+6b6H/W74=;
 b=dnCa20iq/9ASYP93G6UORngNHogTAKE93DyuKPerCZfo4jx3OUKpRRym
 4RmeBx100vFOvOnsMuF28zLWRTXVsrWKYOlykzg2j8C0SV/wa0y5ExvkT
 VVY8hRcEgNSKxWURDlG9YBdp1SKuJ8y8k/YfU3Xx59RSqAuy94vsvcqoU
 eRtpRTvOPjMli8oW7yES4ZnvfLlA6LM2xS97hwT2LpkCj6+lLQQhzxCUC
 UL4WgkmW98Y86evxf27AESe58FV0/CdGqFAuGGvaXZwNI5mzfNko37i+M
 q1lKy/hoZwf373jl8HPXIUgvR4EymH0veBaqAj/NocPzRIH8kR4lDVPDX A==;
X-CSE-ConnectionGUID: drcUJrf1TOKmoOVCfv5aeA==
X-CSE-MsgGUID: DxYrIzdtT5qRS/95oPvn9A==
X-IronPort-AV: E=McAfee;i="6800,10657,11717"; a="99041392"
X-IronPort-AV: E=Sophos;i="6.21,321,1763452800"; d="scan'208";a="99041392"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 02:14:22 -0800
X-CSE-ConnectionGUID: o5FHlCPmQzeJ+DyryFgsrg==
X-CSE-MsgGUID: uSB8MGulTiyUWAoNDHQ1tw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,321,1763452800"; d="scan'208";a="217940190"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.245.23])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 02:14:21 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH] drm/i915/overlay: Fix oops on unload
Date: Tue,  3 Mar 2026 12:14:17 +0200
Message-ID: <20260303101417.14409-1-ville.syrjala@linux.intel.com>
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
X-Rspamd-Queue-Id: C85D21EC836
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Action: no action

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Apparently I failed to test the unload case properly and
thus didn't notice that the i915_overlay_is_active() needs
i915->overlay after fetch_and_zero() already cleared it.
Stop using fetch_and_zero() and only clear the pointer at
the end to avoid the oops.

Fixes: 38d9a352c45e ("drm/i915/overlay: Extract i915_overlay_is_active()")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
Looks like CI did catch this but the set of different mails that
CI sends these days is such a mess that the signal to noise ratio
is extremely low. So it just slipped past my radar.

 drivers/gpu/drm/i915/i915_overlay.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_overlay.c b/drivers/gpu/drm/i915/i915_overlay.c
index 28518dbb5b8e..04d5ad6aba5a 100644
--- a/drivers/gpu/drm/i915/i915_overlay.c
+++ b/drivers/gpu/drm/i915/i915_overlay.c
@@ -482,9 +482,8 @@ static void __iomem *i915_overlay_setup(struct drm_device *drm,
 static void i915_overlay_cleanup(struct drm_device *drm)
 {
 	struct drm_i915_private *i915 = to_i915(drm);
-	struct i915_overlay *overlay;
+	struct i915_overlay *overlay = i915->overlay;
 
-	overlay = fetch_and_zero(&i915->overlay);
 	if (!overlay)
 		return;
 
@@ -499,6 +498,7 @@ static void i915_overlay_cleanup(struct drm_device *drm)
 	i915_active_fini(&overlay->last_flip);
 
 	kfree(overlay);
+	i915->overlay = NULL;
 }
 
 const struct intel_display_overlay_interface i915_display_overlay_interface = {
-- 
2.52.0

