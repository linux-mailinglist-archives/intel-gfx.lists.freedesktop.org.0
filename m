Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F18E46879FA
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Feb 2023 11:20:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FA8410E4D2;
	Thu,  2 Feb 2023 10:20:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B36B010E4D2;
 Thu,  2 Feb 2023 10:20:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675333202; x=1706869202;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=IFFkXJX/j5ANzqJDBh/BF/nDo8wzUbHicaIbqavJTZs=;
 b=g+tZeWwQTUEzJwDzCvfGK1SIiYNAV8ugFlgoA/PafwUJdNpwNlyzMr77
 t2VYLlj/q5jrrvMmS7448shNfMS97p1yS5ZwCV8HF72LNgBMzmwp+FBib
 sZSGg0SfjO87ngKF8KyuHPxIVCBRoIbYofhDc2gnaSd9Z+bRTYkr9f4Sm
 7kbGW5at3IQvUk0c7Ee6wRskgB1I3DYPexwfFImcgWHHCiGtc9mNdtseC
 2jIC4kTO8FJ3ia78OKSlydh6aUKSHlLErKYT7IcyJ1grwsN5YuP1espX8
 bF0zvxEM4TbgCG/9nxt5wLfkib3/PEi2ni29qktxNTKS31NpgFtxhOoIl w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="414617043"
X-IronPort-AV: E=Sophos;i="5.97,267,1669104000"; d="scan'208";a="414617043"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 02:20:02 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="697634948"
X-IronPort-AV: E=Sophos;i="5.97,267,1669104000"; d="scan'208";a="697634948"
Received: from dbhaktha-mobl.ger.corp.intel.com (HELO localhost)
 ([10.213.18.247])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 02:19:59 -0800
Date: Thu, 2 Feb 2023 11:19:56 +0100
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <20230202101956.t5oyehyj6h4ylrga@kamilkon-desk1>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>,
 Petri Latvala <adrinael@adrinael.net>,
 Arkadiusz Hiler <arek@hiler.eu>, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 John Harrison <john.c.harrison@intel.com>,
 Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>
References: <20230131091731.5892-1-janusz.krzysztofik@linux.intel.com>
 <20230131091731.5892-3-janusz.krzysztofik@linux.intel.com>
 <20230201182157.qpu6fyobvwwxdwwt@kamilkon-desk1>
 <1887805.taCxCBeP46@jkrzyszt-mobl1.ger.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1887805.taCxCBeP46@jkrzyszt-mobl1.ger.corp.intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t 2/2] tests/i915/perf: Exercise barrier
 race
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
Cc: Arkadiusz Hiler <arek@hiler.eu>, intel-gfx@lists.freedesktop.org,
 Petri Latvala <adrinael@adrinael.net>,
 Chris Wilson <chris.p.wilson@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Janusz,

