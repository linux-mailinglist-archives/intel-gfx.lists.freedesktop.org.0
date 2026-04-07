Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QKzLOAgo1WnB1gcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 17:51:36 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6BBA3B154B
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 17:51:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17A8010E480;
	Tue,  7 Apr 2026 15:51:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U88O1bD1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6828110E480;
 Tue,  7 Apr 2026 15:51:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775577093; x=1807113093;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=frEvjBBZAHPSnrSXKeFbDeYbNCnm+340DRmPkouemao=;
 b=U88O1bD1Usc/tE414BuBV3z+bYLG1KZyOjTbW/NajZaYkXolBgICsahy
 Dg6FobzzVpdhX2vq+qin2lUxgSe9GkPTlYgCYsMqtHc/A331DKdkuqGi7
 20RmN8ZvYS6of9re40sC+7ABMy3OP+0QVwtE1/SIV4gELbRNR5sbsfJjw
 sIFrAsJqStJTGSEP9c5EHjeAwLQeDqCm70w8OlKxm2NaUP0NENoCD6A+C
 RuPyWYhD+rvlGsWzz/h5ifcUaig+jA+l4Q8hXrQU8klx+PbkLxT4lfYg7
 mLpmVCQRUscZdVOyYR7LJxQQDtYKpXsonCJi49iDDEo4Hk6IzrOQaYibk A==;
X-CSE-ConnectionGUID: qMsIT9QxS4iiTvitTkvM+g==
X-CSE-MsgGUID: qTMXvbUkS02IMIE1bgEynQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="76614823"
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="76614823"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 08:51:33 -0700
X-CSE-ConnectionGUID: faw+V2cXTi2l+nQ2Orz30A==
X-CSE-MsgGUID: V9v6G2qOS9O1JJr0mYfkgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="229876010"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.211])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 08:51:32 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 10/12] drm/i915/selftests: Eliminate duplicate vma size check
Date: Tue,  7 Apr 2026 18:50:51 +0300
Message-ID: <20260407155053.32156-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260407155053.32156-1-ville.syrjala@linux.intel.com>
References: <20260407155053.32156-1-ville.syrjala@linux.intel.com>
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
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,linux.intel.com:mid]
X-Rspamd-Queue-Id: B6BBA3B154B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Both remapped and rotated views need the exact same size check.
Currently that is being done separately for each type. Share
the code by just checking for !NORMAL view. This test doesn't
use I915_GTT_VIEW_PARTIAL so the inverse check is fine here.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/selftests/i915_vma.c | 10 +---------
 1 file changed, 1 insertion(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/selftests/i915_vma.c b/drivers/gpu/drm/i915/selftests/i915_vma.c
index 7c4111e60f2e..258557388a2d 100644
--- a/drivers/gpu/drm/i915/selftests/i915_vma.c
+++ b/drivers/gpu/drm/i915/selftests/i915_vma.c
@@ -634,7 +634,7 @@ static int igt_vma_rotate_remap(void *arg)
 
 					expected_pages = remapped_size(view.type, &plane_info[0], &plane_info[1]);
 
-					if (view.type == I915_GTT_VIEW_ROTATED &&
+					if (view.type != I915_GTT_VIEW_NORMAL &&
 					    vma->size != expected_pages * PAGE_SIZE) {
 						pr_err("VMA is wrong size, expected %lu, found %llu\n",
 						       PAGE_SIZE * expected_pages, vma->size);
@@ -642,14 +642,6 @@ static int igt_vma_rotate_remap(void *arg)
 						goto out_object;
 					}
 
-					if (view.type == I915_GTT_VIEW_REMAPPED &&
-					    vma->size > expected_pages * PAGE_SIZE) {
-						pr_err("VMA is wrong size, expected %lu, found %llu\n",
-						       PAGE_SIZE * expected_pages, vma->size);
-						err = -EINVAL;
-						goto out_object;
-					}
-
 					if (vma->pages->nents > expected_pages) {
 						pr_err("sg table is wrong sizeo, expected %u, found %u nents\n",
 						       expected_pages, vma->pages->nents);
-- 
2.52.0

