Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6P5iAVds3GmdQgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 06:08:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A23273E725C
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 06:08:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3970410E30A;
	Mon, 13 Apr 2026 04:08:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MvCK1/Dv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E6B210E301;
 Mon, 13 Apr 2026 04:08:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776053332; x=1807589332;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/t9/GGtsMRBvOI3z9Z/t8nPTL+DNiIjF8/0KibaryRA=;
 b=MvCK1/DveEv94kFLVMwsSXcKu4plv0nf2Jp0HJLXLab87HR53bGUf3BE
 A1glHXCr70RdcqdetWTJZ87q4Fh1rxrtXZmd1U6MS4c2z57daNd8UqLqa
 LGyQJyFApEG8tOlAdr3KhtxErruMM6QExDhkw4z32xNi3vs7RETltekbr
 rlahZCXNXz5uv0UzMePv0367Q64FkQQLeT0Cvwmk+dsiJDTmVJQ0kHg40
 4QXUoywlRlAqS73OrNiDUeFTul6qL6DDXMUnjNWLvqbnT6IgsxdxQwSJk
 3PBKXQmZKWlHmiT4FwaJz2c5l7gUvnkLWEVl2CTISj3qnpGtPNVfD3BhX g==;
X-CSE-ConnectionGUID: bBj6K0UrQWqcn/sFeXnSyw==
X-CSE-MsgGUID: zVW6cxl9QiC/0ByMwNC/aQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11757"; a="80568757"
X-IronPort-AV: E=Sophos;i="6.23,176,1770624000"; d="scan'208";a="80568757"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2026 21:08:52 -0700
X-CSE-ConnectionGUID: tYqr3n3WTam+1T2UgjlREQ==
X-CSE-MsgGUID: iCWNM4j+Qbua5Qm5yV+kZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,176,1770624000"; d="scan'208";a="229546608"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2026 21:08:49 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, arun.r.murthy@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 04/12] drm/i915/dp: Add helper to get AS SDP Transmission Line
Date: Mon, 13 Apr 2026 09:23:41 +0530
Message-ID: <20260413035349.1730312-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260413035349.1730312-1-ankit.k.nautiyal@intel.com>
References: <20260413035349.1730312-1-ankit.k.nautiyal@intel.com>
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
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: A23273E725C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Introduce a DP helper to compute the Adaptive Sync SDP transmission line
and use it when programming the EMP_AS_SDP_TL register.

Currently the AS SDP transmission line is programmed to the T1 position.
This can be extended in the future to support programming the T2 position
as well.

While at it, improve the documentation: the AS SDP transmission line
corresponds to the T1 position, which maps to the start of the VSYNC
pulse.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c  | 12 ++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.h  |  2 ++
 drivers/gpu/drm/i915/display/intel_vrr.c |  4 ++--
 3 files changed, 16 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 4955bd8b11d7..fd668babd641 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -7415,3 +7415,15 @@ bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
 
 	return true;
 }
+
+int intel_dp_sdp_as_tl(const struct intel_crtc_state *crtc_state)
+{
+	/*
+	 * EMP_AS_SDP_TL defines the T1 position as the default AS SDP
+	 * Transmission Line, which corresponds to the start of the
+	 * VSYNC pulse.
+	 *
+	 * Use the T1 position for now.
+	 */
+	return crtc_state->vrr.vsync_start;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 2849b9ecdc71..7024fd0ace0a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -238,4 +238,6 @@ bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
 	for ((__num_joined_pipes) = 1; (__num_joined_pipes) <= (I915_MAX_PIPES); (__num_joined_pipes)++) \
 		for_each_if(intel_dp_joiner_candidate_valid(__connector, (__mode)->hdisplay, __num_joined_pipes))
 
+int intel_dp_sdp_as_tl(const struct intel_crtc_state *crtc_state);
+
 #endif /* __INTEL_DP_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 5164d8c354e0..b700da4e9256 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -607,11 +607,11 @@ void intel_vrr_write_emp_as_sdp_tl(const struct intel_crtc_state *crtc_state)
 
 	/*
 	 * Since currently we support VRR only for DP/eDP, so this is programmed
-	 * only for Adaptive Sync SDP to Vsync start.
+	 * only for Adaptive Sync SDP.
 	 */
 	intel_de_write(display,
 		       EMP_AS_SDP_TL(display, cpu_transcoder),
-		       EMP_AS_SDP_DB_TL(crtc_state->vrr.vsync_start));
+		       EMP_AS_SDP_DB_TL(intel_dp_sdp_as_tl(crtc_state)));
 }
 
 void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
-- 
2.45.2

