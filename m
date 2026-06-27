Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id mPGjC5hKP2rjRAkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 27 Jun 2026 05:59:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 183DC6D10F7
	for <lists+intel-gfx@lfdr.de>; Sat, 27 Jun 2026 05:59:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=YHWkSgRD;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A65FF10E444;
	Sat, 27 Jun 2026 03:59:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC1BA10E444;
 Sat, 27 Jun 2026 03:59:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782532757; x=1814068757;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AH6FeNt9dZaXYdw37p8X+AreX8E/XN6IGlSjX7my8HQ=;
 b=YHWkSgRD07wVX7qcNfmKaUtcUdsdIj4KrzGCpzoU0VE902SLBFN9gAfG
 n69Fb4pxMj89HlqKoSJWpkoikgYdExfwD9QoSPfod81gyrHz1IBbb9ykr
 WWjIdxFJeDsgz0llBFHVPZxoFD3FjDjXhx2TDuiJY9n60fsppm5M/Pi/v
 9HPPFIKXfRO+C+/7gVjVpoIV6Zab+Hzfbkp7OjoMvRBPfDIQmvkeSXdnU
 BDZVQ4y7UeLLromqWm4thRQP3etlo005YfoqktuuVinmU/9toK0AdyizB
 MzllwpHK6D4+pAVH1WiOcZm3mc7Nem6EymVtdXV/xu2aGgyI3+OQcn+R5 A==;
X-CSE-ConnectionGUID: 1AMhjnufTNKQCuKYS8VtuQ==
X-CSE-MsgGUID: SYwjb9jwR7a9cSB6RORkJA==
X-IronPort-AV: E=McAfee;i="6800,10657,11829"; a="83197801"
X-IronPort-AV: E=Sophos;i="6.24,227,1774335600"; d="scan'208";a="83197801"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2026 20:59:16 -0700
X-CSE-ConnectionGUID: SMjQK0n1SKuKagikabxnKA==
X-CSE-MsgGUID: 1A9kzmnHQHSjNBYKq86T9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,227,1774335600"; d="scan'208";a="255089904"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2026 20:59:16 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 26 Jun 2026 20:59:15 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 26 Jun 2026 20:59:15 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.35) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 26 Jun 2026 20:59:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JkV+AKG7ApJJtHEzGoY1XaSSEyZu0NnKGFQb+HFwlYoRWyfzHpePyHRgbolgHZ2/S1Dxaj3QWjWfQ9h5uk1DeAf9mWXc4rXCbUkTC0+2HktVYXDitaQ3P57waEeCBQyoKfLsFQPUozHsOtF3B5nvwB2UR4Sz5ODkgisfU1fWzTLjqW5lkhwKQ53mCs3cr1AeETlPc0/rA3WVNGrpF2IqmIEGphUbJPVNeL55XfwlmJ28QMGrAi6N0ctkPjutc/Jc5ZnJkNxw3JZAPFoHPAH9tYKeyUrtIcz678Q6kbkFonc5VXJNHSfe0DpUWathVeXXK+1qp/E6oWOT2u+P/2cv8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/jy+KwQWZTqs5Gvi6z2NCZ++IxkmFEMISVS4goTYUlU=;
 b=rODtW6Tsi1ND6ahgfcMjmkIskAJf/fb3kd9IjKzx0x/KGEv/SiTSitvWQ5BsWVVd93VLjlpOgagGNQifCfpsYi5VnLgK2rfgPLYMK+SQsl4J/KouXtQtwCezVtR4hD8rsk9SVyqbPyA+SaVrptUO/IHh97+tKjHpiT+SrvNMgUXvYA13qErEqzNCJrUBjt3tFsPNO9AfZMxs6xLGMEWqzWVNbQVFq32DAjF24kDkiW1MjaDaphAoe2aiLo96PeA6FTwopsV1MIAVJs1ck6QAEKWqe0tcRfdy/jDz7G9g/KiPwr76X+wdML7Lpa6SPR00wotmqSOZE1lUI3m+ZgusUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::5b) by SJ0PR11MB6695.namprd11.prod.outlook.com
 (2603:10b6:a03:44e::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.17; Sat, 27 Jun
 2026 03:59:07 +0000
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6]) by DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6%6]) with mapi id 15.21.0159.014; Sat, 27 Jun 2026
 03:59:07 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Hodo, Martin" <martin.hodo@intel.com>, "stable@vger.kernel.org"
 <stable@vger.kernel.org>, "Gupta, Anshuman" <anshuman.gupta@intel.com>
