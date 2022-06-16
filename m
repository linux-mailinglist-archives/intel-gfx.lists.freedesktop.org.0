Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E75154E633
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jun 2022 17:41:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9578A10EA2E;
	Thu, 16 Jun 2022 15:41:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8771310E9F9
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jun 2022 15:41:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655394067; x=1686930067;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=177HsodJhwWD0Qkb0iFftpOM/MgSWjE1YFwWaL3Rc4Q=;
 b=WnFnGNlkF/1DTey2xGdht5+Hz50j35ESP6JVpFcI2NWRsbuTF8T/1zgh
 Uk2rdrhWgoDHp8o9c6fcSOdJJJigwOq6TjytMmft/Bra4uIN7EMgzwBP2
 nC+sXC3BCGYofr+Im0GERWBSkQl3c1iVcCzVURIA/U9XlLS8GKuW71wSE
 kMnUVNbm22nDB5vyOMqW/10DrUdqa/oQLI/trWLrfCRU7D5H0KPNZIXQy
 JdY6tVyKmX/h6BP+99Xedtkv3Jmy33GxIAcsk5zwcPd8ev/RcdqX4HPXw
 5l6K1jPVimQtrFve8/LpKU0rcAsbkcQOaMKvu73cofWqhVwmKYvo6NT7W Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="278071932"
X-IronPort-AV: E=Sophos;i="5.92,305,1650956400"; d="scan'208";a="278071932"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 08:41:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,305,1650956400"; d="scan'208";a="536490997"
Received: from lkp-server01.sh.intel.com (HELO 60dabacc1df6) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 16 Jun 2022 08:41:04 -0700
Received: from kbuild by 60dabacc1df6 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1o1rcG-000OVR-95;
 Thu, 16 Jun 2022 15:41:04 +0000
Date: Thu, 16 Jun 2022 23:40:44 +0800
From: kernel test robot <lkp@intel.com>
To: priyanka.dandamudi@intel.com, matthew.auld@intel.com,
 intel-gfx@lists.freedesktop.org
Message-ID: <202206162313.aYMhL5Br-lkp@intel.com>
References: <20220616120509.1190329-2-priyanka.dandamudi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220616120509.1190329-2-priyanka.dandamudi@intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t 1/2] drm/i915: Add support for LMEM
 PCIe resizable bar
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

Hi,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/priyanka-dandamudi-intel-com/Add-support-for-LMEM-PCIe-resizable-bar/20220616-201631
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
config: i386-randconfig-a013 (https://download.01.org/0day-ci/archive/20220616/202206162313.aYMhL5Br-lkp@intel.com/config)
compiler: clang version 15.0.0 (https://github.com/llvm/llvm-project f0e608de27b3d568000046eebf3712ab542979d6)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/0242b37c1e2e73134035a0847c34367331f16cca
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review priyanka-dandamudi-intel-com/Add-support-for-LMEM-PCIe-resizable-bar/20220616-201631
        git checkout 0242b37c1e2e73134035a0847c34367331f16cca
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=i386 SHELL=/bin/bash drivers/gpu/drm/i915/

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/i915/i915_driver.c:374:44: warning: result of comparison of constant 4294967296 with expression of type 'resource_size_t' (aka 'unsigned int') is always false [-Wtautological-constant-out-of-range-compare]
                                           IORESOURCE_MEM_64) && root_res->start > 0x100000000ull)
                                                                 ~~~~~~~~~~~~~~~ ^ ~~~~~~~~~~~~~~
   1 warning generated.


vim +374 drivers/gpu/drm/i915/i915_driver.c

   354	
   355	#define LMEM_BAR_NUM 2
   356	static void i915_resize_lmem_bar(struct drm_i915_private *i915)
   357	{
   358		struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
   359		struct pci_bus *root = pdev->bus;
   360		struct resource *root_res;
   361		resource_size_t rebar_size = __lmem_rebar_size(i915, LMEM_BAR_NUM);
   362		u32 pci_cmd;
   363		int i;
   364	
   365		if (!rebar_size)
   366			return;
   367	
   368		/* Find out if root bus contains 64bit memory addressing */
   369		while (root->parent)
   370			root = root->parent;
   371	
   372		pci_bus_for_each_resource(root, root_res, i) {
   373			if (root_res && root_res->flags & (IORESOURCE_MEM |
 > 374						IORESOURCE_MEM_64) && root_res->start > 0x100000000ull)
   375				break;
   376		}
   377	
   378		/* pci_resize_resource will fail anyways */
   379		if (!root_res) {
   380			drm_info(&i915->drm, "Can't resize LMEM BAR - platform support is missing\n");
   381			return;
   382		}
   383	
   384		/* First disable PCI memory decoding references */
   385		pci_read_config_dword(pdev, PCI_COMMAND, &pci_cmd);
   386		pci_write_config_dword(pdev, PCI_COMMAND,
   387				       pci_cmd & ~PCI_COMMAND_MEMORY);
   388	
   389		__resize_bar(i915, LMEM_BAR_NUM, rebar_size);
   390	
   391		pci_assign_unassigned_bus_resources(pdev->bus);
   392		pci_write_config_dword(pdev, PCI_COMMAND, pci_cmd);
   393	}
   394	

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
