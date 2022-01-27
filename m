Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32A3449E152
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 12:41:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2537F10E15A;
	Thu, 27 Jan 2022 11:41:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAD3310E15A
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jan 2022 11:41:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643283702; x=1674819702;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=COcFJMcnPlEGMNu2fB0b6xsF3bpS6U//1Wj25PP0wCg=;
 b=BMO5uYF/6xvuN5vRT7NqB+ir5um4ULd/nrXEtJU13tZ8FhOtN2r3iRT7
 pEKq//fBTSbKyIEfJXRYJgjgMStDZ3vkSBOH3jeU1qiwLy0d+8WDTustk
 RtBlK8mNTa2CF1vQ4HVCbK2kn7Y1wuFkS+a5mYPZdje5Sf6w7Oq7zS8xG
 YB1/33mib9eTE+6CXykJQDxYhiB1YOI8r0fS/KY3abrfuw8SedlsgIwqx
 lY1RIMeuEqDzTyw3exrGOa0Ei3Z3ywWorBn2UszfGY3WzywkpngjbZa8b
 vGwQ1Jw4c5XaQmf07uEQCRqRgmO57M/uZ5lJiX4t/Mp/GiXi5a3oZCBSc Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="246602827"
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="246602827"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 03:41:42 -0800
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="769706923"
Received: from johnlyon-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.16.209])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 03:41:40 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <YfKC1RR62rWp/M3G@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220127093303.17309-1-ville.syrjala@linux.intel.com>
 <20220127093303.17309-3-ville.syrjala@linux.intel.com>
 <87wnilwhq6.fsf@intel.com> <YfKC1RR62rWp/M3G@intel.com>
Date: Thu, 27 Jan 2022 13:41:36 +0200
Message-ID: <87lez1wglr.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 02/14] drm/i915: Clean up M/N register
 defines
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

