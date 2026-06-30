Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id HFoqHLqHQ2pnaQoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2026 11:09:14 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7E166E1EFD
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2026 11:09:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=LDN676l2;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B64810EBC7;
	Tue, 30 Jun 2026 09:09:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85B3A10EBB6;
 Tue, 30 Jun 2026 09:09:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782810552; x=1814346552;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=ZT5/YqAdR06D3iEcqa+qTOlX/3Y86xOSgxVe475ekKQ=;
 b=LDN676l2CBCGYcp4nD1U23o9stf5uVK8CqopbzpnQyqCPoZFkhRX65Xq
 oX3PoeCPgr3Ly8d73cYuSQ+w/umNxSNbJyhbL7P+J9lOCheBA8nzqEot8
 UdW6JW8Dz8on9MEj3CUBUSVk8bLk3q0inP52Ky2Zzx/y+Z34jIX07chd/
 WZD4/Uhd45ZU/DPTg/Pvu3wJcU/YWDnLcdgM1qiKlArlY2uKVRFL7W6CA
 bLpmYkxicNo80/a54PBlpu3w9I4biw+3wpUHtDQd8Ved7tRs3NieUlNP2
 o1W8iQDHB64Ux+ngBGQ6/sfXetbbfyTMR+AEpcpafc0NFxMEeh5xSaAbr A==;
X-CSE-ConnectionGUID: irgwILNLQ5KNh940KKNtqg==
X-CSE-MsgGUID: DnqOgCyKQ+uym4LWnhsVqQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11832"; a="83715714"
X-IronPort-AV: E=Sophos;i="6.24,233,1774335600"; d="scan'208";a="83715714"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2026 02:09:12 -0700
X-CSE-ConnectionGUID: 3rJaxcJtQ6+vhxSNpjY94A==
X-CSE-MsgGUID: XtPPmhh0R/eOEcD+0WaoYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,233,1774335600"; d="scan'208";a="250518809"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.148])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2026 02:09:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, Martin
 Hodo <martin.hodo@intel.com>, stable@vger.kernel.org, Animesh Manna
 <animesh.manna@intel.com>, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@intel.com>, =?utf-8?Q?Micha=C5=82?=
 Grzelak <michal.grzelak@intel.com>
Subject: Re: [PATCH v2] drm/i915/bios: range check LFP Data Block panel_type2
In-Reply-To: <akN8-YNa6kwRVkHk@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260625135130.1067872-1-jani.nikula@intel.com>
 <20260626140155.1389655-1-jani.nikula@intel.com>
 <akN8-YNa6kwRVkHk@intel.com>
Date: Tue, 30 Jun 2026 12:09:06 +0300
Message-ID: <b8d3d97a0977f8b7a2fcfedbf7d30fa95d322023@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D7E166E1EFD

