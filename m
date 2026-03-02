Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6D9sFjuQpWmoDgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 14:27:23 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D475E1D9B8E
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 14:27:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79AEE10E4EE;
	Mon,  2 Mar 2026 13:27:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mFUeT5B8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACAD010E4EF;
 Mon,  2 Mar 2026 13:27:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772458040; x=1803994040;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Oqvk5frmWrTXoWpOMVRWNeoQPtQgpz706F7RVEFBd8U=;
 b=mFUeT5B8HJkffLA75PDanZLW+qJRAZ7U7QzlhTG85G+dM/ukIqrsbMAo
 dHUXOj4oC9YjsjHNHng6pBw/VmhBWMMDkB9UeYW7RW4KNObHSxmNbxAHP
 +J/o4zww7dT1Fp20oCsZiaz01q/oAY3iuZPmrNczsR38QvIDNYA8PE0/q
 bT/M5THxdMNL0qNJIkDCswdBG8tlv147FVBVdrhA8ZyQqGKUzcfXXVZRw
 xPbLaDZMhnApBugeE77eZMYnAI96Z8IFtycAEpuF8BrnL8AyRYIQFuGs8
 FtbPNtPQwmwmWQLLded/agz7DnP8FyZ/TuLlh8sxWnRCXln87WLPlKMoN A==;
X-CSE-ConnectionGUID: ZaDFw0RzSlOZ6OixkEYNTA==
X-CSE-MsgGUID: jq7eQKi4TjSV9FYb22HaUw==
X-IronPort-AV: E=McAfee;i="6800,10657,11717"; a="84813269"
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="84813269"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 05:27:18 -0800
X-CSE-ConnectionGUID: fSe1HhPeSTicEbb1LXP5TQ==
X-CSE-MsgGUID: oXJu6FMrQ5CC8Q59IRWlkg==
X-ExtLoop1: 1
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmviesa003.fm.intel.com with ESMTP; 02 Mar 2026 05:27:16 -0800
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com, ankit.k.nautiyal@intel.com, jani.nikula@intel.com,
 jouni.hogander@intel.com, Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCHv3 1/2] drm/i915/dp: Read ALPM caps after DPCD init
Date: Mon,  2 Mar 2026 18:56:01 +0530
Message-Id: <20260302132602.480408-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: D475E1D9B8E
X-Rspamd-Action: no action

For eDP read the ALPM DPCD caps after DPCD initalization and just before
the PSR init.

v2: Move intel_alpm_init to intel_edp_init_dpcd (Jouni)
v3: Add Fixes with commit-id (Jouni)

Fixes: 15438b325987 ("drm/i915/alpm: Add compute config for lobf")
Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 025e906b63a9..1544758c0bbc 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4748,6 +4748,9 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector
 	 */
 	intel_dp_init_source_oui(intel_dp);
 
+	/* Read ALPM DPCD caps before reading the PSR CAPS */
+	intel_alpm_init(intel_dp);
+
 	/*
 	 * This has to be called after intel_dp->edp_dpcd is filled, PSR checks
 	 * for SET_POWER_CAPABLE bit in intel_dp->edp_dpcd[1]
@@ -6914,8 +6917,6 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 	 */
 	intel_hpd_enable_detection(encoder);
 
-	intel_alpm_init(intel_dp);
-
 	/* Cache DPCD and EDID for edp. */
 	has_dpcd = intel_edp_init_dpcd(intel_dp, connector);
 
-- 
2.25.1

