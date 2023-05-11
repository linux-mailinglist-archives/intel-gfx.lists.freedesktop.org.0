Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F8666FF1EC
	for <lists+intel-gfx@lfdr.de>; Thu, 11 May 2023 14:54:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8943010E1F0;
	Thu, 11 May 2023 12:54:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from farmhouse.coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 815C810E1F0
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 May 2023 12:54:10 +0000 (UTC)
Received: from 85-76-139-100-nat.elisa-mobile.fi ([85.76.139.100]
 helo=[192.168.155.10])
 by farmhouse.coelho.fi with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <luca@coelho.fi>) id 1px5o5-008IAr-2P;
 Thu, 11 May 2023 15:54:06 +0300
Message-ID: <44c8f8ec1a1d32fd0d530dc8bcda3dfc8fdec45e.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Ville =?ISO-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Date: Thu, 11 May 2023 15:54:04 +0300
In-Reply-To: <ZFzXigQck7Vk7Mkf@intel.com>
References: <20230426135019.7603-1-ville.syrjala@linux.intel.com>
 <20230426135019.7603-8-ville.syrjala@linux.intel.com>
 <fd19232a9a6a82fcb6875b2d603bdaa1f71c2699.camel@coelho.fi>
 <ZFzXigQck7Vk7Mkf@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 UPPERCASE_50_75 autolearn=no autolearn_force=no version=3.4.6
Subject: Re: [Intel-gfx] [PATCH v2 7/7] drm/i915: Define more PS_CTRL bits
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

On Thu, 2023-05-11 at 14:54 +0300, Ville Syrj=C3=A4l=C3=A4 wrote:
> On Thu, May 11, 2023 at 10:29:01AM +0300, Luca Coelho wrote:
> > On Wed, 2023-04-26 at 16:50 +0300, Ville Syrjala wrote:
> > > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> > >=20
> > > To avoid annoying spec lookups let's define more PS_CTRL
> > > bits in the header.
> > >=20
> > > Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
>
> > > ---
> > >  drivers/gpu/drm/i915/i915_reg.h | 11 +++++++++++
> > >  1 file changed, 11 insertions(+)
> > >=20
> > > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i=
915_reg.h
> > > index f5ae8d1eb6ff..e08bb15eddcf 100644
> > > --- a/drivers/gpu/drm/i915/i915_reg.h
> > > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > > @@ -4055,6 +4055,9 @@
> > >  #define _PS_2B_CTRL      0x68A80
> > >  #define _PS_1C_CTRL      0x69180
> > >  #define   PS_SCALER_EN				REG_BIT(31)
> > > +#define   PS_SCALER_TYPE_MASK			REG_BIT(30) /* icl+ */
> > > +#define   PS_SCALER_TYPE_NON_LINEAR		REG_FIELD_PREP(PS_SCALER_TYPE_M=
ASK, 0)
> > > +#define   PS_SCALER_TYPE_LINEAR			REG_FIELD_PREP(PS_SCALER_TYPE_MASK=
, 1)
> > >  #define   SKL_PS_SCALER_MODE_MASK		REG_GENMASK(29, 28) /* skl/bxt */
> > >  #define   SKL_PS_SCALER_MODE_DYN		REG_FIELD_PREP(SKL_PS_SCALER_MODE_=
MASK, 0)
> > >  #define   SKL_PS_SCALER_MODE_HQ			REG_FIELD_PREP(SKL_PS_SCALER_MODE_=
MASK, 1)
> > > @@ -4062,6 +4065,7 @@
> > >  #define   PS_SCALER_MODE_MASK			REG_BIT(29) /* glk-tgl */
> > >  #define   PS_SCALER_MODE_NORMAL			REG_FIELD_PREP(PS_SCALER_MODE_MASK=
, 0)
> > >  #define   PS_SCALER_MODE_PLANAR			REG_FIELD_PREP(PS_SCALER_MODE_MASK=
, 1)
> > > +#define   PS_ADAPTIVE_FILTERING_EN		REG_BIT(28) /* icl+ */
> > >  #define   PS_BINDING_MASK			REG_GENMASK(27, 25)
> > >  #define   PS_BINDING_PIPE			REG_FIELD_PREP(PS_BINDING_MASK, 0)
> > >  #define   PS_BINDING_PLANE(plane_id)		REG_FIELD_PREP(PS_BINDING_MASK=
, (plane_id) + 1)
> > > @@ -4070,8 +4074,15 @@
> > >  #define   PS_FILTER_PROGRAMMED			REG_FIELD_PREP(PS_FILTER_MASK, 1)
> > >  #define   PS_FILTER_EDGE_ENHANCE		REG_FIELD_PREP(PS_FILTER_MASK, 2)
> > >  #define   PS_FILTER_BILINEAR			REG_FIELD_PREP(PS_FILTER_MASK, 3)
> > > +#define   PS_ADAPTIVE_FILTER_MASK		REG_BIT(22) /* icl+ */
> > > +#define   PS_ADAPTIVE_FILTER_MEDIUM		REG_FIELD_PREP(PS_ADAPTIVE_FILT=
ER_MASK, 0)
> > > +#define   PS_ADAPTIVE_FILTER_EDGE_ENHANCE	REG_FIELD_PREP(PS_ADAPTIVE=
_FILTER_MASK, 1)
> > > +#define   PS_PIPE_SCALER_LOC_MASK		REG_BIT(21) /* icl+ */
> > > +#define   PS_PIPE_SCALER_LOC_AFTER_OUTPUT_CSC	REG_FIELD_PREP(PS_SCAL=
ER_LOCATION_MASK, 0) /* non-linear */
> > > +#define   PS_PIPE_SCALER_LOC_AFTER_CSC		REG_FIELD_PREP(PS_SCALER_LOC=
ATION_MASK, 1) /* linear */
> > >  #define   PS_VERT3TAP				REG_BIT(21) /* skl/bxt */
> > >  #define   PS_VERT_INT_INVERT_FIELD		REG_BIT(20)
> > > +#define   PS_PROG_SCALE_FACTOR			REG_BIT(19) /* tgl+ */
> >=20
> > This one is actually a two-bit field, isn't it? 19:18.  And why not
> > define the values for it here too, like with the previous ones?
>=20
> It's still a single bit in current hardware.

Oh, sorry, I checked the wrong specs.  In that case:

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
