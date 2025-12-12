Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA264CB8F13
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 15:14:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F3CB10E7FB;
	Fri, 12 Dec 2025 14:14:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZPNAFhQJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D95610E7E2;
 Fri, 12 Dec 2025 14:14:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765548868; x=1797084868;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=v+u18aPqXRUV21fyaWyLut7zgQAAXgxhdqocKV+L9uE=;
 b=ZPNAFhQJAdxYAayBlZIc2dK1sv/6SMYTxtTtUj2XyVD6j7Mal/ReXCPl
 jjnqfgFL6NeNKX37LwtkJ43N2qUKJPb10uZ9sOMGuw5KaY4KDxkY6yi95
 4rRQjUNbBecelxpYSzO27Ou2nA5xRkJvAmXR/f934u7eJ78ZrYHNXBUVH
 iwO4ycGVyunuWE0ZTpaEtC6U1pAckx+EsUbS83pSUcC7bWqaSJn5T99OM
 NOVPghytUCp8ifKCBL5NHhtNg50AN3AGO0RYLl8HcbxsJQ5S3yVU/XHhV
 799zx5AHxQm15ZqiR20GH+xuBckDLaSjPk8rqgbf7TPFeVYZYUehveX0C w==;
X-CSE-ConnectionGUID: cMLkhT21TsqiVgKTmXgXyA==
X-CSE-MsgGUID: bwtmqgwcS2i984gJYEgfzQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11640"; a="78189074"
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800"; d="scan'208";a="78189074"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 06:14:28 -0800
X-CSE-ConnectionGUID: EoYbZeA1Raygxi+v5x8jCg==
X-CSE-MsgGUID: zoOIXAfySq6L497lbZx8VQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800"; d="scan'208";a="197164671"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.39])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 06:14:24 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	jani.nikula@intel.com
Subject: [PATCH 1/6] drm/intel: fix parent interface kernel-doc
Date: Fri, 12 Dec 2025 16:14:04 +0200
Message-ID: <b293e25aa00418908e67576e8adcab325319705a.1765548786.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1765548786.git.jani.nikula@intel.com>
References: <cover.1765548786.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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

Fix some typos in the kernel-doc.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 include/drm/intel/display_parent_interface.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/intel/display_parent_interface.h
index 477ee9e735f9..87e26ee0ecbf 100644
--- a/include/drm/intel/display_parent_interface.h
+++ b/include/drm/intel/display_parent_interface.h
@@ -97,7 +97,7 @@ struct intel_display_parent_interface {
 	/** @panic: Panic interface */
 	const struct intel_display_panic_interface *panic;
 
-	/** @rpm: RPS interface. Optional. */
+	/** @rps: RPS interface. Optional. */
 	const struct intel_display_rps_interface *rps;
 
 	/** @stolen: Stolen memory. */
@@ -112,7 +112,7 @@ struct intel_display_parent_interface {
 	/** @fence_priority_display: Set display priority. Optional. */
 	void (*fence_priority_display)(struct dma_fence *fence);
 
-	/** @has_auxcss: Are AuxCCS formats supported by the parent. Optional. */
+	/** @has_auxccs: Are AuxCCS formats supported by the parent. Optional. */
 	bool (*has_auxccs)(struct drm_device *drm);
 };
 
-- 
2.47.3

