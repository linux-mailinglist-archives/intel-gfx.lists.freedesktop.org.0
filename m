Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB9CC50022D
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Apr 2022 00:58:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F29310E444;
	Wed, 13 Apr 2022 22:58:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18CDF10E444
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Apr 2022 22:58:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649890684; x=1681426684;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=H9PIzVLFUYMIANTXXQroEDF9Vvu3zkD3Bz/rrXDFhmc=;
 b=YvjTnPJhd2ii9ktBO2vyexvi2RvhUFopiMYN2cgeSJPHLqXa+bs9PNAw
 fvlWfx9W2SJxSdGT6SfyXXdu4O3bfTCQVgaZYXbgH86+7pCbT89TQShix
 AxhXXzSY3L1EqPy9B2m6lerNslqzU9oh9gUP6+X5k2t/FHXee3XClv/s/
 YZTs+4womwxCJUcKLql8EFaE68hVjPQ9oHub3W62lVoErw1npMsmgrMfR
 izrQbORg/6lR43KgagMk/psUPpPvFpeb+uiGtmLkMyGwgZlSgpzMHzKJ6
 LVrkkjPIgvUo3hJp7YbMhU/JWVHYdb0ff+KyirgxPno51b3sFhvIzornX w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10316"; a="261641405"
X-IronPort-AV: E=Sophos;i="5.90,258,1643702400"; d="scan'208";a="261641405"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 15:57:43 -0700
X-IronPort-AV: E=Sophos;i="5.90,258,1643702400"; d="scan'208";a="527131730"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril-10.165.21.154.com)
 ([10.165.21.154])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 15:57:41 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Apr 2022 15:57:32 -0700
Message-Id: <20220413225732.34943-1-ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Don't show client busyness in fdinfo
 with GuC submission
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

Client busyness is not available when GuC submission is used. Don't show it
in fdinfo till this is supported by GuC.

Bug: https://gitlab.freedesktop.org/drm/intel/-/issues/5564
Fixes: 055634e4b62f ("drm/i915: Expose client engine utilisation via fdinfo")
Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Cc: John Harrison <john.c.harrison@intel.com>
Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/i915_drm_client.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_drm_client.c b/drivers/gpu/drm/i915/i915_drm_client.c
index e539f6b23060..e7fae4a326ab 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.c
+++ b/drivers/gpu/drm/i915/i915_drm_client.c
@@ -145,7 +145,7 @@ void i915_drm_client_fdinfo(struct seq_file *m, struct file *f)
 		   PCI_SLOT(pdev->devfn), PCI_FUNC(pdev->devfn));
 	seq_printf(m, "drm-client-id:\t%u\n", client->id);
 
-	if (GRAPHICS_VER(i915) < 8)
+	if (GRAPHICS_VER(i915) < 8 || intel_guc_submission_is_used(&i915->gt0.uc.guc))
 		return;
 
 	for (i = 0; i < ARRAY_SIZE(uabi_class_names); i++)
-- 
2.34.1

