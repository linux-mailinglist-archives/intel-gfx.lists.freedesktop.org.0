Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39E0776E4F1
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Aug 2023 11:51:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A9BB10E0F5;
	Thu,  3 Aug 2023 09:51:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAD1A10E0F5
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Aug 2023 09:51:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691056280; x=1722592280;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=MjZu2ge3BZwKYKRgaKZFPbWCAbjyXuE1adRIadZ6Fv0=;
 b=HVIh9lT1VE2hmDg2tSfVW/Xk8rX91rG9zxC92/7lGhSn4rJ1/owjxtTC
 ooQKy69SGwZXhuHsRaOh3Ystqu+R0AH78Aag0YEAVJnBYeHT5yi/AXbzK
 B9bEfbNWzmrcLJ5pCbPNyjE35FqsyiwRUynLmODmSK4pfDfYAkjVC1I3w
 dzUX5tEC5IF5QLofnXb8aWceVhfCc7R2LQ5FQk8e/LXIyPp8hcu8mn6Pn
 TmskL/yVYtWZ3e3axUMVoXb+9gwP91u4tN2BG24DxUqEr03o6pD2Qe+v6
 D5NQEynyMGpah1dvm1j8HwMjFjo64up30n7D42F8UvubNhhoddfAwBLdw A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10790"; a="359868335"
X-IronPort-AV: E=Sophos;i="6.01,251,1684825200"; d="scan'208";a="359868335"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2023 02:51:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10790"; a="843529706"
X-IronPort-AV: E=Sophos;i="6.01,251,1684825200"; d="scan'208";a="843529706"
Received: from lkp-server01.sh.intel.com (HELO d1ccc7e87e8f) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 03 Aug 2023 02:51:18 -0700
Received: from kbuild by d1ccc7e87e8f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qRUzF-00020Z-1f;
 Thu, 03 Aug 2023 09:51:17 +0000
Date: Thu, 3 Aug 2023 17:50:41 +0800
From: kernel test robot <lkp@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>,
	intel-gfx@lists.freedesktop.org
Message-ID: <202308031732.2cbChFMh-lkp@intel.com>
References: <20230803070346.3776690-4-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230803070346.3776690-4-suraj.kandpal@intel.com>
Subject: Re: [Intel-gfx] [PATCH v5 3/8] drm/i915/vdsc: Add func to get no.
 of vdsc instances per pipe
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

Hi Suraj,

kernel test robot noticed the following build warnings:

[auto build test WARNING on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Suraj-Kandpal/drm-i915-vdsc-Refactor-dsc-register-field-macro/20230803-151602
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20230803070346.3776690-4-suraj.kandpal%40intel.com
patch subject: [Intel-gfx] [PATCH v5 3/8] drm/i915/vdsc: Add func to get no. of vdsc instances per pipe
config: x86_64-buildonly-randconfig-r003-20230731 (https://download.01.org/0day-ci/archive/20230803/202308031732.2cbChFMh-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce: (https://download.01.org/0day-ci/archive/20230803/202308031732.2cbChFMh-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202308031732.2cbChFMh-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/i915/display/intel_vdsc.c:353:5: warning: no previous prototype for 'intel_dsc_get_no_vdsc_inst_per_pipe' [-Wmissing-prototypes]
     353 | int intel_dsc_get_no_vdsc_inst_per_pipe(const struct intel_crtc_state *crtc_state)
         |     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


vim +/intel_dsc_get_no_vdsc_inst_per_pipe +353 drivers/gpu/drm/i915/display/intel_vdsc.c

   352	
 > 353	int intel_dsc_get_no_vdsc_inst_per_pipe(const struct intel_crtc_state *crtc_state)
   354	{
   355		return crtc_state->dsc.dsc_split ? 2 : 1;
   356	}
   357	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
