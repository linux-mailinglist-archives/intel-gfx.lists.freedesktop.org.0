Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A76A198F458
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2024 18:43:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A081B10E8B9;
	Thu,  3 Oct 2024 16:43:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jtx3riQs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E47F10E8B9
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Oct 2024 16:43:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727973819; x=1759509819;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=KMGtE0+QCTyN2Vsk5gunK8Dyo6XRKOUufIB1IUH4Qhs=;
 b=jtx3riQsi2BF3GSFMSr8MGE+hhSEeB6FRgSF3wU9cuY5Bj1LDUYR6UmT
 +yLKCPqgmxU7xraf6qsxun3/JQSnY7+V2/UMpClbZwGlce+xq+Y22xDji
 XzxTJgZAS69jqEmlZKy9lR9BqKgUDkN9De5j1veiW2SvLUt9JPc+rvEr5
 63ZfN6xwdNd/T/tPB3XprC6CwCVmaMvuxaNxvPoVMboWMhGb1kL8j8c3w
 A2V4csr+9qX37LlaWphijsa8XK/r31VLE3br9S4LjgojpHv21xc/v38v6
 XcFRBLj8bDObVBtt+rzZ2JYoUTAv37QZQqm+LZpN/mDe0RhahbYCurJd/ g==;
X-CSE-ConnectionGUID: BIR6wnE+RE6MKTcmZVKH9A==
X-CSE-MsgGUID: GlobziyVTYSpKATWT6PBXA==
X-IronPort-AV: E=McAfee;i="6700,10204,11214"; a="27270718"
X-IronPort-AV: E=Sophos;i="6.11,175,1725346800"; d="scan'208";a="27270718"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 09:43:39 -0700
X-CSE-ConnectionGUID: Fn3hcphyQJWaISV7M5LhjQ==
X-CSE-MsgGUID: 4XbVvpvPRFGcwX7AvubhCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,175,1725346800"; d="scan'208";a="74526433"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 03 Oct 2024 09:43:35 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 03 Oct 2024 19:43:34 +0300
Date: Thu, 3 Oct 2024 19:43:34 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Cc: "Pottumuttu, Sai Teja" <sai.teja.pottumuttu@intel.com>,
 intel-gfx@lists.freedesktop.org, ville.syrjala@intel.com
Subject: Re: [PATCH] drm/i915/icl: Update csc and gamma enable checks
Message-ID: <Zv7JtnT-q8aQIc4d@intel.com>
References: <20241003090341.3140997-1-sai.teja.pottumuttu@intel.com>
 <Zv57pzLX4ltH4w00@intel.com>
 <20241003142237.GK5725@mdroper-desk1.amr.corp.intel.com>
 <Zv6rGHmLiL5GrpKG@intel.com> <Zv6xBKixcWn_gJEW@intel.com>
 <a80d1e55-a294-41b9-8369-495450fa9c34@intel.com>
 <Zv68V6A_HTQihdWu@intel.com>
 <20241003160540.GL5725@mdroper-desk1.amr.corp.intel.com>
 <Zv7CeST4xjm3JKms@intel.com>
 <20241003162038.GM5725@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241003162038.GM5725@mdroper-desk1.amr.corp.intel.com>
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

