Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 795E87383DA
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jun 2023 14:32:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6513A10E459;
	Wed, 21 Jun 2023 12:32:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28DA510E459
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jun 2023 12:32:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687350727; x=1718886727;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CGOFnV6NplB+jhiWQydiExPisnkhhK2HMmpfsHXxq/8=;
 b=RGCJq3m9vW2MWB0csKFDZXxA7mxWAOdfh2/aIRWdVmMjNTrnqyyA5jzU
 pKd2b3oaTlistXseVLq2IqeOVvQmRfn3Hmdl7/ydoK4xJCdQ/vo8he+AC
 gl8VfgivnDBppx0DMszf2LGFYQ0YaG7Ulf5UBIaYsGatWsHvVSxzfB7YG
 QPvi82uKOLEj3ha23tn2SiUIU3dD7HFvoKZh9wM8jeWV/VU6eQO4Dobi/
 bdqCOZsVqjkYWD7zCTswD/G2BWHsFNeVNM+eXvcOR1yaDFZA7a4Cmfl/8
 5BlIkbaMtRtP+Se2k7OK1uYrD8hyJkXZ5NbZBjrWpAwvSAUrP3F5SXsEL w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="363574911"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="363574911"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 05:32:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="779835231"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="779835231"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 05:32:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Jun 2023 15:31:56 +0300
Message-Id: <20230621123156.14907-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230621123156.14907-1-jani.nikula@intel.com>
References: <20230621123156.14907-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: fix Sphinx indentation warning
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Fix Sphinx warning about unexpected indent.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_huc.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc.c b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
index bb95bdd1c3f9..23aa1b0e0166 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_huc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
@@ -26,6 +26,7 @@
  * The kernel driver is only responsible for loading the HuC firmware and
  * triggering its security authentication. This is done differently depending
  * on the platform:
+ *
  * - older platforms (from Gen9 to most Gen12s): the load is performed via DMA
  *   and the authentication via GuC
  * - DG2: load and authentication are both performed via GSC.
@@ -33,6 +34,7 @@
  *   not-DG2 older platforms), while the authentication is done in 2-steps,
  *   a first auth for clear-media workloads via GuC and a second one for all
  *   workloads via GSC.
+ *
  * On platforms where the GuC does the authentication, to correctly do so the
  * HuC binary must be loaded before the GuC one.
  * Loading the HuC is optional; however, not using the HuC might negatively
-- 
2.39.2

