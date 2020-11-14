Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D64F2B2BAB
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Nov 2020 06:52:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94CE76E8E6;
	Sat, 14 Nov 2020 05:52:11 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25D3F6E8A2
 for <Intel-gfx@lists.freedesktop.org>; Sat, 14 Nov 2020 05:52:10 +0000 (UTC)
IronPort-SDR: JBcCqXoejTYjLMwi6Yl+7LPRdusBF3YSXDxIumBH5s5iSo8g/nwEfp/AVQgTZPm3mH6TeObQm5
 T006NZFquvbA==
X-IronPort-AV: E=McAfee;i="6000,8403,9804"; a="157584522"
X-IronPort-AV: E=Sophos;i="5.77,477,1596524400"; d="scan'208";a="157584522"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2020 21:52:09 -0800
IronPort-SDR: Y5oKoYlGzMHN1LUm8s9cgEKO7d+rGtNi3gb8SH61O0lQahf9zOReG0PUSvVnDgX7DWoxXKEYaG
 ZX453ya3xUSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,477,1596524400"; d="scan'208";a="357775823"
Received: from lkp-server02.sh.intel.com (HELO 697932c29306) ([10.239.97.151])
 by fmsmga004.fm.intel.com with ESMTP; 13 Nov 2020 21:52:07 -0800
Received: from kbuild by 697932c29306 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kdoTm-0000hH-Tj; Sat, 14 Nov 2020 05:52:06 +0000
Date: Sat, 14 Nov 2020 13:51:36 +0800
From: kernel test robot <lkp@intel.com>
To: Sean Z Huang <sean.z.huang@intel.com>, Intel-gfx@lists.freedesktop.org
Message-ID: <20201114055136.GA117250@f0cb0f02b819>
References: <20201114014537.25495-15-sean.z.huang@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201114014537.25495-15-sean.z.huang@intel.com>
X-Patchwork-Hint: ignore
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [Intel-gfx] [RFC PATCH] drm/i915/pxp:
 intel_pxp_sm_destroy_all_sw_sessions() can be static
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
Cc: "Huang, Sean Z" <sean.z.huang@intel.com>, kbuild-all@lists.01.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: kernel test robot <lkp@intel.com>
---
 intel_pxp_sm.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
index 37fe2e5af88dcb..79dd930f1c0d8b 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
@@ -1143,7 +1143,7 @@ int pxp_sm_terminate_protected_session_unsafe(struct drm_i915_private *i915, int
 	return ret;
 }
 
-int intel_pxp_sm_destroy_all_sw_sessions(struct drm_i915_private *i915, int session_type)
+static int intel_pxp_sm_destroy_all_sw_sessions(struct drm_i915_private *i915, int session_type)
 {
 	int ret = 0;
 	struct pxp_protected_session *current_session, *n;
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
