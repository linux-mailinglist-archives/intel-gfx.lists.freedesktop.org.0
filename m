Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F7D16C0CF
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2020 13:30:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 664486E8C4;
	Tue, 25 Feb 2020 12:29:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 719586E8C4
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Feb 2020 12:29:56 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Feb 2020 04:29:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,484,1574150400"; d="scan'208";a="284657856"
Received: from aquilante.fi.intel.com (HELO intel.com) ([10.237.72.158])
 by FMSMGA003.fm.intel.com with ESMTP; 25 Feb 2020 04:29:54 -0800
Date: Tue, 25 Feb 2020 14:29:53 +0200
From: Andi Shyti <andi.shyti@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20200225122953.GA5050@intel.intel>
References: <20200219190223.16972-1-andi.shyti@intel.com>
 <20200219193020.17673-1-andi.shyti@intel.com>
 <dd611192-cf41-9538-66bd-d6a1b800bdf7@linux.intel.com>
 <20200224163029.GA1579@intel.intel>
 <421b0bd8-6bc6-e6c2-7e08-6d112c57a860@linux.intel.com>
 <20200225013208.GA2708@intel.intel>
 <2b7d426d-a8e9-40f9-fb1c-184f0f9b0dfd@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2b7d426d-a8e9-40f9-fb1c-184f0f9b0dfd@linux.intel.com>
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

> > > > > > +void intel_gt_sysfs_register(struct intel_gt *gt)
> > > > > > +{
> > > > > > +	struct kobject *parent = kobject_get(gt_get_parent_obj(gt));
> > > > > > +	int ret;
> > > > > > +
> > 
> > and if I need to call kobject_put at the end. If for some reason
> > the files have failed to be initialized, I would have an
> > unbalanced put and a warning would be printed.
> > 
> > I'll summarize in pseudo code:
> > 
> > intel_gt_sysfs_register()
> > {
> > 	kobject_init_and_add(sysfs_root...); /* which calls kobject_get() inside */
> > 	if (fails)
> > 		kobject_put(sysfs_root); /* reference goes to '0' */
> > }
> > 
> > intel_gt_sysfs_unregister()
> > {
> > 	option1: I don't call kobject_put(), I have an unbalanced
> >                   situation as you reviewed in patch 1.
> > 
> >          option2: I call kobject_put(), if it did fail during init
> >                   there is an unbalanced situation, which is
> >                   handled but an annoying WARN() is issued.
> > 
> > 	option3: I check if "state_initialized" which I suppose
> >                   has been properly initialised during declaration
> >                   (maybe too paranoic?) and call _put()
> >                   accordingly
> > }
> 
> Yes you are right, I confused the two parents again. :I

this little things are good for jambling the brain up :)

> Okay then, is the extra kobject_get/put on the parent
> (kobject_get(gt_get_parent_obj(gt) - this one) needed?

I do not see any strong reason for calling kobject_get, I do it
only because I am creating files in there and I don't want anyone
to free those without my permission. Otherwise, the creation and
the destruction of the son object would take care of the
refcount.

Will it ever happen that parent will be destroyed before I have
time to release the files? I don't think so, but I do it more for
the form than for the use. In the sense that "I have stuff in
there and I declare I have stuff in there and I declare when I
won't need them anymore".

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
