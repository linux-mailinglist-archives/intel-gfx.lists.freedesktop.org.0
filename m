Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E91A46DDE6
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Dec 2021 22:54:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11B016E041;
	Wed,  8 Dec 2021 21:54:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 339F66E041
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Dec 2021 21:54:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10192"; a="324217154"
X-IronPort-AV: E=Sophos;i="5.88,190,1635231600"; d="scan'208";a="324217154"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2021 13:33:28 -0800
X-IronPort-AV: E=Sophos;i="5.88,190,1635231600"; d="scan'208";a="752043366"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2021 13:33:28 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Dec 2021 13:31:16 -0800
Message-Id: <20211208213115.1919503-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI] drm/i915/dmc: Update DMC to v2.14 on ADL-P
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

From: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>

Changes since v2.12:
  - Release notes for v2.13:
      1. Fix for simple flip queue with DC6v
  - Release notes for v2.14:
      1. Fix for flip queue roll over cases with DC6v
      2. Enhancement for residency
      3. Workaround for 3Dlut restore issue

v2: Commit message update (Imre)

Signed-off-by: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---

Re-submitting this as it conflicted with the addition of GEN13_DMC_MAX_FW_SIZE.
I'm also including A-b Rodrigo to merge this ahead of having the
firmware in linux-firmware project - it's in drm-firmware and PR already
submitted to linux-firmware so it should appear shortly there.

 drivers/gpu/drm/i915/display/intel_dmc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 0cab18f972d1..a085024c9cde 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -47,8 +47,8 @@
 
 #define GEN13_DMC_MAX_FW_SIZE		0x20000
 
-#define ADLP_DMC_PATH			DMC_PATH(adlp, 2, 12)
-#define ADLP_DMC_VERSION_REQUIRED	DMC_VERSION(2, 12)
+#define ADLP_DMC_PATH			DMC_PATH(adlp, 2, 14)
+#define ADLP_DMC_VERSION_REQUIRED	DMC_VERSION(2, 14)
 MODULE_FIRMWARE(ADLP_DMC_PATH);
 
 #define ADLS_DMC_PATH			DMC_PATH(adls, 2, 01)
-- 
2.33.1

