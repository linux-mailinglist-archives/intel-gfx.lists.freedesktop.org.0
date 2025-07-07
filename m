Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1788AFB0AD
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Jul 2025 12:05:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA20E10E18A;
	Mon,  7 Jul 2025 10:05:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2CF810E114;
 Mon,  7 Jul 2025 10:05:24 +0000 (UTC)
Received: from 91-155-254-100.elisa-laajakaista.fi ([91.155.254.100]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1uYiis-00000008knD-2WNB; Mon, 07 Jul 2025 13:05:21 +0300
Message-ID: <f5bcb66a3fcaa4ba8c7f7c28568adb703c27323b.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: imre.deak@intel.com
Cc: Jani Nikula <jani.nikula@linux.intel.com>, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, Imre Deak
 <imre.deak@gmail.com>
Date: Mon, 07 Jul 2025 13:05:17 +0300
In-Reply-To: <aGZs-e-K8n7US659@ideak-desk>
References: <20250626082053.219514-1-imre.deak@intel.com>
 <20250626082053.219514-12-imre.deak@intel.com>
 <625ce1c9c46ba93027fecadae4803fc86450ad50@intel.com>
 <aF0UbRD7DLIwZRYe@ideak-desk>
 <9ef664aa1e833ee6c3f97533da4a0d828a03f9f2@intel.com>
 <aF0kbmZ34PeclKW_@ideak-desk>
 <9cef5bf7a30fca73313e9b178bf65f1ac2842141@intel.com>
 <aF0nVObjLtsjcWBx@ideak-desk>
 <2512dc8ee95cabdc386b4de305f014e3ef5575a6.camel@coelho.fi>
 <aGZs-e-K8n7US659@ideak-desk>
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
Subject: Re: [PATCH 11/20] drm/i915/dp: Reprobe connector if getting/acking
 device IRQs fails
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

On Thu, 2025-07-03 at 14:43 +0300, Imre Deak wrote:
> On Thu, Jul 03, 2025 at 02:28:01PM +0300, Luca Coelho wrote:
> > On Thu, 2025-06-26 at 13:56 +0300, Imre Deak wrote:
> > > On Thu, Jun 26, 2025 at 01:46:27PM +0300, Jani Nikula wrote:
> > > > On Thu, 26 Jun 2025, Imre Deak <imre.deak@intel.com> wrote:
> > > > > On Thu, Jun 26, 2025 at 01:23:12PM +0300, Jani Nikula wrote:
> > > > > > On Thu, 26 Jun 2025, Imre Deak <imre.deak@intel.com> wrote:
> > > > > > > On Thu, Jun 26, 2025 at 12:12:11PM +0300, Jani Nikula wrote:
> > > > > > > > On Thu, 26 Jun 2025, Imre Deak <imre.deak@intel.com> wrote:
> > > > > > > > > From: Imre Deak <imre.deak@gmail.com>
> > > > > > > > >=20
> > > > > > > > > An AUX access failure during HPD IRQ handling should be h=
andled by
> > > > > > > > > falling back to a full connector detection, ensure that i=
f the failure
> > > > > > > > > happens while reading/acking a device service IRQ.
> > > > > > > > >=20
> > > > > > > > > Signed-off-by: Imre Deak <imre.deak@gmail.com>
> > > > > > > > > ---
> > > > > > > > >  drivers/gpu/drm/i915/display/intel_dp.c | 21 +++++++++++=
++++------
> > > > > > > > >  1 file changed, 15 insertions(+), 6 deletions(-)
> > > > > > > > >=20
> > > > > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/dr=
ivers/gpu/drm/i915/display/intel_dp.c
> > > > > > > > > index 7793a72983abd..7eb208d2c321b 100644
> > > > > > > > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > > > > > @@ -5393,16 +5393,20 @@ void intel_dp_check_link_state(st=
ruct intel_dp *intel_dp)
> > > > > > > > >  	intel_encoder_link_check_queue_work(encoder, 0);
> > > > > > > > >  }
> > > > > > > > > =20
> > > > > > > > > -static void intel_dp_check_device_service_irq(struct int=
el_dp *intel_dp)
> > > > > > > > > +static bool intel_dp_check_device_service_irq(struct int=
el_dp *intel_dp)
> > > > > > > >=20
> > > > > > > > I don't think "check" is very intuitive in function names. =
Check
> > > > > > > > something, but then what? Is it like an assert or does it d=
o something
> > > > > > > > active or what?
> > > > > > > >=20
> > > > > > > > What does a boolean return from a check function mean?
> > > > > > > >=20
> > > > > > > > It's not obvious to the reader at all.
> > > > > > >=20
> > > > > > > I agree, but in this patch I didn't want to change the functi=
on name.
> > > > > >=20
> > > > > > Arguably adding a return value changes the meaning already...
> > > > > >=20
> > > > > > >=20
> > > > > > > >=20
> > > > > > > > >  {
> > > > > > > > >  	struct intel_display *display =3D to_intel_display(inte=
l_dp);
> > > > > > > > >  	u8 val;
> > > > > > > > > =20
> > > > > > > > >  	if (drm_dp_dpcd_readb(&intel_dp->aux,
> > > > > > > > > -			      DP_DEVICE_SERVICE_IRQ_VECTOR, &val) !=3D 1 || !=
val)
> > > > > > > > > -		return;
> > > > > > > > > +			      DP_DEVICE_SERVICE_IRQ_VECTOR, &val) !=3D 1)
> > > > > > > > > +		return true;
> > > > > > > >=20
> > > > > > > > Looks like true means the check failed... while usually tru=
e for boolean
> > > > > > > > functions means success.
> > > > > > >=20
> > > > > > > The function returns true as before if a full connector detec=
tion is needed.
> > > > > >=20
> > > > > > But it didn't return anything before! And that meaning is not c=
onveyed
> > > > > > to the reader in *any* reasonable way!
> > > > >=20
> > > > > This function is the counterpart of intel_dp_check_link_service_i=
rq()
> > > > > both functions having the same purpose, reading and handling HPD =
IRQs.
> > > > > The latter one's return value is true if a reprobe is needed and =
this
> > > > > patch doesn't change that, it keeps the two functions behave the =
same
> > > > > way.
> > > > >=20
> > > > > > The absolute minimum is to add a comment (mind you, kernel-doc =
is
> > > > > > overkill) stating what the return value means.
> > > > >=20
> > > > > The function name will change in a follow-up patch and I think th=
at
> > > > > doesn't require a comment on the return value.
> > > > >=20
> > > > > > > >=20
> > > > > > > > > =20
> > > > > > > > > -	drm_dp_dpcd_writeb(&intel_dp->aux, DP_DEVICE_SERVICE_IR=
Q_VECTOR, val);
> > > > > > > > > +	if (!val)
> > > > > > > > > +		return false;
> > > > > > > > > +
> > > > > > > > > +	if (drm_dp_dpcd_writeb(&intel_dp->aux, DP_DEVICE_SERVIC=
E_IRQ_VECTOR, val) !=3D 1)
> > > > > > > > > +		return true;
> > > > > > > > > =20
> > > > > > > > >  	if (val & DP_AUTOMATED_TEST_REQUEST)
> > > > > > > > >  		intel_dp_test_request(intel_dp);
> > > > > > > >=20
> > > > > > > > Whoa, it's not a *check* function at all?! It actually *han=
dles* the
> > > > > > > > service irqs.
> > > > > > > >=20
> > > > > > > > Can we rephrase the function name?
> > > > > > >=20
> > > > > > > I want to keep the function name in this patch. In the follow=
ing patches
> > > > > > > I will separate this part and rename it to
> > > > > > > intel_dp_get_and_ack_device_service_irq().=20
> > > > > >=20
> > > > > > Right, saw that now. But even for that function name the meanin=
g of the
> > > > > > return value is ambiguous.
> > > > >=20
> > > > > All the get/ack IRQ functions in intel_dp.c return true for succe=
ss.
> > > >=20
> > > > Argh. You just said it doesn't mean success/failure, it means if fu=
ll
> > > > connector detection is needed?!
> > >=20
> > > intel_dp_check_device_service_irq(),
> > > intel_dp_check_link_service_irq() -> return value indicates if a
> > > connector detection is needed.
> > >=20
> > > intel_dp_get_and_ack_device_service_irq(),
> > > intel_dp_get_and_ack_link_service_irq() -> return value indicates if
> > > getting/acking the IRQ succeeded,s imilarly to
> > > intel_dp_get_sink_irq_esi(), intel_dp_ack_sink_irq_esi().
> >=20
> > Do we need to distinguish between when getting or acking failed?
>=20
> No, in either case the IRQ shouldn't be handled and a full detection
> should be scheduled for the connector.
>=20
> > You may have handled the irq but failed to ack (theoretically).  Do
> > you just abort the whole thing in either case?
>=20
> If reading or acking the IRQs fail, which would be due to the relevant
> AUX read/write failing, then the IRQ will not be handled and a full
> connector detection will be scheduled.
>=20
> > I still tend to agree with Jani that the idea of actually handling the
> > interrupt is not clear in the function name.=20
>=20
> Yes, I agree it's not clear, but that is the current name, which I don't
> want to change in this patch. In patch 13 I separate the function into
> intel_dp_get_and_ack_device_service_irq() and
> intel_dp_handle_device_service_irq().
>=20
> > _get_and_ack doesn't imply that either.
>=20
> intel_dp_get_and_ack_device_irq(), added in patch 13, will only get and
> ack the IRQ, the handling happening in
> intel_dp_handle_device_service_irq().
>=20
> > But this is getting too nitpicky at this point, so I'll leave it up to
> > you and Jani. :)

As discussed offline, we all agreed to go ahead like this and make the
bool vs. int change in follow up patches.  So:

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
