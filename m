Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA92AB1D9B0
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Aug 2025 16:10:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69B8F10E85E;
	Thu,  7 Aug 2025 14:10:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68BBA10E85E;
 Thu,  7 Aug 2025 14:10:19 +0000 (UTC)
Received: from 91-155-254-205.elisa-laajakaista.fi ([91.155.254.205]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1uk1Jt-00000009X6s-0XuX; Thu, 07 Aug 2025 17:10:15 +0300
Message-ID: <1e1a3f0db25d4487a3b10522404ea004139ce8e7.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: imre.deak@intel.com, Jani Nikula <jani.nikula@linux.intel.com>, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 stable@vger.kernel.org, Charlton Lin <charlton.lin@intel.com>, Khaled
 Almahallawy <khaled.almahallawy@intel.com>
Date: Thu, 07 Aug 2025 17:10:11 +0300
In-Reply-To: <aJShB9ufOBH9AWLY@ideak-desk>
References: <20250805073700.642107-1-imre.deak@intel.com>
 <20250805073700.642107-2-imre.deak@intel.com>
 <95999d2602067f556dc2e5739758deef7c462e17.camel@coelho.fi>
 <aJSQKu72vVYmUd4Y@ideak-desk>
 <d8e9cabb243cd8bbe7ac942d117146bf7f68b631@intel.com>
 <aJSc9UaVwn132FqX@ideak-desk> <aJShB9ufOBH9AWLY@ideak-desk>
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
Subject: Re: [PATCH 01/19] drm/i915/lnl+/tc: Fix handling of an
 enabled/disconnected dp-alt sink
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

On Thu, 2025-08-07 at 15:50 +0300, Imre Deak wrote:
> On Thu, Aug 07, 2025 at 03:33:04PM +0300, Imre Deak wrote:
> > On Thu, Aug 07, 2025 at 03:19:17PM +0300, Jani Nikula wrote:
> > > On Thu, 07 Aug 2025, Imre Deak <imre.deak@intel.com> wrote:
> > > > On Thu, Aug 07, 2025 at 01:59:21PM +0300, Luca Coelho wrote:
> > > > > On Tue, 2025-08-05 at 10:36 +0300, Imre Deak wrote:
> > > > > > The TypeC PHY HW readout during driver loading and system resum=
e
> > > > > > determines which TypeC mode the PHY is in (legacy/DP-alt/TBT-al=
t) and
> > > > > > whether the PHY is connected, based on the PHY's Owned and Read=
y flags.
> > > > > > For the PHY to be in DP-alt or legacy mode and for the PHY to b=
e in the
> > > > > > connected state in these modes, both the Owned (set by the BIOS=
/driver)
> > > > > > and the Ready (set by the HW) flags should be set.
> > > > > >=20
> > > > > > On ICL-MTL the HW kept the PHY's Ready flag set after the drive=
r
> > > > > > connected the PHY by acquiring the PHY ownership (by setting th=
e Owned
> > > > > > flag), until the driver disconnected the PHY by releasing the P=
HY
> > > > > > ownership (by clearing the Owned flag). On LNL+ this has change=
d, in
> > > > > > that the HW clears the Ready flag as soon as the sink gets disc=
onnected,
> > > > > > even if the PHY ownership was acquired already and hence the PH=
Y is
> > > > > > being used by the display.
> > > > > >=20
> > > > > > When inheriting the HW state from BIOS for a PHY connected in D=
P-alt
> > > > > > mode on which the sink got disconnected - i.e. in a case where =
the sink
> > > > > > was connected while BIOS/GOP was running and so the sink got en=
abled
> > > > > > connecting the PHY, but the user disconnected the sink by the t=
ime the
> > > > > > driver loaded - the PHY Owned but not Ready state must be accou=
nted for
> > > > > > on LNL+ according to the above. Do that by assuming on LNL+ tha=
t the PHY
> > > > > > is connected in DP-alt mode whenever the PHY Owned flag is set,
> > > > > > regardless of the PHY Ready flag.
> > > > > >=20
> > > > > > This fixes a problem on LNL+, where the PHY TypeC mode / connec=
ted state
> > > > > > was detected incorrectly for a DP-alt sink, which got connected=
 and then
> > > > > > disconnected by the user in the above way.
> > > > > >=20
> > > > > > Cc: stable@vger.kernel.org # v6.8+
> > > > > > Reported-by: Charlton Lin <charlton.lin@intel.com>
> > > > > > Tested-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
> > > > > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > > > > ---
> > > > > >  drivers/gpu/drm/i915/display/intel_tc.c | 16 ++++++++++------
> > > > > >  1 file changed, 10 insertions(+), 6 deletions(-)
> > > > > >=20
> > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/=
gpu/drm/i915/display/intel_tc.c
> > > > > > index 3bc57579fe53e..73a08bd84a70a 100644
> > > > > > --- a/drivers/gpu/drm/i915/display/intel_tc.c
> > > > > > +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> > > > > > @@ -1226,14 +1226,18 @@ static void tc_phy_get_hw_state(struct =
intel_tc_port *tc)
> > > > > >  	tc->phy_ops->get_hw_state(tc);
> > > > > >  }
> > > > > > =20
> > > > > > -static bool tc_phy_is_ready_and_owned(struct intel_tc_port *tc=
,
> > > > > > -				      bool phy_is_ready, bool phy_is_owned)
> > > > > > +static bool tc_phy_in_legacy_or_dp_alt_mode(struct intel_tc_po=
rt *tc,
> > > > > > +					    bool phy_is_ready, bool phy_is_owned)
> > > > >=20
> > > > > Personally I don't like the "or" in the function name.  You're
> > > > > returning a boolean which is true or false.  The return value is =
akin
> > > > > to answering "Yes/No" to the question "Is it black or white".
> > > >=20
> > > > The question the function is meant to answer is "Is the PHY in lega=
cy or
> > > > DP-alt mode?". The return value is true (yes) if the PHY is in eith=
er
> > > > legacy or DP-alt mode, false (no) if the PHY is neither in legacy o=
r
> > > > DP-alt mode. There are many other uses of "or" in function names in=
 this
> > > > sense, so not sure how else I'd name this one. Simply leaving out "=
or"
> > > > would make it less clear that the legacy and DP-alt modes are two
> > > > separate modes.

Right, I missed that.  But one shouldn't have to go read the function
implementation to know what it's doing.


> > >=20
> > > What's the opposite of "Is the PHY in legacy or DP-alt mode"?
> > >=20
> > > Would that lead to a simpler name, with the reversed return value?
> >=20
> > The opposite is either TBT-alt or disconnected mode, so the reversal
> > would result in the same function name format.
>=20
> Would you be ok with
>=20
> tc_phy_owned_by_display()
>=20
> ?

This sounds much better! And it's indeed what you're looking for.  It
doesn't matter if it's legacy DP-alt, TBT-alt or whatever.  What you're
checking is actually whether display owns the PHY.  So this is a much
better choice IMHO. :)

--
Cheers,
Luca.
