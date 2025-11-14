Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADDAFC5F82B
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Nov 2025 23:23:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBAC910EB2D;
	Fri, 14 Nov 2025 22:23:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qb6mR5xR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E26910EB2B;
 Fri, 14 Nov 2025 22:23:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763159022; x=1794695022;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=c6fENqcDyteb8OfeyDMtWwmBmjclcuCusMm4K2AIU/8=;
 b=Qb6mR5xRf4qoavwLliJaFXDqVcE1zbeJLz0h2Ivn6smiSqH/rewN4n5n
 Ab7oTTbDytwoTCsYKzxbrnxUe6UJLLT/l8Fc92Nw5qEaECcZdMRCIWTXD
 A96VZ9b2WJxX69psYT8YC+PK7j+NyVqkMfYU+J9iQUiso/XR2YGyBmoYc
 q08oE6eEJx8MUCjQPiBZ8GHQk+Y+y6PR5scKWxcPrU4mlYuj5GtVe0BCf
 NLb16EXM3EKMxk3gWnSdfyhWh0kqC2lkd/7yAQfnopo92iLpDF2Ix2Ia7
 B1HGasxUGisRubitWVP5sA9234soaes2PLKYqt+RsfU1W+GNxfOTHqdsW g==;
X-CSE-ConnectionGUID: +T/+AgyUSPKp2SmW1/q+Uw==
X-CSE-MsgGUID: Y09FR2CiRCu8xa32hDIgoA==
X-IronPort-AV: E=McAfee;i="6800,10657,11613"; a="90738186"
X-IronPort-AV: E=Sophos;i="6.19,306,1754982000"; d="scan'208";a="90738186"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 14:23:42 -0800
X-CSE-ConnectionGUID: R5zKaP4uQOCEpAnd+RrOzA==
X-CSE-MsgGUID: HNDoznhWT2GPho9S6Nz2jw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,306,1754982000"; d="scan'208";a="195033708"
Received: from lkp-server01.sh.intel.com (HELO 7b01c990427b) ([10.239.97.150])
 by orviesa005.jf.intel.com with ESMTP; 14 Nov 2025 14:23:40 -0800
Received: from kbuild by 7b01c990427b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1vK2Cf-0007Ln-2d;
 Fri, 14 Nov 2025 22:23:37 +0000
Date: Sat, 15 Nov 2025 06:23:35 +0800
From: kernel test robot <lkp@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: oe-kbuild-all@lists.linux.dev, ville.syrjala@linux.intel.com,
 uma.shankar@intel.com
Subject: Re: [PATCH] drm/xe: use the same vga decode code as i915
Message-ID: <202511150634.0W0ZmJta-lkp@intel.com>
References: <20251113133815.696987-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251113133815.696987-1-jani.nikula@intel.com>
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

[auto build test ERROR on drm-xe/drm-xe-next]
[also build test ERROR on drm-intel/for-linux-next drm-intel/for-linux-next-fixes drm-tip/drm-tip linus/master v6.18-rc5 next-20251114]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Jani-Nikula/drm-xe-use-the-same-vga-decode-code-as-i915/20251113-220145
base:   https://gitlab.freedesktop.org/drm/xe/kernel.git drm-xe-next
patch link:    https://lore.kernel.org/r/20251113133815.696987-1-jani.nikula%40intel.com
patch subject: [PATCH] drm/xe: use the same vga decode code as i915
config: i386-randconfig-004-20251114 (https://download.01.org/0day-ci/archive/20251115/202511150634.0W0ZmJta-lkp@intel.com/config)
compiler: gcc-14 (Debian 14.2.0-19) 14.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20251115/202511150634.0W0ZmJta-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202511150634.0W0ZmJta-lkp@intel.com/

All errors (new ones prefixed by >>):

>> ld: cannot find drivers/gpu/drm/xe/i915-display/intel_gmch.o: No such file or directory

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
