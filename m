Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE3E9961803
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2024 21:29:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBD9310E412;
	Tue, 27 Aug 2024 19:29:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TQZlh5z0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54F2E10E40D;
 Tue, 27 Aug 2024 19:29:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724786955; x=1756322955;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=emsCxIFpV4UN/b0W+CDvVIYFdmKpEuUzsu7pFExO/ss=;
 b=TQZlh5z0Yp15CBjBZqwypBXx79U7PFZ8/rLgIfmlnzbVAaXBIHMicJbg
 q9YEV9im7I3Ama7mPWuaO2HOm1WPOF7pwXNRgKJHSFjyVn2ABk1HeDEXS
 6Zrlhkh+8ShQrYRbmjDZGplI2g3zF06HFcHjJJRHu3TJCjbJ2Ae5Xi6Zq
 6fBX/CEBxucWd4Wdv6rIOKeNTMirZZUKO22pN1Od58+jtAF83NY+a3U1f
 sVnfFoux3QL4eLJEou/6boCTv6j3kQtPHH9kIIWggFZWNqlRXWxCmBtUl
 3MMjuSdMmGL/k+yT6OJHReCAC4yvGNjpsb7zMX93OkvsPIp3JlvBIGASY Q==;
X-CSE-ConnectionGUID: dvMzOgAyTqqsxxOQbVJNIg==
X-CSE-MsgGUID: szE/kg13RRC1bJZGbQBcKw==
X-IronPort-AV: E=McAfee;i="6700,10204,11177"; a="33861382"
X-IronPort-AV: E=Sophos;i="6.10,181,1719903600"; d="scan'208";a="33861382"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2024 12:29:15 -0700
X-CSE-ConnectionGUID: PpQhjx2iRMyZiuqrE/zthg==
X-CSE-MsgGUID: RVp7BojnTmeDqx5r6oF56A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,181,1719903600"; d="scan'208";a="63283881"
Received: from lkp-server01.sh.intel.com (HELO 9a732dc145d3) ([10.239.97.150])
 by orviesa006.jf.intel.com with ESMTP; 27 Aug 2024 12:29:13 -0700
Received: from kbuild by 9a732dc145d3 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sj1sL-000K0Q-24;
 Tue, 27 Aug 2024 19:29:09 +0000
Date: Wed, 28 Aug 2024 03:28:13 +0800
From: kernel test robot <lkp@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: oe-kbuild-all@lists.linux.dev, jani.nikula@intel.com
Subject: Re: [PATCH 5/7] drm/i915/display: include media/cec-notifier.h and
 linux/debugfs.h where needed
Message-ID: <202408280033.x0jpUM2m-lkp@intel.com>
References: <a9aeb27f0107bdf3d2bd834a48583bc64072447a.1724689818.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <a9aeb27f0107bdf3d2bd834a48583bc64072447a.1724689818.git.jani.nikula@intel.com>
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

[auto build test ERROR on drm-intel/for-linux-next]
[also build test ERROR on drm-tip/drm-tip drm-xe/drm-xe-next next-20240827]
[cannot apply to drm-intel/for-linux-next-fixes linus/master v6.11-rc5]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Jani-Nikula/drm-i915-wm-move-struct-intel_watermark_params-to-i9xx_wm-c/20240827-003437
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
patch link:    https://lore.kernel.org/r/a9aeb27f0107bdf3d2bd834a48583bc64072447a.1724689818.git.jani.nikula%40intel.com
patch subject: [PATCH 5/7] drm/i915/display: include media/cec-notifier.h and linux/debugfs.h where needed
config: i386-buildonly-randconfig-001-20240827 (https://download.01.org/0day-ci/archive/20240828/202408280033.x0jpUM2m-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240828/202408280033.x0jpUM2m-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202408280033.x0jpUM2m-lkp@intel.com/

All error/warnings (new ones prefixed by >>):

>> drivers/gpu/drm/i915/display/hsw_ips.c:320:58: error: expected ')' before string constant
     320 |                          hsw_ips_debugfs_false_color_set,
         |                                                          ^
         |                                                          )
     321 |                          "%llu\n");
         |                          ~~~~~~~~                         
   drivers/gpu/drm/i915/display/hsw_ips.c: In function 'hsw_ips_crtc_debugfs_add':
