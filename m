Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 083ED9AFAD0
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 09:15:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 759AA10EA07;
	Fri, 25 Oct 2024 07:15:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mxj/fNe8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4296110E2AC;
 Fri, 25 Oct 2024 07:15:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729840535; x=1761376535;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=1fPavub8Oaa/6y182nRGq4t6UDhC8AztzVqIj7IcZ4Q=;
 b=mxj/fNe8y2RbDVdrsiSO8StwzVvITWtJ2PdKT3G96yPYuvFr+J8YyzlG
 +s4jhAsaL2UQ/jZF5vS0piZt2qVNoSNCoJW5ZjwPMHz5HZWk9se6Vn3JL
 cHz3NJTIuBQbEtaujw1t4jP7pjboLSBPEr5h5tLTcCqUUzU4DNNdwpn3f
 hU03HxghWGP1ZGEvfvGtHhemcwW3td2YWyRsYH+8PlgY7emI6x717YOgj
 bENTFyahD0WS0WQWxwGcQQgSUmbUsiTWsNrgIFc/3yxhPjZ2du4+Ginqe
 xiNI852O3FyrsI0r0vIR6IY3DJ5kjttc1cWBdWlJT1q2xl0uK03SRtdbz g==;
X-CSE-ConnectionGUID: 9ncFhSaYSeWohNwyyj8bXQ==
X-CSE-MsgGUID: 1WG/wiA6QyC5e2dlMZqBNQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="52055137"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="52055137"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 00:15:34 -0700
X-CSE-ConnectionGUID: bkunYz8BQjaiAZ7TT3szng==
X-CSE-MsgGUID: nrlozu31Q8+dAAvDaPx92Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,231,1725346800"; d="scan'208";a="80939123"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 25 Oct 2024 00:15:31 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 25 Oct 2024 10:15:30 +0300
Date: Fri, 25 Oct 2024 10:15:30 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Cc: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "Roper, Matthew D" <matthew.d.roper@intel.com>
Subject: Re: [PATCH 1/5] drm/i915/display: Fix the plane max height and width
 limits
Message-ID: <ZxtFkv3MAIi-4d7G@intel.com>
References: <20241025060136.9884-1-suraj.kandpal@intel.com>
 <20241025060136.9884-2-suraj.kandpal@intel.com>
 <Zxs40xP4Bo33fqe8@intel.com>
 <SN7PR11MB67508BC9455963CD8311ADCEE34F2@SN7PR11MB6750.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <SN7PR11MB67508BC9455963CD8311ADCEE34F2@SN7PR11MB6750.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
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

On Fri, Oct 25, 2024 at 06:26:10AM +0000, Kandpal, Suraj wrote:
> =

> =

> > -----Original Message-----
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Sent: Friday, October 25, 2024 11:51 AM
> > To: Kandpal, Suraj <suraj.kandpal@intel.com>
> > Cc: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; Na=
utiyal,
> > Ankit K <ankit.k.nautiyal@intel.com>; Roper, Matthew D
> > <matthew.d.roper@intel.com>
> > Subject: Re: [PATCH 1/5] drm/i915/display: Fix the plane max height and=
 width
> > limits
> > =

> > On Fri, Oct 25, 2024 at 11:31:32AM +0530, Suraj Kandpal wrote:
> > > Fix the plane max height and width limits taking into account the
> > > joined pipe limits too.
> > >
> > > Bspec: 28692, 49199, 68858
> > > Fixes: 63dc014e37b9 ("drm/i915/dp: Allow big joiner modes in
> > > intel_dp_mode_valid(), v3.")
> > > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c | 19 ++++++++++++++++---
> > >  1 file changed, 16 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > index ef1436146325..fc578af4f394 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -8450,9 +8450,22 @@ intel_mode_valid_max_plane_size(struct
> > drm_i915_private *dev_priv,
> > >  	 * plane so let's not advertize modes that are
> > >  	 * too big for that.
> > >  	 */
> > > -	if (DISPLAY_VER(dev_priv) >=3D 11) {
> > > -		plane_width_max =3D 5120 * num_joined_pipes;
> > > -		plane_height_max =3D 4320;
> > > +	if (DISPLAY_VER(dev_priv) >=3D 20) {
> > > +		if (num_joined_pipes > 1) {
> > > +			plane_width_max =3D 8192;
> > > +			plane_height_max =3D 4800;
> > > +		} else {
> > > +			plane_width_max =3D 5120;
> > > +			plane_height_max =3D 4096;
> > =

> > The joiner operates on horizontal lines. Why would the vertical resolut=
ion
> > change here?
> > =

> =

> This is what I got from the bspec when pipe are joined the vertical resol=
ution ends up
> Changing =


Those bspec pages look very confused.

-- =

Ville Syrj=E4l=E4
Intel
---------------------------------------------------------------------
Intel Finland Oy
Registered Address: PL 281, 00181 Helsinki =

Business Identity Code: 0357606 - 4 =

Domiciled in Helsinki =


This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.