On Thu, 27 Jan 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, Jan 27, 2022 at 01:17:21PM +0200, Jani Nikula wrote:
>> On Thu, 27 Jan 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
>> > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >
>> > Use REG_GENMASK() & co. for the M/N register values. There are
>> > also a lot of weird unused defines (eg. *_OFFSET) we can just
>> > throw out.
>> >
>> > Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_display.c | 10 ++++-----
>> >  drivers/gpu/drm/i915/i915_reg.h              | 22 +++-----------------
>> >  2 files changed, 8 insertions(+), 24 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gp=
u/drm/i915/display/intel_display.c
>> > index f76faa195cb9..d91164d1eb92 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_display.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> > @@ -3865,11 +3865,11 @@ static void intel_get_m_n(struct drm_i915_priv=
ate *i915,
>> >  			  i915_reg_t data_m_reg, i915_reg_t data_n_reg,
>> >  			  i915_reg_t link_m_reg, i915_reg_t link_n_reg)
>> >  {
>> > -	m_n->link_m =3D intel_de_read(i915, link_m_reg);
>> > -	m_n->link_n =3D intel_de_read(i915, link_n_reg);
>> > -	m_n->gmch_m =3D intel_de_read(i915, data_m_reg) & ~TU_SIZE_MASK;
>> > -	m_n->gmch_n =3D intel_de_read(i915, data_n_reg);
>> > -	m_n->tu =3D ((intel_de_read(i915, data_m_reg) & TU_SIZE_MASK) >> TU_=
SIZE_SHIFT) + 1;
>> > +	m_n->link_m =3D intel_de_read(i915, link_m_reg) & DATA_LINK_M_N_MASK;
>> > +	m_n->link_n =3D intel_de_read(i915, link_n_reg) & DATA_LINK_M_N_MASK;
>> > +	m_n->gmch_m =3D intel_de_read(i915, data_m_reg) & DATA_LINK_M_N_MASK;
>> > +	m_n->gmch_n =3D intel_de_read(i915, data_n_reg) & DATA_LINK_M_N_MASK;
>> > +	m_n->tu =3D REG_FIELD_GET(TU_SIZE_MASK, intel_de_read(i915, data_m_r=
eg)) + 1;
>>=20
>> The commit message might mention we throw some bits away while reading.
>
> Right, forgot to note that.
>
>>=20
>> A follow-up could perhasps axe the double read of the data_m_reg, but
>> *shrug*.
>
> I was going back and forth between keeping the double read vs. reading
> each just once here vs. reading straight in the callers and just passing
> the values through (would avoid needing i915_reg_t for the prototype
> in the headrer in a later patch). Somehow none of them tasted quit right
> so opted to keep the current thing for now.

Yeah, not a big deal. Also now that i915_reg_t is in i915_reg_defs.h I
think the overhead for that is neglible.

BR,
Jani.

>
>>=20
>> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
>>=20
>>=20
>> >  }
>> >=20=20
>> >  static void intel_pch_transcoder_get_m_n(struct intel_crtc *crtc,
>> > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i9=
15_reg.h
>> > index 2e4dd9db63fe..ec48406eb37a 100644
>> > --- a/drivers/gpu/drm/i915/i915_reg.h
>> > +++ b/drivers/gpu/drm/i915/i915_reg.h
>> > @@ -5209,16 +5209,14 @@ enum {
>> >  #define _PIPEB_DATA_M_G4X	0x71050
>> >=20=20
>> >  /* Transfer unit size for display port - 1, default is 0x3f (for TU s=
ize 64) */
>> > -#define  TU_SIZE(x)             (((x) - 1) << 25) /* default size 64 =
*/
>> > -#define  TU_SIZE_SHIFT		25
>> > -#define  TU_SIZE_MASK           (0x3f << 25)
>> > +#define  TU_SIZE_MASK		REG_GENMASK(30, 25)
>> > +#define  TU_SIZE(x)		REG_FIELD_PREP(TU_SIZE_MASK, (x) - 1) /* default=
 size 64 */
>> >=20=20
>> > -#define  DATA_LINK_M_N_MASK	(0xffffff)
>> > +#define  DATA_LINK_M_N_MASK	REG_GENMASK(23, 0)
>> >  #define  DATA_LINK_N_MAX	(0x800000)
>> >=20=20
>> >  #define _PIPEA_DATA_N_G4X	0x70054
>> >  #define _PIPEB_DATA_N_G4X	0x71054
>> > -#define   PIPE_GMCH_DATA_N_MASK			(0xffffff)
>> >=20=20
>> >  /*
>> >   * Computing Link M and N values for the Display Port link
>> > @@ -5233,11 +5231,8 @@ enum {
>> >=20=20
>> >  #define _PIPEA_LINK_M_G4X	0x70060
>> >  #define _PIPEB_LINK_M_G4X	0x71060
>> > -#define   PIPEA_DP_LINK_M_MASK			(0xffffff)
>> > -
>> >  #define _PIPEA_LINK_N_G4X	0x70064
>> >  #define _PIPEB_LINK_N_G4X	0x71064
>> > -#define   PIPEA_DP_LINK_N_MASK			(0xffffff)
>> >=20=20
>> >  #define PIPE_DATA_M_G4X(pipe) _MMIO_PIPE(pipe, _PIPEA_DATA_M_G4X, _PI=
PEB_DATA_M_G4X)
>> >  #define PIPE_DATA_N_G4X(pipe) _MMIO_PIPE(pipe, _PIPEA_DATA_N_G4X, _PI=
PEB_DATA_N_G4X)
>> > @@ -6840,24 +6835,13 @@ enum {
>> >=20=20
>> >=20=20
>> >  #define _PIPEA_DATA_M1		0x60030
>> > -#define  PIPE_DATA_M1_OFFSET    0
>> >  #define _PIPEA_DATA_N1		0x60034
>> > -#define  PIPE_DATA_N1_OFFSET    0
>> > -
>> >  #define _PIPEA_DATA_M2		0x60038
>> > -#define  PIPE_DATA_M2_OFFSET    0
>> >  #define _PIPEA_DATA_N2		0x6003c
>> > -#define  PIPE_DATA_N2_OFFSET    0
>> > -
>> >  #define _PIPEA_LINK_M1		0x60040
>> > -#define  PIPE_LINK_M1_OFFSET    0
>> >  #define _PIPEA_LINK_N1		0x60044
>> > -#define  PIPE_LINK_N1_OFFSET    0
>> > -
>> >  #define _PIPEA_LINK_M2		0x60048
>> > -#define  PIPE_LINK_M2_OFFSET    0
>> >  #define _PIPEA_LINK_N2		0x6004c
>> > -#define  PIPE_LINK_N2_OFFSET    0
>> >=20=20
>> >  /* PIPEB timing regs are same start from 0x61000 */
>>=20
>> --=20
>> Jani Nikula, Intel Open Source Graphics Center

--=20
Jani Nikula, Intel Open Source Graphics Center
