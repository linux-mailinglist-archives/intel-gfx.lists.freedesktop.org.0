Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E4A7B2C3F
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Sep 2023 08:18:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF4D210E0DD;
	Fri, 29 Sep 2023 06:18:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2B9110E0DD
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Sep 2023 06:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695968301; x=1727504301;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=y/jabWNgcPGHwao2lOasCjVowVv+ZPJHpBZmv6SCCwM=;
 b=NlS7G9O+qI40jmYXapTk/3kJII89VnHKH/yIpS8uhUEE7kz3HnrzJVDB
 qj+vmfZ39Up6fqknw6JlI1/2CQKS5AXByys272rsamTZAWGdXGxE4RUCj
 EEKjjSzewXN5PQoeP2+UnMxAWGamDnzAKftUd4/6C+RYziJL/TcWTaVUW
 OUmCExMBuX8IEiqmFxPfv6uJd6pQh6Iezs9tAz703K3c/MyPH30EfQJi7
 pMcskTIf/S7BgPRmA8Xp+0GQwRFB4cYrdnnAEsFCQFvK5K6V6iSdc9QSq
 ieLW/QXyRqQcw4ii+9GvlaPhl2JocGJZECXIaWOuaNnur7BefubbJyVHt Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="386104823"
X-IronPort-AV: E=Sophos;i="6.03,186,1694761200"; d="scan'208";a="386104823"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 23:18:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="893321095"
X-IronPort-AV: E=Sophos;i="6.03,186,1694761200"; d="scan'208";a="893321095"
Received: from lkp-server02.sh.intel.com (HELO c3b01524d57c) ([10.239.97.151])
 by fmsmga001.fm.intel.com with ESMTP; 28 Sep 2023 23:17:08 -0700
Received: from kbuild by c3b01524d57c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qm6pO-0002Xo-2V;
 Fri, 29 Sep 2023 06:18:18 +0000
Date: Fri, 29 Sep 2023 14:18:12 +0800
From: kernel test robot <lkp@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Message-ID: <202309291431.3pKN8WtO-lkp@intel.com>
References: <d5f8aab89835a70c0af741e7f5765fc2c4875bf7.1695924021.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <d5f8aab89835a70c0af741e7f5765fc2c4875bf7.1695924021.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 09/15] drm/i915: do more in
 i915_gpu_coredump_alloc()
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
Cc: jani.nikula@intel.com, oe-kbuild-all@lists.linux.dev
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jani,

kernel test robot noticed the following build warnings:

[auto build test WARNING on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Jani-Nikula/drm-i915-stop-including-i915_utils-h-from-intel_runtime_pm-h/20230929-021205
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/d5f8aab89835a70c0af741e7f5765fc2c4875bf7.1695924021.git.jani.nikula%40intel.com
patch subject: [Intel-gfx] [PATCH 09/15] drm/i915: do more in i915_gpu_coredump_alloc()
config: x86_64-buildonly-randconfig-005-20230929 (https://download.01.org/0day-ci/archive/20230929/202309291431.3pKN8WtO-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.3.0-12) 11.3.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20230929/202309291431.3pKN8WtO-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202309291431.3pKN8WtO-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/i915/i915_gpu_error.c:1547:1: warning: no previous prototype for 'intel_engine_coredump_alloc' [-Wmissing-prototypes]
    1547 | intel_engine_coredump_alloc(struct intel_engine_cs *engine, gfp_t gfp, u32 dump_flags)
         | ^~~~~~~~~~~~~~~~~~~~~~~~~~~


vim +/intel_engine_coredump_alloc +1547 drivers/gpu/drm/i915/i915_gpu_error.c

ff20afc4cee7b6 Thomas Hellström 2021-11-29  1545  
742379c0c4001f Chris Wilson     2020-01-10  1546  struct intel_engine_coredump *
a6f0f9cf330a86 Alan Previn      2022-03-21 @1547  intel_engine_coredump_alloc(struct intel_engine_cs *engine, gfp_t gfp, u32 dump_flags)
742379c0c4001f Chris Wilson     2020-01-10  1548  {
742379c0c4001f Chris Wilson     2020-01-10  1549  	struct intel_engine_coredump *ee;
742379c0c4001f Chris Wilson     2020-01-10  1550  
742379c0c4001f Chris Wilson     2020-01-10  1551  	ee = kzalloc(sizeof(*ee), gfp);
c990b4c3597d6c Chris Wilson     2019-08-08  1552  	if (!ee)
742379c0c4001f Chris Wilson     2020-01-10  1553  		return NULL;
c990b4c3597d6c Chris Wilson     2019-08-08  1554  
742379c0c4001f Chris Wilson     2020-01-10  1555  	ee->engine = engine;
372fbb8e3927fc Chris Wilson     2014-01-27  1556  
a6f0f9cf330a86 Alan Previn      2022-03-21  1557  	if (!(dump_flags & CORE_DUMP_FLAG_IS_GUC_CAPTURE)) {
742379c0c4001f Chris Wilson     2020-01-10  1558  		engine_record_registers(ee);
742379c0c4001f Chris Wilson     2020-01-10  1559  		engine_record_execlists(ee);
a6f0f9cf330a86 Alan Previn      2022-03-21  1560  	}
3bdd4f84853106 Chris Wilson     2019-07-22  1561  
742379c0c4001f Chris Wilson     2020-01-10  1562  	return ee;
c990b4c3597d6c Chris Wilson     2019-08-08  1563  }
ae6c4806927b8b Daniel Vetter    2014-08-06  1564  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
