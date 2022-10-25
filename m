Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF43960C7C6
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Oct 2022 11:19:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B609810E2B9;
	Tue, 25 Oct 2022 09:19:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54B8E10E2B9
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Oct 2022 09:19:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666689552; x=1698225552;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jqUSJyf+kEN20xv56huBO/5zcaAhL1sBZrokQKPC/mk=;
 b=JUkrRJi2nP1sAZoSvL2lHGLbz82KU/pAvH+7nnjxKMTiXdOND6RHLnw7
 ue5kBG1oYey9sCFOQLdEyzIsgBbmbgiN32r4mBfl1rkVXnkk16F2Qo2XH
 vdVE+DJ3QleKUwkVBk7+/qoDMEEKb8qYg5LOEUtYRG/mYpXedgvtntnCs
 oa5H4jE1pGbbD0mSLWb/AQZl3SipflakPN9uNfH/FlZdH9epTjW0zU+sT
 mynlMfNSsUbLgbE5zmetbafDaOsLbC8knEYkNirKkiu/1aDAFE4SDCbr3
 YY4yUvZIHXWHim4e1bIi8YK3L1iGMQnqTMepVeYYsHTVBDGNwz3A5DZBC g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="287349338"
X-IronPort-AV: E=Sophos;i="5.95,211,1661842800"; d="scan'208";a="287349338"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 02:19:11 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="609505408"
X-IronPort-AV: E=Sophos;i="5.95,211,1661842800"; d="scan'208";a="609505408"
Received: from imarzyns-mobl.ger.corp.intel.com (HELO
 kdrobnik-desk.ger.corp.intel.com) ([10.213.16.71])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 02:19:09 -0700
From: Karolina Drobnik <karolina.drobnik@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Oct 2022 11:19:03 +0200
Message-Id: <20221025091903.986819-1-karolina.drobnik@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] i915/i915_gem_context: Remove debug message in
 i915_gem_context_create_ioctl
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We know that as long as GEM context create ioctl succeeds, a context was
created. There is no need to write about it, especially when such a message
heavily pollutes dmesg and makes debugging actual errors harder.

Suggested-by: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Karolina Drobnik <karolina.drobnik@intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 1e29b1e6d186..1456ca87c04e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -2298,7 +2298,6 @@ int i915_gem_context_create_ioctl(struct drm_device *dev, void *data,
 	}
 
 	args->ctx_id = id;
-	drm_dbg(&i915->drm, "HW context %d created\n", args->ctx_id);
 
 	return 0;
 
-- 
2.25.1