On 2023-02-01 at 20:16:11 +0100, Janusz Krzysztofik wrote:
> Hi Kamil,
> 
> On Wednesday, 1 February 2023 19:21:57 CET Kamil Konieczny wrote:
> > Hi Janusz,
> > 
> > please send patches to igt ML and add other addresses to cc:
> > I have one nit, see below.
> > 
> > On 2023-01-31 at 10:17:31 +0100, Janusz Krzysztofik wrote:
> > > Add a new subtest focused on exercising interaction between perf open /
> > > close operations, which replace active barriers with perf requests, and
> > > concurrent barrier preallocate / acquire operations performed during
> > > context first pin / last unpin.
> > > 
> > > References: https://gitlab.freedesktop.org/drm/intel/-/issues/6333
> > > Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> > > Cc: Chris Wilson <chris.p.wilson@linux.intel.com>
> > > ---
> > >  tests/i915/perf.c | 41 +++++++++++++++++++++++++++++++++++++++--
> > >  1 file changed, 39 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/tests/i915/perf.c b/tests/i915/perf.c
> > > index e33cacc443..11a3ec21ab 100644
> > > --- a/tests/i915/perf.c
> > > +++ b/tests/i915/perf.c
> > > @@ -39,6 +39,7 @@
> > >  #include <math.h>
> > >  
> > >  #include "i915/gem.h"
> > > +#include "i915/gem_create.h"
> > >  #include "i915/perf.h"
> > >  #include "igt.h"
> > >  #include "igt_perf.h"
> > > @@ -4885,7 +4886,27 @@ test_whitelisted_registers_userspace_config(void)
> > >  	i915_perf_remove_config(drm_fd, config_id);
> > >  }
> > >  
> > > -static void test_open_race(const struct intel_execution_engine2 *e, int timeout)
> > > +static void gem_exec_nop(int i915, const struct intel_execution_engine2 *e)
> > > +{
> > > +	const uint32_t bbe = MI_BATCH_BUFFER_END;
> > > +	struct drm_i915_gem_exec_object2 obj = { };
> > > +	struct drm_i915_gem_execbuffer2 execbuf = {
> > > +		.buffers_ptr = to_user_pointer(&obj),
> > > +		.buffer_count = 1,
> > > +	};
> > > +
> > > +	obj.handle = gem_create(i915, 4096);
> > > +	gem_write(i915, obj.handle, 0, &bbe, sizeof(bbe));
> > > +
> > > +	execbuf.flags = e->flags;
> > > +	gem_execbuf(i915, &execbuf);
> > > +
> > > +	gem_sync(i915, obj.handle);
> > > +	gem_close(i915, obj.handle);
> > > +}
> > > +
> > > +static void test_open_race(const struct intel_execution_engine2 *e, int timeout,
> > > +			   bool use_spin)
> > -------------------------- ^
> > This is not the best way to develop new code, it may be good
> > for fast development but imho it is better to refactor existing
> > code and avoiding to add bool logic into function.
> 
> I'm not sure what you mean.  By refactoring, do you mean moving the code 
> common to both processing paths out to a separate helper, then call it from 
> two distinct functions, each implementing only one scenario?  What's wrong 
> with passing flags that select one of alternative processing paths within one 
> function?  Or are you just not happy with bool type?

It is not wrong unless there is only one such var but even then
readability of code is reduced.

