Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MJ6cEkc7sWkLswIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 10:52:07 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FBB92614C9
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 10:52:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E249E10E3E1;
	Wed, 11 Mar 2026 09:52:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Jw9q/oqa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD3B910E3CC;
 Wed, 11 Mar 2026 09:52:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773222723; x=1804758723;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=pXWW7wSsuyxrtBCgBc+KVyPw2G9Aj+nqQvRECisMXsA=;
 b=Jw9q/oqayF9Ya4DNwhREvwpuLYJi71d3qi+3qPUm8PNulw5ucGxMf/Yt
 mER8s7KUhWUyMSImLyuoIp9/6RZbIc3dPn44PcQBZNnKcwOjtYtVsMbml
 pa8uVK3RQvQ4fAfCuwxlT9l/ULAUVmk0bW0ZcfesFquzEBPRyXLlvr++2
 TUHJWIKdA6JWX8mH9UiGfTvIYBWErvSskv4oeM9R4x1LeC6vFqygy9Ns/
 mblsafZ9QZg8wVNDoAEI9aleuo+AluJq3lVPOumQeY7c7LgnD50MxGTtC
 zJLxKm5u17GrklUJzI4V8tEToBEU467BPyoAxEU79Klr7XvJQu3w/vSQY g==;
X-CSE-ConnectionGUID: BbMFcA+3QXar9P+8SQDCng==
X-CSE-MsgGUID: T2Yv22exT9On39DqUUlrrA==
X-IronPort-AV: E=McAfee;i="6800,10657,11725"; a="74257386"
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="74257386"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 02:52:02 -0700
X-CSE-ConnectionGUID: EuW6U4yKR12rOGce8+xLdQ==
X-CSE-MsgGUID: coE2aUauQ+GSyWBh3WU84g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="258325872"
Received: from krybak-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.91])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 02:52:00 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>
Subject: Re: [RFC v1 11/11] drm/i915/mtl: add V/P Override support for mtl+
In-Reply-To: <20260308132446.3320848-12-michal.grzelak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260308132446.3320848-1-michal.grzelak@intel.com>
 <20260308132446.3320848-12-michal.grzelak@intel.com>
Date: Wed, 11 Mar 2026 11:51:56 +0200
Message-ID: <f8c0f5fac58ab54828f749b05b4d3ed9646cbfc2@intel.com>
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
X-Rspamd-Queue-Id: 6FBB92614C9
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
> Add macros to reflect the layout of vswing/preemphasis override tables
> for mtl. Add separate macros for C10 & C20.
>
> Add separate intel_ddi_buf_trans_entry to be overridden for mtl onward.
> Set & return it when port requests to override default table. Use same
> setter for both C10 & C20 cases.
>
> Set the value by extracting the lowest byte from entry from the table.
>
> There are no changes to intel_ddi_dp_level() since selection of correct
> row of intel_ddi_buf_trans_entry is same as when no override request has
> been done.
>
> Signed-off-by: Micha=C5=82 Grzelak <michal.grzelak@intel.com>
> ---
>  .../drm/i915/display/intel_ddi_buf_trans.c    | 99 ++++++++++++++++++-
>  1 file changed, 96 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers=
/gpu/drm/i915/display/intel_ddi_buf_trans.c
> index 1b30c9888f95..7798320a4968 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> @@ -12,6 +12,17 @@
>  #include "intel_dp.h"
>  #include "intel_lt_phy.h"
>=20=20
> +#define MTL_C10_VS_PE_DP14_RBR_HBR 0
> +#define MTL_C10_VS_PE_DP14_HBR2_HBR3 1
> +#define MTL_C10_VS_PE_EDP_NON_HBR3 2
> +#define MTL_C10_VS_PE_EDP_HBR3 3
> +
> +#define MTL_C20_VS_PE_DP14 4
> +#define MTL_C20_VS_PE_DP20 5
> +
> +#define MTL_CX0_VS_PE_COL 3
> +#define MTL_CX0_VS_PE_ROW 16

I don't know what any of these mean, and it's really hard to figure out
from the code.

> +
>  #define XE3P_VS_PE_EDP 3
>  #define XE3P_VS_PE_DP14 4
>  #define XE3P_VS_PE_DP21 5
> @@ -1109,6 +1120,25 @@ static const union intel_ddi_buf_trans_entry _mtl_=
c20_trans_hdmi[] =3D {
>  	{ .snps =3D { 32, 4, 12 } },      /* preset 4 */
>  };
>=20=20
> +static union intel_ddi_buf_trans_entry _mtl_cx0_trans_override[] =3D {
> +	{ .snps =3D { 0, 0, 0 } },
> +	{ .snps =3D { 0, 0, 0 } },
> +	{ .snps =3D { 0, 0, 0 } },
> +	{ .snps =3D { 0, 0, 0 } },
> +	{ .snps =3D { 0, 0, 0 } },
> +	{ .snps =3D { 0, 0, 0 } },
> +	{ .snps =3D { 0, 0, 0 } },
> +	{ .snps =3D { 0, 0, 0 } },
> +	{ .snps =3D { 0, 0, 0 } },
> +	{ .snps =3D { 0, 0, 0 } },
> +	{ .snps =3D { 0, 0, 0 } },
> +	{ .snps =3D { 0, 0, 0 } },
> +	{ .snps =3D { 0, 0, 0 } },
> +	{ .snps =3D { 0, 0, 0 } },
> +	{ .snps =3D { 0, 0, 0 } },
> +	{ .snps =3D { 0, 0, 0 } },
> +};
> +

Using mutable static data for this is not possible. It's module
specific, which means having two devices in the same system will trample
each other's data.

