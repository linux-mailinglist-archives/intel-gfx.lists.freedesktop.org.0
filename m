Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDB30945BCF
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Aug 2024 12:08:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE8A210E9D1;
	Fri,  2 Aug 2024 10:08:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vbz33T+b";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDC1210E962;
 Fri,  2 Aug 2024 10:08:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722593289; x=1754129289;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=NKka8igrXdKrMdB7U5JbTReFcWmRHWXdt6QriFqEmZ0=;
 b=Vbz33T+bgpXKA5xUcFUE533kHHsZ6SoeZ8stpFchgJAQAdvnqi5qIzqn
 Kz+ek7krBO5Kx9cOBBxae+s0SQ1dv53ziRzP4RjnKoJJ8pom8paSgtHFM
 q3CJHXJarIKpINCxFOJGRpzYO9PurROOU0GzDfWCeWHwTcZFroAfbz4Pu
 kB4EjW/rWchUq5oqHJm+j9+GnK782Fm63UkFWM+rQcRHR9LYQBw1mL/kL
 kMNdTTZ18+2PZizQKojD2bpJyObwmxgLNDBZyMk8wvbb8tLnnUU+JL71V
 Hch/wHawviQZ5cM1yiOgHXJYvPch+MlJm3iTeFd67nndKnmT0RRo7WAsN g==;
X-CSE-ConnectionGUID: b6etFM07QVGyFhF1OPhIYQ==
X-CSE-MsgGUID: iaJi8yo4TIyi4zicz/yk8Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11151"; a="20766995"
X-IronPort-AV: E=Sophos;i="6.09,257,1716274800"; d="scan'208";a="20766995"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2024 03:08:08 -0700
X-CSE-ConnectionGUID: D+YKVNstTtKqLzZTwyfUSg==
X-CSE-MsgGUID: YdIepn79Qx+wmFm+8A8c7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,257,1716274800"; d="scan'208";a="55019677"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by fmviesa006.fm.intel.com with ESMTP; 02 Aug 2024 03:08:07 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sZpCf-000wdU-0T;
 Fri, 02 Aug 2024 10:08:05 +0000
