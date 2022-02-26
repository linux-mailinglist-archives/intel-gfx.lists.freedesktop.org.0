Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E43504C54C7
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Feb 2022 10:09:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A4CB10EB4E;
	Sat, 26 Feb 2022 09:09:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CECDC10EB4E
 for <intel-gfx@lists.freedesktop.org>; Sat, 26 Feb 2022 09:09:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645866587; x=1677402587;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=T5zlaDaj0oUrUexWkG6jnHS18Vr5ieqUJAdTIvCzxBA=;
 b=OJGw+BEuX6g8XRFSFPx4fzVi4XAR1WxVYfjFP7zMQzMH5YwxZpFnQ6di
 I+pQU9fPsIyinuQ6x4XmOQWpz+SuhXqbvJ5t8xoi3Qhbu4uLZ4jl6QD/z
 jA0O3q/rXghdsv45jLGIs8zC+ct7uDSzj6LbgHxwOzR/iQMhacFCEhoiL
 oY/3GLehWUCnlCwcILx/ql5YqdJoqHyW/YoYhVJtfotrHkkE/EG+nrkha
 qiVGQTchqowc+OORuXNYolGXGbssBkk75I3EwPjs2bVbsazYnk0G2bvKH
 Cgjn4k1DfN4qYkyRqrhNmo+Kv2QDYyTlNXVQKGUO/JaxtRW26TOkBvD78 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10269"; a="250227043"
