Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B37B56D128
	for <lists+intel-gfx@lfdr.de>; Sun, 10 Jul 2022 21:51:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57FE818B176;
	Sun, 10 Jul 2022 19:51:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03CB718B174
 for <intel-gfx@lists.freedesktop.org>; Sun, 10 Jul 2022 19:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657482688; x=1689018688;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=JT82txfABd2+w9YuBxFDbldHkxcs/m9vx4Tqb/9oSco=;
 b=b+jCC5FMifUx6znvm6j+OPrFve17SXtvWhShwYrKD6tXgFeN1cWHqE6G
 2kg1fYh+3d+2v3OTAotjMQ5jDrOR86dB4Aq7+J+FcnpmSvvWLPsISb0DP
 lpmF8gd6m3NBN30FLMpwv6TlItphREilmel+1vGXo9VlY5ZS3bmAmBNfW
 1O8+8lGAJxqT51tlqO6eWmcEd9z8XrMPO2uWa8e/mZ9E/GYlEt/iC2C2+
 Llw6EUTWSqbTY6X6imF/CY1RBe+HJ85U6fXK2FJwAIBKVo4s3b2hubjzS
 Rk8kJ6OpGVNCS9PxJpMIcI+ksPhvhdlb5FCxPFPxfQEmNuOENZDH9LB3A w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10404"; a="348518022"
X-IronPort-AV: E=Sophos;i="5.92,261,1650956400"; d="scan'208";a="348518022"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2022 12:51:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,261,1650956400"; d="scan'208";a="771319382"
Received: from lkp-server01.sh.intel.com (HELO 68b931ab7ac1) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 10 Jul 2022 12:51:25 -0700
Received: from kbuild by 68b931ab7ac1 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1oAcxh-000Q9q-25;
 Sun, 10 Jul 2022 19:51:25 +0000
Date: Mon, 11 Jul 2022 03:51:05 +0800
From: kernel test robot <lkp@intel.com>
To: priyanka.dandamudi@intel.com, matthew.auld@intel.com,
 nirmoy.das@intel.com, intel-gfx@lists.freedesktop.org
Message-ID: <202207110340.zwofgDuU-lkp@intel.com>
References: <20220710172925.2465158-2-priyanka.dandamudi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220710172925.2465158-2-priyanka.dandamudi@intel.com>
Subject: Re: [Intel-gfx] [PATCH v4 1/2] drm/i915: Add support for LMEM PCIe
 resizable bar
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
config: i386-randconfig-a013 (https://download.01.org/0day-ci/archive/20220711/202207110340.zwofgDuU-lkp@intel.com/config)
compiler: clang version 15.0.0 (https://github.com/llvm/llvm-project 6ce63e267aab79ca87bf63453d34dd3909ab978d)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/fb47ead5e629b3aaaa718d85fb2fb960e77ebe61
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review priyanka-dandamudi-intel-com/Add-support-for-LMEM-PCIe-resizable-bar/20220711-014151
        git checkout fb47ead5e629b3aaaa718d85fb2fb960e77ebe61
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=i386 SHELL=/bin/bash drivers/gpu/drm/i915/

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/i915/gt/intel_region_lmem.c:70:44: warning: result of comparison of constant 4294967296 with expression of type 'resource_size_t' (aka 'unsigned int') is always false [-Wtautological-constant-out-of-range-compare]
                                           IORESOURCE_MEM_64) && root_res->start > 0x100000000ull)
                                                                 ~~~~~~~~~~~~~~~ ^ ~~~~~~~~~~~~~~
   1 warning generated.


vim +70 drivers/gpu/drm/i915/gt/intel_region_lmem.c

    46	
    47	#define LMEM_BAR_NUM 2
    48	static void i915_resize_lmem_bar(struct drm_i915_private *i915, resource_size_t lmem_size)
    49	{
    50		struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
    51		struct pci_bus *root = pdev->bus;
    52		struct resource *root_res;
    53		resource_size_t rebar_size;
    54		u32 pci_cmd;
    55		int i;
    56	
    57		rebar_size = roundup_pow_of_two(pci_resource_len(pdev, LMEM_BAR_NUM));
    58	
    59		if (rebar_size != roundup_pow_of_two(lmem_size))
    60			rebar_size = lmem_size;
    61		else
    62			return;
    63	
    64		/* Find out if root bus contains 64bit memory addressing */
    65		while (root->parent)
    66			root = root->parent;
    67	
    68		pci_bus_for_each_resource(root, root_res, i) {
    69			if (root_res && root_res->flags & (IORESOURCE_MEM |
  > 70						IORESOURCE_MEM_64) && root_res->start > 0x100000000ull)
    71				break;
    72		}
    73	
    74		/* pci_resize_resource will fail anyways */
    75		if (!root_res) {
    76			drm_info(&i915->drm, "Can't resize LMEM BAR - platform support is missing\n");
    77			return;
    78		}
    79	
    80		/* First disable PCI memory decoding references */
    81		pci_read_config_dword(pdev, PCI_COMMAND, &pci_cmd);
    82		pci_write_config_dword(pdev, PCI_COMMAND,
    83				       pci_cmd & ~PCI_COMMAND_MEMORY);
    84	
    85		_resize_bar(i915, LMEM_BAR_NUM, rebar_size);
    86	
    87		pci_assign_unassigned_bus_resources(pdev->bus);
    88		pci_write_config_dword(pdev, PCI_COMMAND, pci_cmd);
    89	}
    90	

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
