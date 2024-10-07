Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4F79993872
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2024 22:43:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D345310E422;
	Mon,  7 Oct 2024 20:43:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kCQxl34B";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CB7910E424;
 Mon,  7 Oct 2024 20:43:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728333817; x=1759869817;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Bu5lzxMTHuuUh4d1L/vajsXPevzX9vaApyXCQ6lS19U=;
 b=kCQxl34Bat1nN7Mx4cT9Q10cJp33GIOpq8Yc3WLtg6fryz6ws0rBWHvg
 zazEtG4r61kh9RGqyL3APSi8NYC0soHpU4gnZ95oD8EdhM2NK71Vrfk+r
 2ckwGxUK/2qSa3nDgCakDA/RVvWYG4Diml8Lk8k/E0OR8AUpuMqrIGm4X
 vQSCzK8MopefT/8Yk1d/MP7BsJ9IRN0+NDN7lWZGllBb6cEhlHD8kF8H5
 j76tMlia9DLpOFybnuI5D24oW99NnCX3X62qpW+2bRXX9YZ5mwbcZaXeA
 B6/LwOgf7U2+MuAG4q+b/0iPTaSO3qjGUHTjPJyMuw3BV+IKD02SuJ+R4 w==;
X-CSE-ConnectionGUID: G0g0/mFNRE6PjSF1prR+4Q==
X-CSE-MsgGUID: YlGMgSIyQKaQc/KlKbkXmw==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="26961432"
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="26961432"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2024 13:43:36 -0700
X-CSE-ConnectionGUID: rTP2GhFyTkSGU+Mtof0ZWg==
X-CSE-MsgGUID: A8apda4JQjGEyiOp81wRdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="75850701"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Oct 2024 13:43:36 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 13:43:35 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 7 Oct 2024 13:43:35 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.46) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 7 Oct 2024 13:43:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Bvo78NXNhBR7wMi5DbEqMbm6GR74nnsQP/k6Kc7HPWpUQKaMMgzOn06OprXLQDKl52IHpcmFanHXsLLjmFNOH/f8o6+oJ+bcfGF5mGUUb0Jat21T2HRR3dIr34S4sHKMwb0XXYD0AY26fYImK1AuFu6a+w1pZr7rJVaR/cEP820ut9XHiqUaJv33uXy4p9+13nBJlz09EDwTkHUtTknk5vNWIDpDPKkQX7W4eqN8bDkmE+MSOGFLDfG/w21Txa4WyKVqSuRu3Nzm1Hos5qGY1O8EKBL4PBiXJp7YMmXmjVb0WYaypFlFO6kF+VQdEKaYLe0XMe7j/R34ZurMeU7jcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=55ds5bLp6DNu4UoOZbtLCT+rhTX21H5jUwi0wjmStMY=;
 b=emiZzpJG/aXvatXRPZLTHvIVkU1LimcyCDpbPTXToo6L0cHHphlmj2zhBB3gjr0RiNdSpvU8upGQCwmLXBzNvnpLWwXm7lGcZuh8H1vceeaBOpDCKxiNSEpIk38YulgZGR3bfmtD2D7wJMn7V/kbxXckX2GYXxAqPexYzIqUwljbDCVdcaGDn9heVcVWyufmNYoeydWJcy177QxwU3Yi3Gf5qzXoGvL0wDCUOpfUj7F8E1qROpvqDi/DJNE1HvQeyXyvIOinFTBDUcQmdNtYQQOTiIBvtSA1d0Qat4vlqCOYrTM0Cva5+91iOKGfvDr+mbRZA5QnErO4UuaNXhRJVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5445.namprd11.prod.outlook.com (2603:10b6:208:30b::7)
 by CY5PR11MB6343.namprd11.prod.outlook.com (2603:10b6:930:3c::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.22; Mon, 7 Oct
 2024 20:43:29 +0000
Received: from BL1PR11MB5445.namprd11.prod.outlook.com
 ([fe80::b1a1:c6a6:403:8161]) by BL1PR11MB5445.namprd11.prod.outlook.com
 ([fe80::b1a1:c6a6:403:8161%7]) with mapi id 15.20.8026.020; Mon, 7 Oct 2024
 20:43:29 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH 10/31] drm/xe/display: Spin-off xe_display runtime/d3cold
 sequences
