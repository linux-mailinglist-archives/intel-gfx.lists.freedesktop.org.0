Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A54EE4EB6D6
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Mar 2022 01:35:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2249010ECF5;
	Tue, 29 Mar 2022 23:35:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DF2210E513
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Mar 2022 23:35:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648596930; x=1680132930;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cWvBGlIjfbanITyiZtdt8rX+0GVSxRHmr0fcvuJMICM=;
 b=aldqeynlSzsIL3QROzRATTzlD9KUmI370macXLn6Y39N6sqNwdoa5GDv
 YQTWF0Zpu0zkqjAK7JCkxyH0HQCqSFwawWuDrruhHtpXD5a+E98TTOCsF
 4Ubq89xVdjoB/2F2OU1nDRO2KH9SPQCJCI02vUwbVKlsXG0MgrqsSLsSt
 sFMwsy1FYRblYQovUFgB6pZVDgsJBeVtIIafnRm+YxCzAwNUTvoawL/vJ
 R3u5OHvBUqG65iDrXa0ip7aOhkt2FQKuzjtdKXeCuhTVUVDRhq4FlkJgv
 GdZ4VDSaevQHDgC8zm/DpfQ+aJQcclGomshBOB3/WRQx8y1u2vuCZ4XBr A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="239330656"
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="239330656"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 16:35:29 -0700
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="521654588"
Received: from brettpem-mobl1.amr.corp.intel.com (HELO
 cgbowman-desk1.amr.corp.intel.com) ([10.209.80.244])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 16:35:29 -0700
From: Casey Bowman <casey.g.bowman@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Mar 2022 16:35:18 -0700
Message-Id: <20220329233518.1008877-3-casey.g.bowman@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220329233518.1008877-1-casey.g.bowman@intel.com>
References: <20220329233518.1008877-1-casey.g.bowman@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915: Require INTEL_GTT to depend on
 X86
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
Cc: thomas.hellstrom@linux.intel.com, lucas.demarchi@intel.com,
 chris@chris-wilson.co.uk
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The intel-gtt module is not used on other, non-x86 platforms, so we
will restrict it to x86 platforms only.

Signed-off-by: Casey Bowman <casey.g.bowman@intel.com>
---
 drivers/gpu/drm/i915/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
index 63db8bcf03bf..b381e14863a6 100644
--- a/drivers/gpu/drm/i915/Kconfig
+++ b/drivers/gpu/drm/i915/Kconfig
@@ -4,7 +4,7 @@ config DRM_I915
 	depends on DRM
 	depends on X86 && PCI
 	depends on !PREEMPT_RT
-	select INTEL_GTT
+	select INTEL_GTT if X86
 	select INTERVAL_TREE
 	# we need shmfs for the swappable backing store, and in particular
 	# the shmem_readpage() which depends upon tmpfs
-- 
2.25.1

