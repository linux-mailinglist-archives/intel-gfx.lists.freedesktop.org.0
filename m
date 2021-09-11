Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EA8E4407453
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Sep 2021 03:14:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AC136EB22;
	Sat, 11 Sep 2021 01:14:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAEC56EB21;
 Sat, 11 Sep 2021 01:14:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10103"; a="201402202"
X-IronPort-AV: E=Sophos;i="5.85,284,1624345200"; d="scan'208";a="201402202"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2021 18:14:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,284,1624345200"; d="scan'208";a="695259351"
Received: from lkp-server01.sh.intel.com (HELO 730d49888f40) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 10 Sep 2021 18:14:34 -0700
Received: from kbuild by 730d49888f40 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mOrbG-0004zO-3H; Sat, 11 Sep 2021 01:14:34 +0000
Date: Sat, 11 Sep 2021 09:14:23 +0800
From: kernel test robot <lkp@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: kbuild-all@lists.01.org, dri-devel@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <20210911011423.GA20571@e8b8198c3ca8>
References: <20210910081942.1075038-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210910081942.1075038-1-maarten.lankhorst@linux.intel.com>
X-Patchwork-Hint: ignore
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [Intel-gfx] [PATCH] drm/i915: fix odd_ptr_err.cocci warnings
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

From: kernel test robot <lkp@intel.com>

drivers/gpu/drm/i915/display/intel_dpt.c:145:6-12: inconsistent IS_ERR and PTR_ERR on line 146.

 PTR_ERR should access the value just tested by IS_ERR

Semantic patch information:
 There can be false positives in the patch case, where it is the call to
 IS_ERR that is wrong.

Generated by: scripts/coccinelle/tests/odd_ptr_err.cocci

CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: kernel test robot <lkp@intel.com>
---

url:    https://github.com/0day-ci/linux/commits/Maarten-Lankhorst/drm-i915-Add-ww-context-to-intel_dpt_pin/20210910-162231
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
:::::: branch date: 17 hours ago
:::::: commit date: 17 hours ago

 intel_dpt.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--- a/drivers/gpu/drm/i915/display/intel_dpt.c
+++ b/drivers/gpu/drm/i915/display/intel_dpt.c
@@ -143,7 +143,7 @@ struct i915_vma *intel_dpt_pin(struct i9
 		i915_vma_unpin(vma);
 
 		if (IS_ERR(iomem)) {
-			err = PTR_ERR(vma);
+			err = PTR_ERR(iomem);
 			continue;
 		}
 