X-IronPort-AV: E=Sophos;i="5.90,139,1643702400"; d="scan'208";a="250227043"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2022 01:09:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,139,1643702400"; d="scan'208";a="640373845"
Received: from lkp-server01.sh.intel.com (HELO 788b1cd46f0d) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 26 Feb 2022 01:09:45 -0800
Received: from kbuild by 788b1cd46f0d with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nNt5F-0005KZ-6i; Sat, 26 Feb 2022 09:09:45 +0000
Date: Sat, 26 Feb 2022 17:08:48 +0800
From: kernel test robot <lkp@intel.com>
To: Alan Previn <alan.previn.teres.alexis@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <202202261725.qSv41wrm-lkp@intel.com>
References: <20220226055526.665514-2-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220226055526.665514-2-alan.previn.teres.alexis@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v6 01/13] drm/i915/guc: Update GuC ADS size
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
Cc: kbuild-all@lists.01.org, Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Alan,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on drm-intel/for-linux-next]
[also build test WARNING on drm/drm-next next-20220225]
[cannot apply to drm-tip/drm-tip drm-exynos/exynos-drm-next tegra-drm/drm/tegra/for-next airlied/drm-next v5.17-rc5]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Alan-Previn/Add-GuC-Error-Capture-Support/20220226-135414
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
config: x86_64-randconfig-a011 (https://download.01.org/0day-ci/archive/20220226/202202261725.qSv41wrm-lkp@intel.com/config)
compiler: gcc-9 (Debian 9.3.0-22) 9.3.0
reproduce (this is a W=1 build):
        # https://github.com/0day-ci/linux/commit/4c1018d0e536adbe13cf0b71049b0a94073eec7e
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Alan-Previn/Add-GuC-Error-Capture-Support/20220226-135414
        git checkout 4c1018d0e536adbe13cf0b71049b0a94073eec7e
        # save the config file to linux build tree
        mkdir build_dir
        make W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash drivers/gpu/drm/i915/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:222:1: warning: no previous prototype for 'intel_guc_capture_getlistsize' [-Wmissing-prototypes]
     222 | intel_guc_capture_getlistsize(struct intel_guc *guc, u32 owner, u32 type, u32 classid,
         | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:252:1: warning: no previous prototype for 'intel_guc_capture_getlist' [-Wmissing-prototypes]
     252 | intel_guc_capture_getlist(struct intel_guc *guc, u32 owner, u32 type, u32 classid,
         | ^~~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:321:6: warning: no previous prototype for 'intel_guc_capture_destroy' [-Wmissing-prototypes]
     321 | void intel_guc_capture_destroy(struct intel_guc *guc)
         |      ^~~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:332:5: warning: no previous prototype for 'intel_guc_capture_init' [-Wmissing-prototypes]
     332 | int intel_guc_capture_init(struct intel_guc *guc)
         |     ^~~~~~~~~~~~~~~~~~~~~~


vim +/intel_guc_capture_getlistsize +222 drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c

   220	
   221	int
 > 222	intel_guc_capture_getlistsize(struct intel_guc *guc, u32 owner, u32 type, u32 classid,
   223				      size_t *size)
   224	{
   225		struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
   226		struct __guc_state_capture_priv *gc = guc->capture.priv;
   227		struct __guc_capture_ads_cache *cache = &gc->ads_cache[owner][type][classid];
   228		int num_regs;
   229	
   230		if (!gc->reglists)
   231			return -ENODEV;
   232	
   233		if (cache->is_valid) {
   234			*size = cache->size;
   235			return cache->status;
   236		}
   237	
   238		num_regs = guc_cap_list_num_regs(gc, owner, type, classid);
   239		if (!num_regs) {
   240			guc_capture_warn_with_list_info(i915, "Missing register list size",
   241							owner, type, classid);
   242			return -ENODATA;
   243		}
   244	
   245		*size = PAGE_ALIGN((sizeof(struct guc_debug_capture_list)) +
   246				   (num_regs * sizeof(struct guc_mmio_reg)));
   247	
   248		return 0;
   249	}
   250	
   251	int
 > 252	intel_guc_capture_getlist(struct intel_guc *guc, u32 owner, u32 type, u32 classid,
   253				  void **listptr)
   254	{
   255		struct __guc_state_capture_priv *gc = guc->capture.priv;
   256		struct __guc_capture_ads_cache *cache = &gc->ads_cache[owner][type][classid];
   257		struct guc_debug_capture_list *listnode;
   258		u8 *caplist, *tmp;
   259		size_t size = 0;
   260		int ret, num_regs;
   261	
   262		if (!gc->reglists)
   263			return -ENODEV;
   264	
   265		if (cache->is_valid) {
   266			*listptr = cache->list;
   267			return cache->status;
   268		}
   269	
   270		ret = intel_guc_capture_getlistsize(guc, owner, type, classid, &size);
   271		if (ret) {
   272			cache->list = NULL;
   273			cache->size = 0;
   274			cache->status = ret;
   275			cache->is_valid = true;
   276			return ret;
   277		}
   278	
   279		caplist = kzalloc(size, GFP_KERNEL);
   280		if (!caplist)
   281			return -ENOMEM;
   282	
   283		/* populate capture list header */
   284		tmp = caplist;
   285		num_regs = guc_cap_list_num_regs(guc->capture.priv, owner, type, classid);
   286		listnode = (struct guc_debug_capture_list *)tmp;
   287		listnode->header.info = FIELD_PREP(GUC_CAPTURELISTHDR_NUMDESCR, (u32)num_regs);
   288	
   289		/* populate list of register descriptor */
   290		tmp += sizeof(struct guc_debug_capture_list);
   291		guc_capture_list_init(guc, owner, type, classid, (struct guc_mmio_reg *)tmp, num_regs);
   292	
   293		/* cache this list */
   294		cache->list = caplist;
   295		cache->size = size;
   296		cache->status = 0;
   297		cache->is_valid = true;
   298	
   299		*listptr = caplist;
   300	
   301		return 0;
   302	}
   303	
   304	static void
   305	guc_capture_free_ads_cache(struct __guc_state_capture_priv *gc)
   306	{
   307		int i, j, k;
   308		struct __guc_capture_ads_cache *cache;
   309	
   310		for (i = 0; i < GUC_CAPTURE_LIST_INDEX_MAX; ++i) {
   311			for (j = 0; j < GUC_CAPTURE_LIST_TYPE_MAX; ++j) {
   312				for (k = 0; k < GUC_MAX_ENGINE_CLASSES; ++k) {
   313					cache = &gc->ads_cache[i][j][k];
   314					if (cache->is_valid && cache->list)
   315						kfree(cache->list);
   316				}
   317			}
   318		}
   319	}
   320	
 > 321	void intel_guc_capture_destroy(struct intel_guc *guc)
   322	{
   323		if (!guc->capture.priv)
   324			return;
   325	
   326		guc_capture_free_ads_cache(guc->capture.priv);
   327	
   328		kfree(guc->capture.priv);
   329		guc->capture.priv = NULL;
   330	}
   331	
 > 332	int intel_guc_capture_init(struct intel_guc *guc)

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
