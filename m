Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KVJ5JMylmWl9VwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Feb 2026 13:32:12 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E1F316CD3B
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Feb 2026 13:32:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE3C510E043;
	Sat, 21 Feb 2026 12:32:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JzwTPo77";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B36EC10E043;
 Sat, 21 Feb 2026 12:32:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771677128; x=1803213128;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=IIgCsmNHPWSAgIW2TNsY+ADF8o+W0JJ5I6dE3NtKe2g=;
 b=JzwTPo77jE7lzyJuj6Ot9rwFbgCRGo9wM9ox2WhbMOnkCzXnrnbmQO0W
 hj3+HV/OxCIuCb0b5QPkZD8UD/YnwggxvNvzn03efrTmNJj5jkEILM7RQ
 iMGkrNWt7a1vjxjoVkv3n76eFb1rFFou2trRfx5TnqUPA48bv4cbm6UiX
 iz7UuJmRi3NomrOEnEMhx+vzk1OcVwMcRPDtA1u+d4GJLk4dvBzWLBILc
 tJgyJlWPR3NhlFeq5nI/Q6TXSEt2snsKyBMNiZOoaYU6xHqnrxiApTah8
 yO9911qfFZpC8+0IewZyze5A1YMhoS/LSG8ZbLworToAlhNaSBMbeNIx+ Q==;
X-CSE-ConnectionGUID: KB9yTexEQyiz/zoDdpp0sw==
X-CSE-MsgGUID: /7JfIffhS+aZog215FQKdA==
X-IronPort-AV: E=McAfee;i="6800,10657,11707"; a="90330533"
X-IronPort-AV: E=Sophos;i="6.21,302,1763452800"; d="scan'208";a="90330533"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2026 04:32:07 -0800
X-CSE-ConnectionGUID: im3Sg4SMQK6apam4cEeIDQ==
X-CSE-MsgGUID: d58WRLltSJuiYac2t7IUIw==
X-ExtLoop1: 1
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
 by fmviesa003.fm.intel.com with ESMTP; 21 Feb 2026 04:32:05 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vtm9T-000000014uO-1bRa;
 Sat, 21 Feb 2026 12:32:03 +0000
Date: Sat, 21 Feb 2026 20:31:16 +0800
From: kernel test robot <lkp@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: oe-kbuild-all@lists.linux.dev, vinod.govindapillai@intel.com,
 ville.syrjala@intel.com, uma.shankar@intel.com
Subject: Re: [PATCH v2 3/6] drm/i915/fbdev: Extract
 intel_fbdev_fb_prefer_stolen()
Message-ID: <202602212005.vv7AJP3Z-lkp@intel.com>
References: <20260220170908.201422-4-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260220170908.201422-4-vinod.govindapillai@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 7E1F316CD3B
X-Rspamd-Action: no action

Hi Vinod,

kernel test robot noticed the following build errors:

