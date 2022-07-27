Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4295583206
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jul 2022 20:30:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E69DC337F;
	Wed, 27 Jul 2022 18:30:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 698C9C2DB9
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jul 2022 18:30:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658946607; x=1690482607;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xARQLcDkiEmwZY1a3moLvto0MuHykM/mOUUL9sNTS+0=;
 b=DqrdopTW1+R8yBM5dH3jdIDUq5P96xv2voH7oQaUN3jsDlMlFuk+kQ7n
 Zr22GjfGb5lYiixgjJfewmVHL8WreZtcDTsstpRfQLpTizwIfW8KjJ3C5
 D1opJdOku6UGEkED3yzG6Ej1aIaZiGMsRt/7DaqbT/IfZuYS7y8BfjTPD
 V2nTSXZvFjCf8d8BUQuEj7n2coDuTxONXqGNkAqjnKUJDIqRoLt2NU4L9
 EfIDR4L69uMnazl09NyZwtUA3GK3lV6RYVGRv2v2WBtRnV7RSUJnyU7XH
 ZODo0b0S5PrDQtwvVzCVgpGdJJXbbrp3uhRTjj8xDeu0HI3Zg3vFlUB/c g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="289509412"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="289509412"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 11:29:31 -0700
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="600516530"
Received: from mtolakan-mobl1.amr.corp.intel.com (HELO
 mtolakan-mobl1.intel.com) ([10.213.178.167])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 11:29:31 -0700
From: Madhumitha Tolakanahalli Pradeep
 <madhumitha.tolakanahalli.pradeep@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jul 2022 11:29:19 -0700
Message-Id: <20220727182919.334136-2-madhumitha.tolakanahalli.pradeep@intel.com>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220727182919.334136-1-madhumitha.tolakanahalli.pradeep@intel.com>
References: <20220727182919.334136-1-madhumitha.tolakanahalli.pradeep@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/1] drm/i915/dmc: Update DG2 DMC firmware to
 v2.07
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

The release notes mention that DMC v2.07 has a workaround
for MMIO hang issue when DC States are enabled.

Signed-off-by: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index fa9ef591b885..ed28107cbd12 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -52,8 +52,8 @@
 
 #define DISPLAY_VER12_DMC_MAX_FW_SIZE	ICL_DMC_MAX_FW_SIZE
 
-#define DG2_DMC_PATH			DMC_PATH(dg2, 2, 06)
-#define DG2_DMC_VERSION_REQUIRED	DMC_VERSION(2, 06)
+#define DG2_DMC_PATH			DMC_PATH(dg2, 2, 07)
+#define DG2_DMC_VERSION_REQUIRED	DMC_VERSION(2, 07)
 MODULE_FIRMWARE(DG2_DMC_PATH);
 
 #define ADLP_DMC_PATH			DMC_PATH(adlp, 2, 16)
-- 
2.37.1

