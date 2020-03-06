Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 001CC17BABB
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 11:48:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D98E26E0DD;
	Fri,  6 Mar 2020 10:48:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 9.mo69.mail-out.ovh.net (9.mo69.mail-out.ovh.net [46.105.56.78])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB6236E0DD
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Mar 2020 10:48:09 +0000 (UTC)
Received: from player771.ha.ovh.net (unknown [10.110.171.40])
 by mo69.mail-out.ovh.net (Postfix) with ESMTP id 6073B87BD6
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Mar 2020 11:48:07 +0100 (CET)
Received: from etezian.org (81-175-223-118.bb.dnainternet.fi [81.175.223.118])
 (Authenticated sender: andi@etezian.org)
 by player771.ha.ovh.net (Postfix) with ESMTPSA id CAC3310355FD8;
 Fri,  6 Mar 2020 10:48:00 +0000 (UTC)
Date: Fri, 6 Mar 2020 12:47:58 +0200
From: Andi Shyti <andi@etezian.org>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <20200306104758.GA46547@jack.zhora.eu>
References: <20200305235941.1716-1-andi.shyti@intel.com>
 <fdf01ba2-57ab-d51a-7f62-27f4cc1c1168@intel.com>
 <20200306011536.GA1530@intel.intel>
 <40bb5d31-78bb-d72c-fe58-a82150c0697f@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <40bb5d31-78bb-d72c-fe58-a82150c0697f@intel.com>
X-Ovh-Tracer-Id: 3055129399801397872
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedugedrudduvddgvdduucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpeetnhguihcuufhhhihtihcuoegrnhguihesvghtvgiiihgrnhdrohhrgheqnecukfhppedtrddtrddtrddtpdekuddrudejhedrvddvfedruddukeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrhejjedurdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheprghnughisegvthgviihirghnrdhorhhgpdhrtghpthhtohepihhnthgvlhdqghhfgieslhhishhtshdrfhhrvggvuggvshhkthhophdrohhrgh
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: allow setting generic data
 pointer
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Daniele,

> > > > diff --git a/drivers/gpu/drm/i915/gt/debugfs_gt.c b/drivers/gpu/drm/i915/gt/debugfs_gt.c
> > > > index 75255aaacaed..9112a8585caf 100644
> > > > --- a/drivers/gpu/drm/i915/gt/debugfs_gt.c
> > > > +++ b/drivers/gpu/drm/i915/gt/debugfs_gt.c
> > > > @@ -26,15 +26,14 @@ void debugfs_gt_register(struct intel_gt *gt)
> > > >    	debugfs_gt_pm_register(gt, root);
> > > >    }
> > > > -void debugfs_gt_register_files(struct intel_gt *gt,
> > > > -			       struct dentry *root,
> > > > -			       const struct debugfs_gt_file *files,
> > > > -			       unsigned long count)
> > > > +void __intel_gt_debugfs_register_files(struct intel_gt *gt, struct dentry *root,
> > > > +				       const struct debugfs_gt_file *files,
> > > > +				       unsigned long count, void *data)
> > > >    {
> > > >    	while (count--) {
> > > >    		if (!files->eval || files->eval(gt))
> > > 
> > > IMO the files->eval() function should also use the provided data instead of
> > > intel_gt. This will also allow us to drop the intel_gt parameter in this
> > > function, which in turn means we can use this function directly from all the
> > > levels.
> > 
> > do you mean something like this:
> > 
> > -       bool (*eval)(const struct intel_gt *gt);
> > +       bool (*eval)(void *data);
> > 
> > ?
> 
> yes
> 
> > 
> > I am missing the use case, though, what is it that cannot be
> > reached by the gt so that it needs to be more generic?
> 
> It's not a problem of reaching it from gt but the other way around, I don't
> want the caller to have to retrieve a gt variable it don't needs just to
> pass it to this function and then go back to the actual required data from
> gt inside of the eval function. Anything you need for your evaluation should
> be reachable from the struct used as data for the debugfs.
> To make a concrete example, I want to avoid an unneeded guc_to_gt inside
> intel_guc_debugfs_register that would also require a matched guc =
> &gt->uc.guc inside the eval function, passing guc (i.e. the data) straight
> in the eval is cleaner IMO.

Thanks for the feedback, makes sense.

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
