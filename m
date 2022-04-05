Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BBEB4F46C5
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Apr 2022 01:18:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B43210EB9B;
	Tue,  5 Apr 2022 23:18:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE56010EB9B
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Apr 2022 23:18:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649200721; x=1680736721;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=gythPX4VcMw1+M8OaO23NdTcHgHgyPLJFUl1FJXlkZs=;
 b=aeU6tUAr9nsSTGgtsbyhdDHoh4mbvGs1EtVfAJyB6nvQ6DuegeqbiCan
 J6u8k5uY/+GPmCmYkg/VOxeaeefBx2wFC2JVcO5hh1J8cqDajQmLca0QF
 k6J2tpdEHWUmrkv9yF31HO1IsUqUxenXCyQomEKBFKvCizZiQn6jgKWZ7
 RVUBfoU0BYJoc+RjqPIEME083eTqCe2yT3ZoCW1aUrAP5HqDEui0RrlrO
 5l5LNTjs3i/9gMWZgZRfLxqGDFLaSSJmCAIcUfsy6pgZMe+zoWXCzYhcF
 l5pBPJIzQfJqSnT6yFos7GNjmURpYij0LTiJk7fE3LSHUF/jI4VD9nrnN A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10308"; a="258471626"
X-IronPort-AV: E=Sophos;i="5.90,238,1643702400"; d="scan'208";a="258471626"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 16:18:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,238,1643702400"; d="scan'208";a="524204361"
Received: from lkp-server02.sh.intel.com (HELO a44fdfb70b94) ([10.239.97.151])
 by orsmga006.jf.intel.com with ESMTP; 05 Apr 2022 16:18:39 -0700
Received: from kbuild by a44fdfb70b94 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nbsRa-0003rR-It;
 Tue, 05 Apr 2022 23:18:38 +0000
