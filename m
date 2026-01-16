Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8107D38985
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jan 2026 23:59:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B008310E03B;
	Fri, 16 Jan 2026 22:59:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nRI541Q/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10BD510E009;
 Fri, 16 Jan 2026 22:59:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768604367; x=1800140367;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Qqp+IYbfM+Dtp6kbbFZiO1GXeE5SUcIlw7bci7bAn3Q=;
 b=nRI541Q/GRsmvLZutp2qgH9Eynl/Gl7zNBGj9qHtMknS4Webh9p5/dBz
 0jal3ZmcwiOtHSxlMBPBz7e7eC3wESbxB+bt8YkZBdJ9onpw26plpboZF
 GZ+KYtHMuXuGnzcjHIcZ7xj1I+YxoaCrQMkTcSUD2fKLzKkyac0Ivmj7P
 WzTaV2Xv+XGWtUYTia9Zs87Uwy07dXc/clTuVpWgv4l4chW57C154YT2G
 Wg9frZLtFGHeFdfLhtlQwwSE2iueGjwLoJrFzZl8/qBcEUvy7v/aBIONd
 Vu06IvoS5EzvOc0PrmTIZ66kPcJBiX9vVPHKFVqIsIa8mcq1eDng1bp+i A==;
X-CSE-ConnectionGUID: yLi47fnrQ3uAVmI6+vlGwg==
X-CSE-MsgGUID: ZrDgKOX2RxeTbH2hxZs91Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11673"; a="80561547"
X-IronPort-AV: E=Sophos;i="6.21,232,1763452800"; d="scan'208";a="80561547"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2026 14:59:27 -0800
X-CSE-ConnectionGUID: TCx3gd62RYaY4LbefaPv2A==
X-CSE-MsgGUID: QMegt+ZVTx663sK5AgfsSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,232,1763452800"; d="scan'208";a="205157453"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
 by orviesa009.jf.intel.com with ESMTP; 16 Jan 2026 14:59:25 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vgsmo-00000000LK8-2Vkt;
 Fri, 16 Jan 2026 22:59:22 +0000
Date: Sat, 17 Jan 2026 06:59:10 +0800
From: kernel test robot <lkp@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: oe-kbuild-all@lists.linux.dev, jani.nikula@intel.com
Subject: Re: [PATCH 2/2] drm/{i915,xe}/dsb: move DSB buffer to parent interface
Message-ID: <202601170636.oVty7fBv-lkp@intel.com>
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
config: i386-randconfig-015-20260117 (https://download.01.org/0day-ci/archive/20260117/202601170636.oVty7fBv-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.4.0-5) 12.4.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260117/202601170636.oVty7fBv-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202601170636.oVty7fBv-lkp@intel.com/

All error/warnings (new ones prefixed by >>):

   drivers/gpu/drm/i915/display/intel_dsb.c: In function 'dsb_buffer_memset':
>> drivers/gpu/drm/i915/display/intel_dsb.c:107:66: error: macro "memset" passed 4 arguments, but takes just 3
     107 |         display->parent->dsb->memset(dsb->dsb_buf, idx, val, size);
         |                                                                  ^
   In file included from include/linux/string.h:386,
                    from arch/x86/include/asm/page_32.h:18,
                    from arch/x86/include/asm/page.h:14,
                    from arch/x86/include/asm/processor.h:20,
                    from arch/x86/include/asm/timex.h:5,
                    from include/linux/timex.h:67,
                    from include/linux/time32.h:13,
                    from include/linux/time.h:60,
                    from include/linux/jiffies.h:10,
                    from include/linux/ktime.h:25,
                    from include/linux/iopoll.h:11,
                    from drivers/gpu/drm/i915/display/intel_dsb.c:7:
   include/linux/fortify-string.h:512: note: macro "memset" defined here
     512 | #define memset(p, c, s) __fortify_memset_chk(p, c, s,                   \
         | 
>> drivers/gpu/drm/i915/display/intel_dsb.c:107:29: warning: statement with no effect [-Wunused-value]
     107 |         display->parent->dsb->memset(dsb->dsb_buf, idx, val, size);
         |         ~~~~~~~~~~~~~~~~~~~~^~~~~~~~


vim +/memset +107 drivers/gpu/drm/i915/display/intel_dsb.c

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
