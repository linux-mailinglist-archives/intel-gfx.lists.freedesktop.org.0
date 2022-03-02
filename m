Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E7454C99EB
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Mar 2022 01:34:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58A3F10E911;
	Wed,  2 Mar 2022 00:34:02 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96EB610E5FE;
 Wed,  2 Mar 2022 00:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646181239; x=1677717239;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eNPiS9edewBNE8uJh8nsm9geI6TYOHxLz0y8JdglFnM=;
 b=Xg90BPiDVtqaJ9EHinnjY7t8tAiCRx+XyQohJnmLYowiDfI9VUw1w4ww
 IAx75zSjoFsQ98rvi0hFdWXJBEjoNxDBfimbQwGUqGdW8f831egW+cSXu
 QgFQpWzGLQh/bcqcI1Xnd+0p2O5U+7HvchRi2fX9xOvcDKqMcWeatq5AG
 zIkVJfWEqOAbTwL15dH/v6W7TDAgBEo2UR3adN6onPrrEwAy+H4APdaA3
 pX6f69eJXd/EPc+fCSw28M6KjfVFrQQGqwS913+FZHcvT89PTJqdWFeL0
 m22sqeNA0IVmUWpL1jQ3FsUznyY4oJRAbG0bsDAdc/l2iOB9AtNkylPcz w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10273"; a="233243144"
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="233243144"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2022 16:33:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="639577388"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by fmsmga002.fm.intel.com with ESMTP; 01 Mar 2022 16:33:58 -0800
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Tue,  1 Mar 2022 16:33:56 -0800
Message-Id: <20220302003357.4188363-8-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220302003357.4188363-1-John.C.Harrison@Intel.com>
References: <20220302003357.4188363-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 7/8] drm/i915/guc: Drop obsolete H2G
 definitions
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
Cc: DRI-Devel@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

The CTB registration process changed significantly a while back using
a single KLV based H2G. So drop the original and now obsolete H2G
definitions.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
index 7afdadc7656f..e77f955435ce 100644
--- a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
+++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
@@ -131,8 +131,6 @@ enum intel_guc_action {
 	INTEL_GUC_ACTION_AUTHENTICATE_HUC = 0x4000,
 	INTEL_GUC_ACTION_REGISTER_CONTEXT = 0x4502,
 	INTEL_GUC_ACTION_DEREGISTER_CONTEXT = 0x4503,
-	INTEL_GUC_ACTION_REGISTER_COMMAND_TRANSPORT_BUFFER = 0x4505,
-	INTEL_GUC_ACTION_DEREGISTER_COMMAND_TRANSPORT_BUFFER = 0x4506,
 	INTEL_GUC_ACTION_DEREGISTER_CONTEXT_DONE = 0x4600,
 	INTEL_GUC_ACTION_REGISTER_CONTEXT_MULTI_LRC = 0x4601,
 	INTEL_GUC_ACTION_CLIENT_SOFT_RESET = 0x5507,
-- 
2.25.1

