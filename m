Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7166850D5D0
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Apr 2022 00:36:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5388C10EA75;
	Sun, 24 Apr 2022 22:36:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A986610EA64
 for <intel-gfx@lists.freedesktop.org>; Sun, 24 Apr 2022 22:36:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650839787; x=1682375787;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=nuXwi4LMtZfqhKfDhSdGsU+nPRZSN41zQ7Es+hgKo2c=;
 b=aQirT72dCApPptHzErmRVB31BmM3l+QFRMuaSwlFYGp5gTt9vlKBpBYh
 rZ614t6tSiFf5oeXiWeILRX+I2wSrj5vBetBzQ3HWe98+uGM/iupcOgz6
 ZgFEu2DzCe1jZ3g8hJxshYxRtqgV2Ncdl4XC5tScLcWEEjuhAO80u8vtk
 bPWTm9Zbkjy27i5/0px3kIS/VZiXWIeOpKYTfsHA+lHeFb66e1Rvj2ZXA
 eBrRf1Az1pSrwJpiVs9IkpV3iy1PzRdI/eB9QkG6Nj0h9V742yDGAHrF9
 5/tLrgnkmn5zCpMEHuh16eO/HjhlSLOMVoNAHQN/lzn31gqx2rJXVaxzD Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10327"; a="264888212"
X-IronPort-AV: E=Sophos;i="5.90,287,1643702400"; d="scan'208";a="264888212"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2022 15:36:27 -0700
X-IronPort-AV: E=Sophos;i="5.90,287,1643702400"; d="scan'208";a="557403622"
Received: from fmihut-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.252.47.38])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2022 15:36:25 -0700
Date: Mon, 25 Apr 2022 00:36:23 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <YmXQ5+u7pL/Je6p5@intel.intel>
References: <cover.1649871650.git.ashutosh.dixit@intel.com>
 <cover.1650430271.git.ashutosh.dixit@intel.com>
 <9ed5af1177ad08c7c2d9c5d9b32ab0154dbd950f.1650430271.git.ashutosh.dixit@intel.com>
 <1339a2be-5fd0-cf65-d361-06c60d938ce5@intel.com>
 <87levzag3a.wl-ashutosh.dixit@intel.com>
 <d16ba36a-cc23-6bdd-803a-f2bb35dac75d@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d16ba36a-cc23-6bdd-803a-f2bb35dac75d@intel.com>
Subject: Re: [Intel-gfx] [PATCH 7/9] drm/i915/gt: Fix memory leaks in per-gt
 sysfs
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
Cc: intel-gfx@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andrzej and Ashutosh,

> > > > b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> > > > index 937b2e1a305e..4c72b4f983a6 100644
> > > > --- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
> > > > +++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> > > > @@ -222,6 +222,9 @@ struct intel_gt {
> > > > 	} mocs;
> > > > 		struct intel_pxp pxp;
> > > > +
> > > > +	/* gt/gtN sysfs */
> > > > +	struct kobject sysfs_gtn;
> > > If you put kobject as a part of intel_gt what assures you that lifetime of
> > > kobject is shorter than intel_gt? Ie its refcounter is 0 on removal of
> > > intel_gt?
> > Because we are explicitly doing a kobject_put() in
> > intel_gt_sysfs_unregister(). Which is exactly what we are *not* doing in
> > the previous code.
> > 
> > Let me explain a bit about the previous code (but feel free to skip since
> > the patch should speak for itself):
> > * Previously we kzalloc a 'struct kobj_gt'
> > * But we don't save a pointer to the 'struct kobj_gt' so we don't have the
> >    pointer to the kobject to be able to do a kobject_put() on it later
> > * Therefore we need to store the pointer in 'struct intel_gt'
> > * But if we have to put the pointer in 'struct intel_gt' we might as well
> >    put the kobject as part of 'struct intel_gt' and that also removes the
> >    need to have a 'struct kobj_gt' (kobj_to_gt() can just use container_of()
> >    to get gt from kobj).
> > * So I think this patch simpler/cleaner than the original code if you take
> >    the requirement for kobject_put() into account.

This is my oversight. This was something I completely forgot to
fix but it was my intention to do and actually I had some fixes
ongoing. But because this patch took too long to get in I
completely forgot about it (Sujaritha was actually the first who
pointed this out).

Thanks, Ashutosh for taking this.

> I fully agree that previous code is incorrect but I am not convinced current
> code is correct.
> If some objects are kref-counted it means usually they can have multiple
> concurrent users and kobject_put does not work as traditional
> destructor/cleanup/unregister.
> So in this particular case after calling kobject_init_and_add sysfs core can
> get multiple references on the object. Later, during driver unregistration
> kobject_put is called, but if the object is still in use by sysfs core, the
> object will not be destroyed/released. If the driver unregistration
> continues memory will be freed, leaving sysfs-core (or other users) with
> dangling pointers. Unless there is some additional synchronization mechanism
> I am not aware of.

Thanks Andrzej for summarizing this and what you said is actually
what happens. I had a similar solution developed and I had wrong
pointer reference happening.

Thanks,
Andi
