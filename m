Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 44E964C5EF5
	for <lists+intel-gfx@lfdr.de>; Sun, 27 Feb 2022 22:02:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA0B710E151;
	Sun, 27 Feb 2022 21:02:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC8CD10E151
 for <intel-gfx@lists.freedesktop.org>; Sun, 27 Feb 2022 21:02:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645995765; x=1677531765;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=TC3hrfBaPgn3768JYUkw3Oti9A+UCEbo7qy6oJUuQKI=;
 b=VAnEP4O96NiaKGtAgnk8BuvUZ2KpYTdLgWB9PIfiKt+BrTY6Z+mCBZQF
 yoqb+9k/7ZZiHluWoIcrETkRsCC1hZezd0XoTDbeOSRLyRfOGYt3oiIvO
 6pOGlF2SKqLmpx6ByFLzlOSRanyExAOpE+3kjvUywhbwX997lvi17MCNq
 QrefGtb6rQDZhF2zSvYMfdTDsJWFx8iKGmBH1a/NZED8ixfXOYAy1+no2
 5RdV23qkCXeSzikOYz8KqwjL8J0GQDNWjaZdVaXtMt1sCMXN328HVf0g6
 CSzXpxLhXbqEQjK4l1hrpJyFATBHTBCsdvjAzsIb/WT5P1KRljUrRusuW g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10271"; a="315976574"
X-IronPort-AV: E=Sophos;i="5.90,141,1643702400"; d="scan'208";a="315976574"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2022 13:02:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,141,1643702400"; d="scan'208";a="593008972"
Received: from lkp-server01.sh.intel.com (HELO 788b1cd46f0d) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 27 Feb 2022 13:02:43 -0800
Received: from kbuild by 788b1cd46f0d with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nOQgk-0006o6-Ld; Sun, 27 Feb 2022 21:02:42 +0000
Date: Mon, 28 Feb 2022 05:02:05 +0800
From: kernel test robot <lkp@intel.com>
To: Alan Previn <alan.previn.teres.alexis@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <202202280456.Z5q4zizH-lkp@intel.com>
References: <20220226095541.1010534-2-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220226095541.1010534-2-alan.previn.teres.alexis@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v7 01/13] drm/i915/guc: Update GuC ADS size
 for error capture lists
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
Cc: llvm@lists.linux.dev, kbuild-all@lists.01.org,
 Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Alan,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on drm-tip/drm-tip]
