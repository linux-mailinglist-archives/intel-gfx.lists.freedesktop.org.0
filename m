Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 659046F76C4
	for <lists+intel-gfx@lfdr.de>; Thu,  4 May 2023 22:15:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3D1510E51E;
	Thu,  4 May 2023 20:15:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E1D410E51E
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 May 2023 20:15:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683231354; x=1714767354;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=U/3x0sFtGdBEfQN7VtgDWKIQs6+Y0vLg49FKhQmLF40=;
 b=KAUTsXCDdjxBArGT/osyJjgkb/dG2oMgALPfvx/iB9dMwbCLcFHf3iQm
 i+3CiKF2dRJ64zHKZ+s1m0B7ZIx9jFHTnW1pXUkdJxnAvuUaXWShqOSOo
 gXF/CrmnV0gngM2EizY9O7kORtk9kGUgnFD7qnsemWJ24SO6f93+MsKBM
 yksMGJbWQ3ZdKAveFAXXWSdsUbRO1BmO7IrOM3biFOrQuaJnVfcNOHvmF
 1af7S5+AvKBM6JAnG1RUjBfxUf9bEKEKzOzRpU4BlO1VLcDxWv2pRQnl2
 xTjcnkMRfZP+y7lLYiuYm1FU8KTyaIRK32RiELG5VhkERBvJDYyogJx7u A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="414568506"
X-IronPort-AV: E=Sophos;i="5.99,250,1677571200"; d="scan'208";a="414568506"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 13:15:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="808898272"
X-IronPort-AV: E=Sophos;i="5.99,250,1677571200"; d="scan'208";a="808898272"
Received: from lkp-server01.sh.intel.com (HELO 64cf2984a3fe) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 04 May 2023 13:15:51 -0700
Received: from kbuild by 64cf2984a3fe with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pufMl-00007i-0O;
 Thu, 04 May 2023 20:15:51 +0000
Date: Fri, 5 May 2023 04:15:49 +0800
From: kernel test robot <lkp@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Message-ID: <202305050427.FtwE2pE7-lkp@intel.com>
References: <d175e7571d188e791a3b691919d22b6a55ba8b16.1683219363.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d175e7571d188e791a3b691919d22b6a55ba8b16.1683219363.git.jani.nikula@intel.com>
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
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com,
 oe-kbuild-all@lists.linux.dev
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jani,

kernel test robot noticed the following build warnings:

[auto build test WARNING on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Jani-Nikula/drm-i915-irq-relocate-gmbus-and-dp-aux-irq-handlers/20230505-005945
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/d175e7571d188e791a3b691919d22b6a55ba8b16.1683219363.git.jani.nikula%40intel.com
patch subject: [Intel-gfx] [PATCH 3/3] drm/i915/irq: split out display irq handling
config: x86_64-randconfig-a002-20230501 (https://download.01.org/0day-ci/archive/20230505/202305050427.FtwE2pE7-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.3.0-12) 11.3.0
reproduce (this is a W=1 build):
        # https://github.com/intel-lab-lkp/linux/commit/8ace6b1f9c8d5dce9faa2181a85d61b33d550b8e
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Jani-Nikula/drm-i915-irq-relocate-gmbus-and-dp-aux-irq-handlers/20230505-005945
        git checkout 8ace6b1f9c8d5dce9faa2181a85d61b33d550b8e
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        make W=1 O=build_dir ARCH=x86_64 olddefconfig
        make W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash drivers/gpu/drm/i915/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202305050427.FtwE2pE7-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/i915/display/intel_display_irq.c:411:41: warning: argument 3 of type 'u32[4]' {aka 'unsigned int[4]'} with mismatched bound [-Warray-parameter=]
     411 |                            u32 iir, u32 pipe_stats[I915_MAX_PIPES])
         |                                     ~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from drivers/gpu/drm/i915/display/intel_display_irq.c:10:
   drivers/gpu/drm/i915/display/intel_display_irq.h:72:73: note: previously declared as 'u32 *' {aka 'unsigned int *'}
      72 | void i9xx_pipestat_irq_ack(struct drm_i915_private *i915, u32 iir, u32 *pipe_stats);
         |                                                                    ~~~~~^~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_display_irq.c:477:45: warning: argument 3 of type 'u32[4]' {aka 'unsigned int[4]'} with mismatched bound [-Warray-parameter=]
     477 |                                u16 iir, u32 pipe_stats[I915_MAX_PIPES])
         |                                         ~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from drivers/gpu/drm/i915/display/intel_display_irq.c:10:
   drivers/gpu/drm/i915/display/intel_display_irq.h:77:77: note: previously declared as 'u32 *' {aka 'unsigned int *'}
      77 | void i8xx_pipestat_irq_handler(struct drm_i915_private *i915, u16 iir, u32 *pipe_stats);
         |                                                                        ~~~~~^~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_display_irq.c:494:45: warning: argument 3 of type 'u32[4]' {aka 'unsigned int[4]'} with mismatched bound [-Warray-parameter=]
     494 |                                u32 iir, u32 pipe_stats[I915_MAX_PIPES])
         |                                         ~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from drivers/gpu/drm/i915/display/intel_display_irq.c:10:
   drivers/gpu/drm/i915/display/intel_display_irq.h:74:77: note: previously declared as 'u32 *' {aka 'unsigned int *'}
      74 | void i915_pipestat_irq_handler(struct drm_i915_private *i915, u32 iir, u32 *pipe_stats);
         |                                                                        ~~~~~^~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_display_irq.c:518:45: warning: argument 3 of type 'u32[4]' {aka 'unsigned int[4]'} with mismatched bound [-Warray-parameter=]
     518 |                                u32 iir, u32 pipe_stats[I915_MAX_PIPES])
         |                                         ~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from drivers/gpu/drm/i915/display/intel_display_irq.c:10:
   drivers/gpu/drm/i915/display/intel_display_irq.h:75:77: note: previously declared as 'u32 *' {aka 'unsigned int *'}
      75 | void i965_pipestat_irq_handler(struct drm_i915_private *i915, u32 iir, u32 *pipe_stats);
         |                                                                        ~~~~~^~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_display_irq.c:545:42: warning: argument 2 of type 'u32[4]' {aka 'unsigned int[4]'} with mismatched bound [-Warray-parameter=]
     545 |                                      u32 pipe_stats[I915_MAX_PIPES])
         |                                      ~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from drivers/gpu/drm/i915/display/intel_display_irq.c:10:
   drivers/gpu/drm/i915/display/intel_display_irq.h:76:74: note: previously declared as 'u32 *' {aka 'unsigned int *'}
      76 | void valleyview_pipestat_irq_handler(struct drm_i915_private *i915, u32 *pipe_stats);
         |                                                                     ~~~~~^~~~~~~~~~


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