On Thu, Oct 03, 2024 at 09:20:38AM -0700, Matt Roper wrote:
> On Thu, Oct 03, 2024 at 07:12:41PM +0300, Ville Syrjälä wrote:
> > On Thu, Oct 03, 2024 at 09:05:40AM -0700, Matt Roper wrote:
> > > On Thu, Oct 03, 2024 at 06:46:31PM +0300, Ville Syrjälä wrote:
> > > > On Thu, Oct 03, 2024 at 09:08:53PM +0530, Pottumuttu, Sai Teja wrote:
> > > > > 
> > > > > On 03-10-2024 20:28, Ville Syrjälä wrote:
> > > > > > On Thu, Oct 03, 2024 at 05:32:56PM +0300, Ville Syrjälä wrote:
> > > > > >> On Thu, Oct 03, 2024 at 07:22:37AM -0700, Matt Roper wrote:
> > > > > >>> On Thu, Oct 03, 2024 at 02:10:31PM +0300, Ville Syrjälä wrote:
> > > > > >>>> On Thu, Oct 03, 2024 at 02:33:41PM +0530, Sai Teja Pottumuttu wrote:
> > > > > >>>>> With ICL, we have a way to check if gamma and csc are enabled on
> > > > > >>>>> a pipe using bits in GAMMA_MODE and CSC_MODE. So, use them as well
> > > > > >>>>> along with the existing BOTTOM_COLOR checks.
> > > > > >>>>>
> > > > > >>>>> BSpec: 7463, 7466
> > > > > >>>>> Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
> > > > > >>>>> ---
> > > > > >>>>>   drivers/gpu/drm/i915/display/intel_color.c | 24 ++++++++++++++++++++--
> > > > > >>>>>   1 file changed, 22 insertions(+), 2 deletions(-)
> > > > > >>>>>
> > > > > >>>>> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> > > > > >>>>> index 50f41aeb3c28..1bf36898dc7e 100644
> > > > > >>>>> --- a/drivers/gpu/drm/i915/display/intel_color.c
> > > > > >>>>> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> > > > > >>>>> @@ -1076,6 +1076,26 @@ static void skl_get_config(struct intel_crtc_state *crtc_state)
> > > > > >>>>>   		crtc_state->csc_enable = true;
> > > > > >>>>>   }
> > > > > >>>>>   
> > > > > >>>>> +static void icl_get_config(struct intel_crtc_state *crtc_state)
> > > > > >>>>> +{
> > > > > >>>>> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> > > > > >>>>> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> > > > > >>>>> +	u32 bottom_color;
> > > > > >>>>> +
> > > > > >>>>> +	crtc_state->gamma_mode = hsw_read_gamma_mode(crtc);
> > > > > >>>>> +	crtc_state->csc_mode = ilk_read_csc_mode(crtc);
> > > > > >>>>> +
> > > > > >>>>> +	bottom_color = intel_de_read(i915, SKL_BOTTOM_COLOR(crtc->pipe));
> > > > > >>>>> +
> > > > > >>>>> +	if ((bottom_color & SKL_BOTTOM_COLOR_GAMMA_ENABLE) ||
> > > > > >>>>> +	    (crtc_state->gamma_mode & POST_CSC_GAMMA_ENABLE))
> > > > > >>>>> +		crtc_state->gamma_enable = true;
> > > > > >>>>> +
> > > > > >>>>> +	if ((bottom_color & SKL_BOTTOM_COLOR_CSC_ENABLE) ||
> > > > > >>>>> +	    (crtc_state->csc_mode & ICL_CSC_ENABLE))
> > > > > >>>>> +		crtc_state->csc_enable = true;
> > > > > >>>> We don't use the old per-plane/bottom color way of enabling these.
> > > > > >>>> So this is not right.
> > > > > >>> I think that's the reason for the patch --- today we use
> > > > > >>> skl_get_config() which *only* checks the bottom color settings.  And
> > > > > >>> that approach is documented as being deprecated (although still
> > > > > >>> supported on current platforms).
> > > > > >>>
> > > > > >>> If we're reading out pre-OS state programmed by the vbios, we probably
> > > > > >>> need to handle whichever approach it took, right?  Or are we sanitizing
> > > > > >>> this away to "off" somewhere that makes it okay to miss what was
> > > > > >>> programmed?
> > > > > >> I think we're not doing anything. I suppose some kind of
> > > > > >> assert_legacy_color_stuff_is_off() thing somewhere could be a
> > > > > >> decent addition.
> > > > > > Or maybe we don't need to do anything. The state checker will catch
> > > > > > this problem with the current code as far as the pipe bottom color
> > > > > > is concerned. It won't catch inconsistent plane programming though.
> > > > > > But we also don't have such a consistency check for older platforms
> > > > > > either.
> > > > > 
> > > > > So, are we essentially saying that we can completely remove BOTTOM_COLOR 
> > > > > from here and just move to using GAMMA_MODE, CSC_MODE for setting 
> > > > > gamma_enable and csc_enable?
> > > > 
> > > > No. The current code already works correctly, and pipe_csc_enable and 
> > > > gamma_enable are not meant to be used on icl+.
> > > 
> > > Then does that mean icl_color_commit_arm() is wrong since we're
> > > programming those registers there?
> > 
> > Not really. It just assumes those bits should never be set,
> > which is true given how icl_color_check() operates.
> 
> Hmm, this is confusing since I see icl_gamma_mode() setting up
> pipe-level gamma enable:
> 
>         if (crtc_state->hw.gamma_lut &&
>             !crtc_state->c8_planes)
>                 gamma_mode |= POST_CSC_GAMMA_ENABLE;
> 
> and icl_csc_mode() setting up CSC enable:
> 
>         if (crtc_state->hw.ctm)
>                 csc_mode |= ICL_CSC_ENABLE;
> 
> and then those eventually get programmed to hardware in
> icl_color_commit_arm.
> 
> But then our get_config function doesn't read these same bits and
> instead only reads the bottom_color bit instead (which is mutually
> exclusive with the pipe-level control, and which will likely be removed
> from the hardware completely at some point since it's already listed as
> deprecated).  What am I overlooking here?

csc_mode and gamma_mode are read back fully.

If we wanted to be 100% pedantic about how things work in hardware
we'd have to duplicate csc_enable/gamma_enable into plane_state, and 
then copy over the thing we computed for the whole crtc into those
and use them when programming the planes. But that's quite a lot of
extra tracking, and we haven't even implemented proper plane state
readout so not much point at this time. And IIRC there was also
some ordering issue in that we compute plane states before color
state, hence the whole *_plane_ctl_crtc() stuff.

-- 
Ville Syrjälä
Intel
