Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4A083D7E12
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jul 2021 20:55:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57C166E2ED;
	Tue, 27 Jul 2021 18:55:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F8BE6E2ED
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jul 2021 18:55:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10058"; a="209397914"
X-IronPort-AV: E=Sophos;i="5.84,274,1620716400"; d="scan'208";a="209397914"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2021 11:55:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,274,1620716400"; d="scan'208";a="456217630"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by orsmga007.jf.intel.com with ESMTP; 27 Jul 2021 11:55:05 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Jul 2021 11:55:05 -0700
Message-Id: <20210727185505.17276-2-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210727185505.17276-1-anusha.srivatsa@intel.com>
References: <20210727185505.17276-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/1] drm/i915/dmc: Bump ADLP DMC version to v2.11
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Release notes mention that this verion has:
- Fixes for DC6v issue.
- Flip queue enabled on pipe C and pipe D.

Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 9895fd957df9..601c30b92739 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -45,8 +45,8 @@
 
 #define GEN12_DMC_MAX_FW_SIZE		ICL_DMC_MAX_FW_SIZE
 
-#define ADLP_DMC_PATH			DMC_PATH(adlp, 2, 10)
-#define ADLP_DMC_VERSION_REQUIRED	DMC_VERSION(2, 10)
+#define ADLP_DMC_PATH			DMC_PATH(adlp, 2, 11)
+#define ADLP_DMC_VERSION_REQUIRED	DMC_VERSION(2, 11)
 MODULE_FIRMWARE(ADLP_DMC_PATH);
 
 #define ADLS_DMC_PATH			DMC_PATH(adls, 2, 01)
-- 
2.32.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
