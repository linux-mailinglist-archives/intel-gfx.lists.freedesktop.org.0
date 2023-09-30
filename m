Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D697E7B43DD
	for <lists+intel-gfx@lfdr.de>; Sat, 30 Sep 2023 23:11:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B04510E033;
	Sat, 30 Sep 2023 21:11:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5069C10E033
 for <intel-gfx@lists.freedesktop.org>; Sat, 30 Sep 2023 21:11:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696108312; x=1727644312;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=2Pi1fstQsUdH82lLJQLz8LspEpffP3PLDqEjGtyYRRk=;
 b=lJDQR2fYhHLBm2Oip5tlgQfYshM5kqenHdYhDXNfj8/jw7mCnzlbDJec
 axA1SECNfk5Hjj4Gbxu2Q50alxeW+Ron20ekwnpOrGBSzcUT8SWW1BxY8
 aHG7wmo1vIaeyt1fZtbubXbYmNP7ari+uG40gxREZuwZrfTgZbUcnQU8X
 /HWenq0hZtIWLWh9of7+467SnAqHYWHJLf8lloangW8+7+g52FZpjBuI8
 +w3fF1sYwrF23x+zp5jp2sY91HiG1M5sLoxT1gga3TKJf+J0Uow3aWirQ
 dYLdVSj3mgTLq2rJybfk3ji89YCj0lWi7RQ5KjaFPrteo/aE0KgLrMnja A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10849"; a="372825652"
X-IronPort-AV: E=Sophos;i="6.03,190,1694761200"; d="scan'208";a="372825652"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2023 14:11:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10849"; a="815898403"
X-IronPort-AV: E=Sophos;i="6.03,190,1694761200"; d="scan'208";a="815898403"
Received: from lkp-server02.sh.intel.com (HELO c3b01524d57c) ([10.239.97.151])
 by fmsmga008.fm.intel.com with ESMTP; 30 Sep 2023 14:11:50 -0700
Received: from kbuild by c3b01524d57c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qmhFc-0004TE-05;
 Sat, 30 Sep 2023 21:11:48 +0000
Date: Sun, 1 Oct 2023 05:11:33 +0800
From: kernel test robot <lkp@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Message-ID: <202310010424.ZEwfaRR9-lkp@intel.com>
References: <20230929074636.1433475-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230929074636.1433475-1-jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: do more in
 i915_gpu_coredump_alloc()
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
Cc: oe-kbuild-all@lists.linux.dev
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jani,

kernel test robot noticed the following build warnings:



url:    https://github.com/intel-lab-lkp/linux/commits/UPDATE-20230929-163131/Jani-Nikula/drm-i915-stop-including-i915_utils-h-from-intel_runtime_pm-h/20230929-021205
base:   the 9th patch of https://lore.kernel.org/r/d5f8aab89835a70c0af741e7f5765fc2c4875bf7.1695924021.git.jani.nikula%40intel.com
patch link:    https://lore.kernel.org/r/20230929074636.1433475-1-jani.nikula%40intel.com
patch subject: [Intel-gfx] [PATCH v2] drm/i915: do more in i915_gpu_coredump_alloc()
config: i386-randconfig-061-20230930 (https://download.01.org/0day-ci/archive/20231001/202310010424.ZEwfaRR9-lkp@intel.com/config)
compiler: gcc-9 (Debian 9.3.0-22) 9.3.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20231001/202310010424.ZEwfaRR9-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202310010424.ZEwfaRR9-lkp@intel.com/

sparse warnings: (new ones prefixed by >>)
>> drivers/gpu/drm/i915/i915_gpu_error.c:1546:30: sparse: sparse: symbol 'intel_engine_coredump_alloc' was not declared. Should it be static?

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
