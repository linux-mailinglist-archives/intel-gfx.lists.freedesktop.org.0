Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84F4E7A958E
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 17:33:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EB5410E5E7;
	Thu, 21 Sep 2023 15:33:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 746CB10E5ED
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Sep 2023 15:33:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695310399; x=1726846399;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=UN0E2d7xSAWUwxO5LwpdogXJolKeSbU5R9vMjuwaEeY=;
 b=kPOzgdslL1ArRNMHSD4pKHJ7c4lKeWvwRody9m/sfKINcnQNBt9riNRI
 8eZ/EPjHgy1pCHjm1jI0pXooLnHBkTHszPPBDajZviED/l0IzHemfb65a
 XxT59WB/kGMgEZ5Gt6GboYWoJ0Rh0mKVqMH5L24c+8pD6vnDp5FpHCDtW
 ntAinvlmz4JpjZywNCskb2JupPVWdO5BkdOI3aWv/L46Uq7kB/5mtqMIw
 8GY9YyHNUhhho1/4L/Z3mD4JFl5u1uOZDYU9VHn8vFbxVwKd+QVzJk7qh
 hYlk3D/5SGYA+Jl79EVsOb4TLWL0DnbQyDTZO5nntK5xzAn3X7PidODxB A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="377849584"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="377849584"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 08:33:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="890415119"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="890415119"
Received: from lkp-server02.sh.intel.com (HELO b77866e22201) ([10.239.97.151])
 by fmsmga001.fm.intel.com with ESMTP; 21 Sep 2023 08:32:13 -0700
Received: from kbuild by b77866e22201 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qjLfr-000061-0K;
 Thu, 21 Sep 2023 15:33:03 +0000
Date: Thu, 21 Sep 2023 23:32:12 +0800
From: kernel test robot <lkp@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>,
	intel-gfx@lists.freedesktop.org
Message-ID: <202309212348.71aApJ0M-lkp@intel.com>
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
Cc: jani.nikula@intel.com, llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Suraj,

kernel test robot noticed the following build errors:

[auto build test ERROR on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Suraj-Kandpal/drm-i915-hdcp-Move-checks-for-gsc-health-status/20230921-174353
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20230920063611.242942-3-suraj.kandpal%40intel.com
patch subject: [Intel-gfx] [PATCH 2/2] drm/i915/hdcp: Move common message filling function to its own file
config: x86_64-rhel-8.3-rust (https://download.01.org/0day-ci/archive/20230921/202309212348.71aApJ0M-lkp@intel.com/config)
compiler: clang version 16.0.4 (https://github.com/llvm/llvm-project.git ae42196bc493ffe877a7e3dff8be32035dea4d07)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20230921/202309212348.71aApJ0M-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202309212348.71aApJ0M-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/i915/display/intel_hdcp_gsc.c:11:10: fatal error: 'intel_hdcp_gsc_message.h' file not found
   #include "intel_hdcp_gsc_message.h"
            ^~~~~~~~~~~~~~~~~~~~~~~~~~
   1 error generated.


vim +11 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c

  > 11	#include "intel_hdcp_gsc_message.h"
    12	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
