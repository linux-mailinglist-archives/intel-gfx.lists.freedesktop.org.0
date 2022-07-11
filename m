Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFF8756D293
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Jul 2022 03:32:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE99C8B8F6;
	Mon, 11 Jul 2022 01:32:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C58AD8B8F5
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Jul 2022 01:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657503128; x=1689039128;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=mgKlsWxvwjFA7zrMM4ufdMakaQR3hnX83PllnTJWxL4=;
 b=hxEAt4bgbkcTMHsmJJEVTwEIqKf3PMCWu1En7ZUsdeV0FMiD8vams070
 2ylqrRY9nHV8nkvWirURXtfbKpYVjwMVMWYIwNeD2TWg6Uq7AtVNzyhzW
 3NGTQR6UYtEiPhIZzJF32RWNl4DWjczdYOz/jjBV6ohrlBhT+qKr2TN6+
 xtSkqhiSUnXfwoMnOWy+eBJ4CJy2izpWDbkr7W8BBR2fqV5GRGqLmHJnW
 PyulHX9zobLElVdBTxmcSnji5FEEdiL9lNQcu/ONaOpKvVjvktCx65ZDa
 o82jZDoWcOZc65eGWVgK94omHOHx+5XzVlktWJiv7Hdxqtr/sP3Zt+nZG Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10404"; a="285298863"
X-IronPort-AV: E=Sophos;i="5.92,261,1650956400"; d="scan'208";a="285298863"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2022 18:32:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,261,1650956400"; d="scan'208";a="569583870"
Received: from lkp-server02.sh.intel.com (HELO 8708c84be1ad) ([10.239.97.151])
 by orsmga006.jf.intel.com with ESMTP; 10 Jul 2022 18:32:05 -0700
Received: from kbuild by 8708c84be1ad with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1oAiHM-00004V-J7;
 Mon, 11 Jul 2022 01:32:04 +0000
Date: Mon, 11 Jul 2022 09:31:42 +0800
From: kernel test robot <lkp@intel.com>
To: priyanka.dandamudi@intel.com, matthew.auld@intel.com,
 nirmoy.das@intel.com, intel-gfx@lists.freedesktop.org
Message-ID: <202207110435.SWciztlI-lkp@intel.com>
References: <20220710172925.2465158-3-priyanka.dandamudi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220710172925.2465158-3-priyanka.dandamudi@intel.com>
Subject: Re: [Intel-gfx] [PATCH v4 2/2] drm/i915: Add lmem_bar_size modparam
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

