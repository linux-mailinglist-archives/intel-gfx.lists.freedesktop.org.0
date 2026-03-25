Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qAXrDGIvxGkAxQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 19:54:26 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04EDD32AD88
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 19:54:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 819E810E863;
	Wed, 25 Mar 2026 18:54:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WmTGwMk9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD00810E863;
 Wed, 25 Mar 2026 18:54:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774464864; x=1806000864;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BN0ykZZPWN0rdSEAFkBtZKDW8P+oL43dr0pF+OQ4m1E=;
 b=WmTGwMk9iWkIqh0yL2dvv7K9lBxm0zC9z/u+39Pzvbd995MiuIf0XGhv
 cLc8LsRgcvvx9nsU6W8bzpKkUp21k0wXC4MdRMlRlTSLAQQO3fgDkjT8M
 sa7aSlgobTFhO+XCbyaBachdCBLTwU8t9EyeD6qe6XO5ZEQumR0W08q9D
 egkcLJmbAkoaZ75EXEex/mXScsk8vTxshEH0VmWe8Zq2DmjjeH/g6zwKX
 40rRTenjqAzFVCObVPQMIdz+l3ecnmK8kMS3OfyW6rF1HNGURxCRjimfd
 hjtzqtHKC3Bl8gnhPYmtpbonHWpLv56kMVaJS1tbHXQzC2HgHlJaDRGqF g==;
X-CSE-ConnectionGUID: KTdB3E+IQk6njpTpdjIiOQ==
X-CSE-MsgGUID: eife6f70Q5yhvGttdDGAfA==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="86991676"
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="86991676"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 11:54:23 -0700
X-CSE-ConnectionGUID: q76ZvUtfSv2wxNTwq9xxoQ==
X-CSE-MsgGUID: p+er7SUsTTe4Q6IbOvJ4rA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="221448745"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.117])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 11:54:22 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 10/12] drm/i915/vrr: Use intel_de_read64_2x32()
Date: Wed, 25 Mar 2026 20:53:39 +0200
Message-ID: <20260325185342.11482-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260325185342.11482-1-ville.syrjala@linux.intel.com>
References: <20260325185342.11482-1-ville.syrjala@linux.intel.com>
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	NEURAL_HAM(-0.00)[-1.000];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 04EDD32AD88
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Replace the pointless use of intel_de_read64_2x32_volatile()
with the simpler intel_de_read64_2x32().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index ae5385e92889..fae1186a90b2 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -1053,11 +1053,9 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 
 	if (crtc_state->cmrr.enable) {
 		crtc_state->cmrr.cmrr_n =
-			intel_de_read64_2x32_volatile(display, TRANS_CMRR_N_LO(display, cpu_transcoder),
-						      TRANS_CMRR_N_HI(display, cpu_transcoder));
+			intel_de_read64_2x32(display, TRANS_CMRR_N_LO(display, cpu_transcoder));
 		crtc_state->cmrr.cmrr_m =
-			intel_de_read64_2x32_volatile(display, TRANS_CMRR_M_LO(display, cpu_transcoder),
-						      TRANS_CMRR_M_HI(display, cpu_transcoder));
+			intel_de_read64_2x32(display, TRANS_CMRR_M_LO(display, cpu_transcoder));
 	}
 
 	if (DISPLAY_VER(display) >= 13) {
-- 
2.52.0

