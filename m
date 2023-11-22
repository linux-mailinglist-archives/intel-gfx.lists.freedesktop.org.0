Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C83E27F4F80
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Nov 2023 19:26:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EC0C10E0DB;
	Wed, 22 Nov 2023 18:26:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C34B10E0ED
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Nov 2023 18:26:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700677561; x=1732213561;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=rjeCTHP1LtELDzzdgrZVm3QoOWNbFiQy0nPojkI1cyA=;
 b=IyR3WlPk/76jMZY69rw84ubjigKNNJjEGB7KyHwuiakzYF4dQkSgJGHy
 0jUEk7n8C9zMFaCISnTU49xUTuPyz317Wt1dkGKG2jhjFwp1Z8VANYIGc
 H5K9iYO/D/rcuaKQGyTEPcHlB62Mby8Q8sfnSXWRXLjXMVH81cF0fbt1F
 +Kssj1QIJ10mZ0xrc2yj4PkBIa6pCbcKiyqCTI5xX0dSGG/Rm4fxiTGKF
 ElTcyX4rqxnx9HogwHWyDFxXUXg9ROll/AQ8u/CCu1dmJ9+cUJAughw3x
 8oqNsdUilVBKXFjmH5IuhDHswrg+pPM20kG/ZqyW5vXXqWD19Thopud9f A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="423217466"
X-IronPort-AV: E=Sophos;i="6.04,219,1695711600"; d="scan'208";a="423217466"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2023 10:19:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="716789933"
X-IronPort-AV: E=Sophos;i="6.04,218,1695711600"; d="scan'208";a="716789933"
Received: from unknown (HELO smile.fi.intel.com) ([10.237.72.54])
 by orsmga003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2023 03:17:20 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.97)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1r5lBR-0000000G4Xq-3EY4; Wed, 22 Nov 2023 13:14:17 +0200
Date: Wed, 22 Nov 2023 13:14:17 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <ZV3iiR6QJ30nTjMn@smile.fi.intel.com>
References: <20231103201831.1037416-1-andriy.shevchenko@linux.intel.com>
 <170013946304.3092.1503824312309598619@emeril.freedesktop.org>
 <87ttplprbw.fsf@intel.com>
 <DM6PR11MB38192A2B1E08611ACB696367F2BBA@DM6PR11MB3819.namprd11.prod.outlook.com>
 <87fs0ym512.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87fs0ym512.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dsi=3A_4th_attempt_to_get_rid_of_IOSF_GPIO_=28rev2=29?=
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 LGCI Bug Filing <lgci.bug.filing@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 22, 2023 at 12:55:05PM +0200, Jani Nikula wrote:
> On Tue, 21 Nov 2023, "Illipilli, TejasreeX" <tejasreex.illipilli@intel.com> wrote:
> > Hi ,
> >
> > https://patchwork.freedesktop.org/series/125977/
> 
> Thanks, I guess, but now what? There are no shards results but the
> series is not in the shards queue either [1].
> 
> I don't know what to do.

Tell me if anything I can help with.

To me sounds like CI doesn't like the series because of those checkpatch
warnings... But I'm not familiar at all with that, I might be very well
mistaken.

> [1] https://intel-gfx-ci.01.org/queue/index.html#fullshards-queue

> > -----Original Message-----
> > From: Jani Nikula <jani.nikula@linux.intel.com> 
> > Sent: Thursday, November 16, 2023 10:29 PM
> > To: LGCI Bug Filing <lgci.bug.filing@intel.com>; Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> > Cc: intel-gfx@lists.freedesktop.org
> > Subject: Re: [Intel-gfx] ✗ Fi.CI.BAT: failure for drm/i915/dsi: 4th attempt to get rid of IOSF GPIO (rev2)
> >
> > On Thu, 16 Nov 2023, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> >> == Series Details ==
> >>
> >> Series: drm/i915/dsi: 4th attempt to get rid of IOSF GPIO (rev2)
> >> URL   : https://patchwork.freedesktop.org/series/125977/
> >> State : failure
> >>
> >> == Summary ==
> >>
> >> CI Bug Log - changes from CI_DRM_13883 -> Patchwork_125977v2 
> >> ====================================================
> >>
> >> Summary
> >> -------
> >>
> >>   **FAILURE**
> >>
> >>   Serious unknown changes coming with Patchwork_125977v2 absolutely need to be
> >>   verified manually.
> >>   
> >>   If you think the reported changes have nothing to do with the changes
> >>   introduced in Patchwork_125977v2, please notify your bug team (lgci.bug.filing@intel.com) to allow them
> >>   to document this new failure mode, which will reduce false positives in CI.
> >
> > The reported issue is unrelated to the series.
> >
> > Please consider adding
> >
> > Reply-To: lgci.bug.filing@intel.com
> >
> > message header to these status mails, so the right mail gets added automatically.

-- 
With Best Regards,
Andy Shevchenko


