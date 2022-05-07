Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71E3951E912
	for <lists+intel-gfx@lfdr.de>; Sat,  7 May 2022 20:06:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5A0510E6F2;
	Sat,  7 May 2022 18:06:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F67D10E6F2
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 May 2022 18:06:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651946766; x=1683482766;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=gfummZkNA0oquaF09Uf4O+Z3aazmns9yxEzQ0blgZAk=;
 b=TJcf9VWAoT0hp+2BSMu3KUXn85x+RN1o3OLBqWCYalu3IwkHyxIv5/Xe
 JB7nDko9zdzy5NMthDnmdgf3WHLA62m5d5TLvkB4OjKcxnILDWbD9N9M6
 /QqgRr2jcNwLWhoWIOaIgWV+i/QE8r85smyNATi6dpSWrRWukeCEtR+dk
 fbh5HNxrCShhZS0JvNiC6M5rvL3z3SLXgt6CLi+Oe2NRY3lnK5/z3ZMlA
 6fZ4/zi9pZU5Fl0ABo8GD44G+VQ8x3p2G/9FHqFe6fhb63dSwp4WbXHhC
 mxyzFtKfbhQ0IXOzb3tcwMkaLXtPAyL4joW8n2F9EujKDkCr/JqPGjKF+ g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10340"; a="268879401"
X-IronPort-AV: E=Sophos;i="5.91,207,1647327600"; d="scan'208";a="268879401"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2022 11:06:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,207,1647327600"; d="scan'208";a="518541225"
Received: from lkp-server01.sh.intel.com (HELO 5056e131ad90) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 07 May 2022 11:06:03 -0700
Received: from kbuild by 5056e131ad90 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nnOod-000EqF-2C;
 Sat, 07 May 2022 18:06:03 +0000
Date: Sun, 8 May 2022 02:05:35 +0800
From: kernel test robot <lkp@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <202205080138.2kBqKQTb-lkp@intel.com>
References: <20220507132850.10272-11-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220507132850.10272-11-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH 11/16] drm/i915: Drop has_pxp from device
 info
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
Cc: llvm@lists.linux.dev, kbuild-all@lists.01.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi "José,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on drm-tip/drm-tip]
[cannot apply to drm-intel/for-linux-next linus/master v5.18-rc5 next-20220506]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/intel-lab-lkp/linux/commits/Jos-Roberto-de-Souza/drm-i915-Drop-has_llc-from-device-info/20220507-213117
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
config: i386-randconfig-a011 (https://download.01.org/0day-ci/archive/20220508/202205080138.2kBqKQTb-lkp@intel.com/config)
compiler: clang version 15.0.0 (https://github.com/llvm/llvm-project af4cf1c6b8ed0d8102fc5e69acdc2fcbbcdaa9a7)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/c1a7677ed60d6907adf2824e35480433cde736ce
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Jos-Roberto-de-Souza/drm-i915-Drop-has_llc-from-device-info/20220507-213117
        git checkout c1a7677ed60d6907adf2824e35480433cde736ce
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=i386 SHELL=/bin/bash drivers/gpu/drm/i915/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/i915/pxp/intel_pxp.c:115:3: error: expected ')'
                   return;
                   ^
   drivers/gpu/drm/i915/pxp/intel_pxp.c:114:2: note: to match this '('
           if (!HAS_PXP(gt->i915))
           ^
   include/linux/compiler.h:56:26: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                            ^
   1 error generated.
--
>> drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c:73:3: error: expected ')'
                   return;
                   ^
   drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c:72:2: note: to match this '('
           if (!HAS_PXP((pxp_to_gt(pxp)->i915)))
           ^
   include/linux/compiler.h:56:26: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                            ^
   drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c:61:6: warning: no previous prototype for function 'intel_pxp_debugfs_register' [-Wmissing-prototypes]
   void intel_pxp_debugfs_register(struct intel_pxp *pxp, struct dentry *gt_root)
        ^
   drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c:61:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void intel_pxp_debugfs_register(struct intel_pxp *pxp, struct dentry *gt_root)
   ^
   static 
   1 warning and 1 error generated.


vim +115 drivers/gpu/drm/i915/pxp/intel_pxp.c

3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24  108  
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24  109  void intel_pxp_init(struct intel_pxp *pxp)
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24  110  {
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24  111  	struct intel_gt *gt = pxp_to_gt(pxp);
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24  112  	int ret;
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24  113  
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24  114  	if (!HAS_PXP(gt->i915))
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24 @115  		return;
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24  116  
cbbd3764b2399a Huang, Sean Z          2021-09-24  117  	mutex_init(&pxp->tee_mutex);
cbbd3764b2399a Huang, Sean Z          2021-09-24  118  
2ae096872a2c61 Huang, Sean Z          2021-09-24  119  	/*
2ae096872a2c61 Huang, Sean Z          2021-09-24  120  	 * we'll use the completion to check if there is a termination pending,
2ae096872a2c61 Huang, Sean Z          2021-09-24  121  	 * so we start it as completed and we reinit it when a termination
2ae096872a2c61 Huang, Sean Z          2021-09-24  122  	 * is triggered.
2ae096872a2c61 Huang, Sean Z          2021-09-24  123  	 */
2ae096872a2c61 Huang, Sean Z          2021-09-24  124  	init_completion(&pxp->termination);
2ae096872a2c61 Huang, Sean Z          2021-09-24  125  	complete_all(&pxp->termination);
2ae096872a2c61 Huang, Sean Z          2021-09-24  126  
32271ecd6596e6 Daniele Ceraolo Spurio 2021-09-24  127  	mutex_init(&pxp->arb_mutex);
2ae096872a2c61 Huang, Sean Z          2021-09-24  128  	INIT_WORK(&pxp->session_work, intel_pxp_session_work);
2ae096872a2c61 Huang, Sean Z          2021-09-24  129  
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24  130  	ret = create_vcs_context(pxp);
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24  131  	if (ret)
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24  132  		return;
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24  133  
0436ac1b008d48 Huang, Sean Z          2021-09-24  134  	ret = intel_pxp_tee_component_init(pxp);
0436ac1b008d48 Huang, Sean Z          2021-09-24  135  	if (ret)
0436ac1b008d48 Huang, Sean Z          2021-09-24  136  		goto out_context;
0436ac1b008d48 Huang, Sean Z          2021-09-24  137  
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24  138  	drm_info(&gt->i915->drm, "Protected Xe Path (PXP) protected content support initialized\n");
0436ac1b008d48 Huang, Sean Z          2021-09-24  139  
0436ac1b008d48 Huang, Sean Z          2021-09-24  140  	return;
0436ac1b008d48 Huang, Sean Z          2021-09-24  141  
0436ac1b008d48 Huang, Sean Z          2021-09-24  142  out_context:
0436ac1b008d48 Huang, Sean Z          2021-09-24  143  	destroy_vcs_context(pxp);
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24  144  }
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24  145  

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
