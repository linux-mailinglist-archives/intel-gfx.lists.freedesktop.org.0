Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9432C8FB72C
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:29:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E283689208;
	Tue,  4 Jun 2024 15:29:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gWjNkaGl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71F2210E500
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:29:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717514978; x=1749050978;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=82OtV94nrGFS+AuTQ1+P+swIjaQ0EqJ2aNCnhekwtpg=;
 b=gWjNkaGl5kbOWJHoXPuaFpbZZXUo8l5wYSugY2RtC8y6CiVsIfiDU9/n
 g74fK0CUsv9ca0a1Is3ENx6YlVT5VEW+oUx0ZtTsVRGTiFttzkX/k3Z/t
 Eg2g4i8puvmNX15bouyhZRMRGynZ9HUUcHVyoZ+hmq5KuU51IOvte0uwn
 MpPJPWbFkbPBMF3ZbAlILGAUxLtMM1pkxSVfWIID3Zz/OJ8H28NANDbUW
 +2BN3UahLL90A+iIN4wOqL6yHJympa59HFNcDhEvVFwr9bexrs6tfQdyO
 mI3Ykgs5zaOwMA3U4nefrER4tqhY9PMXwgrnU6fqTZojLAP2z/ZdJ3fL7 w==;
X-CSE-ConnectionGUID: Ame1M3wIQVaceInkN3SezQ==
X-CSE-MsgGUID: c7StZDqNR/umN3495C96eA==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="13949673"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="13949673"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:29:38 -0700
X-CSE-ConnectionGUID: fgZspnFpTTq6H+kPg/MnQQ==
X-CSE-MsgGUID: 86vukzADRI+gAkh0Zv/xBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="41714813"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:29:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 39/65] drm/i915: pass dev_priv explicitly to
 _PIPEB_FRMCOUNT_G4X
Date: Tue,  4 Jun 2024 18:25:57 +0300
Message-Id: <b0a9c0728ac988f69f220dc2c1b9c77ac11d17aa.1717514638.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1717514638.git.jani.nikula@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
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

Avoid the implicit dev_priv local variable use, and pass dev_priv
explicitly to the _PIPEB_FRMCOUNT_G4X register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 0bbe2f8aff4b..f5367ec58400 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2301,7 +2301,7 @@
 #define _PIPEBSTAT(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x71024)
 #define _PIPEBFRAMEHIGH		0x71040
 #define _PIPEBFRAMEPIXEL	0x71044
-#define _PIPEB_FRMCOUNT_G4X	(DISPLAY_MMIO_BASE(dev_priv) + 0x71040)
+#define _PIPEB_FRMCOUNT_G4X(dev_priv)	(DISPLAY_MMIO_BASE(dev_priv) + 0x71040)
 #define _PIPEB_FLIPCOUNT_G4X	(DISPLAY_MMIO_BASE(dev_priv) + 0x71044)
 
 
-- 
2.39.2

