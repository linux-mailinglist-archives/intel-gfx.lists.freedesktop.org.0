Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D709FAF7575
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jul 2025 15:24:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2882A10E0CE;
	Thu,  3 Jul 2025 13:24:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EC2F10E0CE;
 Thu,  3 Jul 2025 13:24:51 +0000 (UTC)
Received: from 91-155-254-100.elisa-laajakaista.fi ([91.155.254.100]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1uXJvk-00000008dmO-0InE; Thu, 03 Jul 2025 16:24:49 +0300
Message-ID: <c27737f29e43ce6a50d349b37b3d41396fc55a5f.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, Imre
 Deak	 <imre.deak@gmail.com>
Date: Thu, 03 Jul 2025 16:24:47 +0300
In-Reply-To: <aGaCIMPOqLdfGIWZ@ideak-desk>
References: <20250626082053.219514-1-imre.deak@intel.com>
 <20250626082053.219514-16-imre.deak@intel.com>
 <b32389ca0460b01d91f5adf42b1a92f81cccd2f4.camel@coelho.fi>
 <aGaCIMPOqLdfGIWZ@ideak-desk>
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
Subject: Re: [PATCH 15/20] drm/i915/dp: Read/ack sink count and sink IRQs
 for SST as it's done for MST
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

On Thu, 2025-07-03 at 16:14 +0300, Imre Deak wrote:
> On Thu, Jul 03, 2025 at 04:02:18PM +0300, Luca Coelho wrote:
> > On Thu, 2025-06-26 at 11:20 +0300, Imre Deak wrote:
> > > From: Imre Deak <imre.deak@gmail.com>
> > >=20
> > > Read and ack the sink count, sink device and link service IRQs for SS=
T
> > > the same way this is done for MST, the read/ack happening in separate
> > > steps via an ESI (Event Status Indicator) vector.
> > >=20
> > > The above way is more efficient, since on newer (DPCD_REV >=3D 1.2) s=
inks
> > > the DP_SINK_COUNT_ESI..DP_LINK_SERVICE_IRQ_VECTOR_ESI0 registers can =
be
> > > read out in one AUX transaction - and the 3 last one written in one
> > > transaction. Also this allows sharing more of the SST and MST IRQ
> > > handling code (done as a follow-up).
> > >=20
> > > For now keep the current behavior of always reading the legacy
> > > DP_SINK_COUNT, DP_DEVICE_SERVICE_IRQ_VECTOR registers and not reading
> > > the DP_DEVICE_SERVICE_IRQ_VECTOR_ESI1 register.
> > >=20
> > > Signed-off-by: Imre Deak <imre.deak@gmail.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dp.c | 132 +++++++++++++---------=
--
> > >  1 file changed, 73 insertions(+), 59 deletions(-)
> > >=20
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/dr=
m/i915/display/intel_dp.c
> > > index 2ba4a810f22c2..2e6ed7d2a64a6 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > @@ -4573,6 +4573,70 @@ static bool intel_dp_ack_sink_irq_esi(struct i=
ntel_dp *intel_dp, u8 esi[4])
> > >  	return false;
> > >  }
> > > =20
> > > +static bool intel_dp_get_sink_irq_esi_sst(struct intel_dp *intel_dp,=
 u8 esi[4])
> > > +{
> > > +	memset(esi, 0, 4);
> > > +
> > > +	/*
> > > +	 * TODO: For DP_DPCD_REV >=3D 0x12 read
> > > +	 * DP_SINK_COUNT_ESI and DP_DEVICE_SERVICE_IRQ_VECTOR_ESI0.
> > > +	 */
> > > +	if (drm_dp_dpcd_read_data(&intel_dp->aux, DP_SINK_COUNT, esi, 2) !=
=3D 0)
> > > +		return false;
> > > +
> > > +	if (intel_dp->dpcd[DP_DPCD_REV] < DP_DPCD_REV_12)
> > > +		return true;
> > > +
> > > +	/* TODO: Read DP_DEVICE_SERVICE_IRQ_VECTOR_ESI1 as well */
> > > +	if (drm_dp_dpcd_read_byte(&intel_dp->aux, DP_LINK_SERVICE_IRQ_VECTO=
R_ESI0, &esi[3]) !=3D 0)
> > > +		return false;
> > > +
> > > +	return true;
> > > +}
> > > +
> > > +static bool intel_dp_ack_sink_irq_esi_sst(struct intel_dp *intel_dp,=
 u8 esi[4])
> > > +{
> > > +	/*
> > > +	 * TODO: For DP_DPCD_REV >=3D 0x12 write
> > > +	 * DP_DEVICE_SERVICE_IRQ_VECTOR_ESI0
> > > +	 */
> > > +	if (drm_dp_dpcd_write_byte(&intel_dp->aux, DP_DEVICE_SERVICE_IRQ_VE=
CTOR, esi[1]) !=3D 0)
> > > +		return false;
> > > +
> > > +	if (intel_dp->dpcd[DP_DPCD_REV] < DP_DPCD_REV_12)
> > > +		return true;
> > > +
> > > +	/* TODO: Read DP_DEVICE_SERVICE_IRQ_VECTOR_ESI1 as well */
> > > +	if (drm_dp_dpcd_write_byte(&intel_dp->aux, DP_LINK_SERVICE_IRQ_VECT=
OR_ESI0, esi[3]) !=3D 0)
> > > +		return false;
> > > +
> > > +	return true;
> > > +}
> > > +
> > > +static bool intel_dp_get_and_ack_sink_irq_esi_sst(struct intel_dp *i=
ntel_dp, u8 esi[4])
> > > +{
> > > +	struct intel_display *display =3D to_intel_display(intel_dp);
> > > +	struct intel_connector *connector =3D intel_dp->attached_connector;
> > > +	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
> > > +
> > > +	if (!intel_dp_get_sink_irq_esi_sst(intel_dp, esi))
> > > +		return false;
> > > +
> > > +	drm_dbg_kms(display->drm,
> > > +		    "[CONNECTOR:%d:%s][ENCODER:%d:%s] DPRX ESI: %4ph\n",
> > > +		    connector->base.base.id, connector->base.name,
> > > +		    encoder->base.base.id, encoder->base.name,
> > > +		    esi);
> > > +
> > > +	if (mem_is_zero(&esi[1], 3))
> > > +		return true;
> > > +
> > > +	if (!intel_dp_ack_sink_irq_esi_sst(intel_dp, esi))
> > > +		return false;
> > > +
> > > +	return true;
> > > +}
> > > +
> >=20
> > Again, I think it's better to propagate the error than to swallow it
> > and return a bool.
>=20
> I agree. But doing that would make these functions return error in
> different ways than the MST
>=20
> intel_dp_get_sink_irq_esi(), intel_dp_ack_sink_irq_esi()
>=20
> functions, which return a pass/fail bool. Imo the error return should be
> the same for both the SST and MST variety of functions and converting
> to propagate an error instead of a pass/fail bool should be done for
> both (SST and MST), which is best done as a follow-up. Are you ok with
> that?
>=20

Okay, a follow-up patch sounds good to me.

--
Cheers,
Luca.
