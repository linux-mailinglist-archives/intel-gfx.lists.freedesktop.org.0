Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7232E149E5B
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 04:00:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAB746E2B0;
	Mon, 27 Jan 2020 03:00:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A88946E2B0
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2020 03:00:46 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jan 2020 19:00:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,368,1574150400"; d="scan'208";a="251832097"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 26 Jan 2020 19:00:45 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1ivudo-0000E3-Ln; Mon, 27 Jan 2020 11:00:44 +0800
Date: Mon, 27 Jan 2020 11:00:26 +0800
From: kbuild test robot <lkp@intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <202001271034.lId7MaKk%lkp@intel.com>
References: <20200115013143.34961-3-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200115013143.34961-3-daniele.ceraolospurio@intel.com>
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915/guc: Kill USES_GUC_SUBMISSION
 macro
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
Cc: intel-gfx@lists.freedesktop.org, kbuild-all@lists.01.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Daniele,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on drm-intel/for-linux-next]
[cannot apply to drm-tip/drm-tip v5.5-rc7 next-20200124]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Daniele-Ceraolo-Spurio/Commit-early-to-GuC/20200116-112105
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
reproduce:
        # apt-get install sparse
        # sparse version: v0.6.1-153-g47b6dfef-dirty
        make ARCH=x86_64 allmodconfig
        make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)

>> drivers/gpu/drm/i915/gem/i915_gem_context.c:1457:51: sparse: sparse: dereference of noderef expression

vim +1457 drivers/gpu/drm/i915/gem/i915_gem_context.c

  1440	
  1441	static int
  1442	set_engines__load_balance(struct i915_user_extension __user *base, void *data)
  1443	{
  1444		struct i915_context_engines_load_balance __user *ext =
  1445			container_of_user(base, typeof(*ext), base);
  1446		const struct set_engines *set = data;
  1447		struct intel_engine_cs *stack[16];
  1448		struct intel_engine_cs **siblings;
  1449		struct intel_context *ce;
  1450		u16 num_siblings, idx;
  1451		unsigned int n;
  1452		int err;
  1453	
  1454		if (!HAS_EXECLISTS(set->ctx->i915))
  1455			return -ENODEV;
  1456	
> 1457		if (intel_uc_uses_guc_submission(&set->ctx->vm->gt->uc))
  1458			return -ENODEV; /* not implement yet */
  1459	
  1460		if (get_user(idx, &ext->engine_index))
  1461			return -EFAULT;
  1462	
  1463		if (idx >= set->engines->num_engines) {
  1464			DRM_DEBUG("Invalid placement value, %d >= %d\n",
  1465				  idx, set->engines->num_engines);
  1466			return -EINVAL;
  1467		}
  1468	
  1469		idx = array_index_nospec(idx, set->engines->num_engines);
  1470		if (set->engines->engines[idx]) {
  1471			DRM_DEBUG("Invalid placement[%d], already occupied\n", idx);
  1472			return -EEXIST;
  1473		}
  1474	
  1475		if (get_user(num_siblings, &ext->num_siblings))
  1476			return -EFAULT;
  1477	
  1478		err = check_user_mbz(&ext->flags);
  1479		if (err)
  1480			return err;
  1481	
  1482		err = check_user_mbz(&ext->mbz64);
  1483		if (err)
  1484			return err;
  1485	
  1486		siblings = stack;
  1487		if (num_siblings > ARRAY_SIZE(stack)) {
  1488			siblings = kmalloc_array(num_siblings,
  1489						 sizeof(*siblings),
  1490						 GFP_KERNEL);
  1491			if (!siblings)
  1492				return -ENOMEM;
  1493		}
  1494	
  1495		for (n = 0; n < num_siblings; n++) {
  1496			struct i915_engine_class_instance ci;
  1497	
  1498			if (copy_from_user(&ci, &ext->engines[n], sizeof(ci))) {
  1499				err = -EFAULT;
  1500				goto out_siblings;
  1501			}
  1502	
  1503			siblings[n] = intel_engine_lookup_user(set->ctx->i915,
  1504							       ci.engine_class,
  1505							       ci.engine_instance);
  1506			if (!siblings[n]) {
  1507				DRM_DEBUG("Invalid sibling[%d]: { class:%d, inst:%d }\n",
  1508					  n, ci.engine_class, ci.engine_instance);
  1509				err = -EINVAL;
  1510				goto out_siblings;
  1511			}
  1512		}
  1513	
  1514		ce = intel_execlists_create_virtual(siblings, n);
  1515		if (IS_ERR(ce)) {
  1516			err = PTR_ERR(ce);
  1517			goto out_siblings;
  1518		}
  1519	
  1520		intel_context_set_gem(ce, set->ctx);
  1521	
  1522		if (cmpxchg(&set->engines->engines[idx], NULL, ce)) {
  1523			intel_context_put(ce);
  1524			err = -EEXIST;
  1525			goto out_siblings;
  1526		}
  1527	
  1528	out_siblings:
  1529		if (siblings != stack)
  1530			kfree(siblings);
  1531	
  1532		return err;
  1533	}
  1534	

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
