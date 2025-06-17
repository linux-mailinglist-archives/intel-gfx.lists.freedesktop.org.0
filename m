Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF00EADCC98
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jun 2025 15:11:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5629B10E696;
	Tue, 17 Jun 2025 13:11:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qh8QR8PF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0923C10E69A
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Jun 2025 13:11:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750165894; x=1781701894;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=QOhoNadDNTU2m9Q3bGLSc3HtdZsj2T07ELkuWUsHj2s=;
 b=Qh8QR8PFkP23iriNVwqSw/EcnK9ww9ubIIvQRtCZG2l4X53WXw8mqdSE
 J2shO49QjJnyJGAtb79PiS4qgiv74ZhQb/1pcRIIXRmOcspmp8M9SJJB3
 CgIUnrTOb/3k2NPHa1jiEyK3VoMxlsPaX7Z5Zd7CgIPGyaUFpJlNNcnJQ
 9bGMUVmu3xPH9DtCnUytzipRyojjxm493yLFV1YaHO7xPRsQeu0hKN3V3
 OiuXOQCx33ZTNqc9Yz1H9TmFb5zi8siJXqFL1Qnkp3+fMDVwxuCMLEKJi
 ZCrCmtoVJk2TqTiSr48Vgt+QQQ7JAt5Ft6Lf1xPmMoT65zQeBWZ5nuXxn g==;
X-CSE-ConnectionGUID: SrcR2GUJQlKZEkr1xq92/Q==
X-CSE-MsgGUID: qSFQ5UOtS6aO3NpSedr7qQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11467"; a="52322723"
X-IronPort-AV: E=Sophos;i="6.16,243,1744095600"; d="scan'208";a="52322723"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2025 06:11:34 -0700
X-CSE-ConnectionGUID: o2f+w9yCQGmL4rCgaqU1qA==
X-CSE-MsgGUID: PHIXunWSRf28yYy4eJ565A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,243,1744095600"; d="scan'208";a="179644878"
Received: from lkp-server01.sh.intel.com (HELO e8142ee1dce2) ([10.239.97.150])
 by orviesa002.jf.intel.com with ESMTP; 17 Jun 2025 06:11:32 -0700
Received: from kbuild by e8142ee1dce2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uRW65-000Fzi-1B;
 Tue, 17 Jun 2025 13:11:29 +0000
Date: Tue, 17 Jun 2025 21:11:27 +0800
From: kernel test robot <lkp@intel.com>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: oe-kbuild-all@lists.linux.dev, chris.p.wilson@intel.com,
 andi.shyti@linux.intel.com, krzysztof.niemiec@intel.com,
 krzysztof.karas@intel.com
Subject: Re: [PATCH] drm/i915: Add sanity check for relocation entry pointer
 in execbuffer
Message-ID: <202506172030.rBM8TgS8-lkp@intel.com>
References: <lofb2i4actwlvfk6xbtihirrc34j3pb6xecvcl433a2xbm7zy6@akz3ko2bh2i5>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <lofb2i4actwlvfk6xbtihirrc34j3pb6xecvcl433a2xbm7zy6@akz3ko2bh2i5>
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

Hi Sebastian,

kernel test robot noticed the following build warnings:

