Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 140CAA32C34
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 17:46:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C01EB10E934;
	Wed, 12 Feb 2025 16:46:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="brRKkd2w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74CE910E934
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Feb 2025 16:46:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739378764; x=1770914764;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=xOjIt6HQ4ZN26vmRQGTNIdNE1D7FP+WHcmbUCqShSyw=;
 b=brRKkd2wZCK1CIVAgNfafQcB3I8nGVbkbDbTgpFbQftqs9t7zfGUYkYp
 YcsngKqu7YF5bGQiq1jnoPBkEKY53YFHAJY62IEvhHcYPR6hD+IsVBX/9
 XruwX/tDquH9DMy9w7t9Uw6UFPxVPsD+3s7apSqdIZ7yesIQ+5RPBXaBj
 SCt1nIbZVbIf3hYY4UQplykWiLtqrxiRQS5CJKp4hkhOu517JxApd0nSS
 /zf0St5RSX107j94bRnt433pLpvqrKzmoxr7hgNAfoGWlr82tqKfUgS0w
 61NwvZvf0dsjyoTjhwrvwdmNNi2ZFAGaC1BXgP86CncXlJem+AfU86lSP g==;
X-CSE-ConnectionGUID: zJFN6bmFR6uBjIKI+iI1lw==
X-CSE-MsgGUID: p7cw/FwPRbWR2VxahxS+Ug==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="62515259"
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="62515259"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 08:46:04 -0800
X-CSE-ConnectionGUID: TfVoFx7vS+CtEXh37LAtGQ==
X-CSE-MsgGUID: UKdvzbfyQ52a/7svajzQKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="113083050"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 12 Feb 2025 08:46:02 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 12 Feb 2025 18:46:00 +0200
Date: Wed, 12 Feb 2025 18:46:00 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maarten Lankhorst <maarten@lankhorst.se>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 11/11] drm/i915: Pimp the Y plane selection debugs
Message-ID: <Z6zQSNliqn8NVi7B@intel.com>
References: <20250127172156.21928-1-ville.syrjala@linux.intel.com>
 <20250127172156.21928-12-ville.syrjala@linux.intel.com>
 <cc44cbb1-786b-4342-b23a-b213b069b61a@lankhorst.se>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cc44cbb1-786b-4342-b23a-b213b069b61a@lankhorst.se>
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

On Wed, Feb 12, 2025 at 10:39:20AM +0100, Maarten Lankhorst wrote:
> Hey,
> 
> Patch series looks good.
> 
> Reviewed-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> 
> One small comment, I've noticed that in 10/11 I still see a mention of 
> slave plane in the comments, it would probably be best to fixup any 
> mention to Y plane in the comments too.

Ack, I fixed those up and rebased+reposted the series
due to the earlier intel_display changes.

Thanks for the review.

> 
> Cheers,
> 
> ~Maarten
> 
> On 2025-01-27 18:21, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Use the standard [PLANE:%d:%s] stuff for the Y plane debugs,
> > and more clearly spell out which plane is UV plane and which
> > is Y plane when linking them.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >   drivers/gpu/drm/i915/display/intel_atomic_plane.c | 8 +++++---
> >   1 file changed, 5 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > index 1fb35f4a7cf4..9c2e8aaba8cd 100644
> > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > @@ -1236,8 +1236,9 @@ static void link_nv12_planes(struct intel_crtc_state *crtc_state,
> >   	crtc_state->data_rate[y_plane->id] = crtc_state->data_rate_y[uv_plane->id];
> >   	crtc_state->rel_data_rate[y_plane->id] = crtc_state->rel_data_rate_y[uv_plane->id];
> >   
> > -	drm_dbg_kms(&dev_priv->drm, "Using %s as Y plane for %s\n",
> > -		    y_plane->base.name, uv_plane->base.name);
> > +	drm_dbg_kms(&dev_priv->drm, "UV plane [PLANE:%d:%s] using Y plane [PLANE:%d:%s]\n",
> > +		    uv_plane->base.base.id, uv_plane->base.name,
> > +		    y_plane->base.base.id, y_plane->base.name);
> >   
> >   	/* Copy parameters to Y plane */
> >   	intel_plane_copy_hw_state(y_plane_state, uv_plane_state);
> > @@ -1328,7 +1329,8 @@ static int icl_check_nv12_planes(struct intel_atomic_state *state,
> >   
> >   		if (!y_plane_state) {
> >   			drm_dbg_kms(&dev_priv->drm,
> > -				    "Need %d free Y planes for planar YUV\n",
> > +				    "[CRTC:%d:%s] need %d free Y planes for planar YUV\n",
> > +				    crtc->base.base.id, crtc->base.name,
> >   				    hweight8(crtc_state->nv12_planes));
> >   
> >   			return -EINVAL;

-- 
Ville Syrjälä
Intel