[cannot apply to drm-intel/for-linux-next drm-exynos/exynos-drm-next drm/drm-next tegra-drm/drm/tegra/for-next airlied/drm-next v5.17-rc5 next-20220225]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Alan-Previn/Add-GuC-Error-Capture-Support/20220226-175600
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
config: i386-allyesconfig (https://download.01.org/0day-ci/archive/20220228/202202280456.Z5q4zizH-lkp@intel.com/config)
compiler: clang version 15.0.0 (https://github.com/llvm/llvm-project d271fc04d5b97b12e6b797c6067d3c96a8d7470e)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/0day-ci/linux/commit/9ea292ae1b189632494171f6dae9cbf7e4e5f30c
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Alan-Previn/Add-GuC-Error-Capture-Support/20220226-175600
        git checkout 9ea292ae1b189632494171f6dae9cbf7e4e5f30c
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=i386 SHELL=/bin/bash

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:223:1: error: no previous prototype for function 'intel_guc_capture_getlistsize' [-Werror,-Wmissing-prototypes]
   intel_guc_capture_getlistsize(struct intel_guc *guc, u32 owner, u32 type, u32 classid,
   ^
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:222:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int
   ^
   static 
>> drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:253:1: error: no previous prototype for function 'intel_guc_capture_getlist' [-Werror,-Wmissing-prototypes]
   intel_guc_capture_getlist(struct intel_guc *guc, u32 owner, u32 type, u32 classid,
   ^
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:252:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int
   ^
   static 
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:332:6: error: no previous prototype for function 'intel_guc_capture_destroy' [-Werror,-Wmissing-prototypes]
   void intel_guc_capture_destroy(struct intel_guc *guc)
        ^
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:332:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void intel_guc_capture_destroy(struct intel_guc *guc)
   ^
   static 
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:343:5: error: no previous prototype for function 'intel_guc_capture_init' [-Werror,-Wmissing-prototypes]
   int intel_guc_capture_init(struct intel_guc *guc)
       ^
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:343:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int intel_guc_capture_init(struct intel_guc *guc)
   ^
   static 
   4 errors generated.


vim +/intel_guc_capture_getlistsize +223 drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c

   221	
   222	int
 > 223	intel_guc_capture_getlistsize(struct intel_guc *guc, u32 owner, u32 type, u32 classid,
   224				      size_t *size)
   225	{
   226		struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
   227		struct __guc_state_capture_priv *gc = guc->capture.priv;
   228		struct __guc_capture_ads_cache *cache = &gc->ads_cache[owner][type][classid];
   229		int num_regs;
   230	
   231		if (!gc->reglists)
   232			return -ENODEV;
   233	
   234		if (cache->is_valid) {
   235			*size = cache->size;
   236			return cache->status;
   237		}
   238	
   239		num_regs = guc_cap_list_num_regs(gc, owner, type, classid);
   240		if (!num_regs) {
   241			guc_capture_warn_with_list_info(i915, "Missing register list size",
   242							owner, type, classid);
   243			return -ENODATA;
   244		}
   245	
   246		*size = PAGE_ALIGN((sizeof(struct guc_debug_capture_list)) +
   247				   (num_regs * sizeof(struct guc_mmio_reg)));
   248	
   249		return 0;
   250	}
   251	
   252	int
 > 253	intel_guc_capture_getlist(struct intel_guc *guc, u32 owner, u32 type, u32 classid,
   254				  struct file **fileoutptr)
   255	{
   256		struct __guc_state_capture_priv *gc = guc->capture.priv;
   257		struct __guc_capture_ads_cache *cache = &gc->ads_cache[owner][type][classid];
   258		struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
   259		struct guc_debug_capture_list *listnode;
   260		struct file *file;
   261		u8 *caplist, *tmp;
   262		size_t size = 0;
   263		int ret, num_regs;
   264	
   265		if (!gc->reglists)
   266			return -ENODEV;
   267	
   268		if (cache->is_valid) {
   269			*fileoutptr = cache->file;
   270			return cache->status;
   271		}
   272	
   273		ret = intel_guc_capture_getlistsize(guc, owner, type, classid, &size);
   274		if (ret) {
   275			cache->is_valid = true;
   276			cache->file = NULL;
   277			cache->size = 0;
   278			cache->status = ret;
   279			return ret;
   280		}
   281	
   282		caplist = kzalloc(size, GFP_KERNEL);
   283		if (!caplist)
   284			return -ENOMEM;
   285	
   286		/* populate capture list header */
   287		tmp = caplist;
   288		num_regs = guc_cap_list_num_regs(guc->capture.priv, owner, type, classid);
   289		listnode = (struct guc_debug_capture_list *)tmp;
   290		listnode->header.info = FIELD_PREP(GUC_CAPTURELISTHDR_NUMDESCR, (u32)num_regs);
   291	
   292		/* populate list of register descriptor */
   293		tmp += sizeof(struct guc_debug_capture_list);
   294		guc_capture_list_init(guc, owner, type, classid, (struct guc_mmio_reg *)tmp, num_regs);
   295	
   296		/* ADS only takes file handles, so we keep that as our cache */
   297		file = shmem_create_from_data("guc-err-cap", caplist, size);
   298		kfree(caplist);
   299		if (IS_ERR(file)) {
   300			drm_warn(&i915->drm, "GuC-capture: cant create shmem for caplist = 0x%016lx", PTR_ERR(file));
   301			return PTR_ERR(file);
   302		}
   303	
   304		/* cache this list */
   305		cache->file = file;
   306		cache->size = size;
   307		cache->status = 0;
   308		cache->is_valid = true;
   309	
   310		*fileoutptr = file;
   311	
   312		return 0;
   313	}
   314	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
