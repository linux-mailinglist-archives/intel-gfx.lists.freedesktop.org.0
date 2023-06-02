Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5235A71FF8B
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jun 2023 12:40:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACF0B10E658;
	Fri,  2 Jun 2023 10:40:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6AAA10E658
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Jun 2023 10:40:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685702417; x=1717238417;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RGNCzpglzr2Ihad3WB0Fwgsnd8Ly8xCek+HdzP3Vz4w=;
 b=GHQcCyjUsQBfnSbTXpsxOXSqZa+YMUkndVN5JCEvAOygc+nOHpj/+WcC
 pkz9x7ZKn4wNO9gWCunA6CjOpquS51q+3fDbXyHL9/+xr9kxFtBSys9QG
 S64/G6tSofamORxO+HAyUOA8ReQPtCxJwB+2LdGToq5fY6TksLDuNNt5G
 bd7P1e8/fMsLmr/6lhRX1MvLIDT1YpCqU80lye+i7JMYZ5V5/VvNYFqim
 YK6DqsNPLkrIFv3DsAAMP0rdiIW1dYbtcicO4vRDGsz/kJxb8G3n6ChOP
 3EVswS1WqxtfNxS5RQCUFpEyCbalfS6APl9tQFsI+1fx41+LJZ7Umoeq0 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="340468035"
X-IronPort-AV: E=Sophos;i="6.00,212,1681196400"; d="scan'208";a="340468035"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 03:40:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="685278568"
X-IronPort-AV: E=Sophos;i="6.00,212,1681196400"; d="scan'208";a="685278568"
Received: from amelillo-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.251.209.93])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 03:40:15 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Jun 2023 13:39:20 +0300
Message-Id: <20230602103928.1012470-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230602103928.1012470-1-jouni.hogander@intel.com>
References: <20230602103928.1012470-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 02/10] Revert "drm/i915/fbc: set
 compressed_fb to NULL on error"
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

This reverts commit a85e885ec8004b465d477a37ef6dd3ea4e714bef.

As a part of clean-up we want to revert this patch and introduce required
changes as a set of patches.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 0a9b081c18b8..3dc9620552e9 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -76,7 +76,7 @@ static int i915_gem_stolen_insert_node_in_range(struct xe_device *xe, struct xe_
 					ttm_bo_type_kernel, flags);
 	if (IS_ERR(*bo)) {
 		err = PTR_ERR(*bo);
-		*bo = NULL;
+		bo = NULL;
 		return err;
 	}
 	err = xe_bo_pin(*bo);
-- 
2.34.1

