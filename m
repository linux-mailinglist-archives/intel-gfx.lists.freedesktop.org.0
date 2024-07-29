Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9D0893F7EC
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2024 16:30:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96A7A10E3EA;
	Mon, 29 Jul 2024 14:30:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l5KncV/T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A04B10E384;
 Mon, 29 Jul 2024 14:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722263423; x=1753799423;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=E3wuIQWEYRDjYym6q/Z72M0rUlthYnZXQcNsN1PV4bE=;
 b=l5KncV/Tc6hcf9nv08nkgQfKCR7tpWRq7YToFBocT4X4B3q3Zv2RpbGM
 SLOxbkTZvRDKzlQa4p42nT9DnjxtUXeNAJCCe9EYkbM4fNtWpdCuchXt1
 aZ8feMZV6YQmG59kyjaTGr3tcZNg7uRNII8t5a9SMTk5DIJn7Og1GcnuA
 6lKJBqJVzrm95OBv68UeMQZXw8vIHr90Eyjo1XxhSPMlu39Zt0PvT97to
 oStC6/GmiD+GciFA6MmZmp/3JyWKDM2/5Em8dPSGTkVPBkBVxj3u0JvpL
 7Iobj0/yXLnmIe7o0WtIo2a/EmRLvcbIbGxQGUe9xR6C1GYnLexiYLlL7 Q==;
X-CSE-ConnectionGUID: I3NtG2RaQIW5FgXZP4Salw==
X-CSE-MsgGUID: 4V9IDRoCTEWRImak06jBvw==
X-IronPort-AV: E=McAfee;i="6700,10204,11148"; a="37528447"
X-IronPort-AV: E=Sophos;i="6.09,246,1716274800"; d="scan'208";a="37528447"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2024 07:30:22 -0700
X-CSE-ConnectionGUID: hT4i2BcPQkyNX0rOUDxQ+g==
X-CSE-MsgGUID: 88bLXSA6QWGD91g+Wj1eZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,246,1716274800"; d="scan'208";a="53952994"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.185])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2024 07:30:20 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 01/10] drm/xe: use pdev_to_xe_device() instead of
 pci_get_drvdata() directly
Date: Mon, 29 Jul 2024 17:30:02 +0300
Message-Id: <c13789bf7d7c5ade4f71f1ac24a7fbc1b2a96195.1722263308.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1722263308.git.jani.nikula@intel.com>
References: <cover.1722263308.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

We have a helper for converting pci device to xe device, use it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/xe_pci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
index f818aa69f3ca..7bb811b4a057 100644
--- a/drivers/gpu/drm/xe/xe_pci.c
+++ b/drivers/gpu/drm/xe/xe_pci.c
@@ -752,7 +752,7 @@ static void xe_pci_remove(struct pci_dev *pdev)
 {
 	struct xe_device *xe;
 
-	xe = pci_get_drvdata(pdev);
+	xe = pdev_to_xe_device(pdev);
 	if (!xe) /* driver load aborted, nothing to cleanup */
 		return;
 
-- 
2.39.2

