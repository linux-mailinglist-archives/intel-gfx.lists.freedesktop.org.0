Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9A395E744E
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Sep 2022 08:44:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90F2810E3F4;
	Fri, 23 Sep 2022 06:44:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D320710E255
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Sep 2022 06:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663915440; x=1695451440;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=R+rxX68lJtbByJepmmZSJXMMZUYoMvyUg5jgJ+H2/gE=;
 b=RCKir09eAUbPO9TGutsV8BjgQW4JvSWnA0h+v78gn/xJiaEWuoDiD5T4
 cNaPcNisn2vVo2CZ+dl9Fac44Ni2qWkpP/5iWSZqsqYqMrFxeg3UmoY5J
 oLebezphQQcyra0otEPe3dzFHmKxn4tUMXn3FCJs/jbGgM6BPtH5pih2R
 +8eKx+GJO16RTjju3DD/SAGlXAfMsMyB0YUKDCjpgYAQrst7B+j9s9Z4g
 fqOP5rOFEw7i5lUo5ZUXyDD3KtawOF80mnovu/pKT4Ge+0njgt0QLDdul
 CPn4CaNcbEuB0czETUcPpw1YTS/WHywkMqUwAgAlHYLtl2sCP33dM+ldv A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="326855112"
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="326855112"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 23:43:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="682551219"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga008.fm.intel.com with ESMTP; 22 Sep 2022 23:43:48 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Sep 2022 23:45:42 -0700
Message-Id: <20220923064542.415252-2-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220923064542.415252-1-alan.previn.teres.alexis@intel.com>
References: <20220923064542.415252-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/1] drm/i915/pxp: Add firmware status when
 ARB session fails
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

Add firmware status using a drm_warn when ARB session fails
or else a drm_dbg when the ARB session register slot bit did
get set.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp_session.c | 1 +
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c     | 3 +++
 2 files changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
index 1bb5b5249157..c4f5c994ca51 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
@@ -77,6 +77,7 @@ static int pxp_create_arb_session(struct intel_pxp *pxp)
 		drm_err(&gt->i915->drm, "arb session failed to go in play\n");
 		return ret;
 	}
+	drm_dbg(&gt->i915->drm, "PXP ARB session is alive\n");
 
 	if (!++pxp->key_instance)
 		++pxp->key_instance;
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
index 4b6f5655fab5..a90905039216 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
@@ -174,6 +174,9 @@ int intel_pxp_tee_cmd_create_arb_session(struct intel_pxp *pxp,
 
 	if (ret)
 		drm_err(&i915->drm, "Failed to send tee msg ret=[%d]\n", ret);
+	else if (msg_out.header.status != 0x0)
+		drm_warn(&i915->drm, "PXP firmware failed arb session init request ret=[0x%08x]\n",
+			 msg_out.header.status);
 
 	return ret;
 }
-- 
2.25.1

