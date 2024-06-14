Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11A8A908745
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2024 11:23:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16FB710ECAB;
	Fri, 14 Jun 2024 09:23:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MJrN0x1e";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37C8010ECB4
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2024 09:23:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718356999; x=1749892999;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=c9PGmupxv6By/ubqBvgDMiS4pQZOgCFpAikK4jlbSYk=;
 b=MJrN0x1e/M62oZGsvbKm8MUJktcQ8iPp6ymKvgEvH9vGqWNrGz4SmiVR
 qrQdVPWgvpJ0pLqXoj0q0NZaA7lQ0NNrbKiWZKDW77W5xbxCSaIR+Zr+6
 dH74ud9yu17hSQvSohUVL0nSsct9OpCqG8dR7Obi29ruNFsWu/lDmivv0
 5O2Jp+6gCSGZg+lQcFa1I2Z5h7Qd3RZiWwJawzr/h9/CmnVtfSt4yY7gr
 jrKggwKypvivH6gWZQeywGmcosLETQL2GHcD7pXx2KMIsHIjxnTQcxYtW
 qgMcX6qlgtG/xDe2gP3J1TLgJPkZtTslg50z1UH65d240IKXj/ynCL6eN Q==;
X-CSE-ConnectionGUID: hfovkJDhQmWsidvVOndXAQ==
X-CSE-MsgGUID: dKOvjhcrSRSeAnU+0z++/Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11102"; a="25908811"
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="25908811"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 02:23:16 -0700
X-CSE-ConnectionGUID: jdCkIwCTTI62dl8eG55VJA==
X-CSE-MsgGUID: gw1N+uQ5RtOmzjsrm9I2yQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="40545683"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.221])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 02:23:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	jani.nikula@intel.com
Subject: [CI 06/11] drm/i915/gt: remove mem freq from gt debugfs
Date: Fri, 14 Jun 2024 12:22:34 +0300
Message-Id: <bbfec4c67a81d1d3de1f40484a80b7164e69df21.1718356614.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1718356614.git.jani.nikula@intel.com>
References: <cover.1718356614.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

It's a bit out of place, and only printed for VLV/CHV.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
index 0437fd8217e0..8d08b38874ef 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
@@ -371,7 +371,6 @@ void intel_gt_pm_frequency_dump(struct intel_gt *gt, struct drm_printer *p)
 		vlv_punit_put(i915);
 
 		drm_printf(p, "PUNIT_REG_GPU_FREQ_STS: 0x%08x\n", freq_sts);
-		drm_printf(p, "DDR freq: %d MHz\n", i915->mem_freq);
 
 		drm_printf(p, "actual GPU freq: %d MHz\n",
 			   intel_gpu_freq(rps, (freq_sts >> 8) & 0xff));
-- 
2.39.2

