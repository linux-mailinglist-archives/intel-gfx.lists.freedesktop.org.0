Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF0C0AE4D3F
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Jun 2025 21:05:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E59D10E05F;
	Mon, 23 Jun 2025 19:05:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Lc/v6I/y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1ACF89BA3;
 Mon, 23 Jun 2025 19:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750705506; x=1782241506;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=oh4ffYYNVmm3CEGxInh1CEFlZuucFUAV7yIy+afI8Gk=;
 b=Lc/v6I/y3fTd2QRUi+2RB7uByr5qvoY0fB00jV+4Y1pIDEE/UzX1N7us
 HtUXyryeg+fgCT2t/HMWGpsW2nPsV6JANMzoiszONx4OVoWiczt5pV68B
 L9rVKi4UqiFcrbF+BvfROBEW95me3ccxjirmK5PD2DnSTfzmDHKYyqlPh
 tTX2AFurNY1Tj+u0SSDVuiawisj2OgXwnJZSqKpiHueoQ2Ntv3qMGi8nh
 sAijd0U0QYqsw3d7ys9s1k/i1aXjvpe3tO9BmQnjUkszzj6n+ZDZavyBM
 KKqPOLOGfxelAmIr9c8KY+22bBVVK6r2iT6FRz4KMDALk5zVTx9w1tZvQ w==;
X-CSE-ConnectionGUID: CKkm/iwCTxGaIFIOcX0CqQ==
X-CSE-MsgGUID: lR2BMHBOQK+47AP852HOBg==
X-IronPort-AV: E=McAfee;i="6800,10657,11473"; a="55562725"
X-IronPort-AV: E=Sophos;i="6.16,259,1744095600"; d="scan'208";a="55562725"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 12:05:03 -0700
X-CSE-ConnectionGUID: aUnyq6E9RsqoBoZoA141bQ==
X-CSE-MsgGUID: aUAdyMmCRS+/K4fcKIViIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,259,1744095600"; d="scan'208";a="155978161"
Received: from lkp-server01.sh.intel.com (HELO e8142ee1dce2) ([10.239.97.150])
 by fmviesa005.fm.intel.com with ESMTP; 23 Jun 2025 12:05:01 -0700
Received: from kbuild by e8142ee1dce2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uTmTT-000PEw-0F;
 Mon, 23 Jun 2025 19:04:59 +0000
Date: Tue, 24 Jun 2025 03:04:25 +0800
From: kernel test robot <lkp@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
 jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [CI 3/6] drm/xe/pcode: add struct drm_device based interface
Message-ID: <202506240230.pGzee52h-lkp@intel.com>
References: <eeaa9cc8438caab2e22f9cb2142fbc18cc0fd861.1750678991.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <eeaa9cc8438caab2e22f9cb2142fbc18cc0fd861.1750678991.git.jani.nikula@intel.com>
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
[also build test ERROR on linus/master v6.16-rc3 next-20250623]
[cannot apply to drm-xe/drm-xe-next drm-intel/for-linux-next-fixes drm-tip/drm-tip]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Jani-Nikula/drm-i915-pcode-drop-fast-wait-from-snb_pcode_write_timeout/20250623-194523
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
patch link:    https://lore.kernel.org/r/eeaa9cc8438caab2e22f9cb2142fbc18cc0fd861.1750678991.git.jani.nikula%40intel.com
patch subject: [CI 3/6] drm/xe/pcode: add struct drm_device based interface
config: x86_64-buildonly-randconfig-001-20250623 (https://download.01.org/0day-ci/archive/20250624/202506240230.pGzee52h-lkp@intel.com/config)
compiler: clang version 20.1.2 (https://github.com/llvm/llvm-project 58df0ef89dd64126512e4ee27b4ac3fd8ddf6247)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250624/202506240230.pGzee52h-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202506240230.pGzee52h-lkp@intel.com/

All errors (new ones prefixed by >>):

>> ld.lld: error: duplicate symbol: intel_pcode_read
   >>> defined at intel_pcode.c:281 (drivers/gpu/drm/i915/intel_pcode.c:281)
   >>>            drivers/gpu/drm/i915/intel_pcode.o:(intel_pcode_read) in archive vmlinux.a
   >>> defined at xe_device.h:60 (drivers/gpu/drm/xe/xe_device.h:60)
   >>>            drivers/gpu/drm/xe/xe_pcode.o:(.text+0x808) in archive vmlinux.a
--
>> ld.lld: error: duplicate symbol: __cfi_intel_pcode_read
   >>> defined at intel_pcode.c:273 (drivers/gpu/drm/i915/intel_pcode.c:273)
   >>>            drivers/gpu/drm/i915/intel_pcode.o:(__cfi_intel_pcode_read) in archive vmlinux.a
   >>> defined at xe_pcode.c:336 (drivers/gpu/drm/xe/xe_pcode.c:336)
   >>>            drivers/gpu/drm/xe/xe_pcode.o:(.text+0x800) in archive vmlinux.a
--
>> ld.lld: error: duplicate symbol: intel_pcode_write_timeout
   >>> defined at intel_pcode.c:288 (drivers/gpu/drm/i915/intel_pcode.c:288)
   >>>            drivers/gpu/drm/i915/intel_pcode.o:(intel_pcode_write_timeout) in archive vmlinux.a
   >>> defined at xe_device.h:60 (drivers/gpu/drm/xe/xe_device.h:60)
   >>>            drivers/gpu/drm/xe/xe_pcode.o:(.text+0x828) in archive vmlinux.a
--
>> ld.lld: error: duplicate symbol: __cfi_intel_pcode_write_timeout
   >>> defined at intel_pcode.c:281 (drivers/gpu/drm/i915/intel_pcode.c:281)
   >>>            drivers/gpu/drm/i915/intel_pcode.o:(__cfi_intel_pcode_write_timeout) in archive vmlinux.a
   >>> defined at xe_pcode.c:346 (drivers/gpu/drm/xe/xe_pcode.c:346)
   >>>            drivers/gpu/drm/xe/xe_pcode.o:(.text+0x820) in archive vmlinux.a
--
>> ld.lld: error: duplicate symbol: intel_pcode_request
   >>> defined at intel_pcode.c:296 (drivers/gpu/drm/i915/intel_pcode.c:296)
   >>>            drivers/gpu/drm/i915/intel_pcode.o:(intel_pcode_request) in archive vmlinux.a
   >>> defined at xe_device.h:60 (drivers/gpu/drm/xe/xe_device.h:60)
   >>>            drivers/gpu/drm/xe/xe_pcode.o:(.text+0x848) in archive vmlinux.a
--
>> ld.lld: error: duplicate symbol: __cfi_intel_pcode_request
   >>> defined at intel_pcode.c:288 (drivers/gpu/drm/i915/intel_pcode.c:288)
   >>>            drivers/gpu/drm/i915/intel_pcode.o:(__cfi_intel_pcode_request) in archive vmlinux.a
   >>> defined at xe_pcode.c:354 (drivers/gpu/drm/xe/xe_pcode.c:354)
   >>>            drivers/gpu/drm/xe/xe_pcode.o:(.text+0x840) in archive vmlinux.a

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
