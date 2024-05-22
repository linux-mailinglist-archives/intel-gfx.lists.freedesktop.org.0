Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A5978CC59F
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2024 19:34:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FD4C10E265;
	Wed, 22 May 2024 17:34:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ULRuIyN8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE56E10E1C7;
 Wed, 22 May 2024 17:34:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716399266; x=1747935266;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=d9SGfLjftlPKuEdb0upzIfHACrM4n0eC3taiiBy4sjU=;
 b=ULRuIyN8IBlego8Dxypbz7E1eIe1Sg6DKHvwqOey8S3ipsqIPtOCPhjC
 QmvPX/KFVuZCot6Dk6ef/ucCnArOZYZ9OeaqZvnPhZNyHkWTuXTK0WKlC
 ip2qt8S714ImwLAhoLmGEng1bLunTLfV56RTSofE+NfXnWfeB2UlZO0k7
 ETfjCLLlN3keEpd5Xil0nCfqwxj+FUXsLaaDaxdczXmnlX1A/ppJaNrgz
 1K25UV8dqxBncMTM9WaPkAlOJK7QtjhaOQLXFkuhNTwASQGDsl4RSm+vj
 yIkqo/MfjlmWWu5m1ReoQPXYMwBlajonMK1a0ipOf2fYg0rlwOdH54LEa Q==;
X-CSE-ConnectionGUID: 8d6NoAzgT2WVivezjvTytw==
X-CSE-MsgGUID: td0Ljm2kTcajQdpfQYPi8g==
X-IronPort-AV: E=McAfee;i="6600,9927,11080"; a="12611425"
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="12611425"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 10:34:25 -0700
X-CSE-ConnectionGUID: smTK43ALSOmVdzk+3QZzHw==
X-CSE-MsgGUID: ux07AAm5SRCVaefa21fSWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="33474965"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.230])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 10:34:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	rodrigo.vivi@intel.com,
	lucas.demarchi@intel.com
Subject: [PATCH 06/10] drm/i915: add LNL PCI IDs
Date: Wed, 22 May 2024 20:33:43 +0300
Message-Id: <d2baf7f89ed4df63674dac3d59982de69a7b14d4.1716399081.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1716399081.git.jani.nikula@intel.com>
References: <cover.1716399081.git.jani.nikula@intel.com>
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

Although not supported by i915 core, the display code needs to know the
LNL PCI IDs.

Long term, xe and i915 should probably share the file defining PCI IDs.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 include/drm/i915_pciids.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
index 3e39d644ebaa..7ae7ee11ef38 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
@@ -783,4 +783,10 @@
 	MACRO__(0x7DD1, ## __VA_ARGS__), \
 	MACRO__(0x7DD5, ## __VA_ARGS__)
 
+/* LNL */
+#define INTEL_LNL_IDS(MACRO__, ...) \
+	MACRO__(0x6420, ## __VA_ARGS__), \
+	MACRO__(0x64A0, ## __VA_ARGS__), \
+	MACRO__(0x64B0, ## __VA_ARGS__)
+
 #endif /* _I915_PCIIDS_H */
-- 
2.39.2

