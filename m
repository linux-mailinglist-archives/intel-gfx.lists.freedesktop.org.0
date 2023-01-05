Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3615765F318
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Jan 2023 18:48:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F267310E13F;
	Thu,  5 Jan 2023 17:48:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FBD310E13F
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Jan 2023 17:48:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672940881; x=1704476881;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=LUPGPooxYdxvK4pD9xTxELkUjfC7+Rw3rxBCukXt34w=;
 b=Jy3bfrrhpwHuuN6VUTIoWmO/k/rVrFBg5DnSUpC6a32Y9cjZ5/k45yvO
 l3dwGbFd46WThE3jwldxh2HKEo/cLw9Lm/NVQCXyYHbCG9vtgsBvAnAsl
 WL1NOGAOYFzMf5QqDN+VK1RKVL9Z9lK08N/iJfwKdMrj4kHIsfGsfeWDL
 RsH75GaCn3tD7f7HsXG/4836ftFug9zE4QbkbSydry/GH+35mWqYuEEbI
 akDD8jQG00JOtwuRW88N1K5pTs563FWoSSTk7yMhnHGRRKklop3ohkUuf
 Q9wYc2Ny3OMaWpUsX4e1RzzKeStS5QyuX2bn8dLnoIo2lWlSbJr+aWufS w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10581"; a="301973668"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="301973668"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 09:48:00 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10581"; a="605630772"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="605630772"
Received: from dgomm-mobl.ger.corp.intel.com (HELO intel.com) ([10.249.43.18])
 by orsmga003-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Jan 2023 09:47:57 -0800
Date: Thu, 5 Jan 2023 18:47:54 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <Y7cNSlsSmEGbuZaK@ashyti-mobl2.lan>
References: <20230105153831.28256-1-nirmoy.das@intel.com>
 <87bkndeyhl.wl-ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87bkndeyhl.wl-ashutosh.dixit@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Update doc for
 __intel_wakeref_put()
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
Cc: intel-gfx@lists.freedesktop.org, chris.p.wilson@intel.com,
 andrzej.hajda@intel.com, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On Thu, Jan 05, 2023 at 08:29:26AM -0800, Dixit, Ashutosh wrote:
> On Thu, 05 Jan 2023 07:38:31 -0800, Nirmoy Das wrote:
> >
> 
> Hi Nirmoy,
> 
> > Fix the __intel_wakeref_put() doc to reflect current behaviour.
> >
> > Fixes: c7302f204490 ("drm/i915: Defer final intel_wakeref_put to process context")
> 
> Seems to be d91e657876a9?

or maybe this: ee33baa831096

> > Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> > ---
> >  drivers/gpu/drm/i915/intel_wakeref.h | 10 ++++------
> >  1 file changed, 4 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/intel_wakeref.h b/drivers/gpu/drm/i915/intel_wakeref.h
> > index 4f4c2e15e736..b5e1c61b5003 100644
> > --- a/drivers/gpu/drm/i915/intel_wakeref.h
> > +++ b/drivers/gpu/drm/i915/intel_wakeref.h
> > @@ -135,14 +135,12 @@ intel_wakeref_might_get(struct intel_wakeref *wf)
> >   * @flags: control flags
> >   *
> >   * Release our hold on the wakeref. When there are no more users,
> > - * the runtime pm wakeref will be released after the @fn callback is called
> > - * underneath the wakeref mutex.
> > + * the runtime pm wakeref will be released after the intel_wakeref_ops->put()
> > + * callback is called underneath the wakeref mutex.
> >   *
> > - * Note that @fn is allowed to fail, in which case the runtime-pm wakeref
> > - * is retained and an error reported.
> > + * Note that intel_wakeref_ops->put() is allowed to fail, in which case the
> > + * runtime-pm wakeref is retained.
> 
> @fn is used in multiple places in this file (including some 'get' usages)
> so maybe needs to be fixed there too. Maybe better to just say somewhere
> @fn refers to ops->get()/put() where applicable?

yeah... as Nirmoy is at it, I think he can take care of the rest,
would you, Nirmoy?

> >   *
> > - * Returns: 0 if the wakeref was released successfully, or a negative error
> > - * code otherwise.
> 
> So this seems to be the reason for the patch...

yeah and as for this patch, with the correct "Fixes:" above:

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Andi

> >   */
> >  static inline void
> >  __intel_wakeref_put(struct intel_wakeref *wf, unsigned long flags)
> > --
> > 2.38.0
> >
> 
> Thanks.
> --
> Ashutosh
