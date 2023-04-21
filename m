Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 85AE26EA9E9
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 14:03:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7D2D10EE19;
	Fri, 21 Apr 2023 12:03:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2937A10EE17
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Apr 2023 12:03:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682078630; x=1713614630;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=FaiYJdvcVUY14aoY2erSgI9ucHLqhtA+fWeAbvIOy04=;
 b=L4OMxj/dzzjOudAYAVK3q52+JLFOgc9ZnHGkI4IiTq/tDPYwXnhAq8od
 cCm3d/NuGX2HUJhaJ+Gw2j68LJovCwI+Nesx2FD9rumVyo73CDBiu9hC0
 ciWvam6BzXGjJ5hWGMkvYNk3hJ0jHUgKVmKcI6ItFSxYBk2PLZObDr2CI
 nRVvmU2Ns6dRVXtRdNV0qK6yR0VDRNSX/L71l3yRi7vEz2L3H/ZxswewS
 VxsqrcDeXPqVkCrn9oxlXLTm+QKZzrrda4jV3kSdkcTmRbZMLo2j5LBul
 gWvbQhV9O7jpxEHUJZkMxkIIzsLfhqXz9MLju8uYBeEI4dqwqZ4tWbioR g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="373900168"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="373900168"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 05:03:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="722725476"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="722725476"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 21 Apr 2023 05:03:48 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 21 Apr 2023 15:03:47 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Apr 2023 15:03:07 +0300
Message-Id: <20230421120307.24793-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230421120307.24793-1-ville.syrjala@linux.intel.com>
References: <20230421120307.24793-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 13/13] drm/i915/psr: Re-enable PSR1 on hdw/bdw
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

All known issues fixed now, so re-enable PSR1 on hsw/bdw.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 272a8ba37b64..923e24044967 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -562,6 +562,8 @@ static const struct intel_device_info vlv_info = {
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP), \
 	.display.has_ddi = 1, \
 	.display.has_fpga_dbg = 1, \
+	.display.has_psr = 1, \
+	.display.has_psr_hw_tracking = 1, \
 	.display.has_dp_mst = 1, \
 	.has_rc6p = 0 /* RC6p removed-by HSW */, \
 	HSW_PIPE_OFFSETS, \
@@ -665,8 +667,6 @@ static const struct intel_device_info chv_info = {
 	.has_gt_uc = 1, \
 	.__runtime.has_hdcp = 1, \
 	.display.has_ipc = 1, \
-	.display.has_psr = 1, \
-	.display.has_psr_hw_tracking = 1, \
 	.display.dbuf.size = 896 - 4, /* 4 blocks for bypass path allocation */ \
 	.display.dbuf.slice_mask = BIT(DBUF_S1)
 
-- 
2.39.2

