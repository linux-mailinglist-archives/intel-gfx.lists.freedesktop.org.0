Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD81B8969CC
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 11:00:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C36A71128ED;
	Wed,  3 Apr 2024 09:00:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YM9MOeHZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0965D1128ED
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Apr 2024 09:00:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712134838; x=1743670838;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cn8ZMzRfKMb4+lzKGYy4USs+OoQwlM7qjW7OqiD2sFk=;
 b=YM9MOeHZtvjHTL7ZOZaeUh0RHKe4vhK0jalNW/SLv/ZKlK9YxpkmXbFw
 jaKpVMLQWJv3azghkSlYruRstWBzP2VkhhP0/6MGPPRMLVx8MhdJPv1uY
 IqbhO5qtnpGSzMVGnzhvObcFMo6VKWFt7wm6PYxMa3oI+MKWsd4FMRZmZ
 F4wBOOpE6vSj2u4tNln+2/u3KJ4wWfPhCuv3ntEjuE4US0SdWi5bkUvOv
 2ALV3/kow1ujLv7az1u9MN9GxKKNIOuIr4iY87tz3e74kENOY6Uz9xwT+
 pNpk9NWJqrJTPKCsWoH6Zjzzv8bGZ+ta1sscPCWrzFPeMWIbLVN5QgNkl w==;
X-CSE-ConnectionGUID: G+58ju1sTDmoj1BlaAOR2w==
X-CSE-MsgGUID: T7s+0YCXR5W/hjYHXa8uUw==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="7472438"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; 
   d="scan'208";a="7472438"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 02:00:35 -0700
X-CSE-ConnectionGUID: GSW1WehyTMqDwhAGP5e+1Q==
X-CSE-MsgGUID: Cm3YtllRSYyUNpmcI1W8wg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18453077"
Received: from esavax-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.249.35.175])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 02:00:35 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v5 07/19] drm/i915/psr: Call intel_psr_init_dpcd in
 intel_dp_detect
Date: Wed,  3 Apr 2024 12:00:01 +0300
Message-Id: <20240403090013.54296-8-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240403090013.54296-1-jouni.hogander@intel.com>
References: <20240403090013.54296-1-jouni.hogander@intel.com>
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

Currently panel replay dpcd capability isn't properly checked after
plugging in DP panel. Fix this by calling intel_psr_init_dpcd in
intel_dp_detect.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index b393ddbb7b35..b8976bb67510 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5744,6 +5744,8 @@ intel_dp_detect(struct drm_connector *connector,
 
 	intel_dp_mst_configure(intel_dp);
 
+	intel_psr_init_dpcd(intel_dp);
+
 	/*
 	 * TODO: Reset link params when switching to MST mode, until MST
 	 * supports link training fallback params.
-- 
2.34.1

