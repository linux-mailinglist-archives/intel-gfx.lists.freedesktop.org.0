Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 471A251C28C
	for <lists+intel-gfx@lfdr.de>; Thu,  5 May 2022 16:27:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3DDC10E3C7;
	Thu,  5 May 2022 14:27:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09B5A10E3C7
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 May 2022 14:27:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651760823; x=1683296823;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=4nWVE//FVrpr6PM9C2U+6wa2A7S+nWToOi0u2RqnJGU=;
 b=XxsAbWfnkj+uj3omK3ga6YKSI5paBkm90Mg+UU/05hheT0l7ZCxyF5xF
 NQyqlCWGX+ktdrI8U45+M1okLVyfCtv5eOeHqXQmG456SKSqzZx6DWwtj
 hNWE0ta1zyZDGy8/FpTTvLzKNcNcFxjT1A9YuwzYOn9o8JdfwDNiPnBsq
 pt7bPECuw8a2JuwCB5g/gx3ZMvsn8sDKtzGIfha7Bo8W5pDmxuwHqPOKS
 d2Q8lCMG096aTq43xYhI8O+TllqMIhMnYTgIrfnJNBKRp9Weq3PUkxCNo
 t056lGtVIIf2U5kGLI7LhH/J6UIRUlGmUDZTIihnXXEG7Huz9M0D1sXRa g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10338"; a="268272552"
X-IronPort-AV: E=Sophos;i="5.91,201,1647327600"; d="scan'208";a="268272552"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 07:27:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,201,1647327600"; d="scan'208";a="621312264"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by fmsmga008.fm.intel.com with SMTP; 05 May 2022 07:27:00 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 05 May 2022 17:26:59 +0300
Date: Thu, 5 May 2022 17:26:59 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
Message-ID: <YnPes/sz/l/MmnW0@intel.com>
References: <20220426120407.1334318-1-arun.r.murthy@intel.com>
 <Ymg2uBjovjgVAyC5@intel.com>
 <DM6PR11MB317721EBFA40865B0898F40ABAFA9@DM6PR11MB3177.namprd11.prod.outlook.com>
 <Ymkv9sCuA9SwUIvj@intel.com>
 <DM6PR11MB3177FDCC1F636934C2650DFBBAFD9@DM6PR11MB3177.namprd11.prod.outlook.com>
 <DM6PR11MB3177F94FBFC7A99A1BD4A2EFBAC29@DM6PR11MB3177.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DM6PR11MB3177F94FBFC7A99A1BD4A2EFBAC29@DM6PR11MB3177.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Support Async Flip on Linear
 buffers
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

On Thu, May 05, 2022 at 06:33:46AM +0000, Murthy, Arun R wrote:
> > > There is that GTT alignment restriction that should be mentioned
> > > somewhere. Can't quite remember where it was, maybe in PLANE_SURF.
> > >
> > I checked the BSpec, and don't find anything as such specific for Async flip.
> > I also cross verified with the hardware team.
> > 
> > > But I guess the bigger question is what is the actual use case for this?
> > This feature is a requirement for TGL.
> 
> Can I have your Reviewed-by for this patch?

You didn't find the GTT alignment restriction yet which to me syas you
didn't really look hard enough.

And you haven't answered what the actual use case for this is.

We also have no tests for this AFAICS.

-- 
Ville Syrjälä
Intel
