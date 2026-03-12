Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mDF1DMtfsmlmMAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 07:40:11 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D55AF26DFCC
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 07:40:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D36010E97B;
	Thu, 12 Mar 2026 06:40:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KipUtO+Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C251810E969;
 Thu, 12 Mar 2026 06:40:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773297605; x=1804833605;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=dQiMQhC9Dv13s7kVo8LmpWteCkKhra4PAcLDS3KpeRQ=;
 b=KipUtO+ZTq5YCBDGB2BHdBi2a0bL7PuITEGM3TPZRDab7c57pGN6+B5o
 4Zav03mGwp7QtV+lvAis06Y5mbNjFZ7Fu3808ChLZyGe++vRO+OKJDxYz
 docFz5JwO0WXoOMPizgRvyVQEyPtCf7rLXGyiKFMVeAqMlnqWYAEpAr1Y
 lEVuSp3RPbttuHqNWjQA0liRoN/RwRA+FIRd2FOdbpf0kcOrdG1EGohE6
 lCc/bWZ66l8xF04e0Hzvd0HWRgfwV6ZxhzswShj3PtJlMlr0QM9yFByfw
 MJZc96w455C0TTiNg9RQ+ziUyqaA2cG6MbY1kj5iYkGXl7HQZKPlL9tov A==;
