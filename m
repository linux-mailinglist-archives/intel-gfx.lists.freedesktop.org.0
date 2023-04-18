Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BB4B6E6F19
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Apr 2023 00:07:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77A4F10E07B;
	Tue, 18 Apr 2023 22:07:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA30210E07B
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Apr 2023 22:07:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681855634; x=1713391634;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=jQHEShALP2TWZupyupYi4r1Y0EsXNmvPX4Aj7HUxmN8=;
 b=QuDHCsy7HQ1eNMVD0895ZEfe2WDW1kuwlzpLi7fHyrnAhNOpP3HflgoS
 A6sZ6PP5Z6rPxiYsnqS+a1N1fdn8srClA2Ws263OCxcF7WA1GijEltHJ+
 E8WKkdjfmod4/isbNG1hrghMdguuZvs3CQurnM95wEFVmZxJje1Ub27hA
 FOjUkqHqoonID/x1ea5lzziHdgWiKV+zRQMK8mcPtuac0CnHcMHlcURv7
 1Yew7Z/ZDIY9I1tea0TI9JymiwzrFnObNrwSR9B7E1e6AN2B4H4lzH9Wj
 Fvr4f9cvd6R+iVdB2JbWvy4SPxa7pQpt11eYLozeZAmF7HNGCv6bbFUIS Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="334101730"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="334101730"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 15:07:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="684761868"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="684761868"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 18 Apr 2023 15:07:13 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1potTj-000e89-2r;
 Tue, 18 Apr 2023 22:07:11 +0000
Date: Wed, 19 Apr 2023 06:06:17 +0800
From: kernel test robot <lkp@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <202304190547.OlyNaAi3-lkp@intel.com>
References: <20230418175528.13117-12-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230418175528.13117-12-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 11/15] drm/i915: Rename skl+ scaler binding
 bits
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

Hi Ville,

kernel test robot noticed the following build errors:

[auto build test ERROR on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Ville-Syrjala/drm-i915-Check-pipe-source-size-when-using-skl-scalers/20230419-015829
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20230418175528.13117-12-ville.syrjala%40linux.intel.com
patch subject: [Intel-gfx] [PATCH 11/15] drm/i915: Rename skl+ scaler binding bits
config: x86_64-allyesconfig (https://download.01.org/0day-ci/archive/20230419/202304190547.OlyNaAi3-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.3.0-8) 11.3.0
reproduce (this is a W=1 build):
        # https://github.com/intel-lab-lkp/linux/commit/19871303e2971d47d4ac0557533295744c04cfd4
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Ville-Syrjala/drm-i915-Check-pipe-source-size-when-using-skl-scalers/20230419-015829
        git checkout 19871303e2971d47d4ac0557533295744c04cfd4
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        make W=1 O=build_dir ARCH=x86_64 olddefconfig
        make W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash drivers/gpu/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202304190547.OlyNaAi3-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/gpu/drm/i915/gvt/handlers.c: In function 'pf_write':
>> drivers/gpu/drm/i915/gvt/handlers.c:1565:45: error: 'PS_PLANE_SEL_MASK' undeclared (first use in this function); did you mean 'PS_PHASE_MASK'?
    1565 |            offset == _PS_1C_CTRL) && (val & PS_PLANE_SEL_MASK) != 0) {
         |                                             ^~~~~~~~~~~~~~~~~
         |                                             PS_PHASE_MASK
   drivers/gpu/drm/i915/gvt/handlers.c:1565:45: note: each undeclared identifier is reported only once for each function it appears in


vim +1565 drivers/gpu/drm/i915/gvt/handlers.c

e39c5add322184 Zhi Wang         2016-09-02  1556  
04d348ae3f0aea Zhi Wang         2016-04-25  1557  static int pf_write(struct intel_vgpu *vgpu,
04d348ae3f0aea Zhi Wang         2016-04-25  1558  		unsigned int offset, void *p_data, unsigned int bytes)
04d348ae3f0aea Zhi Wang         2016-04-25  1559  {
a61ac1e75105a0 Chris Wilson     2020-03-06  1560  	struct drm_i915_private *i915 = vgpu->gvt->gt->i915;
04d348ae3f0aea Zhi Wang         2016-04-25  1561  	u32 val = *(u32 *)p_data;
04d348ae3f0aea Zhi Wang         2016-04-25  1562  
04d348ae3f0aea Zhi Wang         2016-04-25  1563  	if ((offset == _PS_1A_CTRL || offset == _PS_2A_CTRL ||
04d348ae3f0aea Zhi Wang         2016-04-25  1564  	   offset == _PS_1B_CTRL || offset == _PS_2B_CTRL ||
04d348ae3f0aea Zhi Wang         2016-04-25 @1565  	   offset == _PS_1C_CTRL) && (val & PS_PLANE_SEL_MASK) != 0) {
12d5861973c70f Pankaj Bharadiya 2020-02-20  1566  		drm_WARN_ONCE(&i915->drm, true,
12d5861973c70f Pankaj Bharadiya 2020-02-20  1567  			      "VM(%d): guest is trying to scaling a plane\n",
04d348ae3f0aea Zhi Wang         2016-04-25  1568  			      vgpu->id);
04d348ae3f0aea Zhi Wang         2016-04-25  1569  		return 0;
04d348ae3f0aea Zhi Wang         2016-04-25  1570  	}
04d348ae3f0aea Zhi Wang         2016-04-25  1571  
04d348ae3f0aea Zhi Wang         2016-04-25  1572  	return intel_vgpu_default_mmio_write(vgpu, offset, p_data, bytes);
04d348ae3f0aea Zhi Wang         2016-04-25  1573  }
04d348ae3f0aea Zhi Wang         2016-04-25  1574  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
