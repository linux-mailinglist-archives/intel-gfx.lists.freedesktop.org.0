Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E7BB2C656D
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Nov 2020 13:14:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B5816ED72;
	Fri, 27 Nov 2020 12:11:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EEE06ED27;
 Fri, 27 Nov 2020 12:11:57 +0000 (UTC)
IronPort-SDR: mw5Oe83fC04ZPPuHX0cchKGmTrQf1WkSm+EBxwIEMsP4E4NpUWdoqJOmweyw+QYx89G4PsywuS
 x7vblnCjJKLQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9817"; a="257092969"
X-IronPort-AV: E=Sophos;i="5.78,374,1599548400"; d="scan'208";a="257092969"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2020 04:11:57 -0800
IronPort-SDR: FANwRbnkXGE8plQ89aEop5h8gcaZA8jDT2NXBq19IeDuqCFb+qZ+TbcxMQmthS3+AFObSeVsDr
 M1PcqOohvjng==
X-IronPort-AV: E=Sophos;i="5.78,374,1599548400"; d="scan'208";a="548029937"
Received: from mjgleeso-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.251.85.2])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2020 04:11:55 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Nov 2020 12:06:55 +0000
Message-Id: <20201127120718.454037-140-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201127120718.454037-1-matthew.auld@intel.com>
References: <20201127120718.454037-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH 139/162] drm/i915/dg1: Keep engine awake
 across whole blit
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
Cc: dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Hold blitter engine power reference across the whole copy operation for
efficiency.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_object.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
index 34bbefa6d67f..c84443e01ef1 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
@@ -1028,6 +1028,8 @@ int i915_window_blt_copy(struct drm_i915_gem_object *dst,
 
 	spin_unlock(&i915->mm.window_queue.lock);
 
+	intel_engine_pm_get(ce->engine);
+
 	do {
 		struct i915_request *rq;
 		long timeout;
@@ -1080,6 +1082,8 @@ int i915_window_blt_copy(struct drm_i915_gem_object *dst,
 		flush_work(&ce->engine->retire_work);
 	} while (remain);
 
+	intel_engine_pm_put(ce->engine);
+
 	spin_lock(&i915->mm.window_queue.lock);
 	src_vma->size = BLT_WINDOW_SZ;
 	dst_vma->size = BLT_WINDOW_SZ;
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
