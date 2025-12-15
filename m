Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AB23CBEA42
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Dec 2025 16:28:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 960B210E5EA;
	Mon, 15 Dec 2025 15:28:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LJ8q82Xk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8476D10E5E2;
 Mon, 15 Dec 2025 15:28:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765812525; x=1797348525;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wv7SLBiGJSDVjZ1/cW7ne/GpIrkkUNTqq55hwSZDZrM=;
 b=LJ8q82XkUW/NuXLlnbvNUjpx615p2FclFqgHOS4CsloDnIAlE9lFoeb9
 fsBGKf8EiWqnkZerclypXuu0caou2huRzEYXE6q8DCxdKCQIKqmF8UAeE
 T/mdHknZgTBNyEIoBAmPFn4sI0If9aVaiyfkMf5LKdVL0/zyrYgbNqp4R
 1Y24JerapGsPywIVNO3qaSHnBlUZEKwphfkT0O/fne0PmrNl/7V2uzVZs
 BJuHXn2Av9RkpLkwibgoexnPDPy8MXid0oCFCUu7l+tIPrDtyK1iKono+
 MGX0gUVv9aioZ2QWhXz+XUjfoCzXIVzoVrvIWQ7YYsC0GwXeu5EsJ6hSM A==;
X-CSE-ConnectionGUID: vR18EGJJSeOcRTaHF6RDBg==
X-CSE-MsgGUID: f3HnrQJHStWJsq11Nw+F5A==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="78354323"
X-IronPort-AV: E=Sophos;i="6.21,151,1763452800"; d="scan'208";a="78354323"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 07:28:44 -0800
X-CSE-ConnectionGUID: 5oDX5zfKThiuwN4u+mr9Kg==
X-CSE-MsgGUID: FyUIkI/gQUigxd6ZtB34gA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,151,1763452800"; d="scan'208";a="201931616"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.106])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 07:28:42 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 02/15] drm/xe/display: rename xe_plane_initial.c to
 xe_initial_plane.c
Date: Mon, 15 Dec 2025 17:28:16 +0200
Message-ID: <62eb56fe348a8fe7c17333d784192da701367cc7.1765812266.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1765812266.git.jani.nikula@intel.com>
References: <cover.1765812266.git.jani.nikula@intel.com>
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

Follow i915 with the more naturally flowing naming.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/Makefile                                     | 2 +-
 .../drm/xe/display/{xe_plane_initial.c => xe_initial_plane.c}   | 0
 2 files changed, 1 insertion(+), 1 deletion(-)
 rename drivers/gpu/drm/xe/display/{xe_plane_initial.c => xe_initial_plane.c} (100%)

diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index 7f08b4cd91d6..84fd9f88f63d 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -217,8 +217,8 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	display/xe_dsb_buffer.o \
 	display/xe_fb_pin.o \
 	display/xe_hdcp_gsc.o \
+	display/xe_initial_plane.o \
 	display/xe_panic.o \
-	display/xe_plane_initial.o \
 	display/xe_stolen.o \
 	display/xe_tdf.o
 
diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gpu/drm/xe/display/xe_initial_plane.c
similarity index 100%
rename from drivers/gpu/drm/xe/display/xe_plane_initial.c
rename to drivers/gpu/drm/xe/display/xe_initial_plane.c
-- 
2.47.3

