Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0737958E5D
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2024 21:01:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5798810E853;
	Tue, 20 Aug 2024 19:01:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OXKxYinP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D16E410E853;
 Tue, 20 Aug 2024 19:01:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724180477; x=1755716477;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nxMpyH5Brvey/tvBqGiYFnmmrl2nCHurnOfpLaxEtuI=;
 b=OXKxYinPqZjP0PB30oCNmeqYaM19Y/3jPulmw+YMU0wvfQTVtwA9ro78
 ARq4TwgRgav36rZ7g1f9bkmBl0C5AbWu9g7T8z0wpGxj3SVDdGTrq+29e
 KD/IXxaoY6bIntKt/eLsmFc0nkCFgxb+MY8D7fVGo2l5mdjR/MxbM3mTv
 sDvC2kN1AwTFl3yV4+WYpN4MAu6UGELVtrmlrehMcPOC6guRPOqGIMB7s
 AKELu4IXG9sl6GylJvQtFL4WxYt4aMDrTkWklKsNNQgGIsNb0dgyCz5pW
 5YSPXq64kTugskbzFolKdSekGSMFz0jbYyges3pn5mD3hXHFimoMCBYWh g==;
X-CSE-ConnectionGUID: oRoceNfUShaozugsCoDbDQ==
X-CSE-MsgGUID: ztiUNvDfTWKYqIHLL82ZfQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11170"; a="22035951"
X-IronPort-AV: E=Sophos;i="6.10,162,1719903600"; d="scan'208";a="22035951"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 12:01:17 -0700
X-CSE-ConnectionGUID: qU0+gcuFRy6ma7DZ6zYULw==
X-CSE-MsgGUID: 5acBhw+6S4yeK9UTKH+9eg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,162,1719903600"; d="scan'208";a="65676417"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.184])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 12:01:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: lucas.demarchi@intel.com, rodrigo.vivi@intel.com,
 matthew.d.roper@intel.com, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 04/10] drm/xe/step: define more steppings E-J
Date: Tue, 20 Aug 2024 22:00:37 +0300
Message-Id: <88074394509d4849f8ec6ab5776394b961032cd0.1724180287.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1724180287.git.jani.nikula@intel.com>
References: <cover.1724180287.git.jani.nikula@intel.com>
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

These are primarily needed for compat reasons with display code in
upcoming changes. There's no harm in having them.

While at it, add a comment about the requirement to match against GMD ID
value spacing.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/xe_step_types.h | 29 ++++++++++++++++++++++++++++-
 1 file changed, 28 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/xe_step_types.h b/drivers/gpu/drm/xe/xe_step_types.h
index ccc9b4795e95..95b38d2d6c50 100644
--- a/drivers/gpu/drm/xe/xe_step_types.h
+++ b/drivers/gpu/drm/xe/xe_step_types.h
@@ -17,6 +17,10 @@ struct xe_step_info {
 
 #define STEP_ENUM_VAL(name)  STEP_##name,
 
+/*
+ * Always define four minor steppings 0-3 for each stepping to match GMD ID
+ * spacing of values. See xe_step_gmdid_get().
+ */
 #define STEP_NAME_LIST(func)		\
 	func(A0)			\
 	func(A1)			\
@@ -34,7 +38,30 @@ struct xe_step_info {
 	func(D1)			\
 	func(D2)			\
 	func(D3)			\
-	func(E0)
+	func(E0)			\
+	func(E1)			\
+	func(E2)			\
+	func(E3)			\
+	func(F0)			\
+	func(F1)			\
+	func(F2)			\
+	func(F3)			\
+	func(G0)			\
+	func(G1)			\
+	func(G2)			\
+	func(G3)			\
+	func(H0)			\
+	func(H1)			\
+	func(H2)			\
+	func(H3)			\
+	func(I0)			\
+	func(I1)			\
+	func(I2)			\
+	func(I3)			\
+	func(J0)			\
+	func(J1)			\
+	func(J2)			\
+	func(J3)
 
 /*
  * Symbolic steppings that do not match the hardware. These are valid both as gt
-- 
2.39.2

