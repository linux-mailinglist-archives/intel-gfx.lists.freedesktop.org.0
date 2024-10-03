Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D230F98F1F4
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2024 16:58:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FA2210E876;
	Thu,  3 Oct 2024 14:58:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QUPGaDhd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 029C610E883
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Oct 2024 14:58:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727967504; x=1759503504;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=WYjFPBixECcAununbHMV3ZXTcHpy3nnbU4ryCcvTefQ=;
 b=QUPGaDhdOCjSM8xp76bYxE5QZ5ysXx/YrsnulVDQkxm6naJP3PKrSPzg
 u5op/E84wwntlg5SQI9308KpGp2aOV9EZH2jxhmR0IdbslQ894jwVMsbY
 nNoPuZxob7bi0z2Nj60yq9z6Y1iLpzh9V/hL7weceLkmDHAqy94XYYewX
 j2FFz0HUIL0Iogvkd0YDJh8xAul5cBzZyrXefAlDo+fslAq3rZzuXFASt
 u+G1FJLt51u/qRf8U8UhAZ+w1cFNxsu7UufxZqO90gAFJGjuYnT6tGAWm
 HmHd2miRG5ThGBpnRXkZrcDcplLijLQZ+nbuRPpZuq+92GjyZfmRdxNyw Q==;
X-CSE-ConnectionGUID: e7CXKsx+SDG46c/jZUQbJg==
X-CSE-MsgGUID: SeKAaBlCQuWPZlrjWZqKyQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11214"; a="27293917"
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="27293917"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 07:58:16 -0700
X-CSE-ConnectionGUID: uwNaFx8VRkSjBwaSbWL0Dg==
X-CSE-MsgGUID: TO3F1ZWJSYOzYlSngVTmmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="74472339"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 03 Oct 2024 07:58:13 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 03 Oct 2024 17:58:12 +0300
Date: Thu, 3 Oct 2024 17:58:12 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Cc: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>,
 intel-gfx@lists.freedesktop.org, ville.syrjala@intel.com
Subject: Re: [PATCH] drm/i915/icl: Update csc and gamma enable checks
Message-ID: <Zv6xBKixcWn_gJEW@intel.com>
References: <20241003090341.3140997-1-sai.teja.pottumuttu@intel.com>
 <Zv57pzLX4ltH4w00@intel.com>
 <20241003142237.GK5725@mdroper-desk1.amr.corp.intel.com>
 <Zv6rGHmLiL5GrpKG@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Zv6rGHmLiL5GrpKG@intel.com>
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

On Thu, Oct 03, 2024 at 05:32:56PM +0300, Ville Syrjälä wrote:
> On Thu, Oct 03, 2024 at 07:22:37AM -0700, Matt Roper wrote:
> > On Thu, Oct 03, 2024 at 02:10:31PM +0300, Ville Syrjälä wrote:
> > > On Thu, Oct 03, 2024 at 02:33:41PM +0530, Sai Teja Pottumuttu wrote:
> > > > With ICL, we have a way to check if gamma and csc are enabled on
> > > > a pipe using bits in GAMMA_MODE and CSC_MODE. So, use them as well
> > > > along with the existing BOTTOM_COLOR checks.
> > > > 
> > > > BSpec: 7463, 7466
> > > > Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_color.c | 24 ++++++++++++++++++++--
> > > >  1 file changed, 22 insertions(+), 2 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> > > > index 50f41aeb3c28..1bf36898dc7e 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_color.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_color.c
> > > > @@ -1076,6 +1076,26 @@ static void skl_get_config(struct intel_crtc_state *crtc_state)
> > > >  		crtc_state->csc_enable = true;
> > > >  }
> > > >  
> > > > +static void icl_get_config(struct intel_crtc_state *crtc_state)
> > > > +{
> > > > +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> > > > +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> > > > +	u32 bottom_color;
> > > > +
> > > > +	crtc_state->gamma_mode = hsw_read_gamma_mode(crtc);
> > > > +	crtc_state->csc_mode = ilk_read_csc_mode(crtc);
> > > > +
> > > > +	bottom_color = intel_de_read(i915, SKL_BOTTOM_COLOR(crtc->pipe));
> > > > +
> > > > +	if ((bottom_color & SKL_BOTTOM_COLOR_GAMMA_ENABLE) ||
> > > > +	    (crtc_state->gamma_mode & POST_CSC_GAMMA_ENABLE))
> > > > +		crtc_state->gamma_enable = true;
> > > > +
> > > > +	if ((bottom_color & SKL_BOTTOM_COLOR_CSC_ENABLE) ||
> > > > +	    (crtc_state->csc_mode & ICL_CSC_ENABLE))
> > > > +		crtc_state->csc_enable = true;
> > > 
> > > We don't use the old per-plane/bottom color way of enabling these.
> > > So this is not right.
> > 
> > I think that's the reason for the patch --- today we use
> > skl_get_config() which *only* checks the bottom color settings.  And
> > that approach is documented as being deprecated (although still
> > supported on current platforms).
> > 
> > If we're reading out pre-OS state programmed by the vbios, we probably
> > need to handle whichever approach it took, right?  Or are we sanitizing
> > this away to "off" somewhere that makes it okay to miss what was
> > programmed?
> 
> I think we're not doing anything. I suppose some kind of
> assert_legacy_color_stuff_is_off() thing somewhere could be a
> decent addition.

Or maybe we don't need to do anything. The state checker will catch
this problem with the current code as far as the pipe bottom color
is concerned. It won't catch inconsistent plane programming though.
But we also don't have such a consistency check for older platforms
either.

-- 
Ville Syrjälä
Intel
