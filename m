Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A60B87A778E
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Sep 2023 11:31:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2938E10E46F;
	Wed, 20 Sep 2023 09:31:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8F8710E474
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Sep 2023 09:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695202258; x=1726738258;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=KZOSYgSJsXkQANOn6X4OkJoXJP7Bh3dETkoWTPhbl5g=;
 b=XC1OUOoMp2dtRirchy4WcweLXhriZjEE3Xo0wpZl45jMUiZJCZGhuAV5
 uFVI7/TfRlvw27m2LdF/MZ+wdUyTgLI4WAB4o35WPWp2V4ScT6AH8TWKC
 dAi1yWlDqlM0KtqYxVVscz8DeffRzOeST44MWCkzmqHl1KWdQ/GZUS/Ef
 D25qMJm60utBLpbR5/FtIwYsCLLvjXpq60c6yyh9LBN3dHrUKzmvNtMoS
 H9L49mTpfbriv0t0ap5oT/pZ9ULDSUqPTDkm+XWZDRvT4dLdPDxKzgBJQ
 fH68UA9XsoUm4InIkBzDJFmCtQ41IZhbIvod4W+rr9hvn/Ma0VzLXcR74 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="384018698"
X-IronPort-AV: E=Sophos;i="6.02,161,1688454000"; d="scan'208";a="384018698"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 02:30:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="861909604"
X-IronPort-AV: E=Sophos;i="6.02,161,1688454000"; d="scan'208";a="861909604"
Received: from lkp-server02.sh.intel.com (HELO 9ef86b2655e5) ([10.239.97.151])
 by fmsmga002.fm.intel.com with ESMTP; 20 Sep 2023 02:30:48 -0700
Received: from kbuild by 9ef86b2655e5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qitXi-0008Zo-0S;
 Wed, 20 Sep 2023 09:30:46 +0000
Date: Wed, 20 Sep 2023 17:30:15 +0800
From: kernel test robot <lkp@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>,
	intel-gfx@lists.freedesktop.org
Message-ID: <202309201747.5tql4Gr4-lkp@intel.com>
References: <20230920063611.242942-3-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230920063611.242942-3-suraj.kandpal@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/hdcp: Move common message
 filling function to its own file
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
Cc: jani.nikula@intel.com, oe-kbuild-all@lists.linux.dev
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Suraj,

kernel test robot noticed the following build errors:

[auto build test ERROR on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Suraj-Kandpal/drm-i915-hdcp-Move-checks-for-gsc-health-status/20230920-143839
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20230920063611.242942-3-suraj.kandpal%40intel.com
patch subject: [Intel-gfx] [PATCH 2/2] drm/i915/hdcp: Move common message filling function to its own file
config: i386-buildonly-randconfig-002-20230920 (https://download.01.org/0day-ci/archive/20230920/202309201747.5tql4Gr4-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20230920/202309201747.5tql4Gr4-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202309201747.5tql4Gr4-lkp@intel.com/

All errors (new ones prefixed by >>):

>> make[7]: *** No rule to make target 'drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.o', needed by 'drivers/gpu/drm/i915/i915.o'.
   make[7]: *** [scripts/Makefile.build:243: drivers/gpu/drm/i915/display/intel_hdcp_gsc.o] Error 1 shuffle=1704323870
   make[7]: Target 'drivers/gpu/drm/i915/' not remade because of errors.

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
