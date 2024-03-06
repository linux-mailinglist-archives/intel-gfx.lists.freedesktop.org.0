Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDE3B873F1D
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Mar 2024 19:31:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC2E111341C;
	Wed,  6 Mar 2024 18:31:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MpSxbqQg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D8DE11341F;
 Wed,  6 Mar 2024 18:31:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709749902; x=1741285902;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nXekKz5aqhp3XfEQuPxN8HcG/+z7CaiuZ+q4Ht5v4KU=;
 b=MpSxbqQgdPZxY3+rWnZmc8fZS1l5lZwCP6h1eBpt1gbqc4bnyNS/8dtk
 HtceissxPY7kMD618t9nSi6VTSjDdnuk3PNVVuWJW/ovcEQFbox4hltfL
 o8+/a1XO/LxfNttQn8eCs8EJ0OxdC0cSfKDgTZIv4Eo+ytrEhvlL8x+ik
 FWkh++02i/NbhC1wfgWJ1XVovjO98u9DujxXuT+300LAPxadmdmeO3Y7I
 SHa8zXmEAjQeGeUCo7H6n8j5geXgaXXQU1YlLi/2/Sp38ixdfHexyso9l
 MiCOVkbTdJB+DYGsVAskRW1nf94nfzAdWD9H45WvnF4IKpNAu9uWnrhib A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11005"; a="15818015"
X-IronPort-AV: E=Sophos;i="6.06,209,1705392000"; d="scan'208";a="15818015"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 10:31:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,209,1705392000"; 
   d="scan'208";a="9922743"
Received: from rjongalo-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.33.211])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 10:31:40 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@intel.com
Subject: [PATCH 01/22] drm/crtc: make drm_crtc_internal.h self-contained
Date: Wed,  6 Mar 2024 20:31:06 +0200
Message-Id: <c6b286b33976baf65dff209596acd59675983d68.1709749576.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1709749576.git.jani.nikula@intel.com>
References: <cover.1709749576.git.jani.nikula@intel.com>
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

Forward declare struct drm_printer.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_crtc_internal.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/drm_crtc_internal.h b/drivers/gpu/drm/drm_crtc_internal.h
index a514d5207e41..72c26f996b3b 100644
--- a/drivers/gpu/drm/drm_crtc_internal.h
+++ b/drivers/gpu/drm/drm_crtc_internal.h
@@ -54,6 +54,7 @@ struct drm_mode_object;
 struct drm_mode_set;
 struct drm_plane;
 struct drm_plane_state;
+struct drm_printer;
 struct drm_property;
 struct edid;
 struct fwnode_handle;
-- 
2.39.2

