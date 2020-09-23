Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4084B2754E7
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Sep 2020 11:57:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DED06E8E4;
	Wed, 23 Sep 2020 09:57:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34F186E8E4
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Sep 2020 09:57:20 +0000 (UTC)
IronPort-SDR: 8SnkVVFiMOSI6Z38tjgw3O2a2x6GZmN/xn8nuA08D+VLqe0x1PQwZPMaNDm40FHdTXffahW2/U
 Wcf0aqGD3rtw==
X-IronPort-AV: E=McAfee;i="6000,8403,9752"; a="158229085"
X-IronPort-AV: E=Sophos;i="5.77,293,1596524400"; d="scan'208";a="158229085"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2020 02:57:19 -0700
IronPort-SDR: wU7jYPAHv1LJKrFNQiDfuedQBuB6G9jGhZl8Px5EvR9fEu4GFmcdUybtZ7WoJRIlhxfIoNGkAk
 kGxw5DdhpriQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,293,1596524400"; d="scan'208";a="347289730"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 23 Sep 2020 02:57:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 23 Sep 2020 12:57:17 +0300
Date: Wed, 23 Sep 2020 12:57:17 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Navare, Manasi" <manasi.d.navare@intel.com>
Message-ID: <20200923095717.GA6112@intel.com>
References: <20200715224222.7557-1-manasi.d.navare@intel.com>
 <20200715224222.7557-4-manasi.d.navare@intel.com>
 <20200907112056.GF6112@intel.com>
 <20200914190026.GB28760@labuser-Z97X-UD5H>
 <20200914191757.GX6112@intel.com>
 <20200914193857.GB29235@labuser-Z97X-UD5H>
 <20200914194756.GA6112@intel.com>
 <20200915230345.GA14516@labuser-Z97X-UD5H>
 <20200917122046.GU6112@intel.com>
 <20200923054651.GA24830@labuser-Z97X-UD5H>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200923054651.GA24830@labuser-Z97X-UD5H>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v6 04/11] drm/i915/dp: Allow big joiner
 modes in intel_dp_mode_valid(), v3.
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

On Tue, Sep 22, 2020 at 10:46:52PM -0700, Navare, Manasi wrote:
> On Thu, Sep 17, 2020 at 03:20:46PM +0300, Ville Syrj=E4l=E4 wrote:
> > On Tue, Sep 15, 2020 at 04:03:45PM -0700, Navare, Manasi wrote:
> > > On Mon, Sep 14, 2020 at 10:47:56PM +0300, Ville Syrj=E4l=E4 wrote:
> > > > On Mon, Sep 14, 2020 at 12:38:57PM -0700, Navare, Manasi wrote:
> > > > > On Mon, Sep 14, 2020 at 10:17:57PM +0300, Ville Syrj=E4l=E4 wrote:
> > > > > > On Mon, Sep 14, 2020 at 12:00:33PM -0700, Navare, Manasi wrote:
> > > > > > > On Mon, Sep 07, 2020 at 02:20:56PM +0300, Ville Syrj=E4l=E4 w=
rote:
> > > > > > > > On Wed, Jul 15, 2020 at 03:42:15PM -0700, Manasi Navare wro=
te:
> > > > > > > > > From: Maarten Lankhorst <maarten.lankhorst@linux.intel.co=
m>
> > > > > > > > > =

> > > > > > > > > Small changes to intel_dp_mode_valid(), allow listing mod=
es that
> > > > > > > > > can only be supported in the bigjoiner configuration, whi=
ch is
> > > > > > > > > not supported yet.
> > > > > > > > > =

> > > > > > > > > eDP does not support bigjoiner, so do not expose bigjoine=
r only
> > > > > > > > > modes on the eDP port.
> > > > > > > > > =

> > > > > > > > > v5:
> > > > > > > > > * Increase max plane width to support 8K with bigjoiner (=
Maarten)
> > > > > > > > > v4:
> > > > > > > > > * Rebase (Manasi)
> > > > > > > > > =

> > > > > > > > > Changes since v1:
> > > > > > > > > - Disallow bigjoiner on eDP.
> > > > > > > > > Changes since v2:
> > > > > > > > > - Rename intel_dp_downstream_max_dotclock to intel_dp_max=
_dotclock,
> > > > > > > > >   and split off the downstream and source checking to its=
 own function.
> > > > > > > > >   (Ville)
> > > > > > > > > v3:
> > > > > > > > > * Rebase (Manasi)
> > > > > > > > > =

> > > > > > > > > Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> > > > > > > > > Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux=
.intel.com>
> > > > > > > > > ---
> > > > > > > > >  drivers/gpu/drm/i915/display/intel_display.c |   2 +-
> > > > > > > > >  drivers/gpu/drm/i915/display/intel_dp.c      | 119 +++++=
+++++++++-----
> > > > > > > > >  2 files changed, 91 insertions(+), 30 deletions(-)
> > > > > > > > > =

> > > > > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c=
 b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > > > index 78cbfefbfa62..3ecb642805a6 100644
> > > > > > > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > > > @@ -17400,7 +17400,7 @@ intel_mode_valid_max_plane_size(s=
truct drm_i915_private *dev_priv,
> > > > > > > > >  	 * too big for that.
> > > > > > > > >  	 */
> > > > > > > > >  	if (INTEL_GEN(dev_priv) >=3D 11) {
> > > > > > > > > -		plane_width_max =3D 5120;
> > > > > > > > > +		plane_width_max =3D 7680;
> > > > > > > > =

> > > > > > > > This looks misplaced. Planes do no know whether bigjoiner c=
an be used or
> > > > > > > > not. They should not care in fact. The caller should have t=
hat knowledge
> > > > > > > > and can deal with it properly.
> > > > > > > =

> > > > > > > Hmm, so the caller of intel_mode_valid_max_plane_size() shoul=
d check on the bigjoiner
> > > > > > > flag and perhaps if bigjoiner is true then increase the plane=
_width_max to 7680?
> > > > > > > =

> > > > > > > Am still not sure where this should happen? We need to have t=
he plane max width to be 7680
> > > > > > > before we prune the 8K mode in intel_mode_valid
> > > > > > > =

> > > > > > > Where should this be added according to you?
> > > > > > =

> > > > > > Hmm. I guess we do need to put it into this function given the =
way this
> > > > > > is structured. However we still can't assume bigjoiner can be u=
sed since
> > > > > > it can't be used on DDI A on icl. So we should probably just pa=
ss in a
> > > > > > bool here to indicate whether bigjoiner can be used or not.
> > > > > >
> > > > > =

> > > > > So in intel_dp_mode_valid() we set bigjoiner =3D true if not edp =
and higher clock.
> > > > > I think here we need to do the platform check also, 1. because no=
w we are enabling this for TGL+
> > > > > where big joiner on all pipes. But we should still I think add GE=
N >=3D12 check before setting bigjoiner
> > > > > to true in intel_dp_mode_valid() and then pass that to intel_mode=
_valid_max_plane_size(..., book bigjoiner)
> > > > =

> > > > can_bigjoiner() {
> > > > 	return gen >=3D 12 || (gen=3D=3D11 && port!=3DA);
> =

> On Gen 11, Port A is eDP or MIPI DSI so I could check:
> =

> can_bigjoiner()
> {
> 	return gen >=3D12 || (gen =3D=3D 11 && !intel_dp_is_edp())
> }
> =

> The above should be okay right?

No. Check for port A.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
