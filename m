Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7568D4843E5
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jan 2022 15:55:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B905D10E467;
	Tue,  4 Jan 2022 14:55:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D94B10E467
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jan 2022 14:55:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641308156; x=1672844156;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=RbjQkiEMUCAblDe+NO9gl+b6Vx/2QTkLcinSc7iDco0=;
 b=BFwh/oQWHkH3JlgPb3L8mzeE+C5LgCwKmf2czpZKvdugjfgKogwXOZPf
 1C5yJiIvOjDtAM4nc8h55ZtmpSAkvHBbnjdjeOgLx2SNHaBB2RyTLZqi0
 IZ+XZDD8u89VbH/e9my20GotealJlpE2d1BSJMaiyvgaDPFdSj+o9xkp3
 chYzhtxNzeRki2vyiwHzdfBEuUKtj+LBOpduLacFafQocVtW3cw8A2VZY
 Go5C4wLVcmy8ZcQCdjVrBXmhPwXyXQ+2pIYtRrYP1/GuhKT/wIJMkQO9d
 9XKsyYnaz+P4l01/fo9Qibrhb6tyOefHhLOcNylJcCWpPzwiab1X1cmrF g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10216"; a="222227161"
X-IronPort-AV: E=Sophos;i="5.88,261,1635231600"; d="scan'208";a="222227161"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2022 06:55:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,261,1635231600"; d="scan'208";a="574048684"
Received: from lkp-server01.sh.intel.com (HELO e357b3ef1427) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 04 Jan 2022 06:55:54 -0800
Received: from kbuild by e357b3ef1427 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n4lEA-000FV4-2z; Tue, 04 Jan 2022 14:55:54 +0000
Date: Tue, 4 Jan 2022 22:54:53 +0800
From: kernel test robot <lkp@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Message-ID: <202201042252.AGVzXb16-lkp@intel.com>
References: <20220104112853.495572-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220104112853.495572-1-jani.nikula@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: split out intel_vtd.[ch] from
 i915_drv.h
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
Cc: jani.nikula@intel.com, kbuild-all@lists.01.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jani,

I love your patch! Yet something to improve:

[auto build test ERROR on drm-tip/drm-tip]
[also build test ERROR on next-20211224]
[cannot apply to drm-intel/for-linux-next v5.16-rc8]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Jani-Nikula/drm-i915-split-out-intel_vtd-ch-from-i915_drv-h/20220104-193101
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
config: i386-defconfig (https://download.01.org/0day-ci/archive/20220104/202201042252.AGVzXb16-lkp@intel.com/config)
compiler: gcc-9 (Debian 9.3.0-22) 9.3.0
reproduce (this is a W=1 build):
        # https://github.com/0day-ci/linux/commit/ef4b90e055daa6bac50bd643fd2d8b6b81f03914
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Jani-Nikula/drm-i915-split-out-intel_vtd-ch-from-i915_drv-h/20220104-193101
        git checkout ef4b90e055daa6bac50bd643fd2d8b6b81f03914
        # save the config file to linux build tree
        mkdir build_dir
        make W=1 O=build_dir ARCH=i386 SHELL=/bin/bash

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from drivers/gpu/drm/i915/intel_vtd.h:9,
                    from <command-line>:
>> arch/x86/include/asm/hypervisor.h:78:15: error: unknown type name 'bool'
      78 | static inline bool hypervisor_is_type(enum x86_hypervisor_type type)
         |               ^~~~


vim +/bool +78 arch/x86/include/asm/hypervisor.h

cc8f3b4dd2eb85 Zhenzhong Duan  2019-07-16  68  
30978346372e5c Zhenzhong Duan  2019-07-11  69  extern bool nopv;
03b2a320b19f14 Juergen Gross   2017-11-09  70  extern enum x86_hypervisor_type x86_hyper_type;
6276a074c65199 Borislav Petkov 2013-03-04  71  extern void init_hypervisor_platform(void);
79cc7415521831 Thomas Gleixner 2017-12-04  72  static inline bool hypervisor_is_type(enum x86_hypervisor_type type)
79cc7415521831 Thomas Gleixner 2017-12-04  73  {
79cc7415521831 Thomas Gleixner 2017-12-04  74  	return x86_hyper_type == type;
79cc7415521831 Thomas Gleixner 2017-12-04  75  }
6276a074c65199 Borislav Petkov 2013-03-04  76  #else
6276a074c65199 Borislav Petkov 2013-03-04  77  static inline void init_hypervisor_platform(void) { }
79cc7415521831 Thomas Gleixner 2017-12-04 @78  static inline bool hypervisor_is_type(enum x86_hypervisor_type type)

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
