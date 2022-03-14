Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E95224D9087
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 00:43:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 353D289F41;
	Mon, 14 Mar 2022 23:43:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DE0E89F41
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Mar 2022 23:43:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647301398; x=1678837398;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=IaFR249ZBL56j47CVCpKzViPFuU5uILIrhxI5mWhf2s=;
 b=mx1dNZA8yL5j6Iq+zI0dXT0kZ0t+RuCKUUfFH6xEg2rHX8yhZV7RMyWf
 IQ5E7SBPWedue7JLWknPrVuLFBqy7DoS84KwGOnz/O9jPOkSfwL72+pKj
 qr3Y0alTYM4aRkOEBfiaN4X4qL711id1An3doQnrZ42zAYUqh4KebMZ5h
 Rupp/8VU55WVs0rNoOsXEliU/AjRKg2hGgcCtKDdKlAbUfV3ESBtK/aKE
 TorC2cA67pQGl/Z2nVsqveCJ6zKqmofPpskhIRlZeuyuMhQFVS83GoUdk
 XcoCC+aymYSsB4x7AwH0C5y8iGWteABw+QdTxa4iSF0UWUw1QGPqftBV2 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="342598887"
X-IronPort-AV: E=Sophos;i="5.90,181,1643702400"; d="scan'208";a="342598887"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 16:43:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,181,1643702400"; d="scan'208";a="690009019"
Received: from lkp-server02.sh.intel.com (HELO 89b41b6ae01c) ([10.239.97.151])
 by fmsmga001.fm.intel.com with ESMTP; 14 Mar 2022 16:43:15 -0700
