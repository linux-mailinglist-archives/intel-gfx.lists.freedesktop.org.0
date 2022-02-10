Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B724B03A8
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 03:59:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7EE010E2CA;
	Thu, 10 Feb 2022 02:59:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E79310E2CA
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 02:59:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644461975; x=1675997975;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hgFO80wJzva6Jn2fbgf00v5X6ioqUTbw4QNY8ll99po=;
 b=BFbx5Ev0cnZAC476vmFQypUHssrplwWXC3g9YLmnK9YzMEsrIK5GFGxX
 vHUc/I/FKHgXlqow16lDH7KvmE7v8U+WocZMDpDhcagxFOgHsuqCA2ccE
 oLuDQ+nTJG0k3tnZsv9D4TudMHlYC4wJnKOyRxzyTWgbnTQeaV7u3Lt6p
 w+TNteGzajHXs0SedMRcD0LBuLixcMIFTQq3Rq3eL/qbRv0Js7a/oQjXQ
 qkzbJn2AcYMkL+VkuFv5//ZoxOk0BgDR/DoekL+etA4ONpGoXKfiFKcMm
 R5D2Q4H/EwyTi6C3FeSMUzTJkG5BqCKg+36wshTx9xrk9KoKCpITew+PZ g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10253"; a="248232135"
X-IronPort-AV: E=Sophos;i="5.88,357,1635231600"; d="scan'208";a="248232135"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 18:59:35 -0800
X-IronPort-AV: E=Sophos;i="5.88,357,1635231600"; d="scan'208";a="541421962"
Received: from ticede-or-168.amr.corp.intel.com (HELO
 mtolakan-mobl1.hsd1.or.comcast.net) ([10.212.209.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 18:59:34 -0800
From: Madhumitha Tolakanahalli Pradeep
 <madhumitha.tolakanahalli.pradeep@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Feb 2022 18:59:02 -0800
Message-Id: <20220210025902.618426-2-madhumitha.tolakanahalli.pradeep@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220210025902.618426-1-madhumitha.tolakanahalli.pradeep@intel.com>
References: <20220210025902.618426-1-madhumitha.tolakanahalli.pradeep@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/1] drm/i915/dmc: Update DMC to v2.16 on ADL-P
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

Changes since v2.14:
	- Release Notes for v2.15
	    Fix for corruption issue when DC States are enabled.
	- Release Notes for v2.16
	    Fix for cases with flip queue and DC6v are enabled.

Signed-off-by: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 7616a3906b9e..f2ac3bb1c6be 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -47,8 +47,8 @@
 
 #define DISPLAY_VER12_DMC_MAX_FW_SIZE	ICL_DMC_MAX_FW_SIZE
 
-#define ADLP_DMC_PATH			DMC_PATH(adlp, 2, 14)
-#define ADLP_DMC_VERSION_REQUIRED	DMC_VERSION(2, 14)
+#define ADLP_DMC_PATH			DMC_PATH(adlp, 2, 16)
+#define ADLP_DMC_VERSION_REQUIRED	DMC_VERSION(2, 16)
 MODULE_FIRMWARE(ADLP_DMC_PATH);
 
 #define ADLS_DMC_PATH			DMC_PATH(adls, 2, 01)
-- 
2.34.1

