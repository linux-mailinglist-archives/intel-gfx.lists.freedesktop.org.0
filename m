Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9A2151E992
	for <lists+intel-gfx@lfdr.de>; Sat,  7 May 2022 21:48:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24E0110F3BB;
	Sat,  7 May 2022 19:48:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CB9710F3BB
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 May 2022 19:48:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651952888; x=1683488888;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=kcyl7aofhnNJUYuE1U/xpD4d9j6wRCaMnjS6eMkgH9M=;
 b=g+690wRMNgIR2ncTkrRj8vKtWLXi419n3YknhaT19w1wXZc+MSamiAnA
 KN/0KiMfYElN9EYHVud1+fhYo1g1bcNs4LulzEPF7whLNQBfD21pRKiHo
 uTX4GQRTWdGVRMnXvzZOEmM7X7vqu3+uRUR7QvRHdYao3ROs/lSCulm/E
 KQ0msMN4J6iPiHhGVaGgv96Qjy0xWxir1fkMTxOCGrP6oGngQIU4d2Y9o
 nQz9AwnxDHg5NonAUI750Zg0DMPtJAfsplDtdrc4xcLEJxOJh9280+qS7
 oBBaelJMZTPO4GcYTxGw6iYKdjznGXqlv2ELCnziAfR8inxawf4gAsJos A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10340"; a="250763604"
X-IronPort-AV: E=Sophos;i="5.91,207,1647327600"; d="scan'208";a="250763604"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2022 12:48:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,207,1647327600"; d="scan'208";a="550363197"
Received: from lkp-server01.sh.intel.com (HELO 5056e131ad90) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 07 May 2022 12:48:06 -0700
Received: from kbuild by 5056e131ad90 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nnQPO-000EuV-2R;
 Sat, 07 May 2022 19:48:06 +0000
Date: Sun, 8 May 2022 03:47:12 +0800
From: kernel test robot <lkp@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <202205080306.RJOsIJwU-lkp@intel.com>
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
Cc: kbuild-all@lists.01.org
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
config: i386-allyesconfig (https://download.01.org/0day-ci/archive/20220508/202205080306.RJOsIJwU-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.2.0-20) 11.2.0
reproduce (this is a W=1 build):
        # https://github.com/intel-lab-lkp/linux/commit/c1a7677ed60d6907adf2824e35480433cde736ce
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Jos-Roberto-de-Souza/drm-i915-Drop-has_llc-from-device-info/20220507-213117
        git checkout c1a7677ed60d6907adf2824e35480433cde736ce
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        make W=1 O=build_dir ARCH=i386 SHELL=/bin/bash

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   drivers/gpu/drm/i915/pxp/intel_pxp.c: In function 'intel_pxp_init':
>> drivers/gpu/drm/i915/pxp/intel_pxp.c:114:32: error: expected ')' before 'return'
     114 |         if (!HAS_PXP(gt->i915))
         |            ~                   ^
         |                                )
     115 |                 return;
         |                 ~~~~~~          
>> drivers/gpu/drm/i915/pxp/intel_pxp.c:144:1: error: expected expression before '}' token
     144 | }
         | ^
>> drivers/gpu/drm/i915/pxp/intel_pxp.c:112:13: error: unused variable 'ret' [-Werror=unused-variable]
     112 |         int ret;
         |             ^~~
   At top level:
>> drivers/gpu/drm/i915/pxp/intel_pxp.c:74:12: error: 'create_vcs_context' defined but not used [-Werror=unused-function]
      74 | static int create_vcs_context(struct intel_pxp *pxp)
         |            ^~~~~~~~~~~~~~~~~~
   cc1: all warnings being treated as errors
--
   drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c:61:6: error: no previous prototype for 'intel_pxp_debugfs_register' [-Werror=missing-prototypes]
      61 | void intel_pxp_debugfs_register(struct intel_pxp *pxp, struct dentry *gt_root)
         |      ^~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c: In function 'intel_pxp_debugfs_register':
>> drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c:72:46: error: expected ')' before 'return'
      72 |         if (!HAS_PXP((pxp_to_gt(pxp)->i915)))
         |            ~                                 ^
         |                                              )
      73 |                 return;
         |                 ~~~~~~                        
>> drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c:80:1: error: expected expression before '}' token
      80 | }
         | ^
>> drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c:67:24: error: unused variable 'root' [-Werror=unused-variable]
      67 |         struct dentry *root;
         |                        ^~~~
>> drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c:63:51: error: unused variable 'files' [-Werror=unused-variable]
      63 |         static const struct intel_gt_debugfs_file files[] = {
         |                                                   ^~~~~
   At top level:
>> drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c:63:51: error: 'files' defined but not used [-Werror=unused-const-variable=]
   cc1: all warnings being treated as errors


vim +114 drivers/gpu/drm/i915/pxp/intel_pxp.c

e0111ce0f5cbd2 Daniele Ceraolo Spurio 2021-09-24   73  
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24  @74  static int create_vcs_context(struct intel_pxp *pxp)
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24   75  {
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24   76  	static struct lock_class_key pxp_lock;
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24   77  	struct intel_gt *gt = pxp_to_gt(pxp);
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24   78  	struct intel_engine_cs *engine;
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24   79  	struct intel_context *ce;
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24   80  	int i;
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24   81  
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24   82  	/*
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24   83  	 * Find the first VCS engine present. We're guaranteed there is one
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24   84  	 * if we're in this function due to the check in has_pxp
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24   85  	 */
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24   86  	for (i = 0, engine = NULL; !engine; i++)
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24   87  		engine = gt->engine_class[VIDEO_DECODE_CLASS][i];
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24   88  
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24   89  	GEM_BUG_ON(!engine || engine->class != VIDEO_DECODE_CLASS);
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24   90  
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24   91  	ce = intel_engine_create_pinned_context(engine, engine->gt->vm, SZ_4K,
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24   92  						I915_GEM_HWS_PXP_ADDR,
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24   93  						&pxp_lock, "pxp_context");
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24   94  	if (IS_ERR(ce)) {
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24   95  		drm_err(&gt->i915->drm, "failed to create VCS ctx for PXP\n");
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24   96  		return PTR_ERR(ce);
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24   97  	}
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24   98  
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24   99  	pxp->ce = ce;
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24  100  
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24  101  	return 0;
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24  102  }
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24  103  
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24  104  static void destroy_vcs_context(struct intel_pxp *pxp)
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24  105  {
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24  106  	intel_engine_destroy_pinned_context(fetch_and_zero(&pxp->ce));
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24  107  }
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24  108  
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24  109  void intel_pxp_init(struct intel_pxp *pxp)
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24  110  {
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24  111  	struct intel_gt *gt = pxp_to_gt(pxp);
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24 @112  	int ret;
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24  113  
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24 @114  	if (!HAS_PXP(gt->i915))
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24  115  		return;
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
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24 @144  }
3ad2dd9c4caa73 Daniele Ceraolo Spurio 2021-09-24  145  

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
