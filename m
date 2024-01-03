Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C23F0822BFB
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jan 2024 12:19:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CAC610E27B;
	Wed,  3 Jan 2024 11:19:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7073010E27B
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jan 2024 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704280794; x=1735816794;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=hVoqYQkTcDgOowBkusT16YcayJAmiZEJrhiqyzWHD9k=;
 b=NmGH4aYEg7RoEo5/r7ykGVHYOV3QNjvW9cRE6yaGyzxr8X+ZMB9DKhbe
 Sp0JfuAoMUqdntS11OAo/uKCOu86BGzEBLyp59peG5hI5UxJ1D68hdn+6
 2soWbwspbBoLTjv0HoSXnBTl3gfNrzNKMAJEyO+x91H36kpngPcXp7Yvu
 rzVAcIcbfCIwSsnioiLx+pG/Q+8cs5THIV2gj2UP6P6NoDDYU9J2Z7fod
 i2XWldGCrg9v4+PCU3akOGpmqLgM5Ma5+SJUeFvq1qt+qjS5G27fhnDC3
 zEww5/Q3cvbDdW2gc4vMWG6udciqyYY/gc2qV7fRqlUWB1/ZjZ+R78tuk g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10941"; a="10389707"
X-IronPort-AV: E=Sophos;i="6.04,327,1695711600"; d="scan'208";a="10389707"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2024 03:19:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10941"; a="903418900"
X-IronPort-AV: E=Sophos;i="6.04,327,1695711600"; d="scan'208";a="903418900"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2024 03:19:50 -0800
Date: Wed, 3 Jan 2024 13:20:01 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: Re: [PATCH] drm/i915/dp: Fix the PSR debugfs entries wrt. MST
 connectors
Message-ID: <ZZVC4XwaAbSGnpqF@ideak-desk.fi.intel.com>
References: <20240103110029.2408342-1-imre.deak@intel.com>
 <8c206b5963fa88890a62db33a5d4a34513025a1f.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <8c206b5963fa88890a62db33a5d4a34513025a1f.camel@intel.com>
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
Reply-To: imre.deak@intel.com
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 03, 2024 at 01:08:05PM +0200, Hogander, Jouni wrote:
> On Wed, 2024-01-03 at 13:00 +0200, Imre Deak wrote:
> > MST connectors don't have a static attached encoder, as their encoder
> > can change depending on the pipe they use; so the encoder for an MST
> > connector can't be retrieved using intel_dp_attached_encoder() (which
> > may return NULL for MST). Most of the PSR debugfs entries depend on a
> > static connector -> encoder mapping which is only true for eDP and
> > SST
> > DP connectors and not for MST. These debugfs entries were enabled for
> > MST connectors as well recently to provide PR information for them,
> > but
> > handling MST connectors needs more changes. Fix this by re-disabling
> > for
> > now the PSR entries on MST connectors.
> >
> > Fixes: ef75c25e8fed ("drm/i915/panelreplay: Debugfs support for panel
> > replay")
> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9850
> > Cc: Animesh Manna <animesh.manna@intel.com>
> > Cc: Jouni Högander <jouni.hogander@intel.com>
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_psr.c | 7 ++-----
> >  1 file changed, 2 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> > b/drivers/gpu/drm/i915/display/intel_psr.c
> > index 494d08817d71e..b5b9340e505e3 100644
> > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > @@ -3310,11 +3310,8 @@ void intel_psr_connector_debugfs_add(struct
> > intel_connector *connector)
> >         struct drm_i915_private *i915 = to_i915(connector->base.dev);
> >         struct dentry *root = connector->base.debugfs_entry;
> >
> > -       if (connector->base.connector_type != DRM_MODE_CONNECTOR_eDP)
> > {
> > -               if (!(HAS_DP20(i915) &&
> > -                     connector->base.connector_type ==
> > DRM_MODE_CONNECTOR_DisplayPort))
> > -                       return;
> > -       }
> > +       if (connector->base.connector_type != DRM_MODE_CONNECTOR_eDP)
> > +               return;
> 
> Would it be possible to disable it only for MST connector? I think this
> is disabling it also for DP SST, no?

Yes, it keeps it enabled only for eDP. It could be enabled for SST as
well yes, but I thought as a fix the above is better, adding support for
other connector types as a follow up.

> BR,
> 
> Jouni Högander
> >
> >         debugfs_create_file("i915_psr_sink_status", 0444, root,
> >                             connector, &i915_psr_sink_status_fops);
> 
