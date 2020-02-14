Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ACD615D8D9
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 14:57:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE53E6E7EC;
	Fri, 14 Feb 2020 13:57:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A63BD6E81F
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Feb 2020 13:57:11 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Feb 2020 05:57:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,440,1574150400"; d="scan'208";a="267564856"
Received: from aquilante.fi.intel.com (HELO intel.com) ([10.237.72.158])
 by fmsmga002.fm.intel.com with ESMTP; 14 Feb 2020 05:57:09 -0800
Date: Fri, 14 Feb 2020 15:57:08 +0200
From: Andi Shyti <andi.shyti@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20200214135708.GB2502@intel.intel>
References: <20200214110308.2268-1-andi.shyti@intel.com>
 <aa7b70a5-149d-5c6b-756c-823c03a0df2b@linux.intel.com>
 <20200214131619.GA2502@intel.intel>
 <471dd284-eb06-1240-018a-a86899031fdb@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <471dd284-eb06-1240-018a-a86899031fdb@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: make a gt sysfs group and move
 power management files
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

> > > > +	}
> > > > +
> > > > +	intel_gt_sysfs_pm_remove(gt, root);
> > > > +	kobject_put(root);
> > > 
> > > Maybe stick to the same terminology regarding root and parent.
> > 
> > yes.
> > 
> > > Get/put on the parent looks unbalanced. Both register and unregister take a
> > > reference and only unregister releases it. But do you even need a reference?
> > 
> > why? I take it here:
> > 
> > static inline struct kobject *gt_to_parent_obj(struct intel_gt *gt)
> > {
> > 	return kobject_get(&gt->i915->drm.primary->kdev->kobj);
> > }
> > 
> > at the beginning (when the driver is loaded) and I release it at
> > the end (when the driver is unloaded). Am I not seeing something?
> 
> Gt_to_parent_obj at the top of intel_gt_sysfs_register balances out with the
> put at the end of the same function. What balances out gt_to_parent_obj from
> intel_gt_sysfs_register?

And... you are right!
either nothing or too many :)

> > > I am also tempted by the _once alternative, but then it makes less sense to
> > > include name & pid.
> > 
> > It's true, it can be an unrelenting message, and I thought of it,
> > but if the user is resilient at reading out from the wrong
> > directory, why shouldn't I :)
> 
> Because we always try to avoid emitting spammy logs when they can be easily
> triggered by userspace. Can we do rate limit? I think that could work well
> with logging the process name & pid.

yes, if two people suggested the same thing, most probably that's
the right thing to do.

> Also, we need an entry in Documentation/ABI/obsolete/.

I was waiting this patch to get in shape before adding the
interface to obsolete.

I will include it in the next patch.

Thanks a lot for the review,
Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
