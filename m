Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id SMRSNknzRGqH3woAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 13:00:25 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E256EC792
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 13:00:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=PaFFyMvn;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5820A10EEE3;
	Wed,  1 Jul 2026 11:00:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E43610EEC8;
 Wed,  1 Jul 2026 11:00:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782903622; x=1814439622;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=eQHsiXbLgUT3eG84YvpNZbvPn1iVs4d/6VCc+dzoEws=;
 b=PaFFyMvnfE9p2ZoNCDwKyj9Z9szXJmlkFk22oxRlqI7Cpw+DPpGp2qUa
 WGdjWYR/qvWJV2JR0TAWnhMuQGfON5S2ZXwm5wSDGbMXyoTnpWuMxHoOo
 rpm0BYYEEfgx7QgygI+yx17LJQIn67hOQLv+Hich1P7laXYzx69k157Cj
 oW1fwZTt7hO77GlnockU4aZR5jwl3N37nvfNvfSGUSlChnMoirmBourkX
 vQrphBHSaVfRJ/XvSmgjEbUk3SZ6HmymCoDPFPyVtDi1tftFNznz+PyXr
 ZBzYmLHKWZ+GY+c6w3gkb+WgQdUcRbI3W0Ec7eSqwZVLfi/KCV4gW44Cg A==;
X-CSE-ConnectionGUID: Ym89/+/QQhyK7kw+u9AYVw==
X-CSE-MsgGUID: IfvOsazgS2SDhYNZn3Qw0A==
X-IronPort-AV: E=McAfee;i="6800,10657,11833"; a="106423531"
X-IronPort-AV: E=Sophos;i="6.25,141,1779174000"; d="scan'208";a="106423531"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 04:00:18 -0700
X-CSE-ConnectionGUID: 2vULdpL0RJOYudDTfo7RFQ==
X-CSE-MsgGUID: t7XR5ujGRv+ZBMh0jUeJ/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,141,1779174000"; d="scan'208";a="252115630"
Received: from ettammin-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.61])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 04:00:15 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>, "Kandpal,
 Suraj" <suraj.kandpal@intel.com>
Cc: "Grzelak, Michal" <michal.grzelak@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v9 5/8] drm/i915/buf_trans: deconstify
 intel_ddi_buf_trans_entry
In-Reply-To: <33a597bb-b844-1a7a-2c50-5d83252a6ee9@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260626234246.2446451-1-michal.grzelak@intel.com>
 <20260626234246.2446451-6-michal.grzelak@intel.com>
 <DS4PPFE901A304F32A1305578BC68609A2AE3F62@DS4PPFE901A304F.namprd11.prod.outlook.com>
 <33a597bb-b844-1a7a-2c50-5d83252a6ee9@intel.com>
Date: Wed, 01 Jul 2026 14:00:12 +0300
Message-ID: <4c1df3325c900610b9230cebdb93384196ee28b8@intel.com>
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D5E256EC792

On Wed, 01 Jul 2026, Micha=C5=82 Grzelak <michal.grzelak@intel.com> wrote:
> On Wed, 1 Jul 2026, Kandpal, Suraj wrote:
>
>>> Subject: [PATCH v9 5/8] drm/i915/buf_trans: deconstify
>>> intel_ddi_buf_trans_entry
>>>
>>> Current implementation of Vswing / Pre-emphasis Override allocates
>>> ddi_buf_trans_entry on intel_bios_init() and overwrites it with deparse=
d data
>>> from VBT#57 on each encoder->get_buf_trans() call. Remove const qualifi=
er
>>> from definition of struct intel_ddi_buf_trans_entry in order to avoid d=
iscarding
>>> const qualifier by casting to (void *). Doing so requires deconstifying=
 DDI tables
>>> as well.
>>
>> These are predefined tables and we don=E2=80=99t want them changing whic=
h is why we kept them as const.
>> What was the issue we were facing with the previous way of doing things =
in the previous revisions.
>> Currently I don=E2=80=99t think it=E2=80=99s the best thing to remove co=
nst here.
>
> That's to address Jani's comment from [1]. My understanding is that void
> casting should be used in very limited cases: in best case nothing will
> happen, and in worst case compiler may place data qualified as static
> const in .rodata section of object file; trying to overwrite such data
> can be disastrous. Also, changing const qualified data is breaking the
> contract as you expect it to not be changed at all; hence deconstifying
> these tables would make some sense, at least with current approach.

Yeah, but they are const for a reason. You must not change them.

You can't have non-const pointers to them, and the fix is to not do
that, not to make them mutable.

BR,
Jani.



