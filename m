Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 57D1016AB81
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 17:30:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB4936E5A2;
	Mon, 24 Feb 2020 16:30:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 019066E5A2
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Feb 2020 16:30:32 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Feb 2020 08:30:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,480,1574150400"; d="scan'208";a="284395753"
Received: from aquilante.fi.intel.com (HELO intel.com) ([10.237.72.158])
 by FMSMGA003.fm.intel.com with ESMTP; 24 Feb 2020 08:30:30 -0800
Date: Mon, 24 Feb 2020 18:30:29 +0200
From: Andi Shyti <andi.shyti@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20200224163029.GA1579@intel.intel>
References: <20200219190223.16972-1-andi.shyti@intel.com>
 <20200219193020.17673-1-andi.shyti@intel.com>
 <dd611192-cf41-9538-66bd-d6a1b800bdf7@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dd611192-cf41-9538-66bd-d6a1b800bdf7@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v5] drm/i915/gt: make a gt sysfs group and
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

> > +void intel_gt_sysfs_register(struct intel_gt *gt)
> > +{
> > +	struct kobject *parent = kobject_get(gt_get_parent_obj(gt));
> > +	int ret;
> > +
> > +	ret = kobject_init_and_add(&gt->sysfs_root,
> > +				   &sysfs_gt_ktype,
> > +				   parent, "gt");
> > +	if (ret) {
> > +		drm_err(&gt->i915->drm, "failed to initialize sysfs file\n");
> 
> I'd perhaps pin point the failure more by s/file/GT sysfs root/.

OK

> > +		kobject_put(&gt->sysfs_root);
> 
> Is the reference needed for the registration steps? I am thinking if you
> could kobject_get only once everything worked to simplify.

I haven't really understood what you mean here. Are you saying
that kobject_put not needed? in the lib/kobject.c it says as
comment to kobject_init_and_add():

"
 * If this function returns an error, kobject_put() must be called to
 * properly clean up the memory associated with the object.  This is the
 * same type of error handling after a call to kobject_add() and kobject
 * lifetime rules are the same here.
 */
"

> > +	ret = sysfs_create_file(&gt->sysfs_root, &dev_attr_gt_info.attr);
> > +	if (ret)
> > +		drm_err(&gt->i915->drm, "failed to create sysfs gt info files\n");
> > +
> > +	intel_gt_sysfs_pm_init(gt, &gt->sysfs_root);
> 
> If you put this first you can avoid the goto I think which makes the
> function smaller.

True!

> > +void intel_gt_sysfs_unregister(struct intel_gt *gt)
> > +{
> > +	struct kobject *parent = gt_get_parent_obj(gt);
> > +
> > +	/*
> > +	 * the name gt tells us wether sysfs_root
> > +	 * object was initialized properly
> > +	 */
> > +	if (!strcmp(gt->sysfs_root.name, "gt"))
> > +		kobject_put(&gt->sysfs_root);
> 
> Slightly nicer would be looking at  kobj->state_initialized for this check I
> think. Or even kref_get_unless_zero on kobj->kref? Ugliness there is double
> put on sucess which makes me ask whether holding a reference on parent is
> even needed? It can't go away so perhaps it isn't.

I'd rather use the state_initialized, even though I don't trust
its value if the kobject has failed to initialise earlier, I
trust it only if it's '1', maybe I'm paranoic.

> > +	/*
> > +	 * We are interested at knowing from where the interface
> > +	 * has been called, whether it's called from gt/ or from
> > +	 * the parent directory.
> > +	 * From the interface position it depends also the value of
> > +	 * the private data.
> > +	 * If the interface is called from gt/ then private data is
> > +	 * of the "struct intel_gt *" type, otherwise it's * a
> > +	 * "struct drm_i915_private *" type.
> > +	 */
> > +	if (strcmp(dev->kobj.name, "gt")) {
> > +		struct drm_i915_private *i915 = kdev_minor_to_i915(dev);
> > +
> > +		pr_warn_ratelimited(DEPRECATED
> > +			"(%s, %d) trying to access deprecated interface, "
> > +			"use the corresponding interface in gt/\n",
> 
> Saying interface two times sounds a bit suboptimal but I leave this to
> native speakers to improve.
> 
> Can you get to the name of the sysfs control here?

sure.

> "(%s, %d) is trying to access deprecated '%s' sysfs control. Please use
> 'gt/%s' instead.". Something like that?

yes... it's not always easy to write logs when you have to stay
within the 80 characters

Thanks for the review!
Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
