Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E75C2CDF04
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Dec 2020 20:34:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AD196EBFE;
	Thu,  3 Dec 2020 19:34:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF7A16EBFE
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Dec 2020 19:34:19 +0000 (UTC)
IronPort-SDR: zKZOPMgu2758F/Uqi1J2rupFKMUFO6QvgcOEWwqI32wlIodASY5uhTjmE8dmp1LNDRS5rb9IRf
 hSK9Sz15AtcQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9824"; a="153087596"
X-IronPort-AV: E=Sophos;i="5.78,390,1599548400"; d="scan'208";a="153087596"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2020 11:34:19 -0800
IronPort-SDR: /e0BMjJCoAsBioHLxyxxi084ZxRLlJFMFGBKH3NRrhbljMWdmTc2DCOEwHMHflwxbgWR3wvLYL
 mJcmpnB6kDsQ==
X-IronPort-AV: E=Sophos;i="5.78,390,1599548400"; d="scan'208";a="374046738"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2020 11:34:19 -0800
Date: Thu, 3 Dec 2020 11:37:18 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20201203193718.GC2130@labuser-Z97X-UD5H>
References: <20201022222709.29386-1-manasi.d.navare@intel.com>
 <20201022222709.29386-4-manasi.d.navare@intel.com>
 <87tutxsddo.fsf@intel.com>
 <20201201224652.GB22608@labuser-Z97X-UD5H>
 <87sg8mc0bp.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87sg8mc0bp.fsf@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 03/11] drm/i915/display/dp: Attach and set
 drm connector VRR property
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Dec 03, 2020 at 06:37:46PM +0200, Jani Nikula wrote:
> On Tue, 01 Dec 2020, "Navare, Manasi" <manasi.d.navare@intel.com> wrote:
> > On Tue, Nov 10, 2020 at 12:41:07PM +0200, Jani Nikula wrote:
> >> On Thu, 22 Oct 2020, Manasi Navare <manasi.d.navare@intel.com> wrote:
> >> > +
> >> > +	if (INTEL_GEN(dev_priv) >= 12)
> >> 
> >> I wonder if we should just add a wrapper
> >> 
> >> #define HAS_VRR(i915) (INTEL_GEN(i915) >= 12)
> >> 
> >> to be more descriptive. And use it in the previous patch too.
> >
> > Yea I like the idea of adding this wrapper in intel_vrr.c and have the platform check in that
> > and then use that in intel_vrr_is_capable() ?
> 
> Works for me, but might just throw that in i915_drv.h with all the other
> HAS_ helpers also. *shrug*

Yup, thats where I added HAS_VRR macro

Manasi

> 
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
