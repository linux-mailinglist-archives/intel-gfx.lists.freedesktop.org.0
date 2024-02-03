Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A771C847DFB
	for <lists+intel-gfx@lfdr.de>; Sat,  3 Feb 2024 01:48:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 990EB10EBB2;
	Sat,  3 Feb 2024 00:48:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fTx04Ist";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 426 seconds by postgrey-1.36 at gabe;
 Sat, 03 Feb 2024 00:48:28 UTC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F310310EBB2;
 Sat,  3 Feb 2024 00:48:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706921309; x=1738457309;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=u0wK1YtCvm0CoYsAq2vguxiPdhzRtNy1KdWTPbz5ReI=;
 b=fTx04IstUGt+Fj4Ti02GqHG90HGiR9DMQDdA404NQLlEgiLLxC+R/M/0
 hqhlhf77equARVqzcfBCjDOhDxRnJO2Usz3KtGMXtUVYaMJ97xFzKtpzp
 qcCeRKUIugSbq8OmZS0ai1NQtm+6AxKPYbEi2b36crm+AW98AOA0TVkZC
 5ztKhhPznF9nCCYp8fF0Dz1ykyvnMiRqfDu+8RiGDglYOUFVneV1C4Eai
 i4+x1D1RjRNtvx37agWuHyAW5Ihd6fBEtIlPVFwmQTPKcVxiwM8aDjVrX
 vatyljpC+FgRRRzXQ9XaVB1NGfdXHa5LhxOHG48lTTNHFtdotgRp63vNj Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="186584"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; 
   d="scan'208";a="186584"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 16:41:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; 
   d="scan'208";a="208785"
Received: from lkp-server02.sh.intel.com (HELO 59f4f4cd5935) ([10.239.97.151])
 by fmviesa009.fm.intel.com with ESMTP; 02 Feb 2024 16:41:19 -0800
Received: from kbuild by 59f4f4cd5935 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rW45s-0004TF-23;
 Sat, 03 Feb 2024 00:41:16 +0000
Date: Sat, 3 Feb 2024 08:41:10 +0800
From: kernel test robot <lkp@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
 daniele.ceraolospurio@intel.com, chaitanya.kumar.borah@intel.com,
 ankit.k.nautiyal@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH 2/3] drm/xe/hdcp: Enable HDCP for XE
Message-ID: <202402030852.sSijMp2S-lkp@intel.com>
References: <20240202083737.1088306-3-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240202083737.1088306-3-suraj.kandpal@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Suraj,

kernel test robot noticed the following build warnings:

