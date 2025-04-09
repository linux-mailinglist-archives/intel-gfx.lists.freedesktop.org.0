Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E66FCA81BE6
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Apr 2025 06:29:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D95E610E7C8;
	Wed,  9 Apr 2025 04:29:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V6RlUhBb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64E6010E7C8;
 Wed,  9 Apr 2025 04:29:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744172987; x=1775708987;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=dHm15ufXWb3S85ympqq/zp+Suql13+j8pIhbv4T5x/w=;
 b=V6RlUhBbEIiYvL+x2gg40OOilNKbqf81rcuc1K7z4tYB31AmRZ+sNqH3
 woBnU4Q0xPabhscDt9XC4yTxAI7hYTteKb8lboLijgRO96tiMVkhmVEHU
 b1eaUkMFNLGKeXQfvCx/A8gGuuPsMjiCn2axIDY2NFmNawb6cDLKeoWk7
 OKK5Ty21izOrbbDPngA2JoLnT5fWWaS9JEe6yRo/PIBT7Dp408w/F064H
 2woXnzih6s3jaCe2Bp/5zNmuCgM84ZHItVYATFhrfCxwk6mB0aLi5le+H
 KXxnPtd25npqMT/XprQVrjqBVGUoI74FlhMWZkwm5eI5SZhiYjCoujOgo Q==;
X-CSE-ConnectionGUID: jML9JBWxTAmOG34RQJ4xZA==
X-CSE-MsgGUID: JBZcLLIzSTi5KeMz/of01w==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="71004110"
X-IronPort-AV: E=Sophos;i="6.15,199,1739865600"; d="scan'208";a="71004110"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 21:29:47 -0700
X-CSE-ConnectionGUID: 8tV3QpiTTEaEIbHtpxVZKA==
X-CSE-MsgGUID: 92du0vzzQVCw96lx2IfG5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,199,1739865600"; d="scan'208";a="129417301"
Received: from lkp-server01.sh.intel.com (HELO b207828170a5) ([10.239.97.150])
 by orviesa008.jf.intel.com with ESMTP; 08 Apr 2025 21:29:46 -0700
Received: from kbuild by b207828170a5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1u2N4I-0008GV-39;
 Wed, 09 Apr 2025 04:29:42 +0000
Date: Wed, 9 Apr 2025 12:28:46 +0800
From: kernel test robot <lkp@intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: oe-kbuild-all@lists.linux.dev
Subject: Re: [PATCH 09/10] drm/i915: Add support for forcing the link bpp on
 a connector
Message-ID: <202504091139.9chj3D5y-lkp@intel.com>
References: <20250408214342.1953197-10-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250408214342.1953197-10-imre.deak@intel.com>
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

Hi Imre,

kernel test robot noticed the following build errors:

[auto build test ERROR on next-20250408]
[also build test ERROR on v6.15-rc1]
[cannot apply to linus/master v6.15-rc1 v6.14 v6.14-rc7]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Imre-Deak/drm-i915-dp-Use-the-correct-connector-while-computing-the-link-BPP-limit-on-MST/20250409-055536
base:   next-20250408
patch link:    https://lore.kernel.org/r/20250408214342.1953197-10-imre.deak%40intel.com
patch subject: [PATCH 09/10] drm/i915: Add support for forcing the link bpp on a connector
config: i386-buildonly-randconfig-001-20250409 (https://download.01.org/0day-ci/archive/20250409/202504091139.9chj3D5y-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250409/202504091139.9chj3D5y-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202504091139.9chj3D5y-lkp@intel.com/

All errors (new ones prefixed by >>):

   ld: drivers/gpu/drm/i915/display/intel_link_bw.o: in function `str_to_fxp_q4':
>> intel_link_bw.c:(.text+0x399): undefined reference to `__udivdi3'

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
