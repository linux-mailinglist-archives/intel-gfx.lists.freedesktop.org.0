Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F60F494C46
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jan 2022 11:55:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7681B10E332;
	Thu, 20 Jan 2022 10:55:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D94F10E332
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jan 2022 10:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642676105; x=1674212105;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=7f8KQsg1a1jMta4WdJpP8jlPWb16nOjsIXrJ5vJvTVI=;
 b=Zf82HuYAmiOlp8fSHa4tPGDfPMrvMxEqBtFTjuRyPTjdxhBGgyjeUD6j
 5ZE7JIf0oGclLo2kITaFy+ZWmsglz5xm9DdQDIA/ON2U5m4eQ0/chKNIo
 AxglUVge/oSunUDrvHcC/KzfNcojm4nQYsttOSHhzG5Bdv0NlomENYTAt
 Ymja1L2vR93NaYpbo4CKx9rIf0vgKhch8PdlD1rTrg2+nKmgr7w/Ht5Hn
 QeJbbXmG2KulO8Pwhfqb0on4K8Lb6gcTbyfDSCQjdwkTQMjJMq1prXyzK
 W/y2lj8q7n5yDGQsUSFBarqrJMYEIN8ky8FJuRlhOpB0TQJPeZMhlnjpO A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10232"; a="308663656"
X-IronPort-AV: E=Sophos;i="5.88,302,1635231600"; d="scan'208";a="308663656"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2022 02:55:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,302,1635231600"; d="scan'208";a="477750992"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 20 Jan 2022 02:55:01 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nAV5n-000EDF-Fi; Thu, 20 Jan 2022 10:54:59 +0000
Date: Thu, 20 Jan 2022 18:54:10 +0800
From: kernel test robot <lkp@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
Message-ID: <202201201838.YQUqtmJI-lkp@intel.com>
References: <20220120063809.1020633-6-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220120063809.1020633-6-matthew.d.roper@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915: Move GT registers to their
 own header file
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
Cc: Jani Nikula <jani.nikula@intel.com>, llvm@lists.linux.dev,
 kbuild-all@lists.01.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Matt,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on drm-tip/drm-tip]
[cannot apply to drm-intel/for-linux-next v5.16 next-20220120]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Matt-Roper/Second-round-of-i915_reg-h-splitting/20220120-144038
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
config: x86_64-allmodconfig (https://download.01.org/0day-ci/archive/20220120/202201201838.YQUqtmJI-lkp@intel.com/config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project f7b7138a62648f4019c55e4671682af1f851f295)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/0day-ci/linux/commit/d7a6d230bd959372cab764baec5407256725e48b
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Matt-Roper/Second-round-of-i915_reg-h-splitting/20220120-144038
        git checkout d7a6d230bd959372cab764baec5407256725e48b
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash drivers/gpu/drm/i915/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/i915/pxp/intel_pxp_irq.c:51:29: error: use of undeclared identifier 'GEN11_CRYPTO_RSVD_INTR_ENABLE'
           intel_uncore_write(uncore, GEN11_CRYPTO_RSVD_INTR_ENABLE, mask);
                                      ^
>> drivers/gpu/drm/i915/pxp/intel_pxp_irq.c:52:29: error: use of undeclared identifier 'GEN11_CRYPTO_RSVD_INTR_MASK'
           intel_uncore_write(uncore, GEN11_CRYPTO_RSVD_INTR_MASK,  ~mask);
                                      ^
>> drivers/gpu/drm/i915/pxp/intel_pxp_irq.c:58:32: error: use of undeclared identifier 'GEN11_KCR'
           gen11_gt_reset_one_iir(gt, 0, GEN11_KCR);
                                         ^
   drivers/gpu/drm/i915/pxp/intel_pxp_irq.c:69:46: error: use of undeclared identifier 'GEN11_KCR'
                   WARN_ON_ONCE(gen11_gt_reset_one_iir(gt, 0, GEN11_KCR));
                                                              ^
   4 errors generated.


vim +/GEN11_CRYPTO_RSVD_INTR_ENABLE +51 drivers/gpu/drm/i915/pxp/intel_pxp_irq.c

2ae096872a2c61 Huang, Sean Z 2021-09-24  45  
2ae096872a2c61 Huang, Sean Z 2021-09-24  46  static inline void __pxp_set_interrupts(struct intel_gt *gt, u32 interrupts)
2ae096872a2c61 Huang, Sean Z 2021-09-24  47  {
2ae096872a2c61 Huang, Sean Z 2021-09-24  48  	struct intel_uncore *uncore = gt->uncore;
2ae096872a2c61 Huang, Sean Z 2021-09-24  49  	const u32 mask = interrupts << 16;
2ae096872a2c61 Huang, Sean Z 2021-09-24  50  
2ae096872a2c61 Huang, Sean Z 2021-09-24 @51  	intel_uncore_write(uncore, GEN11_CRYPTO_RSVD_INTR_ENABLE, mask);
2ae096872a2c61 Huang, Sean Z 2021-09-24 @52  	intel_uncore_write(uncore, GEN11_CRYPTO_RSVD_INTR_MASK,  ~mask);
2ae096872a2c61 Huang, Sean Z 2021-09-24  53  }
2ae096872a2c61 Huang, Sean Z 2021-09-24  54  
2ae096872a2c61 Huang, Sean Z 2021-09-24  55  static inline void pxp_irq_reset(struct intel_gt *gt)
2ae096872a2c61 Huang, Sean Z 2021-09-24  56  {
2ae096872a2c61 Huang, Sean Z 2021-09-24  57  	spin_lock_irq(&gt->irq_lock);
2ae096872a2c61 Huang, Sean Z 2021-09-24 @58  	gen11_gt_reset_one_iir(gt, 0, GEN11_KCR);
2ae096872a2c61 Huang, Sean Z 2021-09-24  59  	spin_unlock_irq(&gt->irq_lock);
2ae096872a2c61 Huang, Sean Z 2021-09-24  60  }
2ae096872a2c61 Huang, Sean Z 2021-09-24  61  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
