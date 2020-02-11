Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BB6B159C76
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 23:46:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B31D6F441;
	Tue, 11 Feb 2020 22:46:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 5995 seconds by postgrey-1.36 at gabe;
 Tue, 11 Feb 2020 22:46:31 UTC
Received: from 1.mo179.mail-out.ovh.net (1.mo179.mail-out.ovh.net
 [178.33.111.220])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 187AB6F441
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2020 22:46:31 +0000 (UTC)
Received: from player772.ha.ovh.net (unknown [10.108.57.14])
 by mo179.mail-out.ovh.net (Postfix) with ESMTP id 706FC156738
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2020 22:06:33 +0100 (CET)
Received: from etezian.org (81-175-223-118.bb.dnainternet.fi [81.175.223.118])
 (Authenticated sender: andi@etezian.org)
 by player772.ha.ovh.net (Postfix) with ESMTPSA id 6ED01F50F1CE;
 Tue, 11 Feb 2020 21:06:26 +0000 (UTC)
Date: Tue, 11 Feb 2020 23:06:25 +0200
From: Andi Shyti <andi@etezian.org>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20200211210625.GA6386@jack.zhora.eu>
References: <20200211181027.5329-1-andi@etezian.org>
 <2defb42c-9fcc-17f8-0593-8e02f75f9ba4@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2defb42c-9fcc-17f8-0593-8e02f75f9ba4@linux.intel.com>
X-Ovh-Tracer-Id: 1682375935827952369
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedugedrieefgddufeelucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpeetnhguihcuufhhhihtihcuoegrnhguihesvghtvgiiihgrnhdrohhrgheqnecukfhppedtrddtrddtrddtpdekuddrudejhedrvddvfedruddukeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrhejjedvrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheprghnughisegvthgviihirghnrdhorhhgpdhrtghpthhtohepihhnthgvlhdqghhfgieslhhishhtshdrfhhrvggvuggvshhkthhophdrohhrgh
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gt: make a gt sysfs group and
 move power management files
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

Hi Tvrtko,

> > +void intel_gt_sysfs_register(struct intel_gt *gt)
> > +{
> > +	struct kobject *parent = kobject_get(&gt->i915->drm.primary->kdev->kobj);
> 
> Does this needs a kobject_put to balance out somewhere?

Yes, I forgot the two kobject_put that are needed.

> > +	int ret;
> > +
> > +	gt->kobj = kobject_create_and_add("gt", parent);
> > +	if (!gt->kobj) {
> > +		pr_err("failed to initialize sysfs file\n");
> > +		return;
> > +	}
> > +
> > +	dev_set_drvdata(kobj_to_dev(gt->kobj), gt);
> > +
> > +	ret = sysfs_create_files(gt->kobj, gt_attrs);
> > +	if (ret)
> > +		pr_err("failed to create sysfs gt info files\n");
> 
> I can't remember which log helper takes in the device and prefixes that
> string but I think it could be useful here, since the error is otherwise
> eaten.

pr_* is used a lot in gt/. Playing with the dev pointer I
can use "dev_err(dev,...)"

> > +void intel_gt_sysfs_unregister(struct intel_gt *gt)
> > +{
> > +	if (!gt->kobj)
> > +		return;
> > +
> > +	intel_gt_sysfs_pm_remove(gt, gt->kobj);
> > +	sysfs_remove_files(gt->kobj, gt_attrs);
> 
> Why is this asymmetrical to creation?

Because in V1 gt_attrs and whatever was created in sysfs_gt_pm
was in the same group, but it desn't matter.

> I mean you call intel_gt_sysfs_pm_init
> two times with different roots, so why not intel_gt_sysfs_pm_remove also
> twice with different roots?

Because I forgot them in the cleanups :)

> > +	/*
> > +	 * We are interested at knowing from where the interface
> > +	 * has been called, whether it's called from gt/* or from
> > +	 * the parent directory.
> > +	 * From the interface position it depends also the value of
> > +	 * the private data.
> > +	 * If the interface is called from gt/ then private data is
> > +	 * of the "struct intel_gt *" type, otherwise it's * a
> > +	 * "struct drm_i915_private *" type.
> > +	 */
> > +	if (strcmp(kobj->name, "gt")) {
> > +		pr_warn("the interface is obsolete, use gt/\n");
> 
> I think the message will need to be a bit more verbose since it is intended
> for users. I don't have any suggestions straight away apart from googling to
> find similar examples from the past and other subsystems.

Yes, I couldn't come up with a better message in 80 characters,
and I can use dev_warn instead of pr_warn.

> > +static ssize_t rc6_enable_show(struct device *dev,
> > +			       struct device_attribute *attr,
> > +			       char *buff)
> > +{
> > +	struct intel_gt *gt = intel_gt_sysfs_get_drvdata(dev);
> 
> The rest of code is unchanged apart from this same line in all show/store
> vfuncs?

yes, more or less.

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
