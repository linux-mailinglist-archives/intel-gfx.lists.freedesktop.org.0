Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wAl/AtOODGpnjAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 18:24:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9306C5823FF
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 18:24:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14DB210EDC1;
	Tue, 19 May 2026 16:24:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b7iZLxVb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FD7510EDBB;
 Tue, 19 May 2026 16:24:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779207887; x=1810743887;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=OgDVUayIMmskblBn8E46plonnLiG6Vx6TUH2CYtX50I=;
 b=b7iZLxVbXXppSXL4LJgxFgwk3Ccv88qpidcQY8Nh5Bb9GibVzjsjWbJZ
 Y8sYgntMLt4gsW8+LcLVIRZdkqwOiOey/tw9nBH0kjWeCFOOCsBu0+gJk
 iTj9vaCrOXC6cgIxgv7OTJeK/ZfaqcH9mxO99C+TlXJDWoFoX21zWR4mz
 ErbM1Hy8EqXtCgVgs+uIPhPZr3u8+pvArwpEl+ziDx2VQ4tW7+8xVTGiT
 vt2KGH7i2G85kLE2r4laA+HGL40hWIk5+/OwTJ1W+MvPcV+7aUpd12KRb
 9yyIdG3jLKiMTM/GVzuu1ClqQb0GoAKYhZ79JXdPWfK29iZuPxlymbp2g g==;
X-CSE-ConnectionGUID: sPJm6wD+RBiafd1h1bTpVg==
X-CSE-MsgGUID: 8yxMCg9ORymkIMDGbqHjyg==
X-IronPort-AV: E=McAfee;i="6800,10657,11791"; a="83706761"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="83706761"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2026 09:24:47 -0700
X-CSE-ConnectionGUID: A/Bl0MSgQgWQP8Sy8SiXgg==
X-CSE-MsgGUID: Oi8GSFD/TsWeIs9sXAOoQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="243826776"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.218])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2026 09:24:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>, "Grzelak, Michal"
 <michal.grzelak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v3 03/31] drm/i915/bios: log unsupported VS/PE-O parsing
In-Reply-To: <DM3PPF208195D8DD99F697F238A2D0CBC37E3032@DM3PPF208195D8D.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260507013137.527510-1-michal.grzelak@intel.com>
 <20260507013137.527510-4-michal.grzelak@intel.com>
 <DM3PPF208195D8DD99F697F238A2D0CBC37E3032@DM3PPF208195D8D.namprd11.prod.outlook.com>
Date: Tue, 19 May 2026 19:24:42 +0300
Message-ID: <3f7b814400b2d1513425ea498e78dd1cc9bd08cb@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 9306C5823FF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, 18 May 2026, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>> Subject: [PATCH v3 03/31] drm/i915/bios: log unsupported VS/PE-O parsing
>>=20
>> Search for VBT #57. Check for failure since pre-ICL GOPs do not contain =
the
>> block. Check also if VBT version is appropriately up-to-date.
>>=20
>> Issue a debug message when port requests to override VS/PE and parsing V=
BT
>> #57 for the platform has not yet been implemented.
>>=20
>> Signed-off-by: Micha=C5=82 Grzelak <michal.grzelak@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_bios.c | 18 ++++++++++++++++++
>>  1 file changed, 18 insertions(+)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c
>> b/drivers/gpu/drm/i915/display/intel_bios.c
>> index 5700de438fdfd..3f9e4d31c7375 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> @@ -2185,6 +2185,23 @@ parse_compression_parameters(struct intel_display
>> *display)
>>  	}
>>  }
>>=20
>> +static void
>> +parse_vswing_preemph_override(struct intel_display *display) {
>> +	const struct bdb_vswing_preemph *block;
>> +
>> +	if (display->vbt.version < 218)
>> +		return;
>> +
>> +	block =3D bdb_find_section(display, BDB_VSWING_PREEMPH);
>> +
>> +	/* pre-ICL GOP don't have VBT #57 */
>
> If we already know pre ICL does have VBT #57 for sure why even try the fi=
nd section for check vbt versions lets just return early after display_ver(=
) check , which is done even before the vbt.version check .

Please don't add unnecessary platform or display version checks in
intel_bios.c.

BR,
Jani.

>
> Regards,
> Suraj Kandpal
>
>> +	if (!block)
>> +		return;
>> +
>> +	drm_dbg_kms(display->drm, "VS/PE-O parsing not yet supported\n"); }
>> +
>>  static u8 translate_iboost(struct intel_display *display, u8 val)  {
>>  	static const u8 mapping[] =3D { 1, 3, 7 }; /* See VBT spec */ @@ -3276=
,6
>> +3293,7 @@ void intel_bios_init(struct intel_display *display)
>>=20
>>  	/* Depends on child device list */
>>  	parse_compression_parameters(display);
>> +	parse_vswing_preemph_override(display);
>>=20
>>  out:
>>  	if (!vbt) {
>> --
>> 2.45.2
>

--=20
Jani Nikula, Intel
