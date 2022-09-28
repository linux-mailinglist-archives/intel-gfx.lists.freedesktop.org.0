Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA9A65ED9A3
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Sep 2022 12:00:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76CC410E3B1;
	Wed, 28 Sep 2022 09:59:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 043D310E3C4
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Sep 2022 09:59:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664359196; x=1695895196;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=u6u/IcyvLoALRGBGpylK/sG2eO2gNOCiovWdzUDbyrQ=;
 b=GkRWQdNRWrn9bvTQBBd7MTUKd9LuAWLAj/mqp34/rPb7QQOntwyCrhgA
 /iSMisOyy8G9jSVsfgl0rQBS1zS7vzPKw3Yo55YRkNP3N87MpwoBYcCkl
 OT/YTsMKkB4NvQGRTheh2/1AqgJ4FNvOElJsJTcQS/jIF9AAZtHGYtrCY
 6/5AXhNJwa91i5aVRsJtrmxxaOMMv8OAhE2uYrr2AQiW+U30g/aTH7gmn
 NDpS+bMvtbyqCrgKYxXAFTC9YR7UAgYjoXIkepQKRs/grmSHB0klWaRCw
 S8e8cYVu41kHroOYKmZXoBI5buGiiCSz2lo1nH2Cg8A/nisK08H+14BWw g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="299160105"
