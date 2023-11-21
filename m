Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60EF47F3846
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Nov 2023 22:26:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39E7610E545;
	Tue, 21 Nov 2023 21:26:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D77E810E545
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Nov 2023 21:26:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700601989; x=1732137989;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=K74fmG01u+fJvTPFrdGPpv9XzLAyvnSDGmUJAEvX8ww=;
 b=e1ncNT+x50uzDQj4bbHu0I2gdQBvmcXQ6CDyzgLHS3KJ2yjmzqe9wy/U
 OyWFe/IF4PKrZdHsd3WRFGe3fX7Ux5prR+Jae8Kk75wJ2vSS0jt4CuYMQ
 Bayx5L9LV8pktQ0xIcAy00/KUiJ2sSrp6sHzCuKpxdFJdMlWMSyOgSvpn
 9ryTNJ/m2rLcZZcmwCASbd9NCsCJO0vFw6XpO9Qq7BHdVhNl/hR+HSDhI
 4/UUUF3AIflEKo4RQP+aFHY74pQ+pKWy2AEBHDF9spuXqGtodD0uBU/kJ
 t5POZqvTo4DkGMTatsOtIfMXWL75NMMjCWybGfzvtIXZ6Mtbe8JekDgIK Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="382327479"
X-IronPort-AV: E=Sophos;i="6.04,216,1695711600"; d="scan'208";a="382327479"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 13:26:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="884335128"
X-IronPort-AV: E=Sophos;i="6.04,216,1695711600"; d="scan'208";a="884335128"
Received: from lkp-server02.sh.intel.com (HELO b8de5498638e) ([10.239.97.151])
 by fmsmga002.fm.intel.com with ESMTP; 21 Nov 2023 13:26:26 -0800
Received: from kbuild by b8de5498638e with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1r5YGE-0008HB-1v;
 Tue, 21 Nov 2023 21:26:22 +0000
Date: Wed, 22 Nov 2023 05:25:46 +0800
From: kernel test robot <lkp@intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <202311220447.1Vw2SgEJ-lkp@intel.com>
References: <20231121112729.4191245-5-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231121112729.4191245-5-jouni.hogander@intel.com>
Subject: Re: [Intel-gfx] [PATCH v5 4/4] drm/i915/display: Split i915
 specific code away from intel_fb.c
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

Hi Jouni,

kernel test robot noticed the following build errors:

[auto build test ERROR on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Jouni-H-gander/drm-i915-display-use-intel_bo_to_drm_bo-in-intel_fb-c/20231121-193155
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20231121112729.4191245-5-jouni.hogander%40intel.com
patch subject: [Intel-gfx] [PATCH v5 4/4] drm/i915/display: Split i915 specific code away from intel_fb.c
config: i386-allmodconfig (https://download.01.org/0day-ci/archive/20231122/202311220447.1Vw2SgEJ-lkp@intel.com/config)
compiler: clang version 16.0.4 (https://github.com/llvm/llvm-project.git ae42196bc493ffe877a7e3dff8be32035dea4d07)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20231122/202311220447.1Vw2SgEJ-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202311220447.1Vw2SgEJ-lkp@intel.com/

All errors (new ones prefixed by >>):

>> make[7]: *** No rule to make target 'drivers/gpu/drm/i915/display/intel_fb_bo.o', needed by 'drivers/gpu/drm/i915/i915.o'.
   make[7]: *** [scripts/Makefile.build:243: drivers/gpu/drm/i915/display/intel_fb.o] Error 1
   make[7]: Target 'drivers/gpu/drm/i915/' not remade because of errors.

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
