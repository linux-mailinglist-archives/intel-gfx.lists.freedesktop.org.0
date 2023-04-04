Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09A846D602D
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Apr 2023 14:23:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09C8B10E1EF;
	Tue,  4 Apr 2023 12:23:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2F9010E1EF
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Apr 2023 12:23:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680611005; x=1712147005;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=q/wmLtSNjl4/Tl36VkvaTXJWUKxtgS1bcUvx19IYJOY=;
 b=E2QGDjM5ukkH9iX6dmFsn+QPqN3hWC8ex+zhVIz4uOS6Eona/C6doh2Q
 1sxlNeiP1dg6c9sc7c+2WyPFIRe9I3wJFApisAFvdviV7lN2wvKrJCD+z
 U67naIuSlXMqBXMNcnDFs84ZR06mnxlHpA2QDlbbjTNACGztKH0bvYpZw
 IyWMM76VpqsIENRDfNcJ4EWda62lnx4569WEVWy7Twsn43tzTd2Ybw045
 WypyJM5/qXzVDxcouJaZVdlhsf1XP3fmWqVew5IKn+CLaT1TqsZYTsMO4
 hnYFOjHotAsoRkKNayxG2jvy5GQvMLSlZYx3wq3tgHXmtqJgLl9RECIe/ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="343862859"
X-IronPort-AV: E=Sophos;i="5.98,317,1673942400"; d="scan'208";a="343862859"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 05:23:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="750896050"
X-IronPort-AV: E=Sophos;i="5.98,317,1673942400"; d="scan'208";a="750896050"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 04 Apr 2023 05:23:20 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pjfh2-000Pfa-06;
 Tue, 04 Apr 2023 12:23:20 +0000
Date: Tue, 4 Apr 2023 20:22:56 +0800
From: kernel test robot <lkp@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Message-ID: <202304042026.uZBs3cC2-lkp@intel.com>
References: <20230404090528.173075-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230404090528.173075-1-jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: run kernel-doc on headers as part
 of HDRTEST
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
Cc: jani.nikula@intel.com, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 oe-kbuild-all@lists.linux.dev
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jani,

kernel test robot noticed the following build warnings:

[auto build test WARNING on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Jani-Nikula/drm-i915-run-kernel-doc-on-headers-as-part-of-HDRTEST/20230404-170637
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20230404090528.173075-1-jani.nikula%40intel.com
patch subject: [Intel-gfx] [PATCH] drm/i915: run kernel-doc on headers as part of HDRTEST
config: i386-defconfig (https://download.01.org/0day-ci/archive/20230404/202304042026.uZBs3cC2-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.3.0-8) 11.3.0
reproduce (this is a W=1 build):
        # https://github.com/intel-lab-lkp/linux/commit/336391cc647b2fbdf0ebd2eda8a10fb4509918b7
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Jani-Nikula/drm-i915-run-kernel-doc-on-headers-as-part-of-HDRTEST/20230404-170637
        git checkout 336391cc647b2fbdf0ebd2eda8a10fb4509918b7
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        make W=1 O=build_dir ARCH=i386 olddefconfig
        make W=1 O=build_dir ARCH=i386 SHELL=/bin/bash drivers/gpu/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202304042026.uZBs3cC2-lkp@intel.com/

All warnings (new ones prefixed by >>):

   drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:27: warning: Function parameter or member 'size' not described in '__guc_capture_bufstate'
   drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:27: warning: Function parameter or member 'data' not described in '__guc_capture_bufstate'
   drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:27: warning: Function parameter or member 'rd' not described in '__guc_capture_bufstate'
   drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:27: warning: Function parameter or member 'wr' not described in '__guc_capture_bufstate'
   drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:59: warning: Function parameter or member 'link' not described in '__guc_capture_parsed_output'
   drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:59: warning: Function parameter or member 'is_partial' not described in '__guc_capture_parsed_output'
   drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:59: warning: Function parameter or member 'eng_class' not described in '__guc_capture_parsed_output'
   drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:59: warning: Function parameter or member 'eng_inst' not described in '__guc_capture_parsed_output'
   drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:59: warning: Function parameter or member 'guc_id' not described in '__guc_capture_parsed_output'
   drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:59: warning: Function parameter or member 'lrca' not described in '__guc_capture_parsed_output'
   drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:59: warning: Function parameter or member 'reginfo' not described in '__guc_capture_parsed_output'
>> drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:62: warning: wrong kernel-doc identifier on line:
    * struct guc_debug_capture_list_header / struct guc_debug_capture_list
   drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:80: warning: wrong kernel-doc identifier on line:
    * struct __guc_mmio_reg_descr / struct __guc_mmio_reg_descr_group
   drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:105: warning: wrong kernel-doc identifier on line:
    * struct guc_state_capture_header_t / struct guc_state_capture_t /
   drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:163: warning: Function parameter or member 'is_valid' not described in '__guc_capture_ads_cache'
   drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:163: warning: Function parameter or member 'ptr' not described in '__guc_capture_ads_cache'
   drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:163: warning: Function parameter or member 'size' not described in '__guc_capture_ads_cache'
   drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:163: warning: Function parameter or member 'status' not described in '__guc_capture_ads_cache'
   drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:216: warning: Function parameter or member 'ads_null_cache' not described in 'intel_guc_state_capture'
   drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:216: warning: Function parameter or member 'max_mmio_per_node' not described in 'intel_guc_state_capture'
--
   drivers/gpu/drm/i915/i915_pmu.h:21: warning: cannot understand function prototype: 'enum i915_pmu_tracked_events '
   drivers/gpu/drm/i915/i915_pmu.h:32: warning: cannot understand function prototype: 'enum '
>> drivers/gpu/drm/i915/i915_pmu.h:41: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
    * How many different events we track in the global PMU mask.
--
>> drivers/gpu/drm/i915/i915_request.h:176: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
    * Request queue structure.
   drivers/gpu/drm/i915/i915_request.h:477: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
    * Returns true if seq1 is later than seq2.
--
>> drivers/gpu/drm/i915/i915_vma.h:145: warning: expecting prototype for i915_vma_offset(). Prototype was for i915_vma_size() instead
--
>> drivers/gpu/drm/i915/intel_wakeref.h:118: warning: expecting prototype for intel_wakeref_get_if_in_use(). Prototype was for intel_wakeref_get_if_active() instead


vim +62 drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h

24492514ccbd57 Alan Previn 2022-03-21  14  
f5718a7265a6f5 Alan Previn 2022-03-21  15  /**
f5718a7265a6f5 Alan Previn 2022-03-21  16   * struct __guc_capture_bufstate
f5718a7265a6f5 Alan Previn 2022-03-21  17   *
f5718a7265a6f5 Alan Previn 2022-03-21  18   * Book-keeping structure used to track read and write pointers
f5718a7265a6f5 Alan Previn 2022-03-21  19   * as we extract error capture data from the GuC-log-buffer's
f5718a7265a6f5 Alan Previn 2022-03-21  20   * error-capture region as a stream of dwords.
f5718a7265a6f5 Alan Previn 2022-03-21  21   */
f5718a7265a6f5 Alan Previn 2022-03-21  22  struct __guc_capture_bufstate {
f5718a7265a6f5 Alan Previn 2022-03-21  23  	u32 size;
f5718a7265a6f5 Alan Previn 2022-03-21  24  	void *data;
f5718a7265a6f5 Alan Previn 2022-03-21  25  	u32 rd;
f5718a7265a6f5 Alan Previn 2022-03-21  26  	u32 wr;
f5718a7265a6f5 Alan Previn 2022-03-21 @27  };
f5718a7265a6f5 Alan Previn 2022-03-21  28  
f5718a7265a6f5 Alan Previn 2022-03-21  29  /**
f5718a7265a6f5 Alan Previn 2022-03-21  30   * struct __guc_capture_parsed_output - extracted error capture node
f5718a7265a6f5 Alan Previn 2022-03-21  31   *
f5718a7265a6f5 Alan Previn 2022-03-21  32   * A single unit of extracted error-capture output data grouped together
f5718a7265a6f5 Alan Previn 2022-03-21  33   * at an engine-instance level. We keep these nodes in a linked list.
247f8071d58933 Alan Previn 2022-03-21  34   * See cachelist and outlist below.
f5718a7265a6f5 Alan Previn 2022-03-21  35   */
f5718a7265a6f5 Alan Previn 2022-03-21  36  struct __guc_capture_parsed_output {
f5718a7265a6f5 Alan Previn 2022-03-21  37  	/*
f5718a7265a6f5 Alan Previn 2022-03-21  38  	 * A single set of 3 capture lists: a global-list
f5718a7265a6f5 Alan Previn 2022-03-21  39  	 * an engine-class-list and an engine-instance list.
f5718a7265a6f5 Alan Previn 2022-03-21  40  	 * outlist in __guc_capture_parsed_output will keep
f5718a7265a6f5 Alan Previn 2022-03-21  41  	 * a linked list of these nodes that will eventually
f5718a7265a6f5 Alan Previn 2022-03-21  42  	 * be detached from outlist and attached into to
f5718a7265a6f5 Alan Previn 2022-03-21  43  	 * i915_gpu_codedump in response to a context reset
f5718a7265a6f5 Alan Previn 2022-03-21  44  	 */
f5718a7265a6f5 Alan Previn 2022-03-21  45  	struct list_head link;
f5718a7265a6f5 Alan Previn 2022-03-21  46  	bool is_partial;
f5718a7265a6f5 Alan Previn 2022-03-21  47  	u32 eng_class;
f5718a7265a6f5 Alan Previn 2022-03-21  48  	u32 eng_inst;
f5718a7265a6f5 Alan Previn 2022-03-21  49  	u32 guc_id;
f5718a7265a6f5 Alan Previn 2022-03-21  50  	u32 lrca;
f5718a7265a6f5 Alan Previn 2022-03-21  51  	struct gcap_reg_list_info {
f5718a7265a6f5 Alan Previn 2022-03-21  52  		u32 vfid;
f5718a7265a6f5 Alan Previn 2022-03-21  53  		u32 num_regs;
f5718a7265a6f5 Alan Previn 2022-03-21  54  		struct guc_mmio_reg *regs;
f5718a7265a6f5 Alan Previn 2022-03-21  55  	} reginfo[GUC_CAPTURE_LIST_TYPE_MAX];
f5718a7265a6f5 Alan Previn 2022-03-21  56  #define GCAP_PARSED_REGLIST_INDEX_GLOBAL   BIT(GUC_CAPTURE_LIST_TYPE_GLOBAL)
f5718a7265a6f5 Alan Previn 2022-03-21  57  #define GCAP_PARSED_REGLIST_INDEX_ENGCLASS BIT(GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS)
f5718a7265a6f5 Alan Previn 2022-03-21  58  #define GCAP_PARSED_REGLIST_INDEX_ENGINST  BIT(GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE)
f5718a7265a6f5 Alan Previn 2022-03-21  59  };
f5718a7265a6f5 Alan Previn 2022-03-21  60  
24492514ccbd57 Alan Previn 2022-03-21  61  /**
24492514ccbd57 Alan Previn 2022-03-21 @62   * struct guc_debug_capture_list_header / struct guc_debug_capture_list
24492514ccbd57 Alan Previn 2022-03-21  63   *
24492514ccbd57 Alan Previn 2022-03-21  64   * As part of ADS registration, these header structures (followed by
24492514ccbd57 Alan Previn 2022-03-21  65   * an array of 'struct guc_mmio_reg' entries) are used to register with
24492514ccbd57 Alan Previn 2022-03-21  66   * GuC microkernel the list of registers we want it to dump out prior
24492514ccbd57 Alan Previn 2022-03-21  67   * to a engine reset.
24492514ccbd57 Alan Previn 2022-03-21  68   */
24492514ccbd57 Alan Previn 2022-03-21  69  struct guc_debug_capture_list_header {
24492514ccbd57 Alan Previn 2022-03-21  70  	u32 info;
24492514ccbd57 Alan Previn 2022-03-21  71  #define GUC_CAPTURELISTHDR_NUMDESCR GENMASK(15, 0)
24492514ccbd57 Alan Previn 2022-03-21  72  } __packed;
24492514ccbd57 Alan Previn 2022-03-21  73  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
