Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B5529B3431
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 16:01:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D0A810E4E0;
	Mon, 28 Oct 2024 15:01:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NlFLWMkK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C97610E4E0
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2024 15:01:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730127667; x=1761663667;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=q2PEBeHXPV26su/useQb8Nvi9tlN1VM9/Emvw8vLi7w=;
 b=NlFLWMkKzK0fYcMXb/cVClDBV1w46BcJEzVAzHFtprq+Tyjw4UVUxCJH
 xGlY5H0JixoNjJcV3j8VIAYmrdYposz5DSvdWYG/ekVGgBSia/AU0+Onc
 nFzC6dJ8rtcwu3sU/mGQ0Gqqb2uEdMreRBkK5DFsBW2ZisTfxTIF+piOu
 QthP/TY3qrzpYdkWTEuPBLkiSxOY4kQ62fFYUq2K/QIug9wIA8oIET5aV
 Gq8Dom6FebUrDN53+iFsESG8b7C8bE5gdcgJuogwEiNhbaQitZqwbkMiB
 nBK56YBJD4bqayZUGfdc7SxJGV7vGdxrkb4OPkOYXx7AZNVBGb985Q+5b Q==;
X-CSE-ConnectionGUID: PQE+Hi0zTJu1lyBS9rAWCQ==
X-CSE-MsgGUID: /QbPGE1ESuanwUKENNkvNQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11239"; a="29185628"
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="29185628"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 08:01:06 -0700
X-CSE-ConnectionGUID: 12DN1SPoSTKJ3VNXPaCn9A==
X-CSE-MsgGUID: f6GMM0PSQyuXbia24JuCzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="81747261"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 28 Oct 2024 08:01:04 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 28 Oct 2024 17:01:03 +0200
Date: Mon, 28 Oct 2024 17:01:03 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 6/9] drm/i915: Disable scanout VT-d workaround for TGL+
Message-ID: <Zx-nL8970BVaxlLE@intel.com>
References: <20241009182207.22900-1-ville.syrjala@linux.intel.com>
 <20241009182207.22900-7-ville.syrjala@linux.intel.com>
 <cf761598f491ed4567bd8937b2fca1593bce4e6a.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cf761598f491ed4567bd8937b2fca1593bce4e6a.camel@intel.com>
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

On Thu, Oct 24, 2024 at 10:50:06AM +0000, Hogander, Jouni wrote:
> On Wed, 2024-10-09 at 21:22 +0300, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > TGL+ should no longer need any VT-d scanout workarounds.
> > Don't apply any.
> > 
> > Not 100% sure whether pre-SNB might also suffer from this. The
> > workaround did originate on SNB but who knows if it was just
> > never caught before that. Not that I ever managed to enable
> > VT-d any older hardware. Last time I tried on my ILK it ate
> > the disk!
> 
> Any possibility to have bspec reference or is it just some offline
> documentation?

The workaround is documented in the PLANE_SURF registers.
It is there for pre-TGL and gone for TGL+.

> 
> BR,
> 
> Jouni Högander
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index 2afd10bbe7b8..7c25060e5f32 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -8694,5 +8694,5 @@ void intel_hpd_poll_fini(struct
> > drm_i915_private *i915)
> >  
> >  bool intel_scanout_needs_vtd_wa(struct drm_i915_private *i915)
> >  {
> > -       return DISPLAY_VER(i915) >= 6 && i915_vtd_active(i915);
> > +       return IS_DISPLAY_VER(i915, 6, 11) && i915_vtd_active(i915);
> >  }
> 

-- 
Ville Syrjälä
Intel
