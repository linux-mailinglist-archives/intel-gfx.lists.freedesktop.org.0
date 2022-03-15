Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F199B4DA3D8
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 21:18:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3590610E25D;
	Tue, 15 Mar 2022 20:18:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83BC510E25D
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Mar 2022 20:18:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647375500; x=1678911500;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=PaGu4/GJ5bt7sTH0D9UHtHhkb0OY0NJ5fJJFK0RVS7A=;
 b=exD3mnwugL+ctoRnHQ4vA9PB6bRUH6BMW5i+teTUuaEybDq2sTVZffge
 RkUeNWEKACglGhC9aab4C3W/fQLhsvxM2mlhN/cgvgX5zV6YxYkz9mDeN
 7+O2hktMsose08sAjYYMwOvulyRbS5+s8hfSPyWVDl6+TCUyEpsIA8/Jz
 i/DESghvsGVWTec5yit14P6LagW7mO5UVwaZbi+XI2l025w/hAdDPXga2
 iH1DSYSwqQghDylk4jWeisKBIhOQDu+1BS799+Ub8lJZKsspIy/OlF7mj
 UVUkYvLdSwySanvxqp9OgfvRjd+x7kH05f7xu0dte4XFFA45I3sBAQnB3 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="255245260"
X-IronPort-AV: E=Sophos;i="5.90,184,1643702400"; d="scan'208";a="255245260"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 13:18:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,184,1643702400"; d="scan'208";a="516028821"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga006.jf.intel.com with SMTP; 15 Mar 2022 13:18:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 15 Mar 2022 22:18:16 +0200
Date: Tue, 15 Mar 2022 22:18:16 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <YjD0iBG/f5Uo0fCD@intel.com>
References: <20220315132752.11849-1-ville.syrjala@linux.intel.com>
 <20220315132752.11849-8-ville.syrjala@linux.intel.com>
 <10b0bfbcb63cfe3df99e5181d166880b1cb09246.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <10b0bfbcb63cfe3df99e5181d166880b1cb09246.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 7/9] drm/i915: Do DRRS disable/enable during
 pre/post_plane_update()
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 15, 2022 at 06:48:12PM +0000, Souza, Jose wrote:
> On Tue, 2022-03-15 at 15:27 +0200, Ville Syrjala wrote:
> > @@ -217,13 +216,12 @@ void intel_drrs_enable(const struct intel_crtc_state *crtc_state)
> >  void intel_drrs_disable(const struct intel_crtc_state *old_crtc_state)
> >  {
> >  	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
> > -	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> >  
> >  	if (!old_crtc_state->has_drrs)
> >  		return;
> >  
> > -	drm_dbg_kms(&dev_priv->drm, "[CRTC:%d:%s] Disabling DRRS\n",
> > -		    crtc->base.base.id, crtc->base.name);
> > +	if (!old_crtc_state->hw.active)
> > +		return;
> 
> 
> Changes looks good but now there will not be any DRRS debug message, can you at least add debug message in intel_drrs_compute_config() when DRRS is
> allowed?

I think we should just add it to the crtc state dump. It's sort of there
already by way of non-zero M2/N2, but I guess having a more explicit debug
for it wouldn't hurt.

> 
> With that:
> 
> Reviewed-by: José Roberto de Souza <jose.souza@intel.com>

Thanks.

-- 
Ville Syrjälä
Intel
