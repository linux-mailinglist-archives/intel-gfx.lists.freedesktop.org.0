Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 576227D4FD9
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 14:35:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D496710E367;
	Tue, 24 Oct 2023 12:35:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B76F10E367
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 12:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698150900; x=1729686900;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=YXEgxfClpxoOTrTLJ2mMCyIwfrxA1zy8MWow44XXHBs=;
 b=KQlj2vJCZUznxvAO8XVX6Ju59nrrmiAbYBbCTDpkoATTVlcaqc2H4s4J
 DQzQ5jdKFPErg0hf7KXIPBtxPI4iomnkKn39ih/7j48LD3gPbqdpgQrzu
 7Iy9dljTTG0n4E3BWYOQJMaHUiadyWUsBqkQD6NPaxbsMCtw62Vfc0EJZ
 me60JfnApeM2G2O7bpUNCS7OXDczAIHRB5KC/67R4p8SIxuVtlHv4KYG4
 Z5UkfB8vxCeDGL+bfuDmy8nCv7SO84hVooqLGEeN/RE/nJ9AVuYDfn5y+
 To+kOhP7tmLC5u38+IVhxWz28JVqAOM5zsH00/WZA55DSspcaKagZscXe w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="389893309"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="389893309"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 05:34:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="762085738"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="762085738"
Received: from lkp-server01.sh.intel.com (HELO 8917679a5d3e) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 24 Oct 2023 05:34:58 -0700
Received: from kbuild by 8917679a5d3e with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qvGca-0007rl-0W;
 Tue, 24 Oct 2023 12:34:56 +0000
Date: Tue, 24 Oct 2023 20:34:42 +0800
From: kernel test robot <lkp@intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
Message-ID: <202310242019.Hp2KseM1-lkp@intel.com>
References: <20231024010925.3949910-9-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231024010925.3949910-9-imre.deak@intel.com>
Subject: Re: [Intel-gfx] [PATCH 08/29] drm/dp: Add helpers to calculate the
 link BW overhead
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

Hi Imre,

kernel test robot noticed the following build errors:

[auto build test ERROR on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Imre-Deak/drm-dp_mst-Fix-fractional-DSC-bpp-handling/20231024-091920
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20231024010925.3949910-9-imre.deak%40intel.com
patch subject: [Intel-gfx] [PATCH 08/29] drm/dp: Add helpers to calculate the link BW overhead
config: x86_64-buildonly-randconfig-003-20231024 (https://download.01.org/0day-ci/archive/20231024/202310242019.Hp2KseM1-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.3.0-12) 11.3.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20231024/202310242019.Hp2KseM1-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202310242019.Hp2KseM1-lkp@intel.com/

All errors (new ones prefixed by >>):

   ld: drivers/gpu/drm/display/drm_dp_mst_topology.o: in function `drm_dp_calc_pbn_mode':
>> drm_dp_mst_topology.c:(.text+0x1403): undefined reference to `drm_dp_bw_overhead'

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
