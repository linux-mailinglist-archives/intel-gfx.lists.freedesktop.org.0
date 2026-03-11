Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6OnpNCczsWm0rwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 10:17:27 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44753260262
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 10:17:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8B4010E3B4;
	Wed, 11 Mar 2026 09:17:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Pc+BRXiJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 526B710E3B1;
 Wed, 11 Mar 2026 09:17:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773220645; x=1804756645;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=SsE+rBIXbtXBtGaR+sSpPBH7VMSs19v+Ajaa8zdz9LI=;
 b=Pc+BRXiJwrvFuN1mF5JJ+AQFxG5FHY761YXaiJKxN7e+nQPjZ03e6IuD
 Q0ka41EMNkCMdkW39YbyU5V17oTucziKaDBeKohi6qH/PcOdOYHUepCM8
 lD2aXf/1BUe4fctRVk/M7KRkcPRvMinJ7pnV+L6AAZREb202LAymCxCaQ
 mg/zF+ivGcmIvsqJObfedFvkrWeglEvDM1H/FbSa3SBVZyI4NEU1zhRil
 rFx1E4CA6Yvo5dGG3EKkcDEy4Ww3oy70meDmy173B99wcypNr/JpRa12F
 +Ytop7HyYILlpx3eLPOjMDmyNnzT6XM4trjjzGNalNGRLdk4ZD+D1mkbq Q==;
X-CSE-ConnectionGUID: fZR26EVgR/WaiIOkrcC0xQ==
X-CSE-MsgGUID: byEn6++rROurYcqagFPzwQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11725"; a="84606577"
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="84606577"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 02:17:24 -0700
X-CSE-ConnectionGUID: 79txNiDqT72l710F/Vsdrg==
X-CSE-MsgGUID: eaUaKykcTcy002S1yOocGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="250907222"
Received: from krybak-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.91])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 02:17:22 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>
Subject: Re: [RFC v1 05/11] drm/i915/buf_trans: add intel_dp_above_hbr1()
 helper
In-Reply-To: <20260308132446.3320848-6-michal.grzelak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260308132446.3320848-1-michal.grzelak@intel.com>
 <20260308132446.3320848-6-michal.grzelak@intel.com>
Date: Wed, 11 Mar 2026 11:17:18 +0200
Message-ID: <5f7ce468042741bcbc323d1918a6ed6d202a7fa0@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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
X-Rspamd-Queue-Id: 44753260262
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Action: no action

On Sun, 08 Mar 2026, Micha=C5=82 Grzelak <michal.grzelak@intel.com> wrote:
> Check if port_clock is above HBR1 inside separate function.

I've got a mixture of reactions to this.

- For better or for worse, I think most people want to have these checks
  inline instead of hidden in a function.

- This whole "above hbr1" is also oddly specific. If we wanted to
  abstract this somehow, it should be generic. We have
  intel_dp_is_uhbr() because it changes everything about the link. None
  of the other rates are that special.

- If we wanted to hide the magic numbers, we'd need to define some RBR,
  HBR, etc. macros for the link rates... but then the problem is you'd
  have to remember what they mean. The numbers are easy.

- Realizing this kind of change is contentious, and unrelated to the
  feature at hand, you're probably better off dropping it (or suggesting
  it in another thread, another time) and focusing on the feature.

BR,
Jani.


