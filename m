Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 873354E370A
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 03:58:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBF3C10E4FB;
	Tue, 22 Mar 2022 02:58:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5399410E4FB
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Mar 2022 02:58:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647917925; x=1679453925;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=XUEQ1xAG/MsMZVaZZDJwO02z+0ZncYEg6ekbiyzNUW0=;
 b=bTI827Gyhy8dGPDDUuyuSGmCt9OUfj94ehBNaKo7vIajfi6UyBSpEL4s
 On/bEWbBuauts61cqLz/uV8nactnfxWsuFjWAMr9Sawhr0u/IJGxCqwrT
 NTkrGOH4+84x0i0x2o1Z21peZT1xxHocUSeGU5VHTXjoAEAzo35YFknCz
 bXMhkwZvqlDG0V5m8foeg5fDPeSMnWbDIpg6sJS7NwtqnOZ9CKgjqPjCB
 ELMYos6XdlqBedzIK/uQ6fMzNLgCxoEOzKaA7DowyPl2NQBH/Y5ESeBcc
 +2sIVzNaYtxnPv7u9TGe4EtKzjqcwJyEf+m4syRLZmKiAhzpHu6VJ4B5n g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10293"; a="245181140"
X-IronPort-AV: E=Sophos;i="5.90,200,1643702400"; d="scan'208";a="245181140"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2022 19:58:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,200,1643702400"; d="scan'208";a="515169955"
Received: from lkp-server02.sh.intel.com (HELO 89b41b6ae01c) ([10.239.97.151])
 by orsmga002.jf.intel.com with ESMTP; 21 Mar 2022 19:58:43 -0700
Received: from kbuild by 89b41b6ae01c with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nWUjK-000IPL-Qm; Tue, 22 Mar 2022 02:58:42 +0000
Date: Tue, 22 Mar 2022 10:58:05 +0800
From: kernel test robot <lkp@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Message-ID: <202203221023.tCblMieg-lkp@intel.com>
References: <2600c34a1a295456ed87fa64953a4530b0c001d2.1647870374.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2600c34a1a295456ed87fa64953a4530b0c001d2.1647870374.git.jani.nikula@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 5/7] drm/i915/dmc: abstract GPU error
 state dump
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>,
 kbuild-all@lists.01.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jani,

I love your patch! Yet something to improve:

[auto build test ERROR on drm-tip/drm-tip]
[cannot apply to drm-intel/for-linux-next v5.17 next-20220321]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Jani-Nikula/drm-i915-dmc-cleanups/20220321-215213
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
config: i386-randconfig-s002 (https://download.01.org/0day-ci/archive/20220322/202203221023.tCblMieg-lkp@intel.com/config)
compiler: gcc-9 (Ubuntu 9.4.0-1ubuntu1~20.04) 9.4.0
reproduce:
        # apt-get install sparse
        # sparse version: v0.6.4-dirty
        # https://github.com/0day-ci/linux/commit/1e23e4b2519941d741e3489536b37823cece69d8
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Jani-Nikula/drm-i915-dmc-cleanups/20220321-215213
        git checkout 1e23e4b2519941d741e3489536b37823cece69d8
        # save the config file to linux build tree
        mkdir build_dir
        make W=1 C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__' O=build_dir ARCH=i386 SHELL=/bin/bash

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   drivers/gpu/drm/i915/display/intel_dmc.c: In function 'intel_dmc_print_error_state':
>> drivers/gpu/drm/i915/display/intel_dmc.c:822:2: error: implicit declaration of function 'i915_error_printf' [-Werror=implicit-function-declaration]
     822 |  i915_error_printf(m, "DMC loaded: %s\n",
         |  ^~~~~~~~~~~~~~~~~
   cc1: all warnings being treated as errors


vim +/i915_error_printf +822 drivers/gpu/drm/i915/display/intel_dmc.c

   813	
   814	void intel_dmc_print_error_state(struct drm_i915_error_state_buf *m,
   815					 struct drm_i915_private *i915)
   816	{
   817		struct intel_dmc *dmc = &i915->dmc;
   818	
   819		if (!HAS_DMC(i915))
   820			return;
   821	
 > 822		i915_error_printf(m, "DMC loaded: %s\n",
   823				  str_yes_no(intel_dmc_has_payload(i915)));
   824		i915_error_printf(m, "DMC fw version: %d.%d\n",
   825				  DMC_VERSION_MAJOR(dmc->version),
   826				  DMC_VERSION_MINOR(dmc->version));
   827	}
   828	

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