[auto build test ERROR on drm-i915/for-linux-next]
[also build test ERROR on drm-tip/drm-tip linus/master next-20260220]
[cannot apply to drm-i915/for-linux-next-fixes drm-xe/drm-xe-next v6.19]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Vinod-Govindapillai/drm-xe-fbdev-Fix-BIOS-FB-vs-s-stolen-size-check/20260221-013114
base:   https://gitlab.freedesktop.org/drm/i915/kernel.git for-linux-next
patch link:    https://lore.kernel.org/r/20260220170908.201422-4-vinod.govindapillai%40intel.com
patch subject: [PATCH v2 3/6] drm/i915/fbdev: Extract intel_fbdev_fb_prefer_stolen()
config: x86_64-randconfig-076-20260221 (https://download.01.org/0day-ci/archive/20260221/202602212005.vv7AJP3Z-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.4.0-5) 12.4.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260221/202602212005.vv7AJP3Z-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202602212005.vv7AJP3Z-lkp@intel.com/

All errors (new ones prefixed by >>):

   ld: drivers/gpu/drm/i915/i915_initial_plane.o: in function `initial_plane_vma':
>> drivers/gpu/drm/i915/i915_initial_plane.c:120:(.text+0x103c): undefined reference to `intel_fbdev_fb_prefer_stolen'


vim +120 drivers/gpu/drm/i915/i915_initial_plane.c

    85	
    86	static struct i915_vma *
    87	initial_plane_vma(struct drm_i915_private *i915,
    88			  struct intel_initial_plane_config *plane_config)
    89	{
    90		struct intel_memory_region *mem;
    91		struct drm_i915_gem_object *obj;
    92		struct drm_mm_node orig_mm = {};
    93		struct i915_vma *vma;
    94		resource_size_t phys_base;
    95		unsigned int tiling;
    96		u32 base, size;
    97		u64 pinctl;
    98	
    99		if (plane_config->size == 0)
   100			return NULL;
   101	
   102		if (!initial_plane_phys(i915, plane_config))
   103			return NULL;
   104	
   105		phys_base = plane_config->phys_base;
   106		mem = plane_config->mem;
   107	
   108		base = round_down(plane_config->base, I915_GTT_MIN_ALIGNMENT);
   109		size = round_up(plane_config->base + plane_config->size,
   110				mem->min_page_size);
   111		size -= base;
   112	
   113		/*
   114		 * If the FB is too big, just don't use it since fbdev is not very
   115		 * important and we should probably use that space with FBC or other
   116		 * features.
   117		 */
   118		if (IS_ENABLED(CONFIG_FRAMEBUFFER_CONSOLE) &&
   119		    mem == i915->mm.stolen_region &&
 > 120		    !intel_fbdev_fb_prefer_stolen(&i915->drm, size)) {
   121			drm_dbg_kms(&i915->drm, "Initial FB size exceeds half of stolen, discarding\n");
   122			return NULL;
   123		}
   124	
   125		obj = i915_gem_object_create_region_at(mem, phys_base, size,
   126						       I915_BO_ALLOC_USER |
   127						       I915_BO_PREALLOC);
   128		if (IS_ERR(obj)) {
   129			drm_dbg_kms(&i915->drm, "Failed to preallocate initial FB in %s\n",
   130				    mem->region.name);
   131			return NULL;
   132		}
   133	
   134		/*
   135		 * Mark it WT ahead of time to avoid changing the
   136		 * cache_level during fbdev initialization. The
   137		 * unbind there would get stuck waiting for rcu.
   138		 */
   139		i915_gem_object_set_cache_coherency(obj, HAS_WT(i915) ?
   140						    I915_CACHE_WT : I915_CACHE_NONE);
   141	
   142		tiling = intel_fb_modifier_to_tiling(plane_config->fb->base.modifier);
   143	
   144		switch (tiling) {
   145		case I915_TILING_NONE:
   146			break;
   147		case I915_TILING_X:
   148		case I915_TILING_Y:
   149			obj->tiling_and_stride =
   150				plane_config->fb->base.pitches[0] |
   151				tiling;
   152			break;
   153		default:
   154			MISSING_CASE(tiling);
   155			goto err_obj;
   156		}
   157	
   158		/*
   159		 * MTL GOP likes to place the framebuffer high up in ggtt,
   160		 * which can cause problems for ggtt_reserve_guc_top().
   161		 * Try to pin it to a low ggtt address instead to avoid that.
   162		 */
   163		base = 0;
   164	
   165		if (base != plane_config->base) {
   166			struct i915_ggtt *ggtt = to_gt(i915)->ggtt;
   167			int ret;
   168	
   169			/*
   170			 * Make sure the original and new locations
   171			 * can't overlap. That would corrupt the original
   172			 * PTEs which are still being used for scanout.
   173			 */
   174			ret = i915_gem_gtt_reserve(&ggtt->vm, NULL, &orig_mm,
   175						   size, plane_config->base,
   176						   I915_COLOR_UNEVICTABLE, PIN_NOEVICT);
   177			if (ret)
   178				goto err_obj;
   179		}
   180	
   181		vma = i915_vma_instance(obj, &to_gt(i915)->ggtt->vm, NULL);
   182		if (IS_ERR(vma))
   183			goto err_obj;
   184	
   185	retry:
   186		pinctl = PIN_GLOBAL | PIN_OFFSET_FIXED | base;
   187		if (!i915_gem_object_is_lmem(obj))
   188			pinctl |= PIN_MAPPABLE;
   189		if (i915_vma_pin(vma, 0, 0, pinctl)) {
   190			if (drm_mm_node_allocated(&orig_mm)) {
   191				drm_mm_remove_node(&orig_mm);
   192				/*
   193				 * Try again, but this time pin
   194				 * it to its original location.
   195				 */
   196				base = plane_config->base;
   197				goto retry;
   198			}
   199			goto err_obj;
   200		}
   201	
   202		if (i915_gem_object_is_tiled(obj) &&
   203		    !i915_vma_is_map_and_fenceable(vma))
   204			goto err_obj;
   205	
   206		if (drm_mm_node_allocated(&orig_mm))
   207			drm_mm_remove_node(&orig_mm);
   208	
   209		drm_dbg_kms(&i915->drm,
   210			    "Initial plane fb bound to 0x%x in the ggtt (original 0x%x)\n",
   211			    i915_ggtt_offset(vma), plane_config->base);
   212	
   213		return vma;
   214	
   215	err_obj:
   216		if (drm_mm_node_allocated(&orig_mm))
   217			drm_mm_remove_node(&orig_mm);
   218		i915_gem_object_put(obj);
   219		return NULL;
   220	}
   221	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
