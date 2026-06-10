Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4p4hMMuZKWrbaQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 19:07:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54F6E66BD92
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 19:07:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=UpftDAQD;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8DF910EB40;
	Wed, 10 Jun 2026 17:07:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0334910EB2C;
 Wed, 10 Jun 2026 17:07:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781111242; x=1812647242;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IPOOIMeDM9vDODJQ2VQQ5mNC4cSEPgeHK+2MZkqn9bI=;
 b=UpftDAQDhJiA7zBPwbim4F61+JJmJRM0uGD0NJoJrAkEfjI7pd/Zg2kD
 BDMVEACUsiHrAOJ4NDMPh5KpzuLdEgPQJQ1WIZVtaL9fWwI7krhINrCvd
 VhJYoIu981xXYZK06LTJGQfpxkUZp3TurE2IGdZl8FOc56q6vdA/gG2e1
 TM6Tv95iiccNjpSTFrvlkkU09m/OpUTupAeBh2agRGGuImS569jOZRdqj
 myKow2fJ0CdgWnk+h6Tf4fwGAEpXWvtC811sKDr+8Mkxfbm0dAfYvoNrr
 0vnR+rlVJil9RkhfdwGVUVQrSO/jryPaGTB7OBkwidtuar9omqWDpWRmG g==;
X-CSE-ConnectionGUID: mxcyf0lTTomTG2cksNUYyw==
X-CSE-MsgGUID: ReTrRnGKQRq8UfoWU7p6Pw==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="81887163"
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="81887163"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 10:07:21 -0700
X-CSE-ConnectionGUID: /V2RYZ2tT0WfiHhQmwoWWA==
X-CSE-MsgGUID: SekIDn6WRfihjgIukGTdpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="246306416"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.62])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 10:07:20 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 05/14] drm/i915/cdclk: Stop forcing voltage level to 3 all the
 time on DG2
Date: Wed, 10 Jun 2026 20:06:42 +0300
Message-ID: <20260610170652.5320-6-ville.syrjala@linux.intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,linux.intel.com:mid,linux.intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 54F6E66BD92

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

SKL_CDCLK_PREPARE_FOR_CHANGE == DISPLAY_TO_PCODE_VOLTAGE(3) so
we are currently forcing the voltage level to 3 all the time on
DG2. Remove SKL_CDCLK_PREPARE_FOR_CHANGE from the mask to avoid
this.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 7259048361a7..ecb6be3383ca 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2598,7 +2598,6 @@ static void intel_pcode_notify(struct intel_display *display,
 		update_mask |= DISPLAY_TO_PCODE_PIPE_COUNT_VALID;
 
 	ret = intel_parent_pcode_request(display, SKL_PCODE_CDCLK_CONTROL,
-					 SKL_CDCLK_PREPARE_FOR_CHANGE |
 					 update_mask,
 					 SKL_CDCLK_READY_FOR_CHANGE,
 					 SKL_CDCLK_READY_FOR_CHANGE, 3);
-- 
2.53.0

