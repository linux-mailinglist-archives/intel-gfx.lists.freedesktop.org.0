Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 244727A763B
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Sep 2023 10:47:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38EC410E463;
	Wed, 20 Sep 2023 08:47:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 977EF10E463
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Sep 2023 08:47:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695199624; x=1726735624;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=38t0E40cwyin+6k65JBwAPShSihkKzNEwQlkppZRe5w=;
 b=aETo47V2y0ln/ZQXLmwiLBRWZNiU+3rKyON4bzMKShIojQSAKL+zHPiS
 hfLuALIf1ECHGH+tpbKEkI77Q1e/5jpTHY/dEfjIUfsNu1PhmoJ7ajjZn
 tuqnKJbkSOCJnLP8xZLL0FMuHVhhoT7lcO7W8yBjP+LCZp5nz4KVnEhWK
 yO7wf+WE/uDMyhMw2UB49pBo405z1HGIHgUI33CbWiUhydginH+Mm0JKu
 sXdR7qPnrGgZdgSCxAKlY+Q5GoSx/m1/SkYkYznMXRF4qqJyC1/oD3OHc
 NsYWkvGsrmd6O+oYHCAKqESuj4ty+ezUF6Z8ueH8y3ag+LRIIHbP7i2wo A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="359553732"
X-IronPort-AV: E=Sophos;i="6.02,161,1688454000"; d="scan'208";a="359553732"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 01:47:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="836767916"
X-IronPort-AV: E=Sophos;i="6.02,161,1688454000"; d="scan'208";a="836767916"
Received: from lkp-server02.sh.intel.com (HELO 9ef86b2655e5) ([10.239.97.151])
 by FMSMGA003.fm.intel.com with ESMTP; 20 Sep 2023 01:47:02 -0700
Received: from kbuild by 9ef86b2655e5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qisrM-0008Xs-1N;
 Wed, 20 Sep 2023 08:47:00 +0000
Date: Wed, 20 Sep 2023 16:46:38 +0800
From: kernel test robot <lkp@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>,
	intel-gfx@lists.freedesktop.org
Message-ID: <202309201638.5N9aAfd1-lkp@intel.com>
References: <20230920063611.242942-3-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230920063611.242942-3-suraj.kandpal@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/hdcp: Move common message
 filling function to its own file
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
Cc: jani.nikula@intel.com, oe-kbuild-all@lists.linux.dev
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Suraj,

kernel test robot noticed the following build errors:

[auto build test ERROR on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Suraj-Kandpal/drm-i915-hdcp-Move-checks-for-gsc-health-status/20230920-143839
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20230920063611.242942-3-suraj.kandpal%40intel.com
patch subject: [Intel-gfx] [PATCH 2/2] drm/i915/hdcp: Move common message filling function to its own file
config: x86_64-buildonly-randconfig-001-20230920 (https://download.01.org/0day-ci/archive/20230920/202309201638.5N9aAfd1-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20230920/202309201638.5N9aAfd1-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202309201638.5N9aAfd1-lkp@intel.com/

All errors (new ones prefixed by >>):

   make[7]: *** [scripts/Makefile.build:243: drivers/gpu/drm/i915/display/intel_hdcp_gsc.o] Error 1 shuffle=3352712196
>> make[7]: *** No rule to make target 'drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.o', needed by 'drivers/gpu/drm/i915/built-in.a'.
   make[7]: Target 'drivers/gpu/drm/i915/' not remade because of errors.
--
>> drivers/gpu/drm/i915/display/intel_hdcp_gsc.c:11:10: fatal error: intel_hdcp_gsc_message.h: No such file or directory
      11 | #include "intel_hdcp_gsc_message.h"
         |          ^~~~~~~~~~~~~~~~~~~~~~~~~~
   compilation terminated.


vim +11 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c

  > 11	#include "intel_hdcp_gsc_message.h"
    12	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
