Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4256412B4FB
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Dec 2019 14:54:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F2FA6E44D;
	Fri, 27 Dec 2019 13:54:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF8516E44D
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Dec 2019 13:54:04 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Dec 2019 05:54:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,363,1571727600"; d="scan'208";a="215197371"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 27 Dec 2019 05:54:03 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1ikq42-000Dr9-Ie; Fri, 27 Dec 2019 21:54:02 +0800
Date: Fri, 27 Dec 2019 21:52:06 +0800
From: kbuild test robot <lkp@intel.com>
To: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
Message-ID: <201912272131.nu7NoI6g%lkp@intel.com>
References: <20191223041512.3582-3-abdiel.janulgue@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191223041512.3582-3-abdiel.janulgue@linux.intel.com>
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/selftests: Add selftest for
 memory region PF handling
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
Cc: intel-gfx@lists.freedesktop.org, kbuild-all@lists.01.org,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Abdiel,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on drm-intel/for-linux-next]
[also build test WARNING on drm-tip/drm-tip next-20191220]
[cannot apply to v5.5-rc3]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Abdiel-Janulgue/drm-i915-Introduce-remap_io_sg-to-prefault-discontiguous-objects/20191225-032829
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
reproduce:
        # apt-get install sparse
        # sparse version: v0.6.1-129-g341daf20-dirty
        make ARCH=x86_64 allmodconfig
        make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)

>> drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c:759:32: sparse: sparse: incorrect type in argument 1 (different address spaces)
>> drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c:759:32: sparse:    expected void const *s
>> drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c:759:32: sparse:    got unsigned int [noderef] [usertype] <asn:2> *[assigned] map

vim +759 drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c

   731	
   732	static int gtt_obj_set(struct drm_i915_gem_object *obj, bool init)
   733	{
   734		u32 __iomem *map;
   735		struct i915_vma *vma;
   736		int err = 0;
   737	
   738		i915_gem_object_lock(obj);
   739		err = i915_gem_object_set_to_gtt_domain(obj, true);
   740		i915_gem_object_unlock(obj);
   741		if (err)
   742			return err;
   743	
   744		vma = i915_gem_object_ggtt_pin(obj, NULL, 0, 0, PIN_MAPPABLE);
   745		if (IS_ERR(vma))
   746			return PTR_ERR(vma);
   747	
   748		intel_gt_pm_get(vma->vm->gt);
   749		map = i915_vma_pin_iomap(vma);
   750		i915_vma_unpin(vma);
   751		if (IS_ERR(map)) {
   752			err = PTR_ERR(map);
   753			goto out;
   754		}
   755	
   756		if (init) {
   757			memset_io(map, POISON_INUSE, PAGE_SIZE);
   758		} else {
 > 759			if (memchr_inv(map, POISON_FREE, PAGE_SIZE)) {
   760				pr_err("Write via mmap did not land in backing store\n");
   761				err = -EINVAL;
   762			}
   763		}
   764		i915_vma_unpin_iomap(vma);
   765	
   766	out:
   767		intel_gt_pm_put(vma->vm->gt);
   768		return err;
   769	}
   770	

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
