Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YDH2LJ+QDGp1jAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 18:32:31 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 004E15826FB
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 18:32:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F24D310EDC7;
	Tue, 19 May 2026 16:32:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MZF5RBWq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E20D810EDC5;
 Tue, 19 May 2026 16:32:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779208347; x=1810744347;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=fK1EZ/BBfksNi4a3noJ0pUwBujJjciKvPXRh2OIYDuU=;
 b=MZF5RBWqj4ggTffzhDUtJWNzo2rALBpghE+NcSt6sp82M5YMOqrtk0f5
 IihAE4IXU925RygDIBU4V4G6HZwJDnlCupHUqZTlASoCQEw++aNN8ilps
 eGIYRN92nAi+t3aPuO/sGLffKeh73feFfZ4rSfqQ+HJX0dNRIBs7Q4BBa
 TOgmTbjlViXseYb/i1+yGCV+nwACCJFoCgPOtnsnbg0pq6XJ+HwlwlJHN
 zQyDlrE9gTqXe6r+RuI8gZhzp2lTUyD47tR1z+VmdzJtzRhEr4yFntG/G
 rbt4Bk2aXQdcOPddPQ1MBWHAjvgtjmiNts20Y6lPwnmGYK9NacMWHBYaE A==;
X-CSE-ConnectionGUID: Yxh+Wl0IQ2uVfDpfS8ymNA==
X-CSE-MsgGUID: ObvX5stpTOijRWva80b/oQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11791"; a="80263607"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="80263607"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2026 09:32:26 -0700
X-CSE-ConnectionGUID: vQ2CgVAkRdCnoJ8XDqkx5w==
X-CSE-MsgGUID: 7o2ZhC3/QfaLc+TFQuBl5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="244808039"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.218])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2026 09:32:25 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>, "Grzelak, Michal"
 <michal.grzelak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v3 12/31] drm/i915/ddi: expose VS/PE-O buffers to
 intel_encoder
In-Reply-To: <DM3PPF208195D8DAC7B75B4A5EC5683E025E3002@DM3PPF208195D8D.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260507013137.527510-1-michal.grzelak@intel.com>
 <20260507013137.527510-13-michal.grzelak@intel.com>
 <DM3PPF208195D8DAC7B75B4A5EC5683E025E3002@DM3PPF208195D8D.namprd11.prod.outlook.com>
Date: Tue, 19 May 2026 19:32:22 +0300
Message-ID: <2c9f1720aae37405b1540ebfcb0ca4fa9abbe980@intel.com>
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 004E15826FB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 19 May 2026, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>>=20
>> Add into intel_encoder constant pointer to intel_ddi_buf_trans. Track wi=
th it
>> VS/PE-O buffer from corresponding BIOS encoder.
>>=20
>> Add helper function into intel_bios.[ch] to extract port's intel_ddi_buf=
_trans
>> pointer. Cache the pointer by default into each intel_encoder during
>> intel_ddi_init().
>>=20
>> This is needed as devdata->buf_trans has been allocated per each port du=
ring
>> parsing DDI ports in intel_bios.c. Meanwhile every encoder will need to =
know
>> if VS/PE overriding is requested during intel_ddi_buf_trans_init().
>>=20
>> Signed-off-by: Micha=C5=82 Grzelak <michal.grzelak@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_bios.c          | 6 ++++++
>>  drivers/gpu/drm/i915/display/intel_bios.h          | 2 ++
>>  drivers/gpu/drm/i915/display/intel_ddi.c           | 1 +
>>  drivers/gpu/drm/i915/display/intel_display_types.h | 1 +
>>  4 files changed, 10 insertions(+)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c
>> b/drivers/gpu/drm/i915/display/intel_bios.c
>> index 1b813a3dff245..6893aa9f01aec 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> @@ -3851,6 +3851,12 @@ bool intel_bios_encoder_supports_tbt(const
>> struct intel_bios_encoder_data *devda
>>  	return devdata->display->vbt.version >=3D 209 && devdata->child.tbt;  }
>>=20
>> +const struct intel_ddi_buf_trans *
>> +intel_bios_encoder_extract_vswing(const struct intel_bios_encoder_data
>> +*devdata) {
>> +	return devdata->buf_trans;
>> +}
>> +
>>  bool intel_bios_encoder_overrides_vswing(const struct
>> intel_bios_encoder_data *devdata)  {
>>  	return devdata->display->vbt.version >=3D 218 && diff --git
>> a/drivers/gpu/drm/i915/display/intel_bios.h
>> b/drivers/gpu/drm/i915/display/intel_bios.h
>> index 50c8fc91fbe85..cf040b9b7915b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bios.h
>> +++ b/drivers/gpu/drm/i915/display/intel_bios.h
>> @@ -73,6 +73,8 @@ bool intel_bios_get_dsc_params(struct intel_encoder
>> *encoder,  const struct intel_bios_encoder_data *
>> intel_bios_encoder_data_lookup(struct intel_display *display, enum port
>> port);
>>=20
>> +const struct intel_ddi_buf_trans *
>> +intel_bios_encoder_extract_vswing(const struct intel_bios_encoder_data
>> +*devdata);
>>  bool intel_bios_encoder_overrides_vswing(const struct
>> intel_bios_encoder_data *devdata);  bool
>> intel_bios_encoder_supports_dvi(const struct intel_bios_encoder_data
>> *devdata);  bool intel_bios_encoder_supports_hdmi(const struct
>> intel_bios_encoder_data *devdata); diff --git
>> a/drivers/gpu/drm/i915/display/intel_ddi.c
>> b/drivers/gpu/drm/i915/display/intel_ddi.c
>> index 2681940a5cfe3..eb188b27ec96b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>> @@ -5249,6 +5249,7 @@ void intel_ddi_init(struct intel_display *display,
>>=20
>>  	encoder =3D &dig_port->base;
>>  	encoder->devdata =3D devdata;
>> +	encoder->vspeo =3D intel_bios_encoder_extract_vswing(devdata);
>>=20
>>  	drm_encoder_init(display->drm, &encoder->base, &intel_ddi_funcs,
>>  			 DRM_MODE_ENCODER_TMDS, "%s",
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
>> b/drivers/gpu/drm/i915/display/intel_display_types.h
>> index 26e59110e7435..0f27bcfb69223 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -297,6 +297,7 @@ struct intel_encoder {
>>=20
>>  	/* VBT information for this encoder (may be NULL for older platforms)
>> */
>>  	const struct intel_bios_encoder_data *devdata;
>> +	const struct intel_ddi_buf_trans *vspeo;
>
> I don=E2=80=99t get why this is really needed you have devdata available =
you can get this data on fly why the helper and caching . Even after cachin=
g it points to same table.

Agreed.

>
> Regards,
> Suraj Kandpal
>
>>  };
>>=20
>>  struct intel_panel_bl_funcs {
>> --
>> 2.45.2
>

--=20
Jani Nikula, Intel
