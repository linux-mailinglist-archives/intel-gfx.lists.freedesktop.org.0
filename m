Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C186183F3B6
	for <lists+intel-gfx@lfdr.de>; Sun, 28 Jan 2024 05:19:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D2C710F43E;
	Sun, 28 Jan 2024 04:19:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F10B710F43E
 for <intel-gfx@lists.freedesktop.org>; Sun, 28 Jan 2024 04:19:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706415556; x=1737951556;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=mKc1JWRCEkwPh0RRo8QjWsqyo5zlUbvm69ZFmB5xFBA=;
 b=Qh3S8Ptl8HqGIenQ+1nwepTYAxhPGvQqDch5ZWj4zerXjVKYH2WfuLKF
 Xt4cubDWZTbrjbVPvV1qtcaqrWfi8wyCYAPhkVd3vwtTnFaXyu/AO44NW
 gWaIErSh5Rc3lLoiWglRxdWeL3aY5iCOi9X82M3/G6jNnhJDhQkFmy3Rk
 vVfXz6/C3+ugj0Re05xxaKTtbZmDgULi2lrPzPFhJIGxpYhAS9RxvYcXT
 GpLcnZyx5Hgf8CmMOvuAjFJliVd0J4FQdZpUnqHQCd+MQfDnGJ3dTGuS3
 sJTHOwKpy9bDOqxhRYGAIuP28PyLPMIdfuH/ualjD2Lf2NsL/sVCPIjYo g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10966"; a="393169080"
X-IronPort-AV: E=Sophos;i="6.05,220,1701158400"; d="scan'208";a="393169080"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2024 20:19:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10966"; a="821528268"
X-IronPort-AV: E=Sophos;i="6.05,220,1701158400"; d="scan'208";a="821528268"
Received: from lkp-server01.sh.intel.com (HELO 370188f8dc87) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 27 Jan 2024 20:19:13 -0800
Received: from kbuild by 370188f8dc87 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rTwdT-00033q-0K;
 Sun, 28 Jan 2024 04:19:11 +0000
Date: Sun, 28 Jan 2024 12:18:21 +0800
From: kernel test robot <lkp@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v3 12/16] drm/i915: Simplify intel_initial_plane_config()
 calling convention
Message-ID: <202401281233.cX62UpWx-lkp@intel.com>
References: <20240116075636.6121-13-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240116075636.6121-13-ville.syrjala@linux.intel.com>
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, oe-kbuild-all@lists.linux.dev
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Ville,

kernel test robot noticed the following build warnings:

[auto build test WARNING on drm-intel/for-linux-next]
[also build test WARNING on drm-intel/for-linux-next-fixes drm-tip/drm-tip linus/master v6.8-rc1 next-20240125]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Ville-Syrjala/drm-i915-Use-struct-resource-for-memory-region-IO-as-well/20240125-222947
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
patch link:    https://lore.kernel.org/r/20240116075636.6121-13-ville.syrjala%40linux.intel.com
patch subject: [PATCH v3 12/16] drm/i915: Simplify intel_initial_plane_config() calling convention
config: alpha-randconfig-r121-20240127 (https://download.01.org/0day-ci/archive/20240128/202401281233.cX62UpWx-lkp@intel.com/config)
compiler: alpha-linux-gcc (GCC) 13.2.0
reproduce: (https://download.01.org/0day-ci/archive/20240128/202401281233.cX62UpWx-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202401281233.cX62UpWx-lkp@intel.com/

sparse warnings: (new ones prefixed by >>)
>> drivers/gpu/drm/xe/display/xe_plane_initial.c:270:6: sparse: sparse: symbol 'intel_crtc_initial_plane_config' was not declared. Should it be static?

vim +/intel_crtc_initial_plane_config +270 drivers/gpu/drm/xe/display/xe_plane_initial.c

44e694958b9539 Maarten Lankhorst 2023-08-17  269  
44e694958b9539 Maarten Lankhorst 2023-08-17 @270  void intel_crtc_initial_plane_config(struct intel_crtc *crtc)

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