>> drivers/gpu/drm/i915/display/hsw_ips.c:355:9: error: implicit declaration of function 'debugfs_create_file'; did you mean 'bus_create_file'? [-Werror=implicit-function-declaration]
     355 |         debugfs_create_file("i915_ips_false_color", 0644, crtc->base.debugfs_entry,
         |         ^~~~~~~~~~~~~~~~~~~
         |         bus_create_file
>> drivers/gpu/drm/i915/display/hsw_ips.c:356:36: error: 'hsw_ips_debugfs_false_color_fops' undeclared (first use in this function); did you mean 'hsw_ips_debugfs_false_color_set'?
     356 |                             crtc, &hsw_ips_debugfs_false_color_fops);
         |                                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
         |                                    hsw_ips_debugfs_false_color_set
   drivers/gpu/drm/i915/display/hsw_ips.c:356:36: note: each undeclared identifier is reported only once for each function it appears in
   drivers/gpu/drm/i915/display/hsw_ips.c: At top level:
>> drivers/gpu/drm/i915/display/hsw_ips.c:288:12: warning: 'hsw_ips_debugfs_false_color_set' defined but not used [-Wunused-function]
     288 | static int hsw_ips_debugfs_false_color_set(void *data, u64 val)
         |            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/gpu/drm/i915/display/hsw_ips.c:278:12: warning: 'hsw_ips_debugfs_false_color_get' defined but not used [-Wunused-function]
     278 | static int hsw_ips_debugfs_false_color_get(void *data, u64 *val)
         |            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   cc1: some warnings being treated as errors


vim +320 drivers/gpu/drm/i915/display/hsw_ips.c

