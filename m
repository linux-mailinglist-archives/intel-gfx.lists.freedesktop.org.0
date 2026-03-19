Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AAMyAtfgu2lXpQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2026 12:41:11 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99A7A2CA768
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2026 12:41:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B74210E930;
	Thu, 19 Mar 2026 11:41:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CsnBd4jf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C2CD10E930;
 Thu, 19 Mar 2026 11:41:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773920468; x=1805456468;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=amfXOz7wZDlhEwVxIdtim2mw0Y5oGkvbjWEHkfAcda0=;
 b=CsnBd4jfyqfhnjWykkOkcwGupnmp87FEo+8RHDMvHE90fKR0rlaRwekn
 uu9VJoxKCLEROWz2UNEJGcJsaDEAW7FwdGrlTt2E3qNcOHcjNkQE4hOim
 ala5M0UK7IYDksUtqxr0K57Z4W6H5EUhcqqsgN5ltLTztCorgBwd9j0iq
 bY6HZH8DQ19myQj8E3L76dvRj+J8dq6m4J+KJwdK5VZ6hb+EK3nw/oLVj
 BawbGnk8LFEQw1JbmfjDkKNdNBgDIMt038CU91KnAnubPFD0NXMma3k9Y
 m1P7cojiA3atwnMa3SgRpkzDQTaGQqHk1XSe76U79lflbG9Yz3SuCWM2n w==;
X-CSE-ConnectionGUID: 6vh11buVRlOlZu3nUhkbUg==
X-CSE-MsgGUID: 6cWtmhRVSHi6IL2zG73IHQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11733"; a="78891660"
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; d="scan'208";a="78891660"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 04:41:08 -0700
X-CSE-ConnectionGUID: xv+8X6xcROiBX45f1Y63jw==
X-CSE-MsgGUID: mpIxB6GtT8uhUnetK9BAaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; d="scan'208";a="222971020"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.169])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 04:41:06 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 7/9] drm/i915/wm: Extract skl_print_plane_ddb_changes()
Date: Thu, 19 Mar 2026 13:40:32 +0200
Message-ID: <20260319114034.7093-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260319114034.7093-1-ville.syrjala@linux.intel.com>
References: <20260319114034.7093-1-ville.syrjala@linux.intel.com>
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,linux.intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 99A7A2CA768
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We have skl_print_plane_wm_changes() but the DDB counterpart is
just inline in the main loop. Extract it into a function. We'll
ave a second use for this soon.

The "ddb" part is already parametrized in anticipation of the
second user.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 22 +++++++++++++++-----
 1 file changed, 17 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 6c8dab847ae2..8687026935e9 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2601,6 +2601,21 @@ static char enast(bool enable)
 	return enable ? '*' : ' ';
 }
 
+static void
+skl_print_plane_ddb_changes(struct intel_plane *plane,
+			    const struct skl_ddb_entry *old,
+			    const struct skl_ddb_entry *new,
+			    const char *ddb_name)
+{
+	struct intel_display *display = to_intel_display(plane);
+
+	drm_dbg_kms(display->drm,
+		    "[PLANE:%d:%s] %s (%4d - %4d) -> (%4d - %4d), size %4d -> %4d\n",
+		    plane->base.base.id, plane->base.name, ddb_name,
+		    old->start, old->end, new->start, new->end,
+		    skl_ddb_entry_size(old), skl_ddb_entry_size(new));
+}
+
 static noinline_for_stack void
 skl_print_plane_wm_changes(struct intel_plane *plane,
 			   const struct skl_plane_wm *old_wm,
@@ -2722,11 +2737,8 @@ skl_print_wm_changes(struct intel_atomic_state *state)
 
 			if (skl_ddb_entry_equal(old, new))
 				continue;
-			drm_dbg_kms(display->drm,
-				    "[PLANE:%d:%s] ddb (%4d - %4d) -> (%4d - %4d), size %4d -> %4d\n",
-				    plane->base.base.id, plane->base.name,
-				    old->start, old->end, new->start, new->end,
-				    skl_ddb_entry_size(old), skl_ddb_entry_size(new));
+
+			skl_print_plane_ddb_changes(plane, old, new, "ddb");
 		}
 
 		for_each_intel_plane_on_crtc(display->drm, crtc, plane) {
-- 
2.52.0