[auto build test WARNING on drm-intel/for-linux-next]
[also build test WARNING on drm-intel/for-linux-next-fixes drm-xe/drm-xe-next drm-tip/drm-tip linus/master v6.8-rc2 next-20240202]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Suraj-Kandpal/drm-i915-hdcp-Move-intel_hdcp_gsc_message-def-away-from-header-file/20240202-164840
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
patch link:    https://lore.kernel.org/r/20240202083737.1088306-3-suraj.kandpal%40intel.com
patch subject: [PATCH 2/3] drm/xe/hdcp: Enable HDCP for XE
config: s390-allmodconfig (https://download.01.org/0day-ci/archive/20240203/202402030852.sSijMp2S-lkp@intel.com/config)
compiler: clang version 19.0.0git (https://github.com/llvm/llvm-project 7dd790db8b77c4a833c06632e903dc4f13877a64)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240203/202402030852.sSijMp2S-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202402030852.sSijMp2S-lkp@intel.com/

All warnings (new ones prefixed by >>):

   In file included from drivers/gpu/drm/xe/display/xe_hdcp_gsc.c:7:
   In file included from drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h:15:
   In file included from drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object.h:11:
   In file included from drivers/gpu/drm/xe/xe_bo.h:11:
   In file included from drivers/gpu/drm/xe/xe_bo_types.h:9:
   In file included from include/linux/iosys-map.h:10:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:78:
   include/asm-generic/io.h:547:31: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     547 |         val = __raw_readb(PCI_IOBASE + addr);
         |                           ~~~~~~~~~~ ^
   include/asm-generic/io.h:560:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     560 |         val = __le16_to_cpu((__le16 __force)__raw_readw(PCI_IOBASE + addr));
         |                                                         ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:37:59: note: expanded from macro '__le16_to_cpu'
      37 | #define __le16_to_cpu(x) __swab16((__force __u16)(__le16)(x))
         |                                                           ^
   include/uapi/linux/swab.h:102:54: note: expanded from macro '__swab16'
     102 | #define __swab16(x) (__u16)__builtin_bswap16((__u16)(x))
         |                                                      ^
   In file included from drivers/gpu/drm/xe/display/xe_hdcp_gsc.c:7:
   In file included from drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h:15:
   In file included from drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object.h:11:
   In file included from drivers/gpu/drm/xe/xe_bo.h:11:
   In file included from drivers/gpu/drm/xe/xe_bo_types.h:9:
   In file included from include/linux/iosys-map.h:10:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:78:
   include/asm-generic/io.h:573:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     573 |         val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
         |                                                         ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:35:59: note: expanded from macro '__le32_to_cpu'
      35 | #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
         |                                                           ^
   include/uapi/linux/swab.h:115:54: note: expanded from macro '__swab32'
     115 | #define __swab32(x) (__u32)__builtin_bswap32((__u32)(x))
         |                                                      ^
   In file included from drivers/gpu/drm/xe/display/xe_hdcp_gsc.c:7:
   In file included from drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h:15:
   In file included from drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object.h:11:
   In file included from drivers/gpu/drm/xe/xe_bo.h:11:
   In file included from drivers/gpu/drm/xe/xe_bo_types.h:9:
   In file included from include/linux/iosys-map.h:10:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:78:
   include/asm-generic/io.h:584:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     584 |         __raw_writeb(value, PCI_IOBASE + addr);
         |                             ~~~~~~~~~~ ^
   include/asm-generic/io.h:594:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     594 |         __raw_writew((u16 __force)cpu_to_le16(value), PCI_IOBASE + addr);
         |                                                       ~~~~~~~~~~ ^
   include/asm-generic/io.h:604:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     604 |         __raw_writel((u32 __force)cpu_to_le32(value), PCI_IOBASE + addr);
         |                                                       ~~~~~~~~~~ ^
   include/asm-generic/io.h:692:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     692 |         readsb(PCI_IOBASE + addr, buffer, count);
         |                ~~~~~~~~~~ ^
   include/asm-generic/io.h:700:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     700 |         readsw(PCI_IOBASE + addr, buffer, count);
         |                ~~~~~~~~~~ ^
   include/asm-generic/io.h:708:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     708 |         readsl(PCI_IOBASE + addr, buffer, count);
         |                ~~~~~~~~~~ ^
   include/asm-generic/io.h:717:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     717 |         writesb(PCI_IOBASE + addr, buffer, count);
         |                 ~~~~~~~~~~ ^
   include/asm-generic/io.h:726:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     726 |         writesw(PCI_IOBASE + addr, buffer, count);
         |                 ~~~~~~~~~~ ^
   include/asm-generic/io.h:735:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     735 |         writesl(PCI_IOBASE + addr, buffer, count);
         |                 ~~~~~~~~~~ ^
>> drivers/gpu/drm/xe/display/xe_hdcp_gsc.c:53:9: warning: variable 'err' is uninitialized when used here [-Wuninitialized]
      53 |                 ret = err;
         |                       ^~~
   drivers/gpu/drm/xe/display/xe_hdcp_gsc.c:41:9: note: initialize the variable 'err' to silence this warning
      41 |         int err, ret = 0;
         |                ^
         |                 = 0
   drivers/gpu/drm/xe/display/xe_hdcp_gsc.c:105:23: error: invalid application of 'sizeof' to an incomplete type 'struct i915_hdcp_arbiter'
     105 |         data = kzalloc(sizeof(*data), GFP_KERNEL);
         |                              ^~~~~~~
   drivers/gpu/drm/i915/display/intel_display_core.h:37:8: note: forward declaration of 'struct i915_hdcp_arbiter'
      37 | struct i915_hdcp_arbiter;
         |        ^
   drivers/gpu/drm/xe/display/xe_hdcp_gsc.c:111:28: error: incomplete definition of type 'struct i915_hdcp_arbiter'
     111 |         i915->display.hdcp.arbiter->hdcp_dev = i915->drm.dev;
         |         ~~~~~~~~~~~~~~~~~~~~~~~~~~^
   drivers/gpu/drm/i915/display/intel_display_core.h:37:8: note: forward declaration of 'struct i915_hdcp_arbiter'
      37 | struct i915_hdcp_arbiter;
         |        ^
   drivers/gpu/drm/xe/display/xe_hdcp_gsc.c:112:28: error: incomplete definition of type 'struct i915_hdcp_arbiter'
     112 |         i915->display.hdcp.arbiter->ops = &gsc_hdcp_ops;
         |         ~~~~~~~~~~~~~~~~~~~~~~~~~~^
   drivers/gpu/drm/i915/display/intel_display_core.h:37:8: note: forward declaration of 'struct i915_hdcp_arbiter'
      37 | struct i915_hdcp_arbiter;
         |        ^
   drivers/gpu/drm/xe/display/xe_hdcp_gsc.c:112:37: error: use of undeclared identifier 'gsc_hdcp_ops'
     112 |         i915->display.hdcp.arbiter->ops = &gsc_hdcp_ops;
         |                                            ^
   drivers/gpu/drm/xe/display/xe_hdcp_gsc.c:153:10: error: invalid application of 'sizeof' to an incomplete type 'struct hdcp_cmd_header'
     153 |                                      sizeof(struct hdcp_cmd_header), NULL);
         |                                      ^     ~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/xe/display/xe_hdcp_gsc.c:153:24: note: forward declaration of 'struct hdcp_cmd_header'
     153 |                                      sizeof(struct hdcp_cmd_header), NULL);
         |                                                    ^
   13 warnings and 5 errors generated.


