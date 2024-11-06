Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 066799BEA14
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 13:40:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DC8710E10F;
	Wed,  6 Nov 2024 12:40:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BB3D10E10F
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2024 12:40:22 +0000 (UTC)
Received: from 37-33-128-53.bb.dnainternet.fi ([37.33.128.53]
 helo=[192.168.8.139])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1t8fKc-00000001UQj-2Xkr; Wed, 06 Nov 2024 14:40:20 +0200
Message-ID: <07610cf716c9c25d0c547c1e2bde72e015753361.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 06 Nov 2024 14:38:47 +0200
In-Reply-To: <ZyNswWHJH0b-YrTR@ideak-desk.fi.intel.com>
References: <20241030192313.4030617-1-imre.deak@intel.com>
 <20241030192313.4030617-3-imre.deak@intel.com>
 <29823959a085854bfa6208e078199eb9e6934c50.camel@coelho.fi>
 <ZyNswWHJH0b-YrTR@ideak-desk.fi.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.1-1 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1-pre1 (2023-11-21) on
 farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
 version=4.0.1-pre1
Subject: Re: [PATCH v2 2/5] drm/i915/adlp+/dp_mst: Align slave transcoder
 enabling with spec wrt. DDI function
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

On Thu, 2024-10-31 at 13:40 +0200, Imre Deak wrote:
> On Thu, Oct 31, 2024 at 12:49:22PM +0200, Luca Coelho wrote:
> > On Wed, 2024-10-30 at 21:23 +0200, Imre Deak wrote:
> > > On ADLP+ during modeset enabling configure the DDI function without
> > > enabling it for MST slave transcoders before programming the data and
> > > link M/N values. The DDI function gets enabled separately later in th=
e
> > > transcoder enabling sequence.
> > >=20
> > > Align the code with the spec based on the above.
> > >=20
> > > v2: Move this patch earlier in the series, addressing the DP2
> > >     config fixes for all ADLP+ platforms later.
> > >=20
> > > Bspec: 55424, 54128, 65448, 68849
> > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >=20
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gp=
u/drm/i915/display/intel_dp_mst.c
> > > index 7c16406883594..bf264bd1881b5 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > @@ -1224,7 +1224,7 @@ static void intel_mst_pre_enable_dp(struct inte=
l_atomic_state *state,
> > >  	if (DISPLAY_VER(dev_priv) < 12 || !first_mst_stream)
> > >  		intel_ddi_enable_transcoder_clock(encoder, pipe_config);
> > > =20
> > > -	if (DISPLAY_VER(dev_priv) >=3D 30 && !first_mst_stream)
> > > +	if (DISPLAY_VER(dev_priv) >=3D 13 && !first_mst_stream)
> > >  		intel_ddi_config_transcoder_func(encoder, pipe_config);
> > > =20
> > >  	intel_dsc_dp_pps_write(&dig_port->base, pipe_config);
> >=20
> > You are essentially modifying the first patch in the series here, is it
> > because you want to keep the ADLP+ change separate?
>=20
> Yes, the first patch clearly fixes an issue on PTL. On other ADLP+
> platforms this (and the follow-up DP2 config changes) is just what bspec
> says to do, the lack of which never having caused a problem. Based on
> all this I wanted to keep the PTL fix separate and first, making it
> easier to revert any of the other changes if they caused a problem
> (turning out that the spec was incorrect).
>=20
> > In that case, wouldn't it be better to do this first so the ADLP+
> > change could be more easily backported?
>=20
> If that would be required - I'd only backport if there was an evidence
> that it fixes things - I'd either backport it along with the first patch
> as a dependency, or just send this one patch separately rebased on the
> stable trees (which would be the first two patches combined).
>=20
> > IMHO it's better to first fix stuff for older HW that is not correct
> > and then add new changes for new HW on top of that.
>=20
> Agreed for actual fixes, but in this case the only clear fix is the
> first one, the rest being just alignment with the spec (and as such
> better kept them easy to revert).

Fair enough.  Sorry for not responding before, for some reason it seems
that I didn't get this email in my inbox, only in the list.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
