Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE4D22D81D0
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Dec 2020 23:19:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A34D8912A;
	Fri, 11 Dec 2020 22:19:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B295A8912A
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Dec 2020 22:19:19 +0000 (UTC)
IronPort-SDR: aWuXzpy1h3DiWpcOAIlD8jxtX0pbE9kdy8681E3nZ431a0djrPnzUCGp9IQ0IL1sMsvURU0sDo
 eVSjZU2IOXuQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9832"; a="171939773"
X-IronPort-AV: E=Sophos;i="5.78,412,1599548400"; d="scan'208";a="171939773"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2020 14:19:19 -0800
IronPort-SDR: KaaZEQrmdfU4Hn/d/yHEsKSQBRIzkWarbMHNqfqPcmrVZk3obJcf9f1bMHHTm8DEJYxWNLzCKh
 DBWC/ZqYCM3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,412,1599548400"; d="scan'208";a="334358619"
Received: from lkp-server01.sh.intel.com (HELO ecc0cebe68d1) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 11 Dec 2020 14:19:18 -0800
Received: from kbuild by ecc0cebe68d1 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1knqkv-00017Q-Bw; Fri, 11 Dec 2020 22:19:17 +0000
Date: Sat, 12 Dec 2020 06:19:11 +0800
From: kernel test robot <lkp@intel.com>
To: Dave Airlie <airlied@gmail.com>, intel-gfx@lists.freedesktop.org
Message-ID: <20201211221911.GA55742@58efc5df12a6>
References: <20201211072922.19101-10-airlied@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201211072922.19101-10-airlied@gmail.com>
X-Patchwork-Hint: ignore
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [Intel-gfx] [RFC PATCH] drm/i915: skl_plane_ctl_crtc() can be static
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
Cc: kbuild-all@lists.01.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: kernel test robot <lkp@intel.com>
---
 intel_gen9_plane.c |   12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_gen9_plane.c b/drivers/gpu/drm/i915/display/intel_gen9_plane.c
index d547edabb5ce7..8549b262f095e 100644
--- a/drivers/gpu/drm/i915/display/intel_gen9_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_gen9_plane.c
@@ -1393,7 +1393,7 @@ static u32 cnl_plane_ctl_flip(unsigned int reflect)
 	return 0;
 }
 
-u32 skl_plane_ctl_crtc(const struct intel_crtc_state *crtc_state)
+static u32 skl_plane_ctl_crtc(const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 	u32 plane_ctl = 0;
@@ -1413,8 +1413,8 @@ u32 skl_plane_ctl_crtc(const struct intel_crtc_state *crtc_state)
 	return plane_ctl;
 }
 
-u32 skl_plane_ctl(const struct intel_crtc_state *crtc_state,
-		  const struct intel_plane_state *plane_state)
+static u32 skl_plane_ctl(const struct intel_crtc_state *crtc_state,
+			 const struct intel_plane_state *plane_state)
 {
 	struct drm_i915_private *dev_priv =
 		to_i915(plane_state->uapi.plane->dev);
@@ -1452,7 +1452,7 @@ u32 skl_plane_ctl(const struct intel_crtc_state *crtc_state,
 	return plane_ctl;
 }
 
-u32 glk_plane_color_ctl_crtc(const struct intel_crtc_state *crtc_state)
+static u32 glk_plane_color_ctl_crtc(const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 	u32 plane_color_ctl = 0;
@@ -1469,8 +1469,8 @@ u32 glk_plane_color_ctl_crtc(const struct intel_crtc_state *crtc_state)
 	return plane_color_ctl;
 }
 
-u32 glk_plane_color_ctl(const struct intel_crtc_state *crtc_state,
-			const struct intel_plane_state *plane_state)
+static u32 glk_plane_color_ctl(const struct intel_crtc_state *crtc_state,
+			       const struct intel_plane_state *plane_state)
 {
 	struct drm_i915_private *dev_priv =
 		to_i915(plane_state->uapi.plane->dev);
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