Received: from kbuild by 89b41b6ae01c with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nTuLK-000AMF-UI; Mon, 14 Mar 2022 23:43:14 +0000
Date: Tue, 15 Mar 2022 07:42:50 +0800
From: kernel test robot <lkp@intel.com>
To: Alan Previn <alan.previn.teres.alexis@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <202203150713.NSmDIfrY-lkp@intel.com>
References: <20220314170954.1537154-14-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220314170954.1537154-14-alan.previn.teres.alexis@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v9 13/13] drm/i915/guc: Print the GuC error
 capture output register list.
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
Cc: kbuild-all@lists.01.org, Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Alan,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on drm-tip/drm-tip]
[cannot apply to drm-intel/for-linux-next drm-exynos/exynos-drm-next drm/drm-next tegra-drm/drm/tegra/for-next v5.17-rc8 next-20220310]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Alan-Previn/Add-GuC-Error-Capture-Support/20220315-010958
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
config: i386-randconfig-a002-20220314 (https://download.01.org/0day-ci/archive/20220315/202203150713.NSmDIfrY-lkp@intel.com/config)
compiler: gcc-9 (Ubuntu 9.4.0-1ubuntu1~20.04) 9.4.0
reproduce (this is a W=1 build):
        # https://github.com/0day-ci/linux/commit/90c08c10562cba1ebf8b31788e7a9550c7637838
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Alan-Previn/Add-GuC-Error-Capture-Support/20220315-010958
        git checkout 90c08c10562cba1ebf8b31788e7a9550c7637838
        # save the config file to linux build tree
        mkdir build_dir
        make W=1 O=build_dir ARCH=i386 SHELL=/bin/bash

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from include/linux/device.h:15,
                    from include/drm/drm_print.h:32,
                    from drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:8:
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c: In function 'intel_guc_capture_print_engine_node':
>> drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1442:17: error: 'struct drm_i915_error_state_buf' has no member named 'drm'
    1442 |   drm_warn((&(a)->drm), __VA_ARGS__); \
         |                 ^~
   include/linux/dev_printk.h:110:11: note: in definition of macro 'dev_printk_index_wrap'
     110 |   _p_func(dev, fmt, ##__VA_ARGS__);   \
         |           ^~~
   include/drm/drm_print.h:425:2: note: in expansion of macro 'dev_warn'
     425 |  dev_##level##type((drm)->dev, "[drm] " fmt, ##__VA_ARGS__)
         |  ^~~~
   include/drm/drm_print.h:435:2: note: in expansion of macro '__drm_printk'
     435 |  __drm_printk((drm), warn,, fmt, ##__VA_ARGS__)
         |  ^~~~~~~~~~~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1442:3: note: in expansion of macro 'drm_warn'
    1442 |   drm_warn((&(a)->drm), __VA_ARGS__); \
         |   ^~~~~~~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1497:2: note: in expansion of macro '__out'
    1497 |  __out(ebuf, "global --- GuC Error Capture on %s command stream:\n",
         |  ^~~~~
>> drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1442:17: error: 'struct drm_i915_error_state_buf' has no member named 'drm'
    1442 |   drm_warn((&(a)->drm), __VA_ARGS__); \
         |                 ^~
   include/linux/dev_printk.h:110:11: note: in definition of macro 'dev_printk_index_wrap'
     110 |   _p_func(dev, fmt, ##__VA_ARGS__);   \
         |           ^~~
   include/drm/drm_print.h:425:2: note: in expansion of macro 'dev_warn'
     425 |  dev_##level##type((drm)->dev, "[drm] " fmt, ##__VA_ARGS__)
         |  ^~~~
   include/drm/drm_print.h:435:2: note: in expansion of macro '__drm_printk'
     435 |  __drm_printk((drm), warn,, fmt, ##__VA_ARGS__)
         |  ^~~~~~~~~~~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1442:3: note: in expansion of macro 'drm_warn'
    1442 |   drm_warn((&(a)->drm), __VA_ARGS__); \
         |   ^~~~~~~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1502:3: note: in expansion of macro '__out'
    1502 |   __out(ebuf, "  No matching ee-node\n");
         |   ^~~~~
>> drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1442:17: error: 'struct drm_i915_error_state_buf' has no member named 'drm'
    1442 |   drm_warn((&(a)->drm), __VA_ARGS__); \
         |                 ^~
   include/linux/dev_printk.h:110:11: note: in definition of macro 'dev_printk_index_wrap'
     110 |   _p_func(dev, fmt, ##__VA_ARGS__);   \
         |           ^~~
   include/drm/drm_print.h:425:2: note: in expansion of macro 'dev_warn'
     425 |  dev_##level##type((drm)->dev, "[drm] " fmt, ##__VA_ARGS__)
         |  ^~~~
   include/drm/drm_print.h:435:2: note: in expansion of macro '__drm_printk'
     435 |  __drm_printk((drm), warn,, fmt, ##__VA_ARGS__)
         |  ^~~~~~~~~~~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1442:3: note: in expansion of macro 'drm_warn'
    1442 |   drm_warn((&(a)->drm), __VA_ARGS__); \
         |   ^~~~~~~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1506:2: note: in expansion of macro '__out'
    1506 |  __out(ebuf, "Coverage:  %s\n", grptype[node->is_partial]);
         |  ^~~~~
>> drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1442:17: error: 'struct drm_i915_error_state_buf' has no member named 'drm'
    1442 |   drm_warn((&(a)->drm), __VA_ARGS__); \
         |                 ^~
   include/linux/dev_printk.h:110:11: note: in definition of macro 'dev_printk_index_wrap'
     110 |   _p_func(dev, fmt, ##__VA_ARGS__);   \
         |           ^~~
   include/drm/drm_print.h:425:2: note: in expansion of macro 'dev_warn'
     425 |  dev_##level##type((drm)->dev, "[drm] " fmt, ##__VA_ARGS__)
         |  ^~~~
   include/drm/drm_print.h:435:2: note: in expansion of macro '__drm_printk'
     435 |  __drm_printk((drm), warn,, fmt, ##__VA_ARGS__)
         |  ^~~~~~~~~~~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1442:3: note: in expansion of macro 'drm_warn'
    1442 |   drm_warn((&(a)->drm), __VA_ARGS__); \
         |   ^~~~~~~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1509:3: note: in expansion of macro '__out'
    1509 |   __out(ebuf, "  RegListType: %s\n",
         |   ^~~~~
>> drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1442:17: error: 'struct drm_i915_error_state_buf' has no member named 'drm'
    1442 |   drm_warn((&(a)->drm), __VA_ARGS__); \
         |                 ^~
   include/linux/dev_printk.h:110:11: note: in definition of macro 'dev_printk_index_wrap'
     110 |   _p_func(dev, fmt, ##__VA_ARGS__);   \
         |           ^~~
   include/drm/drm_print.h:425:2: note: in expansion of macro 'dev_warn'
     425 |  dev_##level##type((drm)->dev, "[drm] " fmt, ##__VA_ARGS__)
         |  ^~~~
   include/drm/drm_print.h:435:2: note: in expansion of macro '__drm_printk'
     435 |  __drm_printk((drm), warn,, fmt, ##__VA_ARGS__)
         |  ^~~~~~~~~~~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1442:3: note: in expansion of macro 'drm_warn'
    1442 |   drm_warn((&(a)->drm), __VA_ARGS__); \
         |   ^~~~~~~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1511:3: note: in expansion of macro '__out'
    1511 |   __out(ebuf, "    Owner-Id: %d\n", node->reginfo[i].vfid);
         |   ^~~~~
>> drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1442:17: error: 'struct drm_i915_error_state_buf' has no member named 'drm'
    1442 |   drm_warn((&(a)->drm), __VA_ARGS__); \
         |                 ^~
   include/linux/dev_printk.h:110:11: note: in definition of macro 'dev_printk_index_wrap'
     110 |   _p_func(dev, fmt, ##__VA_ARGS__);   \
         |           ^~~
   include/drm/drm_print.h:425:2: note: in expansion of macro 'dev_warn'
     425 |  dev_##level##type((drm)->dev, "[drm] " fmt, ##__VA_ARGS__)
         |  ^~~~
   include/drm/drm_print.h:435:2: note: in expansion of macro '__drm_printk'
     435 |  __drm_printk((drm), warn,, fmt, ##__VA_ARGS__)
         |  ^~~~~~~~~~~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1442:3: note: in expansion of macro 'drm_warn'
    1442 |   drm_warn((&(a)->drm), __VA_ARGS__); \
         |   ^~~~~~~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1518:4: note: in expansion of macro '__out'
    1518 |    __out(ebuf, "    GuC-Eng-Class: %d\n", node->eng_class);
         |    ^~~~~
>> drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1442:17: error: 'struct drm_i915_error_state_buf' has no member named 'drm'
    1442 |   drm_warn((&(a)->drm), __VA_ARGS__); \
         |                 ^~
   include/linux/dev_printk.h:110:11: note: in definition of macro 'dev_printk_index_wrap'
     110 |   _p_func(dev, fmt, ##__VA_ARGS__);   \
         |           ^~~
   include/drm/drm_print.h:425:2: note: in expansion of macro 'dev_warn'
     425 |  dev_##level##type((drm)->dev, "[drm] " fmt, ##__VA_ARGS__)
         |  ^~~~
   include/drm/drm_print.h:435:2: note: in expansion of macro '__drm_printk'
     435 |  __drm_printk((drm), warn,, fmt, ##__VA_ARGS__)
         |  ^~~~~~~~~~~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1442:3: note: in expansion of macro 'drm_warn'
    1442 |   drm_warn((&(a)->drm), __VA_ARGS__); \
         |   ^~~~~~~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1519:4: note: in expansion of macro '__out'
    1519 |    __out(ebuf, "    i915-Eng-Class: %d\n",
         |    ^~~~~
>> drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1442:17: error: 'struct drm_i915_error_state_buf' has no member named 'drm'
    1442 |   drm_warn((&(a)->drm), __VA_ARGS__); \
         |                 ^~
   include/linux/dev_printk.h:110:11: note: in definition of macro 'dev_printk_index_wrap'
     110 |   _p_func(dev, fmt, ##__VA_ARGS__);   \
         |           ^~~
   include/drm/drm_print.h:425:2: note: in expansion of macro 'dev_warn'
     425 |  dev_##level##type((drm)->dev, "[drm] " fmt, ##__VA_ARGS__)
         |  ^~~~
   include/drm/drm_print.h:435:2: note: in expansion of macro '__drm_printk'
     435 |  __drm_printk((drm), warn,, fmt, ##__VA_ARGS__)
         |  ^~~~~~~~~~~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1442:3: note: in expansion of macro 'drm_warn'
    1442 |   drm_warn((&(a)->drm), __VA_ARGS__); \
         |   ^~~~~~~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1452:3: note: in expansion of macro '__out'
    1452 |   __out(ebuf, "    i915-Eng-Name: %s command stream\n", \
         |   ^~~~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1525:5: note: in expansion of macro 'GCAP_PRINT_INTEL_ENG_INFO'
    1525 |     GCAP_PRINT_INTEL_ENG_INFO(ebuf, eng);
         |     ^~~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1442:17: error: 'struct drm_i915_error_state_buf' has no member named 'drm'
    1442 |   drm_warn((&(a)->drm), __VA_ARGS__); \
         |                 ^~
   include/linux/dev_printk.h:110:11: note: in definition of macro 'dev_printk_index_wrap'
     110 |   _p_func(dev, fmt, ##__VA_ARGS__);   \
         |           ^~~
   include/drm/drm_print.h:425:2: note: in expansion of macro 'dev_warn'
     425 |  dev_##level##type((drm)->dev, "[drm] " fmt, ##__VA_ARGS__)
         |  ^~~~
   include/drm/drm_print.h:435:2: note: in expansion of macro '__drm_printk'
     435 |  __drm_printk((drm), warn,, fmt, ##__VA_ARGS__)
         |  ^~~~~~~~~~~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1442:3: note: in expansion of macro 'drm_warn'
    1442 |   drm_warn((&(a)->drm), __VA_ARGS__); \
         |   ^~~~~~~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1454:3: note: in expansion of macro '__out'
    1454 |   __out(ebuf, "    i915-Eng-Inst-Class: 0x%02x\n", (eng)->class); \
         |   ^~~~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1525:5: note: in expansion of macro 'GCAP_PRINT_INTEL_ENG_INFO'
    1525 |     GCAP_PRINT_INTEL_ENG_INFO(ebuf, eng);
         |     ^~~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1442:17: error: 'struct drm_i915_error_state_buf' has no member named 'drm'
    1442 |   drm_warn((&(a)->drm), __VA_ARGS__); \
         |                 ^~
   include/linux/dev_printk.h:110:11: note: in definition of macro 'dev_printk_index_wrap'
     110 |   _p_func(dev, fmt, ##__VA_ARGS__);   \
         |           ^~~
   include/drm/drm_print.h:425:2: note: in expansion of macro 'dev_warn'
     425 |  dev_##level##type((drm)->dev, "[drm] " fmt, ##__VA_ARGS__)
         |  ^~~~
   include/drm/drm_print.h:435:2: note: in expansion of macro '__drm_printk'
     435 |  __drm_printk((drm), warn,, fmt, ##__VA_ARGS__)
         |  ^~~~~~~~~~~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1442:3: note: in expansion of macro 'drm_warn'
    1442 |   drm_warn((&(a)->drm), __VA_ARGS__); \
         |   ^~~~~~~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1455:3: note: in expansion of macro '__out'
    1455 |   __out(ebuf, "    i915-Eng-Inst-Id: 0x%02x\n", (eng)->instance); \
         |   ^~~~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1525:5: note: in expansion of macro 'GCAP_PRINT_INTEL_ENG_INFO'
    1525 |     GCAP_PRINT_INTEL_ENG_INFO(ebuf, eng);
         |     ^~~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1442:17: error: 'struct drm_i915_error_state_buf' has no member named 'drm'
    1442 |   drm_warn((&(a)->drm), __VA_ARGS__); \
         |                 ^~
   include/linux/dev_printk.h:110:11: note: in definition of macro 'dev_printk_index_wrap'
     110 |   _p_func(dev, fmt, ##__VA_ARGS__);   \
         |           ^~~
   include/drm/drm_print.h:425:2: note: in expansion of macro 'dev_warn'
     425 |  dev_##level##type((drm)->dev, "[drm] " fmt, ##__VA_ARGS__)
         |  ^~~~
   include/drm/drm_print.h:435:2: note: in expansion of macro '__drm_printk'
     435 |  __drm_printk((drm), warn,, fmt, ##__VA_ARGS__)
         |  ^~~~~~~~~~~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1442:3: note: in expansion of macro 'drm_warn'
    1442 |   drm_warn((&(a)->drm), __VA_ARGS__); \
         |   ^~~~~~~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1456:3: note: in expansion of macro '__out'
    1456 |   __out(ebuf, "    i915-Eng-LogicalMask: 0x%08x\n", \
         |   ^~~~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1525:5: note: in expansion of macro 'GCAP_PRINT_INTEL_ENG_INFO'
    1525 |     GCAP_PRINT_INTEL_ENG_INFO(ebuf, eng);
         |     ^~~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1442:17: error: 'struct drm_i915_error_state_buf' has no member named 'drm'
    1442 |   drm_warn((&(a)->drm), __VA_ARGS__); \
         |                 ^~
   include/linux/dev_printk.h:110:11: note: in definition of macro 'dev_printk_index_wrap'
     110 |   _p_func(dev, fmt, ##__VA_ARGS__);   \
         |           ^~~
   include/drm/drm_print.h:425:2: note: in expansion of macro 'dev_warn'
     425 |  dev_##level##type((drm)->dev, "[drm] " fmt, ##__VA_ARGS__)
         |  ^~~~
   include/drm/drm_print.h:435:2: note: in expansion of macro '__drm_printk'
     435 |  __drm_printk((drm), warn,, fmt, ##__VA_ARGS__)
         |  ^~~~~~~~~~~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1442:3: note: in expansion of macro 'drm_warn'
    1442 |   drm_warn((&(a)->drm), __VA_ARGS__); \
         |   ^~~~~~~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1527:5: note: in expansion of macro '__out'
    1527 |     __out(ebuf, "    i915-Eng-Lookup Fail!\n");
         |     ^~~~~
>> drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1442:17: error: 'struct drm_i915_error_state_buf' has no member named 'drm'
    1442 |   drm_warn((&(a)->drm), __VA_ARGS__); \
         |                 ^~
   include/linux/dev_printk.h:110:11: note: in definition of macro 'dev_printk_index_wrap'
     110 |   _p_func(dev, fmt, ##__VA_ARGS__);   \
         |           ^~~
   include/drm/drm_print.h:425:2: note: in expansion of macro 'dev_warn'
     425 |  dev_##level##type((drm)->dev, "[drm] " fmt, ##__VA_ARGS__)
         |  ^~~~
   include/drm/drm_print.h:435:2: note: in expansion of macro '__drm_printk'
     435 |  __drm_printk((drm), warn,, fmt, ##__VA_ARGS__)
         |  ^~~~~~~~~~~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1442:3: note: in expansion of macro 'drm_warn'
    1442 |   drm_warn((&(a)->drm), __VA_ARGS__); \
         |   ^~~~~~~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1462:3: note: in expansion of macro '__out'
    1462 |   __out(ebuf, "    GuC-Engine-Inst-Id: 0x%08x\n", \
         |   ^~~~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1528:4: note: in expansion of macro 'GCAP_PRINT_GUC_INST_INFO'
    1528 |    GCAP_PRINT_GUC_INST_INFO(ebuf, node);
         |    ^~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1442:17: error: 'struct drm_i915_error_state_buf' has no member named 'drm'
    1442 |   drm_warn((&(a)->drm), __VA_ARGS__); \
         |                 ^~
   include/linux/dev_printk.h:110:11: note: in definition of macro 'dev_printk_index_wrap'
     110 |   _p_func(dev, fmt, ##__VA_ARGS__);   \
         |           ^~~
   include/drm/drm_print.h:425:2: note: in expansion of macro 'dev_warn'
     425 |  dev_##level##type((drm)->dev, "[drm] " fmt, ##__VA_ARGS__)
         |  ^~~~
   include/drm/drm_print.h:435:2: note: in expansion of macro '__drm_printk'
     435 |  __drm_printk((drm), warn,, fmt, ##__VA_ARGS__)
         |  ^~~~~~~~~~~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1442:3: note: in expansion of macro 'drm_warn'
    1442 |   drm_warn((&(a)->drm), __VA_ARGS__); \
         |   ^~~~~~~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1464:3: note: in expansion of macro '__out'
    1464 |   __out(ebuf, "    GuC-Context-Id: 0x%08x\n", (node)->guc_id); \
         |   ^~~~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1528:4: note: in expansion of macro 'GCAP_PRINT_GUC_INST_INFO'
    1528 |    GCAP_PRINT_GUC_INST_INFO(ebuf, node);
         |    ^~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1442:17: error: 'struct drm_i915_error_state_buf' has no member named 'drm'
    1442 |   drm_warn((&(a)->drm), __VA_ARGS__); \
         |                 ^~
   include/linux/dev_printk.h:110:11: note: in definition of macro 'dev_printk_index_wrap'
     110 |   _p_func(dev, fmt, ##__VA_ARGS__);   \
         |           ^~~
   include/drm/drm_print.h:425:2: note: in expansion of macro 'dev_warn'
     425 |  dev_##level##type((drm)->dev, "[drm] " fmt, ##__VA_ARGS__)
         |  ^~~~
   include/drm/drm_print.h:435:2: note: in expansion of macro '__drm_printk'
     435 |  __drm_printk((drm), warn,, fmt, ##__VA_ARGS__)
         |  ^~~~~~~~~~~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1442:3: note: in expansion of macro 'drm_warn'
    1442 |   drm_warn((&(a)->drm), __VA_ARGS__); \
         |   ^~~~~~~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1465:3: note: in expansion of macro '__out'
    1465 |   __out(ebuf, "    LRCA: 0x%08x\n", (node)->lrca); \
         |   ^~~~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1528:4: note: in expansion of macro 'GCAP_PRINT_GUC_INST_INFO'
    1528 |    GCAP_PRINT_GUC_INST_INFO(ebuf, node);
         |    ^~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1442:17: error: 'struct drm_i915_error_state_buf' has no member named 'drm'
    1442 |   drm_warn((&(a)->drm), __VA_ARGS__); \
         |                 ^~
   include/linux/dev_printk.h:110:11: note: in definition of macro 'dev_printk_index_wrap'
     110 |   _p_func(dev, fmt, ##__VA_ARGS__);   \
         |           ^~~
   include/drm/drm_print.h:425:2: note: in expansion of macro 'dev_warn'
     425 |  dev_##level##type((drm)->dev, "[drm] " fmt, ##__VA_ARGS__)
         |  ^~~~
   include/drm/drm_print.h:435:2: note: in expansion of macro '__drm_printk'
     435 |  __drm_printk((drm), warn,, fmt, ##__VA_ARGS__)
         |  ^~~~~~~~~~~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1442:3: note: in expansion of macro 'drm_warn'
    1442 |   drm_warn((&(a)->drm), __VA_ARGS__); \
         |   ^~~~~~~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1533:3: note: in expansion of macro '__out'
    1533 |   __out(ebuf, "    NumRegs: %d\n", numregs);
         |   ^~~~~
>> drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1442:17: error: 'struct drm_i915_error_state_buf' has no member named 'drm'
    1442 |   drm_warn((&(a)->drm), __VA_ARGS__); \
         |                 ^~
   include/linux/dev_printk.h:110:11: note: in definition of macro 'dev_printk_index_wrap'
     110 |   _p_func(dev, fmt, ##__VA_ARGS__);   \
         |           ^~~
   include/drm/drm_print.h:425:2: note: in expansion of macro 'dev_warn'
     425 |  dev_##level##type((drm)->dev, "[drm] " fmt, ##__VA_ARGS__)
         |  ^~~~
   include/drm/drm_print.h:435:2: note: in expansion of macro '__drm_printk'
     435 |  __drm_printk((drm), warn,, fmt, ##__VA_ARGS__)
         |  ^~~~~~~~~~~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1442:3: note: in expansion of macro 'drm_warn'
    1442 |   drm_warn((&(a)->drm), __VA_ARGS__); \
         |   ^~~~~~~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1540:5: note: in expansion of macro '__out'
    1540 |     __out(ebuf, "      REG-0x%08x", regs[j].offset);
         |     ^~~~~
>> drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1442:17: error: 'struct drm_i915_error_state_buf' has no member named 'drm'
    1442 |   drm_warn((&(a)->drm), __VA_ARGS__); \
         |                 ^~
   include/linux/dev_printk.h:110:11: note: in definition of macro 'dev_printk_index_wrap'
     110 |   _p_func(dev, fmt, ##__VA_ARGS__);   \
         |           ^~~
   include/drm/drm_print.h:425:2: note: in expansion of macro 'dev_warn'
     425 |  dev_##level##type((drm)->dev, "[drm] " fmt, ##__VA_ARGS__)
         |  ^~~~
   include/drm/drm_print.h:435:2: note: in expansion of macro '__drm_printk'
     435 |  __drm_printk((drm), warn,, fmt, ##__VA_ARGS__)
         |  ^~~~~~~~~~~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1442:3: note: in expansion of macro 'drm_warn'
    1442 |   drm_warn((&(a)->drm), __VA_ARGS__); \
         |   ^~~~~~~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1542:5: note: in expansion of macro '__out'
    1542 |     __out(ebuf, "      %s", str);
         |     ^~~~~
>> drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1442:17: error: 'struct drm_i915_error_state_buf' has no member named 'drm'
    1442 |   drm_warn((&(a)->drm), __VA_ARGS__); \
         |                 ^~
   include/linux/dev_printk.h:110:11: note: in definition of macro 'dev_printk_index_wrap'
     110 |   _p_func(dev, fmt, ##__VA_ARGS__);   \
         |           ^~~
   include/drm/drm_print.h:425:2: note: in expansion of macro 'dev_warn'
     425 |  dev_##level##type((drm)->dev, "[drm] " fmt, ##__VA_ARGS__)
         |  ^~~~
   include/drm/drm_print.h:435:2: note: in expansion of macro '__drm_printk'
     435 |  __drm_printk((drm), warn,, fmt, ##__VA_ARGS__)
         |  ^~~~~~~~~~~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1442:3: note: in expansion of macro 'drm_warn'
    1442 |   drm_warn((&(a)->drm), __VA_ARGS__); \
         |   ^~~~~~~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1544:5: note: in expansion of macro '__out'
    1544 |     __out(ebuf, "[%ld][%ld]",
         |     ^~~~~
>> drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1442:17: error: 'struct drm_i915_error_state_buf' has no member named 'drm'
    1442 |   drm_warn((&(a)->drm), __VA_ARGS__); \
         |                 ^~
   include/linux/dev_printk.h:110:11: note: in definition of macro 'dev_printk_index_wrap'
     110 |   _p_func(dev, fmt, ##__VA_ARGS__);   \
         |           ^~~
   include/drm/drm_print.h:425:2: note: in expansion of macro 'dev_warn'
     425 |  dev_##level##type((drm)->dev, "[drm] " fmt, ##__VA_ARGS__)
         |  ^~~~
   include/drm/drm_print.h:435:2: note: in expansion of macro '__drm_printk'
     435 |  __drm_printk((drm), warn,, fmt, ##__VA_ARGS__)
         |  ^~~~~~~~~~~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1442:3: note: in expansion of macro 'drm_warn'
    1442 |   drm_warn((&(a)->drm), __VA_ARGS__); \
         |   ^~~~~~~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1547:4: note: in expansion of macro '__out'
    1547 |    __out(ebuf, ":  0x%08x\n", regs[j].value);
         |    ^~~~~


vim +1442 drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c

  1438	
  1439	#ifdef CONFIG_DRM_I915_DEBUG_GUC
  1440	#define __out(a, ...) \
  1441		do { \
> 1442			drm_warn((&(a)->drm), __VA_ARGS__); \
  1443			i915_error_printf((a), __VA_ARGS__); \
  1444		} while (0)
  1445	#else
  1446	#define __out(a, ...) \
  1447		i915_error_printf(a, __VA_ARGS__)
  1448	#endif
  1449	

---
0-DAY CI Kernel Test Service
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