bc37c98a3d44f7 Jani Nikula    2023-03-02  277  
42b4c479025d92 Ville Syrjälä  2023-03-27 @278  static int hsw_ips_debugfs_false_color_get(void *data, u64 *val)
42b4c479025d92 Ville Syrjälä  2023-03-27  279  {
42b4c479025d92 Ville Syrjälä  2023-03-27  280  	struct intel_crtc *crtc = data;
42b4c479025d92 Ville Syrjälä  2023-03-27  281  	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
42b4c479025d92 Ville Syrjälä  2023-03-27  282  
42b4c479025d92 Ville Syrjälä  2023-03-27  283  	*val = i915->display.ips.false_color;
42b4c479025d92 Ville Syrjälä  2023-03-27  284  
42b4c479025d92 Ville Syrjälä  2023-03-27  285  	return 0;
42b4c479025d92 Ville Syrjälä  2023-03-27  286  }
42b4c479025d92 Ville Syrjälä  2023-03-27  287  
42b4c479025d92 Ville Syrjälä  2023-03-27 @288  static int hsw_ips_debugfs_false_color_set(void *data, u64 val)
42b4c479025d92 Ville Syrjälä  2023-03-27  289  {
42b4c479025d92 Ville Syrjälä  2023-03-27  290  	struct intel_crtc *crtc = data;
42b4c479025d92 Ville Syrjälä  2023-03-27  291  	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
42b4c479025d92 Ville Syrjälä  2023-03-27  292  	struct intel_crtc_state *crtc_state;
42b4c479025d92 Ville Syrjälä  2023-03-27  293  	int ret;
42b4c479025d92 Ville Syrjälä  2023-03-27  294  
42b4c479025d92 Ville Syrjälä  2023-03-27  295  	ret = drm_modeset_lock(&crtc->base.mutex, NULL);
42b4c479025d92 Ville Syrjälä  2023-03-27  296  	if (ret)
42b4c479025d92 Ville Syrjälä  2023-03-27  297  		return ret;
42b4c479025d92 Ville Syrjälä  2023-03-27  298  
42b4c479025d92 Ville Syrjälä  2023-03-27  299  	i915->display.ips.false_color = val;
42b4c479025d92 Ville Syrjälä  2023-03-27  300  
42b4c479025d92 Ville Syrjälä  2023-03-27  301  	crtc_state = to_intel_crtc_state(crtc->base.state);
42b4c479025d92 Ville Syrjälä  2023-03-27  302  
42b4c479025d92 Ville Syrjälä  2023-03-27  303  	if (!crtc_state->hw.active)
42b4c479025d92 Ville Syrjälä  2023-03-27  304  		goto unlock;
42b4c479025d92 Ville Syrjälä  2023-03-27  305  
42b4c479025d92 Ville Syrjälä  2023-03-27  306  	if (crtc_state->uapi.commit &&
42b4c479025d92 Ville Syrjälä  2023-03-27  307  	    !try_wait_for_completion(&crtc_state->uapi.commit->hw_done))
42b4c479025d92 Ville Syrjälä  2023-03-27  308  		goto unlock;
42b4c479025d92 Ville Syrjälä  2023-03-27  309  
42b4c479025d92 Ville Syrjälä  2023-03-27  310  	hsw_ips_enable(crtc_state);
42b4c479025d92 Ville Syrjälä  2023-03-27  311  
42b4c479025d92 Ville Syrjälä  2023-03-27  312   unlock:
42b4c479025d92 Ville Syrjälä  2023-03-27  313  	drm_modeset_unlock(&crtc->base.mutex);
42b4c479025d92 Ville Syrjälä  2023-03-27  314  
42b4c479025d92 Ville Syrjälä  2023-03-27  315  	return ret;
42b4c479025d92 Ville Syrjälä  2023-03-27  316  }
42b4c479025d92 Ville Syrjälä  2023-03-27  317  
42b4c479025d92 Ville Syrjälä  2023-03-27  318  DEFINE_DEBUGFS_ATTRIBUTE(hsw_ips_debugfs_false_color_fops,
42b4c479025d92 Ville Syrjälä  2023-03-27  319  			 hsw_ips_debugfs_false_color_get,
42b4c479025d92 Ville Syrjälä  2023-03-27 @320  			 hsw_ips_debugfs_false_color_set,
42b4c479025d92 Ville Syrjälä  2023-03-27  321  			 "%llu\n");
42b4c479025d92 Ville Syrjälä  2023-03-27  322  
bc37c98a3d44f7 Jani Nikula    2023-03-02  323  static int hsw_ips_debugfs_status_show(struct seq_file *m, void *unused)
bc37c98a3d44f7 Jani Nikula    2023-03-02  324  {
1fb4da5f7858d7 Ville Syrjälä  2023-03-27  325  	struct intel_crtc *crtc = m->private;
1fb4da5f7858d7 Ville Syrjälä  2023-03-27  326  	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
bc37c98a3d44f7 Jani Nikula    2023-03-02  327  	intel_wakeref_t wakeref;
bc37c98a3d44f7 Jani Nikula    2023-03-02  328  
bc37c98a3d44f7 Jani Nikula    2023-03-02  329  	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
bc37c98a3d44f7 Jani Nikula    2023-03-02  330  
bc37c98a3d44f7 Jani Nikula    2023-03-02  331  	seq_printf(m, "Enabled by kernel parameter: %s\n",
c39fc2aca32a93 Jouni Högander 2023-10-24  332  		   str_yes_no(i915->display.params.enable_ips));
bc37c98a3d44f7 Jani Nikula    2023-03-02  333  
bc37c98a3d44f7 Jani Nikula    2023-03-02  334  	if (DISPLAY_VER(i915) >= 8) {
bc37c98a3d44f7 Jani Nikula    2023-03-02  335  		seq_puts(m, "Currently: unknown\n");
bc37c98a3d44f7 Jani Nikula    2023-03-02  336  	} else {
bc37c98a3d44f7 Jani Nikula    2023-03-02  337  		if (intel_de_read(i915, IPS_CTL) & IPS_ENABLE)
bc37c98a3d44f7 Jani Nikula    2023-03-02  338  			seq_puts(m, "Currently: enabled\n");
bc37c98a3d44f7 Jani Nikula    2023-03-02  339  		else
bc37c98a3d44f7 Jani Nikula    2023-03-02  340  			seq_puts(m, "Currently: disabled\n");
bc37c98a3d44f7 Jani Nikula    2023-03-02  341  	}
bc37c98a3d44f7 Jani Nikula    2023-03-02  342  
bc37c98a3d44f7 Jani Nikula    2023-03-02  343  	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
bc37c98a3d44f7 Jani Nikula    2023-03-02  344  
bc37c98a3d44f7 Jani Nikula    2023-03-02  345  	return 0;
bc37c98a3d44f7 Jani Nikula    2023-03-02  346  }
bc37c98a3d44f7 Jani Nikula    2023-03-02  347  
bc37c98a3d44f7 Jani Nikula    2023-03-02  348  DEFINE_SHOW_ATTRIBUTE(hsw_ips_debugfs_status);
bc37c98a3d44f7 Jani Nikula    2023-03-02  349  
1fb4da5f7858d7 Ville Syrjälä  2023-03-27  350  void hsw_ips_crtc_debugfs_add(struct intel_crtc *crtc)
bc37c98a3d44f7 Jani Nikula    2023-03-02  351  {
1fb4da5f7858d7 Ville Syrjälä  2023-03-27  352  	if (!hsw_crtc_supports_ips(crtc))
1fb4da5f7858d7 Ville Syrjälä  2023-03-27  353  		return;
bc37c98a3d44f7 Jani Nikula    2023-03-02  354  
42b4c479025d92 Ville Syrjälä  2023-03-27 @355  	debugfs_create_file("i915_ips_false_color", 0644, crtc->base.debugfs_entry,
42b4c479025d92 Ville Syrjälä  2023-03-27 @356  			    crtc, &hsw_ips_debugfs_false_color_fops);

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
