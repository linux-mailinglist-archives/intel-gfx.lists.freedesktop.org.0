Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B4F1266013
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Sep 2020 15:15:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E22B6EA3D;
	Fri, 11 Sep 2020 13:15:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A71376EA3B;
 Fri, 11 Sep 2020 13:15:49 +0000 (UTC)
IronPort-SDR: 2iPC4m0KSj2x37caL/Vmppll+DkBw/HiSE0jMdPtqjMI88E4JyPAl4xQTDXh9Xt8J/ot5/9L2p
 zPymBNlF3ZEA==
X-IronPort-AV: E=McAfee;i="6000,8403,9740"; a="220304995"
X-IronPort-AV: E=Sophos;i="5.76,415,1592895600"; d="scan'208";a="220304995"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 06:15:47 -0700
IronPort-SDR: CvkoEbsiWIsPL7e2pT/HjlNvrtTdrvAGnkIg3AIveZMCTh2wpOrTrH6IS2v91pD8rQm9cjKOAe
 U5IXMwfVy6Bg==
X-IronPort-AV: E=Sophos;i="5.76,415,1592895600"; d="scan'208";a="334510197"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 06:15:45 -0700
Message-ID: <162f01fdd164618423a4786b6a7d23bac852bfc0.camel@linux.intel.com>
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Petri Latvala <petri.latvala@intel.com>
Date: Fri, 11 Sep 2020 15:15:43 +0200
In-Reply-To: <20200911122235.GO7444@platvala-desk.ger.corp.intel.com>
References: <20200911103039.4574-1-janusz.krzysztofik@linux.intel.com>
 <20200911103039.4574-22-janusz.krzysztofik@linux.intel.com>
 <20200911122235.GO7444@platvala-desk.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
User-Agent: Evolution 3.32.5 (3.32.5-1.fc30) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH i-g-t v6 21/24] tests/core_hotunplug:
 HSW/BDW audio issue workaround
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 =?UTF-8?Q?Micha=C5=82?= Winiarski <michal.winiarski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Petri,

On Fri, 2020-09-11 at 15:22 +0300, Petri Latvala wrote:
> On Fri, Sep 11, 2020 at 12:30:36PM +0200, Janusz Krzysztofik wrote:
> > Unbinding the i915 driver on some Haswell and Broadwell platforms with
> > Azalia audio results in a kernel WARNING on "i915 raw-wakerefs=1
> > wakelocks=1 on cleanup".  The issue can be worked around by manually
> > enabling runtime power management for the conflicting audio adapter.
> > Use that method but also display a warning to preserve visibility of
> > the issue.  Also tag the workaround with a FIXME comment.
> > 
> > v2: Extend the scope of the workaround over Broadwell
> > 
> > Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> > ---
> >  tests/core_hotunplug.c | 15 +++++++++++++++
> >  1 file changed, 15 insertions(+)
> > 
> > diff --git a/tests/core_hotunplug.c b/tests/core_hotunplug.c
> > index ac106d964..3e2a76ddb 100644
> > --- a/tests/core_hotunplug.c
> > +++ b/tests/core_hotunplug.c
> > @@ -484,8 +484,23 @@ igt_main
> >  		igt_skip_on_f(fd_drm < 0, "No known DRM device found\n");
> >  
> >  		if (is_i915_device(fd_drm)) {
> > +			uint32_t devid = intel_get_drm_devid(fd_drm);
> > +
> >  			gem_quiescent_gpu(fd_drm);
> >  			igt_require_gem(fd_drm);
> > +
> > +			/**
> > +			 * FIXME: Unbinding the i915 driver on some Haswell
> > +			 * platforms with Azalia audio results in a kernel WARN
> > +			 * on "i915 raw-wakerefs=1 wakelocks=1 on cleanup".  The
> > +			 * below CI friendly user level workaround prevents the
> > +			 * warning from appearing.  Drop this hack as soon as
> > +			 * this is fixed in the kernel.
> > +			 */
> > +			if (igt_warn_on_f(IS_HASWELL(devid) ||
> > +					  IS_BROADWELL(devid),
> > +			    "Manually enabling audio PM to work around a kernel WARN\n"))
> > +				igt_pm_enable_audio_runtime_pm();
> 
> What happens without this? Is it just a kernel warning, or does the
> operation also fail?

runner: This test was killed due to a kernel taint (0x200).
(https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4901/shard-hsw4/igt@core_hotunplug@unbind-rebind.html)

That happens before the test completes so no results of the operation
are reported. 

> 
> If the former, what does this gain? 

CI unfriendly incompletes are avoided.

> All it does is we lose the
> capability to track whether the kernel still has that issue, we still
> have to filter this warning in cibuglog.

I know, but for now I can see no good alternative - we can either keep
the test still bocklisted or suppress the warning so CI coverage is not
affected.  i915_module_unload just unloads snd-hda-intel module
silently which prevents this issue from popping up.  If you think that
approach would be better, or we should recognize that issue as an
expected behaviour, I can drop the IGT warning.

Thanks,
Janusz

> 
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
