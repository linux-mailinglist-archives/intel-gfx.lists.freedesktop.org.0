Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA7337392DD
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jun 2023 01:10:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 988FE10E143;
	Wed, 21 Jun 2023 23:10:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E82D610E143
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jun 2023 23:10:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687389024; x=1718925024;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=oXk1LsdLkKHTwWokaQoB/gZhRfMQlkR3KBUmEgeeLh4=;
 b=kdUThyuQcXZnLL0d5EF/o2ATz6xbmMqsMFwfIL7IQABzH5yYkDmwlsMu
 XNAOJ1CPtCTrvtHPkEvXqUEEPXjbTRPWgpcMYyKMV0ApjRH6bbZt08LHm
 UWj5dXZdrBBQ+J4AcM+lw4CGorMjl4yG83darvlygsAL94gQ/RkB+CIq/
 YbWH6w2+4tC7iCftaZB5us81S3d3lndepmD5AqfKjAdzX5FCKEbzmZHr6
 eqFazsF+sdHeSXLS2aM5OdUuc5QpHUJNoX92smu+pnwxh0CjBAMt7q5IN
 lWKgLRI4KK/qulBMV5yCaoM/XVwUFYocRs/bOV8cAetMCzChF6z2rCNlu g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="350074322"
X-IronPort-AV: E=Sophos;i="6.00,261,1681196400"; d="scan'208";a="350074322"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 16:10:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="780006673"
X-IronPort-AV: E=Sophos;i="6.00,261,1681196400"; d="scan'208";a="780006673"
Received: from lkp-server01.sh.intel.com (HELO 783282924a45) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 21 Jun 2023 16:10:22 -0700
Received: from kbuild by 783282924a45 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qC6xx-00079H-0Y;
 Wed, 21 Jun 2023 23:10:21 +0000
Date: Thu, 22 Jun 2023 07:09:46 +0800
From: kernel test robot <lkp@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <202306220634.fnI3oGxP-lkp@intel.com>
References: <20230621114827.167713-2-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230621114827.167713-2-maarten.lankhorst@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Handle legacy cursor update
 as normal update
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

Hi Maarten,

kernel test robot noticed the following build errors:

[auto build test ERROR on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Maarten-Lankhorst/drm-i915-Handle-legacy-cursor-update-as-normal-update/20230621-195009
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20230621114827.167713-2-maarten.lankhorst%40linux.intel.com
patch subject: [Intel-gfx] [PATCH 2/2] drm/i915: Handle legacy cursor update as normal update
config: x86_64-defconfig (https://download.01.org/0day-ci/archive/20230622/202306220634.fnI3oGxP-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce: (https://download.01.org/0day-ci/archive/20230622/202306220634.fnI3oGxP-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202306220634.fnI3oGxP-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/gpu/drm/i915/display/intel_display.c: In function 'intel_atomic_cleanup_work':
>> drivers/gpu/drm/i915/display/intel_display.c:6900:54: error: 'dev' undeclared (first use in this function); did you mean 'cdev'?
    6900 |                 drm_atomic_helper_wait_for_flip_done(dev, &state->base);
         |                                                      ^~~
         |                                                      cdev
   drivers/gpu/drm/i915/display/intel_display.c:6900:54: note: each undeclared identifier is reported only once for each function it appears in


vim +6900 drivers/gpu/drm/i915/display/intel_display.c

  6889	
  6890	static void intel_atomic_cleanup_work(struct work_struct *work)
  6891	{
  6892		struct intel_atomic_state *state =
  6893			container_of(work, struct intel_atomic_state, base.commit_work);
  6894		struct drm_i915_private *i915 = to_i915(state->base.dev);
  6895		struct intel_crtc_state *old_crtc_state;
  6896		struct intel_crtc *crtc;
  6897		int i;
  6898	
  6899		if (state->cursor_update)
> 6900			drm_atomic_helper_wait_for_flip_done(dev, &state->base);
  6901	
  6902		for_each_old_intel_crtc_in_state(state, crtc, old_crtc_state, i)
  6903			intel_color_cleanup_commit(old_crtc_state);
  6904	
  6905		drm_atomic_helper_cleanup_planes(&i915->drm, &state->base);
  6906		drm_atomic_helper_commit_cleanup_done(&state->base);
  6907		drm_atomic_state_put(&state->base);
  6908	
  6909		intel_atomic_helper_free_state(i915);
  6910	}
  6911	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
