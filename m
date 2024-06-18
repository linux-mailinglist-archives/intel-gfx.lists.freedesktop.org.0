Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D04690E03E
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2024 01:55:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE00110E81C;
	Tue, 18 Jun 2024 23:55:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jjIn9juS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB98A10E81C;
 Tue, 18 Jun 2024 23:55:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718754931; x=1750290931;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=zXLcOd8f/IUUZWBIjRO5fkxslRG/F3OnbgS9d0uMKXg=;
 b=jjIn9juSyAae8PnION7txFotUeACJuvQQ+UWSPG5bLZlGMnVgsOqN1uP
 +HqFIelBO3X8/HIK4EPTzL0J7AkJPAxk8dntye3I/SjvAi4KE7n1cSWbm
 N/kNtvBb9U5emoVWlCRCxNcs7bbp102c1/l2JFDcKuYgVXcPRupJxFtvI
 HXVIa4DT9N8Vg4R4jPCwscanawxmK4d9vfuJB2g0HYmewkZ2T82N1jD0T
 iY3rINgeiLNugE7IJ+ISOOUoHABMVzXn3G3hIRGrS+mxYbvUXhpxINF+z
 R3wPX6i1nO+Xtil+bXtL4urDO9EE3/i//y71bTu3wmAx/EnlodwNiVcOg g==;
X-CSE-ConnectionGUID: zqQ8GsDMR7erRo4fUQNhNg==
X-CSE-MsgGUID: a65IMJRRS4yF3RYOpIFZVg==
X-IronPort-AV: E=McAfee;i="6700,10204,11107"; a="27086554"
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="27086554"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 16:55:30 -0700
X-CSE-ConnectionGUID: djeRHtVPSXWB3YKZHEZGiA==
X-CSE-MsgGUID: LL6VSOT4THy4ys1LL4hZEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="72933203"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by fmviesa001.fm.intel.com with ESMTP; 18 Jun 2024 16:55:28 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sJife-00062q-1n;
 Tue, 18 Jun 2024 23:55:26 +0000
Date: Wed, 19 Jun 2024 07:54:38 +0800
From: kernel test robot <lkp@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: oe-kbuild-all@lists.linux.dev, jani.nikula@intel.com
Subject: Re: [PATCH 5/5] drm/i915/frontbuffer: make struct intel_frontbuffer
 opaque
Message-ID: <202406190757.Uv3UaYyb-lkp@intel.com>
References: <ba2e3e16b5c47f7e6d434d8fa815e965458a98d5.1718633874.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ba2e3e16b5c47f7e6d434d8fa815e965458a98d5.1718633874.git.jani.nikula@intel.com>
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

Hi Jani,

kernel test robot noticed the following build errors:

