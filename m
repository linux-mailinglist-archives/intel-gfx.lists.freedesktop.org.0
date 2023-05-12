Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 042CD700965
	for <lists+intel-gfx@lfdr.de>; Fri, 12 May 2023 15:44:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B47810E6BC;
	Fri, 12 May 2023 13:44:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E33D10E6BC
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 May 2023 13:44:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683899090; x=1715435090;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=FawK7ovzdULCGf9HE0T97MbRCE2ok7w+0DEJcwKEV5k=;
 b=DKEuwLtIsJr6h44IxASEn1er8EtU2oNsi+lxpIbA/wtF2y52ubFHtLlM
 8oepfowlxG9CwNXEWnzdXfal3rBxwnjfwWZef2ssIESwtVg/7wNzqV0Xv
 ++CWioGru7wcSeM1FEH3m5Coa+6/FhqF/J2g/KIVNImWT1/NaowpIeo01
 b1xnhm67BllCiinXPxwUlZGKcmXrHJqE09e3gR/bHKaNdYLKZZwi7UTHH
 YlyAMLrt3YECRGnH7sTKaJJX58HkeBZR7kaWjV8HZPAW9nRC/EL5OBFzL
 /6wlOv84e1y3kSit5SJte8jwvyobWw6ziP1bDlCtQ302yyXuPR3Xl/Wq1 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="331153915"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="331153915"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 06:44:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="769817359"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="769817359"
Received: from lkp-server01.sh.intel.com (HELO dea6d5a4f140) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 12 May 2023 06:44:48 -0700
Received: from kbuild by dea6d5a4f140 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pxT4i-0004ta-0b;
 Fri, 12 May 2023 13:44:48 +0000
Date: Fri, 12 May 2023 21:44:24 +0800
From: kernel test robot <lkp@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Message-ID: <202305122119.ReGv8vXc-lkp@intel.com>
References: <20230512102310.1398406-3-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230512102310.1398406-3-jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/irq: split out display irq
 handling
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
Cc: jani.nikula@intel.com, oe-kbuild-all@lists.linux.dev
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jani,

kernel test robot noticed the following build warnings:

[auto build test WARNING on drm-intel/for-linux-next]
[also build test WARNING on next-20230512]
[cannot apply to drm-intel/for-linux-next-fixes linus/master v6.4-rc1]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Jani-Nikula/drm-i915-irq-split-out-hotplug-irq-handling/20230512-182445
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
patch link:    https://lore.kernel.org/r/20230512102310.1398406-3-jani.nikula%40intel.com
patch subject: [Intel-gfx] [PATCH 3/3] drm/i915/irq: split out display irq handling
config: x86_64-randconfig-a011 (https://download.01.org/0day-ci/archive/20230512/202305122119.ReGv8vXc-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.3.0-12) 11.3.0
reproduce (this is a W=1 build):
        # https://github.com/intel-lab-lkp/linux/commit/40f02fc9ce92df7a661245796cb4b53471edb004
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Jani-Nikula/drm-i915-irq-split-out-hotplug-irq-handling/20230512-182445
        git checkout 40f02fc9ce92df7a661245796cb4b53471edb004
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        make W=1 O=build_dir ARCH=x86_64 olddefconfig
        make W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash drivers/gpu/drm/i915/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202305122119.ReGv8vXc-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/i915/display/intel_display_irq.c:411:41: warning: argument 3 of type 'u32[4]' {aka 'unsigned int[4]'} with mismatched bound [-Warray-parameter=]
     411 |                            u32 iir, u32 pipe_stats[I915_MAX_PIPES])
         |                                     ~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from drivers/gpu/drm/i915/display/intel_display_irq.c:10:
   drivers/gpu/drm/i915/display/intel_display_irq.h:74:73: note: previously declared as 'u32 *' {aka 'unsigned int *'}
      74 | void i9xx_pipestat_irq_ack(struct drm_i915_private *i915, u32 iir, u32 *pipe_stats);
         |                                                                    ~~~~~^~~~~~~~~~


vim +411 drivers/gpu/drm/i915/display/intel_display_irq.c

   409	
   410	void i9xx_pipestat_irq_ack(struct drm_i915_private *dev_priv,
 > 411				   u32 iir, u32 pipe_stats[I915_MAX_PIPES])
   412	{
   413		enum pipe pipe;
   414	
   415		spin_lock(&dev_priv->irq_lock);
   416	
   417		if (!dev_priv->display_irqs_enabled) {
   418			spin_unlock(&dev_priv->irq_lock);
   419			return;
   420		}
   421	
   422		for_each_pipe(dev_priv, pipe) {
   423			i915_reg_t reg;
   424			u32 status_mask, enable_mask, iir_bit = 0;
   425	
   426			/*
   427			 * PIPESTAT bits get signalled even when the interrupt is
   428			 * disabled with the mask bits, and some of the status bits do
   429			 * not generate interrupts at all (like the underrun bit). Hence
   430			 * we need to be careful that we only handle what we want to
   431			 * handle.
   432			 */
   433	
   434			/* fifo underruns are filterered in the underrun handler. */
   435			status_mask = PIPE_FIFO_UNDERRUN_STATUS;
   436	
   437			switch (pipe) {
   438			default:
   439			case PIPE_A:
   440				iir_bit = I915_DISPLAY_PIPE_A_EVENT_INTERRUPT;
   441				break;
   442			case PIPE_B:
   443				iir_bit = I915_DISPLAY_PIPE_B_EVENT_INTERRUPT;
   444				break;
   445			case PIPE_C:
   446				iir_bit = I915_DISPLAY_PIPE_C_EVENT_INTERRUPT;
   447				break;
   448			}
   449			if (iir & iir_bit)
   450				status_mask |= dev_priv->pipestat_irq_mask[pipe];
   451	
   452			if (!status_mask)
   453				continue;
   454	
   455			reg = PIPESTAT(pipe);
   456			pipe_stats[pipe] = intel_uncore_read(&dev_priv->uncore, reg) & status_mask;
   457			enable_mask = i915_pipestat_enable_mask(dev_priv, pipe);
   458	
   459			/*
   460			 * Clear the PIPE*STAT regs before the IIR
   461			 *
   462			 * Toggle the enable bits to make sure we get an
   463			 * edge in the ISR pipe event bit if we don't clear
   464			 * all the enabled status bits. Otherwise the edge
   465			 * triggered IIR on i965/g4x wouldn't notice that
   466			 * an interrupt is still pending.
   467			 */
   468			if (pipe_stats[pipe]) {
   469				intel_uncore_write(&dev_priv->uncore, reg, pipe_stats[pipe]);
   470				intel_uncore_write(&dev_priv->uncore, reg, enable_mask);
   471			}
   472		}
   473		spin_unlock(&dev_priv->irq_lock);
   474	}
   475	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
