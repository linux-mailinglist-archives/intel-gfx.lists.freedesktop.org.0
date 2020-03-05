Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D1817A69E
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Mar 2020 14:46:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8BD889D7B;
	Thu,  5 Mar 2020 13:46:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10CA489D7B
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Mar 2020 13:46:08 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Mar 2020 05:46:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,518,1574150400"; d="scan'208";a="320207887"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 05 Mar 2020 05:46:05 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 05 Mar 2020 15:46:04 +0200
Date: Thu, 5 Mar 2020 15:46:04 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <20200305134604.GL13686@intel.com>
References: <20200225171125.28885-1-ville.syrjala@linux.intel.com>
 <20200225171125.28885-7-ville.syrjala@linux.intel.com>
 <67b2f1122c23316304d0e10f57a0d356705bafc0.camel@intel.com>
 <20200304182659.GE13686@intel.com>
 <9b9e7c91bf03305e85bb4c9223d5a4bda00af20d.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9b9e7c91bf03305e85bb4c9223d5a4bda00af20d.camel@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 06/20] drm/i915: Polish some dbuf debugs
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 05, 2020 at 09:53:34AM +0000, Lisovskiy, Stanislav wrote:
> On Wed, 2020-03-04 at 20:26 +0200, Ville Syrj=E4l=E4 wrote:
> > On Wed, Mar 04, 2020 at 04:29:47PM +0000, Lisovskiy, Stanislav wrote:
> > > On Tue, 2020-02-25 at 19:11 +0200, Ville Syrjala wrote:
> > > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > =

> > > > Polish some of the dbuf code to give more meaningful debug
> > > > messages and whatnot. Also we can switch over to the per-device
> > > > debugs/warns at the same time.
> > > > =

> > > > Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > ---
> > > >  .../drm/i915/display/intel_display_power.c    | 40 +++++++++--
> > > > ----
> > > > ----
> > > >  1 file changed, 19 insertions(+), 21 deletions(-)
> > > > =

> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> > > > b/drivers/gpu/drm/i915/display/intel_display_power.c
> > > > index 6e25a1317161..e81e561e8ac0 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > > > @@ -4433,11 +4433,12 @@ static void
> > > > intel_power_domains_sync_hw(struct drm_i915_private *dev_priv)
> > > >  	mutex_unlock(&power_domains->lock);
> > > >  }
> > > >  =

