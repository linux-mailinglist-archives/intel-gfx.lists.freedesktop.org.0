Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E676B874A7
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2019 10:56:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 675C46E270;
	Fri,  9 Aug 2019 08:56:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56A9F6E270
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Aug 2019 08:56:00 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Aug 2019 01:55:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,364,1559545200"; 
 d="gz'50?scan'50,208,50";a="375137775"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 09 Aug 2019 01:55:58 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hw0gn-0002bv-IG; Fri, 09 Aug 2019 16:55:57 +0800
Date: Fri, 9 Aug 2019 16:55:36 +0800
From: kbuild test robot <lkp@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <201908091651.BZThU8Ye%lkp@intel.com>
References: <20190802132836.6787-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="gtivetuy5rc2lnuv"
Content-Disposition: inline
In-Reply-To: <20190802132836.6787-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Flush any deferred RCU cleanup
 before switching off GEM
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: intel-gfx@lists.freedesktop.org, kbuild-all@01.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--gtivetuy5rc2lnuv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Chris,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on drm-intel/for-linux-next]
[cannot apply to v5.3-rc3 next-20190809]
[if your patch is applied to the wrong git tree, please drop us a note to help improve the system]

url:    https://github.com/0day-ci/linux/commits/Chris-Wilson/drm-i915-Flush-any-deferred-RCU-cleanup-before-switching-off-GEM/20190802-232023
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
config: x86_64-randconfig-a004-201931 (attached as .config)
compiler: gcc-4.9 (Debian 4.9.2-10+deb8u1) 4.9.2
reproduce:
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   drivers/gpu/drm/i915/i915_gem.c: In function 'i915_gem_init':
>> drivers/gpu/drm/i915/i915_gem.c:1606:26: error: 'struct drm_i915_private' has no member named 'rq'
     flush_workqueue(dev_priv->rq);
                             ^

