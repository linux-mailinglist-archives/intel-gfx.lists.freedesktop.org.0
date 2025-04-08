Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AEECA80D47
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Apr 2025 16:07:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B26CA10E6C1;
	Tue,  8 Apr 2025 14:07:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bKfaLHsV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A165710E23C;
 Tue,  8 Apr 2025 14:07:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744121253; x=1775657253;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cbkCeEQjCIxxYeR5NUa+R50imV6mqkbGetjiKQO7z5Y=;
 b=bKfaLHsVqVjq996ox9K6GscM/v6FTo1oFac1MjcCfWL7wqqfMeX8/dMo
 iAiBnFrib0F3kM1Iib0MjbHfFhH3jTTQOwRl8ZGO6Qtp1AFlJw7++rFMV
 mV9zrGE4lIIDMu/VK+I3zlY+iJekV3bqzpx911FyxtxHOrIvzoMxcC2g0
 ItY3tz0AlEAVyDgMBk1PlI+4o37rPplrL/DcItkk1tJSOF0eyxPDAM9dd
 dJt7tVLfHpwdnbEFZkF17xoW0cw4OQU/neRMtO9wOqjPY34Pc5P/1m/Ao
 5JrZe3IF29cpbexo5tB4xbgTJUiG1/geXa/s+UE6fK48QPaofXTn0Evct g==;
X-CSE-ConnectionGUID: RlVqzBx0Tiilc7CC+s+Uyg==
X-CSE-MsgGUID: H/lYg/1HQBmTqL8vUXSWLQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="45272149"
X-IronPort-AV: E=Sophos;i="6.15,198,1739865600"; d="scan'208";a="45272149"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 07:07:32 -0700
X-CSE-ConnectionGUID: gOU0k1ZZRRW9xOshkYPWbw==
X-CSE-MsgGUID: DN2CBqFdRhmpm9tV6gyEsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,198,1739865600"; d="scan'208";a="128013698"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.147])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 07:07:30 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: dri-devel@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>, 
 Alan Previn <alan.previn.teres.alexis@intel.com>
Subject: Re: [PATCH] drm/i915/huc: Fix fence not released on early probe errors
Date: Tue, 08 Apr 2025 16:07:27 +0200
Message-ID: <1889382.atdPhlSkOF@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <c1b77ca1-1851-4e3b-be37-267388a7501c@intel.com>
References: <20250402172057.209924-2-janusz.krzysztofik@linux.intel.com>
 <c1b77ca1-1851-4e3b-be37-267388a7501c@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
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

Hi Daniele,

On Thursday, 3 April 2025 11:12:12 CEST Daniele Ceraolo Spurio wrote:
> 
> On 4/2/2025 10:20 AM, Janusz Krzysztofik wrote:
> > HuC delayed loading fence, introduced with commit 27536e03271da
> > ("drm/i915/huc: track delayed HuC load with a fence"), is registered with
> > object tracker early on driver probe but unregistered only from driver
> > remove, which is not called on early probe errors.  Since its memory is
> > allocated under devres, then released anyway, it may happen to be
> > allocated again to the fence and reused on future driver probes, resulting
> > in kernel warnings that taint the kernel:
> >
> > <4> [309.731371] ------------[ cut here ]------------
> > <3> [309.731373] ODEBUG: init destroyed (active state 0) object: ffff88813d7dd2e0 object type: i915_sw_fence hint: sw_fence_dummy_notify+0x0/0x20 [i915]
> > <4> [309.731575] WARNING: CPU: 2 PID: 3161 at lib/debugobjects.c:612 debug_print_object+0x93/0xf0
> > ...
> > <4> [309.731693] CPU: 2 UID: 0 PID: 3161 Comm: i915_module_loa Tainted: G     U             6.14.0-CI_DRM_16362-gf0fd77956987+ #1
> > ...
> > <4> [309.731700] RIP: 0010:debug_print_object+0x93/0xf0
> > ...
> > <4> [309.731728] Call Trace:
> > <4> [309.731730]  <TASK>
> > ...
> > <4> [309.731949]  __debug_object_init+0x17b/0x1c0
> > <4> [309.731957]  debug_object_init+0x34/0x50
> > <4> [309.732126]  __i915_sw_fence_init+0x34/0x60 [i915]
> > <4> [309.732256]  intel_huc_init_early+0x4b/0x1d0 [i915]
> > <4> [309.732468]  intel_uc_init_early+0x61/0x680 [i915]
> > <4> [309.732667]  intel_gt_common_init_early+0x105/0x130 [i915]
> > <4> [309.732804]  intel_root_gt_init_early+0x63/0x80 [i915]
> > <4> [309.732938]  i915_driver_probe+0x1fa/0xeb0 [i915]
> > <4> [309.733075]  i915_pci_probe+0xe6/0x220 [i915]
> > <4> [309.733198]  local_pci_probe+0x44/0xb0
> > <4> [309.733203]  pci_device_probe+0xf4/0x270
> > <4> [309.733209]  really_probe+0xee/0x3c0
> > <4> [309.733215]  __driver_probe_device+0x8c/0x180
> > <4> [309.733219]  driver_probe_device+0x24/0xd0
> > <4> [309.733223]  __driver_attach+0x10f/0x220
> > <4> [309.733230]  bus_for_each_dev+0x7d/0xe0
> > <4> [309.733236]  driver_attach+0x1e/0x30
> > <4> [309.733239]  bus_add_driver+0x151/0x290
> > <4> [309.733244]  driver_register+0x5e/0x130
> > <4> [309.733247]  __pci_register_driver+0x7d/0x90
> > <4> [309.733251]  i915_pci_register_driver+0x23/0x30 [i915]
> > <4> [309.733413]  i915_init+0x34/0x120 [i915]
> > <4> [309.733655]  do_one_initcall+0x62/0x3f0
> > <4> [309.733667]  do_init_module+0x97/0x2a0
> > <4> [309.733671]  load_module+0x25ff/0x2890
> > <4> [309.733688]  init_module_from_file+0x97/0xe0
> > <4> [309.733701]  idempotent_init_module+0x118/0x330
> > <4> [309.733711]  __x64_sys_finit_module+0x77/0x100
> > <4> [309.733715]  x64_sys_call+0x1f37/0x2650
> > <4> [309.733719]  do_syscall_64+0x91/0x180
> > <4> [309.733763]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
> > <4> [309.733792]  </TASK>
> > ...
> > <4> [309.733806] ---[ end trace 0000000000000000 ]---
> >
> > That scenario is most easily reproducible with
> > igt@i915_module_load@reload-with-fault-injection.
> >
> > Fix the issue by moving the cleanup step to driver release path.
> >
> > Fixes: 27536e03271da ("drm/i915/huc: track delayed HuC load with a fence")
> > Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13592
> > Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> > Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
> > Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> 
> Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

