Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B2CF533B3C
	for <lists+intel-gfx@lfdr.de>; Wed, 25 May 2022 13:03:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9917B10E233;
	Wed, 25 May 2022 11:03:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3968410E233
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 May 2022 11:03:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653476631; x=1685012631;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=nufpgftk4ANjOd9WEf5WrTsbOYsryS3grahgx9zMn7s=;
 b=HWgSHnoF1RWviJBvTx3hKoAUmJ5qOKkSgRDRC5hDBlR4HtaXwRi2faOG
 lkfMKYdrtg5wwIkvEBBMy+mTXLpaARHabHYnOtMIiICvzYHjyduTBJ1vH
 kB3D+0LmHJurrzFflwyBIYQyiXWiZpoKIso69bcLzT3gTcnL4wppfjUwh
 og4WQlyxOjfk8Im3I/0KSntY7n2UWUi8sM+bo1Coqf5/nh358B0rFof1V
 50KTWAgPG+F2WI1Cn2YD129OOi8dnJHhONs8DCV9QFEIIdvu0aZQj9H9z
 c3j9cG74NONoYsb4c1kJTX124nFk1PBVVXK06qcOJ7upYY4vylP5j93Uc A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10357"; a="255847720"
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="255847720"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 04:03:50 -0700
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="601853051"
Received: from mwardyn-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.249.149.191])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 04:03:49 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220503182242.18797-16-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
 <20220503182242.18797-16-ville.syrjala@linux.intel.com>
Date: Wed, 25 May 2022 14:03:46 +0300
Message-ID: <8735gxvppp.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 15/26] drm/i915: Make M/N checks non-fuzzy
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

On Tue, 03 May 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Now that we no longer fuzz M/N during fastset these should
> match exctly.
>
> TODO: we may need to do something for fastboot here as the
> VBIOS/GOP may not compute M/N exactly the same way we do.
> Though I guess we could try to match the VBIOS/GOP exactly.

I see that later patches change the M/N calculation, and that may be
enough.

But if GOP isn't consistent about this (I don't know), it's going to be
whack-a-mole if we get regression reports on not having fastboot.

Mmh. If we support seamless M/N change, could we do that on fastboot?

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 49 ++++----------------
>  1 file changed, 8 insertions(+), 41 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 86971be92e57..198c6340a463 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5832,47 +5832,15 @@ bool intel_fuzzy_clock_check(int clock1, int cloc=
k2)
>  	return false;
>  }
>=20=20
> -static bool
> -intel_compare_m_n(unsigned int m, unsigned int n,
> -		  unsigned int m2, unsigned int n2,
> -		  bool exact)
> -{
> -	if (m =3D=3D m2 && n =3D=3D n2)
> -		return true;
> -
> -	if (exact || !m || !n || !m2 || !n2)
> -		return false;
> -
> -	BUILD_BUG_ON(DATA_LINK_M_N_MASK > INT_MAX);
> -
> -	if (n > n2) {
> -		while (n > n2) {
> -			m2 <<=3D 1;
> -			n2 <<=3D 1;
> -		}
> -	} else if (n < n2) {
> -		while (n < n2) {
> -			m <<=3D 1;
> -			n <<=3D 1;
> -		}
> -	}
> -
> -	if (n !=3D n2)
> -		return false;
> -
> -	return intel_fuzzy_clock_check(m, m2);
> -}
> -
>  static bool
>  intel_compare_link_m_n(const struct intel_link_m_n *m_n,
> -		       const struct intel_link_m_n *m2_n2,
> -		       bool exact)
> +		       const struct intel_link_m_n *m2_n2)
>  {
>  	return m_n->tu =3D=3D m2_n2->tu &&
> -		intel_compare_m_n(m_n->data_m, m_n->data_n,
> -				  m2_n2->data_m, m2_n2->data_n, exact) &&
> -		intel_compare_m_n(m_n->link_m, m_n->link_n,
> -				  m2_n2->link_m, m2_n2->link_n, exact);
> +		m_n->data_m =3D=3D m2_n2->data_m &&
> +		m_n->data_n =3D=3D m2_n2->data_n &&
> +		m_n->link_m =3D=3D m2_n2->link_m &&
> +		m_n->link_n =3D=3D m2_n2->link_n;
>  }
>=20=20
>  static bool
> @@ -6066,8 +6034,7 @@ intel_pipe_config_compare(const struct intel_crtc_s=
tate *current_config,
>=20=20
>  #define PIPE_CONF_CHECK_M_N(name) do { \
>  	if (!intel_compare_link_m_n(&current_config->name, \
> -				    &pipe_config->name,\
> -				    !fastset)) { \
> +				    &pipe_config->name)) { \
>  		pipe_config_mismatch(fastset, crtc, __stringify(name), \
>  				     "(expected tu %i data %i/%i link %i/%i, " \
>  				     "found tu %i, data %i/%i link %i/%i)", \
> @@ -6114,9 +6081,9 @@ intel_pipe_config_compare(const struct intel_crtc_s=
tate *current_config,
>   */
>  #define PIPE_CONF_CHECK_M_N_ALT(name, alt_name) do { \
>  	if (!intel_compare_link_m_n(&current_config->name, \
> -				    &pipe_config->name, !fastset) && \
> +				    &pipe_config->name) && \
>  	    !intel_compare_link_m_n(&current_config->alt_name, \
> -				    &pipe_config->name, !fastset)) { \
> +				    &pipe_config->name)) { \
>  		pipe_config_mismatch(fastset, crtc, __stringify(name), \
>  				     "(expected tu %i data %i/%i link %i/%i, " \
>  				     "or tu %i data %i/%i link %i/%i, " \

--=20
Jani Nikula, Intel Open Source Graphics Center
