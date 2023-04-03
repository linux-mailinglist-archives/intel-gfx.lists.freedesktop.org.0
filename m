Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B8BC96D52D3
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Apr 2023 22:48:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D44610E19C;
	Mon,  3 Apr 2023 20:48:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45D8D10E19C;
 Mon,  3 Apr 2023 20:48:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680554893; x=1712090893;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=lDwF+FfaxGLD/0JpZWgKwY6x0BDxuM6upEiP540fAq4=;
 b=QF0cFzkhDBp9pS7juBoGYyogSBRPdhpKLYeC2gIVKMMJ7jctZ0Uk81o9
 0Gzyfnz81T9S9enwao4KRLhYfYaurIEtN+FoA9VUSb2henGDoVf210uSX
 jQb1sl1rzTPxN9/S+S361swxVpM/1/13v6+fTP9g6uwtJqU1mQhNjsUAM
 8zVBHqhk8TrgqMsUjGk7Zpx1x85K2mKo/Xkawt6ioxux0CjKbf4EA+ZGE
 l+OAT/UGCnliKN0q8/y+0D2WoyhLMhwwhzOTCvd4K1Fk4aTIYgibg0F7S
 svDxUed1VLAFxsrgfCmPyaPCBoeNRp4Qmr2WIKUvEatg2pQlGcfolK5AU w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="330586646"
X-IronPort-AV: E=Sophos;i="5.98,315,1673942400"; d="scan'208";a="330586646"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2023 13:48:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="797206591"
X-IronPort-AV: E=Sophos;i="5.98,315,1673942400"; d="scan'208";a="797206591"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga002.fm.intel.com with SMTP; 03 Apr 2023 13:48:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 03 Apr 2023 23:48:08 +0300
Date: Mon, 3 Apr 2023 23:48:08 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <ZCs7iG0gbMWD2hoA@intel.com>
References: <20230331102419.521392-1-maarten.lankhorst@linux.intel.com>
 <20230331102419.521392-4-maarten.lankhorst@linux.intel.com>
 <20230403203540.GY4085390@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230403203540.GY4085390@mdroper-desk1.amr.corp.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 3/6] drm/i915: Fix comparison in
 intel_dram.
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Apr 03, 2023 at 01:35:40PM -0700, Matt Roper wrote:
> On Fri, Mar 31, 2023 at 12:24:16PM +0200, Maarten Lankhorst wrote:
> > Gen13 should probably be the same as gen12, not gen11.
> > 
> > Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > Cc: intel-gfx@lists.freedesktop.org
> > ---
> >  drivers/gpu/drm/i915/soc/intel_dram.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
> > index 9f0651d48d41..9649051ed8ed 100644
> > --- a/drivers/gpu/drm/i915/soc/intel_dram.c
> > +++ b/drivers/gpu/drm/i915/soc/intel_dram.c
> > @@ -548,7 +548,7 @@ static int icl_pcode_read_mem_global_info(struct drm_i915_private *dev_priv)
> 
> I don't think we need this change.  We were only reading the this pcode
> mailbox for display purposes, and even on the latest graphics version 12
> platforms we shouldn't make it into this function anymore.  Instead the
> display IP now provides this information itself so there's no need to go
> through the GT's pcode mailbox; we read it directly from display
> registers in xelpdp_get_dram_info().  It looks like this condition here
> would only matter if we had a future platform with graphics version
> higher than 12, but display version lower than 14, which seems very
> unlikely.
> 
> 
> Matt
> 
> >  	if (ret)
> >  		return ret;
> >  
> > -	if (GRAPHICS_VER(dev_priv) == 12) {
> > +	if (GRAPHICS_VER(dev_priv) >= 12) {

We should perhaps change all the checks here to DISPLAY_VER
since it's the display code that needs this information.

Though I suppose technically neither DISPLAY_VER nor
GRAPHICS_VER is entirely correct since it's really SoC
level stuff that we're looking at here. But the current 
mismash of GRAPHICS_VER and DISPLAY_VER is certainly not
helping reduce the confusion.

> >  		switch (val & 0xf) {
> >  		case 0:
> >  			dram_info->type = INTEL_DRAM_DDR4;
> > -- 
> > 2.34.1
> > 
> 
> -- 
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation

-- 
Ville Syrjälä
Intel
