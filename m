Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E53E277FAAE
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Aug 2023 17:25:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC92010E4DE;
	Thu, 17 Aug 2023 15:25:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4EBE10E4DE
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Aug 2023 15:25:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692285942; x=1723821942;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=bWfsPyFfKqEssNtf28fn3Z9KsAMTbdk29rYzhPaSm2A=;
 b=jSiX4LfiXDJzPyuGQxYDDTUTibpjWAnxjzDVV4pHuTv2ZZbZt3QjaOXV
 aYlFlTCraPv2POHfFP7hKgzdFdmjplGT6P+q/kCTx36vs7OJ9Yn7SPFfq
 I5pyost0BF+gOYPzCYOZ8UzYZyIL3WJkktFhTtYS1g22uUWPdRxduBEmq
 JF93F6HRRCFw4wIezgE1Fs+sNggbpqnrJRgfVrMef941RZVWWE2NFJQgk
 9x2wlIotyHDWvG+gQ8YUWri4BeWiMzbUz6xti5td5vmFkXzjt31oe+BES
 5wNL5RgyghpxjLgWzLfgOL7pvlZR1dWvLJvx60qbKNwhUpEV7ciCGLNY2 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="372832644"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="372832644"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 08:25:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="728175534"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="728175534"
Received: from lkp-server02.sh.intel.com (HELO a9caf1a0cf30) ([10.239.97.151])
 by orsmga007.jf.intel.com with ESMTP; 17 Aug 2023 08:25:21 -0700
Received: from kbuild by a9caf1a0cf30 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qWesD-0001Gn-0m;
 Thu, 17 Aug 2023 15:25:21 +0000
Date: Thu, 17 Aug 2023 23:24:28 +0800
From: kernel test robot <lkp@intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <202308172319.rTgU3hnc-lkp@intel.com>
References: <20230817125007.2681331-4-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230817125007.2681331-4-mitulkumar.ajitkumar.golani@intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/display: Add wrapper to
 Compute SAD
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
Cc: jyri.sarha@linux.intel.com, llvm@lists.linux.dev,
 oe-kbuild-all@lists.linux.dev
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Mitul,

kernel test robot noticed the following build warnings:

[auto build test WARNING on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Mitul-Golani/drm-i915-Add-has_audio-to-separate-audio-parameter-in-crtc_state/20230817-205556
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20230817125007.2681331-4-mitulkumar.ajitkumar.golani%40intel.com
patch subject: [Intel-gfx] [PATCH 3/3] drm/i915/display: Add wrapper to Compute SAD
config: x86_64-buildonly-randconfig-r001-20230817 (https://download.01.org/0day-ci/archive/20230817/202308172319.rTgU3hnc-lkp@intel.com/config)
compiler: clang version 16.0.4 (https://github.com/llvm/llvm-project.git ae42196bc493ffe877a7e3dff8be32035dea4d07)
reproduce: (https://download.01.org/0day-ci/archive/20230817/202308172319.rTgU3hnc-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202308172319.rTgU3hnc-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/i915/display/intel_audio.c:822:39: warning: variable 'channel_count' is uninitialized when used here [-Wuninitialized]
                   audio_req_bandwidth = calc_audio_bw(channel_count,
                                                       ^~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_audio.c:812:19: note: initialize the variable 'channel_count' to silence this warning
           int channel_count;
                            ^
                             = 0
   1 warning generated.


vim +/channel_count +822 drivers/gpu/drm/i915/display/intel_audio.c

   808	
   809	static void calibrate_audio_config_params(struct intel_crtc_state *pipe_config, int channel)
   810	{
   811		struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
   812		int channel_count;
   813		int index, rate[] = { 192000, 176000, 96000, 88000, 48000, 44100, 32000 };
   814		int audio_req_bandwidth, available_blank_bandwidth, vblank, hblank;
   815	
   816		hblank = adjusted_mode->htotal - adjusted_mode->hdisplay;
   817		vblank = adjusted_mode->vtotal - adjusted_mode->vdisplay;
   818		available_blank_bandwidth = hblank * vblank *
   819					    drm_mode_vrefresh(adjusted_mode) * pipe_config->pipe_bpp;
   820	
   821		for (index = 0; index < ARRAY_SIZE(rate); index++) {
 > 822			audio_req_bandwidth = calc_audio_bw(channel_count,
   823							    rate[index]);
   824			if (audio_req_bandwidth < available_blank_bandwidth) {
   825				pipe_config->audio.max_rate = rate[index];
   826				pipe_config->audio.max_channel_count = channel_count;
   827				return;
   828			}
   829		}
   830	
   831		pipe_config->audio.max_rate = 0;
   832		pipe_config->audio.max_channel_count = 0;
   833	}
   834	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