[auto build test ERROR on drm-intel/for-linux-next]
[also build test ERROR on drm-intel/for-linux-next-fixes drm-tip/drm-tip drm-xe/drm-xe-next linus/master v6.10-rc4 next-20240618]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Jani-Nikula/drm-i915-frontbuffer-un-inline-frontbuffer-bits-checks/20240617-223108
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
patch link:    https://lore.kernel.org/r/ba2e3e16b5c47f7e6d434d8fa815e965458a98d5.1718633874.git.jani.nikula%40intel.com
patch subject: [PATCH 5/5] drm/i915/frontbuffer: make struct intel_frontbuffer opaque
config: x86_64-randconfig-003-20240619 (https://download.01.org/0day-ci/archive/20240619/202406190757.Uv3UaYyb-lkp@intel.com/config)
compiler: gcc-8 (Ubuntu 8.4.0-3ubuntu2) 8.4.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240619/202406190757.Uv3UaYyb-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202406190757.Uv3UaYyb-lkp@intel.com/

All errors (new ones prefixed by >>):

   In file included from include/linux/err.h:5,
                    from include/linux/dma-fence.h:16,
                    from include/linux/dma-fence-array.h:15,
                    from drivers/gpu/drm/i915/i915_gem.c:28:
   drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h: In function 'i915_gem_object_flush_frontbuffer':
>> include/linux/rcupdate.h:463:9: error: dereferencing pointer to incomplete type 'struct intel_frontbuffer'
     typeof(*p) *local = (typeof(*p) *__force)READ_ONCE(p); \
            ^
   include/linux/compiler.h:77:42: note: in definition of macro 'unlikely'
    # define unlikely(x) __builtin_expect(!!(x), 0)
                                             ^
   include/linux/rcupdate.h:582:31: note: in expansion of macro '__rcu_access_pointer'
    #define rcu_access_pointer(p) __rcu_access_pointer((p), __UNIQUE_ID(rcu), __rcu)
                                  ^~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h:24:15: note: in expansion of macro 'rcu_access_pointer'
     if (unlikely(rcu_access_pointer(obj->frontbuffer)))
                  ^~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h: In function 'i915_gem_object_get_frontbuffer':
>> include/linux/rcupdate.h:463:9: error: dereferencing pointer to incomplete type 'struct intel_frontbuffer'
     typeof(*p) *local = (typeof(*p) *__force)READ_ONCE(p); \
            ^
   include/linux/compiler.h:76:40: note: in definition of macro 'likely'
    # define likely(x) __builtin_expect(!!(x), 1)
                                           ^
   include/linux/rcupdate.h:582:31: note: in expansion of macro '__rcu_access_pointer'
    #define rcu_access_pointer(p) __rcu_access_pointer((p), __UNIQUE_ID(rcu), __rcu)
                                  ^~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h:50:14: note: in expansion of macro 'rcu_access_pointer'
     if (likely(!rcu_access_pointer(obj->frontbuffer)))
                 ^~~~~~~~~~~~~~~~~~
--
   In file included from include/linux/array_size.h:5,
                    from include/linux/kernel.h:16,
                    from include/linux/sched/mm.h:5,
                    from drivers/gpu/drm/i915/i915_vma.c:25:
   drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h: In function 'i915_gem_object_flush_frontbuffer':
>> include/linux/rcupdate.h:463:9: error: dereferencing pointer to incomplete type 'struct intel_frontbuffer'
     typeof(*p) *local = (typeof(*p) *__force)READ_ONCE(p); \
            ^
   include/linux/compiler.h:77:42: note: in definition of macro 'unlikely'
    # define unlikely(x) __builtin_expect(!!(x), 0)
                                             ^
   include/linux/rcupdate.h:582:31: note: in expansion of macro '__rcu_access_pointer'
    #define rcu_access_pointer(p) __rcu_access_pointer((p), __UNIQUE_ID(rcu), __rcu)
                                  ^~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h:24:15: note: in expansion of macro 'rcu_access_pointer'
     if (unlikely(rcu_access_pointer(obj->frontbuffer)))
                  ^~~~~~~~~~~~~~~~~~


vim +463 include/linux/rcupdate.h

76c8eaafe4f061 Paul E. McKenney        2021-04-21  460  
24ba53017e188e Chun-Hung Tseng         2021-09-15  461  #define __rcu_access_pointer(p, local, space) \
ca5ecddfa8fcbd Paul E. McKenney        2010-04-28  462  ({ \
24ba53017e188e Chun-Hung Tseng         2021-09-15 @463  	typeof(*p) *local = (typeof(*p) *__force)READ_ONCE(p); \
423a86a610cad1 Joel Fernandes (Google  2018-12-12  464) 	rcu_check_sparse(p, space); \
24ba53017e188e Chun-Hung Tseng         2021-09-15  465  	((typeof(*p) __force __kernel *)(local)); \
ca5ecddfa8fcbd Paul E. McKenney        2010-04-28  466  })
24ba53017e188e Chun-Hung Tseng         2021-09-15  467  #define __rcu_dereference_check(p, local, c, space) \
ca5ecddfa8fcbd Paul E. McKenney        2010-04-28  468  ({ \
ac59853c06993a Pranith Kumar           2014-11-13  469  	/* Dependency order vs. p above. */ \
24ba53017e188e Chun-Hung Tseng         2021-09-15  470  	typeof(*p) *local = (typeof(*p) *__force)READ_ONCE(p); \
f78f5b90c4ffa5 Paul E. McKenney        2015-06-18  471  	RCU_LOCKDEP_WARN(!(c), "suspicious rcu_dereference_check() usage"); \
423a86a610cad1 Joel Fernandes (Google  2018-12-12  472) 	rcu_check_sparse(p, space); \
24ba53017e188e Chun-Hung Tseng         2021-09-15  473  	((typeof(*p) __force __kernel *)(local)); \
ca5ecddfa8fcbd Paul E. McKenney        2010-04-28  474  })
24ba53017e188e Chun-Hung Tseng         2021-09-15  475  #define __rcu_dereference_protected(p, local, c, space) \
ca5ecddfa8fcbd Paul E. McKenney        2010-04-28  476  ({ \
f78f5b90c4ffa5 Paul E. McKenney        2015-06-18  477  	RCU_LOCKDEP_WARN(!(c), "suspicious rcu_dereference_protected() usage"); \
423a86a610cad1 Joel Fernandes (Google  2018-12-12  478) 	rcu_check_sparse(p, space); \
ca5ecddfa8fcbd Paul E. McKenney        2010-04-28  479  	((typeof(*p) __force __kernel *)(p)); \
ca5ecddfa8fcbd Paul E. McKenney        2010-04-28  480  })
24ba53017e188e Chun-Hung Tseng         2021-09-15  481  #define __rcu_dereference_raw(p, local) \
995f1405610bd8 Paul E. McKenney        2016-07-01  482  ({ \
995f1405610bd8 Paul E. McKenney        2016-07-01  483  	/* Dependency order vs. p above. */ \
24ba53017e188e Chun-Hung Tseng         2021-09-15  484  	typeof(p) local = READ_ONCE(p); \
24ba53017e188e Chun-Hung Tseng         2021-09-15  485  	((typeof(*p) __force __kernel *)(local)); \
995f1405610bd8 Paul E. McKenney        2016-07-01  486  })
24ba53017e188e Chun-Hung Tseng         2021-09-15  487  #define rcu_dereference_raw(p) __rcu_dereference_raw(p, __UNIQUE_ID(rcu))
ca5ecddfa8fcbd Paul E. McKenney        2010-04-28  488  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
