Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6E68BA8866
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Sep 2025 11:09:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1151410E3DF;
	Mon, 29 Sep 2025 09:09:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WOi1pGmO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 570D310E3DE;
 Mon, 29 Sep 2025 09:09:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759136981; x=1790672981;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=wirSoz3C07AC6o5WhPdmtslrxzgVr3wLVQOCViOeVdw=;
 b=WOi1pGmON+0Kq6BQUte0NUTWOy2LMIkKp8x3fLTOA/0lMpo46hEv01vF
 6v8qj+sP4LNONYQh8f5FDsqzJBgtmG3fewBejDwh7JRPR81rxqw4J00FH
 rdrtYLPmiOowlLsqDbMIBlFfTThGiANeu3k8TVa6pphyYW8BkiQLHv1SH
 hrH0yfvzFxDkGyko9gfDlAfERlW68o9siHPIE1ze7s3rF8Pi3i5RWh9y2
 9W+nnnpY3ssR85AUfwYB1RrXCtDnakforeYmZNxpnqhYC6VYHClQ0VagA
 WF/AC7VypNjrCrcu0OKiBZTe/7zhLZ5AMDxTqmt5jSxEGhaT+/YPRM82Q Q==;
X-CSE-ConnectionGUID: PSsgYH+FRmeT1RyNcpLUNA==
X-CSE-MsgGUID: Gfz4vKu2TTuqK5/Y0pR5iQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="61332327"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="61332327"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2025 02:09:41 -0700
X-CSE-ConnectionGUID: wk4aSr6LRzWscLPVfr7zBw==
X-CSE-MsgGUID: cD48UJrQSb2RlSemuSTFsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,301,1751266800"; d="scan'208";a="182478956"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.245.198])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2025 02:09:39 -0700
Date: Mon, 29 Sep 2025 12:09:36 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 15/15] drm/i915/display: Use optimized guardband to set
 vblank start
Message-ID: <aNpM0JQbDlD94Beo@intel.com>
References: <20250928070541.3892890-1-ankit.k.nautiyal@intel.com>
 <20250928070541.3892890-16-ankit.k.nautiyal@intel.com>
 <aNpHHxXXFOEKDUmP@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aNpHHxXXFOEKDUmP@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Mon, Sep 29, 2025 at 11:45:19AM +0300, Ville Syrjälä wrote:
> On Sun, Sep 28, 2025 at 12:35:40PM +0530, Ankit Nautiyal wrote:
> > +static void intel_crtc_vblank_delay(struct intel_atomic_state *state,
> > +				    struct intel_crtc *crtc)
> > +{
> > +	struct intel_crtc_state *crtc_state =
> > +		intel_atomic_get_new_crtc_state(state, crtc);
> > +	struct drm_display_mode *adjusted_mode =
> > +		&crtc_state->hw.adjusted_mode;
> > +	int vblank_delay = 0;
> > +
> > +	vblank_delay = intel_crtc_min_guardband_delay(state, crtc);
> > +
> > +	adjusted_mode->crtc_vblank_start += vblank_delay;
> 
> The situation with crtc_vblank_start is already kinda broken,
> and I think we need to fix that first somehow.
> 
> Currently crtc_vblank_start is assumed to be the vblank_start
> for the fixed refresh rate case. That value can be different
> from the variable refresh rate case whenever
> always_use_vrr_tg()==false. On icl/tgl it's always different
> due to the extra vblank delay, and also on adl+ it could be
> different if we were to use an optimized guardband.
> 
> I think there are a few options how we might solve this:
> 1. keep crtc_vblank_start as is, and make sure every user of it
>    gets adjusted to also deal with the vrr case correctly
> 2. enable always_use_vrr_tg() whenever there might be switch
>    between vrr and fixed refresh rate, which I think would mean
>    crtc_state->vrr.in_range==true.

And just as a reminder in case I think of it again later:
3. use an optimized guardband only when always_use_vrr_tg()==true

But that wouldn't actually solve the already existing issue
on icl/tgl. So not really a good option.


-- 
Ville Syrjälä
Intel
