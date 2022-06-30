Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 30026561667
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jun 2022 11:33:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFE6F113A16;
	Thu, 30 Jun 2022 09:33:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81A49113A06
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jun 2022 09:33:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656581624; x=1688117624;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=EyD++WJb1ZGXz7EpiI7Iq8kiPyea4Vfw6ht6rwnQ9XQ=;
 b=PmW+jessfVx99bq4dEMZPV1ijgdAmhplZQNkWTsEIITrosWoEYCKi6uH
 LEbIyfINyQrNr3GFyZassTlkYlz/yFtKhIvBSuJidsM9L072YSgHNOFlZ
 /lAbaIFtS/7Lly4emNQBQH3C4xQ3ypEhDIh+l4x2n5UudTr9N+eamqmLx
 PGLdyAOB+o2TKHhTxjnUhRTy8jgJ+46izCQvrYhjsjGb4t69HU4LvsD+A
 PLLR7KiMwQQTJ+MxnKCc47QXDlW+TTsUS68pYtK/7gfM/JDOvou7BZxnS
 RCbPmbq+dCPba5Ocj+OO8GMLgnAs6+H3UaMDiErhwPi/S1xE11lkpRYrz w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10393"; a="343988409"
X-IronPort-AV: E=Sophos;i="5.92,233,1650956400"; d="scan'208";a="343988409"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 02:33:26 -0700
X-IronPort-AV: E=Sophos;i="5.92,233,1650956400"; d="scan'208";a="647816480"
Received: from fdugast-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.39.70])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 02:33:25 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <DM6PR11MB3177171F55430E985075F9DEBABA9@DM6PR11MB3177.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220630070607.858766-1-arun.r.murthy@intel.com>
 <87k08ypp9z.fsf@intel.com>
 <DM6PR11MB3177171F55430E985075F9DEBABA9@DM6PR11MB3177.namprd11.prod.outlook.com>
Date: Thu, 30 Jun 2022 12:33:22 +0300
Message-ID: <87edz6pkbh.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCHv2] drm/i915: free crtc on driver remove
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

On Thu, 30 Jun 2022, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
>> > intel_crtc is being allocated as part of intel_modeset_init_nogem and
>> > not freed as part of driver remove. This will lead to memory leak.
>> > Hence free up the allocated crtc on driver remove as part of
>> > intel_modeset_driver_remove_nogem.
>>
>> No, there's no leak and this is not needed.
>>
>> See drm_mode_config_cleanup() calling crtc->funcs->destroy() on each crtc.
>
> Sorry, I didn't notice this function.
>
> intel_crtc_alloc() is called as part of probe->intel_modeset_init_nogem->intel_crtc_init
> on similar basis cleanup/free should be done in  driver
> remove->intel_modeset_driver_remove_nogem->intel_crtc_free

It's just an error prone extra burden for the drivers to take care of
this manually, so we have drm_mode_config_cleanup(). Which also cleans
up encoders and encoders etc.

> Does this look cleaner?
>
> Kfree(crtc) which is called in crtc->funcs->destroy is intended for cleanup and hence
> drm_crtc_cleanup() is being called from intel_crtc_destroy(). The comments added in
> drm_crtc_funcs say that cleanup resources on destroy.
>
> Again looking at the driver design, intel_crtc_alloc is not done as part of any
> drm_crtc_funcs, rather on probe->modeset_init_nogem, so calling intel_crtc_free
> from remove->modeset_driver_remove_nogem would make more sence.

That would add another ordering dependency between calling
drm_mode_config_cleanup() and freeing the individual crtcs separately
afterwards. And looking at the cleanup code, I'm sure that's not what we
want.

Moreover, drm is moving towards managed initialization, which means not
having to call drm_mode_config_cleanup() explicitly at all. It'll get
called as part of drmm managed release action tied to the drm device. So
really, calling kfree as part of the callback is the natural thing to
do. Indeed it would be difficult to do it anywhere else, for no benefit.

> Also, looking into the func intel_modeset_init_nogem(), the func intel_modeset_driver_remove_nogem
> should be renamed as intel_modeset_deinit_nogem().

The cleanup naming comes from them being called as part of struct
pci_driver .remove callback chain, and it's a useful reminder.

Also, the intel_modeset_driver_remove{,noirq,nogem} functions should
*not* be considered 1:1 counterparts of intel_modeset_init{noirq,nogem,}
as the init/remove are asymmetric around irq and gem.

Sure, there's work to be done in cleaning up the probe and remove paths,
and further trying to separate the gem and display parts, but that's way
more involved than simple renames, really.


BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
