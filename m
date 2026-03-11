Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KF9BMpgzsWm0rwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 10:19:20 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 375B82602BB
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 10:19:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A61D788867;
	Wed, 11 Mar 2026 09:19:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PP6uDYcX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9007D10E3B7;
 Wed, 11 Mar 2026 09:19:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773220756; x=1804756756;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=TAhv73cB/BBuyGTI6TtvSBb4y1rzFIq2f/0Ad6aPeQ4=;
 b=PP6uDYcX1CWgamIqYrnLNWYuxmKjv6TkLx2Qjam5Gs/OuNKYomEoGuXz
 ZL620Yd9grDuQM5hXXvkI41lTKoqIW86OAS+xpitbQqEgdnyrffoCKMT2
 F2JUGxCj2a+y5y+H5zQTxrp+Rmb+aRkEpvrzB/YZOSx3F2x/u44EzBTME
 qVirVLqE7T2Oy6ErcQcdoyeDpoNIYZ0vzhlEJf6oEK1R3hR5AKCnTH8G2
 1XJ9keeDFW8R6CZ3uupmzp4UYXAkH81jcXhG6EV1KqyRj0lC2DYjMvk2o
 MBsXHTw5jzUpGWUWYW3J3TuJ2zEot/WExw0D5yQft4xtIiNhy0EbE/ZnV Q==;
X-CSE-ConnectionGUID: jIrqmeXDRJ2hKrYqD0v+Xw==
X-CSE-MsgGUID: 5v5yfDSwTdq35WBJy/DIow==
X-IronPort-AV: E=McAfee;i="6800,10657,11725"; a="73304861"
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="73304861"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 02:19:16 -0700
X-CSE-ConnectionGUID: P8aZmXbIRHWy1frLWfOmdA==
X-CSE-MsgGUID: bKgyeBQrRcu0pEXxxvxPdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="224870550"
Received: from krybak-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.91])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 02:19:15 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>
Subject: Re: [RFC v1 06/11] drm/i915/buf_trans: add intel_edp_above_hbr2()
 helper
In-Reply-To: <20260308132446.3320848-7-michal.grzelak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260308132446.3320848-1-michal.grzelak@intel.com>
 <20260308132446.3320848-7-michal.grzelak@intel.com>
Date: Wed, 11 Mar 2026 11:19:11 +0200
Message-ID: <c42e2f2d486b94b23e473f8bc15eef3502ea93b4@intel.com>
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
X-Rspamd-Queue-Id: 375B82602BB
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Action: no action

On Sun, 08 Mar 2026, Micha=C5=82 Grzelak <michal.grzelak@intel.com> wrote:
> Check if port_clock is above HBR2 inside separate function.

Same as the previous patch.

>
> Signed-off-by: Micha=C5=82 Grzelak <michal.grzelak@intel.com>
> ---
>  .../drm/i915/display/intel_ddi_buf_trans.c    | 19 +++++++++++++------
>  1 file changed, 13 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers=
/gpu/drm/i915/display/intel_ddi_buf_trans.c
> index ee6a78a20dac..8b369535189c 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> @@ -1191,6 +1191,13 @@ static bool intel_dp_above_hbr1(const struct intel=
_crtc_state *crtc_state)
>  	return false;
>  }
>=20=20
> +static bool intel_edp_above_hbr2(const struct intel_crtc_state *crtc_sta=
te)

This doesn't have anything to do with "edp" specifically.

> +{
> +	if (crtc_state->port_clock > 540000)
> +		return true;
> +	return false;

Side note, this is just "return crtc_state->port_clock > 540000"
directly, if-else for returning true/false is unnecessary.

BR,
Jani.

> +}
> +
>  static bool use_edp_hobl(struct intel_encoder *encoder)
>  {
>  	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> @@ -1374,7 +1381,7 @@ icl_get_combo_buf_trans_edp(struct intel_encoder *e=
ncoder,
>  			    const struct intel_crtc_state *crtc_state,
>  			    int *n_entries)
>  {
> -	if (crtc_state->port_clock > 540000) {
> +	if (intel_edp_above_hbr2(crtc_state)) {
>  		return intel_get_buf_trans(&icl_combo_phy_trans_dp_hbr2_edp_hbr3,
>  					   n_entries);
>  	} else if (use_edp_low_vswing(encoder)) {
> @@ -1499,7 +1506,7 @@ tgl_get_combo_buf_trans_edp(struct intel_encoder *e=
ncoder,
>  			    const struct intel_crtc_state *crtc_state,
>  			    int *n_entries)
>  {
> -	if (crtc_state->port_clock > 540000) {
> +	if (intel_edp_above_hbr2(crtc_state)) {
>  		return intel_get_buf_trans(&icl_combo_phy_trans_dp_hbr2_edp_hbr3,
>  					   n_entries);
>  	} else if (use_edp_hobl(encoder)) {
> @@ -1544,7 +1551,7 @@ dg1_get_combo_buf_trans_edp(struct intel_encoder *e=
ncoder,
>  			    const struct intel_crtc_state *crtc_state,
>  			    int *n_entries)
>  {
> -	if (crtc_state->port_clock > 540000)
> +	if (intel_edp_above_hbr2(crtc_state))
>  		return intel_get_buf_trans(&icl_combo_phy_trans_dp_hbr2_edp_hbr3,
>  					   n_entries);
>  	else if (use_edp_hobl(encoder))
> @@ -1586,7 +1593,7 @@ rkl_get_combo_buf_trans_edp(struct intel_encoder *e=
ncoder,
>  			    const struct intel_crtc_state *crtc_state,
>  			    int *n_entries)
>  {
> -	if (crtc_state->port_clock > 540000) {
> +	if (intel_edp_above_hbr2(crtc_state)) {
>  		return intel_get_buf_trans(&icl_combo_phy_trans_dp_hbr2_edp_hbr3,
>  					   n_entries);
>  	} else if (use_edp_hobl(encoder)) {
> @@ -1629,7 +1636,7 @@ adls_get_combo_buf_trans_edp(struct intel_encoder *=
encoder,
>  			     const struct intel_crtc_state *crtc_state,
>  			     int *n_entries)
>  {
> -	if (crtc_state->port_clock > 540000)
> +	if (intel_edp_above_hbr2(crtc_state))
>  		return intel_get_buf_trans(&adls_combo_phy_trans_edp_hbr3, n_entries);
>  	else if (use_edp_hobl(encoder))
>  		return intel_get_buf_trans(&tgl_combo_phy_trans_edp_hbr2_hobl, n_entri=
es);
> @@ -1668,7 +1675,7 @@ adlp_get_combo_buf_trans_edp(struct intel_encoder *=
encoder,
>  			     const struct intel_crtc_state *crtc_state,
>  			     int *n_entries)
>  {
> -	if (crtc_state->port_clock > 540000) {
> +	if (intel_edp_above_hbr2(crtc_state)) {
>  		return intel_get_buf_trans(&adlp_combo_phy_trans_edp_hbr3,
>  					   n_entries);
>  	} else if (use_edp_hobl(encoder)) {

--=20
Jani Nikula, Intel
