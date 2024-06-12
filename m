Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 978F6905E76
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2024 00:26:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7C6610E936;
	Wed, 12 Jun 2024 22:26:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 271F710E931
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jun 2024 22:26:05 +0000 (UTC)
Received: from 91-156-7-239.elisa-laajakaista.fi ([91.156.7.239] helo=hazy.lan)
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1sHWPo-00000001auk-2I2D; Thu, 13 Jun 2024 01:26:01 +0300
Message-ID: <2bb88a2fef174083b3fe31d4cdf53b7dd3ca95ac.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Jun 2024 01:25:59 +0300
In-Reply-To: <Zmm9ORwXa94lCLNH@ideak-desk.fi.intel.com>
References: <20240611153351.3013235-1-imre.deak@intel.com>
 <8714585171d2fe7b8df27971486f44747fc94786.camel@coelho.fi>
 <Zmm9ORwXa94lCLNH@ideak-desk.fi.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1-pre1 (2023-11-21) on
 farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
 version=4.0.1-pre1
Subject: Re: [PATCH] drm/i915/dp_mst: Fix DSC input BPP computation
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

On Wed, 2024-06-12 at 18:22 +0300, Imre Deak wrote:
> On Wed, Jun 12, 2024 at 04:35:36PM +0300, Luca Coelho wrote:
> > Hi Imre,
> >=20
> > On Tue, 2024-06-11 at 18:33 +0300, Imre Deak wrote:
> > > The branch or sink device decompressing a stream may have a limitatio=
n
> > > on the input/uncompressed BPP, which is lower than the base line BPP
> > > (determined by the sink's EDID). In some cases a stream with an input
> > > BPP higher than this limit will be converted automatically by the dev=
ice
> > > decompressing the stream, by truncating the BPP, however in some case=
s
> > > - seen at least in Dell dock's DP->HDMI converters - the decompressio=
n
> > > will fail.
> > >=20
> > > Fix the above by limiting the input BPP correctly. This is done alrea=
dy
> > > correctly for SST outputs.
> > >=20
> > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 2 ++
> > >  1 file changed, 2 insertions(+)
> > >=20
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gp=
u/drm/i915/display/intel_dp_mst.c
> > > index 00fdcbc28e9b7..15c20bedea091 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > @@ -349,6 +349,8 @@ static int intel_dp_dsc_mst_compute_link_config(s=
truct intel_encoder *encoder,
> > >  	if (max_bpp > sink_max_bpp)
> > >  		max_bpp =3D sink_max_bpp;
> > > =20
> > > +	crtc_state->pipe_bpp =3D max_bpp;
> > > +
> > >  	max_compressed_bpp =3D intel_dp_dsc_sink_max_compressed_bpp(connect=
or,
> > >  								  crtc_state,
> > >  								  max_bpp / 3);
> >=20
> > Wouldn't it be better to make the assignment in
> > intel_dp_dsc_sink_max_compressed_bpp(), since that function is already
> > making modifications to crtc_state?
>=20
> Agreed, this is less than ideal atm. The whole MST DSC state computation
> would need a refactor, at least to sanitize it wrt. the MST/non-DSC and
> the SST DSC counterparts (also planned by others). Hence, it made sense
> to keep this fix simple.

I'm totally for simple fixes!


> Also, the rational I saw for this way was that the input/uncompressed
> bpp (max_bpp above), which isn't relavant in the non-DSC case, is
> computed in intel_dp_dsc_mst_compute_link_config() and
> intel_dp_mst_find_vcpi_slots_for_bpp() would only compute the
> output/compressed bpp (relevant to both DSC and non-DSC case). Imo in
> the end the computation for these two cases should be separated into
> their own functions, instead of passing a 'bool dsc' param to a common
> function handling both cases.

Makes sense.  It's best to avoid this sort of boolean that changes the
function's semantics.


> > There is another caller, but I think it may benefit from the same check=
.
>=20
> For the non-DSC case the above limit doesn't apply (at least I'm not
> aware of it).

Yeah, but AFAICT, in this case, it wouldn't really matter, right? The
remote's max_bpp would never be greater than the current one in this
case.


> > But this is just a nitpick.  Either way, you have:
> >=20
> > Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
>=20
> Thanks!

--
Cheers,
Luca.
