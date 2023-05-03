Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 669776F4EC3
	for <lists+intel-gfx@lfdr.de>; Wed,  3 May 2023 04:13:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C113710E18A;
	Wed,  3 May 2023 02:13:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 281D610E18A
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 May 2023 02:13:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683079993; x=1714615993;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ybQin6nLya82IHFbtByd2WPt+cykpKfcD1YvRkLYNVQ=;
 b=da51fQxDJWeBYMJrL+0A/gyztslGz6QxftNd28IlvpYb0vDDHCorzAyS
 A0hl0SDFzbkVEeX0yfGydXRLWGpSMrzJ5/cinen5EQhK+jyMrBu7zd4fU
 jCBot8CJ15wFYZKdhNpja044r6V9YI3QUS5LxsiRsllCTY8PLug7u4fHH
 KEC2Za5qBRyjPPH8DYiM+j2VOsgxojjmhLutjO4hxiboT3RuEtXeSpr7Q
 Nzigapt6puC0gsZrFA52RTIt+tIhMmCw2znYl5BVss0XcfeVE9CmWt6CK
 OB3i/IZ0QQl/uLXZEfVStBimi5FruwHj3K75l3gXtRJh4FqLmWdhsJKl0 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="328913445"
X-IronPort-AV: E=Sophos;i="5.99,245,1677571200"; d="scan'208";a="328913445"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 19:12:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="785892131"
X-IronPort-AV: E=Sophos;i="5.99,245,1677571200"; d="scan'208";a="785892131"
Received: from lkp-server01.sh.intel.com (HELO e3434d64424d) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 02 May 2023 19:11:46 -0700
Received: from kbuild by e3434d64424d with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pu1y5-0001Q0-2y;
 Wed, 03 May 2023 02:11:45 +0000
Date: Wed, 3 May 2023 10:11:24 +0800
From: kernel test robot <lkp@intel.com>
To: Jordan Justen <jordan.l.justen@intel.com>, intel-gfx@lists.freedesktop.org
Message-ID: <202305030956.nFO16YoS-lkp@intel.com>
References: <20230502205744.1067094-1-jordan.l.justen@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230502205744.1067094-1-jordan.l.justen@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/uapi: Add
 DRM_I915_QUERY_GEM_CREATE_EXTENSIONS query item
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, oe-kbuild-all@lists.linux.dev
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jordan,

kernel test robot noticed the following build errors:

[auto build test ERROR on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Jordan-Justen/drm-i915-uapi-Add-DRM_I915_QUERY_GEM_CREATE_EXTENSIONS-query-item/20230503-050014
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20230502205744.1067094-1-jordan.l.justen%40intel.com
patch subject: [Intel-gfx] [PATCH] drm/i915/uapi: Add DRM_I915_QUERY_GEM_CREATE_EXTENSIONS query item
config: i386-allyesconfig (https://download.01.org/0day-ci/archive/20230503/202305030956.nFO16YoS-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.3.0-12) 11.3.0
reproduce (this is a W=1 build):
        # https://github.com/intel-lab-lkp/linux/commit/1154a573531c350e27ca98fd4b4e8da7352f849e
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Jordan-Justen/drm-i915-uapi-Add-DRM_I915_QUERY_GEM_CREATE_EXTENSIONS-query-item/20230503-050014
        git checkout 1154a573531c350e27ca98fd4b4e8da7352f849e
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        make W=1 O=build_dir ARCH=i386 olddefconfig
        make W=1 O=build_dir ARCH=i386 SHELL=/bin/bash

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202305030956.nFO16YoS-lkp@intel.com/

All errors (new ones prefixed by >>):

   In file included from <command-line>:
>> drivers/gpu/drm/i915/gem/i915_gem_create.h:17:54: error: unknown type name 'size_t'
      17 | int i915_gem_create_ext_get_extensions(void *buffer, size_t buffer_size);
         |                                                      ^~~~~~
   drivers/gpu/drm/i915/gem/i915_gem_create.h:1:1: note: 'size_t' is defined in header '<stddef.h>'; did you forget to '#include <stddef.h>'?
     +++ |+#include <stddef.h>
       1 | /* SPDX-License-Identifier: MIT */


vim +/size_t +17 drivers/gpu/drm/i915/gem/i915_gem_create.h

    12	
    13	int i915_gem_dumb_create(struct drm_file *file_priv,
    14				 struct drm_device *dev,
    15				 struct drm_mode_create_dumb *args);
    16	
  > 17	int i915_gem_create_ext_get_extensions(void *buffer, size_t buffer_size);
    18	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
