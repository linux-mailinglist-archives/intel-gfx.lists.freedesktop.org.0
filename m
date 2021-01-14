Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FA0A2F5A2A
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jan 2021 06:07:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D10F5898AF;
	Thu, 14 Jan 2021 05:07:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92458898AF
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Jan 2021 05:07:52 +0000 (UTC)
IronPort-SDR: aO2emJGX0qvz0W+ggA7OOAanTL3jfocpWZCsnHO2PvK4vaGs2WXyO1uO+VEphA72gQpMFh1fFe
 /+4Q+c49DHOw==
X-IronPort-AV: E=McAfee;i="6000,8403,9863"; a="178456462"
X-IronPort-AV: E=Sophos;i="5.79,346,1602572400"; 
 d="gz'50?scan'50,208,50";a="178456462"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2021 21:07:51 -0800
IronPort-SDR: 5fP/azCJpVDnPL1G7rUNthwICGcIkcTuizn8LIj7JjEqcLCSl+GAPTcoW9iYUHS6O2LBG2CvRi
 DHKDNE15xRZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,346,1602572400"; 
 d="gz'50?scan'50,208,50";a="572230761"
Received: from lkp-server01.sh.intel.com (HELO d5d1a9a2c6bb) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 13 Jan 2021 21:07:49 -0800
Received: from kbuild by d5d1a9a2c6bb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kzurM-0000cF-Tr; Thu, 14 Jan 2021 05:07:48 +0000
Date: Thu, 14 Jan 2021 13:07:43 +0800
From: kernel test robot <lkp@intel.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>, LKML <linux-kernel@vger.kernel.org>
Message-ID: <202101141315.O3VGrlrw-lkp@intel.com>
References: <20210113135009.3606813-2-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="HcAYCG3uE/tztfnV"
Content-Disposition: inline
In-Reply-To: <20210113135009.3606813-2-daniel.vetter@ffwll.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/2] bdi: Use might_alloc()
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 kbuild-all@lists.01.org, Andrew Morton <akpm@linux-foundation.org>,
 Linux Memory Management List <linux-mm@kvack.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--HcAYCG3uE/tztfnV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Daniel,

I love your patch! Yet something to improve:

[auto build test ERROR on mmotm/master]

url:    https://github.com/0day-ci/linux/commits/Daniel-Vetter/mm-dmapool-Use-might_alloc/20210113-215207
base:   git://git.cmpxchg.org/linux-mmotm.git master
config: openrisc-randconfig-r011-20210113 (attached as .config)
compiler: or1k-linux-gcc (GCC) 9.3.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/0day-ci/linux/commit/95ad71591084350229e768f9c2be5350d504f896
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Daniel-Vetter/mm-dmapool-Use-might_alloc/20210113-215207
        git checkout 95ad71591084350229e768f9c2be5350d504f896
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-9.3.0 make.cross ARCH=openrisc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   mm/backing-dev.c: In function 'wb_get_create':
>> mm/backing-dev.c:647:2: error: implicit declaration of function 'might_alloc'; did you mean 'might_lock'? [-Werror=implicit-function-declaration]
     647 |  might_alloc(gfp);
         |  ^~~~~~~~~~~
         |  might_lock
   cc1: some warnings being treated as errors


vim +647 mm/backing-dev.c

   616	
   617	/**
   618	 * wb_get_create - get wb for a given memcg, create if necessary
   619	 * @bdi: target bdi
   620	 * @memcg_css: cgroup_subsys_state of the target memcg (must have positive ref)
   621	 * @gfp: allocation mask to use
   622	 *
   623	 * Try to get the wb for @memcg_css on @bdi.  If it doesn't exist, try to
   624	 * create one.  The returned wb has its refcount incremented.
   625	 *
   626	 * This function uses css_get() on @memcg_css and thus expects its refcnt
   627	 * to be positive on invocation.  IOW, rcu_read_lock() protection on
   628	 * @memcg_css isn't enough.  try_get it before calling this function.
   629	 *
   630	 * A wb is keyed by its associated memcg.  As blkcg implicitly enables
   631	 * memcg on the default hierarchy, memcg association is guaranteed to be
   632	 * more specific (equal or descendant to the associated blkcg) and thus can
   633	 * identify both the memcg and blkcg associations.
   634	 *
   635	 * Because the blkcg associated with a memcg may change as blkcg is enabled
   636	 * and disabled closer to root in the hierarchy, each wb keeps track of
   637	 * both the memcg and blkcg associated with it and verifies the blkcg on
   638	 * each lookup.  On mismatch, the existing wb is discarded and a new one is
   639	 * created.
   640	 */
   641	struct bdi_writeback *wb_get_create(struct backing_dev_info *bdi,
   642					    struct cgroup_subsys_state *memcg_css,
   643					    gfp_t gfp)
   644	{
   645		struct bdi_writeback *wb;
   646	
 > 647		might_alloc(gfp);
   648	
   649		if (!memcg_css->parent)
   650			return &bdi->wb;
   651	
   652		do {
   653			rcu_read_lock();
   654			wb = radix_tree_lookup(&bdi->cgwb_tree, memcg_css->id);
   655			if (wb) {
   656				struct cgroup_subsys_state *blkcg_css;
   657	
   658				/* see whether the blkcg association has changed */
   659				blkcg_css = cgroup_get_e_css(memcg_css->cgroup,
   660							     &io_cgrp_subsys);
   661				if (unlikely(wb->blkcg_css != blkcg_css ||
   662					     !wb_tryget(wb)))
   663					wb = NULL;
   664				css_put(blkcg_css);
   665			}
   666			rcu_read_unlock();
   667		} while (!wb && !cgwb_create(bdi, memcg_css, gfp));
   668	
   669		return wb;
   670	}
   671	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--HcAYCG3uE/tztfnV
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
uukeDi/Oqxqjat0Vvht8LMb55F94qpmBMCYBAA==

--HcAYCG3uE/tztfnV
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--HcAYCG3uE/tztfnV--
