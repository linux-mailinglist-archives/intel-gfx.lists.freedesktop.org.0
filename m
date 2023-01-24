Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 572C867A6B5
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jan 2023 00:11:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E9C810E275;
	Tue, 24 Jan 2023 23:11:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBBF010E275
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Jan 2023 23:11:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674601875; x=1706137875;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5q7eWZw+j3zaSsWc5azztoh6UM7XGGnV8VgxDmNilQU=;
 b=MxBoAmOqrkZKn4ybiIyYq9Tb5tlwgQ0fXh1kWlMIBKQcGpAt88FggP/l
 ToESq+V2RCPM4MwgoiktlcKMKrdASU3rRocCZNOAQIByhKWKkepZUdTLa
 s3igGDRIXXKcb99Zr7Q5o17ZI4wbznOFkhtYQO4cToas17lxnnXxFN+5y
 0FhXlbv90lHSqYT6mlLa3MD5Ftv4xecgMkmjlD4Od9nF5CayUb30tjtnm
 f3p4RQtuhL1iyjoGgl+Km/LvFiW1DPqjpnXiqi3WUV7Knaim0CnDIGizO
 WmRLsu9jKJ/7GewHwZ1XZaoKoiIAJKYQCgBeg7cwghu3HYWSSQkUEnynZ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="325109440"
X-IronPort-AV: E=Sophos;i="5.97,243,1669104000"; d="scan'208";a="325109440"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 15:11:15 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="694521704"
X-IronPort-AV: E=Sophos;i="5.97,243,1669104000"; d="scan'208";a="694521704"
Received: from unerlige-desk.jf.intel.com ([10.165.21.199])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 15:11:14 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Jan 2023 15:11:11 -0800
Message-Id: <20230124231111.1786429-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/mtl: Wa_22011802037: don't complain
 about missing regs on MTL
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

From: John Harrison <John.C.Harrison@Intel.com>

Wa_22011802037 requires waiting for an engine-specific register to
clear. A missing entry for GSC engine in the register table is flagged
as a drm_err. The drm_err was originally intended to catch missing
register entries for newer engines, however, it was later found that the
WA is only required for 'legacy' engines. So just drop the drm_err.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 922f1bb22dc6..f99bcc2113cb 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1584,11 +1584,8 @@ static u32 __cs_pending_mi_force_wakes(struct intel_engine_cs *engine)
 	};
 	u32 val;
 
-	if (!_reg[engine->id].reg) {
-		drm_err(&engine->i915->drm,
-			"MSG IDLE undefined for engine id %u\n", engine->id);
+	if (!_reg[engine->id].reg)
 		return 0;
-	}
 
 	val = intel_uncore_read(engine->uncore, _reg[engine->id]);
 
-- 
2.38.1