> > > > -static inline
> > > > -bool intel_dbuf_slice_set(struct drm_i915_private *dev_priv,
> > > > -			  i915_reg_t reg, bool enable)
> > > > +static void intel_dbuf_slice_set(struct drm_i915_private
> > > > *dev_priv,
> > > > +				 enum dbuf_slice slice, bool enable)
> > > >  {
> > > > -	u32 val, status;
> > > > +	i915_reg_t reg =3D DBUF_CTL_S(slice);
> > > > +	bool state;
> > > > +	u32 val;
> > > >  =

> > > >  	val =3D intel_de_read(dev_priv, reg);
> > > >  	val =3D enable ? (val | DBUF_POWER_REQUEST) : (val &
> > > > ~DBUF_POWER_REQUEST);
> > > > @@ -4445,13 +4446,10 @@ bool intel_dbuf_slice_set(struct
> > > > drm_i915_private *dev_priv,
> > > >  	intel_de_posting_read(dev_priv, reg);
> > > >  	udelay(10);
> > > >  =

> > > > -	status =3D intel_de_read(dev_priv, reg) & DBUF_POWER_STATE;
> > > > -	if ((enable && !status) || (!enable && status)) {
> > > > -		drm_err(&dev_priv->drm, "DBus power %s timeout!\n",
> > > > -			enable ? "enable" : "disable");
> > > > -		return false;
> > > > -	}
> > > > -	return true;
> > > > +	state =3D intel_de_read(dev_priv, reg) & DBUF_POWER_STATE;
> > > > +	drm_WARN(&dev_priv->drm, enable !=3D state,
> > > > +		 "DBuf slice %d power %s timeout!\n",
> > > > +		 slice, enable ? "enable" : "disable");
> > > >  }
> > > >  =

> > > >  static void gen9_dbuf_enable(struct drm_i915_private *dev_priv)
> > > > @@ -4467,14 +4465,16 @@ static void gen9_dbuf_disable(struct
> > > > drm_i915_private *dev_priv)
> > > >  void icl_dbuf_slices_update(struct drm_i915_private *dev_priv,
> > > >  			    u8 req_slices)
> > > >  {
> > > > -	int i;
> > > > -	int max_slices =3D INTEL_INFO(dev_priv)-
> > > > > num_supported_dbuf_slices;
> > > > =

> > > > +	int num_slices =3D INTEL_INFO(dev_priv)-
> > > > > num_supported_dbuf_slices;
> > > > =

> > > >  	struct i915_power_domains *power_domains =3D &dev_priv-
> > > > > power_domains;
> > > > =

> > > > +	enum dbuf_slice slice;
> > > >  =

> > > > -	drm_WARN(&dev_priv->drm, hweight8(req_slices) > max_slices,
> > > > -		 "Invalid number of dbuf slices requested\n");
> > > > +	drm_WARN(&dev_priv->drm, req_slices & ~(BIT(num_slices) - 1),
> > > > +		 "Invalid set of dbuf slices (0x%x) requested (num dbuf
> > > > slices %d)\n",
> > > > +		 req_slices, num_slices);
> > > >  =

> > > > -	DRM_DEBUG_KMS("Updating dbuf slices to 0x%x\n", req_slices);
> > > > +	drm_dbg_kms(&dev_priv->drm,
> > > > +		    "Updating dbuf slices to 0x%x\n", req_slices);
> > > >  =

> > > >  	/*
> > > >  	 * Might be running this in parallel to
> > > > gen9_dc_off_power_well_enable
> > > > @@ -4485,11 +4485,9 @@ void icl_dbuf_slices_update(struct
> > > > drm_i915_private *dev_priv,
> > > >  	 */
> > > >  	mutex_lock(&power_domains->lock);
> > > >  =

> > > > -	for (i =3D 0; i < max_slices; i++) {
> > > > -		intel_dbuf_slice_set(dev_priv,
> > > > -				     DBUF_CTL_S(i),
> > > > -				     (req_slices & BIT(i)) !=3D 0);
> > > > -	}
> > > > +	for (slice =3D DBUF_S1; slice < num_slices; slice++)
> > > > +		intel_dbuf_slice_set(dev_priv, slice,
> > > > +				     req_slices & BIT(slice));
> > > =

> > > Would be cool to completely get rid of any magic numbers or
> > > definitions, 0 in a sense is more universal here than DBUF_S1.
> > > =

> > > If we are counting slices as numbers it seems logical that we =

> > > iterate [0..num_slices) range. If you want to name the first slice
> > > explicitly then it probably has to be something like iterator
> > > logic, i.e for (slice =3D FIRST_SLICE; slice !=3D LAST_SLICE; slice++=
).
> > > =

> > > But trying to name it at the same time with comparing to total
> > > _amount_
> > > looks a bit confusing.
> > =

> > This is the standard pattern used all over the driver.
> =

> Well, you can enumerate objects using their qualitative or quantative
> characteristics, for instance if you take alphabet you would be
> either enumerating letters like first is A and count until it becomes
> Z, or
> you take indexes and say start from index 0 and count until it becomes
> 26.
> =

> What happens here is mixing those: i.e take letter A and count until it
> becomes 26, i.e mixing a name of an object with it's index, so
> hopefully DBUF_S1 will always be defined as 0 :D

The old code assumed DBUF_S1=3D=3D0 for the purposes of passing it to
DBUF_CTL(), and for the purposes of the BIT(int).

The new code assumes DBUF_S1 =3D=3D 0 for the purposes of terminating
the iteration.

Suo siell=E4, vetel=E4 t=E4=E4ll=E4.

We may actually need to change the device info to contain a dbuf slice
mask instead of just the number of slices. That's in case some hw has
some slices fused off (not sure that's actually a thing but maybe,
need to check the spec at some point for this). At that point we
probably want to stash the whole thing into a for_each_dbuf_slice().

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
