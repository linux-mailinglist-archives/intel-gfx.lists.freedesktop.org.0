Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D20B4EDB4E
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Mar 2022 16:05:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57C0810F00F;
	Thu, 31 Mar 2022 14:05:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D30B910F3D9
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Mar 2022 14:05:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648735536; x=1680271536;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=J5IBfmTANsh3ousbNixdeDyEfYlg4Qz04P+h7LCfwsU=;
 b=Y2tZwDyZJ7W+tTXWJBaeTN1rWfTVxJ8bNfIp2IhKzC+L/eosMwpUsllm
 rY8rWqTluc5eaidVk0zImgtaIJ0MYoqc54Igi9xfowJdn9tCdMn72jVX1
 39dtVS9wYY8aDnzfDYf6SY78A9raLF/8EUEj/ZNExq+20YPGwl/4z8+Xo
 bkaUz8KFBn3ULuxCo8mqzcVNxsrdV2j7hgCSndihlAscbFZwISnYQjBrX
 Kto3dFdyyBC5TUbK7H4AGBxnZCgeuYkWHg/xzuYt9hvu12NPG0TtQ7EUx
 wqbG+1gvNgwv7aPeig9S7vL6Ilm6eLCHlvKkC+DZ5CSGghTkOwIiVJG0U g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="259555901"
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="259555901"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 07:05:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="586443046"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by orsmga001.jf.intel.com with SMTP; 31 Mar 2022 07:05:31 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 31 Mar 2022 17:05:31 +0300
Date: Thu, 31 Mar 2022 17:05:31 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YkW1K8FGAQziqODL@intel.com>
References: <20220331112822.11462-1-ville.syrjala@linux.intel.com>
 <20220331112822.11462-12-ville.syrjala@linux.intel.com>
 <87pmm28bps.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87pmm28bps.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 11/11] drm/i915: Allow static DRRS on LVDS
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 31, 2022 at 04:59:11PM +0300, Jani Nikula wrote:
> On Thu, 31 Mar 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Nothing special about static DRRS on LVDS, it's just your
> > bog standard modeset. Let's allow it.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_lvds.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
> > index 73129d21f5e5..e8478161f8b9 100644
> > --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> > +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> > @@ -968,7 +968,8 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
> >  	intel_connector->edid = edid;
> >  
> >  	/* Try EDID first */
> > -	intel_panel_add_edid_fixed_modes(intel_connector, false);
> > +	intel_panel_add_edid_fixed_modes(intel_connector,
> > +					 dev_priv->vbt.drrs_type != DRRS_TYPE_NONE);
> 
> I guess the final question on this, and the previous patch for that
> matter, is why would the VBT block your regular modeset between two
> different refresh rates?
> 
> It does sound like the VBT setting is more about OEM decided policy than
> anything else.

Or just lack of validation.

> 
> Anyway,
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> >  
> >  	/* Failed to get EDID, what about VBT? */
> >  	if (!intel_panel_preferred_fixed_mode(intel_connector))
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Ville Syrjälä
Intel
