Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 335C83F9B78
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Aug 2021 17:10:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F2646E992;
	Fri, 27 Aug 2021 15:10:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E58D96E992
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Aug 2021 15:10:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10089"; a="281690773"
X-IronPort-AV: E=Sophos;i="5.84,357,1620716400"; d="scan'208";a="281690773"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2021 08:10:01 -0700
X-IronPort-AV: E=Sophos;i="5.84,357,1620716400"; d="scan'208";a="528340119"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2021 08:10:00 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Aug 2021 18:09:53 +0300
Message-Id: <20210827150955.3343520-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210827150955.3343520-1-imre.deak@intel.com>
References: <20210827150955.3343520-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/5] drm/i915/adlp: Assert that VMAs in DPT
 start at 0
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

Atm the DPT object can accomodate only one VMA, so the VMA offset will
be always 0. Add an assert for this.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 724e7b04f3b63..f50282b60de44 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -993,6 +993,11 @@ static u32 skl_surf_address(const struct intel_plane_state *plane_state,
 	u32 offset = plane_state->view.color_plane[color_plane].offset;
 
 	if (intel_fb_uses_dpt(fb)) {
+		/*
+		 * The DPT object contains only one vma, so the VMA's offset
+		 * within the DPT is always 0.
+		 */
+		WARN_ON(plane_state->dpt_vma->node.start);
 		WARN_ON(offset & 0x1fffff);
 		return offset >> 9;
 	} else {
-- 
2.27.0

