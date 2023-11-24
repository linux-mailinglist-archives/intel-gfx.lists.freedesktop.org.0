Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E8E67F6D42
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Nov 2023 08:57:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 187BA10E79D;
	Fri, 24 Nov 2023 07:57:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A5C710E79D
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Nov 2023 07:57:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700812651; x=1732348651;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=bT1l19d9A25e9utkJpiO6JpTEoi4Lcnrc2WDoFxG99g=;
 b=MjhdTd/mArxtMg7E2nsMogkOyd2lH8Bxa1JoYHYkNJLOp49/ejfOVUVS
 j+r97xB48YFG3y0RA4XVLnEKvmJXVXavTJDQdWicOvhxe0oIYV2Z2ZL7m
 fYppp9wLVsKg6tRHqiptwGGEn4Kz7wPSj0P0XpiVCYsb/suqnbue8OxV5
 ZFWNhkXAgVotoSi9mL780f/e0/iW68pTeHCTxgS6yJhuOLodYg4Yttua5
 CQuAVZScCAdgLiNavEla/ejJozrAuaKFBKfe1WQ0pBzuBUTu2/WlUXcP8
 jKkCw9BOvFCZNOXRcptrRWY+cY6iM0vITmJkxn/473uRxbu2hBZph+I6c Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="395199282"
X-IronPort-AV: E=Sophos;i="6.04,223,1695711600"; d="scan'208";a="395199282"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2023 23:57:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="767393114"
X-IronPort-AV: E=Sophos;i="6.04,223,1695711600"; d="scan'208";a="767393114"
Received: from lkp-server01.sh.intel.com (HELO d584ee6ebdcc) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 23 Nov 2023 23:57:29 -0800
Received: from kbuild by d584ee6ebdcc with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1r6R43-0002Ep-1P;
 Fri, 24 Nov 2023 07:57:27 +0000
Date: Fri, 24 Nov 2023 15:56:44 +0800
From: kernel test robot <lkp@intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <202311241251.ZXIZrJRp-lkp@intel.com>
References: <20231123140244.4183869-2-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231123140244.4183869-2-mitulkumar.ajitkumar.golani@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/3] drm: Add Adaptive Sync SDP logging
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
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Mitul,

kernel test robot noticed the following build warnings:

[auto build test WARNING on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Mitul-Golani/drm-Add-Adaptive-Sync-SDP-logging/20231123-220931
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20231123140244.4183869-2-mitulkumar.ajitkumar.golani%40intel.com
patch subject: [Intel-gfx] [PATCH 1/3] drm: Add Adaptive Sync SDP logging
config: x86_64-allyesconfig (https://download.01.org/0day-ci/archive/20231124/202311241251.ZXIZrJRp-lkp@intel.com/config)
compiler: clang version 16.0.4 (https://github.com/llvm/llvm-project.git ae42196bc493ffe877a7e3dff8be32035dea4d07)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20231124/202311241251.ZXIZrJRp-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202311241251.ZXIZrJRp-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/display/drm_dp_helper.c:2927:36: warning: format specifies type 'char *' but the argument has type 'u16' (aka 'unsigned short') [-Wformat]
           DP_SDP_LOG("    target_rr: %s\n", async->target_rr);
                                      ~~     ^~~~~~~~~~~~~~~~
                                      %hu
   drivers/gpu/drm/display/drm_dp_helper.c:2923:60: note: expanded from macro 'DP_SDP_LOG'
   #define DP_SDP_LOG(fmt, ...) dev_printk(level, dev, fmt, ##__VA_ARGS__)
                                                       ~~~    ^~~~~~~~~~~
   include/linux/dev_printk.h:129:34: note: expanded from macro 'dev_printk'
                   _dev_printk(level, dev, fmt, ##__VA_ARGS__);            \
                                           ~~~    ^~~~~~~~~~~
   1 warning generated.


vim +2927 drivers/gpu/drm/display/drm_dp_helper.c

  2919	
  2920	void drm_dp_as_sdp_log(const char *level, struct device *dev,
  2921			       const struct drm_dp_as_sdp *async)
  2922	{
  2923	#define DP_SDP_LOG(fmt, ...) dev_printk(level, dev, fmt, ##__VA_ARGS__)
  2924		DP_SDP_LOG("DP SDP: %s, revision %u, length %u\n", "VSC",
  2925			   async->revision, async->length);
  2926		DP_SDP_LOG("	vmin: %d vmax: %d\n", async->vmin, async->vmax);
> 2927		DP_SDP_LOG("    target_rr: %s\n", async->target_rr);
  2928		DP_SDP_LOG("    duration_incr_ms: %u\n", async->duration_incr_ms);
  2929		DP_SDP_LOG("    duration_decr_ms: %u\n", async->duration_decr_ms);
  2930		DP_SDP_LOG("    operation_mode: %u\n", async->operation_mode);
  2931	#undef DP_SDP_LOG
  2932	}
  2933	EXPORT_SYMBOL(drm_dp_as_sdp_log);
  2934	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
