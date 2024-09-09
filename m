Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8FCD971B7A
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 15:46:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7199410E58C;
	Mon,  9 Sep 2024 13:46:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nFPAXW+v";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6866E10E58C
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2024 13:46:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725889614; x=1757425614;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=iciK4kukQT42OL3SztcfLRFjklpFDwXibSr7cjYaNmk=;
 b=nFPAXW+vosjLjhBrY/2HuCQqSIqEzWO6LrCBUdikcXDd68D/b0Qz2aZ4
 JUAoYmocnKgeUuUF6cRoDQ7egbHIfvS847Lmfyp84ewgNAH9LuwPIVXSP
 HYCIS6oeH0SnzkzmaMwfUCo5qsEdih1KJlugOAqfuHY70+V/qNoKh9GmS
 +wOB5V9MECqNIGQXLlXki45ndrGUmNApq8HcPooB8x6D7wxf7GK2Z4Ox/
 6nihJ/lBIhodn+Ed86FlF5nfBJwPTYYHMhyXlpF6CnzL8dY617FkkRIbx
 xK5tFvnl7gA/xyclJP+WbqTL6PhGauwsxeUFoskPJWPe71Ah3S9emUkb1 w==;
X-CSE-ConnectionGUID: gJge48WyR1q2PigznpuVOQ==
X-CSE-MsgGUID: 60BXR66TSx2xUaZMHoGC5g==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="24452069"
X-IronPort-AV: E=Sophos;i="6.10,214,1719903600"; d="scan'208";a="24452069"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 06:46:54 -0700
X-CSE-ConnectionGUID: Z3Q3CMDPRHKXnRwOHNFm4g==
X-CSE-MsgGUID: rY5psPoITKyXeBdwwObYVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,214,1719903600"; d="scan'208";a="66736089"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 09 Sep 2024 06:46:52 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 09 Sep 2024 16:46:51 +0300
Date: Mon, 9 Sep 2024 16:46:51 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.saarinen@intel.com
Subject: Re: [PATCH 10/14] drm/i915/display/vdsc: Add ultrajoiner support
 with DSC
Message-ID: <Zt78S6_mauRtCf3O@intel.com>
References: <20240906125807.3960642-1-ankit.k.nautiyal@intel.com>
 <20240906125807.3960642-11-ankit.k.nautiyal@intel.com>
 <ZtsuGMVpU89ow48_@intel.com> <ZtswRWzoCkWptOTG@intel.com>
 <2898a6b5-ac09-4fb1-9184-68b79270a4b8@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2898a6b5-ac09-4fb1-9184-68b79270a4b8@intel.com>
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