Date: Wed, 6 Apr 2022 07:18:14 +0800
From: kernel test robot <lkp@intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <202204060704.ALs2bEHY-lkp@intel.com>
References: <20220405171429.3149199-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220405171429.3149199-1-anusha.srivatsa@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dmc: Add MMIO range restrictions
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, kbuild-all@lists.01.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Anusha,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on drm-intel/for-linux-next]
[also build test ERROR on drm-tip/drm-tip v5.18-rc1 next-20220405]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/intel-lab-lkp/linux/commits/Anusha-Srivatsa/drm-i915-dmc-Add-MMIO-range-restrictions/20220406-011821
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
config: x86_64-randconfig-c002 (https://download.01.org/0day-ci/archive/20220406/202204060704.ALs2bEHY-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.2.0-19) 11.2.0
reproduce (this is a W=1 build):
        # https://github.com/intel-lab-lkp/linux/commit/53017f72f2ddb095da8d5ef1cb92d0b1d02c8a2b
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Anusha-Srivatsa/drm-i915-dmc-Add-MMIO-range-restrictions/20220406-011821
        git checkout 53017f72f2ddb095da8d5ef1cb92d0b1d02c8a2b
        # save the config file to linux build tree
        mkdir build_dir
        make W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash drivers/gpu/drm/i915/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   drivers/gpu/drm/i915/display/intel_dmc.c: In function 'parse_dmc_fw_header':
>> drivers/gpu/drm/i915/display/intel_dmc.c:476:17: error: this 'if' clause does not guard... [-Werror=misleading-indentation]
     476 |                 if (!dmc_mmio_addr_sanity_check(dmc, mmioaddr, mmio_count))
         |                 ^~
   drivers/gpu/drm/i915/display/intel_dmc.c:478:25: note: ...this statement, but the latter is misleadingly indented as if it were guarded by the 'if'
     478 |                         return 0;
         |                         ^~~~~~
   cc1: all warnings being treated as errors


vim +/if +476 drivers/gpu/drm/i915/display/intel_dmc.c

   405	
   406	static u32 parse_dmc_fw_header(struct intel_dmc *dmc,
   407				       const struct intel_dmc_header_base *dmc_header,
   408				       size_t rem_size, u8 dmc_id)
   409	{
   410		struct drm_i915_private *i915 = container_of(dmc, typeof(*i915), dmc);
   411		struct dmc_fw_info *dmc_info = &dmc->dmc_info[dmc_id];
   412		unsigned int header_len_bytes, dmc_header_size, payload_size, i;
   413		const u32 *mmioaddr, *mmiodata;
   414		u32 mmio_count, mmio_count_max, start_mmioaddr;
   415		u8 *payload;
   416	
   417		BUILD_BUG_ON(ARRAY_SIZE(dmc_info->mmioaddr) < DMC_V3_MAX_MMIO_COUNT ||
   418			     ARRAY_SIZE(dmc_info->mmioaddr) < DMC_V1_MAX_MMIO_COUNT);
   419	
   420		/*
   421		 * Check if we can access common fields, we will checkc again below
   422		 * after we have read the version
   423		 */
   424		if (rem_size < sizeof(struct intel_dmc_header_base))
   425			goto error_truncated;
   426	
   427		/* Cope with small differences between v1 and v3 */
   428		if (dmc_header->header_ver == 3) {
   429			const struct intel_dmc_header_v3 *v3 =
   430				(const struct intel_dmc_header_v3 *)dmc_header;
   431	
   432			if (rem_size < sizeof(struct intel_dmc_header_v3))
   433				goto error_truncated;
   434	
   435			mmioaddr = v3->mmioaddr;
   436			mmiodata = v3->mmiodata;
   437			mmio_count = v3->mmio_count;
   438			mmio_count_max = DMC_V3_MAX_MMIO_COUNT;
   439			/* header_len is in dwords */
   440			header_len_bytes = dmc_header->header_len * 4;
   441			start_mmioaddr = v3->start_mmioaddr;
   442			dmc_header_size = sizeof(*v3);
   443		} else if (dmc_header->header_ver == 1) {
   444			const struct intel_dmc_header_v1 *v1 =
   445				(const struct intel_dmc_header_v1 *)dmc_header;
   446	
   447			if (rem_size < sizeof(struct intel_dmc_header_v1))
   448				goto error_truncated;
   449	
   450			mmioaddr = v1->mmioaddr;
   451			mmiodata = v1->mmiodata;
   452			mmio_count = v1->mmio_count;
   453			mmio_count_max = DMC_V1_MAX_MMIO_COUNT;
   454			header_len_bytes = dmc_header->header_len;
   455			start_mmioaddr = DMC_V1_MMIO_START_RANGE;
   456			dmc_header_size = sizeof(*v1);
   457		} else {
   458			drm_err(&i915->drm, "Unknown DMC fw header version: %u\n",
   459				dmc_header->header_ver);
   460			return 0;
   461		}
   462	
   463		if (header_len_bytes != dmc_header_size) {
   464			drm_err(&i915->drm, "DMC firmware has wrong dmc header length "
   465				"(%u bytes)\n", header_len_bytes);
   466			return 0;
   467		}
   468	
   469		/* Cache the dmc header info. */
   470		if (mmio_count > mmio_count_max) {
   471			drm_err(&i915->drm, "DMC firmware has wrong mmio count %u\n", mmio_count);
   472			return 0;
   473		}
   474	
   475		if (dmc_header->header_ver == 3) {
 > 476			if (!dmc_mmio_addr_sanity_check(dmc, mmioaddr, mmio_count))
   477				drm_err(&i915->drm, "DMC firmware has Wrong MMIO Addresses\n");
   478				return 0;
   479		}
   480	
   481		for (i = 0; i < mmio_count; i++) {
   482			dmc_info->mmioaddr[i] = _MMIO(mmioaddr[i]);
   483			dmc_info->mmiodata[i] = mmiodata[i];
   484		}
   485		dmc_info->mmio_count = mmio_count;
   486		dmc_info->start_mmioaddr = start_mmioaddr;
   487	
   488		rem_size -= header_len_bytes;
   489	
   490		/* fw_size is in dwords, so multiplied by 4 to convert into bytes. */
   491		payload_size = dmc_header->fw_size * 4;
   492		if (rem_size < payload_size)
   493			goto error_truncated;
   494	
   495		if (payload_size > dmc->max_fw_size) {
   496			drm_err(&i915->drm, "DMC FW too big (%u bytes)\n", payload_size);
   497			return 0;
   498		}
   499		dmc_info->dmc_fw_size = dmc_header->fw_size;
   500	
   501		dmc_info->payload = kmalloc(payload_size, GFP_KERNEL);
   502		if (!dmc_info->payload)
   503			return 0;
   504	
   505		payload = (u8 *)(dmc_header) + header_len_bytes;
   506		memcpy(dmc_info->payload, payload, payload_size);
   507	
   508		return header_len_bytes + payload_size;
   509	
   510	error_truncated:
   511		drm_err(&i915->drm, "Truncated DMC firmware, refusing.\n");
   512		return 0;
   513	}
   514	

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
