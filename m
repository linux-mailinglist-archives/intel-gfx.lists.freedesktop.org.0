Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 68D7849E08E
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 12:18:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95E5D10EEA7;
	Thu, 27 Jan 2022 11:18:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E737910EEA7
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jan 2022 11:18:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643282319; x=1674818319;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=VENAIUWUahZCfLIhObr3cppcvoPwFM0qGW97S7gcjQI=;
 b=VExYw2LxTAxIYiZ7Qn9k4qMl67A32PHX57+9Mz1ZgMUVhmGhI+jQdKLw
 fXOpGdkX57lPsPsYSpw9BXmQVzcrlELKSHPvF5+iPqMkB620wZHsKbfnz
 H7AqXPaDwg7s/iczeBgEi4s/dHAJt6IYuP3wSTNNKCQtzkBqo5gC42kfQ
 7dO8CM6+jvMUN8dnGS/E8dMlq9zZXOKWHZRmcbyVEQc+TLNrx4HrBxEF0
 RqIKPBYhN2+ScYKKWWAY4vFhB3kgoBrJ5M5AMvNWemJuthA/D3ZzgDHQ3
 V5xrKvWqSOSZDtK7Wtgo5vy4OMNylW0Mh+pWVRpKqau3hg35JZyL4Od5m g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="245660892"
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="245660892"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 03:18:39 -0800
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="535608527"
Received: from johnlyon-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.16.209])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 03:18:37 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220127093303.17309-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220127093303.17309-1-ville.syrjala@linux.intel.com>
 <20220127093303.17309-4-ville.syrjala@linux.intel.com>
Date: Thu, 27 Jan 2022 13:18:33 +0200
Message-ID: <87tudpwho6.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 03/14] drm/i915: s/gmch_{m,n}/data_{m,n}/
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

On Thu, 27 Jan 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Rename the gmch_* M/N members to data_* to match the register
> definitions and thus make life a little less confusing.

