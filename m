Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4734C20A7CD
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2020 23:54:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82BB189D49;
	Thu, 25 Jun 2020 21:54:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C6DA89D49
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 21:54:02 +0000 (UTC)
IronPort-SDR: 7zts87qHjY4j+9i73xqaIZm98dcCyGx5egi4hfZ5+OsQ0RWnJUAgMdiskf9JkjTChQNPAlt6OH
 JUUDQjKVq6BA==
X-IronPort-AV: E=McAfee;i="6000,8403,9663"; a="144174964"
X-IronPort-AV: E=Sophos;i="5.75,280,1589266800"; d="scan'208";a="144174964"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2020 14:54:01 -0700
IronPort-SDR: FV3eRleBi6/H6G1r/btGfX/wJRS9BL5o/KeBizQcFOA6gD9cZaikj9KWXHddQBXtbTZnxfzw2U
 5e8KyeH4whkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,280,1589266800"; d="scan'208";a="264046129"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by fmsmga007.fm.intel.com with ESMTP; 25 Jun 2020 14:54:01 -0700
Date: Thu, 25 Jun 2020 14:55:28 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200625215527.GA30431@intel.com>
References: <20200624221108.10038-1-manasi.d.navare@intel.com>
 <20200625212622.GW6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200625212622.GW6112@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v3 1/2] drm/i915/dp: Helper for checking
 DDI_BUF_CTL Idle status
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jun 26, 2020 at 12:26:22AM +0300, Ville Syrj=E4l=E4 wrote:
> On Wed, Jun 24, 2020 at 03:11:07PM -0700, Manasi Navare wrote:
> > Modify the helper to add a fixed delay or poll with timeout
> > based on platform specification to check for either Idle bit
> > set (DDI_BUF_CTL is idle for disable case)
> > =

> > v2:
> > * Use 2 separate functions or idle and active (Ville)
> > =

> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Cc: Imre Deak <imre.deak@intel.com>
> > Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c | 17 ++++++++---------
> >  1 file changed, 8 insertions(+), 9 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm=
/i915/display/intel_ddi.c
> > index 884b507c5f55..7d5c8ab88fc4 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -1184,16 +1184,15 @@ static void intel_prepare_hdmi_ddi_buffers(stru=
ct intel_encoder *encoder,
> >  static void intel_wait_ddi_buf_idle(struct drm_i915_private *dev_priv,
> >  				    enum port port)
> >  {
> > -	i915_reg_t reg =3D DDI_BUF_CTL(port);
> > -	int i;
> > -
> > -	for (i =3D 0; i < 16; i++) {
> > -		udelay(1);
> > -		if (intel_de_read(dev_priv, reg) & DDI_BUF_IS_IDLE)
> > -			return;
> > +	if (IS_BROXTON(dev_priv)) {
> > +		udelay(16);
> > +		return;
> >  	}
> > -	drm_err(&dev_priv->drm, "Timeout waiting for DDI BUF %c idle bit\n",
> > -		port_name(port));
> > +
> > +	if (wait_for_us((intel_de_read(dev_priv, DDI_BUF_CTL(port)) &
> > +			 DDI_BUF_IS_IDLE), 600))
> =

> Why 600?

Yes thats a mistake, I will change it to 16usecs

Manasi

> =

> > +		drm_err(&dev_priv->drm, "Timeout waiting for DDI BUF %c to get idle\=
n",
> > +			port_name(port));
> >  }
> >  =

> >  static u32 hsw_pll_to_ddi_pll_sel(const struct intel_shared_dpll *pll)
> > -- =

> > 2.19.1
> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