X-CSE-ConnectionGUID: yHOd85xYSeCkO+bVNv0GQg==
X-CSE-MsgGUID: AUAeSOfiT4uHBw8PM5a1+Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="77984834"
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="77984834"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 23:40:04 -0700
X-CSE-ConnectionGUID: r+JtVFZSQxmSiXWfn+hgIQ==
X-CSE-MsgGUID: hzOPbjDDRiaBFCNfmSCa2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="258624754"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 23:40:04 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 23:40:03 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 11 Mar 2026 23:40:03 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.67) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 23:40:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QXjDd3lHBVwFg/EcnJWfG4URB4CHQ+o36o9rF+G3w2krllD8TB8gqXuP0gz9nvOsdcCr3QENxIkKqVS6vbFgj3v8m75MhzVoiI/2LgZ9Pdz12ZPv1b3vWcGUQ1lT2J0mdOqcz+Bn5gS95hIabaszZx5vlV647NRelKZAMrHYmkBYPwpbowf1if4itLrd0tEFdpr51RgQxcgoZng4hVQG4S1A81e0TPWpcQhTx8sOPw2ego28OfmTjhmQSfZaWAQVHIsOAWsx9oztmoI7+CxuLY4SxEbEyllKyJVSAI1EyBaQf0vxi2U667dFUCtHUF+zIDQoTwGuJLm4cirV1RhyTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dQiMQhC9Dv13s7kVo8LmpWteCkKhra4PAcLDS3KpeRQ=;
 b=MFhrPqlp/HG/ftueJFYKmBsYc+mV2ONiv8ndck+8iTHcmOsnT0fFSJGc/pg5P9Vul9BcSFGfDXbyS6d3ibb3wz9UdsfoVFs6pUHriPKHFsDJFzXgCbzYFckeicDBQXRVvEh00Um7yZqLkFhbadk08sV12D9PGdgBJlreDpKSuA+V6L/Aum1Fj3ObjxTi8u5JiobB6/rsAQKx/FOo/LcjdtizIAsoT917SV+UyThrELrv9FxBLaRwJu1cKeESICCVMEUztcFrrhOyDX2ZnQ5iLCz8/GyXTJfOutY/6ubQp9TRm9HJNWPbaEHCeS3nJoFreNmqv3DYVLnKtvDgX3LIAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ0PR11MB5070.namprd11.prod.outlook.com (2603:10b6:a03:2d5::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.11; Thu, 12 Mar
 2026 06:40:00 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.20.9723.004; Thu, 12 Mar 2026
 06:40:00 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "Manna,
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "Deak, Imre" <imre.deak@intel.com>
Subject: Re: [PATCH v7 1/3] drm/i915/display: Add drm helper to check pr
 optimization support
Thread-Topic: [PATCH v7 1/3] drm/i915/display: Add drm helper to check pr
 optimization support
Thread-Index: AQHcseG0p8xVpV7m/kKUIydD8CFstbWqclMA
Date: Thu, 12 Mar 2026 06:40:00 +0000
Message-ID: <2c5fab038a854604d8009bd94c27106933f750ed.camel@intel.com>
References: <20260312050035.3493690-1-animesh.manna@intel.com>
 <20260312050035.3493690-2-animesh.manna@intel.com>
In-Reply-To: <20260312050035.3493690-2-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SJ0PR11MB5070:EE_
x-ms-office365-filtering-correlation-id: c7a4a07b-53fc-4a05-6570-08de80022f2d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|10070799003|376014|38070700021|56012099003|22082099003|18002099003;
x-microsoft-antispam-message-info: eam9v/xOoQKyH4ibAaH57POpqC7o6Da3nMnPGZEL8a8EBSp9oNEWrg6iv25lJv2zwsxTzxBMLjdQ1px2wGAdVfaooxqF6FtNJo3EliKfqo8lMwWfp42/xGuasyyi5ZthMABOCF7XeQ/zXuxb3JGaDfA+qqpxcrj6Wm2WzzvJf1zciMEWzzHxQdy/rHsNRJQ/t0uFJJq/AUGRTU4MjcNrEIDUtAhTqQdqXTw95BbkFLE1JzMKzsl/8bHky/4dR+sjmgMTXfAkLSfYDYujqoD8RFdo5obP/UmM7IKSQ53jVzu3UEJOzQ+7F9Gh1i2kZy8mY+KJHg/wMVd8u6zIBLORAMtcDWYgoLHXVS1ZrSY9Rx0vhCjgWtEROqH4mAUBWu9uDZyY1dx53JIcffFsGK2+PaIyvw1bMJ9swA9RNR5vvJzynuiETqqpl589hrh4cfmCTQnkEGocVj+zbhlwFykdxVhSIZGzz+sXh4lrbrB72BY58kkXPWu/vfdxpCvfSKuVxE37MZ3OUzTmtn4jU7AuT3IjYP8rG5oIBAzzEn6FW8zvCeGvMJXWXD7vIJVmzkqr/HSqu2TWi2ylwfmaQu0qxBth+BUBKnSdDnzzI3Am/GYxqaKIlmsD3uF90UU0mT7Flmq92jgZB3XDnAGyUgbx8hiOA+31ojxgcGsSqMGe8WrLHJgRcuHDu4VvesYh2IGTynu++WiXzKEMfHWpymwRUGciLTYkbp9Q5Ofg0cbi9IMu9TpzGr0f85/qJABqA9uD3D268imyJL/XDP1awKLZA03GoqMfEpaG+IziukVYJV0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(10070799003)(376014)(38070700021)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NkZOdHI2NjYzaWw5cERVME9uNDlXSXh2REhxNFhoT1RKd0xXclcrVE9rNFJr?=
 =?utf-8?B?azUrdG5McmhuZ0QzZDZFamR6c3pDclJsZC9aZGpjNXcwWlQ5d2Rzd0hBMjJr?=
 =?utf-8?B?TG1DQlllb3UxMllEdEZiL0IyV3F5UlJBYzhURVdwaWo2MnQ3bHlZRStHRmNr?=
 =?utf-8?B?UmZVWlRBVG5ZMm1lbFBsdGtMQy8yYkx4d1cvcW9TaTF0WmlqbEdwQXpHMDFB?=
 =?utf-8?B?UCthMHorWDVtciszbE5VRHR0amNFbEI4ZkN1TnIzRjhJY0M4K0txZHdWNG1j?=
 =?utf-8?B?aWVjWW15cnhhTyt1SENXUVZrTk41azZXM29sRU5UZ0RQanNtaTZWMVpobS9z?=
 =?utf-8?B?SUpOQ045bk10M0c4TVFiOXlMQlptdklRWWN6clVUeGVueVZPM3VHZTZEcU9I?=
 =?utf-8?B?NmkrVGRwc1gyVktNRUZtcHJudWw1UVpNTm9Ja0FlRm5RTm9ISW54elo3TmVm?=
 =?utf-8?B?Wk9lQnNhSFNyWG1acUUrYlMwdTZpZFYvMTNaTXJBcC9RRXhqVGxwYmVKT096?=
 =?utf-8?B?NGs1WUxacGNYSmxGSGFZK2czVG45UnhXK3ZnRGZFR2lrOGdOTDRnTHlRM2ZY?=
 =?utf-8?B?dlA4ZDRwNkpTMzVPTzV3U0k1YXk5MU9yY2s4RUNzczBpRFNHZHlpTCtxQlM1?=
 =?utf-8?B?eE5uVVFuWEV4MFB6NWt2bFZENnQrSVNzZVoyS21lQ0o1R3h1Y2J4NXBWQ3Nt?=
 =?utf-8?B?OGErbjlQNjRyNnRlRHlGZGNXQnFiS1d1aUlVancranBaaFUwMGxHc1NSV1pU?=
 =?utf-8?B?SFY3TEdKLzhOZFBOT1FBemZGTHhOaE94K1V2eWMwd25JalRnWUcrVHRoYmh5?=
 =?utf-8?B?aExaSjJTV0hvU0hXZkRPdCtoZDVFcXVqZktKZEd5alBENnphSlZhK0FqZU5s?=
 =?utf-8?B?RHVMd3pPblpRWHZTOExaMFgrOW1lcmxnT2pxODJsS3NMeE5RdXF3S0dtSnQ5?=
 =?utf-8?B?MXBUZW8rWHA3WlgxdGtEbENUS1FXYm42Q2xrQWZlZjU3U0FMaXE0Q1RLR0xi?=
 =?utf-8?B?eDJPMHY3bCs2bTFZa2lnMUZPS2h6a2FNRXlMRWtqdytEY1VRc1dJaVMzL3Ex?=
 =?utf-8?B?aFhCT2FrTzlEV3ppU1Nhdm5XVUptL3M3a1BMMzZXQ1hpN1ZRVmlSNnRWUXIv?=
 =?utf-8?B?NVhtVVR6N2lyNU1OSG5hSVBEcmNPbWZKeWU4RERPeTFTSFR2d2RDZzdKblht?=
 =?utf-8?B?cDdnNUlXYkpXTHE1NXplRXNpRjdQNnJrNGovQ0lUMElmbTRMTGhGUkhIMHk1?=
 =?utf-8?B?K1Q0QkRuMmFvSlhXQjVmenBoTS9sVHRFUE9OeFlRbUVYUUxYcFY2d24yOVhk?=
 =?utf-8?B?Q2thaXNLQ0hlbkVsaytBSUxDYklRd2gwa0dFWk9JWXdiQndrY25rY0h0ejVR?=
 =?utf-8?B?amErZEdrMGpFcGdndGk4OGkxSDBzVFdKNms1R0JKVUpJSkJwLytYbTRwRTRq?=
 =?utf-8?B?SmJDemFjdzFDbVhYSHdIZnM1R0tMdkdOaGFzejQ0Tm9vb3R1bXp1c2ZTT29y?=
 =?utf-8?B?NlNsTTN3TC8wNVlKR0pTbmR5QU9zd1BYUGY1TkF6RzMwUk51eDdHcHFaZTdy?=
 =?utf-8?B?ZkpYNHRQSHU0ai9tcUUwU3I1ZTNPaGlIaTZuRk1mQk5sbkU0YUV6aEFFSEta?=
 =?utf-8?B?a1BxbjFFZGFQS0R5WFJtbW5scWYwdytXTW9kcFBvdjlXV2VNZ0RZT0M3QjVo?=
 =?utf-8?B?NThZYWNURTViZHRPVnNYTXFkcGN2cVhsZ1ZwY0VOT29OVmZiM0FZcGRYMmxL?=
 =?utf-8?B?U3ZhZXJlcnE2ZDlMaGtQMmxIZ29FZEdzYWxqOENJTmdwRnlmN1liSytOaGtX?=
 =?utf-8?B?b2tDekdhZTVvOUltMnI1TmhoeVNKTEhsaEplZEpaUEJiNWRobDlWeVJheTl4?=
 =?utf-8?B?ejZvejZndXJCSVJvaDVpRk9uUTFOWWhxN0NvQVN3UElHeVBqSjRydThpcTg3?=
 =?utf-8?B?THBBSDhYV0ZPNmoxM2lpSUhPc2NINzBiNG9hWHhyakdJS3VvSXY1MEZ0N1VY?=
 =?utf-8?B?YkM3aStQS1BHUTNBUG95STBNRy9qMUllaFpQcnU5NjQ4ZGdYc3NFUjIzcDhH?=
 =?utf-8?B?L3hTWmhySmw2MW9wbHFuWkFVbkxtdGQxc3Z0UjdRZHQwcFA2OW55cy9BMTdy?=
 =?utf-8?B?WWpFdW5Oa0U4K1d1cXpHTE9USW5MakJJKy9Uc1ZBT2YyYXMvS01DbDQ5SFVQ?=
 =?utf-8?B?MjBGbk8rcy9xdHYxSkhNdGFLMkx0S3krQlBUam1FZ29CODYvcHh2SUN6MUcx?=
 =?utf-8?B?QUJPdkdJbW9hOXp0VURZam9NcnNoSm1GUlk0LzAwMzlDc3I5M042dkFxdXli?=
 =?utf-8?B?eks4V3AwL1ppRzdQV2Vxa2JjbHNsaTM2bENGYXlhNFRPSGd5czFsam1MT1ZM?=
 =?utf-8?Q?tg1PKAtbP2N+AvR/strb9N3BpL3ii7frso4xwKwgdImZ7?=
x-ms-exchange-antispam-messagedata-1: WwcKb9wgHhpxOePVKyjd4jM+aKy+s20FyTM=
Content-Type: text/plain; charset="utf-8"
Content-ID: <C5F42D4E56ADB14EB2F560DB6E7B8141@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: P+owNrDyIMtuei51Tp5WIPTK2sp1kt1M3YVdinUGQ3RhFxfNSas3WXXVMqQEksq6yKWJ4gB7zm0CQjPJuiTpDEzyfMsLRcGwERBTKLEufp8yS7KINqvQy2idsrLcciO5n2Ba+l5yFRSBeZkED79meJiPCmFTOaobkU3XAxw5jrwXcn8SB/it2OBicNv+OvuQdAOAPCn+Z/oZYqam7AgLrUUIXBSJYa7sL7V9LUAGK0GALDIgvvLdz1q2lnKdAkPG81w9yMaLlrsgUT3RWIKoUSpdeu4uBi/j3ZU3AtIcMpRIk41JPuyjWcN8Pkh3x9ueo9BqBeIZG13370ncJ3jxgA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c7a4a07b-53fc-4a05-6570-08de80022f2d
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2026 06:40:00.2501 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tMJjJ1gzixq0N5VQ8lac63C75GK0Z4kq7XQCGdG7rkrDuYO5+Zm5EB8h1QhzXr99lin/emuyUGD3B091xcSLdtFv1iH0fkd+O4mN34jjHhw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5070
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
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: D55AF26DFCC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVGh1LCAyMDI2LTAzLTEyIGF0IDEwOjMwICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOg0K
PiBBZGQgYXBpIHRvIGNoZWNrIHBhbmVsIHJlcGxheSBvcHRpbWl6YXRpb24gc3VwcG9ydGVkIG9y
IG5vdCB0bw0KPiBkcm0tY29yZSBEUCB0dW5uZWxpbmcgZnJhbWV3b3JrIHdoaWNoIGNhbiBiZSB1
c2VkIGJ5IG90aGVyIGRyaXZlcg0KPiBhcyB3ZWxsLg0KPiANCj4gU3VnZ2VzdGVkLWJ5OiBJbXJl
IERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEFuaW1lc2ggTWFu
bmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0v
ZGlzcGxheS9kcm1fZHBfdHVubmVsLmPCoMKgwqDCoMKgwqDCoCB8IDE3DQo+ICsrKysrKysrKysr
KysrKysrDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF90dW5uZWwu
YyB8IDE0ICsrKysrKysrKysrKysrDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcF90dW5uZWwuaCB8wqAgNiArKysrKysNCj4gwqBpbmNsdWRlL2RybS9kaXNwbGF5L2Ry
bV9kcF90dW5uZWwuaMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDYgKysrKysrDQo+IMKgNCBm
aWxlcyBjaGFuZ2VkLCA0MyBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2Rpc3BsYXkvZHJtX2RwX3R1bm5lbC5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2Rp
c3BsYXkvZHJtX2RwX3R1bm5lbC5jDQo+IGluZGV4IGY0NDI0MzBkOGRlNy4uMzljMDdjYjQxMjNi
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vZGlzcGxheS9kcm1fZHBfdHVubmVsLmMN
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2Rpc3BsYXkvZHJtX2RwX3R1bm5lbC5jDQo+IEBAIC0x
NDksNiArMTQ5LDcgQEAgc3RydWN0IGRybV9kcF90dW5uZWwgew0KPiDCoAlib29sIGJ3X2FsbG9j
X2VuYWJsZWQ6MTsNCj4gwqAJYm9vbCBoYXNfaW9fZXJyb3I6MTsNCj4gwqAJYm9vbCBkZXN0cm95
ZWQ6MTsNCj4gKwlib29sIHByX29wdGltaXphdGlvbl9zdXBwb3J0OjE7DQo+IMKgfTsNCj4gwqAN
Cj4gwqBzdHJ1Y3QgZHJtX2RwX3R1bm5lbF9ncm91cF9zdGF0ZTsNCj4gQEAgLTUwOCw2ICs1MDks
OCBAQCBjcmVhdGVfdHVubmVsKHN0cnVjdCBkcm1fZHBfdHVubmVsX21nciAqbWdyLA0KPiDCoA0K
PiDCoAl0dW5uZWwtPmJ3X2FsbG9jX3N1cHBvcnRlZCA9DQo+IHR1bm5lbF9yZWdfYndfYWxsb2Nf
c3VwcG9ydGVkKHJlZ3MpOw0KPiDCoAl0dW5uZWwtPmJ3X2FsbG9jX2VuYWJsZWQgPQ0KPiB0dW5u
ZWxfcmVnX2J3X2FsbG9jX2VuYWJsZWQocmVncyk7DQo+ICsJdHVubmVsLT5wcl9vcHRpbWl6YXRp
b25fc3VwcG9ydCA9IHR1bm5lbF9yZWcocmVncywNCj4gRFBfVFVOTkVMSU5HX0NBUEFCSUxJVElF
UykgJg0KPiArCQkJCQnCoA0KPiBEUF9QQU5FTF9SRVBMQVlfT1BUSU1JWkFUSU9OX1NVUFBPUlQ7
DQo+IMKgDQo+IMKgCWlmICghYWRkX3R1bm5lbF90b19ncm91cChtZ3IsIGRydl9ncm91cF9pZCwg
dHVubmVsKSkgew0KPiDCoAkJa2ZyZWUodHVubmVsKTsNCj4gQEAgLTEwMzYsNiArMTAzOSwyMCBA
QCBib29sIGRybV9kcF90dW5uZWxfYndfYWxsb2NfaXNfZW5hYmxlZChjb25zdA0KPiBzdHJ1Y3Qg
ZHJtX2RwX3R1bm5lbCAqdHVubmVsKQ0KPiDCoH0NCj4gwqBFWFBPUlRfU1lNQk9MKGRybV9kcF90
dW5uZWxfYndfYWxsb2NfaXNfZW5hYmxlZCk7DQo+IMKgDQo+ICsvKioNCj4gKyAqIGRybV9kcF90
dW5uZWxfcHJfb3B0aW1pemF0aW9uX3N1cHBvcnRlZCAtIFF1ZXJ5IHRoZSBQUiBCVw0KPiBvcHRp
bWl6YXRpb24gc3VwcG9ydA0KPiArICogQHR1bm5lbDogVHVubmVsIG9iamVjdA0KPiArICoNCj4g
KyAqIFF1ZXJ5IGlmIHRoZSBQUiBCVyBvcHRpbWl6YXRpb24gaXMgc3VwcG9ydGVkIGZvciBAdHVu
bmVsLg0KPiArICoNCj4gKyAqIFJldHVybnMgJXRydWUgaWYgdGhlIFBSIEJXIG9wdGltaWF0aW9u
IGlzIHN1cHBvcnRlZCBmb3IgQHR1bm5lbC4NCj4gKyAqLw0KPiArYm9vbCBkcm1fZHBfdHVubmVs
X3ByX29wdGltaXphdGlvbl9zdXBwb3J0ZWQoY29uc3Qgc3RydWN0DQo+IGRybV9kcF90dW5uZWwg
KnR1bm5lbCkNCj4gK3sNCj4gKwlyZXR1cm4gdHVubmVsICYmIHR1bm5lbC0+cHJfb3B0aW1pemF0
aW9uX3N1cHBvcnQ7DQo+ICt9DQo+ICtFWFBPUlRfU1lNQk9MKGRybV9kcF90dW5uZWxfcHJfb3B0
aW1pemF0aW9uX3N1cHBvcnRlZCk7DQo+ICsNCj4gwqBzdGF0aWMgaW50IGNsZWFyX2J3X3JlcV9z
dGF0ZShzdHJ1Y3QgZHJtX2RwX2F1eCAqYXV4KQ0KPiDCoHsNCj4gwqAJdTggYndfcmVxX21hc2sg
PSBEUF9CV19SRVFVRVNUX1NVQ0NFRURFRCB8DQo+IERQX0JXX1JFUVVFU1RfRkFJTEVEOw0KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF90dW5uZWwu
Yw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfdHVubmVsLmMNCj4g
aW5kZXggMWZkMWFjOGQ1NTZkLi4wNzVhZWE5ZDZlZGUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfdHVubmVsLmMNCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF90dW5uZWwuYw0KPiBAQCAtMjk2LDYgKzI5Niwy
MCBAQCBib29sIGludGVsX2RwX3R1bm5lbF9id19hbGxvY19pc19lbmFibGVkKHN0cnVjdA0KPiBp
bnRlbF9kcCAqaW50ZWxfZHApDQo+IMKgCXJldHVybiBkcm1fZHBfdHVubmVsX2J3X2FsbG9jX2lz
X2VuYWJsZWQoaW50ZWxfZHAtPnR1bm5lbCk7DQo+IMKgfQ0KPiDCoA0KPiArLyoqDQo+ICsgKiBp
bnRlbF9kcF90dW5uZWxfcHJfb3B0aW1pemF0aW9uX3N1cHBvcnRlZCAtIFF1ZXJ5IHRoZSBQUiBC
Vw0KPiBvcHRpbWl6YXRpb24gc3VwcG9ydA0KPiArICogQGludGVsX2RwOiBEUCBwb3J0IG9iamVj
dA0KPiArICoNCj4gKyAqIFF1ZXJ5IHdoZXRoZXIgYSBEUCB0dW5uZWwgaXMgY29ubmVjdGVkIG9u
IEBpbnRlbF9kcCBhbmQgdGhlDQo+IHR1bm5lbCBzdXBwb3J0cw0KPiArICogdGhlIFBSIEJXIG9w
dGltaXphdGlvbi4NCg0KSG93IHRoaXMgaXMgY2hlY2tpbmcgaWYgRFAgdHVubmVsIGlzIGNvbm5l
Y3RlZD8gVG8gbWUgaXQgbG9va3MgbGlrZSBpdA0KaXMganVzdCBjaGVja2luZyBpZiBQUiBCVyBv
cHRpbWl6YXRpb24gaXMgc3VwcG9ydGVkLg0KDQo+ICsgKg0KPiArICogUmV0dXJucyAldHJ1ZSBp
ZiB0aGUgQlcgYWxsb2NhdGlvbiBtb2RlIGlzIHN1cHBvcnRlZCBvbg0KPiBAaW50ZWxfZHAuDQo+
ICsgKi8NCj4gK2Jvb2wgaW50ZWxfZHBfdHVubmVsX3ByX29wdGltaXphdGlvbl9zdXBwb3J0ZWQo
c3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCkNCj4gK3sNCj4gKwlyZXR1cm4gZHJtX2RwX3R1
bm5lbF9wcl9vcHRpbWl6YXRpb25fc3VwcG9ydGVkKGludGVsX2RwLQ0KPiA+dHVubmVsKTsNCj4g
K30NCg0KSSB3b3VsZCBndWVzcyBpdCBpcyBub3Qgb2sgdG8gbWl4IEludGVsIHNwZWNpZmljIGFu
ZCBnZW5lcmljIGRybQ0KY2hhbmdlcyBpbnRvIG9uZSBwYXRjaC4NCg0KTWF5YmUgeW91IGNvdWxk
IGFkZDoNCg0KaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpIDwgMzUpDQoJcmV0dXJuIGZhbHNlOw0K
DQppbnRvIGhlcmU/IE90aGVyd2lzZSB5b3UgbmVlZCB0byBtb2RpZnkgY2hlY2sgaW4gcGF0Y2gg
MyBhczoNCg0KaWYgKGludGVsX2RwX3R1bm5lbF9id19hbGxvY19pc19lbmFibGVkKGludGVsX2Rw
KSAmJg0KICAgIChESVNQTEFZX1ZFUihkaXNwbGF5KSA8IDM1IHx8DQogICAgICFpbnRlbF9kcF90
dW5uZWxfcHJfb3B0aW1pemF0aW9uX3N1cHBvcnRlZChpbnRlbF9kcCkpKQ0KICAgIA0KCcKgIMKg
QlIsDQpKb3VuaSBIw7ZnYW5kZXINCg0KPiArDQo+IMKgLyoqDQo+IMKgICogaW50ZWxfZHBfdHVu
bmVsX3N1c3BlbmQgLSBTdXNwZW5kIGEgRFAgdHVubmVsIGNvbm5lY3RlZCBvbiBhIHBvcnQNCj4g
wqAgKiBAaW50ZWxfZHA6IERQIHBvcnQgb2JqZWN0DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX3R1bm5lbC5oDQo+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcF90dW5uZWwuaA0KPiBpbmRleCA3ZjBmNzIwZThkY2EuLjAz
ZTE0NzczNmI2NSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcF90dW5uZWwuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwX3R1bm5lbC5oDQo+IEBAIC0zMiw2ICszMiw3IEBAIHZvaWQgaW50ZWxfZHBfdHVubmVs
X3Jlc3VtZShzdHJ1Y3QgaW50ZWxfZHANCj4gKmludGVsX2RwLA0KPiDCoHZvaWQgaW50ZWxfZHBf
dHVubmVsX3N1c3BlbmQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCk7DQo+IMKgDQo+IMKgYm9v
bCBpbnRlbF9kcF90dW5uZWxfYndfYWxsb2NfaXNfZW5hYmxlZChzdHJ1Y3QgaW50ZWxfZHAgKmlu
dGVsX2RwKTsNCj4gK2Jvb2wgaW50ZWxfZHBfdHVubmVsX3ByX29wdGltaXphdGlvbl9zdXBwb3J0
ZWQoc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCk7DQo+IMKgDQo+IMKgdm9pZA0KPiDCoGlu
dGVsX2RwX3R1bm5lbF9hdG9taWNfY2xlYW51cF9pbmhlcml0ZWRfc3RhdGUoc3RydWN0DQo+IGlu
dGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpOw0KPiBAQCAtNzYsNiArNzcsMTEgQEAgc3RhdGljIGlu
bGluZSBib29sDQo+IGludGVsX2RwX3R1bm5lbF9id19hbGxvY19pc19lbmFibGVkKHN0cnVjdCBp
bnRlbF9kcCAqaW50ZWxfZHANCj4gwqAJcmV0dXJuIGZhbHNlOw0KPiDCoH0NCj4gwqANCj4gK3N0
YXRpYyBpbmxpbmUgYm9vbCBpbnRlbF9kcF90dW5uZWxfcHJfb3B0aW1pemF0aW9uX3N1cHBvcnRl
ZChzdHJ1Y3QNCj4gaW50ZWxfZHAgKmludGVsX2RwKQ0KPiArew0KPiArCXJldHVybiBmYWxzZTsN
Cj4gK30NCj4gKw0KPiDCoHN0YXRpYyBpbmxpbmUgdm9pZA0KPiDCoGludGVsX2RwX3R1bm5lbF9h
dG9taWNfY2xlYW51cF9pbmhlcml0ZWRfc3RhdGUoc3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0
ZSAqc3RhdGUpIHt9DQo+IMKgDQo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kaXNwbGF5L2Ry
bV9kcF90dW5uZWwuaA0KPiBiL2luY2x1ZGUvZHJtL2Rpc3BsYXkvZHJtX2RwX3R1bm5lbC5oDQo+
IGluZGV4IDg3MjEyYzg0NzkxNS4uNGFhM2NlOWZkODI5IDEwMDY0NA0KPiAtLS0gYS9pbmNsdWRl
L2RybS9kaXNwbGF5L2RybV9kcF90dW5uZWwuaA0KPiArKysgYi9pbmNsdWRlL2RybS9kaXNwbGF5
L2RybV9kcF90dW5uZWwuaA0KPiBAQCAtNTMsNiArNTMsNyBAQCBpbnQgZHJtX2RwX3R1bm5lbF9k
ZXN0cm95KHN0cnVjdCBkcm1fZHBfdHVubmVsDQo+ICp0dW5uZWwpOw0KPiDCoGludCBkcm1fZHBf
dHVubmVsX2VuYWJsZV9id19hbGxvYyhzdHJ1Y3QgZHJtX2RwX3R1bm5lbCAqdHVubmVsKTsNCj4g
wqBpbnQgZHJtX2RwX3R1bm5lbF9kaXNhYmxlX2J3X2FsbG9jKHN0cnVjdCBkcm1fZHBfdHVubmVs
ICp0dW5uZWwpOw0KPiDCoGJvb2wgZHJtX2RwX3R1bm5lbF9id19hbGxvY19pc19lbmFibGVkKGNv
bnN0IHN0cnVjdCBkcm1fZHBfdHVubmVsDQo+ICp0dW5uZWwpOw0KPiArYm9vbCBkcm1fZHBfdHVu
bmVsX3ByX29wdGltaXphdGlvbl9zdXBwb3J0ZWQoY29uc3Qgc3RydWN0DQo+IGRybV9kcF90dW5u
ZWwgKnR1bm5lbCk7DQo+IMKgaW50IGRybV9kcF90dW5uZWxfYWxsb2NfYncoc3RydWN0IGRybV9k
cF90dW5uZWwgKnR1bm5lbCwgaW50IGJ3KTsNCj4gwqBpbnQgZHJtX2RwX3R1bm5lbF9nZXRfYWxs
b2NhdGVkX2J3KHN0cnVjdCBkcm1fZHBfdHVubmVsICp0dW5uZWwpOw0KPiDCoGludCBkcm1fZHBf
dHVubmVsX3VwZGF0ZV9zdGF0ZShzdHJ1Y3QgZHJtX2RwX3R1bm5lbCAqdHVubmVsKTsNCj4gQEAg
LTE0MCw2ICsxNDEsMTEgQEAgc3RhdGljIGlubGluZSBib29sDQo+IGRybV9kcF90dW5uZWxfYndf
YWxsb2NfaXNfZW5hYmxlZChjb25zdCBzdHJ1Y3QgZHJtX2RwX3R1bm5lbA0KPiDCoAlyZXR1cm4g
ZmFsc2U7DQo+IMKgfQ0KPiDCoA0KPiArc3RhdGljIGlubGluZSBib29sIGRybV9kcF90dW5uZWxf
cHJfb3B0aW1pemF0aW9uX3N1cHBvcnRlZChjb25zdA0KPiBzdHJ1Y3QgZHJtX2RwX3R1bm5lbCAq
dHVubmVsKQ0KPiArew0KPiArCXJldHVybiBmYWxzZTsNCj4gK30NCj4gKw0KPiDCoHN0YXRpYyBp
bmxpbmUgaW50DQo+IMKgZHJtX2RwX3R1bm5lbF9hbGxvY19idyhzdHJ1Y3QgZHJtX2RwX3R1bm5l
bCAqdHVubmVsLCBpbnQgYncpDQo+IMKgew0KDQo=
