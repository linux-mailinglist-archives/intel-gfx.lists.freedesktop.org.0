Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C042318A08
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Feb 2021 13:04:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26BEC6E14B;
	Thu, 11 Feb 2021 12:04:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDFD56E14B
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Feb 2021 12:04:10 +0000 (UTC)
IronPort-SDR: u6dqcK2PhMHlK4xgUzr7FdVQYiHcbU1LmBfRjbUtIjBYW7fL7t9SHmD8xGBhW0UfchubmBbef1
 GZwrOXCMo3Lw==
X-IronPort-AV: E=McAfee;i="6000,8403,9891"; a="161978771"
X-IronPort-AV: E=Sophos;i="5.81,170,1610438400"; d="scan'208";a="161978771"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2021 04:03:36 -0800
IronPort-SDR: v62+5FjB6JO+7h/mOJXwQuWboQrgcsPtglrPWI7XSgEqJ+E/Bj0YLzGKcJzwWYQ5wCnZ2j6KTG
 OVWZQM8kZBcA==
X-IronPort-AV: E=Sophos;i="5.81,170,1610438400"; d="scan'208";a="380574644"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2021 04:03:34 -0800
Date: Thu, 11 Feb 2021 14:03:29 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>
Message-ID: <20210211120329.GB77505@ideak-desk.fi.intel.com>
References: <20210127100830.162292-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <YBH0FJolpTwO+BJG@intel.com>
 <SN6PR11MB3421882AC3045B652D2CBDC4DFB59@SN6PR11MB3421.namprd11.prod.outlook.com>
 <YBjx1O/3jeFcRPDw@intel.com> <YBj7TmOwNCqwits7@intel.com>
 <SN6PR11MB3421EAB14C44008CE72F09E6DFB59@SN6PR11MB3421.namprd11.prod.outlook.com>
 <20210202161400.GB578899@ideak-desk.fi.intel.com>
 <028439db4dce2eb73f9d796c221b6f8923f90f5f.camel@redhat.com>
 <0ef1186b257c4ce5bc2d4c7feadb0ef6@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0ef1186b257c4ce5bc2d4c7feadb0ef6@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gen9bc: Handle TGP PCH during
 suspend/resume
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
Reply-To: imre.deak@intel.com
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Pandey, Hariom" <hariom.pandey@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 10, 2021 at 06:33:20AM +0200, Gupta, Anshuman wrote:
> > On Tue, 2021-02-02 at 18:14 +0200, Imre Deak wrote:
> > >
> > > BSpec says about this WA for both ICL and TGL:
> > > """
> > > Display driver should set and clear register offset 0xC2000 bit #7 as
> > > last step in programming south display registers in preparation for
> > > entering S0ix state, or set 0xC2000 bit #7 on S0ix entry and clear it
> > > on S0ix exit.
> > >
> > > """
> > >
> > > This means to me the WA is only relevant for S0ix and we can implement
> > > it by setting/clearing 0xC2000 bit #7 right before entering/right
> > > after exiting S0ix. This is done atm on PCH_ICP..PCH_MCC in
> > > intel_display_power_suspend_late()/intel_display_power_resume_early(),
> > > so I'd move the WA for all platforms there.
> > >
> > > I assume the current code in irq_reset() was the first alternative to
> > > implement the WA, but it wasn't enough. Not sure why, maybe there is a
> > > south display register access after irq_reset() during suspend. Adding
> > > Anshuman for an idea on that.
> > >
> > 
> > Poking Anshuman here, is there any update on this? I'm looking to push these
> > patches forward as some of Red Hat's hardware partners are very eager for this
> > to get upstream asap as we're running out of time from our end. If you can
> > answer this, I can handle respinning this patch as needed.
>
> My sincere apology, I had missed this thread.  We have decided to keep
> the alternative WA i.e  setting/clearing 0xC2000 bit #7 before
> entering after exiting s0ix to fix the deeper s0ix power consumption
> issues on ICL_PCH families platforms. This alternative WA  was added
> to B.Spec on our request.  But on TGL_PCH first alternative WA logic
> i.e  in irq_reset() was working to attain deeper s0ix residencies so
> we haven't changed that.

Ok, thanks for the explanation. For now I'd just ask to add a TODO: in
this patch to check if the WA can be applied in the s0ix suspend/resume
handlers as on earlier platforms and whether the WA is also needed for
runtime s/r.

--Imre
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
