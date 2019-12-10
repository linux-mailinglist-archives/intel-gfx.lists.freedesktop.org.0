Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B1B4D11893A
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 14:09:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B373F6E10A;
	Tue, 10 Dec 2019 13:09:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 427 seconds by postgrey-1.36 at gabe;
 Tue, 10 Dec 2019 13:09:14 UTC
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2942D6E10A
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 13:09:14 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Dec 2019 05:02:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,299,1571727600"; d="scan'208";a="264542790"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 10 Dec 2019 05:02:05 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 Dec 2019 15:02:04 +0200
Date: Tue, 10 Dec 2019 15:02:04 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20191210130204.GZ1208@intel.com>
References: <20191207011832.422566-1-jose.souza@intel.com>
 <20191209164044.GU1208@intel.com>
 <0871ad3238ca3e73c3bf0150725ba7ba75ed3e5f.camel@intel.com>
 <20191209194335.GX1208@intel.com>
 <1451ebc8f0a1c6b85d41cfde9d7cfb0ab26689b8.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1451ebc8f0a1c6b85d41cfde9d7cfb0ab26689b8.camel@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/tgl: Select master transcoder
 for MST stream
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Dec 10, 2019 at 02:16:23AM +0000, Souza, Jose wrote:
> On Mon, 2019-12-09 at 21:43 +0200, Ville Syrj=E4l=E4 wrote:
> > On Mon, Dec 09, 2019 at 06:45:43PM +0000, Souza, Jose wrote:
> > > On Mon, 2019-12-09 at 18:40 +0200, Ville Syrj=E4l=E4 wrote:
> > > > On Fri, Dec 06, 2019 at 05:18:29PM -0800, Jos=E9 Roberto de Souza
> > > > wrote:
> > > > > On TGL the blending of all the streams have moved from DDI to
> > > > > transcoder, so now every transcoder working over the same MST
> > > > > port
> > > > > must
> > > > > send its stream to a master transcoder and master will send to
> > > > > DDI
> > > > > respecting the time slots.
> > > > > =

> > > > > So here adding all the CRTCs that shares the same MST stream if
> > > > > needed and computing their state again, it will pick the first
> > > > > transcoder among the ones in the same stream to be master.
> > > > > =

> > > > > Most of the time skl_commit_modeset_enables() enables pipes in
> > > > > a
> > > > > crescent order but due DDB overlapping it might not happen,
> > > > > this
> > > > > scenario will be handled in the next patch.
> > > > > =

> > > > > BSpec: 50493
> > > > > BSpec: 49190
> > > > > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> > > > > Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> > > > > ---
> > > > >  drivers/gpu/drm/i915/display/intel_ddi.c      |  14 +-
> > > > >  drivers/gpu/drm/i915/display/intel_display.c  |  15 +-
> > > > >  .../drm/i915/display/intel_display_types.h    |   3 +
> > > > >  drivers/gpu/drm/i915/display/intel_dp_mst.c   | 163
> > > > > ++++++++++++++++++
> > > > >  drivers/gpu/drm/i915/display/intel_dp_mst.h   |   5 +
> > > > >  5 files changed, 196 insertions(+), 4 deletions(-)
> > > > > =

> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > > > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > > > index 3cacb1e279c1..be5bc506d4d3 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > > > @@ -1903,8 +1903,13 @@
> > > > > intel_ddi_transcoder_func_reg_val_get(const
> > > > > struct intel_crtc_state *crtc_state)
> > > > >  		temp |=3D TRANS_DDI_MODE_SELECT_DP_MST;
> > > > >  		temp |=3D DDI_PORT_WIDTH(crtc_state->lane_count);
> > > > >  =

> > > > > -		if (INTEL_GEN(dev_priv) >=3D 12)
> > > > > -			temp |=3D
> > > > > TRANS_DDI_MST_TRANSPORT_SELECT(crtc_state->cpu_transcoder);
> > > > > +		if (INTEL_GEN(dev_priv) >=3D 12) {
> > > > > +			enum transcoder master;
> > > > > +
> > > > > +			master =3D crtc_state-
> > > > > >mst_master_transcoder;
> > > > > +			WARN_ON(master =3D=3D INVALID_TRANSCODER);
> > > > =

> > > > I'd drop the WARN_ON(). If we keep adding these for every little
> > > > thing
> > > > we'll drown in them.
> > > > =

> > > > > +			temp |=3D
> > > > > TRANS_DDI_MST_TRANSPORT_SELECT(master);
> > > > > +		}
> > > > >  	} else {
> > > > >  		temp |=3D TRANS_DDI_MODE_SELECT_DP_SST;
> > > > >  		temp |=3D DDI_PORT_WIDTH(crtc_state->lane_count);
> > > > > @@ -4372,6 +4377,11 @@ void intel_ddi_get_config(struct
> > > > > intel_encoder *encoder,
> > > > >  		pipe_config->output_types |=3D
> > > > > BIT(INTEL_OUTPUT_DP_MST);
> > > > >  		pipe_config->lane_count =3D
> > > > >  			((temp & DDI_PORT_WIDTH_MASK) >>
> > > > > DDI_PORT_WIDTH_SHIFT) + 1;
> > > > > +
> > > > > +		if (INTEL_GEN(dev_priv) >=3D 12)
> > > > > +			pipe_config->mst_master_transcoder =3D
> > > > > +					REG_FIELD_GET(TRANS_DDI
> > > > > _MST_TRA
> > > > > NSPORT_SELECT_MASK, temp);
> > > > > +
> > > > >  		intel_dp_get_m_n(intel_crtc, pipe_config);
> > > > >  		break;
> > > > >  	default:
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > index 821ba8053f9d..f89494c849ce 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > @@ -46,6 +46,7 @@
> > > > >  #include "display/intel_crt.h"
> > > > >  #include "display/intel_ddi.h"
> > > > >  #include "display/intel_dp.h"
> > > > > +#include "display/intel_dp_mst.h"
> > > > >  #include "display/intel_dsi.h"
> > > > >  #include "display/intel_dvo.h"
> > > > >  #include "display/intel_gmbus.h"
> > > > > @@ -12542,6 +12543,11 @@ static void
> > > > > intel_dump_pipe_config(const
> > > > > struct intel_crtc_state *pipe_config,
> > > > >  			      pipe_config->csc_mode,
> > > > > pipe_config-
> > > > > > gamma_mode,
> > > > >  			      pipe_config->gamma_enable,
> > > > > pipe_config-
> > > > > > csc_enable);
> > > > >  =

> > > > > +	if (INTEL_GEN(dev_priv) >=3D 12 &&
> > > > > +	    intel_crtc_has_type(pipe_config,
> > > > > INTEL_OUTPUT_DP_MST))
> > > > =

> > > > Could probably print this unconditionally to keep the code less
> > > > messy.
> > > =

> > > I'm not setting mst_master_transcoder =3D INVALID_TRANSCODER in the
> > > other
> > > code paths, so it would print transcoder A for HDMI, DP SST and to
> > > DP
> > > MST in gen < 12.
> > > That is fine? Should I add mst_master_transcoder =3D
> > > INVALID_TRANSCODER
> > > to all those code paths? For me the best option is keep this
> > > checks.
> > =

> > I think setting to invalid would be nice.
> > =

> > With https://patchwork.freedesktop.org/series/69129/
> > we could even do it in a nice central place just the once.
> =

> Awesome, just rvb it.
> It still apply without conflicts and compile, moving this MST patches
> on top.

Thanks. Oh, now I remember. That series didn't pass BAT. The fix for
that is the remainder of https://patchwork.freedesktop.org/series/69366/

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
