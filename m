Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5BB18CE4D9
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2024 13:27:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B92C10ED7C;
	Fri, 24 May 2024 11:27:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RlTtoczv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D37110ED7C
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2024 11:26:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716550018; x=1748086018;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=kaSJZjVboTIzbPzWhWEhPbVB8K2iofOdwsloizWmO34=;
 b=RlTtoczvvrdlzBH+OQk0uHOhL1w+S5vurklBaW7BTPmEtGFK1CcMQ3q0
 rcXi49yvvNSnLRE4sGfQzMeN5YAwz0HqZoTG1IKZQC+1mOpKX03FbKx40
 cRLe+SpBgwTPoqxtBa6Yhd7XDnv1/asfRBza+wyEPosTvFUqlKuMiX9A1
 jnXLc6461W1Qe1pydsB//PlM1C6eDPR2RH053qxjks6uj3LXEJvh1YHZd
 PRLnDhOdIsAAtJq0PpTBy0ywskA1hzQkGUbq0m4lCI9EVxHMQWlqltZtP
 wesJ848UoTSp3PEAzaFdD1j7kp0hxIz9l4CoxPqJS0AZ5zc1LujSsTd+E w==;
X-CSE-ConnectionGUID: chLRPJINQpKynrxij/LlDQ==
X-CSE-MsgGUID: 3CjaW9ZyQjGfwLlbl0IcBg==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="24332901"
X-IronPort-AV: E=Sophos;i="6.08,185,1712646000"; d="scan'208";a="24332901"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2024 04:26:57 -0700
X-CSE-ConnectionGUID: /yWNGUR0SFyRkI2cnAY5hQ==
X-CSE-MsgGUID: 0bdktIPjSCS+KtIWxjEyWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,185,1712646000"; d="scan'208";a="71400094"
Received: from dneilan-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.245.244.39])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2024 04:26:53 -0700
Date: Fri, 24 May 2024 13:26:41 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>,
 "Chen, Angus" <angus.chen@intel.com>, tejas.upadhyay@intel.com,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v2] drm/i915/mtl: Update workaround 14018778641
Message-ID: <ZlB5cUduM_Hw2Spi@ashyti-mobl2.lan>
References: <SJ1PR11MB6204A1D3BB33FFFBB6BF32E581E52@SJ1PR11MB6204.namprd11.prod.outlook.com>
 <20240513141917.74208-1-angus.chen@intel.com>
 <Zk_Dvl0pA5bU2T6o@ashyti-mobl2.lan>
 <20240523232441.GG5383@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240523232441.GG5383@mdroper-desk1.amr.corp.intel.com>
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

Hi,

> > On Mon, May 13, 2024 at 02:19:17PM +0000, Chen, Angus wrote:
> > > The WA should be extended to cover VDBOX engine. We found that
> > > 28-channels 1080p VP9 encoding may hit this issue.
> > > 
> > > Signed-off-by: Chen, Angus <angus.chen@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
> > >  1 file changed, 3 insertions(+)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > index d1ab560fcdfc..da0a481a375e 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > @@ -1586,6 +1586,9 @@ xelpmp_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
> > >  	 */
> > >  	wa_write_or(wal, XELPMP_GSC_MOD_CTRL, FORCE_MISS_FTLB);
> > >  
> > > +	/* Wa_14018778641 */
> 
> I realize that the comment farther up in the code is wrong, but there's
> no such workaround as "Wa_14018778641."  14018778641 is just an internal
> database ID that isn't meaningful for tracking workarounds in code.
> Workarounds are always identified by their "lineage" number, which is
> the number that will identify the workaround in a consistent manner
> across multiple platforms.  In this case it sounds like the expected
> workaround number was actually Wa_14018575942.

Indeed... should this be updated accordingly?

> > > +	wa_write_or(wal, XELPMP_VDBX_MOD_CTRL, FORCE_MISS_FTLB);
> > 
> > Wa_14018778641 says that we need to disable the FTLB for Compute,
> > Render, GSC, VDBox and VEBox engines, but here we are doing it
> > only for GSC and VDBox, why?
> 
> Wa_14018575942 (which is a follow-up to an older Wa_18018781329), was
> originally supposed to apply to all engines.  But after some
> investigation, the hardware teams decided that it was _probably_ only
> needed on the CCS engines so they suggested dropping the workaround from
> other engine types to reclaim performance unless we started seeing
> functional issues when doing so.  At some point someone did report some
> functional issues with the RCS engine, so the workaround got restored
> there.  Based on this patch, it sounds like the media team is now
> reporting that they also see functional failures on the VD engines
> without the workaround, so it also needs to be restored there now.

But I don't see it documented. Wa_14018575942 only speaks about
the GSC_MOD_CTL. We need it documented, otherwise we need a note
in the comment explaining why this workaround is needed here, as
well.

Otherwise, as it happened in other cases, someone might open this
workaround, think it's wrong and revert this patch.

Angus, can you please explain the reason why this workaround is
needed here and put it in a comment?

> > Besides, in MTL we have the media GT where the MOD_CTRL family
> > has address 0x38cf34. Should this be checked and included, as
> > well?
> 
> The gt pointer passed into xelpmp_gt_workarounds_init() is always the
> media GT.  And the GSI offset of 0x380000 gets added into the register
> offset automatically so you don't need to worry about doing so manually.

Correct, thanks!

Andi
