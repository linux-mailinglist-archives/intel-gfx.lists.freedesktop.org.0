Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA74F7D4ED8
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 13:33:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0A4D10E33E;
	Tue, 24 Oct 2023 11:33:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80C4F10E34E
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 11:33:49 +0000 (UTC)
Received: from 91-155-254-243.elisa-laajakaista.fi ([91.155.254.243]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97-RC1) (envelope-from <luca@coelho.fi>)
 id 1qvFfO-000000009br-0cN2; Tue, 24 Oct 2023 14:33:47 +0300
Message-ID: <639a31dea0e79b90735d14d4b40ef1531b9cd7f9.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: "Hogander, Jouni" <jouni.hogander@intel.com>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Date: Tue, 24 Oct 2023 14:33:45 +0300
In-Reply-To: <c9e5a54c56a1855cdca2f5e390dad48acc3ff5f3.camel@intel.com>
References: <20231016111658.3432581-1-jouni.hogander@intel.com>
 <20231016111658.3432581-25-jouni.hogander@intel.com>
 <51352e16166514540e90e7ef2c7a07fb42d47241.camel@coelho.fi>
 <c9e5a54c56a1855cdca2f5e390dad48acc3ff5f3.camel@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.0 (2022-12-13) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.0
Subject: Re: [Intel-gfx] [PATCH v2 24/24] drm/i915/display: Use same
 permissions for enable_sagv as for rest
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

On Tue, 2023-10-24 at 08:51 +0000, Hogander, Jouni wrote:
> On Mon, 2023-10-23 at 17:06 +0300, Luca Coelho wrote:
> > On Mon, 2023-10-16 at 14:16 +0300, Jouni H=C3=B6gander wrote:
> > > Generally we have writable device parameters in debugfs. No need
> > > to allow writing module parameters.
> > >=20
> > > Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> > > ---
> > > =C2=A0drivers/gpu/drm/i915/display/intel_display_params.c | 2 +-
> > > =C2=A01 file changed, 1 insertion(+), 1 deletion(-)
> > >=20
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c
> > > b/drivers/gpu/drm/i915/display/intel_display_params.c
> > > index 8e6353c1c25e..077f2dee2975 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_params.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_params.c
> > > @@ -50,7 +50,7 @@ intel_display_param_named_unsafe(enable_dc, int,
> > > 0400,
> > > =C2=A0intel_display_param_named_unsafe(enable_dpt, bool, 0400,
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0"Enable display page =
table (DPT) (default: true)");
> > > =C2=A0
> > > -intel_display_param_named_unsafe(enable_sagv, bool, 0600,
> > > +intel_display_param_named_unsafe(enable_sagv, bool, 0400,
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0"Enable system agent =
voltage/frequency scaling (SAGV)
> > > (default: true)");
> > > =C2=A0
> > > =C2=A0intel_display_param_named_unsafe(disable_power_well, int, 0400,
> >=20
> > This, as well as other similar changes throughout this series, could
> > be
> > controversial, since it's a userspace API change of sorts.=C2=A0 It use=
d
> > to
> > be possible to write but it won't be anymore.=C2=A0 But, as we discusse=
d
> > offline, it shouldn't be problem, because probably nobody is writing
> > to
> > them, and most likely doing so wouldn't have the expected result,
> > since
> > the device copies were not getting updated.
> >=20
> > Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
>=20
> Thank you Luca. I actually moved this change to patch 11 due to your
> comment there and added your rb tag there. I was planning to drop this
> patch. Are you fine with this?

Yes, this is fine.  I'll review your cahnges in v3 and give the missing
r-b tags there, if applicable.

--
Cheers,
Luca.