Thread-Topic: [PATCH 10/31] drm/xe/display: Spin-off xe_display runtime/d3cold
 sequences
Thread-Index: AQHbDsJoBw0dHHsr30y3PFKqKThxArJ70g5Q
Date: Mon, 7 Oct 2024 20:43:29 +0000
Message-ID: <BL1PR11MB544557E585E9D5268013E0ABE57D2@BL1PR11MB5445.namprd11.prod.outlook.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
 <20240924204222.246862-11-rodrigo.vivi@intel.com>
In-Reply-To: <20240924204222.246862-11-rodrigo.vivi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5445:EE_|CY5PR11MB6343:EE_
x-ms-office365-filtering-correlation-id: 188d0f28-45a0-4a2b-9719-08dce710b34c
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?Wu0IIxKlw/oac6UUkGh5xQAWrEpGxDP68QkU0TxPCtpVLmAZWUWreBJAtGEk?=
 =?us-ascii?Q?Bm6JvWFeHOa4y6pxyqecMcX8+sj/X5yDqhyvy1zeC6SNsuRLviEf+vzejEdQ?=
 =?us-ascii?Q?V22JuRGZQZa4Aw59aqXlV2eN9faDJz77rjzRI2sx84sCsKTsjatV82+jC2lC?=
 =?us-ascii?Q?1eK1hMl+wJsST9KynDg0eO1/T8V5RNRdrdawaDvtoxQorXUCsPBJNNg3dlSW?=
 =?us-ascii?Q?54YhFVIKVF/7T+WCDLkKQ4ngKd0r+Ivw6NAnBML1FTgfrVmusBHfjIimWVPF?=
 =?us-ascii?Q?k73RpMymWWgRfjAsw2nLfHjrgfSTOrVcmMaQhNeUWOx+GeN+7miEUTSk/VzV?=
 =?us-ascii?Q?AzrGQh6jtfA+VSBhcRyzsPxHUJPDk1KNGYLoYZOA61n517040fvfcsTEe6eh?=
 =?us-ascii?Q?yDyUJ3pfJUH582EhO0NO0yG3rwgDovq5GkzDX8VyHKCocfGO+aSFv6YvHm6L?=
 =?us-ascii?Q?pHe15LE3kDfQwt7DOf3ZpSEBp1wZIMnTPz/ZP2WdjipbKofibVDpd1wGwZ/r?=
 =?us-ascii?Q?/hs5SqG/ZzpZdblBkHMuCmfzBtNDkIKRp99MyG+ExnxVWxoAsKGepAdmKOyL?=
 =?us-ascii?Q?SDdtaepwmIkn7Zzgyt6K15ePfqLZLSYFzIHo4LmUoVLbi3iqXMOKVlqooRLH?=
 =?us-ascii?Q?bnxIbyuMCuQJTJXCKqLQ7Lr2kUArpGJOCEO9urrR0w3+4q8cMpJ6DaIFNMQT?=
 =?us-ascii?Q?StZrVG6ZuymbpbODnghIEKf8OZhxyW/7BwhE+kqImA7VAKQKxq6D7GmJJjiS?=
 =?us-ascii?Q?IR2SHh8G+S+C0JPKwy4kkTHuQyTGc4Vb3BnbQgWtUW9Ihb2x9hsRutwSs1kY?=
 =?us-ascii?Q?R1Jv3raGm25kV/bthZ+cbMh4bjngYhZ3WPOi/qjYZ+Amut9S14bSNnrIU+4D?=
 =?us-ascii?Q?8/bTajWZ7Z9aYKbPRuduGT+toObZ/VLuJ4ZByrKFOYUtS20mscBjdb20Zl/x?=
 =?us-ascii?Q?DiZGYIg51bogvikaMJpvrn+n2+/OF+yjrT96awowJHIDpNXLUrDX44EihAdW?=
 =?us-ascii?Q?DXk9zKagRJiBs40/6RO4mO0LCELNHAvAUjrz7rPv348E5oeNxPOBXE1mbl2m?=
 =?us-ascii?Q?SgYynlHrh7qPoaKkU63WgWw1fpm9Xw14NXNBZtcLn3dM1Jg5TddFvKBgnh23?=
 =?us-ascii?Q?VX6lk6HSbtjnMhWPs0SFOIEj7F+MsB0ZeWU15wmMSQ54gn20SgpYi+MPBYGy?=
 =?us-ascii?Q?LamH6k4JX0T6oBzzQH+FBh9Hy3y4HUaanm/T1/+bFjwmYwC0k4tFJlaUukLr?=
 =?us-ascii?Q?TLUFcJzB1KWWkBDQVjvPlFXEXOhJAu5jF3uMJMT2vBpxK/phxyD6Xev4II/o?=
 =?us-ascii?Q?5toeOZlVi+2cx2MaHN2aZQ2HIHFWj0ViXx1Tsr2AsKZTCA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5445.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ym5kvfBGfVjUucGLHcndnANoINR974GiYIPDABId3R+Hnx/zF4no29Po9KTR?=
 =?us-ascii?Q?LGplPf+Uh8eRAgNFk7rGDco4lnIcWxll3y5ZYBFMoQPhy2izz/qUPR5Qr0R+?=
 =?us-ascii?Q?KlMYIbynLZm2fv3ALMZGijvDBz1od6scRRvCq2lfVV/M5ErKe3a3CNkyMmZN?=
 =?us-ascii?Q?U/Q0ZnNzGG/moVT1phXsQrC26Uk73JVc2mE7tiVlcOBpWDEIvV2VwEbuY4R4?=
 =?us-ascii?Q?5ODLmeRfGjkVVTC4NSwZu4p8izqbvRx1rTEo5H9ZyA+ivZ00sZMDk4Ra7teY?=
 =?us-ascii?Q?90GitVz3esgD2NYso5zt8Hr8MmEzAUhZazNsmiQ0u6a7vlq47MLnbgrsMYlz?=
 =?us-ascii?Q?BUWd83IbKUcFog8QRBMHhev3Ux+5Uq91QcAF2LdR/ggrAHDfuCBwxOZgJOhA?=
 =?us-ascii?Q?X/G8OzyQ/GQFREbzhXXiKQoa70WriJ2d7vD7pV7ubvTS0RUf+2q77PpqKly6?=
 =?us-ascii?Q?QlGxl5w89Z2RexkWN829y1ryWY7ExTr+KMgmiZ7lRAiqvR6gB8QjZl6DS9ul?=
 =?us-ascii?Q?Vx3ezhk7lExhEvgAcbBr5kzwB6HAfcQR3eqjD573Yt/F3iyQzo46s/CUcfnT?=
 =?us-ascii?Q?FKNgfr3blEHR/lx4V7331qc/hGdAvvdry6/cvmdHPlFFQ96ZP7LP3ucwpEXq?=
 =?us-ascii?Q?FHu4w4gT16jkER4P98NLuixB/0Fz9yXlpCDattiJGinHQmEGbYdnOSy57ZLr?=
 =?us-ascii?Q?5n1Ead76XOw2PPdq3n1lBcJ4FsBnX2Bc0i0oV2NMODG0o0yns0+Ak3z1OwtT?=
 =?us-ascii?Q?Su7jgOkeTWjylsfQ3nqrnsRu9UdSCGom+9F2vyVLbZH2HcYGwTASd0hP/BBG?=
 =?us-ascii?Q?YjaxqNNK8lr+KJ0eyPqJGulSVlmf2YLLqgiVwt0mUTfIti2pvdcLm3V2hbWY?=
 =?us-ascii?Q?DBrJYvhel5PIWJTxAw4aEDhwC1sbleCXoJe0LyxQZSo44P6NqOUtcN82dH03?=
 =?us-ascii?Q?AKZmIQEw3yuHH5OGjP2x2pHnge9ToFqJQ1Z9o7BtaTExK6RI7PUMemiq+MWJ?=
 =?us-ascii?Q?On8oIEriDl4Bx3Z9J8Ds6CAuRexxBzRS4teq/1j39NRy7nEYu99287/9Ecbm?=
 =?us-ascii?Q?Ud5Lg9gxce91Wu7h36W0ohNyU2bBhuHLqbEswHytw1kOo4k+PxU1GzQ9CsMr?=
 =?us-ascii?Q?Dk0WR3Votq/XnuG2c0436uU2yeI0ScEOvrCNx54eVsMuz04bFuzaXCFEXStH?=
 =?us-ascii?Q?3jmknWzKQjl8/ocb2qFcHxk7lZxhdTo1UeQ43RBRE+iO0kiNLMl87m3DppmG?=
 =?us-ascii?Q?B1WBxjhVkEEfBSTmMQlQHO5dH3JlVBHbYnr8lCBNy88FGvukBgUEKPolmGHo?=
 =?us-ascii?Q?uMBMhtKS8CAK9q9yNyQdueTOJ3j2z/kWMoSUlDRQzc4YqKlh6FR9IWklk3A9?=
 =?us-ascii?Q?KRHaDnsZZZj9jDORCAmcWL4Gu0LloyXrC6DdYgX3tp5/sbVQmSNPpcph+hE6?=
 =?us-ascii?Q?CzDsEoDHOixjB2KS2FUybA+hxFX+a7qlieQoAKBqJIAT9SRM0jmcSxbpMi6d?=
 =?us-ascii?Q?kusiNh9/YFUHJ7GASzSBZhRjwPWnJohdu5IOafxDPksT5u2yNOzusnvXWkoZ?=
 =?us-ascii?Q?qICmSosHO3H+DXzEmi2ZGJma7iGv9YH6tZbVnM/tkeAni7VYiPKsd/wUvy2o?=
 =?us-ascii?Q?Pg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5445.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 188d0f28-45a0-4a2b-9719-08dce710b34c
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2024 20:43:29.3064 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jvUHZSOFzLhc1VKlXVN7anN39o8g/hbbEXyb36R0R0zfgCosnJL326ZQMycvZ43aa7OzWDPsRStaUH1CXsUi8q0hgSYE53a1DHn1QUf4BfA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6343
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

