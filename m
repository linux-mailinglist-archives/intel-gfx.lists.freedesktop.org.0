Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D14987E21CC
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Nov 2023 13:35:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63F1A10E2F2;
	Mon,  6 Nov 2023 12:35:33 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C35D10E2E7;
 Mon,  6 Nov 2023 12:35:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699274129; x=1730810129;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=oezA+NdQaoN8ErKhnD8JPHwVkItInw4pXwcLmkY7Y28=;
 b=PXG+82sE/URK3xYWEuZoNDTg8tpt9K4kCAlxModgWu7bKlgVAreqTW0+
 0N5o481YBUumkWXKADNi4rGlC+6O+qOS49jl8/wKwz/f22f+OGaChY8Nc
 NnTbHvgCWdJoPw/Wfp5jch+hyuDCIiCmA/Z4bc7LX7TBLCM7B6YY7tOqe
 DRn5aXD6xfmwsGke+uNLF48x/rIjv5kgq28eqvtMDKxWUG/83fxooVguD
 +cblt80ZOPGVqiw+g0NTX7WtadaPp3WgzkkhMX8lZmsjSr4KibbNOZT8d
 jI/azAEWHuwD3QKPMx8RbVzJQB4TflgsyzXSU1peyt0JnmSQEScAwMoIo w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10885"; a="393159555"
X-IronPort-AV: E=Sophos;i="6.03,281,1694761200"; d="scan'208";a="393159555"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 04:35:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10885"; a="712188484"
X-IronPort-AV: E=Sophos;i="6.03,281,1694761200"; d="scan'208";a="712188484"
Received: from ajayshan-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.234.152])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 04:35:27 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Mon,  6 Nov 2023 12:35:13 +0000
Message-Id: <20231106123518.588528-4-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231106123518.588528-1-tvrtko.ursulin@linux.intel.com>
References: <20231106123518.588528-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 4/9] lib/igt_drm_fdinfo: Copy over region map name
 on match
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

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

I will need some record of which regions were found for intel_gpu_top so
lets just copy over the region name from the map on the first match.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>
---
 lib/igt_drm_fdinfo.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/lib/igt_drm_fdinfo.c b/lib/igt_drm_fdinfo.c
index b72822894782..222ccbfb1fd6 100644
--- a/lib/igt_drm_fdinfo.c
+++ b/lib/igt_drm_fdinfo.c
@@ -148,6 +148,10 @@ static int parse_region(char *line, struct drm_client_fdinfo *info,
 		for (i = 0; i < region_entries; i++) {
 			if (!strncmp(name, region_map[i], name_len)) {
 				found = i;
+				if (!info->region_names[info->num_regions][0]) {
+					assert(name_len < sizeof(info->region_names[i]));
+					strncpy(info->region_names[i], name, name_len);
+				}
 				break;
 			}
 		}
-- 
2.39.2

