Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2KGNJcxL1ml8DQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 14:36:28 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 219C13BC34A
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 14:36:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F2FA10E633;
	Wed,  8 Apr 2026 12:36:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CThc28py";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF4A610E631;
 Wed,  8 Apr 2026 12:36:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775651785; x=1807187785;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MP//pFRCzZ74GDemYiPcqUzF1HyMXn+8kK22sltHuwc=;
 b=CThc28pywJOEu82pyA2AtnWWa4N1NmdAf4Xeiyt4jNWBE0jcsLr7CekV
 mnbGr3PIM8pDCgKi2vDQilsdC3ZyeaMd2CLizANCzl4GMBEjlde/aMgRI
 rvbMMCXQUWZgOYs+1ACjsosYr6GowoyXcdSjlSpVp55Nt+B7HeF5mBed0
 HWVMNuZqQ6DShOsEuPh/OqIELj86W/BIc8xdw9eRWvkMNmc2Gv3MnMmCU
 BiSXSqXI7cjHfxt7dBWagg91xDvo6VKNJSafWN1MRLPm97Xi127E00Lfj
 Mt//qzuZbeZiKRbxxQ1z9qVRc+a80IZC1p0Ow1he6+fHa91kshw6fw2NW w==;
X-CSE-ConnectionGUID: iZGu83p6TVaToJjWcO8PHQ==
X-CSE-MsgGUID: Yu+in1IfQUecpXJsoQqaXA==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="88016839"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="88016839"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 05:31:52 -0700
X-CSE-ConnectionGUID: LTEYjf0JSCKSowRnyXsqGA==
X-CSE-MsgGUID: mRxvLsySTK2rHF6wJIuy2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="224159152"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.245.73])
 by fmviesa010-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Apr 2026 05:31:50 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH v3 7/9] drm/i915/wm: Do skl_wm_check_vblank() after DDB stuff
Date: Wed,  8 Apr 2026 15:31:12 +0300
Message-ID: <20260408123115.15716-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260408123115.15716-1-ville.syrjala@linux.intel.com>
References: <20260408123115.15716-1-ville.syrjala@linux.intel.com>
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
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,linux.intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 219C13BC34A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Feels more sensible to check the original unmangled watermarks
against the allocated DDB size first, and only then do
skl_wm_check_vblank() on whatever is left.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index d45b3bcc6ef0..f35a6aa32382 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2371,7 +2371,7 @@ static int skl_build_pipe_wm(struct intel_atomic_state *state,
 
 	crtc_state->wm.skl.optimal = crtc_state->wm.skl.raw;
 
-	return skl_wm_check_vblank(crtc_state);
+	return 0;
 }
 
 static bool skl_wm_level_equals(const struct skl_wm_level *l1,
@@ -2980,6 +2980,10 @@ skl_compute_wm(struct intel_atomic_state *state)
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
 		struct skl_pipe_wm *pipe_wm = &new_crtc_state->wm.skl.optimal;
 
+		ret = skl_wm_check_vblank(new_crtc_state);
+		if (ret)
+			return ret;
+
 		/*
 		 * We store use_sagv_wm in the crtc state rather than relying on
 		 * that bw state since we have no convenient way to get at the
-- 
2.52.0