vim +/err +53 drivers/gpu/drm/xe/display/xe_hdcp_gsc.c

    34	
    35	/*This function helps allocate memory for the command that we will send to gsc cs */
    36	static int intel_hdcp_gsc_initialize_message(struct drm_i915_private *i915,
    37						     struct intel_hdcp_gsc_message *hdcp_message)
    38	{
    39		struct xe_bo *bo = NULL;
    40		u64 cmd_in, cmd_out;
    41		int err, ret = 0;
    42	
    43		/* allocate object of two page for HDCP command memory and store it */
    44	
    45		xe_device_mem_access_get(i915);
    46		bo = xe_bo_create_pin_map(i915, xe_device_get_root_tile(i915), NULL, PAGE_SIZE * 2,
    47					  ttm_bo_type_kernel,
    48					  XE_BO_CREATE_SYSTEM_BIT |
    49					  XE_BO_CREATE_GGTT_BIT);
    50	
    51		if (IS_ERR(bo)) {
    52			drm_err(&i915->drm, "Failed to allocate bo for HDCP streaming command!\n");
  > 53			ret = err;
    54			goto out;
    55		}
    56	
    57		cmd_in = xe_bo_ggtt_addr(bo);
    58	
    59		if (iosys_map_is_null(&bo->vmap)) {
    60			drm_err(&i915->drm, "Failed to map gsc message page!\n");
    61			ret = PTR_ERR(&bo->vmap);
    62			goto out;
    63		}
    64	
    65		cmd_out = cmd_in + PAGE_SIZE;
    66	
    67		xe_map_memset(i915, &bo->vmap, 0, 0, bo->size);
    68	
    69		hdcp_message->hdcp_bo = bo;
    70		hdcp_message->hdcp_cmd_in = cmd_in;
    71		hdcp_message->hdcp_cmd_out = cmd_out;
    72	out:
    73		xe_device_mem_access_put(i915);
    74		return ret;
    75	}
    76	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
