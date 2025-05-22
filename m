Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF7AEAC04BD
	for <lists+intel-gfx@lfdr.de>; Thu, 22 May 2025 08:41:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 953C69621B;
	Thu, 22 May 2025 06:41:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bQUEAhx1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CB449610F
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 May 2025 06:41:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747896104; x=1779432104;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6xTzO9hqlUBe4tPUsXaZc24i76m7UYKEKJYzOe+5rOU=;
 b=bQUEAhx191jI2buVAqfWxJpfE734klI48zDRx+OhgXapo/OiwCmnYtzN
 xpUGhH9br5PLtf4/cSgFG+GnhVqxb5YyBUaP1FU9ot/+ohmnhSnplzD4H
 G9opmaWJYvDsSLhzE3SxKVvvcDDYqwGZ841X2zfghkF6cgzQx/f6+0vGr
 icuLt7MYolQiUGre81Jik5NBIxTKfWLwV1wIDFp1xHvjG4az42jfTBk0N
 +dYWjwGgdk5iXA4HAoy8sbQ50+z/7GxzPLZUzVjo0DJO4ICa7Hox8YRr8
 rBTwNDhQgsDRhCFUxBlk1+JPKbNopKgHMEkeGmYB7nC7gImPDAYhEkRQA w==;
X-CSE-ConnectionGUID: QoHZTeRTQDWzOzNJ/5P0Iw==
X-CSE-MsgGUID: Ut3hUEjJRyCa6vyLCjxpWg==
X-IronPort-AV: E=McAfee;i="6700,10204,11440"; a="60952420"
X-IronPort-AV: E=Sophos;i="6.15,305,1739865600"; d="scan'208";a="60952420"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 23:41:38 -0700
X-CSE-ConnectionGUID: oHeBkgw8Quukhr69I+M/2A==
X-CSE-MsgGUID: PWWKu6UAR3OmKDS8Ccu6pg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,305,1739865600"; d="scan'208";a="141372244"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.245.66])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 23:41:35 -0700
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: Intel graphics driver community testing & development
 <intel-gfx@lists.freedesktop.org>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, stable@vger.kernel.org,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Matthew Auld <matthew.auld@intel.com>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>
Subject: [PATCH] Revert "drm/i915/gem: Allow EXEC_CAPTURE on recoverable
 contexts on DG1"
Date: Thu, 22 May 2025 09:41:27 +0300
Message-ID: <20250522064127.24293-1-joonas.lahtinen@linux.intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

This reverts commit d6e020819612a4a06207af858e0978be4d3e3140.

The IS_DGFX check was put in place because error capture of buffer
objects is expected to be broken on devices with VRAM.

We seem to have already submitted the userspace fix to remove that
flag, so lets just rely on that for DG1.

Cc: stable@vger.kernel.org # v6.0+
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Cc: Tvrtko Ursulin <tursulin@ursulin.net>
Signed-off-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 7d44aadcd5a5..02c59808cbe4 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -2013,7 +2013,7 @@ static int eb_capture_stage(struct i915_execbuffer *eb)
 			continue;
 
 		if (i915_gem_context_is_recoverable(eb->gem_context) &&
-		    GRAPHICS_VER_FULL(eb->i915) > IP_VER(12, 10))
+		    (IS_DGFX(eb->i915) || GRAPHICS_VER_FULL(eb->i915) > IP_VER(12, 0)))
 			return -EINVAL;
 
 		for_each_batch_create_order(eb, j) {
-- 
2.49.0

