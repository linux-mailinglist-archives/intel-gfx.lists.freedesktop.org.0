Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6Hz6DuGrHmq3IwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 12:09:37 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D1AB62C347
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 12:09:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A13DA10EE55;
	Tue,  2 Jun 2026 10:09:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bF3WnR+4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EA2610EE58;
 Tue,  2 Jun 2026 10:09:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780394975; x=1811930975;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cb+MSmqtB131X5lpX3iWMrG+QFxynukKds6L56Z+7wk=;
 b=bF3WnR+4fpuYKduPBwVg6yUnm7X7fvKq/jV+kZBGGOzI63oTXlJMcfdt
 sCD6kE3PwvPk0q0ZllMa3iu8Hhto/Qjd01DSkrkyVdpYJG8CF2A/wU41+
 NomM1Cp15esj3LGd14gdG6D1KYWprn8AZvOe76QU7kJWdpXpFDhJ5AIQt
 GEXVTJJlTORDZTLgP5gCyqm5vNYo4eYM4FbAPtadq8JM3LqFI5+so4dUe
 ycnDp+ELKxqKsSOpNrlPB0ZRLztJgZdds4TTwdjSXbjTsNWrdzDITfnf/
 FwiFLZPiD0ygm2H2SIJUBWIGvCKNzpqI7EFYLuRNuJEgpw6NPEhUVrATf g==;
X-CSE-ConnectionGUID: jk74XcP4QFeHXzrHzCxQDA==
X-CSE-MsgGUID: GgJW5yG+RAuZdbHD0pAzyQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="81038252"
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="81038252"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 03:09:34 -0700
X-CSE-ConnectionGUID: EcOyCdoXTle9m3a4UXr61Q==
X-CSE-MsgGUID: G1+x+6tDTFm0h5wjlrA+VA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="245670051"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.245.253])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 03:09:33 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Jocelyn Falempe <jfalempe@redhat.com>
Subject: [PATCH 5/6] drm/xe/panic: store fb bo in struct intel_panic
Date: Tue,  2 Jun 2026 13:09:08 +0300
Message-ID: <735c3f18212207db63d71364d6a8569480c81b42.1780394867.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1780394867.git.jani.nikula@intel.com>
References: <cover.1780394867.git.jani.nikula@intel.com>
MIME-Version: 1.0
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
X-Rspamd-Queue-Id: 0D1AB62C347
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Action: no action

Drop the dependency on intel_fb_bo() and intel_fb.h by storing the fb bo
passed in the setup hook to struct intel_panic.

Cc: Jocelyn Falempe <jfalempe@redhat.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/display/xe_panic.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_panic.c b/drivers/gpu/drm/xe/display/xe_panic.c
index d7f456eec597..4b86760ec00a 100644
--- a/drivers/gpu/drm/xe/display/xe_panic.c
+++ b/drivers/gpu/drm/xe/display/xe_panic.c
@@ -6,7 +6,6 @@
 #include <drm/intel/display_parent_interface.h>
 
 #include "intel_display_types.h"
-#include "intel_fb.h"
 #include "xe_bo.h"
 #include "xe_panic.h"
 #include "xe_res_cursor.h"
@@ -16,6 +15,8 @@ struct intel_panic {
 	struct iosys_map vmap;
 
 	int page;
+
+	struct xe_bo *bo;
 };
 
 static void xe_panic_kunmap(struct intel_panic *panic)
@@ -38,7 +39,7 @@ static void xe_panic_page_set_pixel(struct drm_scanout_buffer *sb, unsigned int
 {
 	struct intel_framebuffer *fb = (struct intel_framebuffer *)sb->private;
 	struct intel_panic *panic = fb->panic;
-	struct xe_bo *bo = gem_to_xe_bo(intel_fb_bo(&fb->base));
+	struct xe_bo *bo = panic->bo;
 	unsigned int new_page;
 	unsigned int offset;
 
@@ -93,6 +94,8 @@ static int xe_panic_setup(struct intel_panic *panic, struct drm_scanout_buffer *
 		return -ENODEV;
 
 	panic->page = -1;
+	panic->bo = bo;
+
 	sb->set_pixel = xe_panic_page_set_pixel;
 	return 0;
 }
-- 
2.47.3

