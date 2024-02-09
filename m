Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C13A84FB45
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Feb 2024 18:50:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77B2B10F889;
	Fri,  9 Feb 2024 17:50:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aGDoMT8M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7C0910F887;
 Fri,  9 Feb 2024 17:50:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707501038; x=1739037038;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=1laTTHCgygcPfanCnT37plaDmSda/Mn+foyUMPP2B1c=;
 b=aGDoMT8M2WP1UBvdI8mIyVgh2BsoKkMpExZ7baOz7G4taGezLZSic+ny
 ES1x/Mgd9CrKzdH8ZO0xafX+sHZqzOlQdYKryV2QDvkK+245rWCITyZGe
 Po21/7R5SnRP4iOIWP4ORCELHvq9mmnnHbavFbeCcFNWGvShGO9chkaZZ
 jxmuUzaYezaNKLXYXUErgKWQWmVgHdqtb2ss6MtdPeP3iBQHRqVtlKu7W
 cWwMTFJJxr7H0Fb7UzuBENpqLItb2EJZIXxsF5V8Puxj1rUwmm/N8sp3T
 hABOvkESl1A5tCHdhPYkCdagJPbKV13rJpuIFMHrr22XT4deDPnsUvmKI Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10979"; a="12117975"
X-IronPort-AV: E=Sophos;i="6.05,257,1701158400"; d="scan'208";a="12117975"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2024 09:50:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,257,1701158400"; 
   d="scan'208";a="6641136"
Received: from lkp-server01.sh.intel.com (HELO 01f0647817ea) ([10.239.97.150])
 by fmviesa005.fm.intel.com with ESMTP; 09 Feb 2024 09:50:35 -0800
Received: from kbuild by 01f0647817ea with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rYV1F-0004zC-24;
 Fri, 09 Feb 2024 17:50:33 +0000
Date: Sat, 10 Feb 2024 01:50:10 +0800
From: kernel test robot <lkp@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: oe-kbuild-all@lists.linux.dev, daniele.ceraolospurio@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH 4/5] drm/xe/hdcp: Enable HDCP for XE
Message-ID: <202402100132.XIP3zz5i-lkp@intel.com>
References: <20240209101412.1326176-5-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240209101412.1326176-5-suraj.kandpal@intel.com>
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

Hi Suraj,

kernel test robot noticed the following build warnings:

[auto build test WARNING on drm-xe/drm-xe-next]
[also build test WARNING on drm-tip/drm-tip]
[cannot apply to drm-intel/for-linux-next drm-intel/for-linux-next-fixes linus/master v6.8-rc3 next-20240209]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Suraj-Kandpal/drm-i915-hdcp-Move-intel_hdcp_gsc_message-def-away-from-header-file/20240209-181915
base:   https://gitlab.freedesktop.org/drm/xe/kernel.git drm-xe-next
patch link:    https://lore.kernel.org/r/20240209101412.1326176-5-suraj.kandpal%40intel.com
patch subject: [PATCH 4/5] drm/xe/hdcp: Enable HDCP for XE
config: loongarch-allmodconfig (https://download.01.org/0day-ci/archive/20240210/202402100132.XIP3zz5i-lkp@intel.com/config)
compiler: loongarch64-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240210/202402100132.XIP3zz5i-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202402100132.XIP3zz5i-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/xe/xe_gsc_submit.c:50: warning: expecting prototype for xe_gsc_get_host_session_id(). Prototype was for xe_gsc_create_host_session_id() instead


vim +50 drivers/gpu/drm/xe/xe_gsc_submit.c

    42	
    43	/**
    44	 * xe_gsc_get_host_session_id - Creates a random 64 bit host_session id with
    45	 * bits 56-63 masked.
    46	 *
    47	 * Returns: random host_session_id which can be used to send messages to gsc cs
    48	 */
    49	u64 xe_gsc_create_host_session_id(void)
  > 50	{
    51		u64 host_session_id;
    52	
    53		get_random_bytes(&host_session_id, sizeof(u64));
    54		host_session_id &= ~HOST_SESSION_CLIENT_MASK;
    55		return host_session_id;
    56	}
    57	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
