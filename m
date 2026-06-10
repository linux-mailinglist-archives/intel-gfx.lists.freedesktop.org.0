Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 34AeGNGZKWreaQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 19:07:29 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F166D66BD9D
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 19:07:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=LosPJ7yo;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82D8310EB4E;
	Wed, 10 Jun 2026 17:07:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E06810EB54;
 Wed, 10 Jun 2026 17:07:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781111245; x=1812647245;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uJqr+/D9HEdLW3qrIEYrRHXZAtLR2bH88H3IIB5UMZg=;
 b=LosPJ7yodgCS8wRPxawz6p6TaVaSC5sKxEviUDx+ZPkgo4Nj1QanHKty
 zqMCaAtHCmUwThvB7SX5KTpTeOhQxlqzjHcKQehG4E7DiYJZmfv8eyCAc
 gPztjrCiPbxVkHXW46ZiZSJPYG4z+o0Ei1bBLK0ltGgvWmscAOcgkP9GJ
 NDp3UKb2BGbg3QHX+oWRPPx/j+Me5C3ReT68wBnNCGN/6e5T1iU1Vk5j5
 O7nAryTLvnbwzx9uVpEbPzAY0WJtlOPvhALbZWs+ywNXD8r3zuXJ1yjmY
 VS3LLRKRqPD3e/cIjJNPOU61v3Ag+bGEoA8icMMCBXTVOnpKX0BBJPdU4 A==;
X-CSE-ConnectionGUID: BwGSNQqnTFe4/i5T8XxQZA==
X-CSE-MsgGUID: vc6jhm0wSOGdT0x3I6vv6w==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="99490311"
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="99490311"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 10:07:25 -0700
X-CSE-ConnectionGUID: vR916hEUR560ZlKyN8PIfQ==
X-CSE-MsgGUID: NR3tSYGyTm+SgIi0g+Jg6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="250507320"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.62])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 10:07:24 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 06/14] drm/i915/cdclk: Drop pointless platform check from
 bxt_set_cdclk()
Date: Wed, 10 Jun 2026 20:06:43 +0300
Message-ID: <20260610170652.5320-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260610170652.5320-1-ville.syrjala@linux.intel.com>
References: <20260610170652.5320-1-ville.syrjala@linux.intel.com>
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
X-Rspamd-Action: no action
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
	RCPT_COUNT_TWO(0.00)[2];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,linux.intel.com:mid,linux.intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F166D66BD9D

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Overwrite cdclk.hw.voltage_level from intel_update_cdclk() at the
end on bxt_set_cdclk() also on bxt/glk. While this isn't actually
necessary due to bxt/glk not having any extra DDI based voltage
level requirements, it does avoid one less silly 'if' in the code.

On icl+ the value derived by bxt_get_cdclk() may not be correct
if the voltage level was bumped up due to DDI requirements, thus
overwriting the assumed value is crucial there.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index ecb6be3383ca..bbf3603f889b 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2308,12 +2308,11 @@ static void bxt_set_cdclk(struct intel_display *display,
 
 	intel_update_cdclk(display);
 
-	if (DISPLAY_VER(display) >= 11)
-		/*
-		 * Can't read out the voltage level :(
-		 * Let's just assume everything is as expected.
-		 */
-		display->cdclk.hw.voltage_level = cdclk_config->voltage_level;
+	/*
+	 * Can't read out the voltage level :(
+	 * Let's just assume everything is as expected.
+	 */
+	display->cdclk.hw.voltage_level = cdclk_config->voltage_level;
 }
 
 static void bxt_sanitize_cdclk(struct intel_display *display)
-- 
2.53.0

