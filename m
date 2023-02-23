Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A1446A0F0F
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Feb 2023 19:05:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69F6610E049;
	Thu, 23 Feb 2023 18:05:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D7CC10E049
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Feb 2023 18:05:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677175539; x=1708711539;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=orSBv9lRyBn/BznwcsVAlR6C06ZXq/Y3Db2QG/bjnao=;
 b=Tt3rAreuWCGbXyBSpvdgYxJWpRGRVj+NT1ekgxfEoXvIz7TGL498Zlv6
 ypbD4YQDWfGpyQ0XKr+KT5bgaHYng+WXOXMWyT0ghF/Zt/YTXMUhBOeL1
 pCg1MK2IIICCcsC2K2pbeqKW99Y3dYBF8KrQ1M58ogVfUYTgg0jVY+6Ni
 q+cXvJkKvN5Aft8u6ItayOXuwBMCmzpx/sKlp8wKqCJhUPufUKn3TyUIP
 rCkWP4p4ilgmhNvM9Gbd0yjjLANzHAMkqNl10nkmKfyVQaiWuJzMsVecN
 6P8V/DvQYUaz+uUxa+xmcEBD17g4U5QkjAyYd7pKuyZrqwxnNChSJKZmo A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="331015956"
X-IronPort-AV: E=Sophos;i="5.97,322,1669104000"; d="scan'208";a="331015956"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2023 10:04:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="702879203"
X-IronPort-AV: E=Sophos;i="5.97,322,1669104000"; d="scan'208";a="702879203"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 23 Feb 2023 10:04:34 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 23 Feb 2023 20:04:33 +0200
Date: Thu, 23 Feb 2023 20:04:33 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>
Message-ID: <Y/eqsW7f5EGGNX5c@intel.com>
References: <20230220151731.6852-1-ville.syrjala@linux.intel.com>
 <DM4PR11MB636060CF5C30347EF0EBE755F4AA9@DM4PR11MB6360.namprd11.prod.outlook.com>
 <Y/eBIshF4EiSS4rT@intel.com>
 <DM4PR11MB6360910F45E5832C8DDAAA47F4AB9@DM4PR11MB6360.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DM4PR11MB6360910F45E5832C8DDAAA47F4AB9@DM4PR11MB6360.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Fix audio ELD handling for DP
 MST
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 23, 2023 at 05:01:11PM +0000, Shankar, Uma wrote:
> 
> 
> > -----Original Message-----
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Sent: Thursday, February 23, 2023 8:37 PM
> > To: Shankar, Uma <uma.shankar@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org
> > Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Fix audio ELD handling for DP MST
> > 
> > On Wed, Feb 22, 2023 at 05:59:45PM +0000, Shankar, Uma wrote:
> > >
> > >
> > > > -----Original Message-----
> > > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> > > > Of Ville Syrjala
> > > > Sent: Monday, February 20, 2023 8:48 PM
> > > > To: intel-gfx@lists.freedesktop.org
> > > > Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Fix audio ELD handling
> > > > for DP MST
> > >
> > > Nit: May be append "display" to drm/i915.
> > 
> > Don't think I've ever used that one. Seems a bit too generic to provide any real
> > additional information to the table that wouldn't usually be obvious from the subject
> > anyway.
> > Do other people find /display useful?
> > 
> > I guess I could have used a more specific /mst in this case, but then again I already
> > mention MST in the subject anyway so seems a bit redundant.
> 
> I think there are mixed declarations in our tree, no clear rule as such.
> Will leave it you, maybe a general guideline would be good to make it
> all consistent.

Yeah, some general guidelines might be good to figure out.

In the meantime I've pushed these patches as is for now.
Thanks for the review.

-- 
Ville Syrjälä
Intel
