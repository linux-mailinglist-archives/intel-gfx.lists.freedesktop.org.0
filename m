Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9397C96BBFD
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2024 14:23:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8F2C10E792;
	Wed,  4 Sep 2024 12:23:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZsTKyew3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE63910E791;
 Wed,  4 Sep 2024 12:23:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725452597; x=1756988597;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Jdu2kz9W5Sjyd/IOxvSp/1ivt7ICOhga1XjdHhtwc5A=;
 b=ZsTKyew3g0gSz6YhfmJoTAmgN9/zUD9Mf59Wq1KcKIAug5sRoFVwue2X
 PFh2/m9T7AXN0pRr2XQ9diWpxDvQMm7Dps0flr4Cg9ThZvgXbCQWSohpk
 QKgZTFDrDR4aqjTH8I/9sMUvgyeToQzSKzWEBRCO7+iFltzRis1Q4UtSQ
 1URHd7zrGLrtbzMMH9PTK6bpGSPxdqk7E+nNTGmYE/uPIGFGrOeHdrrDl
 zkQ7QPo8gLWMVVGc/HzQsvOo15b7zdLsImB2LGyck3O10J6qb5fDg++lU
 YwjEYt4+Zp49YfN4vVptl7qwpfVi/BPBvwsh3QrCS9Xnqpc8879FaVCIF A==;
X-CSE-ConnectionGUID: zVP6k6+YSPWF6Q0QQXOmiQ==
X-CSE-MsgGUID: THPqf3IeQc+4Kxfetf5wqg==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="27871264"
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="27871264"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 05:23:16 -0700
X-CSE-ConnectionGUID: 6WFrrxHWTpiP7iEwkrMlIw==
X-CSE-MsgGUID: 6e8to1QPS3y+7a9d51XnMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="65493956"
Received: from lkp-server01.sh.intel.com (HELO 9c6b1c7d3b50) ([10.239.97.150])
 by fmviesa010.fm.intel.com with ESMTP; 04 Sep 2024 05:23:15 -0700
Received: from kbuild by 9c6b1c7d3b50 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1slp2W-00082D-2v;
 Wed, 04 Sep 2024 12:23:12 +0000
Date: Wed, 4 Sep 2024 20:23:03 +0800
From: kernel test robot <lkp@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev, jani.nikula@intel.com
Subject: Re: [PATCH 2/4] drm/i915/display: add intel_display_snapshot
 abstraction
Message-ID: <202409042040.doh7ZTmu-lkp@intel.com>
References: <f2cc41111504e062c3ecb287daee6967078b73cc.1725372032.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f2cc41111504e062c3ecb287daee6967078b73cc.1725372032.git.jani.nikula@intel.com>
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
[also build test ERROR on next-20240904]
[cannot apply to drm-intel/for-linux-next-fixes drm-tip/drm-tip linus/master v6.11-rc6]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Jani-Nikula/drm-i915-dump-display-parameters-captured-in-error-state-not-current/20240903-220614
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
patch link:    https://lore.kernel.org/r/f2cc41111504e062c3ecb287daee6967078b73cc.1725372032.git.jani.nikula%40intel.com
patch subject: [PATCH 2/4] drm/i915/display: add intel_display_snapshot abstraction
config: i386-buildonly-randconfig-003-20240904 (https://download.01.org/0day-ci/archive/20240904/202409042040.doh7ZTmu-lkp@intel.com/config)
compiler: clang version 18.1.5 (https://github.com/llvm/llvm-project 617a15a9eac96088ae5e9134248d8236e34b91b1)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240904/202409042040.doh7ZTmu-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202409042040.doh7ZTmu-lkp@intel.com/

All errors (new ones prefixed by >>, old ones prefixed by <<):

WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/devfreq/governor_performance.o
>> ERROR: modpost: "intel_overlay_snapshot_capture" [drivers/gpu/drm/i915/i915.ko] undefined!
>> ERROR: modpost: "intel_overlay_snapshot_print" [drivers/gpu/drm/i915/i915.ko] undefined!

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
