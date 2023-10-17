Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB42E7CBFE4
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Oct 2023 11:50:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D92110E2B8;
	Tue, 17 Oct 2023 09:50:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30FDD10E2B7
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Oct 2023 09:50:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697536216; x=1729072216;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ulb7cSEhESqDzZUxcUfJ7v060zndAh0SkSmzlX/ode4=;
 b=E2DCGFvXXP923A4i/OHA93vGiiGYmCjUqB12UfQmhzH7sM6L/8YRlktV
 xjE7Om1x2acZKhnzj6yB713hn2EMfbJxoSrNsEHuHBk7HrdGtrkvFBjgt
 s0YQexahB7hReepLpMf8pfz9nyVgjHa44asRClAWQxpiloAz8/fV8BwA9
 UcQ9AFrl+1Be9PO4kVzEN8UppXdcNtVC8xQGR3r2MUqQpcnwpsv96DxNu
 jFAkvWwFHEJArBew45rY7/B4IhCcKdYoEhzGpBAuSrsc/uKV3DixG9Gyb
 x9oAisg7FcW6rMVgyA9onBtJFfT+45UIbRF0J5bCN7IUz53LV1VXJ/uMc A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10865"; a="365097971"
X-IronPort-AV: E=Sophos;i="6.03,231,1694761200"; d="scan'208";a="365097971"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2023 02:50:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10865"; a="826376669"
X-IronPort-AV: E=Sophos;i="6.03,231,1694761200"; d="scan'208";a="826376669"
Received: from lkp-server02.sh.intel.com (HELO f64821696465) ([10.239.97.151])
 by fmsmga004.fm.intel.com with ESMTP; 17 Oct 2023 02:50:14 -0700
Received: from kbuild by f64821696465 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qsgiJ-0009RD-2w;
 Tue, 17 Oct 2023 09:50:11 +0000
Date: Tue, 17 Oct 2023 17:49:13 +0800
From: kernel test robot <lkp@intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <202310171756.yzfTKqav-lkp@intel.com>
References: <20231012123411.17241-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231012123411.17241-1-stanislav.lisovskiy@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add bigjoiner force enable option
 to debugfs
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

Hi Stanislav,

kernel test robot noticed the following build warnings:

[auto build test WARNING on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Stanislav-Lisovskiy/drm-i915-Add-bigjoiner-force-enable-option-to-debugfs/20231017-105841
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20231012123411.17241-1-stanislav.lisovskiy%40intel.com
patch subject: [Intel-gfx] [PATCH] drm/i915: Add bigjoiner force enable option to debugfs
config: x86_64-rhel-8.3-rust (https://download.01.org/0day-ci/archive/20231017/202310171756.yzfTKqav-lkp@intel.com/config)
compiler: clang version 16.0.4 (https://github.com/llvm/llvm-project.git ae42196bc493ffe877a7e3dff8be32035dea4d07)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20231017/202310171756.yzfTKqav-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202310171756.yzfTKqav-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/i915/display/intel_display_debugfs.c:1413:6: warning: variable 'ret' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
           if (connector->base.status != connector_status_connected || !crtc) {
               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_display_debugfs.c:1422:9: note: uninitialized use occurs here
           return ret;
                  ^~~
   drivers/gpu/drm/i915/display/intel_display_debugfs.c:1413:2: note: remove the 'if' if its condition is always true
           if (connector->base.status != connector_status_connected || !crtc) {
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_display_debugfs.c:1407:9: note: initialize the variable 'ret' to silence this warning
           int ret;
                  ^
                   = 0
   1 warning generated.


vim +1413 drivers/gpu/drm/i915/display/intel_display_debugfs.c

  1400	
  1401	static int i915_bigjoiner_enable_show(struct seq_file *m, void *data)
  1402	{
  1403		struct intel_connector *connector = to_intel_connector(m->private);
  1404		struct drm_crtc *crtc;
  1405		struct intel_encoder *encoder = intel_attached_encoder(connector);
  1406		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
  1407		int ret;
  1408	
  1409		if (!encoder)
  1410			return -ENODEV;
  1411	
  1412		crtc = connector->base.state->crtc;
> 1413		if (connector->base.status != connector_status_connected || !crtc) {
  1414			ret = -ENODEV;
  1415			goto out;
  1416		}
  1417	
  1418		seq_printf(m, "Bigjoiner enable: %d\n", intel_dp->force_bigjoiner_enable);
  1419	
  1420	out:
  1421	
  1422		return ret;
  1423	}
  1424	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
