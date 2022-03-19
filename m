Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD2B04DE51A
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Mar 2022 03:00:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BB4310E362;
	Sat, 19 Mar 2022 02:00:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F47810E362
 for <intel-gfx@lists.freedesktop.org>; Sat, 19 Mar 2022 02:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647655254; x=1679191254;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cWvBGlIjfbanITyiZtdt8rX+0GVSxRHmr0fcvuJMICM=;
 b=Dc661KXChBT3lWMG5J2YfvLtntskQZMv96+YfFXPqhUAzOjSgq9cCec3
 FJxIMNFEsOx4X9zrcQddFSp8v/lI1WNvFrncDZlvvyPki5L1G3DkvbwIw
 ELD2RP2VTLdmuImh5JJtyHplhz08INKASFYxQzKswf/1bitQ/lNJYxOlc
 h2QOeWc5Lb2RFojCw2jvw1Casrj0BN/Gt5ULXe/haf2VW5RuB8sZXbLIL
 UHVbnu2fbo5XSJo3rzFEmIpy2QAwB1xXDAdeDAUaiBbzuibMOaRGoRUBy
 8hWp/3UmaXZNyzCYcCXgr+duImZZa5An7QyPQ1xSrxbfpanBVJvO4KHz8 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10290"; a="254834920"
X-IronPort-AV: E=Sophos;i="5.90,192,1643702400"; d="scan'208";a="254834920"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2022 19:00:53 -0700
X-IronPort-AV: E=Sophos;i="5.90,192,1643702400"; d="scan'208";a="514188100"
Received: from lovefred-mobl1.amr.corp.intel.com (HELO
 cgbowman-desk1.amr.corp.intel.com) ([10.251.13.69])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2022 19:00:53 -0700
From: Casey Bowman <casey.g.bowman@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Mar 2022 19:00:41 -0700
Message-Id: <20220319020042.306649-2-casey.g.bowman@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220319020042.306649-1-casey.g.bowman@intel.com>
References: <20220319020042.306649-1-casey.g.bowman@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Require INTEL_GTT to depend on X86
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

