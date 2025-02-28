Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F596A4A288
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2025 20:17:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12D2010E0DD;
	Fri, 28 Feb 2025 19:17:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qn2bf91J";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 680BB10E0DD;
 Fri, 28 Feb 2025 19:17:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740770227; x=1772306227;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ho390CTLxLWLxYMiAF4hzlPShqSSY9DuYIYOssywjhQ=;
 b=Qn2bf91JADKHs9bpy+rEFmUrI6x9IS4iAE5LZNW/qyaHvgdxBqdi5Hv7
 y2eoHTWBpYJO02cMel5vE76i/HmIddBZRCRu+ZbXDWOFhdhxUiP+ggfTH
 v6p8P6ly+zygcZ1FoBtgr4udvOKxlrUbey93JFpizLlJ+v1Yjb2smzSwO
 9/j42KIV+4LLQaz/loynyGjs8PJ9BoChg3iERLhV6leY9pN5IoBh6Fc5X
 QW0pjecLXfpWl7aJxfvKL2Jgwy+eDFl8XbFZlhhHXmf6OoN6rqkhkb+/1
 U7XEbUGq+iyHyQuecl6QAn7iPwi+JBkMbYSgSYSk7w0VOfyF9mRxTP6Gh A==;
X-CSE-ConnectionGUID: lG2eHQVkTDWV6UK/obfuFA==
X-CSE-MsgGUID: IBiy6LD/QZGbvS/rqoY0dA==
X-IronPort-AV: E=McAfee;i="6700,10204,11359"; a="41839354"
X-IronPort-AV: E=Sophos;i="6.13,323,1732608000"; d="scan'208";a="41839354"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2025 11:17:07 -0800
X-CSE-ConnectionGUID: HLl12xToTn60MEvK22YrTg==
X-CSE-MsgGUID: q1o6TiMqSVeJ46KC9IyXQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,323,1732608000"; d="scan'208";a="118087580"
Received: from lkp-server02.sh.intel.com (HELO 76cde6cc1f07) ([10.239.97.151])
 by fmviesa009.fm.intel.com with ESMTP; 28 Feb 2025 11:17:05 -0800
Received: from kbuild by 76cde6cc1f07 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1to5r5-000FOQ-1U;
 Fri, 28 Feb 2025 19:17:03 +0000
Date: Sat, 1 Mar 2025 03:16:41 +0800
From: kernel test robot <lkp@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev, jani.nikula@intel.com
Subject: Re: [PATCH 1/2] drm/xe/compat: refactor compat i915_drv.h
Message-ID: <202503010231.ZOOOjLUU-lkp@intel.com>
References: <20250228142539.3216960-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250228142539.3216960-1-jani.nikula@intel.com>
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

kernel test robot noticed the following build warnings:

[auto build test WARNING on next-20250228]
[also build test WARNING on linus/master v6.14-rc4]
[cannot apply to drm-xe/drm-xe-next v6.14-rc4 v6.14-rc3 v6.14-rc2]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Jani-Nikula/drm-i915-plane-convert-intel_atomic_plane-ch-to-struct-intel_display/20250228-222835
base:   next-20250228
patch link:    https://lore.kernel.org/r/20250228142539.3216960-1-jani.nikula%40intel.com
patch subject: [PATCH 1/2] drm/xe/compat: refactor compat i915_drv.h
config: arm-randconfig-003-20250301 (https://download.01.org/0day-ci/archive/20250301/202503010231.ZOOOjLUU-lkp@intel.com/config)
compiler: clang version 21.0.0git (https://github.com/llvm/llvm-project 14170b16028c087ca154878f5ed93d3089a965c6)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250301/202503010231.ZOOOjLUU-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202503010231.ZOOOjLUU-lkp@intel.com/

All warnings (new ones prefixed by >>):

   In file included from drivers/gpu/drm/i915/display/intel_atomic_plane.c:37:
   In file included from include/drm/drm_atomic_helper.h:31:
   In file included from include/drm/drm_crtc.h:32:
   In file included from include/drm/drm_modes.h:33:
   In file included from include/drm/drm_connector.h:32:
   In file included from include/drm/drm_util.h:36:
   In file included from include/linux/kgdb.h:19:
   In file included from include/linux/kprobes.h:28:
   In file included from include/linux/ftrace.h:13:
   In file included from include/linux/kallsyms.h:13:
   In file included from include/linux/mm.h:2287:
   include/linux/vmstat.h:507:36: warning: arithmetic between different enumeration types ('enum node_stat_item' and 'enum lru_list') [-Wenum-enum-conversion]
     507 |         return node_stat_name(NR_LRU_BASE + lru) + 3; // skip "nr_"
         |                               ~~~~~~~~~~~ ^ ~~~
   In file included from drivers/gpu/drm/i915/display/intel_atomic_plane.c:43:
>> drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object.h:4:9: warning: '__I915_GEM_OBJECT_H__' is used as a header guard here, followed by #define of a different macro [-Wheader-guard]
       4 | #ifndef __I915_GEM_OBJECT_H__
         |         ^~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object.h:5:9: note: '__i915_GEM_OBJECT_H__' is defined here; did you mean '__I915_GEM_OBJECT_H__'?
       5 | #define __i915_GEM_OBJECT_H__
         |         ^~~~~~~~~~~~~~~~~~~~~
         |         __I915_GEM_OBJECT_H__
   2 warnings generated.


vim +/__I915_GEM_OBJECT_H__ +4 drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object.h

     3	
   > 4	#ifndef __I915_GEM_OBJECT_H__
     5	#define __i915_GEM_OBJECT_H__
     6	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
