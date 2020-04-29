Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 057FB1BDD90
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 15:27:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FAF16ED04;
	Wed, 29 Apr 2020 13:27:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5510A6ED04
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2020 13:27:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21058541-1500050 for multiple; Wed, 29 Apr 2020 14:27:46 +0100
MIME-Version: 1.0
In-Reply-To: <20200429132345.GC815283@mwanda>
References: <20200429132345.GC815283@mwanda>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Dan Carpenter <dan.carpenter@oracle.com>
Message-ID: <158816686487.4620.16423470949272229176@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 29 Apr 2020 14:27:44 +0100
Subject: Re: [Intel-gfx] [bug report] drm/i915/gt: Use the RPM config
 register to determine clk frequencies
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Dan Carpenter (2020-04-29 14:23:45)
> Hello Chris Wilson,
> 
> The patch 9c878557b1eb: "drm/i915/gt: Use the RPM config register to
> determine clk frequencies" from Apr 24, 2020, leads to the following
> static checker warning:
> 
>         drivers/gpu/drm/i915/gt/debugfs_gt_pm.c:407 frequency_show()
>         error: uninitialized symbol 'rpcurupei'.
> 
> drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
>    298          } else if (INTEL_GEN(i915) >= 6) {
>    299                  u32 rp_state_limits;
>    300                  u32 gt_perf_status;
>    301                  u32 rp_state_cap;
>    302                  u32 rpmodectl, rpinclimit, rpdeclimit;
>    303                  u32 rpstat, cagf, reqf;
>    304                  u32 rpcurupei, rpcurup, rpprevup;
>                             ^^^^^^^^^
> 
>    305                  u32 rpcurdownei, rpcurdown, rpprevdown;
>    306                  u32 rpupei, rpupt, rpdownei, rpdownt;
>    307                  u32 pm_ier, pm_imr, pm_isr, pm_iir, pm_mask;
>    308                  int max_freq;
>    309  
>    310                  rp_state_limits = intel_uncore_read(uncore, GEN6_RP_STATE_LIMITS);
>    311                  if (IS_GEN9_LP(i915)) {
>    312                          rp_state_cap = intel_uncore_read(uncore, BXT_RP_STATE_CAP);
>    313                          gt_perf_status = intel_uncore_read(uncore, BXT_GT_PERF_STATUS);
>    314                  } else {
>    315                          rp_state_cap = intel_uncore_read(uncore, GEN6_RP_STATE_CAP);
>    316                          gt_perf_status = intel_uncore_read(uncore, GEN6_GT_PERF_STATUS);
>    317                  }
>    318  
>    319                  /* RPSTAT1 is in the GT power well */
>    320                  intel_uncore_forcewake_get(uncore, FORCEWAKE_ALL);
>    321  
>    322                  reqf = intel_uncore_read(uncore, GEN6_RPNSWREQ);
>    323                  if (INTEL_GEN(i915) >= 9) {
>    324                          reqf >>= 23;
>    325                  } else {
>    326                          reqf &= ~GEN6_TURBO_DISABLE;
>    327                          if (IS_HASWELL(i915) || IS_BROADWELL(i915))
>    328                                  reqf >>= 24;
>    329                          else
>    330                                  reqf >>= 25;
>    331                  }
>    332                  reqf = intel_gpu_freq(rps, reqf);
>    333  
>    334                  rpmodectl = intel_uncore_read(uncore, GEN6_RP_CONTROL);
>    335                  rpinclimit = intel_uncore_read(uncore, GEN6_RP_UP_THRESHOLD);
>    336                  rpdeclimit = intel_uncore_read(uncore, GEN6_RP_DOWN_THRESHOLD);
>    337  
>    338                  rpstat = intel_uncore_read(uncore, GEN6_RPSTAT1);
>    339                  rpupei = intel_uncore_read(uncore, GEN6_RP_CUR_UP_EI) & GEN6_CURICONT_MASK;
>    340                  rpcurup = intel_uncore_read(uncore, GEN6_RP_CUR_UP) & GEN6_CURBSYTAVG_MASK;
>    341                  rpprevup = intel_uncore_read(uncore, GEN6_RP_PREV_UP) & GEN6_CURBSYTAVG_MASK;
>    342                  rpcurdownei = intel_uncore_read(uncore, GEN6_RP_CUR_DOWN_EI) & GEN6_CURIAVG_MASK;
>    343                  rpcurdown = intel_uncore_read(uncore, GEN6_RP_CUR_DOWN) & GEN6_CURBSYTAVG_MASK;
>    344                  rpprevdown = intel_uncore_read(uncore, GEN6_RP_PREV_DOWN) & GEN6_CURBSYTAVG_MASK;
>    345  
>    346                  rpupei = intel_uncore_read(uncore, GEN6_RP_UP_EI);
>    347                  rpupt = intel_uncore_read(uncore, GEN6_RP_UP_THRESHOLD);
>    348  
>    349                  rpdownei = intel_uncore_read(uncore, GEN6_RP_DOWN_EI);
>    350                  rpdownt = intel_uncore_read(uncore, GEN6_RP_DOWN_THRESHOLD);
>    351  
>    352                  cagf = intel_rps_read_actual_frequency(rps);
>    353  
>    354                  intel_uncore_forcewake_put(uncore, FORCEWAKE_ALL);
>    355  
>    356                  if (INTEL_GEN(i915) >= 11) {
>    357                          pm_ier = intel_uncore_read(uncore, GEN11_GPM_WGBOXPERF_INTR_ENABLE);
>    358                          pm_imr = intel_uncore_read(uncore, GEN11_GPM_WGBOXPERF_INTR_MASK);
>    359                          /*
>    360                           * The equivalent to the PM ISR & IIR cannot be read
>    361                           * without affecting the current state of the system
>    362                           */
>    363                          pm_isr = 0;
>    364                          pm_iir = 0;
>    365                  } else if (INTEL_GEN(i915) >= 8) {
>    366                          pm_ier = intel_uncore_read(uncore, GEN8_GT_IER(2));
>    367                          pm_imr = intel_uncore_read(uncore, GEN8_GT_IMR(2));
>    368                          pm_isr = intel_uncore_read(uncore, GEN8_GT_ISR(2));
>    369                          pm_iir = intel_uncore_read(uncore, GEN8_GT_IIR(2));
>    370                  } else {
>    371                          pm_ier = intel_uncore_read(uncore, GEN6_PMIER);
>    372                          pm_imr = intel_uncore_read(uncore, GEN6_PMIMR);
>    373                          pm_isr = intel_uncore_read(uncore, GEN6_PMISR);
>    374                          pm_iir = intel_uncore_read(uncore, GEN6_PMIIR);
>    375                  }
>    376                  pm_mask = intel_uncore_read(uncore, GEN6_PMINTRMSK);
>    377  
>    378                  seq_printf(m, "Video Turbo Mode: %s\n",
>    379                             yesno(rpmodectl & GEN6_RP_MEDIA_TURBO));
>    380                  seq_printf(m, "HW control enabled: %s\n",
>    381                             yesno(rpmodectl & GEN6_RP_ENABLE));
>    382                  seq_printf(m, "SW control enabled: %s\n",
>    383                             yesno((rpmodectl & GEN6_RP_MEDIA_MODE_MASK) ==
>    384                                   GEN6_RP_MEDIA_SW_MODE));
>    385  
>    386                  seq_printf(m, "PM IER=0x%08x IMR=0x%08x, MASK=0x%08x\n",
>    387                             pm_ier, pm_imr, pm_mask);
>    388                  if (INTEL_GEN(i915) <= 10)
>    389                          seq_printf(m, "PM ISR=0x%08x IIR=0x%08x\n",
>    390                                     pm_isr, pm_iir);
>    391                  seq_printf(m, "pm_intrmsk_mbz: 0x%08x\n",
>    392                             rps->pm_intrmsk_mbz);
>    393                  seq_printf(m, "GT_PERF_STATUS: 0x%08x\n", gt_perf_status);
>    394                  seq_printf(m, "Render p-state ratio: %d\n",
>    395                             (gt_perf_status & (INTEL_GEN(i915) >= 9 ? 0x1ff00 : 0xff00)) >> 8);
>    396                  seq_printf(m, "Render p-state VID: %d\n",
>    397                             gt_perf_status & 0xff);
>    398                  seq_printf(m, "Render p-state limit: %d\n",
>    399                             rp_state_limits & 0xff);
>    400                  seq_printf(m, "RPSTAT1: 0x%08x\n", rpstat);
>    401                  seq_printf(m, "RPMODECTL: 0x%08x\n", rpmodectl);
>    402                  seq_printf(m, "RPINCLIMIT: 0x%08x\n", rpinclimit);
>    403                  seq_printf(m, "RPDECLIMIT: 0x%08x\n", rpdeclimit);
>    404                  seq_printf(m, "RPNSWREQ: %dMHz\n", reqf);
>    405                  seq_printf(m, "CAGF: %dMHz\n", cagf);
>    406                  seq_printf(m, "RP CUR UP EI: %d (%dns)\n",
>    407                             rpcurupei,
>                                    ^^^^^^^^^
>    408                             intel_gt_pm_interval_to_ns(gt, rpcurupei));
>                                                                   ^^^^^^^^^
> This is never initialized.

Thanks, Nathan Chancellor has provided the fix.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
