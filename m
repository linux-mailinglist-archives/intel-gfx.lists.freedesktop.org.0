Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8t81BZBFMWpLfwUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 14:46:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8BAE68F866
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 14:46:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Zy5YCJ0W;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DC5210EB48;
	Tue, 16 Jun 2026 12:46:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE4DB10EB4D;
 Tue, 16 Jun 2026 12:46:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781613965; x=1813149965;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=5rznq9EXAqzc9VppiHbKqUT1xdqMKZI4Uwmn1qtCFZk=;
 b=Zy5YCJ0WqEJesZHQ2mAVCEf2Vxn5V2QpO9LYwRgLuplWBjUXPeoEkxSF
 RoIO75YKkpkDa59FavyCdoXNB1xW5Lg3ihBMqAid8mA/SD51kN/bEOHrL
 AtcS7a5nyHkM/yXr00ZIWXDoEhjI8I+y6gl+q5+SR/BmZcwBWvD3a9wpf
 i5vzmvjK8f2u5yCOQarplwb1zeNbvrlz4KIYjzU289cFD9BDQ5fqLYsoj
 3Ia9fFQwgt9rujNPlQcF/6i4q/sGTd10TyXbyYODihFxJRuVD5cUWvQvN
 /Agn8v3rNBU3qlIeJNBs3oVVaS0JvlLUVJ7X1EQMYtKzeunwwiKkUw00P w==;
X-CSE-ConnectionGUID: pOKGrwjTR/OCgwS7DrUF9Q==
X-CSE-MsgGUID: XzkJ223vQuGCd+xTzHJcxA==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="81513296"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="81513296"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 05:46:04 -0700
X-CSE-ConnectionGUID: kBC/kEBvSXmHRtkpTIf46Q==
X-CSE-MsgGUID: V6kjjT8NTwytxkr42k5b4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="244876405"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 05:46:03 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [CI v4 37/39] drm/i915/display: Guard CMTG function calls
Date: Tue, 16 Jun 2026 18:14:13 +0530
Message-ID: <20260616124416.2442161-38-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260616124416.2442161-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20260616124416.2442161-1-dibin.moolakadan.subrahmanian@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C8BAE68F866

Check if DC3CO is allowed before calling CMTG
functions in intel_atomic_commit_tail() as CMTG is only used
by DC3CO DC state.

Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ddcf2d2054b7..3b17ce669ac5 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7579,10 +7579,8 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	/* FIXME probably need to sequence this properly */
 	intel_program_dpkgc_latency(state);
 
-	/*
-	 * TODO: DC3co entry condition need to be checked before calling CMTG functions.
-	 */
-	intel_cmtg_program(state);
+	if (intel_display_power_dc3co_allowed(display))
+		intel_cmtg_program(state);
 
 	intel_wait_for_vblank_workers(state);
 
-- 
2.43.0

