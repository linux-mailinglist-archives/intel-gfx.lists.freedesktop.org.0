Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A9745FF84C
	for <lists+intel-gfx@lfdr.de>; Sat, 15 Oct 2022 05:39:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F81010E353;
	Sat, 15 Oct 2022 03:38:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E2F110E353;
 Sat, 15 Oct 2022 03:38:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665805131; x=1697341131;
 h=date:message-id:from:to:cc:subject:in-reply-to:
 references:mime-version;
 bh=bZarYYw65EBRnymRGwFXtLcXDdnsO75hWiNqpAsh92I=;
 b=J+nialX77SuJcrhyzen6n3CiiJvNeryL7luLDXEfFuHfI/ORI7wBUs69
 /pnXHpv6aQUSI0lroXOiXrM7KuBxpJsSuhG4Ludd6BZqWpn8iiIrgoBzH
 5JAj40GGAordl3qyBGChWU3/9qjUQ3c1IOG6LLQ6EDx3ueeNYvT+v4uxP
 fDkrs44VXVVdvSxgB0XAZt/ovYBY5Uyuzayz/5d69ECNlcZKfyi7Xu4Eg
 4/yXw70Fsyb/Hd7UIFw4EO3V3cZf8OiJTvIfL7DINPRdWKl7cCCAyuf/6
 Oe9oFRLEvZljWi5sB7OutQAcXdZMHl/66yVc/tmYUJKftQYjspVdAkt0W Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="304253547"
X-IronPort-AV: E=Sophos;i="5.95,186,1661842800"; d="scan'208";a="304253547"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 20:38:51 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="872939885"
X-IronPort-AV: E=Sophos;i="5.95,186,1661842800"; d="scan'208";a="872939885"
Received: from adixit-mobl.amr.corp.intel.com (HELO adixit-arch.intel.com)
 ([10.209.12.38])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 20:38:50 -0700
