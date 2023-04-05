Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 087E06D7125
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 02:14:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A29010E7FE;
	Wed,  5 Apr 2023 00:14:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7AAB10E7FC
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Apr 2023 00:14:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680653678; x=1712189678;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JO28IFPmKB4unt+Zp5sefMIorDK6hs1INNArO9rnWuk=;
 b=RCq5s3jTxyZ7PEbVelu1H/+bpisb+2qaKF4ibtqyrkNnrfaMyrPDJu7h
 v2/D2Z3Vc77TxQWuILRITjKsVdGbc2WJgSAxtYbqBNzUNO6gCzcPfc1nC
 prUKNEnQe94veCfHlp2OIA20wvZzJadLCsHWmyOscAf0T5rFQ8sYCFF3T
 DgPAHjlwZa9DkOs60ozcUrGBJFFWiT2ASl4L3TbxoyMA4UlPP1JoQhVZ2
 3i6IPOjRr1uau4S4zxlBtmfa1MkqSUVQl8pKulDdQHPs2lV5HYosmIMgY
 l8ApBfejhgieuL/MXqPLACjiXmNWZHfERZfXDjz+WE6iZDAGLTMVVv1fo Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="405110830"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="405110830"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 17:14:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="810448690"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="810448690"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 17:14:37 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Apr 2023 17:14:33 -0700
Message-Id: <20230405001433.2654971-3-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230405001433.2654971-1-umesh.nerlige.ramappa@intel.com>
References: <20230405001433.2654971-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/fdinfo: Enable fdinfo for GuC
 backends
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

Enable fdinfo for GuC based platforms with the exception that long
running contexts will not provide reliable busyness data unless they
switch out at some reasonable point in time.

Link: https://gitlab.freedesktop.org/drm/intel/issues/8303
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_drm_client.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drm_client.c b/drivers/gpu/drm/i915/i915_drm_client.c
index e8fa172ebe5e..d18d0a3ed905 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.c
+++ b/drivers/gpu/drm/i915/i915_drm_client.c
@@ -147,11 +147,7 @@ void i915_drm_client_fdinfo(struct seq_file *m, struct file *f)
 		   PCI_SLOT(pdev->devfn), PCI_FUNC(pdev->devfn));
 	seq_printf(m, "drm-client-id:\t%u\n", client->id);
 
-	/*
-	 * Temporarily skip showing client engine information with GuC submission till
-	 * fetching engine busyness is implemented in the GuC submission backend
-	 */
-	if (GRAPHICS_VER(i915) < 8 || intel_uc_uses_guc_submission(&i915->gt0.uc))
+	if (GRAPHICS_VER(i915) < 8)
 		return;
 
 	for (i = 0; i < ARRAY_SIZE(uabi_class_names); i++)
-- 
2.36.1

