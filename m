Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A352465919
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Dec 2021 23:24:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D3386E0F8;
	Wed,  1 Dec 2021 22:24:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53DCD6E0F8
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Dec 2021 22:24:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10185"; a="235303907"
X-IronPort-AV: E=Sophos;i="5.87,280,1631602800"; d="scan'208";a="235303907"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 14:24:16 -0800
X-IronPort-AV: E=Sophos;i="5.87,280,1631602800"; d="scan'208";a="512216157"
Received: from achikarm-mobl.amr.corp.intel.com (HELO
 mtolakan-mobl1.intel.com) ([10.209.31.199])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 14:24:15 -0800
From: Madhumitha Tolakanahalli Pradeep
 <madhumitha.tolakanahalli.pradeep@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Dec 2021 14:24:04 -0800
Message-Id: <20211201222404.690285-2-madhumitha.tolakanahalli.pradeep@intel.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211201222404.690285-1-madhumitha.tolakanahalli.pradeep@intel.com>
References: <20211201222404.690285-1-madhumitha.tolakanahalli.pradeep@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [v2 1/1] drm/i915/dmc: Update DMC to v2.14 on ADL-P
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

Changes since v2.12:
  - Release notes for v2.13:
      1. Fix for simple flip queue with DC6v
  - Release notes for v2.14:
      1. Fix for flip queue roll over cases with DC6v
      2. Enhancement for residency
      3. Workaround for 3Dlut restore issue

v2: Commit message update (Imre)

Signed-off-by: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 2dc9d632969d..8617cd1ec9b2 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -45,8 +45,8 @@
 
 #define GEN12_DMC_MAX_FW_SIZE		ICL_DMC_MAX_FW_SIZE
 
-#define ADLP_DMC_PATH			DMC_PATH(adlp, 2, 12)
-#define ADLP_DMC_VERSION_REQUIRED	DMC_VERSION(2, 12)
+#define ADLP_DMC_PATH			DMC_PATH(adlp, 2, 14)
+#define ADLP_DMC_VERSION_REQUIRED	DMC_VERSION(2, 14)
 MODULE_FIRMWARE(ADLP_DMC_PATH);
 
 #define ADLS_DMC_PATH			DMC_PATH(adls, 2, 01)
-- 
2.33.1

