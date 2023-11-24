Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D5A207F6BDB
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Nov 2023 06:58:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1B6710E33A;
	Fri, 24 Nov 2023 05:58:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D22610E335
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Nov 2023 05:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700805502; x=1732341502;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=642D0/TUXn9Jf/dxehxWt9jFsLsmk8Qt9a6/nPWrcug=;
 b=IZnyQ8XqL632hL8rmMZNoKbRQWt9reUtXPMK5OVlRzvmPKhB32kv2U1Q
 sjn0OVIhoWRna4jalRImiwvRdEgnB5yDUSyHP/e3JFTlQjlS/c9jXrWD9
 EqTeQDOUFeinrHxihHWA71DMWSAraDrEGnjygBSw0UQBljftxv/LbHmPr
 c+hORsmnaiErtjp+eVJcNQ4nbSHZLFI8R5ahswm/kl84vay7erVRF8+bR
 spw3XcoOKqZqHa6UHJPKxWVNyIyLEUh4pQgGC/zyUGS1/4sXBtHS8w8Yd
 656ADK8DDPKYbs4/bxeRzoy09mbycR3yhDY3ZEahvilUPmfL9i3uFqsEi A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="458860290"
X-IronPort-AV: E=Sophos;i="6.04,223,1695711600"; d="scan'208";a="458860290"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2023 21:58:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="837983127"
X-IronPort-AV: E=Sophos;i="6.04,223,1695711600"; d="scan'208";a="837983127"
Received: from lkp-server01.sh.intel.com (HELO d584ee6ebdcc) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 23 Nov 2023 21:58:20 -0800
Received: from kbuild by d584ee6ebdcc with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1r6PCk-00026q-14;
 Fri, 24 Nov 2023 05:58:18 +0000
Date: Fri, 24 Nov 2023 13:58:08 +0800
From: kernel test robot <lkp@intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <202311241136.tl5STYqx-lkp@intel.com>
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
Cc: oe-kbuild-all@lists.linux.dev
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Mitul,

kernel test robot noticed the following build warnings:

[auto build test WARNING on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Mitul-Golani/drm-Add-Adaptive-Sync-SDP-logging/20231123-220931
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20231123140244.4183869-2-mitulkumar.ajitkumar.golani%40intel.com
patch subject: [Intel-gfx] [PATCH 1/3] drm: Add Adaptive Sync SDP logging
config: x86_64-defconfig (https://download.01.org/0day-ci/archive/20231124/202311241136.tl5STYqx-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.3.0-12) 11.3.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20231124/202311241136.tl5STYqx-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202311241136.tl5STYqx-lkp@intel.com/

All warnings (new ones prefixed by >>):

   In file included from include/linux/device.h:15,
                    from include/linux/backlight.h:12,
                    from drivers/gpu/drm/display/drm_dp_helper.c:23:
   drivers/gpu/drm/display/drm_dp_helper.c: In function 'drm_dp_as_sdp_log':
>> drivers/gpu/drm/display/drm_dp_helper.c:2927:20: warning: format '%s' expects argument of type 'char *', but argument 4 has type 'int' [-Wformat=]
    2927 |         DP_SDP_LOG("    target_rr: %s\n", async->target_rr);
         |                    ^~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~~~~~~~~
         |                                                |
         |                                                int
   include/linux/dev_printk.h:129:41: note: in definition of macro 'dev_printk'
     129 |                 _dev_printk(level, dev, fmt, ##__VA_ARGS__);            \
         |                                         ^~~
   drivers/gpu/drm/display/drm_dp_helper.c:2927:9: note: in expansion of macro 'DP_SDP_LOG'
    2927 |         DP_SDP_LOG("    target_rr: %s\n", async->target_rr);
         |         ^~~~~~~~~~
   drivers/gpu/drm/display/drm_dp_helper.c:2927:37: note: format string is defined here
    2927 |         DP_SDP_LOG("    target_rr: %s\n", async->target_rr);
         |                                    ~^
         |                                     |
         |                                     char *
         |                                    %d


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
