Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 79EA0553ABE
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jun 2022 21:45:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56CA810EB3B;
	Tue, 21 Jun 2022 19:45:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DE3110EB6E
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jun 2022 19:45:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655840719; x=1687376719;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=vsbfVpxfgyqj2cCX1DPFNEi5ehN4eJRrw639yIQfgqk=;
 b=Ad2s9Wi6svCciI4F0OO60dBdgwoDnxKpZX3grD28SpmVIJ/pUWxuoINs
 78rAYpU94LFec79DNyLtS3PkjDB6l6fo4Qw6jS+gvC9PGwD/93QU7wnTE
 wg78LGzQkh7AlsO/0E23eQD3hww4D5VpDcpkpzHDrEYWljKQephTzB3pI
 A8XMOVCdNJ/CTNEZSQHbiq6ka0XhS85m1Rs5yR3VwFi/qOBL28x/WFP/4
 g7i522oyny+e8CWIp1bf9zPwD0ZU1F9uqEfND6yBVSC3AgODqn7aev3ZX
 xoP7wCcbC5g1e2MV/yDkysbISgSC3/h28+93B0NB5Sw7LrzBo6JEs0lHF g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10385"; a="263252982"
X-IronPort-AV: E=Sophos;i="5.92,210,1650956400"; d="scan'208";a="263252982"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2022 12:45:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,210,1650956400"; d="scan'208";a="586075571"
Received: from lkp-server02.sh.intel.com (HELO a67cc04a5eeb) ([10.239.97.151])
 by orsmga002.jf.intel.com with ESMTP; 21 Jun 2022 12:45:11 -0700
Received: from kbuild by a67cc04a5eeb with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1o3joF-0000LD-7Q;
 Tue, 21 Jun 2022 19:45:11 +0000
Date: Wed, 22 Jun 2022 03:44:22 +0800
From: kernel test robot <lkp@intel.com>
To: Tilak Tangudu <tilak.tangudu@intel.com>,
 intel-gfx@lists.freedesktop.org, jon.ewins@intel.com,
 rodrigo.vivi@intel.com, vinay.belgaumkar@intel.com,
 chris.p.wilson@intel.com, ashutosh.dixit@intel.com,
 badal.nilawar@intel.com, anshuman.gupta@intel.com,
 matthew.d.roper@intel.com, saurabhg.gupta@intel.com,
 Aravind.Iddamsetty@intel.com, Sujaritha.Sundaresan@intel.com
Message-ID: <202206220303.UvbFJUZD-lkp@intel.com>
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
Cc: llvm@lists.linux.dev, kbuild-all@lists.01.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Tilak,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Tilak-Tangudu/drm-i915-Add-D3Cold-Off-support-for-runtime-pm/20220621-202453
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
config: i386-randconfig-a004 (https://download.01.org/0day-ci/archive/20220622/202206220303.UvbFJUZD-lkp@intel.com/config)
compiler: clang version 15.0.0 (https://github.com/llvm/llvm-project af6d2a0b6825e71965f3e2701a63c239fa0ad70f)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/ad0aa2eb6293edc066466ecf3b82ce2e4e0a9636
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Tilak-Tangudu/drm-i915-Add-D3Cold-Off-support-for-runtime-pm/20220621-202453
        git checkout ad0aa2eb6293edc066466ecf3b82ce2e4e0a9636
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=i386 SHELL=/bin/bash drivers/gpu/drm/i915/

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/i915/i915_driver.c:108:6: warning: no previous prototype for function 'i915_save_pci_state' [-Wmissing-prototypes]
   bool i915_save_pci_state(struct pci_dev *pdev)
        ^
   drivers/gpu/drm/i915/i915_driver.c:108:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   bool i915_save_pci_state(struct pci_dev *pdev)
   ^
   static 
>> drivers/gpu/drm/i915/i915_driver.c:127:6: warning: no previous prototype for function 'i915_load_pci_state' [-Wmissing-prototypes]
   void i915_load_pci_state(struct pci_dev *pdev)
        ^
   drivers/gpu/drm/i915/i915_driver.c:127:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void i915_load_pci_state(struct pci_dev *pdev)
   ^
   static 
   2 warnings generated.


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
