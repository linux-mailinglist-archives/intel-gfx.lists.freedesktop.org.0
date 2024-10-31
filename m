Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4135C9B7936
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2024 11:59:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 253B310E85F;
	Thu, 31 Oct 2024 10:59:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C86D910E85F
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2024 10:59:36 +0000 (UTC)
Received: from 91-155-254-140.elisa-laajakaista.fi ([91.155.254.140]
 helo=[192.168.100.133])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1t6Stq-00000001BK8-3ssd; Thu, 31 Oct 2024 12:59:35 +0200
Message-ID: <c8e438656ac532d08870881458c9f8eb8d5550fd.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 31 Oct 2024 12:59:33 +0200
In-Reply-To: <ZyNiqX4w0Txzc74g@ideak-desk.fi.intel.com>
References: <20241030192313.4030617-1-imre.deak@intel.com>
 <20241030192313.4030617-2-imre.deak@intel.com>
 <b993583d89f0cea37af1c1dc19009b9bc0d7450d.camel@coelho.fi>
 <ZyNiqX4w0Txzc74g@ideak-desk.fi.intel.com>
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
Subject: Re: [PATCH v2 1/5] drm/i915/ptl/dp_mst: Fix slave transcoder
 enabling wrt. DDI function
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

On Thu, 2024-10-31 at 12:57 +0200, Imre Deak wrote:
> On Thu, Oct 31, 2024 at 12:44:38PM +0200, Luca Coelho wrote:
> > On Wed, 2024-10-30 at 21:23 +0200, Imre Deak wrote:
> > > On PTL during modeset enabling configure the DDI function without
> > > enabling it for MST slave transcoders before programming the data and
> > > link M/N values. The DDI function gets enabled separately later in th=
e
> > > transcoder enabling sequence.
> > >=20
> > > This fixes a slave transcoder getting stuck during enabling, leading
> > > to page flip timeout errors on the corresponding pipe.
> > >=20
> > > The spec requires the same programming step for ADLP+ platforms, that
> > > will be addressed separately (on those platforms the above transcoder
> > > getting stuck issue was not observed).
> > >=20
> > > Bspec: 68849
> > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_ddi.c    | 2 +-
> > >  drivers/gpu/drm/i915/display/intel_ddi.h    | 2 ++
> > >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 3 +++
> > >  3 files changed, 6 insertions(+), 1 deletion(-)
> > >=20
> > > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/d=
rm/i915/display/intel_ddi.c
> > > index 2bd14e2134be9..069cca4b38b2e 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > @@ -619,7 +619,7 @@ void intel_ddi_enable_transcoder_func(struct inte=
l_encoder *encoder,
> > >   * Same as intel_ddi_enable_transcoder_func(), but it does not set t=
he enable
> > >   * bit.
> > >   */
> > > -static void
> > > +void
> > >  intel_ddi_config_transcoder_func(struct intel_encoder *encoder,
> > >  				 const struct intel_crtc_state *crtc_state)
> >=20
> > The void fits on the same line, and I think it looks better?
>=20
> Ok, will change that.
>=20
> > >  {
> > > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h b/drivers/gpu/d=
rm/i915/display/intel_ddi.h
> > > index 6d85422bdefef..1aa2e3a190aee 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_ddi.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_ddi.h
> > > @@ -57,6 +57,8 @@ void intel_wait_ddi_buf_idle(struct drm_i915_privat=
e *dev_priv,
> > >  void intel_ddi_init(struct intel_display *display,
> > >  		    const struct intel_bios_encoder_data *devdata);
> > >  bool intel_ddi_get_hw_state(struct intel_encoder *encoder, enum pipe=
 *pipe);
> > > +void intel_ddi_config_transcoder_func(struct intel_encoder *encoder,
> > > +				      const struct intel_crtc_state *crtc_state);
> > >  void intel_ddi_enable_transcoder_func(struct intel_encoder *encoder,
> > >  				      const struct intel_crtc_state *crtc_state);
> > >  void intel_ddi_disable_transcoder_func(const struct intel_crtc_state=
 *crtc_state);
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gp=
u/drm/i915/display/intel_dp_mst.c
> > > index 1a2ff3e1cb68f..7c16406883594 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > @@ -1224,6 +1224,9 @@ static void intel_mst_pre_enable_dp(struct inte=
l_atomic_state *state,
> > >  	if (DISPLAY_VER(dev_priv) < 12 || !first_mst_stream)
> > >  		intel_ddi_enable_transcoder_clock(encoder, pipe_config);
> > > =20
> > > +	if (DISPLAY_VER(dev_priv) >=3D 30 && !first_mst_stream)
> > > +		intel_ddi_config_transcoder_func(encoder, pipe_config);
> > > +
> > >  	intel_dsc_dp_pps_write(&dig_port->base, pipe_config);
> > >  	intel_ddi_set_dp_msa(pipe_config, conn_state);
> > >  }
> >=20
> > I don't see the part where you changed the code to _not_ enable this,
> > since you're calling intel_ddi_config_transcoder_func() here now...
> >=20
> > Did I miss something?
>=20
> This only _configures_ the DDI function - which was missing so far - the
> enabling and disabling happens separately later, in
> intel_mst_enable_dp() / intel_mst_post_disable_dp() - which are done
> already as expected.

Okay, that explains it.  Thanks.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
