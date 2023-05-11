Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D5656FECC8
	for <lists+intel-gfx@lfdr.de>; Thu, 11 May 2023 09:29:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A629210E085;
	Thu, 11 May 2023 07:29:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from farmhouse.coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 702E410E085
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 May 2023 07:29:06 +0000 (UTC)
Received: from 91-155-254-196.elisa-laajakaista.fi ([91.155.254.196]
 helo=[192.168.100.137])
 by farmhouse.coelho.fi with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <luca@coelho.fi>) id 1px0jV-008Hs7-Uv;
 Thu, 11 May 2023 10:29:03 +0300
Message-ID: <fd19232a9a6a82fcb6875b2d603bdaa1f71c2699.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Ville Syrjala <ville.syrjala@linux.intel.com>, 
 intel-gfx@lists.freedesktop.org
Date: Thu, 11 May 2023 10:29:01 +0300
In-Reply-To: <20230426135019.7603-8-ville.syrjala@linux.intel.com>
References: <20230426135019.7603-1-ville.syrjala@linux.intel.com>
 <20230426135019.7603-8-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP,UPPERCASE_50_75 autolearn=no autolearn_force=no
 version=3.4.6
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 2023-04-26 at 16:50 +0300, Ville Syrjala wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>=20
> To avoid annoying spec lookups let's define more PS_CTRL
> bits in the header.
>=20
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index f5ae8d1eb6ff..e08bb15eddcf 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4055,6 +4055,9 @@
>  #define _PS_2B_CTRL      0x68A80
>  #define _PS_1C_CTRL      0x69180
>  #define   PS_SCALER_EN				REG_BIT(31)
> +#define   PS_SCALER_TYPE_MASK			REG_BIT(30) /* icl+ */
> +#define   PS_SCALER_TYPE_NON_LINEAR		REG_FIELD_PREP(PS_SCALER_TYPE_MASK,=
 0)
> +#define   PS_SCALER_TYPE_LINEAR			REG_FIELD_PREP(PS_SCALER_TYPE_MASK, 1)
>  #define   SKL_PS_SCALER_MODE_MASK		REG_GENMASK(29, 28) /* skl/bxt */
>  #define   SKL_PS_SCALER_MODE_DYN		REG_FIELD_PREP(SKL_PS_SCALER_MODE_MASK=
, 0)
>  #define   SKL_PS_SCALER_MODE_HQ			REG_FIELD_PREP(SKL_PS_SCALER_MODE_MASK=
, 1)
> @@ -4062,6 +4065,7 @@
>  #define   PS_SCALER_MODE_MASK			REG_BIT(29) /* glk-tgl */
>  #define   PS_SCALER_MODE_NORMAL			REG_FIELD_PREP(PS_SCALER_MODE_MASK, 0)
>  #define   PS_SCALER_MODE_PLANAR			REG_FIELD_PREP(PS_SCALER_MODE_MASK, 1)
> +#define   PS_ADAPTIVE_FILTERING_EN		REG_BIT(28) /* icl+ */
>  #define   PS_BINDING_MASK			REG_GENMASK(27, 25)
>  #define   PS_BINDING_PIPE			REG_FIELD_PREP(PS_BINDING_MASK, 0)
>  #define   PS_BINDING_PLANE(plane_id)		REG_FIELD_PREP(PS_BINDING_MASK, (p=
lane_id) + 1)
> @@ -4070,8 +4074,15 @@
>  #define   PS_FILTER_PROGRAMMED			REG_FIELD_PREP(PS_FILTER_MASK, 1)
>  #define   PS_FILTER_EDGE_ENHANCE		REG_FIELD_PREP(PS_FILTER_MASK, 2)
>  #define   PS_FILTER_BILINEAR			REG_FIELD_PREP(PS_FILTER_MASK, 3)
> +#define   PS_ADAPTIVE_FILTER_MASK		REG_BIT(22) /* icl+ */
> +#define   PS_ADAPTIVE_FILTER_MEDIUM		REG_FIELD_PREP(PS_ADAPTIVE_FILTER_M=
ASK, 0)
> +#define   PS_ADAPTIVE_FILTER_EDGE_ENHANCE	REG_FIELD_PREP(PS_ADAPTIVE_FIL=
TER_MASK, 1)
> +#define   PS_PIPE_SCALER_LOC_MASK		REG_BIT(21) /* icl+ */
> +#define   PS_PIPE_SCALER_LOC_AFTER_OUTPUT_CSC	REG_FIELD_PREP(PS_SCALER_L=
OCATION_MASK, 0) /* non-linear */
> +#define   PS_PIPE_SCALER_LOC_AFTER_CSC		REG_FIELD_PREP(PS_SCALER_LOCATIO=
N_MASK, 1) /* linear */
>  #define   PS_VERT3TAP				REG_BIT(21) /* skl/bxt */
>  #define   PS_VERT_INT_INVERT_FIELD		REG_BIT(20)
> +#define   PS_PROG_SCALE_FACTOR			REG_BIT(19) /* tgl+ */

This one is actually a two-bit field, isn't it? 19:18.  And why not
define the values for it here too, like with the previous ones?

>  #define   PS_PWRUP_PROGRESS			REG_BIT(17)
>  #define   PS_V_FILTER_BYPASS			REG_BIT(8)
>  #define   PS_VADAPT_EN				REG_BIT(7) /* skl/bxt */

--
Cheers,
Luca.
