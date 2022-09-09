Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DCC0E5B3CE0
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Sep 2022 18:22:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B24F510EC8D;
	Fri,  9 Sep 2022 16:22:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91CAA10EC8B
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Sep 2022 16:22:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662740565; x=1694276565;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=FBg0KbmCiGtL22FzoU8nLq2uuK8/gHmNWNkdzZs+UJU=;
 b=LUFi7l+VXGFHyui4afeRdsz9bXN4TTkS5OOPY4N6dqX8OsqT4az2X/FI
 M5+u1QVF02s8MfoQC1QqdCr1JMozpJ/2hcG6aioULdS8EJ3s/Vo2Ogr2X
 TIWLG542t8nYoY07gK2SiH5WZ0Np/bC0xGbJXgeh2MQZ0w9Cl4zzhyg0B
 5T2ZHEjk2M0WMi+jyojNulw/Hwr6FQ8hDSsNe5iaVo5PHttQ0gCHwKtaN
 /mDQxm1fmAIyOj4qO8RW2oCuGOrcObStUUXZOG4M/CGwGX/1flviMb1wE
 3iP7zkTJK2x8VapKqMB/wCDPYD6BfgwN3hem4L4QQLxENlJCEiHNNUCha Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10465"; a="277246515"
X-IronPort-AV: E=Sophos;i="5.93,303,1654585200"; d="scan'208";a="277246515"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2022 09:22:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,303,1654585200"; d="scan'208";a="741104232"
Received: from lkp-server02.sh.intel.com (HELO b2938d2e5c5a) ([10.239.97.151])
 by orsmga004.jf.intel.com with ESMTP; 09 Sep 2022 09:22:42 -0700
Received: from kbuild by b2938d2e5c5a with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oWgmA-0001Qn-0B;
 Fri, 09 Sep 2022 16:22:42 +0000
