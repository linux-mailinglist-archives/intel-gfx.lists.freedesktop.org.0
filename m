Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC5666C23BD
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 22:33:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC4A810E31D;
	Mon, 20 Mar 2023 21:33:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6950610E068
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 21:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679347985; x=1710883985;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=5CJsxJm4ohjXyQM9/Z7eJBKQwQPgmwV/ZkiruKj6fR8=;
 b=epbqiju6i+xWoFIKeC42yZ1WCLdo5K6c8Phtr8vDH5yAjbePoCEBi8q2
 5KKeSWZuNhVzOB8aAc8GsyLdMtx+OVvGdE2KC5beHYzT979rVhJymBm6d
 AYxY5jdDO2tipuYY3g0kS0gHrw3vsLZa36PDqoiCwsW6kV+Jf+Ybxo6WD
 XmEMV0qJstyJ1EBdyvuJ7Q+aucpYsdtRA176hPPoKp7eM4eeNP3rtPNJo
 JTEB+HKrzCutUVyCVHI0zx/emE+Agp+1mEpytifRzpmv1be+PcYua21Y+
 Q1/e3KehC1oB6GxW0UNlgLlmdJT+tfxzFxKzYfn7g9/njKplaJHcyd7LO Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="401357453"
X-IronPort-AV: E=Sophos;i="5.98,276,1673942400"; d="scan'208";a="401357453"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 14:33:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="855410236"
X-IronPort-AV: E=Sophos;i="5.98,276,1673942400"; d="scan'208";a="855410236"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 14:33:03 -0700
Date: Mon, 20 Mar 2023 23:33:00 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <ZBjRDHFt4MTYKMJ4@ideak-desk.fi.intel.com>
References: <20230316131724.359612-1-imre.deak@intel.com>
 <20230316131724.359612-12-imre.deak@intel.com>
 <ZBi7lM6K22AK3VXo@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZBi7lM6K22AK3VXo@intel.com>
Subject: Re: [Intel-gfx] [PATCH 11/14] drm/i915/tc: Assume a TC port is
 legacy if VBT says the port has HDMI
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 20, 2023 at 10:01:24PM +0200, Ville Syrjälä wrote:
> On Thu, Mar 16, 2023 at 03:17:21PM +0200, Imre Deak wrote:
> > Since an HDMI output can only be enabled in legacy mode on TC ports,
> > assume that VBT is wrong and the port is legacy if VBT says the port is
> > non-legacy and has HDMI.
> > 
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c | 7 +++++++
> >  1 file changed, 7 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index c531fee888a49..e79da640759c3 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -4494,6 +4494,13 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
> >  			!intel_bios_encoder_supports_typec_usb(devdata) &&
> >  			!intel_bios_encoder_supports_tbt(devdata);
> >  
> > +		if (!is_legacy && init_hdmi) {
> > +			drm_dbg_kms(&dev_priv->drm,
> > +				    "VBT says port %c is non-legacy TC and has HDMI, assume it's legacy TC\n",
> > +				    port_name(port));
> > +			is_legacy = true;
> > +		}
> 
> Have we actually seen this in practice?

Not on production machines, but possibly only due to the fixup based on
HPD later. IIRC the ICL RVP I tested has such a VBT.

> And does the port then actually work correctly?

On the above ICL yes, in general an HDMI-only TC port will only work in
legacy mode.

> If not then I think I'd just WARN an bail here.

Imo it's better to enable it in the only mode it works. However if VBT
says both DP and HDMI is present then the port may be DP-alt/TBT in
reality; so how about the above but only in case of
!is_legacy && !init_dp && init_hdmi
and relying on the HPD fixup otherwise?

> > +
> >  		intel_tc_port_init(dig_port, is_legacy);
> >  
> >  		encoder->update_prepare = intel_ddi_update_prepare;
> > -- 
> > 2.37.1
> 
> -- 
> Ville Syrjälä
> Intel
