Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8DCE7DBD1F
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Oct 2023 16:58:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F024110E319;
	Mon, 30 Oct 2023 15:58:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1674F10E30A;
 Mon, 30 Oct 2023 15:58:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698681507; x=1730217507;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=inJkwVNIHOK+vvG2ke0cZB5M6irQFWNWMEnOaXoUg8Q=;
 b=kju9FkSKsgxg0ih3cvxCHn4l/l1D4EVom84g66ryx2TuZ6IzWkGMUiYx
 bkRN3As5nz58sxKUTdfe8vLWGAg176c2Zq2x2wHMfxbsxgP3p9cY3mkyv
 1DLKQjBv5nJVd22iL3bGFuhOHBGA+DRMiX6mNQApC5wbeSAsiVYT3a/6I
 11IA5ISw4hZSPMIGHmYj6EH1NPKI1RcTR5vHcQMzpeNPT8yBw7N3DFRCd
 pBQyFaBiKnMiXdFGSlBTL6FmFacA9CYYPAvmqa7Ucm+St0h8hH5c7OwEy
 I+oKCejJIKFhiWuZLwetJpu8Mx6diLscoAaaKeS7lw1vhLZBkDJAnKUIa A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="974411"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; 
   d="scan'208";a="974411"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 08:58:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="789493960"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; d="scan'208";a="789493960"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 08:58:24 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Oct 2023 17:58:20 +0200
Message-Id: <20231030155843.2251023-8-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231030155843.2251023-1-imre.deak@intel.com>
References: <20231030155843.2251023-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 07/30] drm/dp: Add
 DP_HBLANK_EXPANSION_CAPABLE and DSC_PASSTHROUGH_EN DPCD flags
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add the DPCD flag to enable DSC passthrough in a last branch device,
used in a follow-up i915 patch.

Also add a flag to detect HBLANK expansion support in a branch device,
used by a workaround in a follow-up i915 patch.

Cc: Lyude Paul <lyude@redhat.com>
Cc: dri-devel@lists.freedesktop.org
Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
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