Date: Fri, 2 Aug 2024 18:07:11 +0800
From: kernel test robot <lkp@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: oe-kbuild-all@lists.linux.dev, jani.nikula@intel.com
Subject: Re: [PATCH 3/4] drm/i915/opregion: convert to struct intel_display
Message-ID: <202408021709.1eljj3eQ-lkp@intel.com>
References: <8a71cea4f260a992200c76480c5358b72a7f9187.1722444150.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8a71cea4f260a992200c76480c5358b72a7f9187.1722444150.git.jani.nikula@intel.com>
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
[also build test ERROR on drm-tip/drm-tip next-20240802]
[cannot apply to drm-intel/for-linux-next-fixes drm-xe/drm-xe-next linus/master v6.11-rc1]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Jani-Nikula/drm-i915-acpi-convert-to-struct-intel_display/20240802-080825
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
patch link:    https://lore.kernel.org/r/8a71cea4f260a992200c76480c5358b72a7f9187.1722444150.git.jani.nikula%40intel.com
patch subject: [PATCH 3/4] drm/i915/opregion: convert to struct intel_display
config: i386-buildonly-randconfig-004-20240802 (https://download.01.org/0day-ci/archive/20240802/202408021709.1eljj3eQ-lkp@intel.com/config)
compiler: gcc-13 (Ubuntu 13.2.0-4ubuntu3) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240802/202408021709.1eljj3eQ-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202408021709.1eljj3eQ-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/gpu/drm/i915/display/intel_bios.c: In function 'opregion_get_panel_type':
>> drivers/gpu/drm/i915/display/intel_bios.c:626:46: error: passing argument 1 of 'intel_opregion_get_panel_type' from incompatible pointer type [-Werror=incompatible-pointer-types]
     626 |         return intel_opregion_get_panel_type(display);
         |                                              ^~~~~~~
         |                                              |
         |                                              struct intel_display *
   In file included from drivers/gpu/drm/i915/display/intel_display_core.h:28,
                    from drivers/gpu/drm/i915/i915_drv.h:40,
                    from drivers/gpu/drm/i915/display/intel_bios.c:34:
   drivers/gpu/drm/i915/display/intel_opregion.h:112:74: note: expected 'struct drm_i915_private *' but argument is of type 'struct intel_display *'
     112 | static inline int intel_opregion_get_panel_type(struct drm_i915_private *dev)
         |                                                 ~~~~~~~~~~~~~~~~~~~~~~~~~^~~
   cc1: some warnings being treated as errors
--
   drivers/gpu/drm/i915/i915_driver.c: In function 'intel_runtime_suspend':
>> drivers/gpu/drm/i915/i915_driver.c:1536:47: error: passing argument 1 of 'intel_opregion_notify_adapter' from incompatible pointer type [-Werror=incompatible-pointer-types]
    1536 |                 intel_opregion_notify_adapter(display, PCI_D3hot);
         |                                               ^~~~~~~
         |                                               |
         |                                               struct intel_display *
   In file included from drivers/gpu/drm/i915/display/intel_display_core.h:28,
                    from drivers/gpu/drm/i915/i915_drv.h:40,
                    from drivers/gpu/drm/i915/gt/intel_context.h:14,
                    from drivers/gpu/drm/i915/gem/i915_gem_context.h:12,
                    from drivers/gpu/drm/i915/i915_driver.c:67:
   drivers/gpu/drm/i915/display/intel_opregion.h:107:56: note: expected 'struct drm_i915_private *' but argument is of type 'struct intel_display *'
     107 | intel_opregion_notify_adapter(struct drm_i915_private *dev, pci_power_t state)
         |                               ~~~~~~~~~~~~~~~~~~~~~~~~~^~~
   drivers/gpu/drm/i915/i915_driver.c:1545:47: error: passing argument 1 of 'intel_opregion_notify_adapter' from incompatible pointer type [-Werror=incompatible-pointer-types]
    1545 |                 intel_opregion_notify_adapter(display, PCI_D1);
         |                                               ^~~~~~~
         |                                               |
         |                                               struct intel_display *
   drivers/gpu/drm/i915/display/intel_opregion.h:107:56: note: expected 'struct drm_i915_private *' but argument is of type 'struct intel_display *'
     107 | intel_opregion_notify_adapter(struct drm_i915_private *dev, pci_power_t state)
         |                               ~~~~~~~~~~~~~~~~~~~~~~~~~^~~
   drivers/gpu/drm/i915/i915_driver.c: In function 'intel_runtime_resume':
   drivers/gpu/drm/i915/i915_driver.c:1575:39: error: passing argument 1 of 'intel_opregion_notify_adapter' from incompatible pointer type [-Werror=incompatible-pointer-types]
    1575 |         intel_opregion_notify_adapter(display, PCI_D0);
         |                                       ^~~~~~~
         |                                       |
         |                                       struct intel_display *
   drivers/gpu/drm/i915/display/intel_opregion.h:107:56: note: expected 'struct drm_i915_private *' but argument is of type 'struct intel_display *'
     107 | intel_opregion_notify_adapter(struct drm_i915_private *dev, pci_power_t state)
         |                               ~~~~~~~~~~~~~~~~~~~~~~~~~^~~
   cc1: some warnings being treated as errors


vim +/intel_opregion_get_panel_type +626 drivers/gpu/drm/i915/display/intel_bios.c

   619	
   620	static int opregion_get_panel_type(struct drm_i915_private *i915,
   621					   const struct intel_bios_encoder_data *devdata,
   622					   const struct drm_edid *drm_edid, bool use_fallback)
   623	{
   624		struct intel_display *display = &i915->display;
   625	
 > 626		return intel_opregion_get_panel_type(display);
   627	}
   628	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
