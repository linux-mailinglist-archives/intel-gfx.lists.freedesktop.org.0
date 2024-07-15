Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADF34931874
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jul 2024 18:24:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3926C10E43A;
	Mon, 15 Jul 2024 16:24:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fu0EMNMc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A081810E43A
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Jul 2024 16:24:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721060685; x=1752596685;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=W6Y8Fvr95+uzm6nYYBqD0uN2e+JmfBNCDOtNOvMt8/I=;
 b=fu0EMNMcTJZ3u5j4geEV/22zSIMz8pbZkz6LF4OJoJ7NTYsQStdrdoQp
 kISxunE3mWk/Gp1Avu2ld8p0buNggFLyaUhHuXHhmBsWUEbgmMGNojsAz
 WB2UpWdM9nHzHvWw0w8Al+JUi53PZAXdZ47pvtUUsIcPA6KzD3Bh0AHQs
 Lg3IywX3u9Ebw3QkauYEjZ1a8ynDh/tQoaWjmkozfDuWnzP2fSi7ODbq5
 rf/Z4E1FjkqKm1beL/GGeoOAhf1maZjzAezR/7+O+1gCrDvtxCDeZF6DD
 DUN8MlSpI5N90jeN/tSDFiGImX7S9zHIjmRIxkyTfIhSzkq5GaC5xwMR+ w==;
X-CSE-ConnectionGUID: veFaxsggTX+D/njDZDFYxw==
X-CSE-MsgGUID: MRrz55M8TIyYe9DcZWkhfg==
X-IronPort-AV: E=McAfee;i="6700,10204,11134"; a="18646203"
X-IronPort-AV: E=Sophos;i="6.09,210,1716274800"; d="scan'208";a="18646203"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2024 09:24:41 -0700
X-CSE-ConnectionGUID: iwhpYDj2TQiIzWx7pmq6nQ==
X-CSE-MsgGUID: I6RJGJqwRp2xtTGTDM8oUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,210,1716274800"; d="scan'208";a="54601743"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa005.jf.intel.com with ESMTP; 15 Jul 2024 09:24:39 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: 
Cc: intel-gfx@lists.freedesktop.org, suraj.kandpal@intel.com,
 arun.r.murthy@intel.com, ankit.k.nautiyal@intel.com, sfr@canb.auug.org.au,
 jani.nikula@intel.com
Subject: [PATCH v5] drm/dp: Describe target_rr_divider in struct drm_dp_as_sdp
Date: Mon, 15 Jul 2024 21:55:13 +0530
Message-ID: <20240715162514.2836421-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240715040234.2820094-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20240715040234.2820094-1-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
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

Describe newly added parameter target_rr_divider in struct
drm_dp_as_sdp.

-v2:
Remove extra line from commit message.(Lucas)

-v3:
Rebase.

Fixes: a20c6d954d75 ("drm/dp: Add refresh rate divider to struct representing AS SDP")
Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Stephen Rothwell <sfr@canb.auug.org.au>
Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Acked-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 include/drm/display/drm_dp_helper.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/drm/display/drm_dp_helper.h b/include/drm/display/drm_dp_helper.h
index bbb1cdc4fc68..279624833ea9 100644
--- a/include/drm/display/drm_dp_helper.h
+++ b/include/drm/display/drm_dp_helper.h
@@ -112,6 +112,7 @@ struct drm_dp_vsc_sdp {
  * @target_rr: Target Refresh
  * @duration_incr_ms: Successive frame duration increase
  * @duration_decr_ms: Successive frame duration decrease
+ * @target_rr_divider: Target refresh rate divider
  * @mode: Adaptive Sync Operation Mode
  */
 struct drm_dp_as_sdp {
-- 
2.45.2

