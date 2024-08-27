Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBA94960762
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2024 12:28:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C776210E2D2;
	Tue, 27 Aug 2024 10:28:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fRbq/vIF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37BEB10E2D0;
 Tue, 27 Aug 2024 10:28:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724754497; x=1756290497;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=pUy2oyoJrVmMWlijASDITXcHu4JWTvCvhoAajFEhuFw=;
 b=fRbq/vIF74vohjTZEDmMGExMZimJHnwXIHyGAeFnPIIvoNRORXPh3RWF
 PlgDhQH3AcP26/dv/C/Kmosg+/nEWnPcAixkU/IrGxFqqhDs3CTmaN01G
 MYZXCGFoj3t7R6/OcMujMF14cXv/zXg9f2FeP3EaJtKwb+x1vvlZfoHpj
 PN3JFhZJpfSPs1Ljkr+zUbNlnnoCeMzzb5fqZCZ8/ijQJhO7/dSzbVrFO
 LiLOWhaIdBHDf/2xYQqDFPhITHsWau6kgs5TrNJo7Fy2IiczFR/UvrZ34
 DdPGXqP0z7eV04NOqw3hVK6y2AplRvAyim/vL3rgR1pW3rDuxJSv2uB9h w==;
X-CSE-ConnectionGUID: gdQ0mRoCTC2VnKaXBEfNKw==
X-CSE-MsgGUID: qR2kx8tfQrefeoRWNK9Qqg==
X-IronPort-AV: E=McAfee;i="6700,10204,11176"; a="23375843"
X-IronPort-AV: E=Sophos;i="6.10,180,1719903600"; d="scan'208";a="23375843"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2024 03:28:17 -0700
X-CSE-ConnectionGUID: lRAVxdmHQOGvXCcobd+pPw==
X-CSE-MsgGUID: dERGsDcGS/yCxKtbAjd9TQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,180,1719903600"; d="scan'208";a="100320793"
Received: from lkp-server01.sh.intel.com (HELO 9a732dc145d3) ([10.239.97.150])
 by orviesa001.jf.intel.com with ESMTP; 27 Aug 2024 03:28:15 -0700
Received: from kbuild by 9a732dc145d3 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sitQr-000IWU-0W;
 Tue, 27 Aug 2024 10:28:13 +0000
Date: Tue, 27 Aug 2024 18:27:25 +0800
From: kernel test robot <lkp@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev, jani.nikula@intel.com
Subject: Re: [PATCH 5/7] drm/i915/display: include media/cec-notifier.h and
 linux/debugfs.h where needed
Message-ID: <202408271847.dOpt09wa-lkp@intel.com>
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
[also build test ERROR on drm-xe/drm-xe-next next-20240827]
[cannot apply to linus/master v6.11-rc5]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Jani-Nikula/drm-i915-wm-move-struct-intel_watermark_params-to-i9xx_wm-c/20240827-003437
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
patch link:    https://lore.kernel.org/r/a9aeb27f0107bdf3d2bd834a48583bc64072447a.1724689818.git.jani.nikula%40intel.com
patch subject: [PATCH 5/7] drm/i915/display: include media/cec-notifier.h and linux/debugfs.h where needed
config: x86_64-rhel-8.3-rust (https://download.01.org/0day-ci/archive/20240827/202408271847.dOpt09wa-lkp@intel.com/config)
compiler: clang version 18.1.5 (https://github.com/llvm/llvm-project 617a15a9eac96088ae5e9134248d8236e34b91b1)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240827/202408271847.dOpt09wa-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202408271847.dOpt09wa-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/i915/display/hsw_ips.c:321:5: error: expected identifier
     321 |                          "%llu\n");
         |                          ^
>> drivers/gpu/drm/i915/display/hsw_ips.c:318:1: error: type specifier missing, defaults to 'int'; ISO C99 and later do not support implicit int [-Wimplicit-int]
     318 | DEFINE_DEBUGFS_ATTRIBUTE(hsw_ips_debugfs_false_color_fops,
         | ^
         | int
>> drivers/gpu/drm/i915/display/hsw_ips.c:318:25: error: a function declaration without a prototype is deprecated in all versions of C [-Werror,-Wstrict-prototypes]
     318 | DEFINE_DEBUGFS_ATTRIBUTE(hsw_ips_debugfs_false_color_fops,
         |                         ^
     319 |                          hsw_ips_debugfs_false_color_get,
     320 |                          hsw_ips_debugfs_false_color_set,
     321 |                          "%llu\n");
         |                                  
         |                                  void
>> drivers/gpu/drm/i915/display/hsw_ips.c:355:2: error: call to undeclared function 'debugfs_create_file'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
     355 |         debugfs_create_file("i915_ips_false_color", 0644, crtc->base.debugfs_entry,
         |         ^
   drivers/gpu/drm/i915/display/hsw_ips.c:355:2: note: did you mean 'bus_create_file'?
   include/linux/device/bus.h:126:18: note: 'bus_create_file' declared here
     126 | int __must_check bus_create_file(const struct bus_type *bus, struct bus_attribute *attr);
         |                  ^
>> drivers/gpu/drm/i915/display/hsw_ips.c:356:15: error: use of undeclared identifier 'hsw_ips_debugfs_false_color_fops'
     356 |                             crtc, &hsw_ips_debugfs_false_color_fops);
         |                                    ^
   5 errors generated.


vim +321 drivers/gpu/drm/i915/display/hsw_ips.c

42b4c479025d92 Ville Syrjälä  2023-03-27  317  
42b4c479025d92 Ville Syrjälä  2023-03-27 @318  DEFINE_DEBUGFS_ATTRIBUTE(hsw_ips_debugfs_false_color_fops,
42b4c479025d92 Ville Syrjälä  2023-03-27  319  			 hsw_ips_debugfs_false_color_get,
42b4c479025d92 Ville Syrjälä  2023-03-27  320  			 hsw_ips_debugfs_false_color_set,
42b4c479025d92 Ville Syrjälä  2023-03-27 @321  			 "%llu\n");
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
