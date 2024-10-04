Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCC1A990469
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2024 15:31:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25C4710E9FF;
	Fri,  4 Oct 2024 13:31:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Cv+AueeE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1569F10E9FA;
 Fri,  4 Oct 2024 13:31:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728048716; x=1759584716;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=LipIKJHXywUFaT6Rr6fuW2hVVH4tKy/aeS0F5KcrTXg=;
 b=Cv+AueeEuKnFZh5G8sJybzceq+BljgOtbtPX66dQRIbwnxEo1ezZBDah
 WXA/Iz+FUsZMh8FtwoC+MAq/+9nmGC+bCKvP+zo9DTmjVl9ta+dGYqcbz
 G4KC9tGxYK1vdDCH4ExDM/fvoYureCs4Hq5hCbAxZcDF/+t/PSFg5cGor
 TkY0c8RteZ8ntsWbdOea9e36m9GEHJZfX+j9QObQ59W1s/iPCrYwCIWcJ
 EGafFnvrK4SR6wqQgiwTILA/nORejkDSmDZ9tzMQu+dkZsfSxAVn6+UhF
 sjnfrUiRaRD/NIDKieP2hL5Xj+lOdd1o12X2kQcgRw87ofjvb/CTuNqGh g==;
X-CSE-ConnectionGUID: o2TV9mpFSqyaPyrUWdgGTA==
X-CSE-MsgGUID: La+dVsqXQxKBnDndsZjAJw==
X-IronPort-AV: E=McAfee;i="6700,10204,11214"; a="27150468"
X-IronPort-AV: E=Sophos;i="6.11,177,1725346800"; d="scan'208";a="27150468"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2024 06:30:21 -0700
X-CSE-ConnectionGUID: IcluhS3fSAu9RiPnoDcCzg==
X-CSE-MsgGUID: Ij+kEMolRPubbR9Jtmn+6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,177,1725346800"; d="scan'208";a="74697089"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by orviesa009.jf.intel.com with ESMTP; 04 Oct 2024 06:30:20 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1swiNt-0001fo-1R;
 Fri, 04 Oct 2024 13:30:17 +0000
Date: Fri, 4 Oct 2024 21:30:05 +0800
From: kernel test robot <lkp@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-xe@lists.freedesktop.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
 intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: Re: [PATCH v3 10/12] drm/xe: Make xe_ggtt_pt_ops private
Message-ID: <202410042102.EdHRO7JI-lkp@intel.com>
References: <20241003154421.33805-11-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241003154421.33805-11-maarten.lankhorst@linux.intel.com>
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

Hi Maarten,

kernel test robot noticed the following build warnings:

[auto build test WARNING on drm-xe/drm-xe-next]
[also build test WARNING on linus/master v6.12-rc1]
[cannot apply to drm-intel/for-linux-next drm-intel/for-linux-next-fixes drm-tip/drm-tip next-20241004]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Maarten-Lankhorst/drm-xe-display-Handle-stolen-bar-readout-in-the-same-way-as-lmem/20241004-000534
base:   https://gitlab.freedesktop.org/drm/xe/kernel.git drm-xe-next
patch link:    https://lore.kernel.org/r/20241003154421.33805-11-maarten.lankhorst%40linux.intel.com
patch subject: [PATCH v3 10/12] drm/xe: Make xe_ggtt_pt_ops private
config: x86_64-allyesconfig (https://download.01.org/0day-ci/archive/20241004/202410042102.EdHRO7JI-lkp@intel.com/config)
compiler: clang version 18.1.8 (https://github.com/llvm/llvm-project 3b5b5c1ec4a3095ab096dd780e84d7ab81f3d7ff)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20241004/202410042102.EdHRO7JI-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202410042102.EdHRO7JI-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/xe/xe_ggtt.c:906: warning: expecting prototype for xe_ggtt_write_pte(). Prototype was for xe_ggtt_get_encode_pte_bo_fn() instead


vim +906 drivers/gpu/drm/xe/xe_ggtt.c

   897	
   898	/**
   899	 * xe_ggtt_write_pte - Write a PTE to the GGTT
   900	 * @ggtt: &xe_ggtt
   901	 * @offset: the offset for which the mapping should be written.
   902	 *
   903	 * Used by display for DPT and GGTT paths to enccode BO's.
   904	 */
   905	xe_ggtt_pte_encode_bo_fn xe_ggtt_get_encode_pte_bo_fn(struct xe_ggtt *ggtt)
 > 906	{

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