Date: Sat, 10 Sep 2022 00:22:37 +0800
From: kernel test robot <lkp@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>, intel-gfx@lists.freedesktop.org
Message-ID: <202209100051.4Wp6eLZf-lkp@intel.com>
References: <20220909112419.26901-3-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220909112419.26901-3-anshuman.gupta@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 2/2] drm/i915/dgfx: Release mmap on rpm
 suspend
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
Cc: rodrigo.vivi@intel.com, llvm@lists.linux.dev, kbuild-all@lists.01.org,
 Matthew Auld <matthew.auld@intel.com>, chris@chris-wilson.co.uk
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Anshuman,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Anshuman-Gupta/DGFX-mmap-with-rpm/20220909-192609
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
config: i386-randconfig-a013 (https://download.01.org/0day-ci/archive/20220910/202209100051.4Wp6eLZf-lkp@intel.com/config)
compiler: clang version 14.0.6 (https://github.com/llvm/llvm-project f28c006a5895fc0e329fe15fead81e37457cb1d1)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/b3f193a1659a69de9e9025c9b02a039d0a58390d
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Anshuman-Gupta/DGFX-mmap-with-rpm/20220909-192609
        git checkout b3f193a1659a69de9e9025c9b02a039d0a58390d
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=i386 SHELL=/bin/bash drivers/gpu/drm/i915/

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/i915/gem/i915_gem_ttm.c:1065:14: warning: use of logical '&&' with constant operand [-Wconstant-logical-operand]
           if (wakeref && CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND)
                       ^  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/gem/i915_gem_ttm.c:1065:14: note: use '&' for a bitwise operation
           if (wakeref && CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND)
                       ^~
                       &
   drivers/gpu/drm/i915/gem/i915_gem_ttm.c:1065:14: note: remove constant to silence this warning
           if (wakeref && CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND)
                      ~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   1 warning generated.


vim +1065 drivers/gpu/drm/i915/gem/i915_gem_ttm.c

   985	
   986	static vm_fault_t vm_fault_ttm(struct vm_fault *vmf)
   987	{
   988		struct vm_area_struct *area = vmf->vma;
   989		struct ttm_buffer_object *bo = area->vm_private_data;
   990		struct drm_device *dev = bo->base.dev;
   991		struct drm_i915_gem_object *obj;
   992		intel_wakeref_t wakeref = 0;
   993		vm_fault_t ret;
   994		int idx;
   995	
   996		obj = i915_ttm_to_gem(bo);
   997		if (!obj)
   998			return VM_FAULT_SIGBUS;
   999	
  1000		/* Sanity check that we allow writing into this object */
  1001		if (unlikely(i915_gem_object_is_readonly(obj) &&
  1002			     area->vm_flags & VM_WRITE)) {
  1003			ret = VM_FAULT_SIGBUS;
  1004			goto out_rpm;
  1005		}
  1006	
  1007		ret = ttm_bo_vm_reserve(bo, vmf);
  1008		if (ret)
  1009			goto out_rpm;
  1010	
  1011		if (i915_ttm_cpu_maps_iomem(bo->resource))
  1012			wakeref = intel_runtime_pm_get(&to_i915(obj->base.dev)->runtime_pm);
  1013	
  1014		if (obj->mm.madv != I915_MADV_WILLNEED) {
  1015			dma_resv_unlock(bo->base.resv);
  1016			ret = VM_FAULT_SIGBUS;
  1017			goto out_rpm;
  1018		}
  1019	
  1020		if (!i915_ttm_resource_mappable(bo->resource)) {
  1021			int err = -ENODEV;
  1022			int i;
  1023	
  1024			for (i = 0; i < obj->mm.n_placements; i++) {
  1025				struct intel_memory_region *mr = obj->mm.placements[i];
  1026				unsigned int flags;
  1027	
  1028				if (!mr->io_size && mr->type != INTEL_MEMORY_SYSTEM)
  1029					continue;
  1030	
  1031				flags = obj->flags;
  1032				flags &= ~I915_BO_ALLOC_GPU_ONLY;
  1033				err = __i915_ttm_migrate(obj, mr, flags);
  1034				if (!err)
  1035					break;
  1036			}
  1037	
  1038			if (err) {
  1039				drm_dbg(dev, "Unable to make resource CPU accessible\n");
  1040				dma_resv_unlock(bo->base.resv);
  1041				ret = VM_FAULT_SIGBUS;
  1042				goto out_rpm;
  1043			}
  1044		}
  1045	
  1046		if (drm_dev_enter(dev, &idx)) {
  1047			ret = ttm_bo_vm_fault_reserved(vmf, vmf->vma->vm_page_prot,
  1048						       TTM_BO_VM_NUM_PREFAULT);
  1049			drm_dev_exit(idx);
  1050		} else {
  1051			ret = ttm_bo_vm_dummy_page(vmf, vmf->vma->vm_page_prot);
  1052		}
  1053	
  1054		if (ret == VM_FAULT_RETRY && !(vmf->flags & FAULT_FLAG_RETRY_NOWAIT))
  1055			goto out_rpm;
  1056	
  1057		/* ttm_bo_vm_reserve() already has dma_resv_lock */
  1058		if (ret == VM_FAULT_NOPAGE && wakeref && !obj->userfault_count) {
  1059			obj->userfault_count = 1;
  1060			mutex_lock(&to_gt(to_i915(obj->base.dev))->lmem_userfault_lock);
  1061			list_add(&obj->userfault_link, &to_gt(to_i915(obj->base.dev))->lmem_userfault_list);
  1062			mutex_unlock(&to_gt(to_i915(obj->base.dev))->lmem_userfault_lock);
  1063		}
  1064	
> 1065		if (wakeref && CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND)
  1066			intel_wakeref_auto(&to_gt(to_i915(obj->base.dev))->userfault_wakeref,
  1067					   msecs_to_jiffies_timeout(CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND));
  1068	
  1069		i915_ttm_adjust_lru(obj);
  1070	
  1071		dma_resv_unlock(bo->base.resv);
  1072	
  1073	out_rpm:
  1074		if (wakeref)
  1075			intel_runtime_pm_put(&to_i915(obj->base.dev)->runtime_pm, wakeref);
  1076	
  1077		return ret;
  1078	}
  1079	

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
