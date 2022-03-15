Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF9D74D9290
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 03:27:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1678610E402;
	Tue, 15 Mar 2022 02:27:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 118EC10E402
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Mar 2022 02:27:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647311256; x=1678847256;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=fripwg00pfSQfabbTuvnkWTq/KoP7URqqQDIfqLL22M=;
 b=W/rlGSWzYkibzkOzfr27BBZp0KVzG2q9jMlwtwRx7Xi/D7lat1JkkIXz
 OEBVGHJ0JtF4ERt+2ZiTEm7Je7o9anflGCt3g2kjWYavO0USpQXITrdbk
 AjLkf9cwAUTze+MDxTcI/7TZxKwAlnpHbjiIn5kWbyKCVdFxvRwbtyqXv
 aTyaPsmfF50q/xWHoVCUwLzvbZ48PS0lmoJHKeNjICsolBou0fDVBPdRL
 olBxjfA8gnUc5wSL3ogy8j+xsneXSJdvR+V908X7V4RB8j069zKjIXemw
 E4GZPnrjJfc3rZ7At+z0aPZz4PUnZFAv77RvuM9vFlriMLqPQDta95H+n w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="255024689"
X-IronPort-AV: E=Sophos;i="5.90,182,1643702400"; d="scan'208";a="255024689"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 19:27:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,182,1643702400"; d="scan'208";a="713982385"
Received: from lkp-server02.sh.intel.com (HELO 89b41b6ae01c) ([10.239.97.151])
 by orsmga005.jf.intel.com with ESMTP; 14 Mar 2022 19:27:33 -0700
