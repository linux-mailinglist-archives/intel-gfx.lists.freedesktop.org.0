Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97BF7B17321
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Jul 2025 16:22:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CD7F10E7A8;
	Thu, 31 Jul 2025 14:22:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eUuGJg7j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86DC710E7A8;
 Thu, 31 Jul 2025 14:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753971722; x=1785507722;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Pkyd61eNBo7GqyG3/se7VU9PU1pIJmHAnx48Tkj6qVg=;
 b=eUuGJg7jSU8AAntnPJhymmDeEHZySCiYUElyWvb7Qw/rWn20eRD1ezR4
 ajCz5Ip5WPRi1/ELqWWHJhR4NiuvMwYL0d4TsJ4YfSJdDr5v35qsm/lC3
 /BM+XRTT7Q21QeErKAkDmn+iVyNTlg2LZ4w/p7rvcYmm1VI2Ywzpn2XPu
 +bDjfqMU2pGlIIXdldI7k2+QA08Cp8Ry3k8SdBgxzp2RlW7yMJSDWTxO6
 lkaJGViPuwTVRVMTY7nbIHOl5q/dBdartymIBoZZurLt/ay1MQYIQrrbA
 aF0/guUrauIIcozJkZlqmogvcxvEfZZLAwvbP9JaJCCoWyMZEEwwHikaT Q==;
X-CSE-ConnectionGUID: Xx3bhK4uT4G1eMRU9zZOVw==
X-CSE-MsgGUID: gWkVCYz8TpqWdQfPvoW7xA==
X-IronPort-AV: E=McAfee;i="6800,10657,11508"; a="66992289"
X-IronPort-AV: E=Sophos;i="6.17,353,1747724400"; d="scan'208";a="66992289"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 07:22:00 -0700
X-CSE-ConnectionGUID: T9Pi7iLySsWiYCFcTKx7WA==
X-CSE-MsgGUID: gRL80MY/SsGhmMtsAhi1xA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,353,1747724400"; d="scan'208";a="167453111"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.108])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 07:21:50 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 4/5] drm/i915/dram: bypass fsb/mem freq detection on dg2 and
 no display
Date: Thu, 31 Jul 2025 17:21:24 +0300
Message-Id: <aa7b14eff92750fa1ddf878ac0f4e90c87b8d3d2.1753971617.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1753971617.git.jani.nikula@intel.com>
References: <cover.1753971617.git.jani.nikula@intel.com>
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

Non-display now calls the intel_fsb_freq() and intel_mem_freq()
functions, so we don't have to have the frequencies initialized for dg2
or non-display cases.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/soc/intel_dram.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
index 193e7f71a356..d896fb67270f 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
@@ -725,10 +725,13 @@ int intel_dram_detect(struct drm_i915_private *i915)
 	struct dram_info *dram_info;
 	int ret;
 
+	if (IS_DG2(i915) || !HAS_DISPLAY(i915))
+		return 0;
+
 	detect_fsb_freq(i915);
 	detect_mem_freq(i915);
 
-	if (GRAPHICS_VER(i915) < 9 || IS_DG2(i915) || !HAS_DISPLAY(i915))
+	if (GRAPHICS_VER(i915) < 9)
 		return 0;
 
 	dram_info = drmm_kzalloc(&i915->drm, sizeof(*dram_info), GFP_KERNEL);
-- 
2.39.5

