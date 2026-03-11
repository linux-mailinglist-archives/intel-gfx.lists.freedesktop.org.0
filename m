Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6EP1BlkMsWldqAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 07:31:53 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0F4B25CDE9
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 07:31:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77A1310E325;
	Wed, 11 Mar 2026 06:31:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CXWc0H2E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39D2110E344;
 Wed, 11 Mar 2026 06:31:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773210710; x=1804746710;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ybtKiBqXT0NfsrN33vSZ8i9kE4M4g+2Dy75UlveEBxo=;
 b=CXWc0H2EKlCQkCfkz59k8DnFfQC2OSifipovSJHpHTtqYtdO2RVzm4zj
 36iAiBEjS5a0DpvA+lR6v0q+IYafRYlt4yQNPjamSo1QX+zSt7oeBvlkp
 Jn8R468I3bFo8mfhDwm6GpPKhiOr2qJNUaUknzjdKh4quferS2LP22iHY
 PlZPb96LzJYLlNKnIcUnui9PVWFZuGeiRqgBTxXAAftMoLx+vZeDnaXH8
 M6TdpFJVVGrTbi7Vyv5yGp8FW89Z0cIKnWeViU7aFBW94l/g1D1t5hKbG
 DY/IgG0nqaqfRYrHDHkiqH4FWf2RpNTxPUGlyeTfEFUn4cUxmEpubJ/dy Q==;
X-CSE-ConnectionGUID: by9RWaW+Ql6z6oEJZiUkgw==
X-CSE-MsgGUID: n2lqftxQQySvIluKwKhVqw==
X-IronPort-AV: E=McAfee;i="6800,10657,11725"; a="74312440"
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="74312440"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 23:31:50 -0700
X-CSE-ConnectionGUID: kSUXaoW9TFKCtcvg7pUBaw==
X-CSE-MsgGUID: oIWOqY87Qs+WW8gU6AcvFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="217061189"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 23:31:48 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 swati2.sharma@intel.com
Subject: [PATCH 2/2] drm/i915/dmc: Enable PIPEDMC_ERROR interrupt
Date: Wed, 11 Mar 2026 12:02:59 +0530
Message-ID: <20260311063259.2608206-3-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260311063259.2608206-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20260311063259.2608206-1-dibin.moolakadan.subrahmanian@intel.com>
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
X-Rspamd-Queue-Id: E0F4B25CDE9
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Action: no action

Enable PIPEDMC_ERROR interrupt bit for display version 35+.

Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 38b284a0db82..e60f1f977070 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -510,7 +510,8 @@ static void pipedmc_clock_gating_wa(struct intel_display *display, bool enable)
 static u32 pipedmc_interrupt_mask(struct intel_display *display)
 {
 	if (DISPLAY_VER(display) >= 35)
-		return PIPEDMC_FLIPQ_PROG_DONE;
+		return PIPEDMC_FLIPQ_PROG_DONE |
+			PIPEDMC_ERROR;
 
 	/*
 	 * FIXME PIPEDMC_ERROR not enabled for now due to LNL pipe B
-- 
2.43.0