[auto build test WARNING on drm-intel/for-linux-next]
[also build test WARNING on linus/master v6.16-rc2 next-20250617]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Sebastian-Brzezinka/drm-i915-Add-sanity-check-for-relocation-entry-pointer-in-execbuffer/20250616-222313
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
patch link:    https://lore.kernel.org/r/lofb2i4actwlvfk6xbtihirrc34j3pb6xecvcl433a2xbm7zy6%40akz3ko2bh2i5
patch subject: [PATCH] drm/i915: Add sanity check for relocation entry pointer in execbuffer
config: i386-randconfig-062-20250617 (https://download.01.org/0day-ci/archive/20250617/202506172030.rBM8TgS8-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250617/202506172030.rBM8TgS8-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202506172030.rBM8TgS8-lkp@intel.com/

sparse warnings: (new ones prefixed by >>)
>> drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1431:24: sparse: sparse: incorrect type in argument 1 (different address spaces) @@     expected void const [noderef] __user *ptr @@     got struct drm_i915_gem_relocation_entry const *reloc @@
   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1431:24: sparse:     expected void const [noderef] __user *ptr
   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1431:24: sparse:     got struct drm_i915_gem_relocation_entry const *reloc

vim +1431 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c

  1420	
  1421	static u64
  1422	eb_relocate_entry(struct i915_execbuffer *eb,
  1423			  struct eb_vma *ev,
  1424			  const struct drm_i915_gem_relocation_entry *reloc)
  1425	{
  1426		struct drm_i915_private *i915 = eb->i915;
  1427		struct eb_vma *target;
  1428		int err;
  1429	
  1430		/* Sanity check for non-canonical or NULL pointer */
> 1431		if (!reloc || !access_ok(reloc, sizeof(*reloc))) {
  1432			DRM_ERROR("Invalid relocation entry pointer: %p\n", reloc);
  1433			return -EFAULT;
  1434		}
  1435	
  1436		/* we've already hold a reference to all valid objects */
  1437		target = eb_get_vma(eb, reloc->target_handle);
  1438		if (unlikely(!target))
  1439			return -ENOENT;
  1440	
  1441		/* Validate that the target is in a valid r/w GPU domain */
  1442		if (unlikely(reloc->write_domain & (reloc->write_domain - 1))) {
  1443			drm_dbg(&i915->drm, "reloc with multiple write domains: "
  1444				  "target %d offset %d "
  1445				  "read %08x write %08x\n",
  1446				  reloc->target_handle,
  1447				  (int) reloc->offset,
  1448				  reloc->read_domains,
  1449				  reloc->write_domain);
  1450			return -EINVAL;
  1451		}
  1452		if (unlikely((reloc->write_domain | reloc->read_domains)
  1453			     & ~I915_GEM_GPU_DOMAINS)) {
  1454			drm_dbg(&i915->drm, "reloc with read/write non-GPU domains: "
  1455				  "target %d offset %d "
  1456				  "read %08x write %08x\n",
  1457				  reloc->target_handle,
  1458				  (int) reloc->offset,
  1459				  reloc->read_domains,
  1460				  reloc->write_domain);
  1461			return -EINVAL;
  1462		}
  1463	
  1464		if (reloc->write_domain) {
  1465			target->flags |= EXEC_OBJECT_WRITE;
  1466	
  1467			/*
  1468			 * Sandybridge PPGTT errata: We need a global gtt mapping
  1469			 * for MI and pipe_control writes because the gpu doesn't
  1470			 * properly redirect them through the ppgtt for non_secure
  1471			 * batchbuffers.
  1472			 */
  1473			if (reloc->write_domain == I915_GEM_DOMAIN_INSTRUCTION &&
  1474			    GRAPHICS_VER(eb->i915) == 6 &&
  1475			    !i915_vma_is_bound(target->vma, I915_VMA_GLOBAL_BIND)) {
  1476				struct i915_vma *vma = target->vma;
  1477	
  1478				reloc_cache_unmap(&eb->reloc_cache);
  1479				mutex_lock(&vma->vm->mutex);
  1480				err = i915_vma_bind(target->vma,
  1481						    target->vma->obj->pat_index,
  1482						    PIN_GLOBAL, NULL, NULL);
  1483				mutex_unlock(&vma->vm->mutex);
  1484				reloc_cache_remap(&eb->reloc_cache, ev->vma->obj);
  1485				if (err)
  1486					return err;
  1487			}
  1488		}
  1489	
  1490		/*
  1491		 * If the relocation already has the right value in it, no
  1492		 * more work needs to be done.
  1493		 */
  1494		if (!DBG_FORCE_RELOC &&
  1495		    gen8_canonical_addr(i915_vma_offset(target->vma)) == reloc->presumed_offset)
  1496			return 0;
  1497	
  1498		/* Check that the relocation address is valid... */
  1499		if (unlikely(reloc->offset >
  1500			     ev->vma->size - (eb->reloc_cache.use_64bit_reloc ? 8 : 4))) {
  1501			drm_dbg(&i915->drm, "Relocation beyond object bounds: "
  1502				  "target %d offset %d size %d.\n",
  1503				  reloc->target_handle,
  1504				  (int)reloc->offset,
  1505				  (int)ev->vma->size);
  1506			return -EINVAL;
  1507		}
  1508		if (unlikely(reloc->offset & 3)) {
  1509			drm_dbg(&i915->drm, "Relocation not 4-byte aligned: "
  1510				  "target %d offset %d.\n",
  1511				  reloc->target_handle,
  1512				  (int)reloc->offset);
  1513			return -EINVAL;
  1514		}
  1515	
  1516		/*
  1517		 * If we write into the object, we need to force the synchronisation
  1518		 * barrier, either with an asynchronous clflush or if we executed the
  1519		 * patching using the GPU (though that should be serialised by the
  1520		 * timeline). To be completely sure, and since we are required to
  1521		 * do relocations we are already stalling, disable the user's opt
  1522		 * out of our synchronisation.
  1523		 */
  1524		ev->flags &= ~EXEC_OBJECT_ASYNC;
  1525	
  1526		/* and update the user's relocation entry */
  1527		return relocate_entry(ev->vma, reloc, eb, target->vma);
  1528	}
  1529	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