-----Original Message-----
From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Rodrig=
o Vivi
Sent: Tuesday, September 24, 2024 1:36 PM
To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
Cc: Deak, Imre <imre.deak@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com=
>
Subject: [PATCH 10/31] drm/xe/display: Spin-off xe_display runtime/d3cold s=
equences
>=20
> No functional change. This patch only splits the xe_display_pm
> suspend/resume functions in the regular suspend/resume from the
> runtime/d3cold ones.
>=20
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  drivers/gpu/drm/xe/display/xe_display.c | 68 ++++++++++++++++---------
>  1 file changed, 45 insertions(+), 23 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe=
/display/xe_display.c
> index be431d9907df..a4705a452adb 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -308,8 +308,41 @@ static void xe_display_flush_cleanup_work(struct xe_=
device *xe)
>  	}
>  }
> =20
> -/* TODO: System and runtime suspend/resume sequences will be sanitized a=
s a follow-up. */
> -static void __xe_display_pm_suspend(struct xe_device *xe, bool runtime)
> +static void xe_display_to_d3cold(struct xe_device *xe)
> +{
> +	struct intel_display *display =3D &xe->display;
> +
> +	/* We do a lot of poking in a lot of registers, make sure they work pro=
perly. */
> +	intel_power_domains_disable(xe);
> +
> +	xe_display_flush_cleanup_work(xe);
> +
> +	intel_hpd_cancel_work(xe);
> +
> +	intel_opregion_suspend(display, PCI_D3cold);
> +
> +	intel_dmc_suspend(display);
> +}
> +
> +static void xe_display_from_d3cold(struct xe_device *xe)
> +{
> +	struct intel_display *display =3D &xe->display;
> +
> +	intel_dmc_resume(display);
> +
> +	if (has_display(xe))
> +		drm_mode_config_reset(&xe->drm);
> +
> +	intel_display_driver_init_hw(xe);
> +
> +	intel_hpd_init(xe);
> +
> +	intel_opregion_resume(display);
> +
> +	intel_power_domains_enable(xe);
> +}

