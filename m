Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 655744ED02E
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Mar 2022 01:31:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9411810E1EC;
	Wed, 30 Mar 2022 23:31:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41FB710E21A
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Mar 2022 23:31:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648683104; x=1680219104;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qHJ1YQyAGyttbpsXB80GuAEX+aQwnha+v3GNXlF4GUI=;
 b=FJMHqzVQNw2RaF+fFre9zabCsYmwkCdzwTQpE59OJeF4QzMHIFj8aYSb
 a4U0jBtfYkaoyDlQO5FaRDIHvaJm6NnMGYQnqsapXBMT8YK149h1PgYIx
 bkU6jC/qkTT2UiTXsOLYmZRe2FgAUclNWmbV3M1uec6YzMswH8cmU2X4j
 jW7yR1ix6tcKE64WoxnqFlvDOlej7uEAWA2yYe8wE5nJ5CJeEKDR1b5dE
 YaBDZ5z2afjEYkIT0kcLcDRFyryWAJJrxTIK/4XGRe7E2ALaynfLh/8Z+
 /STEJ8XiYYqN3alKSc99b2fFNz3L/f1v2GV2PhCh+DziNT9UE7iSpF9P1 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="258500904"
X-IronPort-AV: E=Sophos;i="5.90,223,1643702400"; d="scan'208";a="258500904"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 16:31:44 -0700
X-IronPort-AV: E=Sophos;i="5.90,223,1643702400"; d="scan'208";a="554847513"
Received: from mcbewley-mobl.ger.corp.intel.com (HELO
 cgbowman-desk1.amr.corp.intel.com) ([10.209.48.13])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 16:31:43 -0700
From: Casey Bowman <casey.g.bowman@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Mar 2022 16:31:38 -0700
Message-Id: <20220330233138.1210992-3-casey.g.bowman@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220330233138.1210992-1-casey.g.bowman@intel.com>
References: <20220330233138.1210992-1-casey.g.bowman@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 2/2] drm/i915: Require INTEL_GTT to depend on
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
index 42b5400f0fef..0e23a62895ce 100644
--- a/drivers/gpu/drm/i915/Kconfig
+++ b/drivers/gpu/drm/i915/Kconfig
@@ -3,7 +3,7 @@ config DRM_I915
 	tristate "Intel 8xx/9xx/G3x/G4x/HD Graphics"
 	depends on DRM
 	depends on X86 && PCI
-	select INTEL_GTT
+	select INTEL_GTT if X86
 	select INTERVAL_TREE
 	# we need shmfs for the swappable backing store, and in particular
 	# the shmem_readpage() which depends upon tmpfs
-- 
2.25.1

