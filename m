Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB2AA5544AB
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jun 2022 10:37:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1529C10FB9B;
	Wed, 22 Jun 2022 08:37:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE76A10F9DE
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jun 2022 08:37:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655887027; x=1687423027;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=OXeAt6w8XqlHFbeazAwpAdEIqH1hfGf2M5DX5co03Kk=;
 b=fdkTZBOfIKKbtJHAL+OuNGPA9jKWKG/lAUIbl9w2J425vi8eWhIMZE9P
 Zv7ZrF43yRySwVdK/wq6G8Vcazt+QPeW5cjFTc3SbkfNmFcv5TQVxZImT
 ni7ohS0cdBLJR4aZ5hAU2WgIzdP14Jw85A51Dp6T9ClzavP3Op5div/ri
 UnWz/YDLO0atEFn2/dP8MGxKfOHgO9T+FjOeyNrz0vDiEPE8Ar/Aa4UQl
 pcH06lvNPLE2qcHUb38DPFiSMnxmj8KZohScBTOi2y73PRbD0AnZ36cYk
 yoHEBzt2EcwmgVZ6eFweW1XIcE/sPvpCJni813uN28hj/ngzGE396CgGE Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10385"; a="260786839"
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="260786839"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 01:36:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="690382958"
Received: from lkp-server02.sh.intel.com (HELO a67cc04a5eeb) ([10.239.97.151])
 by fmsmga002.fm.intel.com with ESMTP; 22 Jun 2022 01:36:40 -0700
Received: from kbuild by a67cc04a5eeb with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1o3vqp-00013R-MB;
 Wed, 22 Jun 2022 08:36:39 +0000
Date: Wed, 22 Jun 2022 16:35:48 +0800
From: kernel test robot <lkp@intel.com>
To: Tilak Tangudu <tilak.tangudu@intel.com>,
 intel-gfx@lists.freedesktop.org, jon.ewins@intel.com,
 rodrigo.vivi@intel.com, vinay.belgaumkar@intel.com,
 chris.p.wilson@intel.com, ashutosh.dixit@intel.com,
 badal.nilawar@intel.com, anshuman.gupta@intel.com,
 matthew.d.roper@intel.com, saurabhg.gupta@intel.com,
 Aravind.Iddamsetty@intel.com, Sujaritha.Sundaresan@intel.com
Message-ID: <202206221620.m7i1Q9uZ-lkp@intel.com>
References: <20220621123516.370479-10-tilak.tangudu@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220621123516.370479-10-tilak.tangudu@intel.com>
Subject: Re: [Intel-gfx] [PATCH 09/11] drm/i915: Add
 i915_save/load_pci_state helpers
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Tilak,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Tilak-Tangudu/drm-i915-Add-D3Cold-Off-support-for-runtime-pm/20220621-202453
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
config: x86_64-rhel-8.3-kselftests (https://download.01.org/0day-ci/archive/20220622/202206221620.m7i1Q9uZ-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.3.0-3) 11.3.0
reproduce:
        # apt-get install sparse
        # sparse version: v0.6.4-31-g4880bd19-dirty
        # https://github.com/intel-lab-lkp/linux/commit/ad0aa2eb6293edc066466ecf3b82ce2e4e0a9636
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Tilak-Tangudu/drm-i915-Add-D3Cold-Off-support-for-runtime-pm/20220621-202453
        git checkout ad0aa2eb6293edc066466ecf3b82ce2e4e0a9636
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        make W=1 C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__' O=build_dir ARCH=x86_64 SHELL=/bin/bash

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)
>> drivers/gpu/drm/i915/i915_driver.c:108:6: sparse: sparse: symbol 'i915_save_pci_state' was not declared. Should it be static?
>> drivers/gpu/drm/i915/i915_driver.c:127:6: sparse: sparse: symbol 'i915_load_pci_state' was not declared. Should it be static?

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
