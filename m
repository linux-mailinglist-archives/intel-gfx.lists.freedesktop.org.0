Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C689453666
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Nov 2021 16:53:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34C8B8973E;
	Tue, 16 Nov 2021 15:53:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DFEE895E1;
 Tue, 16 Nov 2021 15:52:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10169"; a="220603025"
X-IronPort-AV: E=Sophos;i="5.87,239,1631602800"; d="scan'208";a="220603025"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2021 07:52:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,239,1631602800"; d="scan'208";a="548654537"
Received: from tilak-nuc8i7beh.iind.intel.com ([10.145.162.9])
 by fmsmga008.fm.intel.com with ESMTP; 16 Nov 2021 07:52:56 -0800
From: Tilak Tangudu <tilak.tangudu@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Tue, 16 Nov 2021 21:22:38 +0530
Message-Id: <20211116155238.3226516-1-tilak.tangudu@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3] drm/i915/rpm: Enable runtime pm autosuspend
 by default
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

v1: Enable runtime pm autosuspend by default for Gen12
and later versions.

v2: Enable runtime pm autosuspend by default for all
platforms(Syrjala Ville)

v3: Change commit message(Nikula Jani)
Let's enable runtime pm autosuspend by default everywhere.
So, we can allow D3hot and bigger power savings on idle scenarios.

But at this time let's not touch the autosuspend_delay time,
what caused some regression on our previous attempt.

Also, the latest identified issue on GuC PM has been fixed by
commit 1a52faed3131 ("drm/i915/guc: Take GT PM ref when deregistering
context")

Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
---
 drivers/gpu/drm/i915/intel_runtime_pm.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i915/intel_runtime_pm.c
index 0d85f3c5c526..22dab36afcb6 100644
--- a/drivers/gpu/drm/i915/intel_runtime_pm.c
+++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
@@ -590,6 +590,9 @@ void intel_runtime_pm_enable(struct intel_runtime_pm *rpm)
 		pm_runtime_use_autosuspend(kdev);
 	}
 
+	/* Enable by default */
+	pm_runtime_allow(kdev);
+
 	/*
 	 * The core calls the driver load handler with an RPM reference held.
 	 * We drop that here and will reacquire it during unloading in
-- 
2.25.1

