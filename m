Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D06B87FA0DB
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Nov 2023 14:22:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E5E410E297;
	Mon, 27 Nov 2023 13:22:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BD8E10E297
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Nov 2023 13:22:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701091354; x=1732627354;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=kzVK6/8jtEngesohNvB3UsJNfu2VDm6OVryNzNnZYz0=;
 b=feICIc9Mwgms6A8fMHV1D8LVrbkLBfpeZr8kepX7aWSe/o40F0Qa9I0Q
 6t0GwSi8uCGwfzX2O97TlRD1mSDnAxfsvgJY2RdcxkU15aRBra8XcTwku
 wyGjsBhAc22skd5ZPfWS4nFbv38/KfU5tRaSVjtR3MGU5ecZZuKaq/kc/
 s8zya0Dbafj2954PpcatXKWARFRd2+LvEhP7iHzBs1OzUbIUgPRrhTUsE
 8J8AQAWdKf4YGgOGu7VCURT987wjsvgfU7nXx52tfQ0/KLeHdfEvChvR2
 MbyWZicnYgV1jGrrSyDyJKKFiNstLcUUrXOBPrAHzjduJ2b/tBkx7Y5Gc A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10906"; a="392448045"
X-IronPort-AV: E=Sophos;i="6.04,230,1695711600"; d="scan'208";a="392448045"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2023 05:22:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10906"; a="761600159"
X-IronPort-AV: E=Sophos;i="6.04,230,1695711600"; d="scan'208";a="761600159"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 27 Nov 2023 05:22:29 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 27 Nov 2023 15:22:29 +0200
Date: Mon, 27 Nov 2023 15:22:29 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Winkler, Tomas" <tomas.winkler@intel.com>
Message-ID: <ZWSYFc-ltqthibb9@intel.com>
References: <20231011110157.247552-1-tomas.winkler@intel.com>
 <20231011110157.247552-4-tomas.winkler@intel.com>
 <ZVN9e3BczixJy_1H@intel.com>
 <ade96d9edd8bce1bc63dba4e2f1a92517180d774.camel@intel.com>
 <MN2PR11MB4093E7F5490A51DED7672145E5B2A@MN2PR11MB4093.namprd11.prod.outlook.com>
 <ZVUrhGsqJ9jKNM5x@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZVUrhGsqJ9jKNM5x@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [char-misc-next 3/4] mei: pxp: re-enable client on
 errors
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
Cc: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Usyskin,
 Alexander" <alexander.usyskin@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Lubart,
 Vitaly" <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 15, 2023 at 10:35:16PM +0200, Ville Syrjälä wrote:
> On Tue, Nov 14, 2023 at 06:40:26PM +0000, Winkler, Tomas wrote:
> > 
> > 
> > > -----Original Message-----
> > > From: Teres Alexis, Alan Previn <alan.previn.teres.alexis@intel.com>
> > > Sent: Tuesday, November 14, 2023 5:32 PM
> > > To: ville.syrjala@linux.intel.com; Winkler, Tomas <tomas.winkler@intel.com>
> > > Cc: gregkh@linuxfoundation.org; Usyskin, Alexander
> > > <alexander.usyskin@intel.com>; linux-kernel@vger.kernel.org; intel-
> > > gfx@lists.freedesktop.org; Lubart, Vitaly <vitaly.lubart@intel.com>
> > > Subject: Re: [char-misc-next 3/4] mei: pxp: re-enable client on errors
> > > 
> > > On Tue, 2023-11-14 at 16:00 +0200, Ville Syrjälä wrote:
> > > > On Wed, Oct 11, 2023 at 02:01:56PM +0300, Tomas Winkler wrote:
> > > > > From: Alexander Usyskin <alexander.usyskin@intel.com>
> > > > >
> > > > > Disable and enable mei-pxp client on errors to clean the internal state.
> > > >
> > > > This broke i915 on my Alderlake-P laptop.
> > 
> > This fix was already posted, just missed the merging window
> > https://lkml.org/lkml/2023/10/31/636
> 
> Gave this a spin and it fixes the issue for me. Thanks.
> 
> > 
> > Greg can you please take this fix into v6.7-rc2 run, or I can repost it with the correct subject.

We're at -rc3 already and this fix is still not in!

> > Thanks
> > Tomas
> > 
> > 
> > > >
> > > 
> > > 
> > > Hi Alex, i just relooked at the series that got merged, and i noticed that in patch
> > > #3 of the series, you had changed mei_pxp_send_message to return bytes sent
> > > instead of zero on success. IIRC, we had agreed to not effect the behavior of
> > > this component interface (other than adding the timeout) - this was the
> > > intention of Patch #4 that i was pushing for in order to spec the interface
> > > (which continues to say zero on success). We should fix this to stay with the
> > > original behavior - where mei-pxp should NOT send partial packets and will
> > > only return zero in success case where success is sending of the complete
> > > packets - so we don't need to get back the "bytes sent"
> > > from mei_pxp_send_message. So i think this might be causing the problem.
> > > 
> > > 
> > > Side note  to Ville:, are you enabling PXP kernel config by default in all MESA
> > > contexts? I recall that MESA folks were running some CI testing with enable
> > > pxp contexts, but didn't realize this is being enabled by default in all contexts.
> > > Please be aware that enabling pxp-contexts would temporarily disabled
> > > runtime-pm during that contexts lifetime.
> > > Also pxp contexts will be forced to be irrecoverable if it ever hangs.
> > > The former is a hardware architecture requirement but doesn't do anything if
> > > you're enabling display (which I beleive also blocks in ADL). The latter was a
> > > requirement to comply with Vulkan.
> > > 
> > > ...alan
> > > 
> > 
> 
> -- 
> Ville Syrjälä
> Intel

-- 
Ville Syrjälä
Intel