> 
> > It can be done later as this is revealing the bug.
> > 
> > >  {
> > >  	int *done;
> > >  
> > > @@ -4926,6 +4947,12 @@ static void test_open_race(const struct intel_execution_engine2 *e, int timeout)
> > >  				ctx = gem_context_create_for_engine(i915, e->class, e->instance);
> > >  				gem_context_set_persistence(i915, ctx, persistence);
> > >  
> > > +				if (!use_spin) {
> > > +					gem_exec_nop(i915, e);
> > > +					gem_context_destroy(i915, ctx);
> > > +					continue;
> > > +				}
> > > +
> > >  				spin = __igt_spin_new(i915, ctx, .ahnd = ahnd);
> > >  				for (int i = random() % 7; i--; ) {
> > >  					if (random() & 1) {
> > > @@ -5330,7 +5357,17 @@ igt_main
> > >  		for_each_physical_engine(drm_fd, e)
> > >  			if (e->class == I915_ENGINE_CLASS_RENDER)
> > >  				igt_dynamic_f("%s", e->name)
> > > -					test_open_race(e, 5);
> > > +					test_open_race(e, 5, true);
> > > +	}
> > > +
> > 
> > Please add here some TODO comments from discussions and a note
> > which will help bug filling team to classify that.
> 
> TODO about moving the subtest to a different test -- OK.  But instructions for 
> Bug Filling team?  Hmm, what if this subtest triggers a completely different 
> bug in the future?  Are we going to update the comments then?  Do Bug Filling 
> team members really read the sources while classifying bugs?
> 
> Please have another look at an example of expected dmesg from the currently 
> triggered bug:
> 
> <4> [192.634015] list_del corruption. prev->next should be ffff8881479d34e0, but was ffff888108af4ce0. (prev=ffff888127335160)
> <4> [192.634032] WARNING: CPU: 1 PID: 1286 at lib/list_debug.c:59 __list_del_entry_valid+0xb7/0xe0

Ok, I see that it is kernel bug here. You are right,
please add only TODO here.

Regards,
Kamil

> <4> [192.634041] Modules linked in: vgem drm_shmem_helper fuse snd_hda_codec_hdmi snd_hda_codec_realtek snd_hda_codec_generic ledtrig_audio x86_pkg_temp_thermal coretemp i915 prime_numbers i2c_algo_bit kvm_intel ttm snd_hda_intel snd_intel_dspcfg kvm drm_buddy mei_pxp snd_hda_codec smsc75xx irqbypass mei_hdcp e1000e drm_display_helper usbnet snd_hwdep crct10dif_pclmul wmi_bmof mii crc32_pclmul ghash_clmulni_intel igc snd_hda_core drm_kms_helper ptp mei_me i2c_i801 syscopyarea snd_pcm pps_core sysfillrect i2c_smbus mei sysimgblt video intel_lpss_pci wmi
> <4> [192.634156] CPU: 1 PID: 1286 Comm: perf Not tainted 6.2.0-rc6-CI_DRM_12672-gdf5c31e78609+ #1
> <4> [192.634161] Hardware name: Intel Corporation Rocket Lake Client Platform/RocketLake S SODIMM RVP, BIOS RKLSFWI1.R00.1435.A00.2010232019 10/23/2020
> <4> [192.634165] RIP: 0010:__list_del_entry_valid+0xb7/0xe0
> <4> [192.634170] Code: cc cc cc 48 89 ca 48 c7 c7 78 00 46 82 e8 0d 7e 61 00 0f 0b 31 c0 c3 cc cc cc cc 4c 89 c2 48 c7 c7 b0 00 46 82 e8 f5 7d 61 00 <0f> 0b 31 c0 c3 cc cc cc cc 48 89 d1 4c 89 c6 4c 89 ca 48 c7 c7 f8
> <4> [192.634174] RSP: 0018:ffffc90001f2fcb0 EFLAGS: 00010082
> <4> [192.634180] RAX: 0000000000000000 RBX: ffff88812f8dec40 RCX: 0000000000000000
> <4> [192.634184] RDX: 0000000000000003 RSI: ffffffff823d7c88 RDI: 00000000ffffffff
> <4> [192.634187] RBP: ffff8881479d34d8 R08: 0000000000000000 R09: ffffc90001f2fb60
> <4> [192.634191] R10: 0000000000000001 R11: 0000000000000001 R12: ffff88812f8df440
> <4> [192.634194] R13: ffff88812f8df440 R14: ffff8881479d34e0 R15: 0000000000000246
> <4> [192.634197] FS:  00007fa38f9514c0(0000) GS:ffff888450080000(0000) knlGS:0000000000000000
> <4> [192.634201] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> <4> [192.634205] CR2: 00007fa392c76000 CR3: 000000010809e003 CR4: 0000000000770ee0
> <4> [192.634208] PKRU: 55555554
> <4> [192.634211] Call Trace:
> <4> [192.634214]  <TASK>
> <4> [192.634218]  __i915_active_fence_set+0x71/0xf0 [i915]
> <4> [192.634412]  __i915_request_commit+0x2e1/0x5b0 [i915]
> <4> [192.634597]  i915_request_add+0xa6/0x330 [i915]
> <4> [192.634783]  gen8_modify_context+0xc2/0x220 [i915]
> <4> [192.634958]  oa_configure_all_contexts.isra.0+0x183/0x400 [i915]
> <4> [192.635137]  gen12_disable_metric_set+0x98/0x160 [i915]
> <4> [192.635305]  i915_oa_stream_destroy+0x3c/0x330 [i915]
> <4> [192.635480]  i915_perf_destroy_locked+0x22/0x80 [i915]
> <4> [192.635646]  i915_perf_release+0x35/0x50 [i915]
> <4> [192.635808]  __fput+0x95/0x260
> 
> Isn't such information from actual bug occurrence, contained in CI reports the 
> Bug Filling team is working with, more meaningful than any comment added to 
> the test source code?  How can a test know in advance what bugs it will ever 
> trigger, and who exactly will be responsible for fixing them?
> 
> Thanks,
> Janusz
> 
> > 
> > Regards,
> > Kamil
> > 
> > > +	igt_describe("Exercise perf open/close against intensive barrier preallocate/acquire");
> > > +	igt_subtest_with_dynamic("barrier-race") {
> > > +		const struct intel_execution_engine2 *e;
> > > +
> > > +		for_each_physical_engine(drm_fd, e)
> > > +			if (e->class == I915_ENGINE_CLASS_RENDER)
> > > +				igt_dynamic_f("%s", e->name)
> > > +					test_open_race(e, 5, false);
> > >  	}
> > >  
> > >  	igt_fixture {
> > 
> 
> 
> 
> 
