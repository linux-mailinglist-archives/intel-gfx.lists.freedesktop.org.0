Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28D504070A2
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Sep 2021 19:45:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E6336EA57;
	Fri, 10 Sep 2021 17:44:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AE026EA58
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Sep 2021 17:44:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10103"; a="306698139"
X-IronPort-AV: E=Sophos;i="5.85,283,1624345200"; d="scan'208";a="306698139"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2021 10:44:54 -0700
X-IronPort-AV: E=Sophos;i="5.85,283,1624345200"; d="scan'208";a="540740379"
Received: from bwparris-mobl.amr.corp.intel.com (HELO rdvivi-mobl4.intel.com)
 ([10.255.36.148])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2021 10:44:53 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 David Weinehall <david.weinehall@linux.intel.com>,
 Tilak Tangudu <tilak.tangudu@intel.com>, Imre Deak <imre.deak@intel.com>,
 Anshuman Gupta <anshuman.gupta@intel.com>
Date: Fri, 10 Sep 2021 13:44:47 -0400
Message-Id: <20210910174447.289750-3-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210910174447.289750-1-rodrigo.vivi@intel.com>
References: <20210910174447.289750-1-rodrigo.vivi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: Enable runtime pm autosuspend by
 default
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

Let's enable runtime pm autosuspend by default everywhere.

But at this time let's not touch the autosuspend_delay time,
what caused some regression on our previous attempt.

v2: CI on some gen9 platforms was not clean. But it came
    pretty clean on newer generations. For now, let's
    pick gen12 and newer. We will return later to extend
    that to older platforms.

Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: David Weinehall <david.weinehall@linux.intel.com>
Cc: Tilak Tangudu <tilak.tangudu@intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com> #v1
---
 drivers/gpu/drm/i915/intel_runtime_pm.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i915/intel_runtime_pm.c
index f28b5bab61b4..f91a04c3ef14 100644
--- a/drivers/gpu/drm/i915/intel_runtime_pm.c
+++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
@@ -605,6 +605,10 @@ void intel_runtime_pm_enable(struct intel_runtime_pm *rpm)
 		pm_runtime_use_autosuspend(kdev);
 	}
 
+	/* XXX: Enable by default only for newer platforms for now */
+	if (GRAPHICS_VER(i915) >= 12)
+		pm_runtime_allow(kdev);
+
 	/*
 	 * The core calls the driver load handler with an RPM reference held.
 	 * We drop that here and will reacquire it during unloading in
-- 
2.31.1