On Tue, 30 Jun 2026, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Fri, Jun 26, 2026 at 05:01:55PM +0300, Jani Nikula wrote:
>> While the panel_type from LFP Data Block is range checked, panel_type2
>> is not. Add a few helpers for range checking, and use them to not only
>> check panel_type2, but also improve clarity and correctness in the panel
>> type selection.
>>=20
>> Discovered using AI-assisted static analysis confirmed by Intel Product
>> Security.
>>=20
>> v2:
>> - Fix commit message typo (Micha=C5=82)
>> - Add is_panel_type_pnp() (Ville)
>>=20
>> Reported-by: Martin Hodo <martin.hodo@intel.com>
>> Fixes: 6434cf630086 ("drm/i915/bios: calculate panel type as per child d=
evice index in VBT")
>> Cc: <stable@vger.kernel.org> # v6.0+
>> Cc: Animesh Manna <animesh.manna@intel.com>
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@intel.com>
>> Reviewed-by: Micha=C5=82 Grzelak <michal.grzelak@intel.com> # v1
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_bios.c | 36 ++++++++++++++++++-----
>>  1 file changed, 28 insertions(+), 8 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm=
/i915/display/intel_bios.c
>> index 15ebadc72b88..97cbae2e547e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> @@ -623,6 +623,21 @@ get_lfp_data_tail(const struct bdb_lfp_data *data,
>>  		return NULL;
>>  }
>>=20=20
>> +static bool is_panel_type_valid(int panel_type)
>> +{
>> +	return panel_type >=3D 0 && panel_type < 16;
>> +}
>> +
>> +static bool is_panel_type_pnp(int panel_type)
>> +{
>> +	return panel_type =3D=3D 0xff;
>> +}
>> +
>> +static bool is_panel_type_valid_or_pnp(int panel_type)
>> +{
>> +	return is_panel_type_valid(panel_type) || is_panel_type_pnp(panel_type=
);
>> +}
>> +
>>  static int opregion_get_panel_type(struct intel_display *display,
>>  				   const struct intel_bios_encoder_data *devdata,
>>  				   const struct drm_edid *drm_edid, bool use_fallback)
>> @@ -640,15 +655,21 @@ static int vbt_get_panel_type(struct intel_display=
 *display,
>>  	if (!lfp_options)
>>  		return -1;
>>=20=20
>> -	if (lfp_options->panel_type > 0xf &&
>> -	    lfp_options->panel_type !=3D 0xff) {
>> +	if (!is_panel_type_valid_or_pnp(lfp_options->panel_type)) {
>>  		drm_dbg_kms(display->drm, "Invalid VBT panel type 0x%x\n",
>>  			    lfp_options->panel_type);
>>  		return -1;
>>  	}
>>=20=20
>> -	if (devdata && devdata->child.handle =3D=3D DEVICE_HANDLE_LFP2)
>> +	if (devdata && devdata->child.handle =3D=3D DEVICE_HANDLE_LFP2) {
>> +		if (!is_panel_type_valid_or_pnp(lfp_options->panel_type2)) {
>> +			drm_dbg_kms(display->drm, "Invalid VBT panel type 2 0x%x\n",
>> +				    lfp_options->panel_type2);
>> +			return -1;
>> +		}
>> +
>>  		return lfp_options->panel_type2;
>> +	}
>
> Hmm, this code will always return 'panel_type' if it's valid, even
> for LFP2. That seems wrong, but would need to double check the
> Windows behaviour to be sure...
>
> But that's a separate issue, so this patch is
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed to din.

BR,
Jani.

>
>>=20=20
>>  	drm_WARN_ON(display->drm,
>>  		    devdata && devdata->child.handle !=3D DEVICE_HANDLE_LFP1);
>> @@ -762,13 +783,12 @@ static int get_panel_type(struct intel_display *di=
splay,
>>  				    panel_types[i].name, panel_types[i].panel_type);
>>  	}
>>=20=20
>> -	if (panel_types[PANEL_TYPE_OPREGION].panel_type >=3D 0)
>> +	if (is_panel_type_valid(panel_types[PANEL_TYPE_OPREGION].panel_type))
>>  		i =3D PANEL_TYPE_OPREGION;
>> -	else if (panel_types[PANEL_TYPE_VBT].panel_type =3D=3D 0xff &&
>> -		 panel_types[PANEL_TYPE_PNPID].panel_type >=3D 0)
>> +	else if (is_panel_type_pnp(panel_types[PANEL_TYPE_VBT].panel_type) &&
>> +		 is_panel_type_valid(panel_types[PANEL_TYPE_PNPID].panel_type))
>>  		i =3D PANEL_TYPE_PNPID;
>> -	else if (panel_types[PANEL_TYPE_VBT].panel_type !=3D 0xff &&
>> -		 panel_types[PANEL_TYPE_VBT].panel_type >=3D 0)
>> +	else if (is_panel_type_valid(panel_types[PANEL_TYPE_VBT].panel_type))
>>  		i =3D PANEL_TYPE_VBT;
>>  	else
>>  		i =3D PANEL_TYPE_FALLBACK;
>> --=20
>> 2.47.3

--=20
Jani Nikula, Intel
