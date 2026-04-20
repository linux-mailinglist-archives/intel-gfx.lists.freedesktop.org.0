Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0BupBncq5mkDswEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 15:30:31 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 433EA42BDB7
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 15:30:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71E6410E63D;
	Mon, 20 Apr 2026 13:30:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jV6rTnd/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0082310E63C;
 Mon, 20 Apr 2026 13:30:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776691827; x=1808227827;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mFEwAnov90rY1kF4wj6GUO1649qsW4VqZkHVf4s3888=;
 b=jV6rTnd/8gtIqnUropOS5VPonuk/cWAeW/tQG0kldQtuugErj7chZIUo
 2seRVvd0q9938ug1hWn97gexo3IIaCNyIe0vvEQHfMxBnBOmIUkhC+P1X
 4CJAVSXYvXx92kKAUMnHI49UzABJcTrAkDTOD3CxuJCHaQNLECIAiC9/B
 owxDhV0fy6Ga33xbyjoigRri1HqQq3BfELac1EJoD9ZIUEcQm+D9aBbry
 qaFzZaDuk1xY7GTagNhwr3HirYUx0ENY3l7P2SsCHHCOrKmNEq+CHI7zJ
 mnzPYKZ0DNtJlUw8L76TVjvM3vJQ98kgQ+lPapOg2bW6+rMGmXaMITq/a w==;
X-CSE-ConnectionGUID: kyz/JVx4SjSxXzrcznF36Q==
X-CSE-MsgGUID: xWvKw+UtTu6ULKw5x0ZUdQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11762"; a="81213253"
X-IronPort-AV: E=Sophos;i="6.23,189,1770624000"; d="scan'208";a="81213253"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 06:30:24 -0700
X-CSE-ConnectionGUID: v7ZOJQgmS+OWvRkdBFWtPQ==
X-CSE-MsgGUID: 5mV6MwFiQPiVBRSom4b7BQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,189,1770624000"; d="scan'208";a="232004776"
Received: from rvuia-mobl.ger.corp.intel.com (HELO vgovind2-mobl4.intel.com)
 ([10.245.244.112])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 06:30:20 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 matthew.auld@intel.com
Subject: [PATCH] drm/xe: update stolen memory preferance comparison using pages
Date: Mon, 20 Apr 2026 16:30:06 +0300
Message-ID: <20260420133006.255851-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vinod.govindapillai@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 433EA42BDB7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

As the stolen memory allocation is now moved to use rage allocation,
stolen size is used in pages. Update the stolen memory preferance
comparison to use pages as well instead of bytes.

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display_bo.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display_bo.c b/drivers/gpu/drm/xe/display/xe_display_bo.c
index dc0d78ff2d79..830f0a0ff6fb 100644
--- a/drivers/gpu/drm/xe/display/xe_display_bo.c
+++ b/drivers/gpu/drm/xe/display/xe_display_bo.c
@@ -138,7 +138,7 @@ bool xe_display_bo_fbdev_prefer_stolen(struct xe_device *xe, unsigned int size)
 	 * important and we should probably use that space with FBC or other
 	 * features.
 	 */
-	return stolen->size >= size * 2;
+	return stolen->size >= size * 2 >> PAGE_SHIFT;
 }
 
 static struct drm_gem_object *xe_display_bo_fbdev_create(struct drm_device *drm, int size)
-- 
2.43.0