X-IronPort-AV: E=Sophos;i="5.93,351,1654585200"; d="scan'208";a="299160105"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2022 02:59:51 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="599517629"
X-IronPort-AV: E=Sophos;i="5.93,351,1654585200"; d="scan'208";a="599517629"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.5.184])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2022 02:59:49 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Date: Wed, 28 Sep 2022 11:59:46 +0200
Message-ID: <5842226.alqRGMn8q6@jkrzyszt-mobl1.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <22b0b220-8da8-ec94-87f5-3ddcd1c39d4a@linux.intel.com>
References: <20220928085826.243721-1-janusz.krzysztofik@linux.intel.com>
 <22b0b220-8da8-ec94-87f5-3ddcd1c39d4a@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [Intel-gfx] [core-for-CI][PATCH v2 0/2] iommu: Remove iova cpu
 hotplugging flushing
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wednesday, 28 September 2022 11:22:21 CEST Tvrtko Ursulin wrote:
> 
> On 28/09/2022 09:58, Janusz Krzysztofik wrote:
> > Manual revert of commit f598a497bc7d ("iova: Add CPU hotplug handler to
> > flush rcaches").  It is trying to instantiate a cpuhp notifier from inside
> > a cpuhp callback.  That code replaced intel_iommu implementation of
> > flushing per-IOVA domain CPU rcaches which used a single instance of cpuhp
> > held for the module lifetime.
> > 
> > v2: Restore formerly reverted commit ac9a5d522bb8 "iommu/dma: Fix race
> >      condition during iova_domain initialization" after we have this more
> >      effective fix applied.  The former occurred not sufficient and is no
> >      longer needed once we have the latter in place.
> > 
> > Note: I'm no longer CCing IOMMU nor mainstream, they have been already
> >        warned.
> 
> Will that also fix the one below?

AFAICS, that one is supposed to be resolved by commit a349ffcb4daf 
("iommu/vt-d: Fix recursive lock issue in iommu_flush_dev_iotlb()").

Thanks,
Janusz

> 
> <4> [18.297089] ================================
> <4> [18.297090] WARNING: inconsistent lock state
> <4> [18.297092] 6.0.0-rc2-CI_DINF_262-g320305923c88+ #1 Not tainted
> <4> [18.297095] --------------------------------
> <4> [18.297096] inconsistent {SOFTIRQ-ON-W} -> {IN-SOFTIRQ-W} usage.
> <4> [18.297098] swapper/0/0 [HC0[0]:SC1[1]:HE1:SE0] takes:
> <4> [18.297101] ffff8881030ed678 (&domain->lock){+.?.}-{2:2}, at: 
iommu_flush_dev_iotlb.part.61+0x23/0x80
> <4> [18.297108] {SOFTIRQ-ON-W} state was registered at:
> <4> [18.297110]   lock_acquire+0xd3/0x310
> <4> [18.297113]   _raw_spin_lock+0x2a/0x40
> <4> [18.297116]   domain_update_iommu_cap+0x20b/0x2c0
> <4> [18.297118]   intel_iommu_attach_device+0x5bd/0x860
> <4> [18.297121]   __iommu_attach_device+0x18/0xe0
> <4> [18.297124]   bus_iommu_probe+0x1f3/0x2d0
> <4> [18.297126]   bus_set_iommu+0x82/0xd0
> <4> [18.297129]   intel_iommu_init+0xe45/0x102a
> <4> [18.297132]   pci_iommu_init+0x9/0x31
> <4> [18.297135]   do_one_initcall+0x53/0x2f0
> <4> [18.297138]   kernel_init_freeable+0x18f/0x1e1
> <4> [18.297140]   kernel_init+0x11/0x120
> <4> [18.297143]   ret_from_fork+0x1f/0x30
> <4> [18.297145] irq event stamp: 512712
> <4> [18.297147] hardirqs last  enabled at (512712): [<ffffffff81b59254>] 
_raw_spin_unlock_irqrestore+0x54/0x70
> <4> [18.297151] hardirqs last disabled at (512711): [<ffffffff81b58ffb>] 
_raw_spin_lock_irqsave+0x4b/0x50
> <4> [18.297155] softirqs last  enabled at (512700): [<ffffffff81e00323>] 
__do_softirq+0x323/0x48e
> <4> [18.297158] softirqs last disabled at (512705): [<ffffffff810c16a8>] 
irq_exit_rcu+0xb8/0xe0
> <4> [18.297162]
> other info that might help us debug this:
> <4> [18.297164]  Possible unsafe locking scenario:
> <4> [18.297166]        CPU0
> <4> [18.297168]        ----
> <4> [18.297169]   lock(&domain->lock);
> <4> [18.297171]   <Interrupt>
> <4> [18.297172]     lock(&domain->lock);
> <4> [18.297174]
>   *** DEADLOCK ***
> <4> [18.297176] 1 lock held by swapper/0/0:
> <4> [18.297177]  #0: ffffc90000003ea8 ((&cookie->fq_timer)){+.-.}-{0:0}, at: 
call_timer_fn+0x0/0x2c0
> <4> [18.297183]
> stack backtrace:
> <4> [18.297185] CPU: 0 PID: 0 Comm: swapper/0 Not tainted 6.0.0-rc2-
CI_DINF_262-g320305923c88+ #1
> <4> [18.297189] Hardware name: ASUS System Product Name/ROG STRIX B660-I 
GAMING WIFI, BIOS 0415 09/29/2021
> <4> [18.297192] Call Trace:
> <4> [18.297193]  <IRQ>
> <4> [18.297195]  dump_stack_lvl+0x56/0x7f
> <4> [18.297198]  mark_lock.part.47+0x8d1/0xdb0
> <4> [18.297200]  ? qi_submit_sync+0x3c8/0x650
> <4> [18.297203]  __lock_acquire+0x861/0xb90
> <4> [18.297205]  lock_acquire+0xd3/0x310
> <4> [18.297207]  ? iommu_flush_dev_iotlb.part.61+0x23/0x80
> <4> [18.297211]  ? iommu_dma_map_sg+0x400/0x400
> <4> [18.297213]  _raw_spin_lock+0x2a/0x40
> <4> [18.297215]  ? iommu_flush_dev_iotlb.part.61+0x23/0x80
> <4> [18.297218]  iommu_flush_dev_iotlb.part.61+0x23/0x80
> <4> [18.297220]  intel_flush_iotlb_all+0x95/0x110
> <4> [18.297223]  fq_flush_iotlb+0x1d/0x30
> <4> [18.297225]  fq_flush_timeout+0x28/0xc0
> <4> [18.297227]  ? iommu_dma_map_sg+0x400/0x400
> <4> [18.297229]  ? iommu_dma_map_sg+0x400/0x400
> <4> [18.297231]  call_timer_fn+0x9c/0x2c0
> <4> [18.297234]  run_timer_softirq+0x548/0x570
> <4> [18.297237]  __do_softirq+0xda/0x48e
> <4> [18.297240]  irq_exit_rcu+0xb8/0xe0
> <4> [18.297242]  sysvec_apic_timer_interrupt+0x9e/0xc0
> <4> [18.297245]  </IRQ>
> 
> Regards,
> 
> Tvrtko
> 
> > 
> > 
> > Chris Wilson (1):
> >    iommu: Remove iova cpu hotplugging flushing
> > 
> > Janusz Krzysztofik (1):
> >    Restore "iommu/dma: Fix race condition during iova_domain
> >      initialization"
> > 
> >   drivers/iommu/dma-iommu.c  | 17 +++++++++++++----
> >   drivers/iommu/iova.c       | 28 ----------------------------
> >   include/linux/cpuhotplug.h |  1 -
> >   include/linux/iova.h       |  1 -
> >   4 files changed, 13 insertions(+), 34 deletions(-)
> > 
> 