May I ask you to push this change?

Thanks,
Janusz


> 
> I'm kind of surprised that this issue only showed up in the last few 
> months, given that the code has been there for 2+ years. Did we change 
> something that caused this to show up? I had a quick look at the patches 
> merged around the time this issue was first reported but I didn't spot 
> anything that could impact this.
> 
> Daniele
> 
> > ---
> >   drivers/gpu/drm/i915/gt/uc/intel_huc.c | 11 +++++------
> >   drivers/gpu/drm/i915/gt/uc/intel_huc.h |  1 +
> >   drivers/gpu/drm/i915/gt/uc/intel_uc.c  |  1 +
> >   3 files changed, 7 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc.c b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
> > index f30c90650b7ec..9659e6a301e19 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_huc.c
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
> > @@ -317,6 +317,11 @@ void intel_huc_init_early(struct intel_huc *huc)
> >   	}
> >   }
> >   
> > +void intel_huc_fini_late(struct intel_huc *huc)
> > +{
> > +	delayed_huc_load_fini(huc);
> > +}
> > +
> >   #define HUC_LOAD_MODE_STRING(x) (x ? "GSC" : "legacy")
> >   static int check_huc_loading_mode(struct intel_huc *huc)
> >   {
> > @@ -414,12 +419,6 @@ int intel_huc_init(struct intel_huc *huc)
> >   
> >   void intel_huc_fini(struct intel_huc *huc)
> >   {
> > -	/*
> > -	 * the fence is initialized in init_early, so we need to clean it up
> > -	 * even if HuC loading is off.
> > -	 */
> > -	delayed_huc_load_fini(huc);
> > -
> >   	if (huc->heci_pkt)
> >   		i915_vma_unpin_and_release(&huc->heci_pkt, 0);
> >   
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc.h b/drivers/gpu/drm/i915/gt/uc/intel_huc.h
> > index d5e441b9e08d6..921ad4b1687f0 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_huc.h
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_huc.h
> > @@ -55,6 +55,7 @@ struct intel_huc {
> >   
> >   int intel_huc_sanitize(struct intel_huc *huc);
> >   void intel_huc_init_early(struct intel_huc *huc);
> > +void intel_huc_fini_late(struct intel_huc *huc);
> >   int intel_huc_init(struct intel_huc *huc);
> >   void intel_huc_fini(struct intel_huc *huc);
> >   int intel_huc_auth(struct intel_huc *huc, enum intel_huc_authentication_type type);
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> > index 90ba1b0b4c9d2..4a3493e8d4333 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> > @@ -136,6 +136,7 @@ void intel_uc_init_late(struct intel_uc *uc)
> >   
> >   void intel_uc_driver_late_release(struct intel_uc *uc)
> >   {
> > +	intel_huc_fini_late(&uc->huc);
> >   }
> >   
> >   /**
> 
> 




