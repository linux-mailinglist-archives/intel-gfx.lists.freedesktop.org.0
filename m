Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IOj8LEmVmGlaJwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Feb 2026 18:09:29 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67FB7169985
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Feb 2026 18:09:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFCBD10E81E;
	Fri, 20 Feb 2026 17:09:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CHkVvjpt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DB7310E81F;
 Fri, 20 Feb 2026 17:09:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771607367; x=1803143367;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1l/E9FubN3dTz3YX7DRQeRrf1ot5qWRJosYfpGX7rYE=;
 b=CHkVvjpt40Cw4NMu1BfBVGSfGyHck8Ax4jWHsL5AU0psgfsumspd2PBJ
 lSs5UtjnFNhIBHSZIJQq0mzYFlg5D7Q2elbXk0SRv9QdIhlz1jtlJfTFi
 p6o9JcA5glYDE378eCFC3nBI5gaWQXce96BQHAyNU/PqMNUIgEQl/+YpD
 pKZeiSh73Dhhg4oFHugwQltXaTip50qRhMv59dwkmW96fa44pANH6p+Ve
 QDpvq7BwWkGKg9jM4FPCXVb9ssd1a/Rt5W4i74FzlL6j1N11/+aC+UQvT
 rZVyPLzuV1AimqCPP3yF7GKN8x7zPxyvy9AuqAs1hkAu18DkbaafJg1AM A==;
X-CSE-ConnectionGUID: oh9E7w3KQDK+nZnBh3bJrg==
X-CSE-MsgGUID: +ZdphzDPT9yh3KdLTZsZrw==
X-IronPort-AV: E=McAfee;i="6800,10657,11707"; a="98164374"
X-IronPort-AV: E=Sophos;i="6.21,302,1763452800"; d="scan'208";a="98164374"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2026 09:09:27 -0800
X-CSE-ConnectionGUID: IiCw15CTSJih4uN2hGpIBQ==
X-CSE-MsgGUID: ZTzhoSUTSp2W/fPp4BA5yg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,302,1763452800"; d="scan'208";a="237863908"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO
 vgovind2-mobl4.intel.com) ([10.245.245.18])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2026 09:09:25 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 uma.shankar@intel.com
Subject: [PATCH v2 1/6] drm/xe/fbdev: Fix BIOS FB vs.s stolen size check
Date: Fri, 20 Feb 2026 19:09:03 +0200
Message-ID: <20260220170908.201422-2-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260220170908.201422-1-vinod.govindapillai@intel.com>
References: <20260220170908.201422-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo
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
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vinod.govindapillai@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 67FB7169985
X-Rspamd-Action: no action

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Looks like stolen->size is in bytes, not pages. Remove the
bogus PAGE_SHIFT stuff.

Also for some rnadom reason xe rejects the FB if it takes up
exactly half of stolen, whereas i915 allows it to be used
in that case. Adjust xe to follow the i915 rule for consistency.

v2: rebase related updates

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/xe/display/xe_initial_plane.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/display/xe_initial_plane.c b/drivers/gpu/drm/xe/display/xe_initial_plane.c
index 4cfeafcc158d..38ecc201ac4e 100644
--- a/drivers/gpu/drm/xe/display/xe_initial_plane.c
+++ b/drivers/gpu/drm/xe/display/xe_initial_plane.c
@@ -99,7 +99,7 @@ initial_plane_bo(struct xe_device *xe,
 		 * features.
 		 */
 		if (IS_ENABLED(CONFIG_FRAMEBUFFER_CONSOLE) &&
-		    plane_config->size * 2 >> PAGE_SHIFT >= stolen->size)
+		    plane_config->size * 2 > stolen->size)
 			return NULL;
 	}
 
-- 
2.43.0

