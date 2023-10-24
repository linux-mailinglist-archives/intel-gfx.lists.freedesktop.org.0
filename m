Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 606307D448B
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 03:09:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AB4210E2B3;
	Tue, 24 Oct 2023 01:09:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F22F110E2AF
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 01:09:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698109747; x=1729645747;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tOZd8VVHyK8DgmXDm62NPhsrkjG6C0wFYKqJTAq+ynQ=;
 b=GGE04VuQZvx/3gdKoFKlckejsbEKNsXAcSeqmDnTculsOUbxXwPVLOlW
 U14sgqCrHeZsZOjmeZhRXHYszrm4t5qjKIrt708imPcexTc5y24jXuXGI
 wML+e4MBP4cw1HVEGLsZvHaJqXWywOk9e9Dc0YucGMFGoNq4qDJJzfeFm
 uyTInaZmjdYq1XHtcCyYEMtwdrEO17TSO4oE6TWACu8LCZ+Bz0DYOTjzW
 P0Og8BnBS4YuFiJNS1LnButa9DjtAvRbK+oGvrHvFRSV+5f5yI5WpFTLb
 yeFC5R7QbVmeOAGwTxoYkac3f56HHBi40rvc0s7z0LBtr1mE5dGKPw6m4 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="366304342"
X-IronPort-AV: E=Sophos;i="6.03,246,1694761200"; d="scan'208";a="366304342"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 18:09:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="931870018"
X-IronPort-AV: E=Sophos;i="6.03,246,1694761200"; d="scan'208";a="931870018"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 18:09:06 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Oct 2023 04:09:02 +0300
Message-Id: <20231024010925.3949910-7-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231024010925.3949910-1-imre.deak@intel.com>
References: <20231024010925.3949910-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/29] drm/dp: Add DP_HBLANK_EXPANSION_CAPABLE
 and DSC_PASSTHROUGH_EN DPCD flags
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

Add the DPCD flag to enable DSC passthrough in a last branch device,
used in a follow-up i915 patch.

Also add a flag to detect HBLANK expansion support in a branch device,
used by a workaround in a follow-up i915 patch.

Cc: Lyude Paul <lyude@redhat.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 include/drm/display/drm_dp.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/drm/display/drm_dp.h b/include/drm/display/drm_dp.h
index e69cece404b3c..763d45a612f35 100644
--- a/include/drm/display/drm_dp.h
+++ b/include/drm/display/drm_dp.h
@@ -148,6 +148,7 @@
 #define DP_RECEIVE_PORT_0_CAP_0		    0x008
 # define DP_LOCAL_EDID_PRESENT		    (1 << 1)
 # define DP_ASSOCIATED_TO_PRECEDING_PORT    (1 << 2)
+# define DP_HBLANK_EXPANSION_CAPABLE        (1 << 3)
 
 #define DP_RECEIVE_PORT_0_BUFFER_SIZE	    0x009
 
@@ -699,6 +700,7 @@
 
 #define DP_DSC_ENABLE                       0x160   /* DP 1.4 */
 # define DP_DECOMPRESSION_EN                (1 << 0)
+# define DP_DSC_PASSTHROUGH_EN		    (1 << 1)
 #define DP_DSC_CONFIGURATION				0x161	/* DP 2.0 */
 
 #define DP_PSR_EN_CFG				0x170   /* XXX 1.2? */
-- 
2.39.2

