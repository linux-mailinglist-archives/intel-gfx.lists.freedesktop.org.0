Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 409173FAFC2
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Aug 2021 04:30:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3697C89D4A;
	Mon, 30 Aug 2021 02:30:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78B2689CD7
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Aug 2021 02:30:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10091"; a="216349496"
X-IronPort-AV: E=Sophos;i="5.84,362,1620716400"; d="scan'208";a="216349496"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2021 19:30:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,362,1620716400"; d="scan'208";a="459051284"
Received: from lkp-server01.sh.intel.com (HELO 4fbc2b3ce5aa) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 29 Aug 2021 19:30:10 -0700
Received: from kbuild by 4fbc2b3ce5aa with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mKX3p-0004j1-BN; Mon, 30 Aug 2021 02:30:09 +0000
Date: Mon, 30 Aug 2021 10:29:56 +0800
From: kernel test robot <lkp@intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
Cc: kbuild-all@lists.01.org
Message-ID: <20210830022956.GA32496@3a4771d25570>
References: <20210827150955.3343520-3-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210827150955.3343520-3-imre.deak@intel.com>
X-Patchwork-Hint: ignore
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [Intel-gfx] [RFC PATCH] drm/i915/adlp: gen12_ccs_aux_stride() can
 be static
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

drivers/gpu/drm/i915/display/intel_fb.c:78:14: warning: symbol 'gen12_ccs_aux_stride' was not declared. Should it be static?

Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: kernel test robot <lkp@intel.com>
---
 intel_fb.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 560e386905318..cd43634619444 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -75,7 +75,7 @@ static unsigned int gen12_aligned_scanout_stride(const struct intel_framebuffer
 	return stride;
 }
 
-unsigned int gen12_ccs_aux_stride(struct intel_framebuffer *fb, int ccs_plane)
+static unsigned int gen12_ccs_aux_stride(struct intel_framebuffer *fb, int ccs_plane)
 {
 	struct drm_i915_private *i915 = to_i915(fb->base.dev);
 	int main_plane = skl_ccs_to_main_plane(&fb->base, ccs_plane);