>
> BR,
> Micha=C5=82
>
> [1] https://lore.kernel.org/intel-gfx/e60ee78abc4044c8ecf33c2e85e89aa638b=
fdaaf@intel.com/
>
>>
>> Regards,
>> Suraj Kandpal
>>
>>>
>>> Signed-off-by: Micha=C5=82 Grzelak <michal.grzelak@intel.com>
>>> ---
>>>  .../drm/i915/display/intel_ddi_buf_trans.c    | 120 +++++++++---------
>>>  .../drm/i915/display/intel_ddi_buf_trans.h    |   2 +-
>>>  2 files changed, 61 insertions(+), 61 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
>>> b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
>>> index 4cd1e4d76c7af..2fad9909c78bd 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
>>> @@ -16,7 +16,7 @@
>>>   * them for both DP and FDI transports, allowing those ports to
>>>   * automatically adapt to HDMI connections as well
>>>   */
>>> -static const union intel_ddi_buf_trans_entry _hsw_trans_dp[] =3D {
>>> +static union intel_ddi_buf_trans_entry _hsw_trans_dp[] =3D {
>>>  	{ .hsw =3D { 0x00FFFFFF, 0x0006000E, 0x0 } },
>>>  	{ .hsw =3D { 0x00D75FFF, 0x0005000A, 0x0 } },
>>>  	{ .hsw =3D { 0x00C30FFF, 0x00040006, 0x0 } }, @@ -33,7 +33,7 @@ static
>>> const struct intel_ddi_buf_trans hsw_trans_dp =3D {
>>>  	.num_entries =3D ARRAY_SIZE(_hsw_trans_dp),  };
>>>
>>> -static const union intel_ddi_buf_trans_entry _hsw_trans_fdi[] =3D {
>>> +static union intel_ddi_buf_trans_entry _hsw_trans_fdi[] =3D {
>>>  	{ .hsw =3D { 0x00FFFFFF, 0x0007000E, 0x0 } },
>>>  	{ .hsw =3D { 0x00D75FFF, 0x000F000A, 0x0 } },
>>>  	{ .hsw =3D { 0x00C30FFF, 0x00060006, 0x0 } }, @@ -50,7 +50,7 @@ static
>>> const struct intel_ddi_buf_trans hsw_trans_fdi =3D {
>>>  	.num_entries =3D ARRAY_SIZE(_hsw_trans_fdi),  };
>>>
>>> -static const union intel_ddi_buf_trans_entry _hsw_trans_hdmi[] =3D {
>>> +static union intel_ddi_buf_trans_entry _hsw_trans_hdmi[] =3D {
>>>  							/* Idx	NT mV d
>>> 	T mV d	db	*/
>>>  	{ .hsw =3D { 0x00FFFFFF, 0x0006000E, 0x0 } },	/* 0:	400	400
>>> 	0	*/
>>>  	{ .hsw =3D { 0x00E79FFF, 0x000E000C, 0x0 } },	/* 1:	400	500
>>> 	2	*/
>>> @@ -72,7 +72,7 @@ static const struct intel_ddi_buf_trans hsw_trans_hdm=
i =3D {
>>>  	.hdmi_default_entry =3D 6,
>>>  };
>>>
>>> -static const union intel_ddi_buf_trans_entry _bdw_trans_edp[] =3D {
>>> +static union intel_ddi_buf_trans_entry _bdw_trans_edp[] =3D {
>>>  	{ .hsw =3D { 0x00FFFFFF, 0x00000012, 0x0 } },
>>>  	{ .hsw =3D { 0x00EBAFFF, 0x00020011, 0x0 } },
>>>  	{ .hsw =3D { 0x00C71FFF, 0x0006000F, 0x0 } }, @@ -89,7 +89,7 @@ static
>>> const struct intel_ddi_buf_trans bdw_trans_edp =3D {
>>>  	.num_entries =3D ARRAY_SIZE(_bdw_trans_edp),  };
>>>
>>> -static const union intel_ddi_buf_trans_entry _bdw_trans_dp[] =3D {
>>> +static union intel_ddi_buf_trans_entry _bdw_trans_dp[] =3D {
>>>  	{ .hsw =3D { 0x00FFFFFF, 0x0007000E, 0x0 } },
>>>  	{ .hsw =3D { 0x00D75FFF, 0x000E000A, 0x0 } },
>>>  	{ .hsw =3D { 0x00BEFFFF, 0x00140006, 0x0 } }, @@ -106,7 +106,7 @@
>>> static const struct intel_ddi_buf_trans bdw_trans_dp =3D {
>>>  	.num_entries =3D ARRAY_SIZE(_bdw_trans_dp),  };
>>>
>>> -static const union intel_ddi_buf_trans_entry _bdw_trans_fdi[] =3D {
>>> +static union intel_ddi_buf_trans_entry _bdw_trans_fdi[] =3D {
>>>  	{ .hsw =3D { 0x00FFFFFF, 0x0001000E, 0x0 } },
>>>  	{ .hsw =3D { 0x00D75FFF, 0x0004000A, 0x0 } },
>>>  	{ .hsw =3D { 0x00C30FFF, 0x00070006, 0x0 } }, @@ -123,7 +123,7 @@
>>> static const struct intel_ddi_buf_trans bdw_trans_fdi =3D {
>>>  	.num_entries =3D ARRAY_SIZE(_bdw_trans_fdi),  };
>>>
>>> -static const union intel_ddi_buf_trans_entry _bdw_trans_hdmi[] =3D {
>>> +static union intel_ddi_buf_trans_entry _bdw_trans_hdmi[] =3D {
>>>  							/* Idx	NT mV d
>>> 	T mV df	db	*/
>>>  	{ .hsw =3D { 0x00FFFFFF, 0x0007000E, 0x0 } },	/* 0:	400	400
>>> 	0	*/
>>>  	{ .hsw =3D { 0x00D75FFF, 0x000E000A, 0x0 } },	/* 1:	400	600
>>> 	3.5	*/
>>> @@ -144,7 +144,7 @@ static const struct intel_ddi_buf_trans bdw_trans_h=
dmi
>>> =3D {  };
>>>
>>>  /* Skylake H and S */
>>> -static const union intel_ddi_buf_trans_entry _skl_trans_dp[] =3D {
>>> +static union intel_ddi_buf_trans_entry _skl_trans_dp[] =3D {
>>>  	{ .hsw =3D { 0x00002016, 0x000000A0, 0x0 } },
>>>  	{ .hsw =3D { 0x00005012, 0x0000009B, 0x0 } },
>>>  	{ .hsw =3D { 0x00007011, 0x00000088, 0x0 } }, @@ -162,7 +162,7 @@
>>> static const struct intel_ddi_buf_trans skl_trans_dp =3D {  };
>>>
>>>  /* Skylake U */
>>> -static const union intel_ddi_buf_trans_entry _skl_u_trans_dp[] =3D {
>>> +static union intel_ddi_buf_trans_entry _skl_u_trans_dp[] =3D {
>>>  	{ .hsw =3D { 0x0000201B, 0x000000A2, 0x0 } },
>>>  	{ .hsw =3D { 0x00005012, 0x00000088, 0x0 } },
>>>  	{ .hsw =3D { 0x80007011, 0x000000CD, 0x1 } }, @@ -180,7 +180,7 @@
>>> static const struct intel_ddi_buf_trans skl_u_trans_dp =3D {  };
>>>
>>>  /* Skylake Y */
>>> -static const union intel_ddi_buf_trans_entry _skl_y_trans_dp[] =3D {
>>> +static union intel_ddi_buf_trans_entry _skl_y_trans_dp[] =3D {
>>>  	{ .hsw =3D { 0x00000018, 0x000000A2, 0x0 } },
>>>  	{ .hsw =3D { 0x00005012, 0x00000088, 0x0 } },
>>>  	{ .hsw =3D { 0x80007011, 0x000000CD, 0x3 } }, @@ -198,7 +198,7 @@
>>> static const struct intel_ddi_buf_trans skl_y_trans_dp =3D {  };
>>>
>>>  /* Kabylake H and S */
>>> -static const union intel_ddi_buf_trans_entry _kbl_trans_dp[] =3D {
>>> +static union intel_ddi_buf_trans_entry _kbl_trans_dp[] =3D {
>>>  	{ .hsw =3D { 0x00002016, 0x000000A0, 0x0 } },
>>>  	{ .hsw =3D { 0x00005012, 0x0000009B, 0x0 } },
>>>  	{ .hsw =3D { 0x00007011, 0x00000088, 0x0 } }, @@ -216,7 +216,7 @@
>>> static const struct intel_ddi_buf_trans kbl_trans_dp =3D {  };
>>>
>>>  /* Kabylake U */
>>> -static const union intel_ddi_buf_trans_entry _kbl_u_trans_dp[] =3D {
>>> +static union intel_ddi_buf_trans_entry _kbl_u_trans_dp[] =3D {
>>>  	{ .hsw =3D { 0x0000201B, 0x000000A1, 0x0 } },
>>>  	{ .hsw =3D { 0x00005012, 0x00000088, 0x0 } },
>>>  	{ .hsw =3D { 0x80007011, 0x000000CD, 0x3 } }, @@ -234,7 +234,7 @@
>>> static const struct intel_ddi_buf_trans kbl_u_trans_dp =3D {  };
>>>
>>>  /* Kabylake Y */
>>> -static const union intel_ddi_buf_trans_entry _kbl_y_trans_dp[] =3D {
>>> +static union intel_ddi_buf_trans_entry _kbl_y_trans_dp[] =3D {
>>>  	{ .hsw =3D { 0x00001017, 0x000000A1, 0x0 } },
>>>  	{ .hsw =3D { 0x00005012, 0x00000088, 0x0 } },
>>>  	{ .hsw =3D { 0x80007011, 0x000000CD, 0x3 } }, @@ -255,7 +255,7 @@
>>> static const struct intel_ddi_buf_trans kbl_y_trans_dp =3D {
>>>   * Skylake/Kabylake H and S
>>>   * eDP 1.4 low vswing translation parameters
>>>   */
>>> -static const union intel_ddi_buf_trans_entry _skl_trans_edp[] =3D {
>>> +static union intel_ddi_buf_trans_entry _skl_trans_edp[] =3D {
>>>  	{ .hsw =3D { 0x00000018, 0x000000A8, 0x0 } },
>>>  	{ .hsw =3D { 0x00004013, 0x000000A9, 0x0 } },
>>>  	{ .hsw =3D { 0x00007011, 0x000000A2, 0x0 } }, @@ -277,7 +277,7 @@
>>> static const struct intel_ddi_buf_trans skl_trans_edp =3D {
>>>   * Skylake/Kabylake U
>>>   * eDP 1.4 low vswing translation parameters
>>>   */
>>> -static const union intel_ddi_buf_trans_entry _skl_u_trans_edp[] =3D {
>>> +static union intel_ddi_buf_trans_entry _skl_u_trans_edp[] =3D {
>>>  	{ .hsw =3D { 0x00000018, 0x000000A8, 0x0 } },
>>>  	{ .hsw =3D { 0x00004013, 0x000000A9, 0x0 } },
>>>  	{ .hsw =3D { 0x00007011, 0x000000A2, 0x0 } }, @@ -299,7 +299,7 @@
>>> static const struct intel_ddi_buf_trans skl_u_trans_edp =3D {
>>>   * Skylake/Kabylake Y
>>>   * eDP 1.4 low vswing translation parameters
>>>   */
>>> -static const union intel_ddi_buf_trans_entry _skl_y_trans_edp[] =3D {
>>> +static union intel_ddi_buf_trans_entry _skl_y_trans_edp[] =3D {
>>>  	{ .hsw =3D { 0x00000018, 0x000000A8, 0x0 } },
>>>  	{ .hsw =3D { 0x00004013, 0x000000AB, 0x0 } },
>>>  	{ .hsw =3D { 0x00007011, 0x000000A4, 0x0 } }, @@ -318,7 +318,7 @@
>>> static const struct intel_ddi_buf_trans skl_y_trans_edp =3D {  };
>>>
>>>  /* Skylake/Kabylake U, H and S */
>>> -static const union intel_ddi_buf_trans_entry _skl_trans_hdmi[] =3D {
>>> +static union intel_ddi_buf_trans_entry _skl_trans_hdmi[] =3D {
>>>  	{ .hsw =3D { 0x00000018, 0x000000AC, 0x0 } },
>>>  	{ .hsw =3D { 0x00005012, 0x0000009D, 0x0 } },
>>>  	{ .hsw =3D { 0x00007011, 0x00000088, 0x0 } }, @@ -339,7 +339,7 @@
>>> static const struct intel_ddi_buf_trans skl_trans_hdmi =3D {  };
>>>
>>>  /* Skylake/Kabylake Y */
>>> -static const union intel_ddi_buf_trans_entry _skl_y_trans_hdmi[] =3D {
>>> +static union intel_ddi_buf_trans_entry _skl_y_trans_hdmi[] =3D {
>>>  	{ .hsw =3D { 0x00000018, 0x000000A1, 0x0 } },
>>>  	{ .hsw =3D { 0x00005012, 0x000000DF, 0x0 } },
>>>  	{ .hsw =3D { 0x80007011, 0x000000CB, 0x3 } }, @@ -359,7 +359,7 @@
>>> static const struct intel_ddi_buf_trans skl_y_trans_hdmi =3D {
>>>  	.hdmi_default_entry =3D 8,
>>>  };
>>>
>>> -static const union intel_ddi_buf_trans_entry _bxt_trans_dp[] =3D {
>>> +static union intel_ddi_buf_trans_entry _bxt_trans_dp[] =3D {
>>>  						/* Idx	NT mV diff	db  */
>>>  	{ .bxt =3D { 52,  0x9A, 0, 128, } },	/* 0:	400		0   */
>>>  	{ .bxt =3D { 78,  0x9A, 0, 85,  } },	/* 1:	400		3.5 */
>>> @@ -378,7 +378,7 @@ static const struct intel_ddi_buf_trans bxt_trans_d=
p =3D {
>>>  	.num_entries =3D ARRAY_SIZE(_bxt_trans_dp),  };
>>>
>>> -static const union intel_ddi_buf_trans_entry _bxt_trans_edp[] =3D {
>>> +static union intel_ddi_buf_trans_entry _bxt_trans_edp[] =3D {
>>>  					/* Idx	NT mV diff	db  */
>>>  	{ .bxt =3D { 26, 0, 0, 128, } },	/* 0:	200		0   */
>>>  	{ .bxt =3D { 38, 0, 0, 112, } },	/* 1:	200		1.5 */
>>> @@ -400,7 +400,7 @@ static const struct intel_ddi_buf_trans bxt_trans_e=
dp =3D
>>> {
>>>  /* BSpec has 2 recommended values - entries 0 and 8.
>>>   * Using the entry with higher vswing.
>>>   */
>>> -static const union intel_ddi_buf_trans_entry _bxt_trans_hdmi[] =3D {
>>> +static union intel_ddi_buf_trans_entry _bxt_trans_hdmi[] =3D {
>>>  						/* Idx	NT mV diff	db  */
>>>  	{ .bxt =3D { 52,  0x9A, 0, 128, } },	/* 0:	400		0   */
>>>  	{ .bxt =3D { 52,  0x9A, 0, 85,  } },	/* 1:	400		3.5 */
>>> @@ -421,7 +421,7 @@ static const struct intel_ddi_buf_trans bxt_trans_h=
dmi
>>> =3D {  };
>>>
>>>  /* icl_combo_phy_trans */
>>> -static const union intel_ddi_buf_trans_entry
>>> _icl_combo_phy_trans_dp_hbr2_edp_hbr3[] =3D {
>>> +static union intel_ddi_buf_trans_entry
>>> +_icl_combo_phy_trans_dp_hbr2_edp_hbr3[] =3D {
>>>  							/* NT mV Trans mV db
>>> */
>>>  	{ .icl =3D { 0xA, 0x35, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0  =
 */
>>>  	{ .icl =3D { 0xA, 0x4F, 0x37, 0x00, 0x08 } },	/* 350   500      3.1  =
 */
>>> @@ -440,7 +440,7 @@ static const struct intel_ddi_buf_trans
>>> icl_combo_phy_trans_dp_hbr2_edp_hbr3 =3D {
>>>  	.num_entries =3D
>>> ARRAY_SIZE(_icl_combo_phy_trans_dp_hbr2_edp_hbr3),
>>>  };
>>>
>>> -static const union intel_ddi_buf_trans_entry
>>> _icl_combo_phy_trans_edp_hbr2[] =3D {
>>> +static union intel_ddi_buf_trans_entry _icl_combo_phy_trans_edp_hbr2[]
>>> +=3D {
>>>  							/* NT mV Trans mV db
>>> */
>>>  	{ .icl =3D { 0x0, 0x7F, 0x3F, 0x00, 0x00 } },	/* 200   200      0.0  =
 */
>>>  	{ .icl =3D { 0x8, 0x7F, 0x38, 0x00, 0x07 } },	/* 200   250      1.9  =
 */
>>> @@ -459,7 +459,7 @@ static const struct intel_ddi_buf_trans
>>> icl_combo_phy_trans_edp_hbr2 =3D {
>>>  	.num_entries =3D ARRAY_SIZE(_icl_combo_phy_trans_edp_hbr2),
>>>  };
>>>
>>> -static const union intel_ddi_buf_trans_entry _icl_combo_phy_trans_hdmi=
[] =3D
>>> {
>>> +static union intel_ddi_buf_trans_entry _icl_combo_phy_trans_hdmi[] =3D=
 {
>>>  							/* NT mV Trans mV db
>>> */
>>>  	{ .icl =3D { 0xA, 0x60, 0x3F, 0x00, 0x00 } },	/* 450   450      0.0  =
 */
>>>  	{ .icl =3D { 0xB, 0x73, 0x36, 0x00, 0x09 } },	/* 450   650      3.2  =
 */
>>> @@ -476,7 +476,7 @@ static const struct intel_ddi_buf_trans
>>> icl_combo_phy_trans_hdmi =3D {
>>>  	.hdmi_default_entry =3D ARRAY_SIZE(_icl_combo_phy_trans_hdmi) - 1,
>>> };
>>>
>>> -static const union intel_ddi_buf_trans_entry _ehl_combo_phy_trans_dp[]=
 =3D {
>>> +static union intel_ddi_buf_trans_entry _ehl_combo_phy_trans_dp[] =3D {
>>>  							/* NT mV Trans mV db
>>> */
>>>  	{ .icl =3D { 0xA, 0x33, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0  =
 */
>>>  	{ .icl =3D { 0xA, 0x47, 0x38, 0x00, 0x07 } },	/* 350   500      3.1  =
 */
>>> @@ -495,7 +495,7 @@ static const struct intel_ddi_buf_trans
>>> ehl_combo_phy_trans_dp =3D {
>>>  	.num_entries =3D ARRAY_SIZE(_ehl_combo_phy_trans_dp),
>>>  };
>>>
>>> -static const union intel_ddi_buf_trans_entry
>>> _ehl_combo_phy_trans_edp_hbr2[] =3D {
>>> +static union intel_ddi_buf_trans_entry _ehl_combo_phy_trans_edp_hbr2[]
>>> +=3D {
>>>  							/* NT mV Trans mV db
>>> */
>>>  	{ .icl =3D { 0x8, 0x7F, 0x3F, 0x00, 0x00 } },	/* 200   200      0.0  =
 */
>>>  	{ .icl =3D { 0x8, 0x7F, 0x3F, 0x00, 0x00 } },	/* 200   250      1.9  =
 */
>>> @@ -514,7 +514,7 @@ static const struct intel_ddi_buf_trans
>>> ehl_combo_phy_trans_edp_hbr2 =3D {
>>>  	.num_entries =3D ARRAY_SIZE(_ehl_combo_phy_trans_edp_hbr2),
>>>  };
>>>
>>> -static const union intel_ddi_buf_trans_entry
>>> _jsl_combo_phy_trans_edp_hbr[] =3D {
>>> +static union intel_ddi_buf_trans_entry _jsl_combo_phy_trans_edp_hbr[] =
=3D
>>> +{
>>>  							/* NT mV Trans mV db
>>> */
>>>  	{ .icl =3D { 0x8, 0x7F, 0x3F, 0x00, 0x00 } },	/* 200   200      0.0  =
 */
>>>  	{ .icl =3D { 0x8, 0x7F, 0x38, 0x00, 0x07 } },	/* 200   250      1.9  =
 */
>>> @@ -533,7 +533,7 @@ static const struct intel_ddi_buf_trans
>>> jsl_combo_phy_trans_edp_hbr =3D {
>>>  	.num_entries =3D ARRAY_SIZE(_jsl_combo_phy_trans_edp_hbr),
>>>  };
>>>
>>> -static const union intel_ddi_buf_trans_entry
>>> _jsl_combo_phy_trans_edp_hbr2[] =3D {
>>> +static union intel_ddi_buf_trans_entry _jsl_combo_phy_trans_edp_hbr2[]
>>> +=3D {
>>>  							/* NT mV Trans mV db
>>> */
>>>  	{ .icl =3D { 0x8, 0x7F, 0x3F, 0x00, 0x00 } },	/* 200   200      0.0  =
 */
>>>  	{ .icl =3D { 0x8, 0x7F, 0x3F, 0x00, 0x00 } },	/* 200   250      1.9  =
 */
>>> @@ -552,7 +552,7 @@ static const struct intel_ddi_buf_trans
>>> jsl_combo_phy_trans_edp_hbr2 =3D {
>>>  	.num_entries =3D ARRAY_SIZE(_jsl_combo_phy_trans_edp_hbr2),
>>>  };
>>>
>>> -static const union intel_ddi_buf_trans_entry
>>> _dg1_combo_phy_trans_dp_rbr_hbr[] =3D {
>>> +static union intel_ddi_buf_trans_entry
>>> +_dg1_combo_phy_trans_dp_rbr_hbr[] =3D {
>>>  							/* NT mV Trans mV db
>>> */
>>>  	{ .icl =3D { 0xA, 0x32, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0  =
 */
>>>  	{ .icl =3D { 0xA, 0x48, 0x35, 0x00, 0x0A } },	/* 350   500      3.1  =
 */
>>> @@ -571,7 +571,7 @@ static const struct intel_ddi_buf_trans
>>> dg1_combo_phy_trans_dp_rbr_hbr =3D {
>>>  	.num_entries =3D ARRAY_SIZE(_dg1_combo_phy_trans_dp_rbr_hbr),
>>>  };
>>>
>>> -static const union intel_ddi_buf_trans_entry
>>> _dg1_combo_phy_trans_dp_hbr2_hbr3[] =3D {
>>> +static union intel_ddi_buf_trans_entry
>>> +_dg1_combo_phy_trans_dp_hbr2_hbr3[] =3D {
>>>  							/* NT mV Trans mV db
>>> */
>>>  	{ .icl =3D { 0xA, 0x32, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0  =
 */
>>>  	{ .icl =3D { 0xA, 0x48, 0x35, 0x00, 0x0A } },	/* 350   500      3.1  =
 */
>>> @@ -590,7 +590,7 @@ static const struct intel_ddi_buf_trans
>>> dg1_combo_phy_trans_dp_hbr2_hbr3 =3D {
>>>  	.num_entries =3D ARRAY_SIZE(_dg1_combo_phy_trans_dp_hbr2_hbr3),
>>>  };
>>>
>>> -static const union intel_ddi_buf_trans_entry _icl_mg_phy_trans_rbr_hbr=
[] =3D {
>>> +static union intel_ddi_buf_trans_entry _icl_mg_phy_trans_rbr_hbr[] =3D=
 {
>>>  					/* Voltage swing  pre-emphasis */
>>>  	{ .mg =3D { 0x18, 0x00, 0x00 } },	/* 0              0   */
>>>  	{ .mg =3D { 0x1D, 0x00, 0x05 } },	/* 0              1   */
>>> @@ -609,7 +609,7 @@ static const struct intel_ddi_buf_trans
>>> icl_mg_phy_trans_rbr_hbr =3D {
>>>  	.num_entries =3D ARRAY_SIZE(_icl_mg_phy_trans_rbr_hbr),
>>>  };
>>>
>>> -static const union intel_ddi_buf_trans_entry _icl_mg_phy_trans_hbr2_hb=
r3[]
>>> =3D {
>>> +static union intel_ddi_buf_trans_entry _icl_mg_phy_trans_hbr2_hbr3[] =
=3D
>>> +{
>>>  					/* Voltage swing  pre-emphasis */
>>>  	{ .mg =3D { 0x18, 0x00, 0x00 } },	/* 0              0   */
>>>  	{ .mg =3D { 0x1D, 0x00, 0x05 } },	/* 0              1   */
>>> @@ -628,7 +628,7 @@ static const struct intel_ddi_buf_trans
>>> icl_mg_phy_trans_hbr2_hbr3 =3D {
>>>  	.num_entries =3D ARRAY_SIZE(_icl_mg_phy_trans_hbr2_hbr3),
>>>  };
>>>
>>> -static const union intel_ddi_buf_trans_entry _icl_mg_phy_trans_hdmi[] =
=3D {
>>> +static union intel_ddi_buf_trans_entry _icl_mg_phy_trans_hdmi[] =3D {
>>>  					/* HDMI Preset	VS	Pre-emph */
>>>  	{ .mg =3D { 0x1A, 0x0, 0x0 } },	/* 1		400mV	0dB */
>>>  	{ .mg =3D { 0x20, 0x0, 0x0 } },	/* 2		500mV	0dB */
>>> @@ -648,7 +648,7 @@ static const struct intel_ddi_buf_trans
>>> icl_mg_phy_trans_hdmi =3D {
>>>  	.hdmi_default_entry =3D ARRAY_SIZE(_icl_mg_phy_trans_hdmi) - 1,  };
>>>
>>> -static const union intel_ddi_buf_trans_entry _tgl_dkl_phy_trans_dp_hbr=
[] =3D {
>>> +static union intel_ddi_buf_trans_entry _tgl_dkl_phy_trans_dp_hbr[] =3D=
 {
>>>  					/* VS	pre-emp	Non-trans mV
>>> 	Pre-emph dB */
>>>  	{ .dkl =3D { 0x7, 0x0, 0x00 } },	/* 0	0	400mV		0 dB
>>> */
>>>  	{ .dkl =3D { 0x5, 0x0, 0x05 } },	/* 0	1	400mV		3.5 dB
>>> */
>>> @@ -667,7 +667,7 @@ static const struct intel_ddi_buf_trans
>>> tgl_dkl_phy_trans_dp_hbr =3D {
>>>  	.num_entries =3D ARRAY_SIZE(_tgl_dkl_phy_trans_dp_hbr),
>>>  };
>>>
>>> -static const union intel_ddi_buf_trans_entry _tgl_dkl_phy_trans_dp_hbr=
2[] =3D {
>>> +static union intel_ddi_buf_trans_entry _tgl_dkl_phy_trans_dp_hbr2[] =
=3D {
>>>  					/* VS	pre-emp	Non-trans mV
>>> 	Pre-emph dB */
>>>  	{ .dkl =3D { 0x7, 0x0, 0x00 } },	/* 0	0	400mV		0 dB
>>> */
>>>  	{ .dkl =3D { 0x5, 0x0, 0x05 } },	/* 0	1	400mV		3.5 dB
>>> */
>>> @@ -686,7 +686,7 @@ static const struct intel_ddi_buf_trans
>>> tgl_dkl_phy_trans_dp_hbr2 =3D {
>>>  	.num_entries =3D ARRAY_SIZE(_tgl_dkl_phy_trans_dp_hbr2),
>>>  };
>>>
>>> -static const union intel_ddi_buf_trans_entry _tgl_dkl_phy_trans_hdmi[]=
 =3D {
>>> +static union intel_ddi_buf_trans_entry _tgl_dkl_phy_trans_hdmi[] =3D {
>>>  					/* HDMI Preset	VS	Pre-emph */
>>>  	{ .dkl =3D { 0x7, 0x0, 0x0 } },	/* 1		400mV	0dB */
>>>  	{ .dkl =3D { 0x6, 0x0, 0x0 } },	/* 2		500mV	0dB */
>>> @@ -706,7 +706,7 @@ static const struct intel_ddi_buf_trans
>>> tgl_dkl_phy_trans_hdmi =3D {
>>>  	.hdmi_default_entry =3D ARRAY_SIZE(_tgl_dkl_phy_trans_hdmi) - 1,  };
>>>
>>> -static const union intel_ddi_buf_trans_entry _tgl_combo_phy_trans_dp_h=
br[]
>>> =3D {
>>> +static union intel_ddi_buf_trans_entry _tgl_combo_phy_trans_dp_hbr[] =
=3D
>>> +{
>>>  							/* NT mV Trans mV db
>>> */
>>>  	{ .icl =3D { 0xA, 0x32, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0  =
 */
>>>  	{ .icl =3D { 0xA, 0x4F, 0x37, 0x00, 0x08 } },	/* 350   500      3.1  =
 */
>>> @@ -725,7 +725,7 @@ static const struct intel_ddi_buf_trans
>>> tgl_combo_phy_trans_dp_hbr =3D {
>>>  	.num_entries =3D ARRAY_SIZE(_tgl_combo_phy_trans_dp_hbr),
>>>  };
>>>
>>> -static const union intel_ddi_buf_trans_entry
>>> _tgl_combo_phy_trans_dp_hbr2[] =3D {
>>> +static union intel_ddi_buf_trans_entry _tgl_combo_phy_trans_dp_hbr2[] =
=3D
>>> +{
>>>  							/* NT mV Trans mV db
>>> */
>>>  	{ .icl =3D { 0xA, 0x35, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0  =
 */
>>>  	{ .icl =3D { 0xA, 0x4F, 0x37, 0x00, 0x08 } },	/* 350   500      3.1  =
 */
>>> @@ -744,7 +744,7 @@ static const struct intel_ddi_buf_trans
>>> tgl_combo_phy_trans_dp_hbr2 =3D {
>>>  	.num_entries =3D ARRAY_SIZE(_tgl_combo_phy_trans_dp_hbr2),
>>>  };
>>>
>>> -static const union intel_ddi_buf_trans_entry
>>> _tgl_uy_combo_phy_trans_dp_hbr2[] =3D {
>>> +static union intel_ddi_buf_trans_entry
>>> +_tgl_uy_combo_phy_trans_dp_hbr2[] =3D {
>>>  							/* NT mV Trans mV db
>>> */
>>>  	{ .icl =3D { 0xA, 0x35, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0  =
 */
>>>  	{ .icl =3D { 0xA, 0x4F, 0x36, 0x00, 0x09 } },	/* 350   500      3.1  =
 */
>>> @@ -767,7 +767,7 @@ static const struct intel_ddi_buf_trans
>>> tgl_uy_combo_phy_trans_dp_hbr2 =3D {
>>>   * Cloned the HOBL entry to comply with the voltage and pre-emphasis e=
ntries
>>>   * that DisplayPort specification requires
>>>   */
>>> -static const union intel_ddi_buf_trans_entry
>>> _tgl_combo_phy_trans_edp_hbr2_hobl[] =3D {
>>> +static union intel_ddi_buf_trans_entry
>>> +_tgl_combo_phy_trans_edp_hbr2_hobl[] =3D {
>>>  							/* VS	pre-emp
>>> 	*/
>>>  	{ .icl =3D { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 0	0	*/
>>>  	{ .icl =3D { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 0	1	*/
>>> @@ -785,7 +785,7 @@ static const struct intel_ddi_buf_trans
>>> tgl_combo_phy_trans_edp_hbr2_hobl =3D {
>>>  	.num_entries =3D ARRAY_SIZE(_tgl_combo_phy_trans_edp_hbr2_hobl),
>>>  };
>>>
>>> -static const union intel_ddi_buf_trans_entry _rkl_combo_phy_trans_dp_h=
br[]
>>> =3D {
>>> +static union intel_ddi_buf_trans_entry _rkl_combo_phy_trans_dp_hbr[] =
=3D
>>> +{
>>>  							/* NT mV Trans mV db
>>> */
>>>  	{ .icl =3D { 0xA, 0x2F, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0  =
 */
>>>  	{ .icl =3D { 0xA, 0x4F, 0x37, 0x00, 0x08 } },	/* 350   500      3.1  =
 */
>>> @@ -804,7 +804,7 @@ static const struct intel_ddi_buf_trans
>>> rkl_combo_phy_trans_dp_hbr =3D {
>>>  	.num_entries =3D ARRAY_SIZE(_rkl_combo_phy_trans_dp_hbr),
>>>  };
>>>
>>> -static const union intel_ddi_buf_trans_entry
>>> _rkl_combo_phy_trans_dp_hbr2_hbr3[] =3D {
>>> +static union intel_ddi_buf_trans_entry
>>> +_rkl_combo_phy_trans_dp_hbr2_hbr3[] =3D {
>>>  							/* NT mV Trans mV db
>>> */
>>>  	{ .icl =3D { 0xA, 0x35, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0  =
 */
>>>  	{ .icl =3D { 0xA, 0x50, 0x38, 0x00, 0x07 } },	/* 350   500      3.1  =
 */
>>> @@ -823,7 +823,7 @@ static const struct intel_ddi_buf_trans
>>> rkl_combo_phy_trans_dp_hbr2_hbr3 =3D {
>>>  	.num_entries =3D ARRAY_SIZE(_rkl_combo_phy_trans_dp_hbr2_hbr3),
>>>  };
>>>
>>> -static const union intel_ddi_buf_trans_entry
>>> _adls_combo_phy_trans_dp_hbr2_hbr3[] =3D {
>>> +static union intel_ddi_buf_trans_entry
>>> +_adls_combo_phy_trans_dp_hbr2_hbr3[] =3D {
>>>  							/* NT mV Trans mV db
>>> */
>>>  	{ .icl =3D { 0xA, 0x35, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0  =
 */
>>>  	{ .icl =3D { 0xA, 0x4F, 0x37, 0x00, 0x08 } },	/* 350   500      3.1  =
 */
>>> @@ -842,7 +842,7 @@ static const struct intel_ddi_buf_trans
>>> adls_combo_phy_trans_dp_hbr2_hbr3 =3D {
>>>  	.num_entries =3D ARRAY_SIZE(_adls_combo_phy_trans_dp_hbr2_hbr3),
>>>  };
>>>
>>> -static const union intel_ddi_buf_trans_entry
>>> _adls_combo_phy_trans_edp_hbr2[] =3D {
>>> +static union intel_ddi_buf_trans_entry _adls_combo_phy_trans_edp_hbr2[]
>>> +=3D {
>>>  							/* NT mV Trans mV db
>>> */
>>>  	{ .icl =3D { 0x9, 0x73, 0x3D, 0x00, 0x02 } },	/* 200   200      0.0  =
 */
>>>  	{ .icl =3D { 0x9, 0x7A, 0x3C, 0x00, 0x03 } },	/* 200   250      1.9  =
 */
>>> @@ -861,7 +861,7 @@ static const struct intel_ddi_buf_trans
>>> adls_combo_phy_trans_edp_hbr2 =3D {
>>>  	.num_entries =3D ARRAY_SIZE(_adls_combo_phy_trans_edp_hbr2),
>>>  };
>>>
>>> -static const union intel_ddi_buf_trans_entry
>>> _adls_combo_phy_trans_edp_hbr3[] =3D {
>>> +static union intel_ddi_buf_trans_entry _adls_combo_phy_trans_edp_hbr3[]
>>> +=3D {
>>>  							/* NT mV Trans mV db
>>> */
>>>  	{ .icl =3D { 0xA, 0x35, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0  =
 */
>>>  	{ .icl =3D { 0xA, 0x4F, 0x37, 0x00, 0x08 } },	/* 350   500      3.1  =
 */
>>> @@ -880,7 +880,7 @@ static const struct intel_ddi_buf_trans
>>> adls_combo_phy_trans_edp_hbr3 =3D {
>>>  	.num_entries =3D ARRAY_SIZE(_adls_combo_phy_trans_edp_hbr3),
>>>  };
>>>
>>> -static const union intel_ddi_buf_trans_entry
>>> _adlp_combo_phy_trans_dp_hbr[] =3D {
>>> +static union intel_ddi_buf_trans_entry _adlp_combo_phy_trans_dp_hbr[] =
=3D
>>> +{
>>>  							/* NT mV Trans mV db
>>> */
>>>  	{ .icl =3D { 0xA, 0x35, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0  =
 */
>>>  	{ .icl =3D { 0xA, 0x4F, 0x37, 0x00, 0x08 } },	/* 350   500      3.1  =
 */
>>> @@ -899,7 +899,7 @@ static const struct intel_ddi_buf_trans
>>> adlp_combo_phy_trans_dp_hbr =3D {
>>>  	.num_entries =3D ARRAY_SIZE(_adlp_combo_phy_trans_dp_hbr),
>>>  };
>>>
>>> -static const union intel_ddi_buf_trans_entry
>>> _adlp_combo_phy_trans_dp_hbr2_hbr3[] =3D {
>>> +static union intel_ddi_buf_trans_entry
>>> +_adlp_combo_phy_trans_dp_hbr2_hbr3[] =3D {
>>>  							/* NT mV Trans mV db
>>> */
>>>  	{ .icl =3D { 0xA, 0x35, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0  =
 */
>>>  	{ .icl =3D { 0xA, 0x4F, 0x37, 0x00, 0x08 } },	/* 350   500      3.1  =
 */
>>> @@ -913,7 +913,7 @@ static const union intel_ddi_buf_trans_entry
>>> _adlp_combo_phy_trans_dp_hbr2_hbr3[
>>>  	{ .icl =3D { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 900   900      0.0  =
 */
>>>  };
>>>
>>> -static const union intel_ddi_buf_trans_entry
>>> _adlp_combo_phy_trans_edp_hbr2[] =3D {
>>> +static union intel_ddi_buf_trans_entry _adlp_combo_phy_trans_edp_hbr2[]
>>> +=3D {
>>>  							/* NT mV Trans mV db
>>> */
>>>  	{ .icl =3D { 0x4, 0x50, 0x38, 0x00, 0x07 } },	/* 200   200      0.0  =
 */
>>>  	{ .icl =3D { 0x4, 0x58, 0x35, 0x00, 0x0A } },	/* 200   250      1.9  =
 */
>>> @@ -927,7 +927,7 @@ static const union intel_ddi_buf_trans_entry
>>> _adlp_combo_phy_trans_edp_hbr2[] =3D
>>>  	{ .icl =3D { 0x4, 0x7A, 0x38, 0x00, 0x07 } },	/* 350   350      0.0  =
 */
>>>  };
>>>
>>> -static const union intel_ddi_buf_trans_entry
>>> _adlp_combo_phy_trans_dp_hbr2_edp_hbr3[] =3D {
>>> +static union intel_ddi_buf_trans_entry
>>> +_adlp_combo_phy_trans_dp_hbr2_edp_hbr3[] =3D {
>>>  							/* NT mV Trans mV db
>>> */
>>>  	{ .icl =3D { 0xA, 0x35, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0  =
 */
>>>  	{ .icl =3D { 0xA, 0x4F, 0x37, 0x00, 0x08 } },	/* 350   500      3.1  =
 */
>>> @@ -956,7 +956,7 @@ static const struct intel_ddi_buf_trans
>>> adlp_combo_phy_trans_edp_up_to_hbr2 =3D {
>>>  	.num_entries =3D ARRAY_SIZE(_adlp_combo_phy_trans_edp_hbr2),
>>>  };
>>>
>>> -static const union intel_ddi_buf_trans_entry _adlp_dkl_phy_trans_dp_hb=
r[] =3D
>>> {
>>> +static union intel_ddi_buf_trans_entry _adlp_dkl_phy_trans_dp_hbr[] =
=3D {
>>>  					/* VS	pre-emp	Non-trans mV
>>> 	Pre-emph dB */
>>>  	{ .dkl =3D { 0x7, 0x0, 0x01 } },	/* 0	0	400mV		0 dB
>>> */
>>>  	{ .dkl =3D { 0x5, 0x0, 0x06 } },	/* 0	1	400mV		3.5 dB
>>> */
>>> @@ -975,7 +975,7 @@ static const struct intel_ddi_buf_trans
>>> adlp_dkl_phy_trans_dp_hbr =3D {
>>>  	.num_entries =3D ARRAY_SIZE(_adlp_dkl_phy_trans_dp_hbr),
>>>  };
>>>
>>> -static const union intel_ddi_buf_trans_entry
>>> _adlp_dkl_phy_trans_dp_hbr2_hbr3[] =3D {
>>> +static union intel_ddi_buf_trans_entry
>>> +_adlp_dkl_phy_trans_dp_hbr2_hbr3[] =3D {
>>>  					/* VS	pre-emp	Non-trans mV
>>> 	Pre-emph dB */
>>>  	{ .dkl =3D { 0x7, 0x0, 0x00 } },	/* 0	0	400mV		0 dB
>>> */
>>>  	{ .dkl =3D { 0x5, 0x0, 0x04 } },	/* 0	1	400mV		3.5 dB
>>> */
>>> @@ -994,7 +994,7 @@ static const struct intel_ddi_buf_trans
>>> adlp_dkl_phy_trans_dp_hbr2_hbr3 =3D {
>>>  	.num_entries =3D ARRAY_SIZE(_adlp_dkl_phy_trans_dp_hbr2_hbr3),
>>>  };
>>>
>>> -static const union intel_ddi_buf_trans_entry _dg2_snps_trans[] =3D {
>>> +static union intel_ddi_buf_trans_entry _dg2_snps_trans[] =3D {
>>>  	{ .snps =3D { 25, 0, 0 } },	/* VS 0, pre-emph 0 */
>>>  	{ .snps =3D { 32, 0, 6 } },	/* VS 0, pre-emph 1 */
>>>  	{ .snps =3D { 35, 0, 10 } },	/* VS 0, pre-emph 2 */
>>> @@ -1013,7 +1013,7 @@ static const struct intel_ddi_buf_trans
>>> dg2_snps_trans =3D {
>>>  	.hdmi_default_entry =3D ARRAY_SIZE(_dg2_snps_trans) - 1,  };
>>>
>>> -static const union intel_ddi_buf_trans_entry _dg2_snps_trans_uhbr[] =
=3D {
>>> +static union intel_ddi_buf_trans_entry _dg2_snps_trans_uhbr[] =3D {
>>>  	{ .snps =3D { 62, 0, 0 } },	/* preset 0 */
>>>  	{ .snps =3D { 55, 0, 7 } },	/* preset 1 */
>>>  	{ .snps =3D { 50, 0, 12 } },	/* preset 2 */
>>> @@ -1037,7 +1037,7 @@ static const struct intel_ddi_buf_trans
>>> dg2_snps_trans_uhbr =3D {
>>>  	.num_entries =3D ARRAY_SIZE(_dg2_snps_trans_uhbr),  };
>>>
>>> -static const union intel_ddi_buf_trans_entry _mtl_c10_trans_dp14[] =3D=
 {
>>> +static union intel_ddi_buf_trans_entry _mtl_c10_trans_dp14[] =3D {
>>>  	{ .snps =3D { 26, 0, 0  } },      /* preset 0 */
>>>  	{ .snps =3D { 33, 0, 6  } },      /* preset 1 */
>>>  	{ .snps =3D { 38, 0, 11 } },      /* preset 2 */
>>> @@ -1057,7 +1057,7 @@ static const struct intel_ddi_buf_trans
>>> mtl_c10_trans_dp14 =3D {  };
>>>
>>>  /* DP1.4 */
>>> -static const union intel_ddi_buf_trans_entry _mtl_c20_trans_dp14[] =3D=
 {
>>> +static union intel_ddi_buf_trans_entry _mtl_c20_trans_dp14[] =3D {
>>>  	{ .snps =3D { 20, 0, 0  } },      /* preset 0 */
>>>  	{ .snps =3D { 24, 0, 4  } },      /* preset 1 */
>>>  	{ .snps =3D { 30, 0, 9  } },      /* preset 2 */
>>> @@ -1071,7 +1071,7 @@ static const union intel_ddi_buf_trans_entry
>>> _mtl_c20_trans_dp14[] =3D {  };
>>>
>>>  /* DP2.0 */
>>> -static const union intel_ddi_buf_trans_entry _mtl_c20_trans_uhbr[] =3D=
 {
>>> +static union intel_ddi_buf_trans_entry _mtl_c20_trans_uhbr[] =3D {
>>>  	{ .snps =3D { 48, 0, 0 } },       /* preset 0 */
>>>  	{ .snps =3D { 43, 0, 5 } },       /* preset 1 */
>>>  	{ .snps =3D { 40, 0, 8 } },       /* preset 2 */
>>> @@ -1091,7 +1091,7 @@ static const union intel_ddi_buf_trans_entry
>>> _mtl_c20_trans_uhbr[] =3D {  };
>>>
>>>  /* HDMI2.0 */
>>> -static const union intel_ddi_buf_trans_entry _mtl_c20_trans_hdmi[] =3D=
 {
>>> +static union intel_ddi_buf_trans_entry _mtl_c20_trans_hdmi[] =3D {
>>>  	{ .snps =3D { 48, 0, 0 } },       /* preset 0 */
>>>  	{ .snps =3D { 38, 4, 6 } },       /* preset 1 */
>>>  	{ .snps =3D { 36, 4, 8 } },       /* preset 2 */
>>> @@ -1117,7 +1117,7 @@ static const struct intel_ddi_buf_trans
>>> mtl_c20_trans_uhbr =3D {  };
>>>
>>>  /* DP1.4 */
>>> -static const union intel_ddi_buf_trans_entry _xe3plpd_lt_trans_dp14[] =
=3D {
>>> +static union intel_ddi_buf_trans_entry _xe3plpd_lt_trans_dp14[] =3D {
>>>  	{ .lt =3D { 1, 0, 0, 21, 0  } },
>>>  	{ .lt =3D { 1, 1, 0, 24, 3  } },
>>>  	{ .lt =3D { 1, 2, 0, 28, 7  } },
>>> @@ -1131,7 +1131,7 @@ static const union intel_ddi_buf_trans_entry
>>> _xe3plpd_lt_trans_dp14[] =3D {  };
>>>
>>>  /* DP2.1 */
>>> -static const union intel_ddi_buf_trans_entry _xe3plpd_lt_trans_uhbr[] =
=3D {
>>> +static union intel_ddi_buf_trans_entry _xe3plpd_lt_trans_uhbr[] =3D {
>>>  	{ .lt =3D { 0, 0, 0, 48, 0  } },
>>>  	{ .lt =3D { 0, 0, 0, 43, 5  } },
>>>  	{ .lt =3D { 0, 0, 0, 40, 8  } },
>>> @@ -1151,7 +1151,7 @@ static const union intel_ddi_buf_trans_entry
>>> _xe3plpd_lt_trans_uhbr[] =3D {  };
>>>
>>>  /* eDp */
>>> -static const union intel_ddi_buf_trans_entry _xe3plpd_lt_trans_edp[] =
=3D {
>>> +static union intel_ddi_buf_trans_entry _xe3plpd_lt_trans_edp[] =3D {
>>>  	{ .lt =3D { 1, 0, 0, 12, 0 } },
>>>  	{ .lt =3D { 1, 1, 0, 13, 1 } },
>>>  	{ .lt =3D { 1, 2, 0, 15, 3 } },
>>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
>>> b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
>>> index 9698697f39177..ca2ae2ac3a44c 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
>>> @@ -69,7 +69,7 @@ union intel_ddi_buf_trans_entry {  };
>>>
>>>  struct intel_ddi_buf_trans {
>>> -	const union intel_ddi_buf_trans_entry *entries;
>>> +	union intel_ddi_buf_trans_entry *entries;
>>>  	u8 num_entries;
>>>  	u8 hdmi_default_entry;
>>>  };
>>> --
>>> 2.45.2
>>
>>

--=20
Jani Nikula, Intel