url:    https://github.com/intel-lab-lkp/linux/commits/priyanka-dandamudi-intel-com/Add-support-for-LMEM-PCIe-resizable-bar/20220711-014151
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
config: i386-randconfig-a004 (https://download.01.org/0day-ci/archive/20220711/202207110435.SWciztlI-lkp@intel.com/config)
compiler: clang version 15.0.0 (https://github.com/llvm/llvm-project 6ce63e267aab79ca87bf63453d34dd3909ab978d)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/d47a4cf71ae8f491be93278f21adfec16dc00d5c
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review priyanka-dandamudi-intel-com/Add-support-for-LMEM-PCIe-resizable-bar/20220711-014151
        git checkout d47a4cf71ae8f491be93278f21adfec16dc00d5c
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=i386 SHELL=/bin/bash drivers/gpu/drm/i915/

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/i915/gt/intel_region_lmem.c:76:45: warning: format specifies type 'unsigned long long' but the argument has type 'resource_size_t' (aka 'unsigned int') [-Wformat]
                                                        "setting it to default: %llu\n", lmem_size);
                                                                                ~~~~     ^~~~~~~~~
                                                                                %u
   include/drm/drm_print.h:429:36: note: expanded from macro 'drm_info'
           __drm_printk((drm), info,, fmt, ##__VA_ARGS__)
                                      ~~~    ^~~~~~~~~~~
   include/drm/drm_print.h:425:48: note: expanded from macro '__drm_printk'
           dev_##level##type((drm)->dev, "[drm] " fmt, ##__VA_ARGS__)
                                                  ~~~    ^~~~~~~~~~~
   include/linux/dev_printk.h:150:67: note: expanded from macro 'dev_info'
           dev_printk_index_wrap(_dev_info, KERN_INFO, dev, dev_fmt(fmt), ##__VA_ARGS__)
                                                                    ~~~     ^~~~~~~~~~~
   include/linux/dev_printk.h:110:23: note: expanded from macro 'dev_printk_index_wrap'
                   _p_func(dev, fmt, ##__VA_ARGS__);                       \
                                ~~~    ^~~~~~~~~~~
   drivers/gpu/drm/i915/gt/intel_region_lmem.c:93:44: warning: result of comparison of constant 4294967296 with expression of type 'resource_size_t' (aka 'unsigned int') is always false [-Wtautological-constant-out-of-range-compare]
                                           IORESOURCE_MEM_64) && root_res->start > 0x100000000ull)
                                                                 ~~~~~~~~~~~~~~~ ^ ~~~~~~~~~~~~~~
   2 warnings generated.


vim +76 drivers/gpu/drm/i915/gt/intel_region_lmem.c

    46	
    47	#define LMEM_BAR_NUM 2
    48	static void i915_resize_lmem_bar(struct drm_i915_private *i915, resource_size_t lmem_size)
    49	{
    50		struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
    51		struct pci_bus *root = pdev->bus;
    52		struct resource *root_res;
    53		resource_size_t rebar_size;
    54		resource_size_t current_size;
    55		u32 pci_cmd;
    56		int i;
    57	
    58		current_size = roundup_pow_of_two(pci_resource_len(pdev, LMEM_BAR_NUM));
    59	
    60		if (i915->params.lmem_bar_size) {
    61			u32 bar_sizes;
    62	
    63			rebar_size = i915->params.lmem_bar_size *
    64				(resource_size_t)SZ_1M;
    65			bar_sizes = pci_rebar_get_possible_sizes(pdev,
    66								 LMEM_BAR_NUM);
    67	
    68			if (rebar_size == current_size)
    69				return;
    70	
    71			if (!(bar_sizes & BIT(pci_rebar_bytes_to_size(rebar_size))) ||
    72			    rebar_size >= roundup_pow_of_two(lmem_size)) {
    73					rebar_size = lmem_size;
    74	
    75					drm_info(&i915->drm, "Given bar size is not within supported size,"
  > 76							     "setting it to default: %llu\n", lmem_size);
    77			}
    78		} else {
    79			rebar_size = current_size;
    80	
    81			if (rebar_size != roundup_pow_of_two(lmem_size))
    82				rebar_size = lmem_size;
    83			else
    84				return;
    85		}
    86	
    87		/* Find out if root bus contains 64bit memory addressing */
    88		while (root->parent)
    89			root = root->parent;
    90	
    91		pci_bus_for_each_resource(root, root_res, i) {
    92			if (root_res && root_res->flags & (IORESOURCE_MEM |
    93						IORESOURCE_MEM_64) && root_res->start > 0x100000000ull)
    94				break;
    95		}
    96	
    97		/* pci_resize_resource will fail anyways */
    98		if (!root_res) {
    99			drm_info(&i915->drm, "Can't resize LMEM BAR - platform support is missing\n");
   100			return;
   101		}
   102	
   103		/* First disable PCI memory decoding references */
   104		pci_read_config_dword(pdev, PCI_COMMAND, &pci_cmd);
   105		pci_write_config_dword(pdev, PCI_COMMAND,
   106				       pci_cmd & ~PCI_COMMAND_MEMORY);
   107	
   108		_resize_bar(i915, LMEM_BAR_NUM, rebar_size);
   109	
   110		pci_assign_unassigned_bus_resources(pdev->bus);
   111		pci_write_config_dword(pdev, PCI_COMMAND, pci_cmd);
   112	}
   113	

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
