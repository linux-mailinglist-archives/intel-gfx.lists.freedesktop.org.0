Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 096322870DA
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Oct 2020 10:40:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B8686EA4F;
	Thu,  8 Oct 2020 08:40:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CC656EA4F
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Oct 2020 08:40:31 +0000 (UTC)
IronPort-SDR: +l9pLCc3RcrnyYs8ZQ0QuMSExUOlhIixdos4MMEd06hzyT1kJaFNQXtrwfHZY1DMX8f6tm1Ney
 m7igzmpiy3Xg==
X-IronPort-AV: E=McAfee;i="6000,8403,9767"; a="226949125"
X-IronPort-AV: E=Sophos;i="5.77,350,1596524400"; d="scan'208";a="226949125"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2020 01:40:30 -0700
IronPort-SDR: JyN8+hez+8XQYz3Ux2TkiAalCZaFZxxnnAlnksOa1QKxM+r9/BBEJAIYIgJCnmAJb+fqnTHKyY
 Uj6lT7t7il9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,350,1596524400"; d="scan'208";a="388737366"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 08 Oct 2020 01:40:28 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 08 Oct 2020 11:40:28 +0300
Date: Thu, 8 Oct 2020 11:40:28 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20201008084028.GG6112@intel.com>
References: <20201006143349.5561-1-ville.syrjala@linux.intel.com>
 <20201006143349.5561-6-ville.syrjala@linux.intel.com>
 <20201007225111.zplmtcrjto3imijf@ldmartin-desk1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201007225111.zplmtcrjto3imijf@ldmartin-desk1>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 05/20] drm/i915: Introduce AUX_CH_USBCn
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 07, 2020 at 03:51:11PM -0700, Lucas De Marchi wrote:
> On Tue, Oct 06, 2020 at 05:33:34PM +0300, Ville Syrj=E4l=E4 wrote:
> >From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> >
> >Just like with the DDIs tgl+ renamed the AUX CHs to reflect
> >the type of the DDI. Let's add the aliasing enum values for
> >the type-C AUX CHs.
> >
> >Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> >---
> > drivers/gpu/drm/i915/display/intel_display.h |  8 +++
> > drivers/gpu/drm/i915/display/intel_dp.c      | 53 ++++++++++++++++++--
> > 2 files changed, 58 insertions(+), 3 deletions(-)
> >
> >diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/=
drm/i915/display/intel_display.h
> >index a39be3c9e0cf..cba876721ea0 100644
> >--- a/drivers/gpu/drm/i915/display/intel_display.h
> >+++ b/drivers/gpu/drm/i915/display/intel_display.h
> >@@ -290,6 +290,14 @@ enum aux_ch {
> > 	AUX_CH_G,
> > 	AUX_CH_H,
> > 	AUX_CH_I,
> >+
> >+	/* tgl+ */
> >+	AUX_CH_USBC1 =3D AUX_CH_D,
> >+	AUX_CH_USBC2,
> >+	AUX_CH_USBC3,
> >+	AUX_CH_USBC4,
> >+	AUX_CH_USBC5,
> >+	AUX_CH_USBC6,
> > };
> >
> > #define aux_ch_name(a) ((a) + 'A')
> >diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i=
915/display/intel_dp.c
> >index 239016dcd544..a73c354c920e 100644
> >--- a/drivers/gpu/drm/i915/display/intel_dp.c
> >+++ b/drivers/gpu/drm/i915/display/intel_dp.c
> >@@ -1792,7 +1792,6 @@ static i915_reg_t skl_aux_ctl_reg(struct intel_dp =
*intel_dp)
> > 	case AUX_CH_D:
> > 	case AUX_CH_E:
> > 	case AUX_CH_F:
> >-	case AUX_CH_G:
> > 		return DP_AUX_CH_CTL(aux_ch);
> > 	default:
> > 		MISSING_CASE(aux_ch);
> >@@ -1813,7 +1812,52 @@ static i915_reg_t skl_aux_data_reg(struct intel_d=
p *intel_dp, int index)
> > 	case AUX_CH_D:
> > 	case AUX_CH_E:
> > 	case AUX_CH_F:
> >-	case AUX_CH_G:
> >+		return DP_AUX_CH_DATA(aux_ch, index);
> >+	default:
> >+		MISSING_CASE(aux_ch);
> >+		return DP_AUX_CH_DATA(AUX_CH_A, index);
> >+	}
> >+}
> >+
> >+static i915_reg_t tgl_aux_ctl_reg(struct intel_dp *intel_dp)
> >+{
> >+	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> >+	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
> >+	enum aux_ch aux_ch =3D dig_port->aux_ch;
> >+
> >+	switch (aux_ch) {
> >+	case AUX_CH_A:
> >+	case AUX_CH_B:
> >+	case AUX_CH_C:
> >+	case AUX_CH_USBC1:
> >+	case AUX_CH_USBC2:
> >+	case AUX_CH_USBC3:
> >+	case AUX_CH_USBC4:
> >+	case AUX_CH_USBC5:
> >+	case AUX_CH_USBC6:
> >+		return DP_AUX_CH_CTL(aux_ch);
> >+	default:
> >+		MISSING_CASE(aux_ch);
> >+		return DP_AUX_CH_CTL(AUX_CH_A);
> >+	}
> >+}
> >+
> >+static i915_reg_t tgl_aux_data_reg(struct intel_dp *intel_dp, int index)
> >+{
> >+	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> >+	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
> >+	enum aux_ch aux_ch =3D dig_port->aux_ch;
> >+
> >+	switch (aux_ch) {
> >+	case AUX_CH_A:
> >+	case AUX_CH_B:
> >+	case AUX_CH_C:
> >+	case AUX_CH_USBC1:
> >+	case AUX_CH_USBC2:
> >+	case AUX_CH_USBC3:
> >+	case AUX_CH_USBC4:
> >+	case AUX_CH_USBC5:
> >+	case AUX_CH_USBC6:
> > 		return DP_AUX_CH_DATA(aux_ch, index);
> > 	default:
> > 		MISSING_CASE(aux_ch);
> >@@ -1834,7 +1878,10 @@ intel_dp_aux_init(struct intel_dp *intel_dp)
> > 	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
> > 	struct intel_encoder *encoder =3D &dig_port->base;
> >
> >-	if (INTEL_GEN(dev_priv) >=3D 9) {
> >+	if (INTEL_GEN(dev_priv) >=3D 12) {
> >+		intel_dp->aux_ch_ctl_reg =3D tgl_aux_ctl_reg;
> =

> why is this even a function pointer rather than just the reg? AFAICS it
> only depends on dig_port->aux_ch that is initialized in intel_ddi_init()

Just for consistency with .aux_ch_data_reg() I guess. Can't remember
a more specific reason at least.

> =

> but could be orthogonal to the change here.
> =

> =

> Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
> =

> Lucas De Marchi
> =

> >+		intel_dp->aux_ch_data_reg =3D tgl_aux_data_reg;
> >+	} else if (INTEL_GEN(dev_priv) >=3D 9) {
> > 		intel_dp->aux_ch_ctl_reg =3D skl_aux_ctl_reg;
> > 		intel_dp->aux_ch_data_reg =3D skl_aux_data_reg;
> > 	} else if (HAS_PCH_SPLIT(dev_priv)) {
> >-- =

> >2.26.2
> >
> >_______________________________________________
> >Intel-gfx mailing list
> >Intel-gfx@lists.freedesktop.org
> >https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
