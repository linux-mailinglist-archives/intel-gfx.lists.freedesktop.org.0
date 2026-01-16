Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23864D38A5C
	for <lists+intel-gfx@lfdr.de>; Sat, 17 Jan 2026 00:45:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90D4910E059;
	Fri, 16 Jan 2026 23:45:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fzfEC/G5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2EF810E009;
 Fri, 16 Jan 2026 23:45:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768607129; x=1800143129;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=fqiB7HS69jQKKBCbobePPS232WicGP3QukquVXWYYGY=;
 b=fzfEC/G5Jhd30LunEXyPDKa0uKMtyQUAW6indSeQq+DT4ON8+rB8xjqG
 CDW6RhmhjsY92XXhHFWj3e3QJ/jT0wLboTCNX+H/5AgqSEE0zkP3PFsSk
 U98q6M859FkKLsTXfZ7i7uIk916zsXxUoxHi6zF5egsMJgTx81Syp0SwJ
 V5XgQuEClGXDHz3sOsCnkY5oODIlUexKZ34MsWs+lf99q3cPMPL5G7fr8
 b6dsUCHK7FUUbSIcEGtv97fmYd6hTEeOa9Sqe+e/ud5ByJcYqI4N3oBsq
 QRL2GToT6SJuSZAxnVEUeVrX6ypCPtc/YeNSXqV8KDXcEvgWzkrGdL2Ne Q==;
X-CSE-ConnectionGUID: rTl2GsXiSUWfMYj2GiJWCw==
X-CSE-MsgGUID: 0ydn2nw8TzmO1wdMvWFaDA==
X-IronPort-AV: E=McAfee;i="6800,10657,11673"; a="80563683"
X-IronPort-AV: E=Sophos;i="6.21,232,1763452800"; d="scan'208";a="80563683"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2026 15:45:28 -0800
X-CSE-ConnectionGUID: kJKKiMwXQHyJKNMeN9HyBQ==
X-CSE-MsgGUID: PFyO0FQUQO+EJ28PwovR4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,232,1763452800"; d="scan'208";a="209500904"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
 by orviesa003.jf.intel.com with ESMTP; 16 Jan 2026 15:45:26 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vgtVM-00000000LMS-1CRb;
 Fri, 16 Jan 2026 23:45:24 +0000
Date: Sat, 17 Jan 2026 07:45:06 +0800
From: kernel test robot <lkp@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev, jani.nikula@intel.com
Subject: Re: [PATCH 2/2] drm/{i915,xe}/dsb: move DSB buffer to parent interface
Message-ID: <202601170744.TtAKDBe8-lkp@intel.com>
References: <523081095c7da23ce03835687fe6c5cb4ed3c77f.1768575249.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <523081095c7da23ce03835687fe6c5cb4ed3c77f.1768575249.git.jani.nikula@intel.com>
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

[auto build test ERROR on drm-i915/for-linux-next]
[also build test ERROR on drm-tip/drm-tip next-20260116]
[cannot apply to drm-i915/for-linux-next-fixes drm-xe/drm-xe-next linus/master v6.19-rc5]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Jani-Nikula/drm-i915-dsb-move-i915-specific-DSB-buffer-implementation-to-i915/20260116-225559
base:   https://gitlab.freedesktop.org/drm/i915/kernel.git for-linux-next
patch link:    https://lore.kernel.org/r/523081095c7da23ce03835687fe6c5cb4ed3c77f.1768575249.git.jani.nikula%40intel.com
patch subject: [PATCH 2/2] drm/{i915,xe}/dsb: move DSB buffer to parent interface
config: loongarch-randconfig-001-20260117 (https://download.01.org/0day-ci/archive/20260117/202601170744.TtAKDBe8-lkp@intel.com/config)
compiler: clang version 20.1.8 (https://github.com/llvm/llvm-project 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260117/202601170744.TtAKDBe8-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202601170744.TtAKDBe8-lkp@intel.com/

All error/warnings (new ones prefixed by >>):

>> drivers/gpu/drm/i915/display/intel_dsb.c:107:55: error: too many arguments provided to function-like macro invocation
     107 |         display->parent->dsb->memset(dsb->dsb_buf, idx, val, size);
         |                                                              ^
   include/linux/fortify-string.h:512:9: note: macro 'memset' defined here
     512 | #define memset(p, c, s) __fortify_memset_chk(p, c, s,                   \
         |         ^
>> drivers/gpu/drm/i915/display/intel_dsb.c:107:24: warning: expression result unused [-Wunused-value]
     107 |         display->parent->dsb->memset(dsb->dsb_buf, idx, val, size);
         |         ~~~~~~~~~~~~~~~~~~~~  ^~~~~~
   1 warning and 1 error generated.


vim +107 drivers/gpu/drm/i915/display/intel_dsb.c

   102	
   103	static void dsb_buffer_memset(struct intel_dsb *dsb, u32 idx, u32 val, size_t size)
   104	{
   105		struct intel_display *display = to_intel_display(dsb->crtc);
   106	
 > 107		display->parent->dsb->memset(dsb->dsb_buf, idx, val, size);
   108	}
   109	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
