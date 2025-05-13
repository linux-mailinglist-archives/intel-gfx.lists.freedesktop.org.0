Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF64EAB542D
	for <lists+intel-gfx@lfdr.de>; Tue, 13 May 2025 13:58:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC6D010E4DE;
	Tue, 13 May 2025 11:58:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3C8810E4DE;
 Tue, 13 May 2025 11:58:02 +0000 (UTC)
Received: from 91-155-254-65.elisa-laajakaista.fi ([91.155.254.65]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1uEoGm-00000007Mg1-1yEi; Tue, 13 May 2025 14:58:00 +0300
Message-ID: <1b7deadd2f4cbba72aca38e86d81dea19baa70c5.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Ville Syrjala <ville.syrjala@linux.intel.com>, 
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Date: Tue, 13 May 2025 14:57:59 +0300
In-Reply-To: <25432c6de18fd4b397fa3e1793545a7d6ac1c766.camel@coelho.fi>
References: <20250512103358.15724-1-ville.syrjala@linux.intel.com>
 <20250512103358.15724-7-ville.syrjala@linux.intel.com>
 <25432c6de18fd4b397fa3e1793545a7d6ac1c766.camel@coelho.fi>
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
Subject: Re: [PATCH 6/7] drm/i915/dmc: Extract is_event_handler()
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

On Tue, 2025-05-13 at 14:52 +0300, Luca Coelho wrote:
> On Mon, 2025-05-12 at 13:33 +0300, Ville Syrjala wrote:
> > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> >=20
> > Extract the helper to determine if the mmio reg+data are the
> > event handler register (DMC_EVT_CTL) for a specific event.
> > We'll have another use for this for runtime event handler
> > enable/disable.
> >=20
> > Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dmc.c | 13 +++++++++++--
> >  1 file changed, 11 insertions(+), 2 deletions(-)
> >=20
> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm=
/i915/display/intel_dmc.c
> > index 238f3cda400c..d758032d1af6 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > @@ -564,6 +564,15 @@ static bool is_dmc_evt_htp_reg(struct intel_displa=
y *display,
> >  	return offset >=3D start && offset < end;
> >  }
> > =20
> > +static bool is_event_handler(struct intel_display *display,
> > +			     enum intel_dmc_id dmc_id,
> > +			     unsigned int event_id,
> > +			     i915_reg_t reg, u32 data)
> > +{
> > +	return is_dmc_evt_ctl_reg(display, dmc_id, reg) &&
> > +		REG_FIELD_GET(DMC_EVT_CTL_EVENT_ID_MASK, data) =3D=3D event_id;
> > +}
> > +
>=20
> I'm not sure we're getting much with this change in terms of
> readability.  Are you really going to be using this many more times
> later?
>=20
> The amount of arguments you pass to this function for these simple
> checks seems to add almost as much clutter as the original, no?
>=20
> If the goal is really readability, maybe a macro would be better.

Never mind.  Now I see how you are using it in the next patch and it
makes sense as it is.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