xe_display_to_d3cold and xe_display_from_d3cold sound like conversion funct=
ions
that take an xe_display and return a d3cold, and vice versa, respectively. =
 Perhaps=20
we should consider a different naming scheme?  Something like:

xe_display_enable_d3cold
xe_display_disable_d3cold

Also, we're going to need to move these functions in patch 31 later, so per=
haps it
would be for the best to put these functions in the correct place from the =
start?

I won't block on this, but do consider renaming these functions.

Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

> +
> +void xe_display_pm_suspend(struct xe_device *xe)
>  {
>  	struct intel_display *display =3D &xe->display;
>  	bool s2idle =3D suspend_to_idle();
> @@ -321,10 +354,10 @@ static void __xe_display_pm_suspend(struct xe_devic=
e *xe, bool runtime)
>  	 * properly.
>  	 */
>  	intel_power_domains_disable(xe);
> -	if (!runtime)
> -		intel_fbdev_set_suspend(&xe->drm, FBINFO_STATE_SUSPENDED, true);
> =20
> -	if (!runtime && has_display(xe)) {
> +	intel_fbdev_set_suspend(&xe->drm, FBINFO_STATE_SUSPENDED, true);
> +
> +	if (has_display(xe)) {
>  		drm_kms_helper_poll_disable(&xe->drm);
>  		intel_display_driver_disable_user_access(xe);
>  		intel_display_driver_suspend(xe);
> @@ -334,7 +367,7 @@ static void __xe_display_pm_suspend(struct xe_device =
*xe, bool runtime)
> =20
>  	intel_hpd_cancel_work(xe);
> =20
> -	if (!runtime && has_display(xe)) {
> +	if (has_display(xe)) {
>  		intel_display_driver_suspend_access(xe);
>  		intel_encoder_suspend_all(&xe->display);
>  	}
> @@ -344,11 +377,6 @@ static void __xe_display_pm_suspend(struct xe_device=
 *xe, bool runtime)
>  	intel_dmc_suspend(display);
>  }
> =20
> -void xe_display_pm_suspend(struct xe_device *xe)
> -{
> -	__xe_display_pm_suspend(xe, false);
> -}
> -
>  void xe_display_pm_shutdown(struct xe_device *xe)
>  {
>  	if (!xe->info.probe_display)
> @@ -379,7 +407,7 @@ void xe_display_pm_runtime_suspend(struct xe_device *=
xe)
>  		return;
> =20
>  	if (xe->d3cold.allowed)
> -		__xe_display_pm_suspend(xe, true);
> +		xe_display_to_d3cold(xe);
> =20
>  	intel_hpd_poll_enable(xe);
>  }
> @@ -405,7 +433,7 @@ void xe_display_pm_resume_early(struct xe_device *xe)
>  	intel_power_domains_resume(xe);
>  }
> =20
> -static void __xe_display_pm_resume(struct xe_device *xe, bool runtime)
> +void xe_display_pm_resume(struct xe_device *xe)
>  {
>  	struct intel_display *display =3D &xe->display;
> =20
> @@ -419,12 +447,12 @@ static void __xe_display_pm_resume(struct xe_device=
 *xe, bool runtime)
> =20
>  	intel_display_driver_init_hw(xe);
> =20
> -	if (!runtime && has_display(xe))
> +	if (has_display(xe))
>  		intel_display_driver_resume_access(xe);
> =20
>  	intel_hpd_init(xe);
> =20
> -	if (!runtime && has_display(xe)) {
> +	if (has_display(xe)) {
>  		intel_display_driver_resume(xe);
>  		drm_kms_helper_poll_enable(&xe->drm);
>  		intel_display_driver_enable_user_access(xe);
> @@ -433,17 +461,11 @@ static void __xe_display_pm_resume(struct xe_device=
 *xe, bool runtime)
> =20
>  	intel_opregion_resume(display);
> =20
> -	if (!runtime)
> -		intel_fbdev_set_suspend(&xe->drm, FBINFO_STATE_RUNNING, false);
> +	intel_fbdev_set_suspend(&xe->drm, FBINFO_STATE_RUNNING, false);
> =20
>  	intel_power_domains_enable(xe);
>  }
> =20
> -void xe_display_pm_resume(struct xe_device *xe)
> -{
> -	__xe_display_pm_resume(xe, false);
> -}
> -
>  void xe_display_pm_runtime_resume(struct xe_device *xe)
>  {
>  	if (!xe->info.probe_display)
> @@ -452,7 +474,7 @@ void xe_display_pm_runtime_resume(struct xe_device *x=
e)
>  	intel_hpd_poll_disable(xe);
> =20
>  	if (xe->d3cold.allowed)
> -		__xe_display_pm_resume(xe, true);
> +		xe_display_from_d3cold(xe);
>  }
> =20
> =20
> --=20
> 2.46.0
>=20
>=20
