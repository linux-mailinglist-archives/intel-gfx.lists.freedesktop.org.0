Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BABE83F782D
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Aug 2021 17:22:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA9896E329;
	Wed, 25 Aug 2021 15:22:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF5E16E329
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Aug 2021 15:22:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10087"; a="217263644"
X-IronPort-AV: E=Sophos;i="5.84,351,1620716400"; d="scan'208";a="217263644"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2021 08:22:40 -0700
X-IronPort-AV: E=Sophos;i="5.84,351,1620716400"; d="scan'208";a="527366024"
Received: from vcheppax-mobl1.gar.corp.intel.com (HELO rdvivi-mobl4.intel.com)
 ([10.255.37.222])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2021 08:22:39 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 David Weinehall <david.weinehall@linux.intel.com>,
 Tilak Tangudu <tilak.tangudu@intel.com>, Imre Deak <imre.deak@intel.com>
Date: Wed, 25 Aug 2021 11:22:32 -0400
Message-Id: <20210825152233.2151037-3-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210825152233.2151037-1-rodrigo.vivi@intel.com>
References: <20210825152233.2151037-1-rodrigo.vivi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/i915: Enable runtime pm autosuspend by
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

Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: David Weinehall <david.weinehall@linux.intel.com>
Cc: Tilak Tangudu <tilak.tangudu@intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/intel_runtime_pm.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i915/intel_runtime_pm.c
index f28b5bab61b4..8f052bd4f58c 100644
--- a/drivers/gpu/drm/i915/intel_runtime_pm.c
+++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
@@ -605,6 +605,8 @@ void intel_runtime_pm_enable(struct intel_runtime_pm *rpm)
 		pm_runtime_use_autosuspend(kdev);
 	}
 
+	pm_runtime_allow(kdev);
+
 	/*
 	 * The core calls the driver load handler with an RPM reference held.
 	 * We drop that here and will reacquire it during unloading in
-- 
2.31.1

