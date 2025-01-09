Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EA5BA07F68
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2025 18:56:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B425C10E479;
	Thu,  9 Jan 2025 17:56:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ECcIQWMY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6983F10E478
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jan 2025 17:56:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736445401; x=1767981401;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=34R7Cmz2f2+PRnShU92WfYkFKyq3kVNZ90e5fkKMo/A=;
 b=ECcIQWMY3KIQpAWyO0Kd98QVUJeeMGtSX+8nJRmSc9idQeXyuwhQs1A1
 DVSg5TmHIp9s+/jDfX5ar/LPqrLCPef9luqG52oGgKlYg6gkula7iT0+f
 mggL8Gx6wg3Oyyu4z/GEaQKm/uIpNXjoqGkcDi6rCWvvIoHnJdpDOjcNc
 6XQpKrKASiOKAQCv98+TG3fIvfq4yARgPbijCI0+MygxGwWMBtB2rWhQm
 dhAtjBZD4ELV8H3WgvmyxwJtHvilmuN3IyZuxRGQvPJs5NPov/MJYYlCh
 BrWBVgAn1gydsqmxWazG0Ep3TGhwcVD31StdocDQY0V0NZPlVZXN3iVGW A==;
X-CSE-ConnectionGUID: fhDLi/+zTfuMqovdBvJkcA==
X-CSE-MsgGUID: XR6NoxvyTiybeDN0p11T0A==
X-IronPort-AV: E=McAfee;i="6700,10204,11310"; a="36005786"
X-IronPort-AV: E=Sophos;i="6.12,302,1728975600"; d="scan'208";a="36005786"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 09:56:41 -0800
X-CSE-ConnectionGUID: H80yMtU2Q6GAYUnKIs+DFw==
X-CSE-MsgGUID: SSz+wlfTSOybQfmNi57fsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,302,1728975600"; d="scan'208";a="103673025"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 09 Jan 2025 09:56:39 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 09 Jan 2025 19:56:38 +0200
Date: Thu, 9 Jan 2025 19:56:38 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Luca Coelho <luca@coelho.fi>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 6/8] drm/i915/scaler: Pimp scaler debugs
Message-ID: <Z4AN1hQ7MOgEY-SZ@intel.com>
References: <20241219130827.22830-1-ville.syrjala@linux.intel.com>
 <20241219130827.22830-7-ville.syrjala@linux.intel.com>
 <4c17b6ff17eabe467e0b1241b85d81b83a3182f6.camel@coelho.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4c17b6ff17eabe467e0b1241b85d81b83a3182f6.camel@coelho.fi>
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

On Fri, Dec 20, 2024 at 10:55:02AM +0200, Luca Coelho wrote:
> On Thu, 2024-12-19 at 15:08 +0200, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Include the standard "[CRTC:...]" information in the scaler debugs
> > to make life easier.
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/skl_scaler.c | 25 +++++++++++++++--------
> >  1 file changed, 16 insertions(+), 9 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
> > index cbc71e44fcbb..f6d76ef1a854 100644
> > --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> > +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> > @@ -166,7 +166,8 @@ skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_detach,
> >  	if (DISPLAY_VER(display) >= 9 && crtc_state->hw.enable &&
> >  	    need_scaler && adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE) {
> >  		drm_dbg_kms(display->drm,
> > -			    "Pipe/Plane scaling not supported with IF-ID mode\n");
> > +			    "[CRTC:%d:%s] scaling not supported with IF-ID mode\n",
> > +			    crtc->base.base.id, crtc->base.name);
> 
> You're losing the "Pipe/Plane" string from this log, which could cause
> issues if anyone is grepping for it in some scripts, but it seems
> redundant to me anyway, so scripts (if any) should be fixed instead. ;)

Yeah, expecting debug strings to not change is recipe for failure.

> 
> Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

Thanks. Pushed the lot.

> 
> --
> Cheers,
> Luca.

-- 
Ville Syrjälä
Intel
