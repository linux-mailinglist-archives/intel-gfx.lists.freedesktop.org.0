Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A68C187619D
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Mar 2024 11:11:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C215310E9D0;
	Fri,  8 Mar 2024 10:11:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qq2X/pva";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A5BA10E9D0
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Mar 2024 10:11:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709892699; x=1741428699;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=UjVC2ksZwgK7vSfdAutYQZc7tWZ+AdfCjGtNs7DRwWs=;
 b=Qq2X/pvaKRIAFu2TIGf+j0aSATXcUo+hpzu1wqs2KsQ31qbSkUsGtisC
 P/UoSfioefb/m4jZb4WkYUT99wr7TfCMfEQ9GUErmijjOYul98clmRwfN
 9wIZqLNhYdpD4z2sRKxYELH2+EgUL69dIQXX7ynXk0J0JxfdJHvDYSKL9
 tacxYW/f3wW7mUKuRxVnv6U8p+CsR2fB8QS3QbsJrEh7SHhDdHspmaDc7
 TbNl5h/4UETeucua7k3j+Y/hWzw6W9OCbXMbmaNcPKxmZLzdUw3QTYRwo
 tEc6IS0T9JJ+kzS544Ftb+A5LYIVHFnE3XJrSotVKXMbElt9aGx+p7Xrt g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="15327211"
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; d="scan'208";a="15327211"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2024 02:11:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="827775125"
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; d="scan'208";a="827775125"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 08 Mar 2024 02:11:36 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 08 Mar 2024 12:11:35 +0200
Date: Fri, 8 Mar 2024 12:11:35 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v4 4/5] drm/i915/psr: Add IO buffer wake times for
 LunarLake and beyond
Message-ID: <ZerkV9v_9wR4sZqH@intel.com>
References: <20240306083427.2040475-1-jouni.hogander@intel.com>
 <20240306083427.2040475-5-jouni.hogander@intel.com>
 <Zen2Rm3VDV9nSn3L@intel.com>
 <0872bc7df38a15bd257dcdc1d54d5d4e1287f516.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <0872bc7df38a15bd257dcdc1d54d5d4e1287f516.camel@intel.com>
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

On Fri, Mar 08, 2024 at 08:39:36AM +0000, Hogander, Jouni wrote:
> On Thu, 2024-03-07 at 19:15 +0200, Ville Syrjälä wrote:
> > On Wed, Mar 06, 2024 at 10:34:26AM +0200, Jouni Högander wrote:
> > > IO buffer wake time used for IO wake calculation is dependent on
> > > port clock
> > > on LunarLake and beyond. Take this into account in
> > > get_io_buffer_wake_time.
> > > 
> > > Bspec: 65450
> > > 
> > > Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_psr.c | 9 ++++++++-
> > >  1 file changed, 8 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> > > b/drivers/gpu/drm/i915/display/intel_psr.c
> > > index e1df0ece9fa3..e8410e770da8 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > > @@ -1160,6 +1160,9 @@ static bool _lnl_compute_alpm_params(struct
> > > intel_dp *intel_dp,
> > >   * This is not directly mentioned in Bspec. There are 50 us io
> > > wake time and 32
> > >   * us fast wake time. Clearly preharge pulses are not (improperly)
> > > included in
> > >   * 32 us fast wake time. 50 us - 32 us = 18 us.
> > > + *
> > > + * For DISPLAY_VER >= 20
> > > + * RBR 15us, HBR1 11us, higher rates 10us
> > >   */
> > >  static int get_io_buffer_wake_time(const struct intel_crtc_state
> > > *crtc_state)
> > >  {
> > > @@ -1167,8 +1170,12 @@ static int get_io_buffer_wake_time(const
> > > struct intel_crtc_state *crtc_state)
> > >  
> > >         if (DISPLAY_VER(i915) < 12)
> > >                 return 18;
> > > -       else
> > > +       else if (DISPLAY_VER(i915) < 20 || crtc_state->port_clock >
> > > 270000)
> > >                 return 10;
> > > +       else if (crtc_state->port_clock > 162000)
> > > +               return 11;
> > > +       else
> > > +               return 15;
> > 
> > That's getting rather messy. I think having separate functions for 
> > skl vs. tgl vs. mtl (assuming the ver==20 is mtl) would be cleaner.
> 
> ver == 20 == lnl
> ver == 14 == mtl

Hmm. I thought 14 was just bumped to 20 because someone didn't 
understand that 0x14==20.

> 
> So you are thinking get_io_buffer_wake_time would do:
> 
>  	if (DISPLAY_VER(i915) >= 20)
>  		lnl_get_io_buffer_wake_time();
> 	else if (DISPLAY_VER(i915) >= 12)
>                 tgl_get_io_buffer_wake_time();
>         else
> 		skl_get_buffer_wake_time();
> 
> ?

Yeah. Personally I would also drop the "get_" part from the function
names. That just makes me think it's getting a reference or something.

-- 
Ville Syrjälä
Intel
