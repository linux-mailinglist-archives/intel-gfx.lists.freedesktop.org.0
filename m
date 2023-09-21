Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A6937A93DC
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 13:35:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D53D610E5C6;
	Thu, 21 Sep 2023 11:34:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9873310E5C6
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Sep 2023 11:34:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695296098; x=1726832098;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=qy8Rn1/Qe2qqC+x2ClvOLTFvP9jDKoD6JKqfsR7jaGA=;
 b=C5frO1x71ZRzEMixk0eLHBzbF/sp2+0YNOdDnFyUOUgq3IYRbUfsOv5l
 gptIo4PkNvlPGs33U82EvzeFpSZBcU2atlpCQsKjHdYh4uDolmrEAl3HM
 ef/9LALabpaNiyVwtfplRrcrOA/wIYJ6Uar91S0sIrNR6ju3D9TViPuX/
 4MPVZ7zW3UuIPs2kUgRd7MVDiuYvp6OWGhDcKuD5xLa+i5OamHkHEJUvV
 ue4TFOaEa1TW346JPrpebQD6aTVaGAVpEkYHMeUyD5GG1vQixhowtATyI
 FQDNit7FX67a2pi854ezumcZ34t4buZo+QEj1NlcmfPQRyNnmGIDnP3oF Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="365548462"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="365548462"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 04:34:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="723713770"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="723713770"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by orsmga006.jf.intel.com with SMTP; 21 Sep 2023 04:34:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 21 Sep 2023 14:34:55 +0300
Date: Thu, 21 Sep 2023 14:34:55 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Karthik B S <karthik.b.s@intel.com>
Message-ID: <ZQwqX8evJ2H8Uvbc@intel.com>
References: <20230919095659.10742-1-ville.syrjala@linux.intel.com>
 <83d41b3c-cdeb-32ba-e03f-24470fb5ccc4@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <83d41b3c-cdeb-32ba-e03f-24470fb5ccc4@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] Revert "drm/i915/mst: Populate
 connector->ddc"
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

On Thu, Sep 21, 2023 at 12:28:53PM +0530, Karthik B S wrote:
> 
> On 9/19/2023 3:26 PM, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > This reverts commit 959fb1a686528df1b8fb0cc7bec8ff851b1594a5.
> >
> > Looks like the core MST code might not call i2c_adapter() for us
> > in time, and thus creating the ddc symlink will fail. This will
> > in fact fail the entire connector registration, but the MST code
> > doesn't really seem to care about that and blindly plows ahead.
> > All we may get in the logs is a nearly back to back
> > register+unregister debug messages:
> >   [drm:drm_dp_mst_connector_late_register [drm_display_helper]] registering DPMST remote bus for card0-DP-7
> >   [drm:intel_dp_hpd_pulse [i915]] DPRX ESI: 42 00 00 02
> >   [drm:drm_dp_mst_connector_early_unregister [drm_display_helper]] unregistering DPMST remote bus for card0-DP-7
> >
> > Untangling the initialization order may take some real work,
> > so let's just revert the ddc symlink addition for now...
> >
> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9357
> > Fixes: 959fb1a68652 ("drm/i915/mst: Populate connector->ddc")
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Tested-by: Karthik B S <karthik.b.s@intel.com>

I assume that means it helped with the actual problem -> pushed to din
Thanks.

> > ---
> >   drivers/gpu/drm/i915/display/intel_dp_mst.c | 6 ++----
> >   1 file changed, 2 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > index 80411ce85fc0..ff3accebf0a8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > @@ -1110,10 +1110,8 @@ static struct drm_connector *intel_dp_add_mst_connector(struct drm_dp_mst_topolo
> >   	drm_dp_mst_get_port_malloc(port);
> >   
> >   	connector = &intel_connector->base;
> > -	ret = drm_connector_init_with_ddc(dev, connector,
> > -					  &intel_dp_mst_connector_funcs,
> > -					  DRM_MODE_CONNECTOR_DisplayPort,
> > -					  &port->aux.ddc);
> > +	ret = drm_connector_init(dev, connector, &intel_dp_mst_connector_funcs,
> > +				 DRM_MODE_CONNECTOR_DisplayPort);
> >   	if (ret) {
> >   		drm_dp_mst_put_port_malloc(port);
> >   		intel_connector_free(intel_connector);

-- 
Ville Syrjälä
Intel
