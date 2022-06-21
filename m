Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 963E2553ECA
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jun 2022 00:58:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2573510EE61;
	Tue, 21 Jun 2022 22:58:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7535610EE61
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jun 2022 22:58:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655852301; x=1687388301;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=wlxmW1Mk7Q8hZnG6bc0LMgrE5sN46xoXM7ZI6QG9VSA=;
 b=dF04zS+PBHV25yXnXUZpNxl+G8KqQksMvNZ8xPzlZjE5do3jY9FoVUtx
 DxVQHdP9ktA5WUCfYp8vV5IMH+XGtGpMa6jPQZ1wq1sU4YLf/JmWyqE32
 VCaw6ZC7HfZVCQKgb9GbhtPkMEuUzo8ugJePNpT+oEfPGk9JX3tz4odYq
 mxjyF5PoSgNI+QVo9sZz67NBn2hKcit/ruNAYUTdIryoO04CHePSGapEQ
 JNmeBnETqmxOaxHzHOLeYqBX1aSexIpj7JjVmi4GXHmfIcxmmBkopm1xy
 nZOMP4B60pLATWYiRGaDGVg6iUQ69DW4TW8C4yNqnaaiD2rp6WB/vkTvb w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10385"; a="263292512"
X-IronPort-AV: E=Sophos;i="5.92,210,1650956400"; d="scan'208";a="263292512"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2022 15:58:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,210,1650956400"; d="scan'208";a="655360658"
Received: from lkp-server02.sh.intel.com (HELO a67cc04a5eeb) ([10.239.97.151])
 by fmsmga004.fm.intel.com with ESMTP; 21 Jun 2022 15:58:17 -0700
Received: from kbuild by a67cc04a5eeb with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1o3mp7-0000WH-0n;
 Tue, 21 Jun 2022 22:58:17 +0000
Date: Wed, 22 Jun 2022 06:57:32 +0800
From: kernel test robot <lkp@intel.com>
To: Tilak Tangudu <tilak.tangudu@intel.com>,
 intel-gfx@lists.freedesktop.org, jon.ewins@intel.com,
 rodrigo.vivi@intel.com, vinay.belgaumkar@intel.com,
 chris.p.wilson@intel.com, ashutosh.dixit@intel.com,
 badal.nilawar@intel.com, anshuman.gupta@intel.com,
 matthew.d.roper@intel.com, saurabhg.gupta@intel.com,
 Aravind.Iddamsetty@intel.com, Sujaritha.Sundaresan@intel.com
Message-ID: <202206220601.aElPXis6-lkp@intel.com>
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

Thank you for the patch! Yet something to improve:

[auto build test ERROR on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Tilak-Tangudu/drm-i915-Add-D3Cold-Off-support-for-runtime-pm/20220621-202453
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
config: x86_64-rhel-8.3-syz (https://download.01.org/0day-ci/archive/20220622/202206220601.aElPXis6-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.3.0-3) 11.3.0
reproduce (this is a W=1 build):
        # https://github.com/intel-lab-lkp/linux/commit/ad0aa2eb6293edc066466ecf3b82ce2e4e0a9636
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Tilak-Tangudu/drm-i915-Add-D3Cold-Off-support-for-runtime-pm/20220621-202453
        git checkout ad0aa2eb6293edc066466ecf3b82ce2e4e0a9636
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        make W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash drivers/gpu/drm/i915/

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/i915/i915_driver.c:108:6: error: no previous prototype for 'i915_save_pci_state' [-Werror=missing-prototypes]
     108 | bool i915_save_pci_state(struct pci_dev *pdev)
         |      ^~~~~~~~~~~~~~~~~~~
>> drivers/gpu/drm/i915/i915_driver.c:127:6: error: no previous prototype for 'i915_load_pci_state' [-Werror=missing-prototypes]
     127 | void i915_load_pci_state(struct pci_dev *pdev)
         |      ^~~~~~~~~~~~~~~~~~~
   cc1: all warnings being treated as errors


vim +/i915_save_pci_state +108 drivers/gpu/drm/i915/i915_driver.c

   107	
 > 108	bool i915_save_pci_state(struct pci_dev *pdev)
   109	{
   110		struct drm_i915_private *i915 = pci_get_drvdata(pdev);
   111	
   112		if (pci_save_state(pdev))
   113			return false;
   114	
   115		kfree(i915->pci_state);
   116	
   117		i915->pci_state = pci_store_saved_state(pdev);
   118	
   119		if (!i915->pci_state) {
   120			drm_err(&i915->drm, "Failed to store PCI saved state\n");
   121			return false;
   122		}
   123	
   124		return true;
   125	}
   126	
 > 127	void i915_load_pci_state(struct pci_dev *pdev)
   128	{
   129		struct drm_i915_private *i915 = pci_get_drvdata(pdev);
   130		int ret;
   131	
   132		if (!i915->pci_state)
   133			return;
   134	
   135		ret = pci_load_saved_state(pdev, i915->pci_state);
   136		if (!ret) {
   137			pci_restore_state(pdev);
   138		} else {
   139			drm_warn(&i915->drm, "Failed to load PCI state, err:%d\n", ret);
   140		}
   141	}
   142	static int i915_get_bridge_dev(struct drm_i915_private *dev_priv)
   143	{
   144		int domain = pci_domain_nr(to_pci_dev(dev_priv->drm.dev)->bus);
   145	
   146		dev_priv->bridge_dev =
   147			pci_get_domain_bus_and_slot(domain, 0, PCI_DEVFN(0, 0));
   148		if (!dev_priv->bridge_dev) {
   149			drm_err(&dev_priv->drm, "bridge device not found\n");
   150			return -EIO;
   151		}
   152		return 0;
   153	}
   154	

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