On Mon, Sep 09, 2024 at 02:53:55PM +0530, Nautiyal, Ankit K wrote:
> 
> On 9/6/2024 10:09 PM, Ville Syrjälä wrote:
> > On Fri, Sep 06, 2024 at 07:30:16PM +0300, Ville Syrjälä wrote:
> >> On Fri, Sep 06, 2024 at 06:28:03PM +0530, Ankit Nautiyal wrote:
> >>> From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> >>>
> >>> Add changes to DSC which are required for Ultrajoiner.
> >>>
> >>> v2:
> >>> -Use correct helper for setting bits for bigjoiner secondary. (Ankit)
> >>> -Use enum for joiner pipe count instead magic numbers. (Suraj)
> >>> -Use primary/secondary instead of master/slave. (Suraj)
> >>>
> >>> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> >>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >>> ---
> >>>   drivers/gpu/drm/i915/display/intel_vdsc.c | 26 +++++++++++++++++++++--
> >>>   1 file changed, 24 insertions(+), 2 deletions(-)
> >>>
> >>> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> >>> index 8158e3702ed5..66e810c8de68 100644
> >>> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> >>> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> >>> @@ -379,9 +379,11 @@ static int intel_dsc_get_vdsc_per_pipe(const struct intel_crtc_state *crtc_state
> >>>   int intel_dsc_get_num_vdsc_instances(const struct intel_crtc_state *crtc_state)
> >>>   {
> >>>   	int num_vdsc_instances = intel_dsc_get_vdsc_per_pipe(crtc_state);
> >>> +	int joined_pipes = intel_joiner_num_pipes(crtc_state);
> >>>   
> >>> -	if (crtc_state->joiner_pipes)
> >>> -		num_vdsc_instances *= 2;
> >>> +	if (joined_pipes == INTEL_BIG_JOINER_PIPES ||
> >>> +	    joined_pipes == INTEL_ULTRA_JOINER_PIPES)
> >>> +		num_vdsc_instances *= joined_pipes;
> >>>   
> >>>   	return num_vdsc_instances;
> >>>   }
> >>> @@ -751,6 +753,14 @@ void intel_uncompressed_joiner_enable(const struct intel_crtc_state *crtc_state)
> >>>   	}
> >>>   }
> >>>   
> >>> +static bool intel_crtc_ultrajoiner_enable_needed(const struct intel_crtc_state *crtc_state)
> >>> +{
> >>> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> >>> +
> >>> +	return intel_joiner_num_pipes(crtc_state) == INTEL_ULTRA_JOINER_PIPES &&
> >>> +	       crtc->pipe != PIPE_D;
> >>> +}
> >>> +
> >>>   void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
> >>>   {
> >>>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> >>> @@ -770,7 +780,19 @@ void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
> >>>   		dss_ctl1_val |= JOINER_ENABLE;
> >>>   	}
> >>>   	if (crtc_state->joiner_pipes) {
> >>> +		/*
> >>> +		 * This bit doesn't seem to follow primary/secondary logic or
> >>> +		 * any other logic, so lets just add helper function to
> >>> +		 * at least hide this hassle..
> >>> +		 */
> >>> +		if (intel_crtc_ultrajoiner_enable_needed(crtc_state))
> >> What is this crazyness? This would throw a big wrench into
> >> the works, eg. the ultrajoiner readout would not work as intended.
> > Hmm. I do see a note to this effect in bspec. But that doesn't make
> > any real sense. I would expect that we either enable this for
> > everything, or only for pipes A+C (the bigjoiner primaries).
> > The latter would seem sensible, but it would also mean that
> > we need to rethink the readout as well.
> 
> Yes as per bspec : The ULTRA_JOINER_ENABLE bit will be set for Pipe A, 
> Pipe B and Pipe C only.
> 
> Are you suggesting to write this for D as well? or just for A and C?

We need to find out what the hardware actually needs. Do we really have
to set this for A+B+C and not for D, or is it enough to set it for
A+C and not for B+D, and what happens if we try to set it for all pipes.

If the hardware only needs it for some kind of subset of the pipes,
then I think we need to do some kind of slight fixup in the readout
code to convert the masks into a more reasonable form for the
WARN_ON()s/etc.

> 
> Also PRIMARY_ULTRA_JOINER_ENABLE is to be set for A. For other pipes 
> this bit will be reset.
> 
> Though only C is ultrajoiner secondary pipe, but since for other pipes 
> this bit is reset, how to make that distinction between C and others.
> 
> I mean readout will tell ultrajoiner primary as A and ultrajoiner 
> secondary as B,C,D as bit is reset for all three.
> 
> Currently we have secondary ultrajoiner pipes reading 0xE.
> 
> Regards,
> 
> Ankit
> 
> >>> +			dss_ctl1_val |= ULTRA_JOINER_ENABLE;
> >>> +
> >>> +		if (intel_crtc_is_ultrajoiner_primary(crtc_state))
> >>> +			dss_ctl1_val |= PRIMARY_ULTRA_JOINER_ENABLE;
> >>> +
> >>>   		dss_ctl1_val |= BIG_JOINER_ENABLE;
> >>> +
> >>>   		if (intel_crtc_is_bigjoiner_primary(crtc_state))
> >>>   			dss_ctl1_val |= PRIMARY_BIG_JOINER_ENABLE;
> >>>   	}
> >>> -- 
> >>> 2.45.2
> >> -- 
> >> Ville Syrjälä
> >> Intel

-- 
Ville Syrjälä
Intel
