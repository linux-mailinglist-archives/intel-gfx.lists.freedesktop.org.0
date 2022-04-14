Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ED7D501D63
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Apr 2022 23:25:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F83C10E247;
	Thu, 14 Apr 2022 21:25:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E14710E247
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Apr 2022 21:25:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649971504; x=1681507504;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3/W+w73uQXrw5UDEWkE5fVa+aCQts2UMwnkiXoUurq0=;
 b=Ol6XNMHFrc5pKbpC5ifnXfWwg9Q5dWT5brGBcPosZ9P5UOui7GO4vAEn
 27WBec5vfZpkBPJ8fFKDnNloqEusyf3tQQYF9riKUx4j5AAqOBH8yOzBr
 lZAEOROJhLxEBXz+KELWPFjkzUe9CW1f5UeNryxuqtk70QcDAMs332jdq
 DOGTGkyRy8BzbGvJ3FsHSW32VKMcLteQbSkiLKN6dnMjaml54nvRtHnq5
 +IPHZfvvAoLC6zsEWJ9DdzgRMu+22GQEzZqphDnIMBFFjBmjraW0CCDzs
 rxGJoifqHSDNFlLye47UoDSMqNAI6RbHIvVHthflxHtERGj8UXkpGQQEI Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10317"; a="288092325"
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="288092325"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 14:25:03 -0700
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="527556293"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril-10.165.21.154.com)
 ([10.165.21.154])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 14:25:02 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Apr 2022 14:24:57 -0700
Message-Id: <d3ebcf9171361ce6eb25e1b5e5360ee45c5e1885.1649971340.git.ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220413225732.34943-1-ashutosh.dixit@intel.com>
References: <20220413225732.34943-1-ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915: Don't show engine information in
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

Bug: https://gitlab.freedesktop.org/drm/intel/-/issues/5564
Fixes: 055634e4b62f ("drm/i915: Expose client engine utilisation via fdinfo")
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com
Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/i915_drm_client.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_drm_client.c b/drivers/gpu/drm/i915/i915_drm_client.c
index e539f6b23060..6d34065e845f 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.c
+++ b/drivers/gpu/drm/i915/i915_drm_client.c
@@ -145,7 +145,11 @@ void i915_drm_client_fdinfo(struct seq_file *m, struct file *f)
 		   PCI_SLOT(pdev->devfn), PCI_FUNC(pdev->devfn));
 	seq_printf(m, "drm-client-id:\t%u\n", client->id);
 
-	if (GRAPHICS_VER(i915) < 8)
+	/*
+	 * FIXME: temporarily skip showing client engine information with GuC submission
+	 * till fetching engine busyness is implemented in the GuC submission backend
+	 */
+	if (GRAPHICS_VER(i915) < 8 || intel_uc_uses_guc_submission(&i915->gt0.uc))
 		return;
 
 	for (i = 0; i < ARRAY_SIZE(uabi_class_names); i++)
-- 
2.34.1

