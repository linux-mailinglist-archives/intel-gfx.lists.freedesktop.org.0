Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 437CEAEF1AE
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Jul 2025 10:47:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1695610E527;
	Tue,  1 Jul 2025 08:47:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CD6610E122;
 Tue,  1 Jul 2025 08:47:42 +0000 (UTC)
Received: from 91-155-254-100.elisa-laajakaista.fi ([91.155.254.100]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1uWWeQ-00000008ZLo-42iR; Tue, 01 Jul 2025 11:47:40 +0300
Message-ID: <50d72158076d56764112053b567f4f0a474a72a7.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, Imre
 Deak	 <imre.deak@gmail.com>
Date: Tue, 01 Jul 2025 11:47:38 +0300
In-Reply-To: <aGOdDXY7Z54zxtib@ideak-desk>
References: <20250626082053.219514-1-imre.deak@intel.com>
 <20250626082053.219514-5-imre.deak@intel.com>
 <d6bbc8ebfc0e5948d271cca3e1dbe736b611e3e0.camel@coelho.fi>
 <aGOdDXY7Z54zxtib@ideak-desk>
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
Subject: Re: [PATCH 04/20] drm/i915/dp: Handle a tunneling IRQ after acking it
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

On Tue, 2025-07-01 at 11:32 +0300, Imre Deak wrote:
> On Tue, Jul 01, 2025 at 11:02:30AM +0300, Luca Coelho wrote:
> > On Thu, 2025-06-26 at 11:20 +0300, Imre Deak wrote:
> > > From: Imre Deak <imre.deak@gmail.com>
> > >=20
> > > HPD IRQs in general should be handled after acking them. The
> > >=20
> > > 1. Read IRQ register (read DP_DEVICE_SERVICE_IRQ_VECTOR,
> > >    DP_LINK_SERVICE_IRQ_VECTOR_ESI0)
> > > 2. Handle IRQ
> > > 3. Ack IRQ (write DP_DEVICE_SERVICE_IRQ_VECTOR,
> > >    DP_LINK_SERVICE_IRQ_VECTOR_ESI0)
> > >=20
> > > sequence would miss a new interrupt triggered after 2. and before 3.,
> > > since the flag set in the IRQ register for this interrupt would be
> > > cleared in step 3.
> > >=20
> > > Fix the above by handling the IRQ after acking it.
> > >=20
> > > Signed-off-by: Imre Deak <imre.deak@gmail.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dp.c | 25 +++++++++++------------=
--
> > >  1 file changed, 11 insertions(+), 14 deletions(-)
> > >=20
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/dr=
m/i915/display/intel_dp.c
> > > index 285cd9a5d4a7b..453416b9e9bec 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > @@ -5099,17 +5099,10 @@ intel_dp_check_mst_status(struct intel_dp *in=
tel_dp)
> > > =20
> > >  		drm_dbg_kms(display->drm, "DPRX ESI: %4ph\n", esi);
> > > =20
> > > -		ack[3] |=3D esi[3] & LINK_STATUS_CHANGED;
> > > +		ack[3] |=3D esi[3] & (LINK_STATUS_CHANGED | DP_TUNNELING_IRQ);
> > > =20
> > >  		intel_dp_mst_hpd_irq(intel_dp, esi, ack);
> > > =20
> > > -		if (esi[3] & DP_TUNNELING_IRQ) {
> > > -			if (drm_dp_tunnel_handle_irq(display->dp_tunnel_mgr,
> > > -						     &intel_dp->aux))
> > > -				reprobe_needed =3D true;
> > > -			ack[3] |=3D DP_TUNNELING_IRQ;
> > > -		}
> > > -
> > >  		if (mem_is_zero(ack, sizeof(ack)))
> > >  			break;
> >=20
> > What happens if we ack the interrupt, but end up not handling it, e.g.
> > if mem_is_zero() returns true here?
>=20
> This is an optimization in case of ack[] having no bits set (and also to
> break from the loop acking->handling IRQs). I.e. if ack[] is zero the
> AUX write to ack IRQs in intel_dp_ack_sink_irq_esi() can be skipped,
> since no IRQ needs to be acked and then also no IRQ needs to be handled.

Okay, makes sense.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
