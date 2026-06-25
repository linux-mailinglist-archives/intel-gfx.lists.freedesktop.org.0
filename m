Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id OCU0NZY5PWrtzQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2026 16:22:14 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 594236C6934
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2026 16:22:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=X6wPTSbq;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E857910F2E7;
	Thu, 25 Jun 2026 14:22:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4A6E10F2DF;
 Thu, 25 Jun 2026 14:22:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782397331; x=1813933331;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9RxcQiK8eNwoj4TWdFexDHhbMbFh44gHc1Ur1L8rfnM=;
 b=X6wPTSbq+GssnxBjxKG+H6LoW281NqhQId6Z27OGLXrBgEHrNxwSLTZT
 nlKT5TdrhuQwVNfAp+nIWaCiJy96G1TmsO+bJaIGwD0m3op1cstntxCOA
 BpsUVR9CbqV7WF6lbtEM4GGcm4y+YbvyXdzAQNMKTdICA/sPia6cQGtaZ
 hgUk/F1YS0eTdNp3hGUcbVWikmW1GLn+nSf4079m0NvoPfCzGPOKD7+9U
 i/JKEjE9EJWmcuPpyMXAqRU2P43QfsZE0VzvSFiOAV4hiZqBYlTNUjyub
 1ZMdxzzf1093djzg8ymSkRFnPgZ9LqUCMDP6NsmYYSaMPEH+2dQ8tYfre Q==;
X-CSE-ConnectionGUID: +uIxtlXbSGCKxspDY+g06g==
X-CSE-MsgGUID: VzrUWUCdS9CcaJ/RbEB8fQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11827"; a="70684413"
X-IronPort-AV: E=Sophos;i="6.24,224,1774335600"; d="scan'208";a="70684413"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2026 07:22:11 -0700
X-CSE-ConnectionGUID: skDKxPkgSpiGM7kWtDo4XQ==
X-CSE-MsgGUID: a40Rus0qSYisFycO3GJcnw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,224,1774335600"; d="scan'208";a="254832038"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.126])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2026 07:22:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Martin Hodo <martin.hodo@intel.com>,
 stable@vger.kernel.org,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Imre Deak <imre.deak@intel.com>
Subject: [PATCH] drm/i915/mst: limit DP MST ESI service loop
Date: Thu, 25 Jun 2026 17:22:04 +0300
Message-ID: <20260625142204.1078287-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 594236C6934

The loop in intel_dp_check_mst_status() keeps servicing interrupts
originating from the sink without bound. Add an upper bound to the new
interrupts occurring during interrupt processing to not get stuck on
potentially stuck sink devices. Use arbitrary 32 tries to clear incoming
interrupts in one go.

Discovered using AI-assisted static analysis confirmed by Intel Product
Security.

Note: The condition likely pre-dates the commit in the Fixes: tag, but
this is about as far back as a backport has any chance of
succeeding. Before that, the retry had a goto.

Reported-by: Martin Hodo <martin.hodo@intel.com>
Fixes: 3c0ec2c2d594 ("drm/i915: Flatten intel_dp_check_mst_status() a bit")
Cc: <stable@vger.kernel.org> # v5.8+
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 6e3fa6662cbe..ade7e51e7590 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5590,8 +5590,9 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 	struct intel_display *display = to_intel_display(intel_dp);
 	bool force_retrain = intel_dp_link_training_get_force_retrain(intel_dp->link.training);
 	bool reprobe_needed = false;
+	int tries = 33;
 
-	for (;;) {
+	while (--tries) {
 		u8 esi[4] = {};
 		u8 ack[4] = {};
 		bool new_irqs;
@@ -5634,6 +5635,11 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 			break;
 	}
 
+	if (!tries) {
+		drm_dbg_kms(display->drm, "DPRX ESI not clearing, device may be stuck\n");
+		reprobe_needed = true;
+	}
+
 	return !reprobe_needed;
 }
 
-- 
2.47.3