>
> Signed-off-by: Micha=C5=82 Grzelak <michal.grzelak@intel.com>
> ---
>  .../drm/i915/display/intel_ddi_buf_trans.c    | 27 ++++++++++++-------
>  1 file changed, 17 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers=
/gpu/drm/i915/display/intel_ddi_buf_trans.c
> index 395dba8c9e4d..ee6a78a20dac 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> @@ -1184,6 +1184,13 @@ bool is_hobl_buf_trans(const struct intel_ddi_buf_=
trans *table)
>  	return table =3D=3D &tgl_combo_phy_trans_edp_hbr2_hobl;
>  }
>=20=20
> +static bool intel_dp_above_hbr1(const struct intel_crtc_state *crtc_stat=
e)
> +{
> +	if (crtc_state->port_clock > 270000)
> +		return true;
> +	return false;
> +}
> +
>  static bool use_edp_hobl(struct intel_encoder *encoder)
>  {
>  	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> @@ -1396,7 +1403,7 @@ icl_get_mg_buf_trans_dp(struct intel_encoder *encod=
er,
>  			const struct intel_crtc_state *crtc_state,
>  			int *n_entries)
>  {
> -	if (crtc_state->port_clock > 270000) {
> +	if (intel_dp_above_hbr1(crtc_state)) {
>  		return intel_get_buf_trans(&icl_mg_phy_trans_hbr2_hbr3,
>  					   n_entries);
>  	} else {
> @@ -1421,7 +1428,7 @@ ehl_get_combo_buf_trans_edp(struct intel_encoder *e=
ncoder,
>  			    const struct intel_crtc_state *crtc_state,
>  			    int *n_entries)
>  {
> -	if (crtc_state->port_clock > 270000)
> +	if (intel_dp_above_hbr1(crtc_state))
>  		return intel_get_buf_trans(&ehl_combo_phy_trans_edp_hbr2, n_entries);
>  	else
>  		return intel_get_buf_trans(&icl_combo_phy_trans_edp_hbr2, n_entries);
> @@ -1446,7 +1453,7 @@ jsl_get_combo_buf_trans_edp(struct intel_encoder *e=
ncoder,
>  			    const struct intel_crtc_state *crtc_state,
>  			    int *n_entries)
>  {
> -	if (crtc_state->port_clock > 270000)
> +	if (intel_dp_above_hbr1(crtc_state))
>  		return intel_get_buf_trans(&jsl_combo_phy_trans_edp_hbr2, n_entries);
>  	else
>  		return intel_get_buf_trans(&jsl_combo_phy_trans_edp_hbr, n_entries);
> @@ -1473,7 +1480,7 @@ tgl_get_combo_buf_trans_dp(struct intel_encoder *en=
coder,
>  {
>  	struct intel_display *display =3D to_intel_display(encoder);
>=20=20
> -	if (crtc_state->port_clock > 270000) {
> +	if (intel_dp_above_hbr1(crtc_state)) {
>  		if (display->platform.tigerlake_uy) {
>  			return intel_get_buf_trans(&tgl_uy_combo_phy_trans_dp_hbr2,
>  						   n_entries);
> @@ -1524,7 +1531,7 @@ dg1_get_combo_buf_trans_dp(struct intel_encoder *en=
coder,
>  			   const struct intel_crtc_state *crtc_state,
>  			   int *n_entries)
>  {
> -	if (crtc_state->port_clock > 270000)
> +	if (intel_dp_above_hbr1(crtc_state))
>  		return intel_get_buf_trans(&dg1_combo_phy_trans_dp_hbr2_hbr3,
>  					   n_entries);
>  	else
> @@ -1568,7 +1575,7 @@ rkl_get_combo_buf_trans_dp(struct intel_encoder *en=
coder,
>  			   const struct intel_crtc_state *crtc_state,
>  			   int *n_entries)
>  {
> -	if (crtc_state->port_clock > 270000)
> +	if (intel_dp_above_hbr1(crtc_state))
>  		return intel_get_buf_trans(&rkl_combo_phy_trans_dp_hbr2_hbr3, n_entrie=
s);
>  	else
>  		return intel_get_buf_trans(&rkl_combo_phy_trans_dp_hbr, n_entries);
> @@ -1611,7 +1618,7 @@ adls_get_combo_buf_trans_dp(struct intel_encoder *e=
ncoder,
>  			    const struct intel_crtc_state *crtc_state,
>  			    int *n_entries)
>  {
> -	if (crtc_state->port_clock > 270000)
> +	if (intel_dp_above_hbr1(crtc_state))
>  		return intel_get_buf_trans(&adls_combo_phy_trans_dp_hbr2_hbr3, n_entri=
es);
>  	else
>  		return intel_get_buf_trans(&tgl_combo_phy_trans_dp_hbr, n_entries);
> @@ -1650,7 +1657,7 @@ adlp_get_combo_buf_trans_dp(struct intel_encoder *e=
ncoder,
>  			    const struct intel_crtc_state *crtc_state,
>  			    int *n_entries)
>  {
> -	if (crtc_state->port_clock > 270000)
> +	if (intel_dp_above_hbr1(crtc_state))
>  		return intel_get_buf_trans(&adlp_combo_phy_trans_dp_hbr2_hbr3, n_entri=
es);
>  	else
>  		return intel_get_buf_trans(&adlp_combo_phy_trans_dp_hbr, n_entries);
> @@ -1693,7 +1700,7 @@ tgl_get_dkl_buf_trans_dp(struct intel_encoder *enco=
der,
>  			 const struct intel_crtc_state *crtc_state,
>  			 int *n_entries)
>  {
> -	if (crtc_state->port_clock > 270000) {
> +	if (intel_dp_above_hbr1(crtc_state)) {
>  		return intel_get_buf_trans(&tgl_dkl_phy_trans_dp_hbr2,
>  					   n_entries);
>  	} else {
> @@ -1718,7 +1725,7 @@ adlp_get_dkl_buf_trans_dp(struct intel_encoder *enc=
oder,
>  			  const struct intel_crtc_state *crtc_state,
>  			  int *n_entries)
>  {
> -	if (crtc_state->port_clock > 270000) {
> +	if (intel_dp_above_hbr1(crtc_state)) {
>  		return intel_get_buf_trans(&adlp_dkl_phy_trans_dp_hbr2_hbr3,
>  					   n_entries);
>  	} else {

--=20
Jani Nikula, Intel