Yes, please!

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c     |  4 +-
>  drivers/gpu/drm/i915/display/intel_display.c | 48 ++++++++++----------
>  drivers/gpu/drm/i915/display/intel_display.h |  4 +-
>  drivers/gpu/drm/i915/display/intel_dp.c      |  2 +-
>  drivers/gpu/drm/i915/display/intel_drrs.c    |  2 +-
>  5 files changed, 30 insertions(+), 30 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 5d1f7d6218c5..ca8becb07e45 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3684,8 +3684,8 @@ static bool m_n_equal(const struct intel_link_m_n *=
m_n_1,
>  		      const struct intel_link_m_n *m_n_2)
>  {
>  	return m_n_1->tu =3D=3D m_n_2->tu &&
> -		m_n_1->gmch_m =3D=3D m_n_2->gmch_m &&
> -		m_n_1->gmch_n =3D=3D m_n_2->gmch_n &&
> +		m_n_1->data_m =3D=3D m_n_2->data_m &&
> +		m_n_1->data_n =3D=3D m_n_2->data_n &&
>  		m_n_1->link_m =3D=3D m_n_2->link_m &&
>  		m_n_1->link_n =3D=3D m_n_2->link_n;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index d91164d1eb92..75de794185b2 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3082,7 +3082,7 @@ intel_link_compute_m_n(u16 bits_per_pixel, int nlan=
es,
>  	m_n->tu =3D 64;
>  	compute_m_n(data_clock,
>  		    link_clock * nlanes * 8,
> -		    &m_n->gmch_m, &m_n->gmch_n,
> +		    &m_n->data_m, &m_n->data_n,
>  		    constant_n);
>=20=20
>  	compute_m_n(pixel_clock, link_clock,
> @@ -3118,8 +3118,8 @@ static void intel_set_m_n(struct drm_i915_private *=
i915,
>  			  i915_reg_t data_m_reg, i915_reg_t data_n_reg,
>  			  i915_reg_t link_m_reg, i915_reg_t link_n_reg)
>  {
> -	intel_de_write(i915, data_m_reg, TU_SIZE(m_n->tu) | m_n->gmch_m);
> -	intel_de_write(i915, data_n_reg, m_n->gmch_n);
> +	intel_de_write(i915, data_m_reg, TU_SIZE(m_n->tu) | m_n->data_m);
> +	intel_de_write(i915, data_n_reg, m_n->data_n);
>  	intel_de_write(i915, link_m_reg, m_n->link_m);
>  	intel_de_write(i915, link_n_reg, m_n->link_n);
>  }
> @@ -3867,8 +3867,8 @@ static void intel_get_m_n(struct drm_i915_private *=
i915,
>  {
>  	m_n->link_m =3D intel_de_read(i915, link_m_reg) & DATA_LINK_M_N_MASK;
>  	m_n->link_n =3D intel_de_read(i915, link_n_reg) & DATA_LINK_M_N_MASK;
> -	m_n->gmch_m =3D intel_de_read(i915, data_m_reg) & DATA_LINK_M_N_MASK;
> -	m_n->gmch_n =3D intel_de_read(i915, data_n_reg) & DATA_LINK_M_N_MASK;
> +	m_n->data_m =3D intel_de_read(i915, data_m_reg) & DATA_LINK_M_N_MASK;
> +	m_n->data_n =3D intel_de_read(i915, data_n_reg) & DATA_LINK_M_N_MASK;
>  	m_n->tu =3D REG_FIELD_GET(TU_SIZE_MASK, intel_de_read(i915, data_m_reg)=
) + 1;
>  }
>=20=20
> @@ -5498,9 +5498,9 @@ intel_dump_m_n_config(const struct intel_crtc_state=
 *pipe_config,
>  	struct drm_i915_private *i915 =3D to_i915(pipe_config->uapi.crtc->dev);
>=20=20
>  	drm_dbg_kms(&i915->drm,
> -		    "%s: lanes: %i; gmch_m: %u, gmch_n: %u, link_m: %u, link_n: %u, tu=
: %u\n",
> +		    "%s: lanes: %i; data_m: %u, data_n: %u, link_m: %u, link_n: %u, tu=
: %u\n",
>  		    id, lane_count,
> -		    m_n->gmch_m, m_n->gmch_n,
> +		    m_n->data_m, m_n->data_n,
>  		    m_n->link_m, m_n->link_n, m_n->tu);
>  }
>=20=20
> @@ -6196,8 +6196,8 @@ intel_compare_link_m_n(const struct intel_link_m_n =
*m_n,
>  		       bool exact)
>  {
>  	return m_n->tu =3D=3D m2_n2->tu &&
> -		intel_compare_m_n(m_n->gmch_m, m_n->gmch_n,
> -				  m2_n2->gmch_m, m2_n2->gmch_n, exact) &&
> +		intel_compare_m_n(m_n->data_m, m_n->data_n,
> +				  m2_n2->data_m, m2_n2->data_n, exact) &&
>  		intel_compare_m_n(m_n->link_m, m_n->link_n,
>  				  m2_n2->link_m, m2_n2->link_n, exact);
>  }
> @@ -6396,16 +6396,16 @@ intel_pipe_config_compare(const struct intel_crtc=
_state *current_config,
>  				    &pipe_config->name,\
>  				    !fastset)) { \
>  		pipe_config_mismatch(fastset, crtc, __stringify(name), \
> -				     "(expected tu %i gmch %i/%i link %i/%i, " \
> -				     "found tu %i, gmch %i/%i link %i/%i)", \
> +				     "(expected tu %i data %i/%i link %i/%i, " \
> +				     "found tu %i, data %i/%i link %i/%i)", \
>  				     current_config->name.tu, \
> -				     current_config->name.gmch_m, \
> -				     current_config->name.gmch_n, \
> +				     current_config->name.data_m, \
> +				     current_config->name.data_n, \
>  				     current_config->name.link_m, \
>  				     current_config->name.link_n, \
>  				     pipe_config->name.tu, \
> -				     pipe_config->name.gmch_m, \
> -				     pipe_config->name.gmch_n, \
> +				     pipe_config->name.data_m, \
> +				     pipe_config->name.data_n, \
>  				     pipe_config->name.link_m, \
>  				     pipe_config->name.link_n); \
>  		ret =3D false; \
> @@ -6423,22 +6423,22 @@ intel_pipe_config_compare(const struct intel_crtc=
_state *current_config,
>  	    !intel_compare_link_m_n(&current_config->alt_name, \
>  				    &pipe_config->name, !fastset)) { \
>  		pipe_config_mismatch(fastset, crtc, __stringify(name), \
> -				     "(expected tu %i gmch %i/%i link %i/%i, " \
> -				     "or tu %i gmch %i/%i link %i/%i, " \
> -				     "found tu %i, gmch %i/%i link %i/%i)", \
> +				     "(expected tu %i data %i/%i link %i/%i, " \
> +				     "or tu %i data %i/%i link %i/%i, " \
> +				     "found tu %i, data %i/%i link %i/%i)", \
>  				     current_config->name.tu, \
> -				     current_config->name.gmch_m, \
> -				     current_config->name.gmch_n, \
> +				     current_config->name.data_m, \
> +				     current_config->name.data_n, \
>  				     current_config->name.link_m, \
>  				     current_config->name.link_n, \
>  				     current_config->alt_name.tu, \
> -				     current_config->alt_name.gmch_m, \
> -				     current_config->alt_name.gmch_n, \
> +				     current_config->alt_name.data_m, \
> +				     current_config->alt_name.data_n, \
>  				     current_config->alt_name.link_m, \
>  				     current_config->alt_name.link_n, \
>  				     pipe_config->name.tu, \
> -				     pipe_config->name.gmch_m, \
> -				     pipe_config->name.gmch_n, \
> +				     pipe_config->name.data_m, \
> +				     pipe_config->name.data_n, \
>  				     pipe_config->name.link_m, \
>  				     pipe_config->name.link_n); \
>  		ret =3D false; \
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index b61b75248ded..a241007f5c82 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -317,8 +317,8 @@ enum aux_ch {
>  /* Used by dp and fdi links */
>  struct intel_link_m_n {
>  	u32 tu;
> -	u32 gmch_m;
> -	u32 gmch_n;
> +	u32 data_m;
> +	u32 data_n;
>  	u32 link_m;
>  	u32 link_n;
>  };
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 4d4579a301f6..146b83916005 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1895,7 +1895,7 @@ intel_dp_compute_config(struct intel_encoder *encod=
er,
>=20=20
>  	/* FIXME: abstract this better */
>  	if (pipe_config->splitter.enable)
> -		pipe_config->dp_m_n.gmch_m *=3D pipe_config->splitter.link_count;
> +		pipe_config->dp_m_n.data_m *=3D pipe_config->splitter.link_count;
>=20=20
>  	if (!HAS_DDI(dev_priv))
>  		g4x_dp_set_clock(encoder, pipe_config);
> diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/=
i915/display/intel_drrs.c
> index c1439fcb5a95..46be46f2c47e 100644
> --- a/drivers/gpu/drm/i915/display/intel_drrs.c
> +++ b/drivers/gpu/drm/i915/display/intel_drrs.c
> @@ -84,7 +84,7 @@ intel_drrs_compute_config(struct intel_dp *intel_dp,
>=20=20
>  	/* FIXME: abstract this better */
>  	if (pipe_config->splitter.enable)
> -		pipe_config->dp_m2_n2.gmch_m *=3D pipe_config->splitter.link_count;
> +		pipe_config->dp_m2_n2.data_m *=3D pipe_config->splitter.link_count;
>  }
>=20=20
>  static void intel_drrs_set_state(struct drm_i915_private *dev_priv,

--=20
Jani Nikula, Intel Open Source Graphics Center