Date: Fri, 14 Oct 2022 20:38:49 -0700
Message-ID: <87v8oleoxi.wl-ashutosh.dixit@intel.com>
From: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
In-Reply-To: <87h712o4f7.fsf@intel.com>
References: <20220919115906.1264041-1-badal.nilawar@intel.com>	<20220919115906.1264041-3-badal.nilawar@intel.com>	<87edw7pnoh.fsf@intel.com>	<87v8pid8k2.wl-ashutosh.dixit@intel.com>	<87h712o4f7.fsf@intel.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?ISO-8859-4?Q?Goj=F2?=) APEL-LB/10.8 EasyPG/1.0.0
 Emacs/28.1 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/mtl: Add C6 residency support
 for MTL SAMedia
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
Cc: andi.shyti@intel.com, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 20 Sep 2022 01:06:52 -0700, Jani Nikula wrote:
>
> On Mon, 19 Sep 2022, "Dixit, Ashutosh" <ashutosh.dixit@intel.com> wrote:
> > On Mon, 19 Sep 2022 05:13:18 -0700, Jani Nikula wrote:
> >>
> >> On Mon, 19 Sep 2022, Badal Nilawar <badal.nilawar@intel.com> wrote:
> >> > For MTL SAMedia updated relevant functions and places in the code to get
> >> > Media C6 residency.
> >> >
> >> > v2: Fixed review comments (Ashutosh)
> >> >
> >> > Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> >> > Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
> >> > Cc: Chris Wilson <chris.p.wilson@intel.com>
> >> > Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
> >> > ---
> >> >  drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c | 60 +++++++++++++++++++
> >> >  drivers/gpu/drm/i915/gt/intel_gt_regs.h       | 10 ++++
> >> >  drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c   |  9 ++-
> >> >  drivers/gpu/drm/i915/gt/intel_rc6.c           |  5 +-
> >> >  drivers/gpu/drm/i915/gt/selftest_rc6.c        |  9 ++-
> >> >  drivers/gpu/drm/i915/i915_pmu.c               |  8 ++-
> >> >  6 files changed, 97 insertions(+), 4 deletions(-)
> >> >
> >> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
> >> > index 68310881a793..053167b506a9 100644
> >> > --- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
> >> > +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
> >> > @@ -269,6 +269,64 @@ static int ilk_drpc(struct seq_file *m)
> >> >	return 0;
> >> >  }
> >> >
> >> > +static int mtl_drpc(struct seq_file *m)
> >> > +{
> >> > +	struct intel_gt *gt = m->private;
> >> > +	struct intel_uncore *uncore = gt->uncore;
> >> > +	u32 gt_core_status, rcctl1, global_forcewake;
> >> > +	u32 mtl_powergate_enable = 0, mtl_powergate_status = 0;
> >> > +	i915_reg_t reg;
> >> > +
> >> > +	gt_core_status = intel_uncore_read(uncore, MTL_MIRROR_TARGET_WP1);
> >> > +
> >> > +	global_forcewake = intel_uncore_read(uncore, FORCEWAKE_GT_GEN9);
> >> > +
> >> > +	rcctl1 = intel_uncore_read(uncore, GEN6_RC_CONTROL);
> >> > +	mtl_powergate_enable = intel_uncore_read(uncore, GEN9_PG_ENABLE);
> >> > +	mtl_powergate_status = intel_uncore_read(uncore,
> >> > +						 GEN9_PWRGT_DOMAIN_STATUS);
> >> > +
> >> > +	seq_printf(m, "RC6 Enabled: %s\n",
> >> > +		   str_yes_no(rcctl1 & GEN6_RC_CTL_RC6_ENABLE));
> >> > +	if (gt->type == GT_MEDIA) {
> >> > +		seq_printf(m, "Media Well Gating Enabled: %s\n",
> >> > +			   str_yes_no(mtl_powergate_enable & GEN9_MEDIA_PG_ENABLE));
> >> > +	} else {
> >> > +		seq_printf(m, "Render Well Gating Enabled: %s\n",
> >> > +			   str_yes_no(mtl_powergate_enable & GEN9_RENDER_PG_ENABLE));
> >> > +	}
> >> > +
> >> > +	seq_puts(m, "Current RC state: ");
> >> > +
> >> > +	switch ((gt_core_status & MTL_CC_MASK) >> MTL_CC_SHIFT) {
> >> > +	case MTL_CC0:
> >> > +		seq_puts(m, "on\n");
> >> > +		break;
> >> > +	case MTL_CC6:
> >> > +		seq_puts(m, "RC6\n");
> >> > +		break;
> >> > +	default:
> >> > +		seq_puts(m, "Unknown\n");
> >> > +		break;
> >> > +	}
> >> > +
> >> > +	if (gt->type == GT_MEDIA)
> >> > +		seq_printf(m, "Media Power Well: %s\n",
> >> > +			   (mtl_powergate_status &
> >> > +			    GEN9_PWRGT_MEDIA_STATUS_MASK) ? "Up" : "Down");
> >> > +	else
> >> > +		seq_printf(m, "Render Power Well: %s\n",
> >> > +			   (mtl_powergate_status &
> >> > +			    GEN9_PWRGT_RENDER_STATUS_MASK) ? "Up" : "Down");
> >> > +
> >> > +	reg = (gt->type == GT_MEDIA) ? MTL_MEDIA_MC6 : GEN6_GT_GFX_RC6;
> >> > +	print_rc6_res(m, "RC6 residency since boot:", reg);
> >>
> >> Cc: Tvrtko, Joonas, Rodrigo
> >>
> >
> > Hi Jani,
> >
> >> IMO the register is not a good abstraction to build interfaces on. I see
> >> that this is not where the idea is introduced, but it'll probably get
> >> you in trouble later on.
> >
> > By "this is not where the idea is introduced" are you referring to what we
> > did here:
> >
> > https://patchwork.freedesktop.org/patch/502372/?series=108091&rev=5
> >
> > in intel_gt_perf_limit_reasons_reg()?
> >
> > Or, should we follow the schema of centralizing the register selection
> > depending on gt type in a single function here too (since this register
> > selection is repeated throughout this patch)?
>
> I'm looking at print_rc6_res(), for example.
>
> It takes the register, reads it, and also passes the register around,
> eventually to intel_rc6_residency_ns(). That does magic on the register
> offset, so it assumes a certain multi-register layout, and relative from
> GEN6_GT_GFX_RC6_LOCKED. Then it assumes the register contents are
> different on different platforms.
>
> So why did we pass around the register to begin with? The knowledge
> about the register offsets and contents are spread around. What if
> another platform gets added with a different register contents or layout
> or offsets?
>
> Registers are a really low level of abstraction, and IMO usually should
> not be passed around like this.

Hi Jani, I've tried to fix this in v5 of this series based on some
discussion which I believe happened between Badal and Rodrigo:

https://patchwork.freedesktop.org/series/108156/

Please take a look at "drm/i915/gt: Change RC6 residency functions to
accept register ID's".

Thanks.
--
Ashutosh