Subject: RE: [PATCH] drm/i915/hdcp: check streams[] bounds before overflow
Thread-Topic: [PATCH] drm/i915/hdcp: check streams[] bounds before overflow
Thread-Index: AQHdBMSO/AZvk7G4W0izKDEM0aHBg7ZRyO4A
Date: Sat, 27 Jun 2026 03:59:07 +0000
Message-ID: <DS4PPFE901A304F58021028E7F8F29EE9C7E3EA2@DS4PPFE901A304F.namprd11.prod.outlook.com>
References: <20260625170304.1104723-1-jani.nikula@intel.com>
In-Reply-To: <20260625170304.1104723-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPFE901A304F:EE_|SJ0PR11MB6695:EE_
x-ms-office365-filtering-correlation-id: 83295f48-a50c-4c3e-0e56-08ded4006fb8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|23010399003|1800799024|38070700021|18002099003|22082099003|56012099006|11063799006|6133799003;
x-microsoft-antispam-message-info: NdMd8chCGP46MjnEwPVzBSvYPFEdE0Ohikmh8/i1XFVPPv+KrrjaOC9fgOUxuCiPN+FQo98C//xV2lXqMpC21j7qCSrjufM/kDSBq9Ch4V1zgznsizZ5AYub6i/LDQDo8x6fQFGPl4pF9uvHyYEu6laRbSahEijPEcipDfoLfccs7HnADlyxZOjVqrzgAMpzX9RT0/quSbEcctxuvHWlyhYXrZAW0ys4W3OKQNcNhnvx5eFPycKutmaUnk+lv7UxmVDTnRGrlbuAbgjaBCIol4DFAMFzK/Vsehk4+88squ0HHgrhsMEmOVZLH1e9RI/prl9Muwq6pFdo6qd4BWXPNWqRRDVQcwd0hT7JvfxqniGCPek+hHQYDtjDQTxN7/VTjNdILREC+BWbC5kca2t6opoxY16uH7VSnAm7hq4LWcUJBXBgTlfeAHvERBQZKMUDIudCuaRRfEGC6LSdrTiNxjcmPFFOo5gsoSQmJjM1+YAZVuOwFWX8dAVevB9lN1WQde+EiZ3TYdinehIcwRw9pgAIrBZfksa/AmC5sWKILZAiJzNyZ7GD7Hfyv/JbanmpGZKXlVJ8hA5iCTBxdKW6tRK/9scbGqA02ngpsAzaSJQPfY4/ZW//XVxGvh8uc4eupF+FxNK/K7mMg28OQI28VeN34Vd72pNKTqwut7ln9264hTp34WuAyH6AGhucQhnVZw89Ekvz0p6IPaVOX0EEtia6kpbbavD6yEJl5ofIEig=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPFE901A304F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(23010399003)(1800799024)(38070700021)(18002099003)(22082099003)(56012099006)(11063799006)(6133799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?IUZxZyy0/BYwIaNBbXLexficOUi7OG/kuo2//mpTJ+NaKtM99eNda8LpqFFD?=
 =?us-ascii?Q?p1YcLLNSCuecSwM+0Lz+b7eCPekFUoG91h+NkEQLWqEhiNCR2TvxaYb1YdE0?=
 =?us-ascii?Q?56EicfwsTnLUvgM83pMH1r2C3GRZdrHlCVke26DbVnx9MueMxiOA5hQy+gqo?=
 =?us-ascii?Q?dMYpUFeC6VTVawYHOIph5HOZ1uwwTvz+3PyHQPJTeCH9Hb00xLvz9fDUIEYB?=
 =?us-ascii?Q?W619LlAcf26VZdOs6Fdkkdl0dGoTZ+TTHy7lh7oMLhlC4EXTTo7E8kFe3Ro5?=
 =?us-ascii?Q?BZOyZdL0Gkn77tNA2ZX1Qsy5s+SFyP8xOo0StURzYqJ2hN1nh4Z8i65c6B3J?=
 =?us-ascii?Q?XQLJgV4Zcfk246FdwhylkwFP76gTtSPhkyZlDc1QWDvvORsTTCZfDEqNPoa4?=
 =?us-ascii?Q?EvQ2hTwZJr+mWqnAjSs01fftKIcP8OKI8+WjW40WOYsBZNa1nrqi5Tw/6088?=
 =?us-ascii?Q?UK+wz+061fzY7+wyFmGBIOsRifacNfDbHmlLYLHJAX0aGTgKC7WGOwBTpDT/?=
 =?us-ascii?Q?PWe9nHKbYmu0oSLmHGHNO1DaWfx+HpM0bc+b3sXPCa6D2eyhpWTiEXs02MtC?=
 =?us-ascii?Q?VGh7Cjtm2NitopL7pyPJY3JXbsBUqtPkrPohzfgy8hkJczT0S9MuElLlV/LV?=
 =?us-ascii?Q?ueIIpoaGzPMtRRhJUVjRCI9qJbofSH8tWUtH1ULtleOVrWA909Slfg9VihJZ?=
 =?us-ascii?Q?8x6EPf4GadJsjL8P/oO6JdWk7SaRmLVs6jFPi0f7YILwjieaSxkIyphs8coE?=
 =?us-ascii?Q?rS9tekOczz5jDZunXrPeKgCWAx8WjbQc9I/Sa6uVN+zMWEIN/IW6h/KQMJue?=
 =?us-ascii?Q?Yvkr3Whlz0WZXOsPolSALXE4jL+X8/Q+eJPXJzwV9fq44+p0CLXARE9vdMiE?=
 =?us-ascii?Q?1hQUn3ZuAr5FVxk9VFXrEyfGhcn+d8SdZgL8G7ulb0/jVp1XvPVW4FQ83Ejp?=
 =?us-ascii?Q?MRB6hwsc4SX7flF1cf2nCDADvZlTZWwE7gOeIFFaddE2CEamui/vrnbLsEre?=
 =?us-ascii?Q?vMunBuWdg0YLMZSMrM3BFGV6oE77uA4HG+hbnYWczXgUqT5vq4RGKYZcrrth?=
 =?us-ascii?Q?aCrtSgdfyVBLnsbYl3A7tY5rnxCXVe0s3T4gB1cRE9yCwYFBv6CUqY1B6uFk?=
 =?us-ascii?Q?7ANX70P9QfoQxWfn/vf6Uua9n0mOS5PyyzrID9Ckt4fqqw42omYGATT3V/Cf?=
 =?us-ascii?Q?s/1h1NYfaOZ7p3XdeaP85Nvo7cLyqZkw9az4XH1vDfcNTLG4QhtoSuuZnrwW?=
 =?us-ascii?Q?54x3GQ0r+eLx65ur7bd+U36/T2n31htstDiexiEruIhFL5p9s2Qyxd1BY2hK?=
 =?us-ascii?Q?7UWfZapHU2XqrkIZOFX1aRxzOjI+liJthbYLSum8KlZXk+VKR0dNG98nL09B?=
 =?us-ascii?Q?GQ59ZToygmf94z2TwNtSYRLiQ+oDfbDjPbhcyruWzLtHZ69h0oDYSeFcx/Ag?=
 =?us-ascii?Q?01TTYdcSNkExl1aYJUVROWsPcT0J95DRGo+2K1D7CrRltxl0JFFOSNmlGgPK?=
 =?us-ascii?Q?EOlwynqpAN71N6gCS3Rphwak5Gd8sGdYDFSUifGpfeRPANc7hEXeHzguG3UX?=
 =?us-ascii?Q?54BfLIlBMAy7/PwvFDnIs3WkLDVkjxBKq9yrhjqR9NXiLla7lM3oAqBahuW/?=
 =?us-ascii?Q?7TcoU/eGYrmaeVntRtqwwCFMTk+HSXWgOdDHGzkLC++TULmr23xnQmIJj5SD?=
 =?us-ascii?Q?i2sI8X/o9U6dSTPNIHD2W3+fSbY7njV/ZQ9mE86Y1kydnYcAu6f8h+vGas5E?=
 =?us-ascii?Q?mW1Q8lssRQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Dre3PmnNJ3aVJ+MwjnDkw3yE/jBIWPGsIq+cB9480etGUAcj4wKoXeXAfUFvSoEa80H/SEFI6WBKXWmpVY+Xlgg0+vo3QJgdtHJwKSeIl/zILTgqsAOdSu6L2qP9Pog0QQPeZc8UG3coOv9N3ROVizWVYnuG7M8Q3GbtAHvZZ1ZK+OSybNgPMiB7PLFEHdhDLViXCBm0s0I+kea3oh5PclznoIFXRITZMSeMlEOQ00OSNVSPagtr6Gy0RMDJn50RFvj1LwwLg/zaW7Dg1PHyxXp9oRAebs+6gwiYv8VNTG38ZpTWOJBO/JkxgdmqXzHJbGN59u1w+boNasTgDpffBg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPFE901A304F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 83295f48-a50c-4c3e-0e56-08ded4006fb8
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jun 2026 03:59:07.2492 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8Rzyv7pXytNJQ1B58fMqR89zIBjCbj01wiBbTL5sfsdi1QcFj/XEAvxnqzGFiN0BKnTjEVPNab6oks3loHj8kA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6695
X-OriginatorOrg: intel.com
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
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:from_mime];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 183DC6D10F7

