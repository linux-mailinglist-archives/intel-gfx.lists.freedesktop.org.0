Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD0278933E
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Aug 2023 04:06:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B27E310E036;
	Sat, 26 Aug 2023 02:06:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BFF910E036
 for <intel-gfx@lists.freedesktop.org>; Sat, 26 Aug 2023 02:06:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693015573; x=1724551573;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=2boz+0DqsT89h8sY/taKcahLfp+lgCs1CjvxlvowQTM=;
 b=WfVOBn66dYzm72vUtkqCEkYYo+BR0JPt3mf+igh2jUvQGoEcyxcQdxaw
 3C0+ugF+aIic2dJRzjt9g+fNVmIvxchFC0MtF6Sqwdj9fe2TJXBFnYh1j
 3pnjw9epu5sFRxWyCeaxF3jrBEdlcZMuArHdWduQ3PaAzZYQBxLnWh1UV
 yoyB1+hTH0cLusLV2+CNeHekMD/Il+2p4oIIyR7ERR7L/fLPeKpUop8zO
 ltdJoY7gCQxrGQZw+zR9H7KrhU0NiqHxkQTGuxUk6HdDu6E1f00eGupLg
 L6DTPyHa7eiTCgc9QRd3LXAgknE065azS7WsGOjJ0J4Qk8n7xZM2N2uzy Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10813"; a="354365261"
X-IronPort-AV: E=Sophos;i="6.02,202,1688454000"; d="scan'208";a="354365261"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2023 19:06:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10813"; a="772686717"
X-IronPort-AV: E=Sophos;i="6.02,202,1688454000"; d="scan'208";a="772686717"
Received: from lkp-server02.sh.intel.com (HELO daf8bb0a381d) ([10.239.97.151])
 by orsmga001.jf.intel.com with ESMTP; 25 Aug 2023 19:06:10 -0700
Received: from kbuild by daf8bb0a381d with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qZigk-0004FT-0o;
 Sat, 26 Aug 2023 02:06:10 +0000
Date: Sat, 26 Aug 2023 10:05:36 +0800
From: kernel test robot <lkp@intel.com>
To: Animesh Manna <animesh.manna@intel.com>,
	intel-gfx@lists.freedesktop.org
Message-ID: <202308260901.MphIjr2l-lkp@intel.com>
References: <20230824040952.186407-5-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230824040952.186407-5-animesh.manna@intel.com>
Subject: Re: [Intel-gfx] [PATCH v4 4/6] drm/i915/panelreplay: Initializaton
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

url:    https://github.com/intel-lab-lkp/linux/commits/Animesh-Manna/drm-panelreplay-dpcd-register-definition-for-panelreplay/20230824-122224
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20230824040952.186407-5-animesh.manna%40intel.com
patch subject: [Intel-gfx] [PATCH v4 4/6] drm/i915/panelreplay: Initializaton and compute config for panel replay
config: x86_64-rhel-8.3-rust (https://download.01.org/0day-ci/archive/20230826/202308260901.MphIjr2l-lkp@intel.com/config)
compiler: clang version 15.0.7 (https://github.com/llvm/llvm-project.git 8dfdcc7b7bf66834a761bd8de445840ef68e4d1a)
reproduce: (https://download.01.org/0day-ci/archive/20230826/202308260901.MphIjr2l-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202308260901.MphIjr2l-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/i915/display/intel_dp.c:3776:27: warning: overlapping comparisons always evaluate to true [-Wtautological-overlap-compare]
           if (vsc->revision != 0x5 || vsc->revision != 0x7)
               ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~
   1 warning generated.


vim +3776 drivers/gpu/drm/i915/display/intel_dp.c

  3751	
  3752	static ssize_t intel_dp_vsc_sdp_pack(const struct drm_dp_vsc_sdp *vsc,
  3753					     struct dp_sdp *sdp, size_t size)
  3754	{
  3755		size_t length = sizeof(struct dp_sdp);
  3756	
  3757		if (size < length)
  3758			return -ENOSPC;
  3759	
  3760		memset(sdp, 0, size);
  3761	
  3762		/*
  3763		 * Prepare VSC Header for SU as per DP 1.4a spec, Table 2-119
  3764		 * VSC SDP Header Bytes
  3765		 */
  3766		sdp->sdp_header.HB0 = 0; /* Secondary-Data Packet ID = 0 */
  3767		sdp->sdp_header.HB1 = vsc->sdp_type; /* Secondary-data Packet Type */
  3768		sdp->sdp_header.HB2 = vsc->revision; /* Revision Number */
  3769		sdp->sdp_header.HB3 = vsc->length; /* Number of Valid Data Bytes */
  3770	
  3771		/*
  3772		 * Other than revision 0x5 which supports Pixel Encoding/Colorimetry
  3773		 * Format as per DP 1.4a spec, revision 0x7 also supports Pixel
  3774		 * Encoding/Colorimetry Format as per DP 2.0 spec.
  3775		 */
> 3776		if (vsc->revision != 0x5 || vsc->revision != 0x7)
  3777			goto out;
  3778	
  3779		/* VSC SDP Payload for DB16 through DB18 */
  3780		/* Pixel Encoding and Colorimetry Formats  */
  3781		sdp->db[16] = (vsc->pixelformat & 0xf) << 4; /* DB16[7:4] */
  3782		sdp->db[16] |= vsc->colorimetry & 0xf; /* DB16[3:0] */
  3783	
  3784		switch (vsc->bpc) {
  3785		case 6:
  3786			/* 6bpc: 0x0 */
  3787			break;
  3788		case 8:
  3789			sdp->db[17] = 0x1; /* DB17[3:0] */
  3790			break;
  3791		case 10:
  3792			sdp->db[17] = 0x2;
  3793			break;
  3794		case 12:
  3795			sdp->db[17] = 0x3;
  3796			break;
  3797		case 16:
  3798			sdp->db[17] = 0x4;
  3799			break;
  3800		default:
  3801			MISSING_CASE(vsc->bpc);
  3802			break;
  3803		}
  3804		/* Dynamic Range and Component Bit Depth */
  3805		if (vsc->dynamic_range == DP_DYNAMIC_RANGE_CTA)
  3806			sdp->db[17] |= 0x80;  /* DB17[7] */
  3807	
  3808		/* Content Type */
  3809		sdp->db[18] = vsc->content_type & 0x7;
  3810	
  3811	out:
  3812		return length;
  3813	}
  3814	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
