Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBC516CF181
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 19:56:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB8A310E0F5;
	Wed, 29 Mar 2023 17:56:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6944C10E0F5
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 17:56:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680112591; x=1711648591;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=vQpAYLtcgIqzTA0D/TQsRWo20tvZ3wGiqMbjNiM73Zw=;
 b=a5Vhoh1dw1Q24W0rFprC/rx+gER9oknmBa1FZU0B173654kPVqtVXjWp
 pVcOE30jIdnMm9uRiTn8o7PI1+YW5JlO32gQ8TOpQOxpmVye+bWwLtb2o
 dL6A1OZlKHsB0ug0aihPhyeb77iEUSIxFifrU4B1KQnvM93bT/Ox+4y7+
 +s5MjHLoslCns6iLz6UhTDg09FdhTdj2zEkB03/lmiwtMUY2tvGCp8Fuu
 lDwVOY9YpFkjoHqiEaJtA/K+DM+8CSh/uJRcLICJfL+Y79E0WfURtE0at
 uMbjaxDRe+A21DcKLUI5tDKkVSiHacV3N0cK+dRwYGSL+dKi/eNUXWa/b w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="342563690"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="342563690"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 10:55:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="714691355"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="714691355"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 29 Mar 2023 10:55:04 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pha0m-000Jme-1g;
 Wed, 29 Mar 2023 17:55:04 +0000
Date: Thu, 30 Mar 2023 01:55:04 +0800
From: kernel test robot <lkp@intel.com>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <202303300140.XL9bHF8b-lkp@intel.com>
References: <20230329132130.105355-2-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230329132130.105355-2-christian.koenig@amd.com>
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/debugfs: rework debugfs directory
 creation v2
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
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Christian,

I love your patch! Yet something to improve:

