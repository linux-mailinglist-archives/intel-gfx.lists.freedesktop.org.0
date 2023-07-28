Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 74F18767116
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jul 2023 17:53:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 242DF10E032;
	Fri, 28 Jul 2023 15:53:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4706810E032
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jul 2023 15:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690559579; x=1722095579;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=xVo8tOXrAvebYog5HgRDT2/de9+JnRzcN/dfTLrM580=;
 b=NT5egJYaY4O5spIjQqCRuCA3cj4YNsDBOyE9qT1vcTa8EIo6uXy7HaJM
 HkSgiucmaxYpwy06HIIB5KSDLc+exqbNs/fQYip/uTinhrfT3tllSK36b
 kCfN4e310TbyHXPl/HnFBZwBEIdzKXjfV0zXRyTRwOh695ghOJa02iVAA
 DvVQo1qcsQ1G8K4fBquxSCW2me5QCeAvigrUz5eKd1BiYlbb0Rjz/CTpA
 jtnHBUAJwN+1D0hUWsFZhRkupMpxLy3BtNrrzqwEclxcyFGPnUdBgxCyA
 yvMw1xqgEv35+DJhgSd20eBz/vx15kiXD959V+wvKi3W9hCagNcvkUsC5 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="434908173"
X-IronPort-AV: E=Sophos;i="6.01,237,1684825200"; d="scan'208";a="434908173"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2023 08:52:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="762645827"
X-IronPort-AV: E=Sophos;i="6.01,237,1684825200"; d="scan'208";a="762645827"
Received: from lkp-server02.sh.intel.com (HELO 953e8cd98f7d) ([10.239.97.151])
 by orsmga001.jf.intel.com with ESMTP; 28 Jul 2023 08:52:54 -0700
Received: from kbuild by 953e8cd98f7d with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qPPlU-0003Kr-2F;
 Fri, 28 Jul 2023 15:52:34 +0000
Date: Fri, 28 Jul 2023 23:51:20 +0800
From: kernel test robot <lkp@intel.com>
To: Animesh Manna <animesh.manna@intel.com>,
	intel-gfx@lists.freedesktop.org
Message-ID: <202307282318.EVEl6EsL-lkp@intel.com>
References: <20230728124609.2911830-5-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230728124609.2911830-5-animesh.manna@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 4/6] drm/i915/panelreplay: Initializaton
 and compute config for panel replay
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
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Animesh,

kernel test robot noticed the following build warnings:

[auto build test WARNING on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Animesh-Manna/drm-panelreplay-dpcd-register-definition-for-panelreplay/20230728-205902
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20230728124609.2911830-5-animesh.manna%40intel.com
patch subject: [Intel-gfx] [PATCH v3 4/6] drm/i915/panelreplay: Initializaton and compute config for panel replay
config: x86_64-randconfig-x001-20230728 (https://download.01.org/0day-ci/archive/20230728/202307282318.EVEl6EsL-lkp@intel.com/config)
compiler: clang version 16.0.4 (https://github.com/llvm/llvm-project.git ae42196bc493ffe877a7e3dff8be32035dea4d07)
reproduce: (https://download.01.org/0day-ci/archive/20230728/202307282318.EVEl6EsL-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202307282318.EVEl6EsL-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/i915/display/intel_dp.c:3386:27: warning: overlapping comparisons always evaluate to true [-Wtautological-overlap-compare]
           if (vsc->revision != 0x5 || vsc->revision != 0x7)
               ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~
   1 warning generated.


vim +3386 drivers/gpu/drm/i915/display/intel_dp.c

  3361	
  3362	static ssize_t intel_dp_vsc_sdp_pack(const struct drm_dp_vsc_sdp *vsc,
  3363					     struct dp_sdp *sdp, size_t size)
  3364	{
  3365		size_t length = sizeof(struct dp_sdp);
  3366	
  3367		if (size < length)
  3368			return -ENOSPC;
  3369	
  3370		memset(sdp, 0, size);
  3371	
  3372		/*
  3373		 * Prepare VSC Header for SU as per DP 1.4a spec, Table 2-119
  3374		 * VSC SDP Header Bytes
  3375		 */
  3376		sdp->sdp_header.HB0 = 0; /* Secondary-Data Packet ID = 0 */
  3377		sdp->sdp_header.HB1 = vsc->sdp_type; /* Secondary-data Packet Type */
  3378		sdp->sdp_header.HB2 = vsc->revision; /* Revision Number */
  3379		sdp->sdp_header.HB3 = vsc->length; /* Number of Valid Data Bytes */
  3380	
  3381		/*
  3382		 * Other than revision 0x5 which supports Pixel Encoding/Colorimetry
  3383		 * Format as per DP 1.4a spec, revision 0x7 also supports Pixel
  3384		 * Encoding/Colorimetry Format as per DP 2.0 spec.
  3385		 */
> 3386		if (vsc->revision != 0x5 || vsc->revision != 0x7)
  3387			goto out;
  3388	
  3389		/* VSC SDP Payload for DB16 through DB18 */
  3390		/* Pixel Encoding and Colorimetry Formats  */
  3391		sdp->db[16] = (vsc->pixelformat & 0xf) << 4; /* DB16[7:4] */
  3392		sdp->db[16] |= vsc->colorimetry & 0xf; /* DB16[3:0] */
  3393	
  3394		switch (vsc->bpc) {
  3395		case 6:
  3396			/* 6bpc: 0x0 */
  3397			break;
  3398		case 8:
  3399			sdp->db[17] = 0x1; /* DB17[3:0] */
  3400			break;
  3401		case 10:
  3402			sdp->db[17] = 0x2;
  3403			break;
  3404		case 12:
  3405			sdp->db[17] = 0x3;
  3406			break;
  3407		case 16:
  3408			sdp->db[17] = 0x4;
  3409			break;
  3410		default:
  3411			MISSING_CASE(vsc->bpc);
  3412			break;
  3413		}
  3414		/* Dynamic Range and Component Bit Depth */
  3415		if (vsc->dynamic_range == DP_DYNAMIC_RANGE_CTA)
  3416			sdp->db[17] |= 0x80;  /* DB17[7] */
  3417	
  3418		/* Content Type */
  3419		sdp->db[18] = vsc->content_type & 0x7;
  3420	
  3421	out:
  3422		return length;
  3423	}
  3424	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
