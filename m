Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 656965B2773
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Sep 2022 22:10:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1ADF910E63A;
	Thu,  8 Sep 2022 20:10:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CD1E10E5B5
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Sep 2022 20:10:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662667825; x=1694203825;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=f08VbAxGacBCvmTEcNRE1FJeO9G5L7cRaWW6PYa6YYs=;
 b=Ve0uH3tmlkamPUCikz4yI93tRYEwK03Di7VqxoeQ4vjPb7y2+NE/URVl
 HGyhs/D2QaC4uTRTNiMdrHBDq2VZJI2E3AxD4rD8Dm6xYfXix3ZiWxtlD
 A4sJV5o2rwoKMt4Fa+5QwnV34Qr7NTtmB8Fz7jUP21a+au1+X7WcE75F1
 bMHU0Fv/YAatgpYVLL3k0kMwEgTm+kXQUtIuCZN7hl0bVByGuQm9mAsIa
 7RCS6EWz03RYRr/CnT5yN1nu8fz0T0egk/kVPIR7H/hebX8u8MlJ52OvI
 BoJ2eymgPRuYwsAu68EZe6x01y+NvGVn/IqK8w/06W4WReNNpfMK/oXYa Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="383608000"
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="383608000"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 13:10:06 -0700
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="718702467"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.143])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 13:10:06 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Sep 2022 13:08:16 -0700
Message-Id: <20220908-if-ladder-v1-3-9949a713ca08@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220908-if-ladder-v1-0-9949a713ca08@intel.com>
References: <20220908-if-ladder-v1-0-9949a713ca08@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.10.0-dev-df873
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 3/3] drm/i915: Invert if/else ladder for
 stolen init
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Continue converting the driver to the convention of last version first,
extending it to the future platforms. Now, any GRAPHICS_VER >= 11 will
be handled by the first branch.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index 4f4c9461a23b..acc561c0f0aa 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -430,48 +430,29 @@ static int i915_gem_init_stolen(struct intel_memory_region *mem)
 	reserved_base = stolen_top;
 	reserved_size = 0;
 
-	switch (GRAPHICS_VER(i915)) {
-	case 2:
-	case 3:
-		break;
-	case 4:
-		if (!IS_G4X(i915))
-			break;
-		fallthrough;
-	case 5:
-		g4x_get_stolen_reserved(i915, uncore,
+	if (GRAPHICS_VER(i915) >= 11) {
+		icl_get_stolen_reserved(i915, uncore,
 					&reserved_base, &reserved_size);
-		break;
-	case 6:
-		gen6_get_stolen_reserved(i915, uncore,
-					 &reserved_base, &reserved_size);
-		break;
-	case 7:
-		if (IS_VALLEYVIEW(i915))
-			vlv_get_stolen_reserved(i915, uncore,
-						&reserved_base, &reserved_size);
-		else
-			gen7_get_stolen_reserved(i915, uncore,
-						 &reserved_base, &reserved_size);
-		break;
-	case 8:
-	case 9:
+	} else if (GRAPHICS_VER(i915) >= 8) {
 		if (IS_LP(i915))
 			chv_get_stolen_reserved(i915, uncore,
 						&reserved_base, &reserved_size);
 		else
 			bdw_get_stolen_reserved(i915, uncore,
 						&reserved_base, &reserved_size);
-		break;
-	default:
-		MISSING_CASE(GRAPHICS_VER(i915));
-		fallthrough;
-	case 11:
-	case 12:
-		icl_get_stolen_reserved(i915, uncore,
-					&reserved_base,
-					&reserved_size);
-		break;
+	} else if (GRAPHICS_VER(i915) >= 7) {
+		if (IS_VALLEYVIEW(i915))
+			vlv_get_stolen_reserved(i915, uncore,
+						&reserved_base, &reserved_size);
+		else
+			gen7_get_stolen_reserved(i915, uncore,
+						 &reserved_base, &reserved_size);
+	} else if (GRAPHICS_VER(i915) >= 6) {
+		gen6_get_stolen_reserved(i915, uncore,
+					 &reserved_base, &reserved_size);
+	} else if (GRAPHICS_VER(i915) >= 5 || IS_G4X(i915)) {
+		g4x_get_stolen_reserved(i915, uncore,
+					&reserved_base, &reserved_size);
 	}
 
 	/*

-- 
b4 0.10.0-dev-df873
