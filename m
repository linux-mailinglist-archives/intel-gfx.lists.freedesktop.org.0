Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42FB2AF75CB
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jul 2025 15:35:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCE9D10E83D;
	Thu,  3 Jul 2025 13:34:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C7A010E192;
 Thu,  3 Jul 2025 13:34:57 +0000 (UTC)
Received: from 91-155-254-100.elisa-laajakaista.fi ([91.155.254.100]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1uXK5O-00000008dnY-17XE; Thu, 03 Jul 2025 16:34:54 +0300
Message-ID: <ef25886b7ad3f762de0429d63e788e6b454f1fa0.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: imre.deak@intel.com, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, Imre Deak <imre.deak@gmail.com>
Date: Thu, 03 Jul 2025 16:34:45 +0300
In-Reply-To: <aGaFR3kCa1i-fUKb@ideak-desk>
References: <20250626082053.219514-1-imre.deak@intel.com>
 <20250626082053.219514-20-imre.deak@intel.com>
 <5ab6dccb4abf62e8ca1ec606e9bda3f5337d8adb.camel@coelho.fi>
 <aGaDGNMJ6Rn36nBL@ideak-desk> <aGaFR3kCa1i-fUKb@ideak-desk>
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
Subject: Re: [PATCH 19/20] drm/i915/dp: Ack only the handled device service
 IRQs
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

On Thu, 2025-07-03 at 16:27 +0300, Imre Deak wrote:
> On Thu, Jul 03, 2025 at 04:18:21PM +0300, Imre Deak wrote:
> > On Thu, Jul 03, 2025 at 04:14:51PM +0300, Luca Coelho wrote:
> > > On Thu, 2025-06-26 at 11:20 +0300, Imre Deak wrote:
> > > > From: Imre Deak <imre.deak@gmail.com>
> > > >=20
> > > > Only those IRQs should be acked that are handled, however for SST a=
ll
> > > > IRQs triggered by the sink are acked. This can be a problem for fla=
gs
> > > > that are reserved/reading zero at a given moment, but become used f=
or
> > > > some purpose - with a side-effect if set - in a future DPCD revisio=
n.
> > > >=20
> > > > Fix the above by acking only those device service IRQs that will be
> > > > handled. While at it add asserts that only the known/acked device
> > > > service IRQs are handled both in the MST and SST case.
> > > >=20
> > > > Signed-off-by: Imre Deak <imre.deak@gmail.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_dp.c | 14 ++++++++++++++
> > > >  1 file changed, 14 insertions(+)
> > > >=20
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/=
drm/i915/display/intel_dp.c
> > > > index 52249fa5c8a6d..6f67fac9724e1 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > @@ -4537,6 +4537,14 @@ intel_dp_mst_disconnect(struct intel_dp *int=
el_dp)
> > > >  	drm_dp_mst_topology_mgr_set_mst(&intel_dp->mst.mgr, intel_dp->is_=
mst);
> > > >  }
> > > > =20
> > > > +#define INTEL_DP_DEVICE_SERVICE_IRQ_MASK_SST	(DP_AUTOMATED_TEST_RE=
QUEST | \
> > > > +						 DP_CP_IRQ | \
> > > > +						 DP_SINK_SPECIFIC_IRQ)
> > > > +
> > > > +#define INTEL_DP_DEVICE_SERVICE_IRQ_MASK_MST	(DP_CP_IRQ | \
> > > > +						 DP_DOWN_REP_MSG_RDY | \
> > > > +						 DP_UP_REQ_MSG_RDY)
> > > > +
> > > >  static bool
> > > >  intel_dp_get_sink_irq_esi(struct intel_dp *intel_dp, u8 *esi)
> > > >  {
> > > > @@ -4628,6 +4636,8 @@ static bool intel_dp_get_and_ack_sink_irq_esi=
_sst(struct intel_dp *intel_dp, u8
> > > >  		    encoder->base.base.id, encoder->base.name,
> > > >  		    esi);
> > > > =20
> > > > +	esi[1] &=3D INTEL_DP_DEVICE_SERVICE_IRQ_MASK_SST;
> > > > +
> > > >  	if (mem_is_zero(&esi[1], 3))
> > > >  		return true;
> > > > =20
> > > > @@ -5172,6 +5182,8 @@ intel_dp_check_mst_status(struct intel_dp *in=
tel_dp)
> > > >  		if (mem_is_zero(ack, sizeof(ack)))
> > > >  			break;
> > > > =20
> > > > +		drm_WARN_ON(display->drm, ack[1] & ~INTEL_DP_DEVICE_SERVICE_IRQ_=
MASK_MST);
> > > > +
> > > >  		if (!intel_dp_ack_sink_irq_esi(intel_dp, ack))
> > > >  			drm_dbg_kms(display->drm, "Failed to ack ESI\n");
> > > > =20
> > > > @@ -5456,6 +5468,8 @@ static void intel_dp_handle_device_service_ir=
q(struct intel_dp *intel_dp, u8 irq
> > > >  {
> > > >  	struct intel_display *display =3D to_intel_display(intel_dp);
> > > > =20
> > > > +	drm_WARN_ON(display->drm, irq_mask & ~INTEL_DP_DEVICE_SERVICE_IRQ=
_MASK_SST);
> > > > +
> > > >  	if (irq_mask & DP_AUTOMATED_TEST_REQUEST)
> > > >  		intel_dp_test_request(intel_dp);
> > > > =20
> > >=20
> > > Evidently, this function is specific to SST irq.  Wouldn't it be bett=
er
> > > to have _sst in the name like in "intel_dp_check_mst_status()"? This
> > > function is probably in an earlier patch, though, so if handled it
> > > should be obviously be done there.
> >=20
> > Yes, it used to be SST specific, but patch 18 reused it for MST as well=
.
>=20
> Ah, sorry, yes this function is still only used for SST. However the
> device service IRQs handled here are not SST specific and imo the
> function should be used for MST as well. But until that I can rename it
> to intel_dp_handle_device_service_irq_sst().

No, no need to rename it temporarily.  I changed my mind when I read
the next patch (see my comment there).  The only difference is that one
is link service and the other one is device service, not MST vs SST, so
I think it's better to keep this function consistent with the next one.
It's just an artifact that it is not needed for MST in this case.

--
Cheers,
Luca.
