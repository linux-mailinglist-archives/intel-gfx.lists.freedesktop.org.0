Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B1F6EEA73
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 00:58:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68CC610E81C;
	Tue, 25 Apr 2023 22:58:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFB0F10E81C
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Apr 2023 22:58:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682463487; x=1713999487;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Eh9kR20tuWQJPENGOeNACgubiLYSZU8bHIZrqPT92eo=;
 b=Yzqg8GvJyb1HOLdZGf6xlE1+B5EqsojJ3UDelM5zjXZn/QlAhk9gkkS0
 eQxnq7xj5n0MI0JIvG/ZDlAdNgnqNtfnVtfcMXLbX2ND4RP3WRzf/v4MJ
 JEghVZZbg10OV/r4JPt4ru8pNVQfVtA8HDIU1Z7YvF00zyCLh0D2SomN2
 9efLVhN5QT6qpvmbPRP8otiQShuu3qACRujeSqyTl/cZlRriQQJsgIYTf
 q2tYAuKwnSXOzc0jcGYDrs6gd9DPtHJNBL0FKOzujbyGSb48DfQBsLmQb
 WN0Fojwep2DUtlpkwZbwCkrMVeLGe38l3UK3iXnC1HH8EpEkyg46PJSTq w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="331151100"
X-IronPort-AV: E=Sophos;i="5.99,226,1677571200"; d="scan'208";a="331151100"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 15:58:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="939947435"
X-IronPort-AV: E=Sophos;i="5.99,226,1677571200"; d="scan'208";a="939947435"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 25 Apr 2023 15:58:04 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1prRbn-000jqW-1N;
 Tue, 25 Apr 2023 22:58:03 +0000
Date: Wed, 26 Apr 2023 06:57:19 +0800
From: kernel test robot <lkp@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <202304260652.5QRXxuHt-lkp@intel.com>
References: <20230425202056.1143994-5-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230425202056.1143994-5-vinod.govindapillai@intel.com>
Subject: Re: [Intel-gfx] [PATCH v1 4/7] drm/i915: modify max_bw to return
 index to intel_bw_info
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
Cc: gustavo.souza@intel.com, llvm@lists.linux.dev, ville.syrjala@intel.com,
 oe-kbuild-all@lists.linux.dev
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Vinod,

kernel test robot noticed the following build warnings:

[auto build test WARNING on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Vinod-Govindapillai/drm-i915-update-the-QGV-point-frequency-calculations/20230426-042322
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20230425202056.1143994-5-vinod.govindapillai%40intel.com
patch subject: [Intel-gfx] [PATCH v1 4/7] drm/i915: modify max_bw to return index to intel_bw_info
config: i386-randconfig-a004 (https://download.01.org/0day-ci/archive/20230426/202304260652.5QRXxuHt-lkp@intel.com/config)
compiler: clang version 14.0.6 (https://github.com/llvm/llvm-project f28c006a5895fc0e329fe15fead81e37457cb1d1)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/5f1409d5142339d50e5018b0908f9e232ca1f738
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Vinod-Govindapillai/drm-i915-update-the-QGV-point-frequency-calculations/20230426-042322
        git checkout 5f1409d5142339d50e5018b0908f9e232ca1f738
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=i386 olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=i386 SHELL=/bin/bash drivers/gpu/drm/i915/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202304260652.5QRXxuHt-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/i915/display/intel_bw.c:833:7: warning: variable 'idx' is uninitialized when used here [-Wuninitialized]
                   if (idx > ARRAY_SIZE(i915->display.bw.max))
                       ^~~
   drivers/gpu/drm/i915/display/intel_bw.c:825:19: note: initialize the variable 'idx' to silence this warning
                   unsigned int idx;
                                   ^
                                    = 0
   1 warning generated.


vim +/idx +833 drivers/gpu/drm/i915/display/intel_bw.c

   804	
   805	static int icl_find_qgv_points(struct drm_i915_private *i915,
   806				       unsigned int data_rate,
   807				       unsigned int num_active_planes,
   808				       const struct intel_bw_state *old_bw_state,
   809				       struct intel_bw_state *new_bw_state)
   810	{
   811		unsigned int max_bw_point = 0;
   812		unsigned int max_bw = 0;
   813		unsigned int num_psf_gv_points = i915->display.bw.max[0].num_psf_gv_points;
   814		unsigned int num_qgv_points = i915->display.bw.max[0].num_qgv_points;
   815		u16 psf_points = 0;
   816		u16 qgv_points = 0;
   817		int i;
   818		int ret;
   819	
   820		ret = intel_atomic_lock_global_state(&new_bw_state->base);
   821		if (ret)
   822			return ret;
   823	
   824		for (i = 0; i < num_qgv_points; i++) {
   825			unsigned int idx;
   826			unsigned int max_data_rate;
   827	
   828			if (DISPLAY_VER(i915) > 11)
   829				tgl_max_bw_index(i915, num_active_planes, i);
   830			else
   831				icl_max_bw_index(i915, num_active_planes, i);
   832	
 > 833			if (idx > ARRAY_SIZE(i915->display.bw.max))
   834				continue;
   835	
   836			max_data_rate = i915->display.bw.max[idx].deratedbw[i];
   837	
   838			/*
   839			 * We need to know which qgv point gives us
   840			 * maximum bandwidth in order to disable SAGV
   841			 * if we find that we exceed SAGV block time
   842			 * with watermarks. By that moment we already
   843			 * have those, as it is calculated earlier in
   844			 * intel_atomic_check,
   845			 */
   846			if (max_data_rate > max_bw) {
   847				max_bw_point = i;
   848				max_bw = max_data_rate;
   849			}
   850			if (max_data_rate >= data_rate)
   851				qgv_points |= BIT(i);
   852	
   853			drm_dbg_kms(&i915->drm, "QGV point %d: max bw %d required %d\n",
   854				    i, max_data_rate, data_rate);
   855		}
   856	
   857		for (i = 0; i < num_psf_gv_points; i++) {
   858			unsigned int max_data_rate = adl_psf_bw(i915, i);
   859	
   860			if (max_data_rate >= data_rate)
   861				psf_points |= BIT(i);
   862	
   863			drm_dbg_kms(&i915->drm, "PSF GV point %d: max bw %d"
   864				    " required %d\n",
   865				    i, max_data_rate, data_rate);
   866		}
   867	
   868		/*
   869		 * BSpec states that we always should have at least one allowed point
   870		 * left, so if we couldn't - simply reject the configuration for obvious
   871		 * reasons.
   872		 */
   873		if (qgv_points == 0) {
   874			drm_dbg_kms(&i915->drm, "No QGV points provide sufficient memory"
   875				    " bandwidth %d for display configuration(%d active planes).\n",
   876				    data_rate, num_active_planes);
   877			return -EINVAL;
   878		}
   879	
   880		if (num_psf_gv_points > 0 && psf_points == 0) {
   881			drm_dbg_kms(&i915->drm, "No PSF GV points provide sufficient memory"
   882				    " bandwidth %d for display configuration(%d active planes).\n",
   883				    data_rate, num_active_planes);
   884			return -EINVAL;
   885		}
   886	
   887		/*
   888		 * Leave only single point with highest bandwidth, if
   889		 * we can't enable SAGV due to the increased memory latency it may
   890		 * cause.
   891		 */
   892		if (!intel_can_enable_sagv(i915, new_bw_state)) {
   893			qgv_points = BIT(max_bw_point);
   894			drm_dbg_kms(&i915->drm, "No SAGV, using single QGV point %d\n",
   895				    max_bw_point);
   896		}
   897	
   898		/*
   899		 * We store the ones which need to be masked as that is what PCode
   900		 * actually accepts as a parameter.
   901		 */
   902		new_bw_state->qgv_points_mask =
   903			~(ICL_PCODE_REQ_QGV_PT(qgv_points) |
   904			  ADLS_PCODE_REQ_PSF_PT(psf_points)) &
   905			icl_qgv_points_mask(i915);
   906	
   907		/*
   908		 * If the actual mask had changed we need to make sure that
   909		 * the commits are serialized(in case this is a nomodeset, nonblocking)
   910		 */
   911		if (new_bw_state->qgv_points_mask != old_bw_state->qgv_points_mask) {
   912			ret = intel_atomic_serialize_global_state(&new_bw_state->base);
   913			if (ret)
   914				return ret;
   915		}
   916	
   917		return 0;
   918	}
   919	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
