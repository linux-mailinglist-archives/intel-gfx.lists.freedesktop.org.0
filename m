Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8C4D501F96
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Apr 2022 02:25:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EC7C10E360;
	Fri, 15 Apr 2022 00:25:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1686B10E360
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Apr 2022 00:25:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649982317; x=1681518317;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9B221rqDw+kyCoux40M5XEHm1r2q5PWYhhxoQzCD9hs=;
 b=R0Fin3LMN7VW8sNtyA1Qqz38g2LQty2lzGnO3oyik7xDLVULwLERhMeO
 uPsFtKTt/dgEVrOr9igS3ahcFKEQ3N3Pv/xiWBWTh0g4VuNAliQa4FUnw
 5i+mrfBXc5WId7igpZEt0GPzD6SXIwEXy7VRFJT1ciYC4NUfGvODBeeOW
 XW5wqbuNDRvW1VI0nbZ56B72jrw0F6N1LL/5dqr69jO/VX0q5Wg+33cxP
 leoT0tnBJwswYro/x+2lLT3TLNzSAsNCHN9Ce1Fdi72LIk6hkPxm7AxOF
 XgSV+gyJOF8vIQL4r+2kbZb8nhTHhkrbbZVui2mW7AMYg9gecjv2mz9Qj g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10317"; a="325967400"
X-IronPort-AV: E=Sophos;i="5.90,261,1643702400"; d="scan'208";a="325967400"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 17:25:16 -0700
X-IronPort-AV: E=Sophos;i="5.90,261,1643702400"; d="scan'208";a="612534944"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril-10.165.21.154.com)
 ([10.165.21.154])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 17:25:15 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Apr 2022 17:25:11 -0700
Message-Id: <b614c2c61a954de06fbe2c3a7c70d3a91804407e.1649982207.git.ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220413225732.34943-1-ashutosh.dixit@intel.com>
References: <20220413225732.34943-1-ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3] drm/i915: Don't show engine information in
 fdinfo with GuC submission
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

At present i915 does not fetch busyness information from GuC, resulting in
incorrect busyness values in fdinfo. Because engine information is coupled
with busyness in fdinfo, skip showing client engine information in fdinfo
with GuC submission till fetching busyness is supported in the i915 GuC
submission backend.

v2 (Daniele):
  Make commit title and description more precise
  Add FIXME with brief description at code change
  s/intel_guc_submission_is_used/intel_uc_uses_guc_submission/

v3 (Daniele):
  Drop FIXME in comment

Bug: https://gitlab.freedesktop.org/drm/intel/-/issues/5564
Fixes: 055634e4b62f ("drm/i915: Expose client engine utilisation via fdinfo")
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com
Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/i915_drm_client.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_drm_client.c b/drivers/gpu/drm/i915/i915_drm_client.c
index e539f6b23060..475a6f824cad 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.c
+++ b/drivers/gpu/drm/i915/i915_drm_client.c
@@ -145,7 +145,11 @@ void i915_drm_client_fdinfo(struct seq_file *m, struct file *f)
 		   PCI_SLOT(pdev->devfn), PCI_FUNC(pdev->devfn));
 	seq_printf(m, "drm-client-id:\t%u\n", client->id);
 
-	if (GRAPHICS_VER(i915) < 8)
+	/*
+	 * Temporarily skip showing client engine information with GuC submission till
+	 * fetching engine busyness is implemented in the GuC submission backend
+	 */
+	if (GRAPHICS_VER(i915) < 8 || intel_uc_uses_guc_submission(&i915->gt0.uc))
 		return;
 
 	for (i = 0; i < ARRAY_SIZE(uabi_class_names); i++)
-- 
2.34.1

