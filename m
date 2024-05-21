Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F8D98CB379
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2024 20:26:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B50CE10EBD3;
	Tue, 21 May 2024 18:26:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Io9im9tg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2553510EBD3
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 May 2024 18:26:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716315989; x=1747851989;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=E+vJz+TFGNyTucfVLxKEwJfsy4UDcddYtx8OuKQ7XDA=;
 b=Io9im9tghMOl0NlkRXAxzjM2tSmUHFHb9BCMqbtW09H86ShhP55W9STe
 g9O6+ZuhJyrmEdAftCfEJYP5aFSIdBJpVmrn1/ds5EUlqJIeQRY/mLHWB
 lqwW8Yj8Gp5g3tjZcvOhyGHTReelOsVK3gHQf8T9JPgdXxm4BqlVLPk98
 auV7pcqJ8t5bdI48FQXpc2hlx/V6/6qZvsDoALCvVzPKtTA7QJyoxZ9fS
 d+tDTKFEQS/Yx2cgrFrLsb91f5np0vYa3TcMdHk9i+5KbSq81PbkuxR28
 fNhkPAlNp+81pgXokBdkzMIr3ZL7YaZEHRvwdGhQnFtNOCHGlHB1wIYtO g==;
X-CSE-ConnectionGUID: z4LDQaErTN6O2lYO3EuuwQ==
X-CSE-MsgGUID: xobYC+BgTJWtuwPZt5PifA==
X-IronPort-AV: E=McAfee;i="6600,9927,11079"; a="16361746"
X-IronPort-AV: E=Sophos;i="6.08,178,1712646000"; d="scan'208";a="16361746"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 11:26:28 -0700
X-CSE-ConnectionGUID: /b/0BjNnSQK0ka/Q9nC2ZQ==
X-CSE-MsgGUID: fqIQVgF+T4K4AWnyRizsiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,178,1712646000"; d="scan'208";a="32990522"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 21 May 2024 11:26:25 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 21 May 2024 21:26:25 +0300
Date: Tue, 21 May 2024 21:26:25 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 2/7] drm/i915: Extract intel_dp_has_dsc()
Message-ID: <ZkznUVgYqPOxhbGQ@intel.com>
References: <20240517145356.26103-1-ville.syrjala@linux.intel.com>
 <20240517145356.26103-3-ville.syrjala@linux.intel.com>
 <87h6esu5dl.fsf@intel.com> <Zktzmthyfrxk7ACO@intel.com>
 <87seybqyrc.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87seybqyrc.fsf@intel.com>
X-Patchwork-Hint: comment
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

On Tue, May 21, 2024 at 12:51:03PM +0300, Jani Nikula wrote:
> On Mon, 20 May 2024, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> > On Mon, May 20, 2024 at 01:47:34PM +0300, Jani Nikula wrote:
> >> On Fri, 17 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> >> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >> >
> >> > Extract a helper to check whether the source+sink combo
> >> > supports DSC. That basic check is needed both during mode
> >> > validation and compute config. We'll also need to add extra
> >> > checks to both places, so having a single place for it is nicer.
> >> >
> >> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >> > ---
> >> >  drivers/gpu/drm/i915/display/intel_dp.c | 16 ++++++++++++++--
> >> >  1 file changed, 14 insertions(+), 2 deletions(-)
> >> >
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> >> > index 1e88449fe5f2..7bf283b4df7f 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> >> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> >> > @@ -1220,6 +1220,19 @@ bool intel_dp_need_bigjoiner(struct intel_dp *intel_dp,
> >> >  	       connector->force_bigjoiner_enable;
> >> >  }
> >> >  
> >> > +static bool intel_dp_has_dsc(struct intel_connector *connector)
> >> 
> >> Why not const?
> >
> > We've generally not consted these things. And then whenver add
> > one const somewhere it usually ends up getting in the way later,
> > not because we need mutability but simply because we want to
> > call something that doesn't have the const.
> >
> > I suppose if we do want to start consting things more we should
> > just do some kind of bigger pass over the whole codebase so that
> > that there's less chance of pain later.
> >
> > We're also not using container_of_const() for these right now,
> > so the const can vanish semi-accidentally when casting things.
> >
> > I suppose this thing might be low level enough that the const
> > could be kept. I'll have another think about it.
> 
> It's just that this series drops a bunch of const because of this, which
> feels like the opposite of what you usually do. :)

I suppose.

My current rule of thumb is:
- atomic object states and fbs should be const if possible
- everything else is not

I wouldn't mind making more things const, but I suspect
there are several sizeable rabbit holes that need to be
dug out beforehand.

-- 
Ville Syrjälä
Intel
