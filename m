Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A596B73D79A
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jun 2023 08:12:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F72610E073;
	Mon, 26 Jun 2023 06:12:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28CA010E073
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Jun 2023 06:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687759918; x=1719295918;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gXQjCyo5vToynKYTwNeDVE6Mkf/CJfxIjV3uKWCJt1c=;
 b=ftLUKPg3cVbem+3JtuHcRfA04PPVDuQod6wQX42WPt91wLtUIIfFLH7y
 Qohb8sseVUojCpKB+KxuXP4bHQbtwNfLPMxkULqSFuB2mUWxO9x02PzLF
 +t8VKlmBPK+k9e9jIVrDfOp/YzBgnL1LL3GFW4WGhw2RHJFbtFHzJxlgO
 khvinV3xmiyTxQpB05AVrdZSbsNFCe1bGLdqHxtNHjMzW5NqSw65odus6
 qHNxufDy5vwVhIU42nmiL2rrRCe1FtZFJjBjzHafpbcx9XuxiyE+kcRI4
 LYZJjxFc+N/RajapIdey70dBzimbNhW0UZHmNDTjVPY2WNdfgHyLIRZmk A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10752"; a="391415043"
X-IronPort-AV: E=Sophos;i="6.01,158,1684825200"; d="scan'208";a="391415043"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2023 23:11:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10752"; a="715993745"
X-IronPort-AV: E=Sophos;i="6.01,158,1684825200"; d="scan'208";a="715993745"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by orsmga002.jf.intel.com with ESMTP; 25 Jun 2023 23:11:54 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Jun 2023 11:40:43 +0530
Message-Id: <20230626061043.1162688-1-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Add header file for struct
 seq_file
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

With change [1], visibility of struct seq_file is lost in
intel_display_power.h leading to build errors. Add header
file explicitly to restore visibility.

[1] ef104443bffa ("procfs: consolidate arch_report_meminfo declaration")

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index be1a87bde0c9..888993079a7b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -6,6 +6,8 @@
 #ifndef __INTEL_DISPLAY_POWER_H__
 #define __INTEL_DISPLAY_POWER_H__
 
+#include <linux/seq_file.h>
+
 #include "intel_wakeref.h"
 
 enum aux_ch;
-- 
2.25.1