Received: from kbuild by 89b41b6ae01c with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nTwuK-000ASs-Na; Tue, 15 Mar 2022 02:27:32 +0000
Date: Tue, 15 Mar 2022 10:26:32 +0800
From: kernel test robot <lkp@intel.com>
To: Alan Previn <alan.previn.teres.alexis@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <202203151007.mYugtWwO-lkp@intel.com>
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
Cc: llvm@lists.linux.dev, kbuild-all@lists.01.org,
 Alan Previn <alan.previn.teres.alexis@intel.com>
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
config: i386-allyesconfig (https://download.01.org/0day-ci/archive/20220315/202203151007.mYugtWwO-lkp@intel.com/config)
compiler: clang version 15.0.0 (https://github.com/llvm/llvm-project 3e4950d7fa78ac83f33bbf1658e2f49a73719236)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/0day-ci/linux/commit/90c08c10562cba1ebf8b31788e7a9550c7637838
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Alan-Previn/Add-GuC-Error-Capture-Support/20220315-010958
        git checkout 90c08c10562cba1ebf8b31788e7a9550c7637838
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=i386 SHELL=/bin/bash

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1497:2: error: no member named 'drm' in 'struct drm_i915_error_state_buf'
           __out(ebuf, "global --- GuC Error Capture on %s command stream:\n",
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1442:19: note: expanded from macro '__out'
                   drm_warn((&(a)->drm), __VA_ARGS__); \
                   ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~
   include/drm/drm_print.h:435:16: note: expanded from macro 'drm_warn'
           __drm_printk((drm), warn,, fmt, ##__VA_ARGS__)
           ~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/drm/drm_print.h:425:21: note: expanded from macro '__drm_printk'
           dev_##level##type((drm)->dev, "[drm] " fmt, ##__VA_ARGS__)
           ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/dev_printk.h:146:49: note: expanded from macro 'dev_warn'
           dev_printk_index_wrap(_dev_warn, KERN_WARNING, dev, dev_fmt(fmt), ##__VA_ARGS__)
           ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/dev_printk.h:110:11: note: expanded from macro 'dev_printk_index_wrap'
                   _p_func(dev, fmt, ##__VA_ARGS__);                       \
                           ^~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1502:3: error: no member named 'drm' in 'struct drm_i915_error_state_buf'
                   __out(ebuf, "  No matching ee-node\n");
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1442:19: note: expanded from macro '__out'
                   drm_warn((&(a)->drm), __VA_ARGS__); \
                   ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~
   include/drm/drm_print.h:435:16: note: expanded from macro 'drm_warn'
           __drm_printk((drm), warn,, fmt, ##__VA_ARGS__)
           ~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/drm/drm_print.h:425:21: note: expanded from macro '__drm_printk'
           dev_##level##type((drm)->dev, "[drm] " fmt, ##__VA_ARGS__)
           ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/dev_printk.h:146:49: note: expanded from macro 'dev_warn'
           dev_printk_index_wrap(_dev_warn, KERN_WARNING, dev, dev_fmt(fmt), ##__VA_ARGS__)
           ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/dev_printk.h:110:11: note: expanded from macro 'dev_printk_index_wrap'
                   _p_func(dev, fmt, ##__VA_ARGS__);                       \
                           ^~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1506:2: error: no member named 'drm' in 'struct drm_i915_error_state_buf'
           __out(ebuf, "Coverage:  %s\n", grptype[node->is_partial]);
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1442:19: note: expanded from macro '__out'
                   drm_warn((&(a)->drm), __VA_ARGS__); \
                   ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~
   include/drm/drm_print.h:435:16: note: expanded from macro 'drm_warn'
           __drm_printk((drm), warn,, fmt, ##__VA_ARGS__)
           ~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/drm/drm_print.h:425:21: note: expanded from macro '__drm_printk'
           dev_##level##type((drm)->dev, "[drm] " fmt, ##__VA_ARGS__)
           ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/dev_printk.h:146:49: note: expanded from macro 'dev_warn'
           dev_printk_index_wrap(_dev_warn, KERN_WARNING, dev, dev_fmt(fmt), ##__VA_ARGS__)
           ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/dev_printk.h:110:11: note: expanded from macro 'dev_printk_index_wrap'
                   _p_func(dev, fmt, ##__VA_ARGS__);                       \
                           ^~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1509:3: error: no member named 'drm' in 'struct drm_i915_error_state_buf'
                   __out(ebuf, "  RegListType: %s\n",
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1442:19: note: expanded from macro '__out'
                   drm_warn((&(a)->drm), __VA_ARGS__); \
                   ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~
   include/drm/drm_print.h:435:16: note: expanded from macro 'drm_warn'
           __drm_printk((drm), warn,, fmt, ##__VA_ARGS__)
           ~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/drm/drm_print.h:425:21: note: expanded from macro '__drm_printk'
           dev_##level##type((drm)->dev, "[drm] " fmt, ##__VA_ARGS__)
           ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/dev_printk.h:146:49: note: expanded from macro 'dev_warn'
           dev_printk_index_wrap(_dev_warn, KERN_WARNING, dev, dev_fmt(fmt), ##__VA_ARGS__)
           ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/dev_printk.h:110:11: note: expanded from macro 'dev_printk_index_wrap'
                   _p_func(dev, fmt, ##__VA_ARGS__);                       \
                           ^~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1511:3: error: no member named 'drm' in 'struct drm_i915_error_state_buf'
                   __out(ebuf, "    Owner-Id: %d\n", node->reginfo[i].vfid);
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1442:19: note: expanded from macro '__out'
                   drm_warn((&(a)->drm), __VA_ARGS__); \
                   ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~
   include/drm/drm_print.h:435:16: note: expanded from macro 'drm_warn'
           __drm_printk((drm), warn,, fmt, ##__VA_ARGS__)
           ~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/drm/drm_print.h:425:21: note: expanded from macro '__drm_printk'
           dev_##level##type((drm)->dev, "[drm] " fmt, ##__VA_ARGS__)
           ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/dev_printk.h:146:49: note: expanded from macro 'dev_warn'
           dev_printk_index_wrap(_dev_warn, KERN_WARNING, dev, dev_fmt(fmt), ##__VA_ARGS__)
           ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/dev_printk.h:110:11: note: expanded from macro 'dev_printk_index_wrap'
                   _p_func(dev, fmt, ##__VA_ARGS__);                       \
                           ^~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1518:4: error: no member named 'drm' in 'struct drm_i915_error_state_buf'
                           __out(ebuf, "    GuC-Eng-Class: %d\n", node->eng_class);
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1442:19: note: expanded from macro '__out'
                   drm_warn((&(a)->drm), __VA_ARGS__); \
                   ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~
   include/drm/drm_print.h:435:16: note: expanded from macro 'drm_warn'
           __drm_printk((drm), warn,, fmt, ##__VA_ARGS__)
           ~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/drm/drm_print.h:425:21: note: expanded from macro '__drm_printk'
           dev_##level##type((drm)->dev, "[drm] " fmt, ##__VA_ARGS__)


vim +1497 drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c

  1449	
  1450	#define GCAP_PRINT_INTEL_ENG_INFO(ebuf, eng) \
  1451		do { \
  1452			__out(ebuf, "    i915-Eng-Name: %s command stream\n", \
  1453			      (eng)->name); \
  1454			__out(ebuf, "    i915-Eng-Inst-Class: 0x%02x\n", (eng)->class); \
  1455			__out(ebuf, "    i915-Eng-Inst-Id: 0x%02x\n", (eng)->instance); \
  1456			__out(ebuf, "    i915-Eng-LogicalMask: 0x%08x\n", \
  1457			      (eng)->logical_mask); \
  1458		} while (0)
  1459	
  1460	#define GCAP_PRINT_GUC_INST_INFO(ebuf, node) \
  1461		do { \
  1462			__out(ebuf, "    GuC-Engine-Inst-Id: 0x%08x\n", \
  1463			      (node)->eng_inst); \
  1464			__out(ebuf, "    GuC-Context-Id: 0x%08x\n", (node)->guc_id); \
  1465			__out(ebuf, "    LRCA: 0x%08x\n", (node)->lrca); \
  1466		} while (0)
  1467	
  1468	int intel_guc_capture_print_engine_node(struct drm_i915_error_state_buf *ebuf,
  1469						const struct intel_engine_coredump *ee)
  1470	{
  1471		const char *grptype[GUC_STATE_CAPTURE_GROUP_TYPE_MAX] = {
  1472			"full-capture",
  1473			"partial-capture"
  1474		};
  1475		const char *datatype[GUC_CAPTURE_LIST_TYPE_MAX] = {
  1476			"Global",
  1477			"Engine-Class",
  1478			"Engine-Instance"
  1479		};
  1480		struct intel_guc_state_capture *cap;
  1481		struct __guc_capture_parsed_output *node;
  1482		struct intel_engine_cs *eng;
  1483		struct guc_mmio_reg *regs;
  1484		struct intel_guc *guc;
  1485		const char *str;
  1486		int numregs, i, j;
  1487		u32 is_ext;
  1488	
  1489		if (!ebuf || !ee)
  1490			return -EINVAL;
  1491		cap = ee->capture;
  1492		if (!cap || !ee->engine)
  1493			return -ENODEV;
  1494	
  1495		guc = &ee->engine->gt->uc.guc;
  1496	
> 1497		__out(ebuf, "global --- GuC Error Capture on %s command stream:\n",
  1498		      ee->engine->name);
  1499	
  1500		node = ee->guc_capture_node;
  1501		if (!node) {
  1502			__out(ebuf, "  No matching ee-node\n");
  1503			return 0;
  1504		}
  1505	
  1506		__out(ebuf, "Coverage:  %s\n", grptype[node->is_partial]);
  1507	
  1508		for (i = GUC_CAPTURE_LIST_TYPE_GLOBAL; i < GUC_CAPTURE_LIST_TYPE_MAX; ++i) {
  1509			__out(ebuf, "  RegListType: %s\n",
  1510			      datatype[i % GUC_CAPTURE_LIST_TYPE_MAX]);
  1511			__out(ebuf, "    Owner-Id: %d\n", node->reginfo[i].vfid);
  1512	
  1513			switch (i) {
  1514			case GUC_CAPTURE_LIST_TYPE_GLOBAL:
  1515			default:
  1516				break;
  1517			case GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS:
  1518				__out(ebuf, "    GuC-Eng-Class: %d\n", node->eng_class);
  1519				__out(ebuf, "    i915-Eng-Class: %d\n",
  1520				      guc_class_to_engine_class(node->eng_class));
  1521				break;
  1522			case GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE:
  1523				eng = intel_guc_lookup_engine(guc, node->eng_class, node->eng_inst);
  1524				if (eng)
  1525					GCAP_PRINT_INTEL_ENG_INFO(ebuf, eng);
  1526				else
  1527					__out(ebuf, "    i915-Eng-Lookup Fail!\n");
  1528				GCAP_PRINT_GUC_INST_INFO(ebuf, node);
  1529				break;
  1530			}
  1531	
  1532			numregs = node->reginfo[i].num_regs;
  1533			__out(ebuf, "    NumRegs: %d\n", numregs);
  1534			j = 0;
  1535			while (numregs--) {
  1536				regs = node->reginfo[i].regs;
  1537				str = guc_capture_reg_to_str(guc, GUC_CAPTURE_LIST_INDEX_PF, i,
  1538							     node->eng_class, 0, regs[j].offset, &is_ext);
  1539				if (!str)
  1540					__out(ebuf, "      REG-0x%08x", regs[j].offset);
  1541				else
  1542					__out(ebuf, "      %s", str);
  1543				if (is_ext)
  1544					__out(ebuf, "[%ld][%ld]",
  1545					      FIELD_GET(GUC_REGSET_STEERING_GROUP, regs[j].flags),
  1546					      FIELD_GET(GUC_REGSET_STEERING_INSTANCE, regs[j].flags));
  1547				__out(ebuf, ":  0x%08x\n", regs[j].value);
  1548				++j;
  1549			}
  1550		}
  1551		return 0;
  1552	}
  1553	

---
0-DAY CI Kernel Test Service
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
