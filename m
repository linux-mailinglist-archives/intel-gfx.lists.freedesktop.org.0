Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC58F8558FC
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Feb 2024 03:48:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A838589FF7;
	Thu, 15 Feb 2024 02:48:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nezW9irr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A00BE89FF7
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Feb 2024 02:48:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707965317; x=1739501317;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=7uJhrxJ/DEPPnLSqNKo9KHA/8c1+XjytCpx1Lv34FKg=;
 b=nezW9irrH7qpafKihb+jDDWkBxXt9bGbbw1bi13ojXjZBcifU2Mtj6Zj
 +PXBuu2cqEfAJNNbHPAGr6uVBujkxIQhCSR2r7F16ikZn4i2kWc1KOq6+
 RYxPaECHXwrO9T3g7tk5w9FwXKMoIpGgnPVARBv8AcIed04e/CYeNzLM6
 rSck//7EEdoEEUIYvzNrscewTvMYDRIs0oCvt9B/0QWPeFPaj/3RlQiPv
 9eONz90F9l1juVMIcS3udmX7Gf/sIjApgnzNoPzMK4HQl6hWoYWmD7qcZ
 FVhAjwKxGO3/jek5srLuYVMS+kgXhRPd9pG8KQ965/bIJgMYxUN0ARToC w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="12758302"
X-IronPort-AV: E=Sophos;i="6.06,161,1705392000"; d="scan'208";a="12758302"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 18:48:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,161,1705392000"; 
   d="scan'208";a="3413022"
Received: from lkp-server02.sh.intel.com (HELO 94d82249bd8f) ([10.239.97.151])
 by orviesa009.jf.intel.com with ESMTP; 14 Feb 2024 18:48:34 -0800
Received: from kbuild by 94d82249bd8f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1raRna-00006i-1h;
 Thu, 15 Feb 2024 02:48:30 +0000
Date: Thu, 15 Feb 2024 10:48:22 +0800
From: kernel test robot <lkp@intel.com>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: oe-kbuild-all@lists.linux.dev,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Subject: Re: [PATCH 2/2] i915/pmu: Cleanup pending events on unbind
Message-ID: <202402151001.pZIUj91O-lkp@intel.com>
References: <20240213180302.47266-3-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240213180302.47266-3-umesh.nerlige.ramappa@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Umesh,

kernel test robot noticed the following build warnings:

[auto build test WARNING on drm-intel/for-linux-next]
[also build test WARNING on drm-intel/for-linux-next-fixes drm-tip/drm-tip linus/master v6.8-rc4 next-20240214]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Umesh-Nerlige-Ramappa/i915-pmu-Add-pmu_teardown-helper/20240214-020605
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
patch link:    https://lore.kernel.org/r/20240213180302.47266-3-umesh.nerlige.ramappa%40intel.com
patch subject: [PATCH 2/2] i915/pmu: Cleanup pending events on unbind
config: x86_64-randconfig-121-20240214 (https://download.01.org/0day-ci/archive/20240215/202402151001.pZIUj91O-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240215/202402151001.pZIUj91O-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202402151001.pZIUj91O-lkp@intel.com/

sparse warnings: (new ones prefixed by >>)
>> drivers/gpu/drm/i915/i915_pmu.c:1405:44: sparse: sparse: incorrect type in initializer (different address spaces) @@     expected struct file *file @@     got struct file [noderef] __rcu * @@
   drivers/gpu/drm/i915/i915_pmu.c:1405:44: sparse:     expected struct file *file
   drivers/gpu/drm/i915/i915_pmu.c:1405:44: sparse:     got struct file [noderef] __rcu *
   drivers/gpu/drm/i915/i915_pmu.c: note: in included file (through include/linux/preempt.h, include/linux/spinlock.h, include/linux/fdtable.h):
   include/linux/list.h:83:21: sparse: sparse: self-comparison always evaluates to true

vim +1405 drivers/gpu/drm/i915/i915_pmu.c

  1385	
  1386	static void close_event_file(struct perf_event *event)
  1387	{
  1388		unsigned int max_open_fds, fd;
  1389		struct files_struct *files;
  1390		struct task_struct *task;
  1391		struct fdtable *fdt;
  1392	
  1393		task = event->owner;
  1394		if (!task)
  1395			return;
  1396	
  1397		files = task->files;
  1398		if (!files)
  1399			return;
  1400	
  1401		spin_lock(&files->file_lock);
  1402		fdt = files_fdtable(files);
  1403		max_open_fds = __open_files(fdt);
  1404		for (fd = 0; fd < max_open_fds; fd++) {
> 1405			struct file *file = fdt->fd[fd];
  1406	
  1407			if (!file || file->private_data != event)
  1408				continue;
  1409	
  1410			rcu_assign_pointer(fdt->fd[fd], NULL);
  1411			__clear_bit(fd, fdt->open_fds);
  1412			__clear_bit(fd / BITS_PER_LONG, fdt->full_fds_bits);
  1413			if (fd < files->next_fd)
  1414				files->next_fd = fd;
  1415			filp_close(file, files);
  1416			break;
  1417		}
  1418		spin_unlock(&files->file_lock);
  1419	}
  1420	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