[auto build test ERROR on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Christian-K-nig/drm-debugfs-rework-debugfs-directory-creation-v2/20230329-212234
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20230329132130.105355-2-christian.koenig%40amd.com
patch subject: [Intel-gfx] [PATCH 2/5] drm/debugfs: rework debugfs directory creation v2
config: hexagon-randconfig-r045-20230329 (https://download.01.org/0day-ci/archive/20230330/202303300140.XL9bHF8b-lkp@intel.com/config)
compiler: clang version 17.0.0 (https://github.com/llvm/llvm-project 67409911353323ca5edf2049ef0df54132fa1ca7)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/5da92df45b1b50f794218f0f494af20ecaf94d19
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Christian-K-nig/drm-debugfs-rework-debugfs-directory-creation-v2/20230329-212234
        git checkout 5da92df45b1b50f794218f0f494af20ecaf94d19
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=hexagon olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=hexagon SHELL=/bin/bash drivers/gpu/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202303300140.XL9bHF8b-lkp@intel.com/

All errors (new ones prefixed by >>):

   In file included from drivers/gpu/drm/drm_atomic.c:32:
   In file included from include/drm/drm_atomic.h:31:
   In file included from include/drm/drm_crtc.h:32:
   In file included from include/drm/drm_modes.h:33:
   In file included from include/drm/drm_connector.h:32:
   In file included from include/drm/drm_util.h:35:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:11:
   In file included from ./arch/hexagon/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/hexagon/include/asm/io.h:334:
   include/asm-generic/io.h:547:31: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __raw_readb(PCI_IOBASE + addr);
                             ~~~~~~~~~~ ^
   include/asm-generic/io.h:560:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le16_to_cpu((__le16 __force)__raw_readw(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/little_endian.h:37:51: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) ((__force __u16)(__le16)(x))
                                                     ^
   In file included from drivers/gpu/drm/drm_atomic.c:32:
   In file included from include/drm/drm_atomic.h:31:
   In file included from include/drm/drm_crtc.h:32:
   In file included from include/drm/drm_modes.h:33:
   In file included from include/drm/drm_connector.h:32:
   In file included from include/drm/drm_util.h:35:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:11:
   In file included from ./arch/hexagon/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/hexagon/include/asm/io.h:334:
   include/asm-generic/io.h:573:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/little_endian.h:35:51: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) ((__force __u32)(__le32)(x))
                                                     ^
   In file included from drivers/gpu/drm/drm_atomic.c:32:
   In file included from include/drm/drm_atomic.h:31:
   In file included from include/drm/drm_crtc.h:32:
   In file included from include/drm/drm_modes.h:33:
   In file included from include/drm/drm_connector.h:32:
   In file included from include/drm/drm_util.h:35:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:11:
   In file included from ./arch/hexagon/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/hexagon/include/asm/io.h:334:
   include/asm-generic/io.h:584:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writeb(value, PCI_IOBASE + addr);
                               ~~~~~~~~~~ ^
   include/asm-generic/io.h:594:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writew((u16 __force)cpu_to_le16(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:604:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writel((u32 __force)cpu_to_le32(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   In file included from drivers/gpu/drm/drm_atomic.c:47:
>> drivers/gpu/drm/drm_internal.h:195:8: error: type specifier missing, defaults to 'int'; ISO C99 and later do not support implicit int [-Wimplicit-int]
   static drm_debugfs_dev_register(struct drm_device *dev)
   ~~~~~~ ^
   int
   6 warnings and 1 error generated.
--
   In file included from drivers/gpu/drm/drm_drv.c:38:
   In file included from include/drm/drm_accel.h:11:
   In file included from include/drm/drm_file.h:39:
   In file included from include/drm/drm_prime.h:37:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/hexagon/include/asm/io.h:334:
   include/asm-generic/io.h:547:31: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __raw_readb(PCI_IOBASE + addr);
                             ~~~~~~~~~~ ^
   include/asm-generic/io.h:560:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le16_to_cpu((__le16 __force)__raw_readw(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/little_endian.h:37:51: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) ((__force __u16)(__le16)(x))
                                                     ^
   In file included from drivers/gpu/drm/drm_drv.c:38:
   In file included from include/drm/drm_accel.h:11:
   In file included from include/drm/drm_file.h:39:
   In file included from include/drm/drm_prime.h:37:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/hexagon/include/asm/io.h:334:
   include/asm-generic/io.h:573:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/little_endian.h:35:51: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) ((__force __u32)(__le32)(x))
                                                     ^
   In file included from drivers/gpu/drm/drm_drv.c:38:
   In file included from include/drm/drm_accel.h:11:
   In file included from include/drm/drm_file.h:39:
   In file included from include/drm/drm_prime.h:37:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/hexagon/include/asm/io.h:334:
   include/asm-generic/io.h:584:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writeb(value, PCI_IOBASE + addr);
                               ~~~~~~~~~~ ^
   include/asm-generic/io.h:594:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writew((u16 __force)cpu_to_le16(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:604:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writel((u32 __force)cpu_to_le32(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   In file included from drivers/gpu/drm/drm_drv.c:50:
>> drivers/gpu/drm/drm_internal.h:195:8: error: type specifier missing, defaults to 'int'; ISO C99 and later do not support implicit int [-Wimplicit-int]
   static drm_debugfs_dev_register(struct drm_device *dev)
   ~~~~~~ ^
   int
>> drivers/gpu/drm/drm_drv.c:1011:2: error: call to undeclared function 'drm_debugfs_dev_fini'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
           drm_debugfs_dev_fini(dev);
           ^
   drivers/gpu/drm/drm_drv.c:1011:2: note: did you mean 'drm_debugfs_dev_init'?
   include/drm/drm_drv.h:596:13: note: 'drm_debugfs_dev_init' declared here
   static void drm_debugfs_dev_init(struct drm_device *dev, struct dentry *root)
               ^
   6 warnings and 2 errors generated.


vim +/int +195 drivers/gpu/drm/drm_internal.h

   180	
   181	/* drm_debugfs.c drm_debugfs_crc.c */
   182	#if defined(CONFIG_DEBUG_FS)
   183	void drm_debugfs_dev_fini(struct drm_device *dev);
   184	void drm_debugfs_dev_register(struct drm_device *dev);
   185	int drm_debugfs_register(struct drm_minor *minor, int minor_id,
   186				 struct dentry *root);
   187	void drm_debugfs_cleanup(struct drm_minor *minor);
   188	void drm_debugfs_late_register(struct drm_device *dev);
   189	void drm_debugfs_connector_add(struct drm_connector *connector);
   190	void drm_debugfs_connector_remove(struct drm_connector *connector);
   191	void drm_debugfs_crtc_add(struct drm_crtc *crtc);
   192	void drm_debugfs_crtc_remove(struct drm_crtc *crtc);
   193	void drm_debugfs_crtc_crc_add(struct drm_crtc *crtc);
   194	#else
 > 195	static drm_debugfs_dev_register(struct drm_device *dev)
   196	{
   197	}
   198	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
