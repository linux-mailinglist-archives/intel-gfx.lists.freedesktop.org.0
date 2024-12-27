Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C57659FD352
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Dec 2024 11:57:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B049710E061;
	Fri, 27 Dec 2024 10:57:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g6usMb3q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BA6010E061
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Dec 2024 10:57:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735297072; x=1766833072;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=L8JGnghTE8fFYdnBHgNTfT3fy/KcTvtTvBTqxMcOpZ4=;
 b=g6usMb3qLS7WWnwaS1PrVMP7I85LKUeiCIcVGk66GxlvISO1+AW/QZrn
 ThJ6nxtlpxCr1XR0IZRLGO4tNU0jDsKcV5i9FWjqk6ZmwJAlgrL30FWsm
 tXIy611uG1EFBurIy4f6WrnxeYLtQK3/U5CbjtiZUnIQVzX2b0i8mGTJP
 jXcpcb8Xlu/MRiiJ6xX8dGAifPCB4dAn5rFtup4bYWblVkBZQxVs/r6x6
 6jdyjSvWVJGWgNjd49i7UvoFYinrCvXBNUPpTXVCQQJG/jyEe/QZYbq6D
 /vmmr0ooNc5jMy8oRu8apWcdhUWSZjTrWac+m5Rf79Lpaf96d2YLOGPeb Q==;
X-CSE-ConnectionGUID: D60hxNchSxGaUsXrkhz0eQ==
X-CSE-MsgGUID: xiGWCQARSxCZw29HZe9ZJg==
X-IronPort-AV: E=McAfee;i="6700,10204,11298"; a="39479065"
X-IronPort-AV: E=Sophos;i="6.12,269,1728975600"; d="scan'208";a="39479065"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Dec 2024 02:57:52 -0800
X-CSE-ConnectionGUID: bZw4UxbrQX2vHQ6xWsn4ew==
X-CSE-MsgGUID: huOMQmZpSzeCUHymEtLbBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="100972588"
Received: from singhapo-super-server.iind.intel.com ([10.145.169.90])
 by orviesa008.jf.intel.com with ESMTP; 27 Dec 2024 02:57:49 -0800
From: apoorva.singh@intel.com
To: intel-gfx@lists.freedesktop.org
Cc: chris.p.wilson@linux.intel.com,
	Apoorva Singh <apoorva.singh@intel.com>
Subject: [PATCH] drm/i915/gt: Add GEM_BUG_ON to ensure at least one engine
 supports migration
Date: Fri, 27 Dec 2024 16:41:28 +0530
Message-Id: <20241227111128.1546618-1-apoorva.singh@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
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

From: Apoorva Singh <apoorva.singh@intel.com>

Ensure GEM_BUG_ON verifies at least one engine supports migration.
Additionally, it prevents passing an uninitialized variable to
intel_context_create().

Cc: Chris Wilson <chris.p.wilson@linux.intel.com>
Signed-off-by: Apoorva Singh <apoorva.singh@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_migrate.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_migrate.c b/drivers/gpu/drm/i915/gt/intel_migrate.c
index 6f7af4077135..528a7cba3623 100644
--- a/drivers/gpu/drm/i915/gt/intel_migrate.c
+++ b/drivers/gpu/drm/i915/gt/intel_migrate.c
@@ -296,6 +296,9 @@ static struct intel_context *__migrate_engines(struct intel_gt *gt)
 			engines[count++] = engine;
 	}
 
+	/* At least one engine must support migration! */
+	GEM_BUG_ON(!count);
+
 	return intel_context_create(engines[random_index(count)]);
 }
 
-- 
2.34.1

