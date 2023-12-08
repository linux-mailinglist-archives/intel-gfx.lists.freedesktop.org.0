Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E70080AFED
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Dec 2023 23:50:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11F2210EB52;
	Fri,  8 Dec 2023 22:50:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 366B610EB52
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Dec 2023 22:50:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702075837; x=1733611837;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=+A4CIrlbr4UQ0qy/9ndBRAaopfX3pVG1pc1Jj386wXk=;
 b=LY4bW+EL1DoRT4CMpOf6X7tiWfLX+D6VJpi3eW+Uvo4Nyhfuvn1aoELl
 eMx1YAhNnJxGew7Z4C1sOQJdTtXeVWjB9HT1+1LrSzT8YDIU/nm1vudv7
 rn/42FjZdXdDW/nnydey62cFNFK71ZEZoxrUCCUbMe8Pps1v0m/SG2I+k
 O3GTDHg/G2A7sZR9oNfab+cqjLGDRnSWb2CS9KvwYDuibpoori2SAPGDA
 /Bwqe3nc2Jcwpx9mh6crikFbgrlO2Wr0g+HxTSC2i17P/6KRH0uTJTcFV
 UeMipOEMgDVvvz3plJPfJPvPJ71RS3ZHwZ7t++CI/v6oKfkM8mOTiJImm w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10918"; a="1325052"
X-IronPort-AV: E=Sophos;i="6.04,262,1695711600"; 
   d="scan'208";a="1325052"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2023 14:50:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10918"; a="1019507261"
X-IronPort-AV: E=Sophos;i="6.04,262,1695711600"; d="scan'208";a="1019507261"
Received: from lkp-server02.sh.intel.com (HELO b07ab15da5fe) ([10.239.97.151])
 by fmsmga006.fm.intel.com with ESMTP; 08 Dec 2023 14:50:35 -0800
Received: from kbuild by b07ab15da5fe with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rBjg1-000EVZ-11;
 Fri, 08 Dec 2023 22:50:33 +0000
Date: Sat, 9 Dec 2023 06:50:14 +0800
From: kernel test robot <lkp@intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 1/3] drm: Add Adaptive Sync SDP logging
Message-ID: <202312090656.uvVXEvqz-lkp@intel.com>
References: <20231208061933.964588-2-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231208061933.964588-2-mitulkumar.ajitkumar.golani@intel.com>
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

Hi Mitul,

kernel test robot noticed the following build warnings:

[auto build test WARNING on drm-intel/for-linux-next]
[also build test WARNING on drm-intel/for-linux-next-fixes drm/drm-next drm-tip/drm-tip linus/master v6.7-rc4 next-20231208]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Mitul-Golani/drm-Add-Adaptive-Sync-SDP-logging/20231208-142503
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
patch link:    https://lore.kernel.org/r/20231208061933.964588-2-mitulkumar.ajitkumar.golani%40intel.com
patch subject: [PATCH 1/3] drm: Add Adaptive Sync SDP logging
reproduce: (https://download.01.org/0day-ci/archive/20231209/202312090656.uvVXEvqz-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202312090656.uvVXEvqz-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> ./include/drm/display/drm_dp_helper.h:126: warning: Function parameter or member 'revision' not described in 'drm_dp_as_sdp'
>> ./include/drm/display/drm_dp_helper.h:126: warning: Function parameter or member 'vtotal' not described in 'drm_dp_as_sdp'
>> ./include/drm/display/drm_dp_helper.h:126: warning: Function parameter or member 'target_rr' not described in 'drm_dp_as_sdp'

vim +126 ./include/drm/display/drm_dp_helper.h

   100	
   101	/**
   102	 * struct drm_dp_as_sdp - drm DP Adaptive Sync SDP
   103	 *
   104	 * This structure represents a DP AS SDP of drm
   105	 * It is based on DP 2.1 spec [Table 2-126:  Adaptive-Sync SDP Header Bytes] and
   106	 * [Table 2-127: Adaptive-Sync SDP Payload for DB0 through DB8]
   107	 *
   108	 * @sdp_type: secondary-data packet type
   109	 * @length: number of valid data bytes
   110	 * @vmin: minimum vtotal
   111	 * @vmax: maximum vtotal
   112	 * @duration_incr_ms: Successive frame duration increase
   113	 * @duration_decr_ms: Successive frame duration decrease
   114	 * @operation_mode: Adaptive Sync Operation Mode
   115	 */
   116	
   117	struct drm_dp_as_sdp {
   118		unsigned char sdp_type;
   119		unsigned char revision;
   120		unsigned char length;
   121		int vtotal;
   122		int target_rr;
   123		int duration_incr_ms;
   124		int duration_decr_ms;
   125		int operation_mode;
 > 126	};
   127	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
