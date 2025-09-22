Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D4E2B8FFF9
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Sep 2025 12:26:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37DCE10E40B;
	Mon, 22 Sep 2025 10:26:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1272F10E40B
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Sep 2025 10:26:56 +0000 (UTC)
Received: from 91-153-11-122.elisa-laajakaista.fi ([91.153.11.122]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1v0dkz-00000000ylm-0aKn; Mon, 22 Sep 2025 13:26:53 +0300
Message-ID: <be5e6499eef106f24ce61aa19bdecd5bca765780.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>, 
 "intel-gfx@lists.freedesktop.org"	 <intel-gfx@lists.freedesktop.org>,
 "Coelho, Luciano" <luciano.coelho@intel.com>
Date: Mon, 22 Sep 2025 13:26:52 +0300
In-Reply-To: <14f52d0f7836585e71eac2a1e7d1e8771cdd16d1.camel@intel.com>
References: <20250908073734.1180687-1-luciano.coelho@intel.com>
 <20250908073734.1180687-2-luciano.coelho@intel.com>
 <14f52d0f7836585e71eac2a1e7d1e8771cdd16d1.camel@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+b1 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-25) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.1
Subject: Re: [PATCH 1/6] drm/i915/wm: clarify watermark ops with comments
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

On Tue, 2025-09-16 at 08:52 +0000, Govindapillai, Vinod wrote:
> On Mon, 2025-09-08 at 10:35 +0300, Luca Coelho wrote:
> > Some of the ops in struct intel_wm_funcs are used only for legacy
> > watermark management, while others are only for SKL+ or both.=C2=A0 Cla=
rify
> > that in the struct definition.
> >=20
> > Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> > ---
> > =C2=A0drivers/gpu/drm/i915/display/intel_display_core.h | 6 +++++-
> > =C2=A01 file changed, 5 insertions(+), 1 deletion(-)
> >=20
>=20
> Hi Luca,
>=20
> I am not sure if these comments by itself help in any understanding of th=
e wm handling code better -
> rather than browsing through the code! IMO, probably you need to have bit=
 bigger explanation of this
> "struct intel_wm_funcs" and the split of legacy/SKL+ usage - before these=
 comments!=20

Thanks, Vinod!

This tiny comment doesn't add much, for sure.  But it did help me
quickly figure out which functions are not relevant to newer hardware.

It's a tiny comment that, IMHO, doesn't harm, and if it were there to
start with, my initial attempts at understanding this code would have
been slightly easier.

If you insist, I can drop this patch, but otherwise I think it's useful
enough to be merged as is.  With the other changes I'm planning to make
in this code, hopefully this whole thing will be easier to understand.

--
Cheers,
Luca.



> BR
> Vinod
>=20
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
> > b/drivers/gpu/drm/i915/display/intel_display_core.h
> > index 8c226406c5cd..938971591470 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> > @@ -78,7 +78,7 @@ struct intel_display_funcs {
> > =C2=A0
> > =C2=A0/* functions used for watermark calcs for display. */
> > =C2=A0struct intel_wm_funcs {
> > -	/* update_wm is for legacy wm management */
> > +	/* these are only for legacy wm management */
> > =C2=A0	void (*update_wm)(struct intel_display *display);
> > =C2=A0	int (*compute_watermarks)(struct intel_atomic_state *state,
> > =C2=A0				=C2=A0 struct intel_crtc *crtc);
> > @@ -88,8 +88,12 @@ struct intel_wm_funcs {
> > =C2=A0					 struct intel_crtc *crtc);
> > =C2=A0	void (*optimize_watermarks)(struct intel_atomic_state *state,
> > =C2=A0				=C2=A0=C2=A0=C2=A0 struct intel_crtc *crtc);
> > +
> > +	/* these are for SKL+ wm management */
> > =C2=A0	int (*compute_global_watermarks)(struct intel_atomic_state *stat=
e);
> > =C2=A0	void (*get_hw_state)(struct intel_display *display);
> > +
> > +	/* this is used by both legacy and SKL+ */
> > =C2=A0	void (*sanitize)(struct intel_display *display);
> > =C2=A0};
> > =C2=A0
