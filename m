Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53B474B2C3C
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Feb 2022 18:59:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9BF310EADC;
	Fri, 11 Feb 2022 17:59:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67DB010E24D
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Feb 2022 17:59:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644602344; x=1676138344;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=dfDXeP7AiMHViCfUwz3sPdeWt24ri9rYQUIoHVSUuNw=;
 b=h2dNsABRiJoZtanDxesmlUDpRUUcxcL4l/lAdyIl1baJlyXkZVtPboo5
 vD2mEIJR4FLs0PMrYK5hbBeGhEjW8e1DqWblSzOQj0wtrQcfqnlyzuRd3
 CLKrXTlG1/7tvhIU2KZw+ynfhqQ5qscYgyaXIYPGFXvP3FiOFtFQAAmEv
 yBhsP/F/7Dvrj88eBSB+4OXqZGmINyMWnmlhejzMpucBjgCjnB8UM6u29
 WI6rFkhMzsyiYjKEtft9rUPZ4hLSKO1A6unEhBSmwqXIv4PbXPCWz9hbO
 9vJmxgS3F6+mpxoMKfjM7RDBDqsU+tytSWkwELQv5p+bWd2hKze2FFmCQ g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10255"; a="233330862"
X-IronPort-AV: E=Sophos;i="5.88,361,1635231600"; d="scan'208";a="233330862"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2022 09:59:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,361,1635231600"; d="scan'208";a="602439868"
Received: from lkp-server01.sh.intel.com (HELO d95dc2dabeb1) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 11 Feb 2022 09:59:01 -0800
Received: from kbuild by d95dc2dabeb1 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nIaCD-0004uZ-5V; Fri, 11 Feb 2022 17:59:01 +0000
Date: Sat, 12 Feb 2022 01:58:12 +0800
From: kernel test robot <lkp@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <202202112244.gwKGUmOj-lkp@intel.com>
References: <20220211090629.15555-8-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220211090629.15555-8-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 7/8] drm/i915: Clean up SSKPD/MLTR defines
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
Cc: llvm@lists.linux.dev, kbuild-all@lists.01.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Ville,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on drm-intel/for-linux-next]
[also build test WARNING on drm-tip/drm-tip next-20220211]
[cannot apply to v5.17-rc3]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Ville-Syrjala/drm-i915-Plane-wm-cleanups/20220211-170856
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
config: i386-randconfig-a011 (https://download.01.org/0day-ci/archive/20220211/202202112244.gwKGUmOj-lkp@intel.com/config)
compiler: clang version 15.0.0 (https://github.com/llvm/llvm-project f6685f774697c85d6a352dcea013f46a99f9fe31)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/0day-ci/linux/commit/24cedeb8c8ca97104e12936a4647665dd0e9b0f8
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Ville-Syrjala/drm-i915-Plane-wm-cleanups/20220211-170856
        git checkout 24cedeb8c8ca97104e12936a4647665dd0e9b0f8
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=i386 SHELL=/bin/bash drivers/gpu/drm/i915/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/i915/intel_pm.c:2949:27: warning: shift count >= width of type [-Wshift-count-overflow]
                   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
                           ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:1900:34: note: expanded from macro 'SSKPD_NEW_WM0_MASK_HSW'
   #define   SSKPD_NEW_WM0_MASK_HSW        REG_GENMASK64(63, 56)
                                           ^
   drivers/gpu/drm/i915/i915_reg_defs.h:53:38: note: expanded from macro 'REG_GENMASK64'
   #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
                                        ^
   drivers/gpu/drm/i915/i915_reg_defs.h:26:12: note: expanded from macro '_REG_GENMASK'
           ((__type)(GENMASK(__high, __low) +                              \
                     ^
   note: (skipping 9 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:326:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                   ~~~~~~^~~~~~~~~~~
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                              ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:58:52: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                      ^~~~
>> drivers/gpu/drm/i915/intel_pm.c:2949:27: warning: shift count is negative [-Wshift-count-negative]
                   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
                           ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:1900:34: note: expanded from macro 'SSKPD_NEW_WM0_MASK_HSW'
   #define   SSKPD_NEW_WM0_MASK_HSW        REG_GENMASK64(63, 56)
                                           ^
   drivers/gpu/drm/i915/i915_reg_defs.h:53:38: note: expanded from macro 'REG_GENMASK64'
   #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
                                        ^
   drivers/gpu/drm/i915/i915_reg_defs.h:26:12: note: expanded from macro '_REG_GENMASK'
           ((__type)(GENMASK(__high, __low) +                              \
                     ^
   note: (skipping 9 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:326:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                   ~~~~~~^~~~~~~~~~~
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                              ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:58:52: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                      ^~~~
>> drivers/gpu/drm/i915/intel_pm.c:2949:27: warning: shift count >= width of type [-Wshift-count-overflow]
                   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
                           ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:1900:34: note: expanded from macro 'SSKPD_NEW_WM0_MASK_HSW'
   #define   SSKPD_NEW_WM0_MASK_HSW        REG_GENMASK64(63, 56)
                                           ^
   drivers/gpu/drm/i915/i915_reg_defs.h:53:38: note: expanded from macro 'REG_GENMASK64'
   #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
                                        ^
   drivers/gpu/drm/i915/i915_reg_defs.h:26:12: note: expanded from macro '_REG_GENMASK'
           ((__type)(GENMASK(__high, __low) +                              \
                     ^
   note: (skipping 9 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:326:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                   ~~~~~~^~~~~~~~~~~
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                              ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:58:61: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                               ^~~~
>> drivers/gpu/drm/i915/intel_pm.c:2949:27: warning: shift count is negative [-Wshift-count-negative]
                   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
                           ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:1900:34: note: expanded from macro 'SSKPD_NEW_WM0_MASK_HSW'
   #define   SSKPD_NEW_WM0_MASK_HSW        REG_GENMASK64(63, 56)
                                           ^
   drivers/gpu/drm/i915/i915_reg_defs.h:53:38: note: expanded from macro 'REG_GENMASK64'
   #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
                                        ^
   drivers/gpu/drm/i915/i915_reg_defs.h:26:12: note: expanded from macro '_REG_GENMASK'
           ((__type)(GENMASK(__high, __low) +                              \
                     ^
   note: (skipping 9 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:326:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                   ~~~~~~^~~~~~~~~~~
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                              ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:58:61: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                               ^~~~
>> drivers/gpu/drm/i915/intel_pm.c:2949:27: warning: shift count >= width of type [-Wshift-count-overflow]
                   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
                           ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:1900:34: note: expanded from macro 'SSKPD_NEW_WM0_MASK_HSW'
   #define   SSKPD_NEW_WM0_MASK_HSW        REG_GENMASK64(63, 56)
                                           ^
   drivers/gpu/drm/i915/i915_reg_defs.h:53:38: note: expanded from macro 'REG_GENMASK64'
   #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
                                        ^
   drivers/gpu/drm/i915/i915_reg_defs.h:26:12: note: expanded from macro '_REG_GENMASK'
           ((__type)(GENMASK(__high, __low) +                              \
                     ^
   note: (skipping 9 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:326:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                   ~~~~~~^~~~~~~~~~~
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                              ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:58:52: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                      ^~~~
>> drivers/gpu/drm/i915/intel_pm.c:2949:27: warning: shift count is negative [-Wshift-count-negative]
                   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
                           ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:1900:34: note: expanded from macro 'SSKPD_NEW_WM0_MASK_HSW'
   #define   SSKPD_NEW_WM0_MASK_HSW        REG_GENMASK64(63, 56)
                                           ^
   drivers/gpu/drm/i915/i915_reg_defs.h:53:38: note: expanded from macro 'REG_GENMASK64'
   #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
                                        ^
   drivers/gpu/drm/i915/i915_reg_defs.h:26:12: note: expanded from macro '_REG_GENMASK'
           ((__type)(GENMASK(__high, __low) +                              \
                     ^
   note: (skipping 9 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:326:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                   ~~~~~~^~~~~~~~~~~
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                              ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:58:52: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                      ^~~~
>> drivers/gpu/drm/i915/intel_pm.c:2949:27: warning: shift count >= width of type [-Wshift-count-overflow]
                   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
                           ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:1900:34: note: expanded from macro 'SSKPD_NEW_WM0_MASK_HSW'
   #define   SSKPD_NEW_WM0_MASK_HSW        REG_GENMASK64(63, 56)
                                           ^
   drivers/gpu/drm/i915/i915_reg_defs.h:53:38: note: expanded from macro 'REG_GENMASK64'
   #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
                                        ^
   drivers/gpu/drm/i915/i915_reg_defs.h:26:12: note: expanded from macro '_REG_GENMASK'
           ((__type)(GENMASK(__high, __low) +                              \
                     ^
   note: (skipping 9 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:326:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                   ~~~~~~^~~~~~~~~~~
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                              ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:58:61: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                               ^~~~
>> drivers/gpu/drm/i915/intel_pm.c:2949:27: warning: shift count is negative [-Wshift-count-negative]
                   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
                           ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:1900:34: note: expanded from macro 'SSKPD_NEW_WM0_MASK_HSW'
   #define   SSKPD_NEW_WM0_MASK_HSW        REG_GENMASK64(63, 56)
                                           ^
   drivers/gpu/drm/i915/i915_reg_defs.h:53:38: note: expanded from macro 'REG_GENMASK64'
   #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
                                        ^
   drivers/gpu/drm/i915/i915_reg_defs.h:26:12: note: expanded from macro '_REG_GENMASK'
           ((__type)(GENMASK(__high, __low) +                              \
                     ^
   note: (skipping 9 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:326:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                   ~~~~~~^~~~~~~~~~~
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                              ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:58:61: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                               ^~~~
>> drivers/gpu/drm/i915/intel_pm.c:2949:27: warning: shift count >= width of type [-Wshift-count-overflow]
                   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
                           ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:1900:34: note: expanded from macro 'SSKPD_NEW_WM0_MASK_HSW'
   #define   SSKPD_NEW_WM0_MASK_HSW        REG_GENMASK64(63, 56)
                                           ^
   drivers/gpu/drm/i915/i915_reg_defs.h:53:38: note: expanded from macro 'REG_GENMASK64'
   #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
                                        ^
   drivers/gpu/drm/i915/i915_reg_defs.h:26:12: note: expanded from macro '_REG_GENMASK'
           ((__type)(GENMASK(__high, __low) +                              \
                     ^
   note: (skipping 9 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:326:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                   ~~~~~~^~~~~~~~~~~
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                              ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:58:52: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                      ^~~~
>> drivers/gpu/drm/i915/intel_pm.c:2949:27: warning: shift count is negative [-Wshift-count-negative]
                   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
                           ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:1900:34: note: expanded from macro 'SSKPD_NEW_WM0_MASK_HSW'
   #define   SSKPD_NEW_WM0_MASK_HSW        REG_GENMASK64(63, 56)
                                           ^
   drivers/gpu/drm/i915/i915_reg_defs.h:53:38: note: expanded from macro 'REG_GENMASK64'
   #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
                                        ^
   drivers/gpu/drm/i915/i915_reg_defs.h:26:12: note: expanded from macro '_REG_GENMASK'
           ((__type)(GENMASK(__high, __low) +                              \
                     ^
   note: (skipping 9 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:326:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                   ~~~~~~^~~~~~~~~~~
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                              ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:58:52: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                      ^~~~
>> drivers/gpu/drm/i915/intel_pm.c:2949:27: warning: shift count >= width of type [-Wshift-count-overflow]
                   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
                           ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:1900:34: note: expanded from macro 'SSKPD_NEW_WM0_MASK_HSW'
   #define   SSKPD_NEW_WM0_MASK_HSW        REG_GENMASK64(63, 56)
                                           ^
   drivers/gpu/drm/i915/i915_reg_defs.h:53:38: note: expanded from macro 'REG_GENMASK64'
   #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
                                        ^
   drivers/gpu/drm/i915/i915_reg_defs.h:26:12: note: expanded from macro '_REG_GENMASK'
           ((__type)(GENMASK(__high, __low) +                              \
                     ^
   note: (skipping 10 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:326:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                   ~~~~~~^~~~~~~~~~~
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                              ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:58:52: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                      ^~~~
>> drivers/gpu/drm/i915/intel_pm.c:2949:27: warning: shift count is negative [-Wshift-count-negative]
                   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
                           ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:1900:34: note: expanded from macro 'SSKPD_NEW_WM0_MASK_HSW'
   #define   SSKPD_NEW_WM0_MASK_HSW        REG_GENMASK64(63, 56)
                                           ^
   drivers/gpu/drm/i915/i915_reg_defs.h:53:38: note: expanded from macro 'REG_GENMASK64'
   #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
                                        ^
   drivers/gpu/drm/i915/i915_reg_defs.h:26:12: note: expanded from macro '_REG_GENMASK'
           ((__type)(GENMASK(__high, __low) +                              \
                     ^
   note: (skipping 10 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:326:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                   ~~~~~~^~~~~~~~~~~
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                              ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:58:52: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                      ^~~~
>> drivers/gpu/drm/i915/intel_pm.c:2949:27: warning: shift count >= width of type [-Wshift-count-overflow]
                   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
                           ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:1900:34: note: expanded from macro 'SSKPD_NEW_WM0_MASK_HSW'
   #define   SSKPD_NEW_WM0_MASK_HSW        REG_GENMASK64(63, 56)
                                           ^
   drivers/gpu/drm/i915/i915_reg_defs.h:53:38: note: expanded from macro 'REG_GENMASK64'
   #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
                                        ^
   drivers/gpu/drm/i915/i915_reg_defs.h:26:12: note: expanded from macro '_REG_GENMASK'
           ((__type)(GENMASK(__high, __low) +                              \
                     ^
   note: (skipping 9 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:326:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                   ~~~~~~^~~~~~~~~~~
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                              ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:58:61: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                               ^~~~
>> drivers/gpu/drm/i915/intel_pm.c:2949:27: warning: shift count is negative [-Wshift-count-negative]
                   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
                           ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:1900:34: note: expanded from macro 'SSKPD_NEW_WM0_MASK_HSW'
   #define   SSKPD_NEW_WM0_MASK_HSW        REG_GENMASK64(63, 56)
                                           ^
   drivers/gpu/drm/i915/i915_reg_defs.h:53:38: note: expanded from macro 'REG_GENMASK64'
   #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
                                        ^
   drivers/gpu/drm/i915/i915_reg_defs.h:26:12: note: expanded from macro '_REG_GENMASK'
           ((__type)(GENMASK(__high, __low) +                              \
                     ^
   note: (skipping 9 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:326:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                   ~~~~~~^~~~~~~~~~~
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                              ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:58:61: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                               ^~~~
>> drivers/gpu/drm/i915/intel_pm.c:2949:27: warning: shift count >= width of type [-Wshift-count-overflow]
                   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
                           ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:1900:34: note: expanded from macro 'SSKPD_NEW_WM0_MASK_HSW'
   #define   SSKPD_NEW_WM0_MASK_HSW        REG_GENMASK64(63, 56)
                                           ^
   drivers/gpu/drm/i915/i915_reg_defs.h:53:38: note: expanded from macro 'REG_GENMASK64'
   #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
                                        ^
   drivers/gpu/drm/i915/i915_reg_defs.h:26:12: note: expanded from macro '_REG_GENMASK'
           ((__type)(GENMASK(__high, __low) +                              \
                     ^
   note: (skipping 10 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:326:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                   ~~~~~~^~~~~~~~~~~
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                              ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:58:61: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                               ^~~~
>> drivers/gpu/drm/i915/intel_pm.c:2949:27: warning: shift count is negative [-Wshift-count-negative]
                   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
                           ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:1900:34: note: expanded from macro 'SSKPD_NEW_WM0_MASK_HSW'
   #define   SSKPD_NEW_WM0_MASK_HSW        REG_GENMASK64(63, 56)
                                           ^
   drivers/gpu/drm/i915/i915_reg_defs.h:53:38: note: expanded from macro 'REG_GENMASK64'
   #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
                                        ^
   drivers/gpu/drm/i915/i915_reg_defs.h:26:12: note: expanded from macro '_REG_GENMASK'
           ((__type)(GENMASK(__high, __low) +                              \
                     ^
   note: (skipping 10 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:326:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                   ~~~~~~^~~~~~~~~~~
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                              ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:58:61: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                               ^~~~
>> drivers/gpu/drm/i915/intel_pm.c:2949:27: warning: shift count >= width of type [-Wshift-count-overflow]
                   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
                           ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:1900:34: note: expanded from macro 'SSKPD_NEW_WM0_MASK_HSW'
   #define   SSKPD_NEW_WM0_MASK_HSW        REG_GENMASK64(63, 56)
                                           ^
   drivers/gpu/drm/i915/i915_reg_defs.h:53:38: note: expanded from macro 'REG_GENMASK64'
   #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
                                        ^
   drivers/gpu/drm/i915/i915_reg_defs.h:26:12: note: expanded from macro '_REG_GENMASK'
           ((__type)(GENMASK(__high, __low) +                              \
                     ^
   note: (skipping 10 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:326:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                   ~~~~~~^~~~~~~~~~~
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                              ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:58:52: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                      ^~~~
>> drivers/gpu/drm/i915/intel_pm.c:2949:27: warning: shift count is negative [-Wshift-count-negative]
                   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
                           ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:1900:34: note: expanded from macro 'SSKPD_NEW_WM0_MASK_HSW'
   #define   SSKPD_NEW_WM0_MASK_HSW        REG_GENMASK64(63, 56)
                                           ^
   drivers/gpu/drm/i915/i915_reg_defs.h:53:38: note: expanded from macro 'REG_GENMASK64'
   #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
                                        ^
   drivers/gpu/drm/i915/i915_reg_defs.h:26:12: note: expanded from macro '_REG_GENMASK'
           ((__type)(GENMASK(__high, __low) +                              \
                     ^
   note: (skipping 10 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:326:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                   ~~~~~~^~~~~~~~~~~
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                              ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:58:52: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                      ^~~~
>> drivers/gpu/drm/i915/intel_pm.c:2949:27: warning: shift count >= width of type [-Wshift-count-overflow]
                   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
                           ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:1900:34: note: expanded from macro 'SSKPD_NEW_WM0_MASK_HSW'
   #define   SSKPD_NEW_WM0_MASK_HSW        REG_GENMASK64(63, 56)
                                           ^
   drivers/gpu/drm/i915/i915_reg_defs.h:53:38: note: expanded from macro 'REG_GENMASK64'
   #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
                                        ^
   drivers/gpu/drm/i915/i915_reg_defs.h:26:12: note: expanded from macro '_REG_GENMASK'
           ((__type)(GENMASK(__high, __low) +                              \
                     ^
   note: (skipping 10 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:326:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                   ~~~~~~^~~~~~~~~~~
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                              ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:58:61: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                               ^~~~
>> drivers/gpu/drm/i915/intel_pm.c:2949:27: warning: shift count is negative [-Wshift-count-negative]
                   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
                           ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:1900:34: note: expanded from macro 'SSKPD_NEW_WM0_MASK_HSW'
   #define   SSKPD_NEW_WM0_MASK_HSW        REG_GENMASK64(63, 56)
                                           ^
   drivers/gpu/drm/i915/i915_reg_defs.h:53:38: note: expanded from macro 'REG_GENMASK64'
   #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
                                        ^
   drivers/gpu/drm/i915/i915_reg_defs.h:26:12: note: expanded from macro '_REG_GENMASK'
           ((__type)(GENMASK(__high, __low) +                              \
                     ^
   note: (skipping 10 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:326:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                   ~~~~~~^~~~~~~~~~~
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                              ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:58:61: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                               ^~~~
   drivers/gpu/drm/i915/intel_pm.c:2949:27: warning: shift count >= width of type [-Wshift-count-overflow]
                   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
                           ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:1900:34: note: expanded from macro 'SSKPD_NEW_WM0_MASK_HSW'
   #define   SSKPD_NEW_WM0_MASK_HSW        REG_GENMASK64(63, 56)
                                           ^
   drivers/gpu/drm/i915/i915_reg_defs.h:53:38: note: expanded from macro 'REG_GENMASK64'
   #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
                                        ^
   drivers/gpu/drm/i915/i915_reg_defs.h:26:12: note: expanded from macro '_REG_GENMASK'
           ((__type)(GENMASK(__high, __low) +                              \
                     ^
   note: (skipping 11 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:326:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                   ~~~~~~^~~~~~~~~~~
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                              ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:58:52: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                      ^~~~
   drivers/gpu/drm/i915/intel_pm.c:2949:27: warning: shift count is negative [-Wshift-count-negative]
                   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
                           ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:1900:34: note: expanded from macro 'SSKPD_NEW_WM0_MASK_HSW'
   #define   SSKPD_NEW_WM0_MASK_HSW        REG_GENMASK64(63, 56)
                                           ^
   drivers/gpu/drm/i915/i915_reg_defs.h:53:38: note: expanded from macro 'REG_GENMASK64'
   #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
                                        ^
   drivers/gpu/drm/i915/i915_reg_defs.h:26:12: note: expanded from macro '_REG_GENMASK'
           ((__type)(GENMASK(__high, __low) +                              \
                     ^
   note: (skipping 11 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:326:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                   ~~~~~~^~~~~~~~~~~
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                              ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:58:52: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                      ^~~~
   drivers/gpu/drm/i915/intel_pm.c:2949:27: warning: shift count >= width of type [-Wshift-count-overflow]
                   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
                           ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:1900:34: note: expanded from macro 'SSKPD_NEW_WM0_MASK_HSW'
   #define   SSKPD_NEW_WM0_MASK_HSW        REG_GENMASK64(63, 56)
                                           ^
   drivers/gpu/drm/i915/i915_reg_defs.h:53:38: note: expanded from macro 'REG_GENMASK64'
   #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
                                        ^
   drivers/gpu/drm/i915/i915_reg_defs.h:26:12: note: expanded from macro '_REG_GENMASK'
           ((__type)(GENMASK(__high, __low) +                              \
                     ^
   note: (skipping 12 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:326:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                   ~~~~~~^~~~~~~~~~~
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                              ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:58:52: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                      ^~~~
   drivers/gpu/drm/i915/intel_pm.c:2949:27: warning: shift count is negative [-Wshift-count-negative]
                   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
                           ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:1900:34: note: expanded from macro 'SSKPD_NEW_WM0_MASK_HSW'
   #define   SSKPD_NEW_WM0_MASK_HSW        REG_GENMASK64(63, 56)
                                           ^
   drivers/gpu/drm/i915/i915_reg_defs.h:53:38: note: expanded from macro 'REG_GENMASK64'
   #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
                                        ^
   drivers/gpu/drm/i915/i915_reg_defs.h:26:12: note: expanded from macro '_REG_GENMASK'
           ((__type)(GENMASK(__high, __low) +                              \
                     ^
   note: (skipping 12 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)


vim +2949 drivers/gpu/drm/i915/intel_pm.c

  2859	
  2860	static void intel_read_wm_latency(struct drm_i915_private *dev_priv,
  2861					  u16 wm[8])
  2862	{
  2863		struct intel_uncore *uncore = &dev_priv->uncore;
  2864	
  2865		if (DISPLAY_VER(dev_priv) >= 9) {
  2866			u32 val;
  2867			int ret, i;
  2868			int level, max_level = ilk_wm_max_level(dev_priv);
  2869			int mult = IS_DG2(dev_priv) ? 2 : 1;
  2870	
  2871			/* read the first set of memory latencies[0:3] */
  2872			val = 0; /* data0 to be programmed to 0 for first set */
  2873			ret = snb_pcode_read(dev_priv, GEN9_PCODE_READ_MEM_LATENCY,
  2874					     &val, NULL);
  2875	
  2876			if (ret) {
  2877				drm_err(&dev_priv->drm,
  2878					"SKL Mailbox read error = %d\n", ret);
  2879				return;
  2880			}
  2881	
  2882			wm[0] = (val & GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
  2883			wm[1] = ((val >> GEN9_MEM_LATENCY_LEVEL_1_5_SHIFT) &
  2884					GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
  2885			wm[2] = ((val >> GEN9_MEM_LATENCY_LEVEL_2_6_SHIFT) &
  2886					GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
  2887			wm[3] = ((val >> GEN9_MEM_LATENCY_LEVEL_3_7_SHIFT) &
  2888					GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
  2889	
  2890			/* read the second set of memory latencies[4:7] */
  2891			val = 1; /* data0 to be programmed to 1 for second set */
  2892			ret = snb_pcode_read(dev_priv, GEN9_PCODE_READ_MEM_LATENCY,
  2893					     &val, NULL);
  2894			if (ret) {
  2895				drm_err(&dev_priv->drm,
  2896					"SKL Mailbox read error = %d\n", ret);
  2897				return;
  2898			}
  2899	
  2900			wm[4] = (val & GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
  2901			wm[5] = ((val >> GEN9_MEM_LATENCY_LEVEL_1_5_SHIFT) &
  2902					GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
  2903			wm[6] = ((val >> GEN9_MEM_LATENCY_LEVEL_2_6_SHIFT) &
  2904					GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
  2905			wm[7] = ((val >> GEN9_MEM_LATENCY_LEVEL_3_7_SHIFT) &
  2906					GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
  2907	
  2908			/*
  2909			 * If a level n (n > 1) has a 0us latency, all levels m (m >= n)
  2910			 * need to be disabled. We make sure to sanitize the values out
  2911			 * of the punit to satisfy this requirement.
  2912			 */
  2913			for (level = 1; level <= max_level; level++) {
  2914				if (wm[level] == 0) {
  2915					for (i = level + 1; i <= max_level; i++)
  2916						wm[i] = 0;
  2917	
  2918					max_level = level - 1;
  2919	
  2920					break;
  2921				}
  2922			}
  2923	
  2924			/*
  2925			 * WaWmMemoryReadLatency
  2926			 *
  2927			 * punit doesn't take into account the read latency so we need
  2928			 * to add proper adjustement to each valid level we retrieve
  2929			 * from the punit when level 0 response data is 0us.
  2930			 */
  2931			if (wm[0] == 0) {
  2932				u8 adjust = DISPLAY_VER(dev_priv) >= 12 ? 3 : 2;
  2933	
  2934				for (level = 0; level <= max_level; level++)
  2935					wm[level] += adjust;
  2936			}
  2937	
  2938			/*
  2939			 * WA Level-0 adjustment for 16GB DIMMs: SKL+
  2940			 * If we could not get dimm info enable this WA to prevent from
  2941			 * any underrun. If not able to get Dimm info assume 16GB dimm
  2942			 * to avoid any underrun.
  2943			 */
  2944			if (dev_priv->dram_info.wm_lv_0_adjust_needed)
  2945				wm[0] += 1;
  2946		} else if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
  2947			u64 sskpd = intel_uncore_read64(uncore, MCH_SSKPD);
  2948	
> 2949			wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
  2950			if (wm[0] == 0)
  2951				wm[0] = REG_FIELD_GET64(SSKPD_OLD_WM0_MASK_HSW, sskpd);
  2952			wm[1] = REG_FIELD_GET64(SSKPD_WM1_MASK_HSW, sskpd);
  2953			wm[2] = REG_FIELD_GET64(SSKPD_WM2_MASK_HSW, sskpd);
  2954			wm[3] = REG_FIELD_GET64(SSKPD_WM3_MASK_HSW, sskpd);
  2955			wm[4] = REG_FIELD_GET64(SSKPD_WM4_MASK_HSW, sskpd);
  2956		} else if (DISPLAY_VER(dev_priv) >= 6) {
  2957			u32 sskpd = intel_uncore_read(uncore, MCH_SSKPD);
  2958	
  2959			wm[0] = REG_FIELD_GET(SSKPD_WM0_MASK_SNB, sskpd);
  2960			wm[1] = REG_FIELD_GET(SSKPD_WM1_MASK_SNB, sskpd);
  2961			wm[2] = REG_FIELD_GET(SSKPD_WM2_MASK_SNB, sskpd);
  2962			wm[3] = REG_FIELD_GET(SSKPD_WM3_MASK_SNB, sskpd);
  2963		} else if (DISPLAY_VER(dev_priv) >= 5) {
  2964			u32 mltr = intel_uncore_read(uncore, MLTR_ILK);
  2965	
  2966			/* ILK primary LP0 latency is 700 ns */
  2967			wm[0] = 7;
  2968			wm[1] = REG_FIELD_GET(MLTR_WM1_MASK, mltr);
  2969			wm[2] = REG_FIELD_GET(MLTR_WM2_MASK, mltr);
  2970		} else {
  2971			MISSING_CASE(INTEL_DEVID(dev_priv));
  2972		}
  2973	}
  2974	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