vim +1606 drivers/gpu/drm/i915/i915_gem.c

  1425	
  1426	int i915_gem_init(struct drm_i915_private *dev_priv)
  1427	{
  1428		int ret;
  1429	
  1430		/* We need to fallback to 4K pages if host doesn't support huge gtt. */
  1431		if (intel_vgpu_active(dev_priv) && !intel_vgpu_has_huge_gtt(dev_priv))
  1432			mkwrite_device_info(dev_priv)->page_sizes =
  1433				I915_GTT_PAGE_SIZE_4K;
  1434	
  1435		dev_priv->mm.unordered_timeline = dma_fence_context_alloc(1);
  1436	
  1437		intel_timelines_init(dev_priv);
  1438	
  1439		ret = i915_gem_init_userptr(dev_priv);
  1440		if (ret)
  1441			return ret;
  1442	
  1443		intel_uc_fetch_firmwares(&dev_priv->gt.uc);
  1444	
  1445		ret = intel_wopcm_init(&dev_priv->wopcm);
  1446		if (ret)
  1447			goto err_uc_fw;
  1448	
  1449		/* This is just a security blanket to placate dragons.
  1450		 * On some systems, we very sporadically observe that the first TLBs
  1451		 * used by the CS may be stale, despite us poking the TLB reset. If
  1452		 * we hold the forcewake during initialisation these problems
  1453		 * just magically go away.
  1454		 */
  1455		mutex_lock(&dev_priv->drm.struct_mutex);
  1456		intel_uncore_forcewake_get(&dev_priv->uncore, FORCEWAKE_ALL);
  1457	
  1458		ret = i915_init_ggtt(dev_priv);
  1459		if (ret) {
  1460			GEM_BUG_ON(ret == -EIO);
  1461			goto err_unlock;
  1462		}
  1463	
  1464		ret = i915_gem_init_scratch(dev_priv,
  1465					    IS_GEN(dev_priv, 2) ? SZ_256K : PAGE_SIZE);
  1466		if (ret) {
  1467			GEM_BUG_ON(ret == -EIO);
  1468			goto err_ggtt;
  1469		}
  1470	
  1471		ret = intel_engines_setup(dev_priv);
  1472		if (ret) {
  1473			GEM_BUG_ON(ret == -EIO);
  1474			goto err_unlock;
  1475		}
  1476	
  1477		ret = i915_gem_contexts_init(dev_priv);
  1478		if (ret) {
  1479			GEM_BUG_ON(ret == -EIO);
  1480			goto err_scratch;
  1481		}
  1482	
  1483		ret = intel_engines_init(dev_priv);
  1484		if (ret) {
  1485			GEM_BUG_ON(ret == -EIO);
  1486			goto err_context;
  1487		}
  1488	
  1489		intel_init_gt_powersave(dev_priv);
  1490	
  1491		ret = intel_uc_init(&dev_priv->gt.uc);
  1492		if (ret)
  1493			goto err_pm;
  1494	
  1495		ret = i915_gem_init_hw(dev_priv);
  1496		if (ret)
  1497			goto err_uc_init;
  1498	
  1499		/* Only when the HW is re-initialised, can we replay the requests */
  1500		ret = intel_gt_resume(&dev_priv->gt);
  1501		if (ret)
  1502			goto err_init_hw;
  1503	
  1504		/*
  1505		 * Despite its name intel_init_clock_gating applies both display
  1506		 * clock gating workarounds; GT mmio workarounds and the occasional
  1507		 * GT power context workaround. Worse, sometimes it includes a context
  1508		 * register workaround which we need to apply before we record the
  1509		 * default HW state for all contexts.
  1510		 *
  1511		 * FIXME: break up the workarounds and apply them at the right time!
  1512		 */
  1513		intel_init_clock_gating(dev_priv);
  1514	
  1515		ret = intel_engines_verify_workarounds(dev_priv);
  1516		if (ret)
  1517			goto err_gt;
  1518	
  1519		ret = __intel_engines_record_defaults(dev_priv);
  1520		if (ret)
  1521			goto err_gt;
  1522	
  1523		if (i915_inject_probe_failure()) {
  1524			ret = -ENODEV;
  1525			goto err_gt;
  1526		}
  1527	
  1528		if (i915_inject_probe_failure()) {
  1529			ret = -EIO;
  1530			goto err_gt;
  1531		}
  1532	
  1533		intel_uncore_forcewake_put(&dev_priv->uncore, FORCEWAKE_ALL);
  1534		mutex_unlock(&dev_priv->drm.struct_mutex);
  1535	
  1536		return 0;
  1537	
  1538		/*
  1539		 * Unwinding is complicated by that we want to handle -EIO to mean
  1540		 * disable GPU submission but keep KMS alive. We want to mark the
  1541		 * HW as irrevisibly wedged, but keep enough state around that the
  1542		 * driver doesn't explode during runtime.
  1543		 */
  1544	err_gt:
  1545		mutex_unlock(&dev_priv->drm.struct_mutex);
  1546	
  1547		intel_gt_set_wedged(&dev_priv->gt);
  1548		i915_gem_suspend(dev_priv);
  1549		i915_gem_suspend_late(dev_priv);
  1550	
  1551		i915_gem_drain_workqueue(dev_priv);
  1552	
  1553		mutex_lock(&dev_priv->drm.struct_mutex);
  1554	err_init_hw:
  1555		intel_uc_fini_hw(&dev_priv->gt.uc);
  1556	err_uc_init:
  1557		intel_uc_fini(&dev_priv->gt.uc);
  1558	err_pm:
  1559		if (ret != -EIO) {
  1560			intel_cleanup_gt_powersave(dev_priv);
  1561			intel_engines_cleanup(dev_priv);
  1562		}
  1563	err_context:
  1564		if (ret != -EIO)
  1565			i915_gem_contexts_fini(dev_priv);
  1566	err_scratch:
  1567		i915_gem_fini_scratch(dev_priv);
  1568	err_ggtt:
  1569	err_unlock:
  1570		intel_uncore_forcewake_put(&dev_priv->uncore, FORCEWAKE_ALL);
  1571		mutex_unlock(&dev_priv->drm.struct_mutex);
  1572	
  1573	err_uc_fw:
  1574		intel_uc_cleanup_firmwares(&dev_priv->gt.uc);
  1575	
  1576		if (ret != -EIO) {
  1577			i915_gem_cleanup_userptr(dev_priv);
  1578			intel_timelines_fini(dev_priv);
  1579		}
  1580	
  1581		if (ret == -EIO) {
  1582			mutex_lock(&dev_priv->drm.struct_mutex);
  1583	
  1584			/*
  1585			 * Allow engine initialisation to fail by marking the GPU as
  1586			 * wedged. But we only want to do this where the GPU is angry,
  1587			 * for all other failure, such as an allocation failure, bail.
  1588			 */
  1589			if (!intel_gt_is_wedged(&dev_priv->gt)) {
  1590				i915_probe_error(dev_priv,
  1591						 "Failed to initialize GPU, declaring it wedged!\n");
  1592				intel_gt_set_wedged(&dev_priv->gt);
  1593			}
  1594	
  1595			/* Minimal basic recovery for KMS */
  1596			ret = i915_ggtt_enable_hw(dev_priv);
  1597			i915_gem_restore_gtt_mappings(dev_priv);
  1598			i915_gem_restore_fences(dev_priv);
  1599			intel_init_clock_gating(dev_priv);
  1600	
  1601			mutex_unlock(&dev_priv->drm.struct_mutex);
  1602		}
  1603	
  1604		/* Flush any deferred RCU cleanup */
  1605		rcu_barrier();
> 1606		flush_workqueue(dev_priv->rq);
  1607	
  1608		i915_gem_drain_freed_objects(dev_priv);
  1609		return ret;
  1610	}
  1611	

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

--gtivetuy5rc2lnuv
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
A7+zWQx93AEA

--gtivetuy5rc2lnuv
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--gtivetuy5rc2lnuv--
