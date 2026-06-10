Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id l/pdFMeZKWrZaQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 19:07:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 062B166BD88
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 19:07:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=aRcPxSRv;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CCB110E69B;
	Wed, 10 Jun 2026 17:07:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9EC510E689;
 Wed, 10 Jun 2026 17:07:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781111236; x=1812647236;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hKDIEnl+unwAXye/6i22T+IzCJ9qmJQjadBI4Yi2+Uc=;
 b=aRcPxSRv57uDhQ/T6wVaj4Um1t52270A6cKn4947+dscP3lKFwQWPHAu
 ifYyJFcqWP+QTWq20f388qiGd6KB/20vOWThMG55scWp2iDfBsr3DvNko
 /hcl4UIl+ecnqaTikX9RcqTAfriy5R3hzcVTpKglAhinTa4Hnvj1mW2J8
 NoVVD5IUDOdl1Qos279Q9e9qKIj2cE8mqpJd0jmLRhzAcXiICgaAcEKqn
 PiT9t8TuPy9GkRkFb8gu/GcMZ7Si+sGik5pYuBdzX3+I/KPaIA5UF80Oc
 7QgwIwS2/EQM8GuOoP2UF2m+Y0yNPR1mEEVVmwHtHb3JjGljZhR5n2JI0 Q==;
X-CSE-ConnectionGUID: AxBNqIFcTpW9mAWc9COZig==
X-CSE-MsgGUID: lbVyrbfjS7e6DnbUuy24aQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="99490300"
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="99490300"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 10:07:16 -0700
X-CSE-ConnectionGUID: djuey7wAT6Gl4mq1PtRh7A==
X-CSE-MsgGUID: 1rUB7zBfT3KPvBEVnp51Mw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="250507295"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.62])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 10:07:15 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 04/14] drm/i915/cdclk: Notify DG2 pcode about pipe power wells
 regardless of CDCLK
Date: Wed, 10 Jun 2026 20:06:41 +0300
Message-ID: <20260610170652.5320-5-ville.syrjala@linux.intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,linux.intel.com:mid,linux.intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 062B166BD88

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We're currently skipping the pcode notifies on DG2 if the CDCLK isn't
changing while the power well counts would still need updating.
Do the pcode notifications also for pure pipe power well changes.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index d60b3369b4d2..7259048361a7 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2793,7 +2793,9 @@ intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state)
 		return;
 
 	if (!intel_cdclk_changed(&old_cdclk_state->actual,
-				 &new_cdclk_state->actual))
+				 &new_cdclk_state->actual) &&
+	    dg2_power_well_count(display, old_cdclk_state) ==
+	    dg2_power_well_count(display, new_cdclk_state))
 		return;
 
 	if (new_cdclk_state->disable_pipes) {
@@ -2848,7 +2850,9 @@ intel_set_cdclk_post_plane_update(struct intel_atomic_state *state)
 		return;
 
 	if (!intel_cdclk_changed(&old_cdclk_state->actual,
-				 &new_cdclk_state->actual))
+				 &new_cdclk_state->actual) &&
+	    dg2_power_well_count(display, old_cdclk_state) ==
+	    dg2_power_well_count(display, new_cdclk_state))
 		return;
 
 	if (!new_cdclk_state->disable_pipes &&
-- 
2.53.0

