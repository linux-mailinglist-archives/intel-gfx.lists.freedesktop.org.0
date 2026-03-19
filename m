Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UJ4+D8fgu2lXpQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2026 12:40:55 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 060AD2CA734
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2026 12:40:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8755B10E934;
	Thu, 19 Mar 2026 11:40:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fh+mLhdV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01A4810E936;
 Thu, 19 Mar 2026 11:40:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773920452; x=1805456452;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uVfyQl6nC+5WsuWErzGk3ehsqXpOr7O+ZI3eqnqKSI4=;
 b=fh+mLhdV4hlU1GUt6lFlW9nKeo9qLaz9MhiuAETkWZWc1qO2zuvvGskd
 V/+bwV+SD+idWV9haJoXSa92unuVva7GTHxShHtYZguGwAel+91Yt3cu1
 T3tM7CgVGPdudnBYfzdXm3vfQovj2GZy2vAteGSRDgQ79LEGuMd4T98Rc
 oW5EDoEeQ8nEYYEKwqZf9NkmU1hRzj/XXHwaVZ9JLlDqL2VCXvriMyf+x
 5bXoqg130c8DTUUW2x8PSus2yEqPWFgT5OWxtvu+S7Ksc9ZpfzBtAdaUR
 9nhvFsxjlO8ir+g+Y5WYVOye5xt+Zwz+B/DnBzY0j6dSYWeAzdLkX4ODV Q==;
X-CSE-ConnectionGUID: K5bten0bQqaWQCeZDWUqaA==
X-CSE-MsgGUID: Ed3SvVkPQ8Sfyi/KP9RJew==
X-IronPort-AV: E=McAfee;i="6800,10657,11733"; a="78891632"
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; d="scan'208";a="78891632"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 04:40:52 -0700
X-CSE-ConnectionGUID: Vhc7femlT7+sAXlbHJdzkw==
X-CSE-MsgGUID: vxjnfyMYSq+5HOWK5zdV+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; d="scan'208";a="222970871"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.169])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 04:40:50 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 3/9] drm/i915/wm:
 s/skl_check_nv12_wm_level()/skl_check_wm_level_nv12()/
Date: Thu, 19 Mar 2026 13:40:28 +0200
Message-ID: <20260319114034.7093-4-ville.syrjala@linux.intel.com>
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
X-Rspamd-Queue-Id: 060AD2CA734
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Rename skl_check_nv12_wm_level() to skl_check_wm_level_nv12(). There
will be a sort of DDB counterparts to skl_check_wm_level*(), and
putting the "nv12" part to the end will allow consistent naming.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 1664b84d0387..24978f312fec 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -1356,7 +1356,7 @@ skl_check_wm_level(struct skl_wm_level *wm, const struct skl_ddb_entry *ddb)
 }
 
 static void
-skl_check_nv12_wm_level(struct skl_wm_level *wm, struct skl_wm_level *uv_wm,
+skl_check_wm_level_nv12(struct skl_wm_level *wm, struct skl_wm_level *uv_wm,
 			const struct skl_ddb_entry *ddb_y, const struct skl_ddb_entry *ddb)
 {
 	if (wm->min_ddb_alloc > skl_ddb_entry_size(ddb_y) ||
@@ -1555,7 +1555,7 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 
 			if (DISPLAY_VER(display) < 11 &&
 			    crtc_state->nv12_planes & BIT(plane_id))
-				skl_check_nv12_wm_level(&wm->wm[level],
+				skl_check_wm_level_nv12(&wm->wm[level],
 							&wm->uv_wm[level],
 							ddb_y, ddb);
 			else
-- 
2.52.0

