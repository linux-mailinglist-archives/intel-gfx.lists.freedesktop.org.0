Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C42CAF71DC
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jul 2025 13:14:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A50110E7F0;
	Thu,  3 Jul 2025 11:14:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C225110E168;
 Thu,  3 Jul 2025 11:14:44 +0000 (UTC)
Received: from 91-155-254-100.elisa-laajakaista.fi ([91.155.254.100]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1uXHtm-00000008dT9-0gC9; Thu, 03 Jul 2025 14:14:40 +0300
Message-ID: <07607f3e85b2b43fd3ae6acb3c9dde59d6adc365.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: imre.deak@intel.com, Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, Imre
 Deak	 <imre.deak@gmail.com>
Date: Thu, 03 Jul 2025 14:14:36 +0300
In-Reply-To: <aF62jKhFTwMp4eKz@ideak-desk>
References: <20250626082053.219514-1-imre.deak@intel.com>
 <20250626082053.219514-3-imre.deak@intel.com>
 <88efe57deeb6cb0cec213a43aab010a5f53e7577@intel.com>
 <aF62jKhFTwMp4eKz@ideak-desk>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.1-1 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1-pre1 (2023-11-21) on
 farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
 version=4.0.1-pre1
Subject: Re: [PATCH 02/20] drm/i915/dp_mst: Verify the link status always
 the same way
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

On Fri, 2025-06-27 at 18:19 +0300, Imre Deak wrote:
> On Thu, Jun 26, 2025 at 11:31:31AM +0300, Jani Nikula wrote:
> > On Thu, 26 Jun 2025, Imre Deak <imre.deak@intel.com> wrote:
> > > From: Imre Deak <imre.deak@gmail.com>
> > >=20
> > > The MST link status should be always verified from the same DPCD
> > > registers after link training. Atm, both the legacy (0x202 - 0x205) a=
nd
> > > the ESI (0x200C - 0x200F) link status registers are used. Use always =
the
> > > latter ESI version of link status registers.
> > >=20
> > > Signed-off-by: Imre Deak <imre.deak@gmail.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dp.c | 20 ++++++++++++++++++--
> > >  1 file changed, 18 insertions(+), 2 deletions(-)
> > >=20
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/dr=
m/i915/display/intel_dp.c
> > > index 3f911c930a30b..ac7e08f485309 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > @@ -5176,6 +5176,23 @@ intel_dp_handle_hdmi_link_status_change(struct=
 intel_dp *intel_dp)
> > >  	}
> > >  }
> > > =20
> > > +static bool
> > > +intel_dp_read_link_status(struct intel_dp *intel_dp, u8 link_status[=
DP_LINK_STATUS_SIZE])
> > > +{
> > > +	bool ret;
> > > +
> > > +	memset(link_status, 0, DP_LINK_STATUS_SIZE);
> > > +
> > > +	if (intel_dp_mst_active_streams(intel_dp) > 0)
> > > +		ret =3D drm_dp_dpcd_read_data(&intel_dp->aux, DP_LANE0_1_STATUS_ES=
I,
> > > +					    link_status, DP_LINK_STATUS_SIZE - 2) =3D=3D 0;
> > > +	else
> > > +		ret =3D drm_dp_dpcd_read_phy_link_status(&intel_dp->aux, DP_PHY_DP=
RX,
> > > +						       link_status) =3D=3D 0;
> >=20
> > Please propagate the int instead of having "=3D=3D 0" at the end of the
> > assignment.
> >=20
> > I'm increasingly critical of bool returns for success/failure, because
> > they don't really mix well with 0 for success and negative values for
> > error.
>=20
> Ok will do that.
>=20
> Both ways are used all around, but I suppose propagating the error code
> should be the default choice. An exception being adding a new variant
> of an already existing function with a bool success/failure return type
> where the new variant should do the same.

I agree that here it makes sense to propagate the error.  There's no
reason to swallow it.

With that change:

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