> Subject: [PATCH] drm/i915/hdcp: check streams[] bounds before overflow
>=20
> The data->streams[] overflow check is done after the buffer overflow has
> already happened. Move the overflow check before the write.
>=20
> Side note, emitting a warning splat with a backtrace might be overkill he=
re, but
> prefer not changing the behaviour other than not doing the overrun.
>=20
> Discovered using AI-assisted static analysis confirmed by Intel Product S=
ecurity.
>=20
> Reported-by: Martin Hodo <martin.hodo@intel.com>
> Fixes: e03187e12cae ("drm/i915/hdcp: MST streams support in hdcp
> port_data")
> Cc: <stable@vger.kernel.org> # v5.12+
> Cc: Anshuman Gupta <anshuman.gupta@intel.com>
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index e88fec24af49..521786a75c42 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -145,6 +145,9 @@ intel_hdcp_required_content_stream(struct
> intel_atomic_state *state,
>  		if (!new_conn_state || !new_conn_state->crtc)
>  			continue;
>=20
> +		if (drm_WARN_ON(display->drm, data->k >=3D
> INTEL_NUM_PIPES(display)))
> +			return -EINVAL;
> +
>  		data->streams[data->k].stream_id =3D
>  			intel_conn_to_vcpi(state, connector);
>  		data->k++;
> @@ -155,7 +158,7 @@ intel_hdcp_required_content_stream(struct
> intel_atomic_state *state,
>  	}
>  	drm_connector_list_iter_end(&conn_iter);
>=20
> -	if (drm_WARN_ON(display->drm, data->k > INTEL_NUM_PIPES(display)
> || data->k =3D=3D 0))
> +	if (drm_WARN_ON(display->drm, !data->k))
>  		return -EINVAL;
>=20
>  	/*
> --
> 2.47.3

