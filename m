Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCFACCA6240
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Dec 2025 06:19:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B910210EA0C;
	Fri,  5 Dec 2025 05:19:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A3TxryQk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D046410EA0A;
 Fri,  5 Dec 2025 05:19:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764911942; x=1796447942;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=+Cd+8pVYVsP79D8v2dIbSAcD5y4RsPXkPEGmi3y+wiw=;
 b=A3TxryQk/NubG77XUiI2hlB3poO9xRTxTEY5AHyrbaiVCiaCdT+7nag4
 +uLoeG9YFTnsMvpDvUb6cwY+j+ncJXeQo/oy8xQgY9E4Ot7OyiWVrXbIP
 ngXwe1vXYdHScXc2lc/faadvtdPJAwh2/9b/l3/a7P+3WAVIznhPSN6qe
 3SGwJv/kJbSA5TCVhccysa676+35+IgkprimTNctZQL78ANOnszm3jWdD
 F7nJPgHEYHHHUqMX444XSz9xtkabfvhKgbxSaYMhYWOVVVKgRXDHT1vhn
 Xwnygtm3IwiA+ITKLQ5tzQvZSMsKm8rh1qlXlp9+w/TVwXK6YWcdmGAT3 Q==;
X-CSE-ConnectionGUID: 8i2sbd/ETI+9jwDmuT2JRw==
X-CSE-MsgGUID: I27spERYR6W7CLZL5UoPxQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11632"; a="70792837"
X-IronPort-AV: E=Sophos;i="6.20,251,1758610800"; d="scan'208";a="70792837"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 21:19:01 -0800
X-CSE-ConnectionGUID: HeNA/ZQbRjm2iBoQF06plQ==
X-CSE-MsgGUID: Tx2GMpVjQcmn10YdevZWKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,251,1758610800"; d="scan'208";a="232557545"
Received: from lkp-server01.sh.intel.com (HELO 4664bbef4914) ([10.239.97.150])
 by orviesa001.jf.intel.com with ESMTP; 04 Dec 2025 21:19:00 -0800
Received: from kbuild by 4664bbef4914 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vRODZ-00000000Ee1-0W6u;
 Fri, 05 Dec 2025 05:18:57 +0000
Date: Fri, 5 Dec 2025 13:18:05 +0800
From: kernel test robot <lkp@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
 tzimmermann@suse.de, ville.syrjala@linux.intel.com,
 Jani Nikula <jani.nikula@intel.com>
Subject: Re: [PATCH v2 14/25] drm/vblank: pass vblank to
 drm_vblank_count_and_time()
Message-ID: <202512051216.oxayTqRt-lkp@intel.com>
References: <2d2d9b12117be566ac63b9e67b79e50de4924ecc.1764845757.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2d2d9b12117be566ac63b9e67b79e50de4924ecc.1764845757.git.jani.nikula@intel.com>
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

[auto build test WARNING on drm-misc/drm-misc-next]
[also build test WARNING on drm-i915/for-linux-next drm-tip/drm-tip linus/master next-20251204]
[cannot apply to drm-i915/for-linux-next-fixes v6.18]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Jani-Nikula/drm-vblank-Unexport-drm_wait_one_vblank/20251204-195701
base:   https://gitlab.freedesktop.org/drm/misc/kernel.git drm-misc-next
patch link:    https://lore.kernel.org/r/2d2d9b12117be566ac63b9e67b79e50de4924ecc.1764845757.git.jani.nikula%40intel.com
patch subject: [PATCH v2 14/25] drm/vblank: pass vblank to drm_vblank_count_and_time()
config: i386-buildonly-randconfig-002-20251205 (https://download.01.org/0day-ci/archive/20251205/202512051216.oxayTqRt-lkp@intel.com/config)
compiler: clang version 20.1.8 (https://github.com/llvm/llvm-project 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20251205/202512051216.oxayTqRt-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202512051216.oxayTqRt-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> Warning: drivers/gpu/drm/drm_vblank.c:956 function parameter 'vblank' not described in 'drm_vblank_crtc_count_and_time'

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
