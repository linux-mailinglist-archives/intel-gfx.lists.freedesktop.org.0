Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 728E24C0FAF
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 10:57:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6749610F57C;
	Wed, 23 Feb 2022 09:57:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47B3E10F57C;
 Wed, 23 Feb 2022 09:57:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645610248; x=1677146248;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ySGR57CmOsKB6AVzFVivegNAc39VykK3r5nheJx+iT4=;
 b=JweuSoJC9L2ulC7VSv8RENIPU1db2i5HFJtqnP+NV9zE5jjjZuwU9nZZ
 tNk3DXdClrqcEjg+ZzGFGsk6CJsuki1hRl3ScrAZyTc5z4f76ZC4Wn8D7
 vARw3jVGRR7InqL5g5MjL52kz6mSTJ4hl/kBaxOKpPZZFU2JX8W6l1odv
 kBPjqFIlw0U0w8duvjFEd4GLBpdolEUTFPv05ekIlPO7b0O6A7aTTfJ7g
 XlL3razZMSq/DDjTO05PX6mmnlFaeQKQvIj6v1MKSEhX0GoS1hrj4z6R2
 jsNTPinO21D6YN6GukZG+gLDctQkljGlj9SeRf3phzUtCMVGMeCUYbpcl A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="312643383"
X-IronPort-AV: E=Sophos;i="5.88,390,1635231600"; d="scan'208";a="312643383"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 01:57:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,390,1635231600"; d="scan'208";a="508371569"
Received: from lkp-server01.sh.intel.com (HELO 788b1cd46f0d) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 23 Feb 2022 01:57:25 -0800
Received: from kbuild by 788b1cd46f0d with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nMoOi-0001G0-Py; Wed, 23 Feb 2022 09:57:24 +0000
Date: Wed, 23 Feb 2022 17:56:50 +0800
From: kernel test robot <lkp@intel.com>
To: Michael Cheng <michael.cheng@intel.com>,
	intel-gfx@lists.freedesktop.org
Message-ID: <202202231707.Syvm9oFu-lkp@intel.com>
References: <20220223055900.415627-2-michael.cheng@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220223055900.415627-2-michael.cheng@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v11 1/6] drm: Add arch arm64 for
 drm_clflush_virt_range
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
Cc: kbuild-all@lists.01.org, lucas.demarchi@intel.com,
 dri-devel@lists.freedesktop.org, michael.cheng@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Michael,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on drm-tip/drm-tip]
[also build test WARNING on drm/drm-next]
[cannot apply to drm-intel/for-linux-next v5.17-rc5 next-20220222]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Michael-Cheng/Use-drm_clflush-instead-of-clflush/20220223-140110
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
config: h8300-randconfig-r014-20220221 (https://download.01.org/0day-ci/archive/20220223/202202231707.Syvm9oFu-lkp@intel.com/config)
compiler: h8300-linux-gcc (GCC) 11.2.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/0day-ci/linux/commit/f4c92ba1f52db578a26ac9944e2cbe52c548e8e9
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Michael-Cheng/Use-drm_clflush-instead-of-clflush/20220223-140110
        git checkout f4c92ba1f52db578a26ac9944e2cbe52c548e8e9
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross O=build_dir ARCH=h8300 SHELL=/bin/bash drivers/gpu/drm/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from drivers/gpu/drm/drm_cache.c:31:
>> include/linux/cacheflush.h:12:46: warning: 'struct folio' declared inside parameter list will not be visible outside of this definition or declaration
      12 | static inline void flush_dcache_folio(struct folio *folio)
         |                                              ^~~~~


vim +12 include/linux/cacheflush.h

522a0032af00550 Matthew Wilcox (Oracle  2021-11-06   6) 
522a0032af00550 Matthew Wilcox (Oracle  2021-11-06   7) #if ARCH_IMPLEMENTS_FLUSH_DCACHE_PAGE
522a0032af00550 Matthew Wilcox (Oracle  2021-11-06   8) #ifndef ARCH_IMPLEMENTS_FLUSH_DCACHE_FOLIO
522a0032af00550 Matthew Wilcox (Oracle  2021-11-06   9) void flush_dcache_folio(struct folio *folio);
522a0032af00550 Matthew Wilcox (Oracle  2021-11-06  10) #endif
522a0032af00550 Matthew Wilcox (Oracle  2021-11-06  11) #else
522a0032af00550 Matthew Wilcox (Oracle  2021-11-06 @12) static inline void flush_dcache_folio(struct folio *folio)
522a0032af00550 Matthew Wilcox (Oracle  2021-11-06  13) {
522a0032af00550 Matthew Wilcox (Oracle  2021-11-06  14) }
522a0032af00550 Matthew Wilcox (Oracle  2021-11-06  15) #define ARCH_IMPLEMENTS_FLUSH_DCACHE_FOLIO 0
522a0032af00550 Matthew Wilcox (Oracle  2021-11-06  16) #endif /* ARCH_IMPLEMENTS_FLUSH_DCACHE_PAGE */
522a0032af00550 Matthew Wilcox (Oracle  2021-11-06  17) 

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
