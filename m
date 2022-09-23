Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 561CC5E73EA
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Sep 2022 08:24:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F77C10E184;
	Fri, 23 Sep 2022 06:24:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from farmhouse.coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C75B510E184
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Sep 2022 06:24:32 +0000 (UTC)
Received: from 91-155-255-44.elisa-laajakaista.fi ([91.155.255.44]
 helo=[192.168.100.137])
 by farmhouse.coelho.fi with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <luca@coelho.fi>) id 1obc6v-003XEz-Ff;
 Fri, 23 Sep 2022 09:24:31 +0300
Message-ID: <0408c640dfbc4bdea5cfab16bbe0347299cda57d.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Ville =?ISO-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Date: Fri, 23 Sep 2022 09:24:28 +0300
In-Reply-To: <YyxNx+p2k3RscYBX@intel.com>
References: <20220916165206.1499-1-ville.syrjala@linux.intel.com>
 <20220916165206.1499-3-ville.syrjala@linux.intel.com>
 <9731fffc60162a34b7790bb08792fc55593e4ca2.camel@coelho.fi>
 <YywdAq6eYfTEppUC@intel.com> <87leqb7px7.fsf@intel.com>
 <Yywsrhy2MJKRI76v@intel.com>
 <c03ce859eb948c65123933d6c89db2c8297afba1.camel@coelho.fi>
 <YyxNx+p2k3RscYBX@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.0-2 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=3.4.6
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Mark FBC B gone if pipe B is
 gone
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 2022-09-22 at 14:57 +0300, Ville Syrj=C3=A4l=C3=A4 wrote:
> On Thu, Sep 22, 2022 at 02:37:35PM +0300, Luca Coelho wrote:
> > On Thu, 2022-09-22 at 12:36 +0300, Ville Syrj=C3=A4l=C3=A4 wrote:
> > > On Thu, Sep 22, 2022 at 11:51:16AM +0300, Jani Nikula wrote:
> > > > On Thu, 22 Sep 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.i=
ntel.com> wrote:
> > > > > On Thu, Sep 22, 2022 at 11:18:55AM +0300, Luca Coelho wrote:
> > > > > > On Fri, 2022-09-16 at 19:52 +0300, Ville Syrjala wrote:
> > > > > > > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> > > > > > >=20
> > > > > > > If pipe B is fused off we also shouldn't have FBC B.
> > > > > > >=20
> > > > > > > Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.i=
ntel.com>
> > > > > > > ---
> > > > > > >  drivers/gpu/drm/i915/intel_device_info.c | 1 +
> > > > > > >  1 file changed, 1 insertion(+)
> > > > > > >=20
> > > > > > > diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drive=
rs/gpu/drm/i915/intel_device_info.c
> > > > > > > index 1434dc33cf49..fbefebc023f1 100644
> > > > > > > --- a/drivers/gpu/drm/i915/intel_device_info.c
> > > > > > > +++ b/drivers/gpu/drm/i915/intel_device_info.c
> > > > > > > @@ -394,6 +394,7 @@ void intel_device_info_runtime_init(struc=
t drm_i915_private *dev_priv)
> > > > > > >  		if (dfsm & SKL_DFSM_PIPE_B_DISABLE) {
> > > > > > >  			runtime->pipe_mask &=3D ~BIT(PIPE_B);
> > > > > > >  			runtime->cpu_transcoder_mask &=3D ~BIT(TRANSCODER_B);
> > > > > > > +			runtime->fbc_mask &=3D ~BIT(INTEL_FBC_B);
> > > > > > >  		}
> > > > > > >  		if (dfsm & SKL_DFSM_PIPE_C_DISABLE) {
> > > > > > >  			runtime->pipe_mask &=3D ~BIT(PIPE_C);
> > > > > >=20
> > > > > > I don't know (yet) what exactly this does, but it makes sense i=
f you
> > > > > > think of consistency: we already do that for PIPE_A.
> > > > >=20
> > > > > It's basically saying the entire pipe is fused off, so anything
> > > > > living inside that pipe should also be fused off.
> > > > >=20
> > > > > >=20
> > > > > > But what about PIPE_C and PIPE_D? Wouldn't it make sense to do =
the same
> > > > > > thing for them as well?
> > > > >=20
> > > > > There is no FBC engine on those pipes (we don't even have
> > > > > the INTEL_FBC_C+ enum values defined), at least for now.
> > > >=20
> > > > A future proof way would be to add
> > > >=20
> > > > 	runtime->fbc_mask &=3D runtime->pipe_mask;
> > >=20
> > > Dunno if I entirely like the extra assumption that the enums match.
> > > Also would need to make sure we don't accidentally screw up any
> > > old platforms where FBC is not tied to a specific pipe, but I
> > > guess we should never have pipe A fused off on those w/o
> > > the entire display engine fused off as well.
> >=20
> > I must say I don't like the idea of making these assumptions across
> > different masks either.
> >=20
> > I think that, since you are reading the DFSM register at runtime to
> > check whether those pipes are fused off, you should go all the way and
> > disable everything, including in the fbc_mask for all pipes.  Then you
> > don't need to make any assumptions about whether a pipe has FBC or not.
> >=20
> > In short, I think you could add those INTEL_FBC_C+ definitions and
> > force-unset them here too...
>=20
> Hmm. I don't see any real problem with adding the FBC C+D
> enum values even if not used by any platform currently.
> Do you want to write that patch?

Sure, I can do it.  I guess it should be done _after_ your patch? Or
should I just add those definitions and you'll rebase your patch? And
there's a third option: I can add the definitions and replace your
patch with one that does this for all PIPEs at once...

Which one do you prefer?

--
Cheers,
Luca.