>  static const struct intel_ddi_buf_trans mtl_c20_trans_hdmi =3D {
>  	.entries =3D _mtl_c20_trans_hdmi,
>  	.num_entries =3D ARRAY_SIZE(_mtl_c20_trans_hdmi),
> @@ -1126,6 +1156,11 @@ static const struct intel_ddi_buf_trans mtl_c20_tr=
ans_uhbr =3D {
>  	.num_entries =3D ARRAY_SIZE(_mtl_c20_trans_uhbr),
>  };
>=20=20
> +static struct intel_ddi_buf_trans mtl_cx0_trans_override =3D {
> +	.entries =3D _mtl_cx0_trans_override,
> +	.num_entries =3D ARRAY_SIZE(_mtl_cx0_trans_override),
> +};
> +
>  /* DP1.4 */
>  static const union intel_ddi_buf_trans_entry _xe3plpd_lt_trans_dp14[] =
=3D {
>  	{ .lt =3D { 21, 0, 0 , 1, 0 } },
> @@ -1815,11 +1850,60 @@ dg2_get_snps_buf_trans(struct intel_encoder *enco=
der,
>  		return intel_get_buf_trans(&dg2_snps_trans, n_entries);
>  }
>=20=20
> +static const struct intel_ddi_buf_trans *
> +mtl_set_cx0_buf_trans(struct intel_encoder *encoder,
> +		      int idx,
> +		      int *n_entries)
> +{
> +	struct intel_display *display =3D to_intel_display(encoder);
> +	struct intel_ddi_buf_trans *buf_trans =3D &mtl_cx0_trans_override;
> +	union intel_ddi_buf_trans_entry *entries, *entry;
> +	const u32 *tables =3D display->vbt.override_vswing;
> +	const u32 *vals;
> +
> +	entries =3D (union intel_ddi_buf_trans_entry *) buf_trans->entries;
> +	for (int row =3D 0; row < MTL_CX0_VS_PE_ROW; row++) {
> +		entry =3D &entries[row];
> +		vals =3D find_row(tables,
> +				idx,
> +				row,
> +				MTL_CX0_VS_PE_ROW,
> +				MTL_CX0_VS_PE_COL);
> +
> +		entry->snps.vswing =3D LOW(vals[0]);
> +		entry->snps.pre_cursor =3D LOW(vals[1]);
> +		entry->snps.post_cursor =3D LOW(vals[2]);
> +	}
> +
> +	return intel_get_buf_trans(&mtl_cx0_trans_override, n_entries);
> +}

But why do we have to "set" the data in the first place?

Is it not possible to arrange the buf trans data that we have in the
same format as VBT? And then instead of returning the data from our
predefined tables, we'd return the data from VBT. Without conversions.

If that's not feasible, then parsing of VBT data belongs to
intel_bios.c. That's the place where we convert VBT input into the
format our driver understands, and the rest of the driver doesn't need
to jump through hoops to parse it.

> +
>  static const struct intel_ddi_buf_trans *
>  mtl_get_c10_buf_trans(struct intel_encoder *encoder,
>  		      const struct intel_crtc_state *crtc_state,
>  		      int *n_entries)
>  {
> +	if (intel_bios_encoder_overrides_vswing(encoder->devdata)) {
> +		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP)) {
> +			if (intel_dp_above_hbr1(crtc_state))
> +				return mtl_set_cx0_buf_trans(encoder,
> +							     MTL_C10_VS_PE_DP14_HBR2_HBR3,
> +							     n_entries);
> +			else
> +				return mtl_set_cx0_buf_trans(encoder,
> +							     MTL_C10_VS_PE_DP14_RBR_HBR,
> +							     n_entries);
> +		} else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP)){
> +			if (intel_edp_above_hbr2(crtc_state))
> +				return mtl_set_cx0_buf_trans(encoder,
> +							     MTL_C10_VS_PE_EDP_HBR3,
> +							     n_entries);
> +			else
> +				return mtl_set_cx0_buf_trans(encoder,
> +							     MTL_C10_VS_PE_EDP_NON_HBR3,
> +							     n_entries);
> +		}
> +	}

Can we not do this in a more generic fashion instead of sprinkling these
override things and if-ladders absolutely everywhere? I mean the whole
file is already a bunch of if-ladders, but do we really need to add
another set for VBT stuff?

>  	return intel_get_buf_trans(&mtl_c10_trans_dp14, n_entries);
>  }
>=20=20
> @@ -1828,12 +1912,21 @@ mtl_get_c20_buf_trans(struct intel_encoder *encod=
er,
>  		      const struct intel_crtc_state *crtc_state,
>  		      int *n_entries)
>  {
> -	if (intel_crtc_has_dp_encoder(crtc_state) && intel_dp_is_uhbr(crtc_stat=
e))
> +	if (intel_crtc_has_dp_encoder(crtc_state) && intel_dp_is_uhbr(crtc_stat=
e)) {
> +		if (intel_bios_encoder_overrides_vswing(encoder->devdata))
> +			return mtl_set_cx0_buf_trans(encoder,
> +						     MTL_C20_VS_PE_DP20,
> +						     n_entries);
>  		return intel_get_buf_trans(&mtl_c20_trans_uhbr, n_entries);
> -	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> +	} else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
>  		return intel_get_buf_trans(&mtl_c20_trans_hdmi, n_entries);
> -	else
> +	} else {
> +		if (intel_bios_encoder_overrides_vswing(encoder->devdata))
> +			return mtl_set_cx0_buf_trans(encoder,
> +						     MTL_C20_VS_PE_DP14,
> +						     n_entries);
>  		return intel_get_buf_trans(&mtl_c20_trans_dp14, n_entries);
> +	}
>  }
>=20=20
>  static const struct intel_ddi_buf_trans *

--=20
Jani Nikula, Intel
