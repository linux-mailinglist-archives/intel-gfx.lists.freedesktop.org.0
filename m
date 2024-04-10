Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 869C589EC43
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Apr 2024 09:38:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7F6810E489;
	Wed, 10 Apr 2024 07:38:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zw1V1T4V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB7B610E74E
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Apr 2024 07:37:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712734668; x=1744270668;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jMYth1syLd8AT5j/BR8hBK3y06vAHTv2H6z24w3qMJ8=;
 b=Zw1V1T4VzAhov2bM0gy1cATkacYd23iY4FNz+/DNJk9d8JkSwRTlcJ8M
 Qfp5wy1xg/LC/fgc4B2UN1rcn1zdhJyvq92BJ9TtQLG8TAeU6sp736aR1
 GuDh0UiBCSkLlQkfyxp4o/2rgLrnDQrTajsgnhelrhgNDwhKSJbpBQeBA
 EFRgJMOUVok56J62hWVsPtOlxJ3GjBL/koWQn0RPjcmPo2MIVfxiFU2AB
 MIeZ01VrxS68XqWy4wEqYzThz5P/G2/Vno819aF3nSz7gdqtQbj++IFCO
 1NvyfiWznT1PtH+ekKwjKJ0S7oxIwMlp/gzvVaKF572Qx6X4aDvdpd6VM w==;
X-CSE-ConnectionGUID: ESqmSJpDQlSMnhVqr8jCiA==
X-CSE-MsgGUID: gvpWoUA5TPSaNAJe9j/W0A==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="7938230"
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; 
   d="scan'208";a="7938230"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 00:35:26 -0700
X-CSE-ConnectionGUID: IkvrDumWRfa/lfCYHp7pPg==
X-CSE-MsgGUID: TIFSpFm5QJKCOOqje8I9dQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="20424348"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Apr 2024 00:35:25 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 10 Apr 2024 00:35:25 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 10 Apr 2024 00:35:25 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 10 Apr 2024 00:35:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CaF5DAficAz2u4LUCfjwLkF9KIPIdzTKWn5ZKwippxZlHboZlwRwOwgInv/dMHt5aGnaDI/gbiq+R/E0epGOW5KpPcfHqZSW/qzeCXjaDyakbJrEAekGI5O+3O8bno7vCPC7MyMiMXVZJjgBjESSwV5njpgUcAageL9uNTqcIBkONrRp68Dvnn4+r0tNX4bGe4T6VXB6sGSGjMvqtsYEfxA2uUZNJVYyTtErnV4QzXz5AV/N0XfNmkR1urydea3YbPNi2iEYX6lpPCYFAxi3P/nxtIMZ6X+tCr1c977FoUV+MoiZJixD+7h/dtO38GMJv18+lV+ASBbL24gOxmN1pQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jMYth1syLd8AT5j/BR8hBK3y06vAHTv2H6z24w3qMJ8=;
 b=f52ThDrbZ2DoxvjtG5xcw37jOFaA9OdAH+VI6/u03rNwLRpaZ46Sqo5b6hfcnt/o05WvmlIi5I6um5IHO6NaIQfjCPquJDca4VbFqgmi604anYtDq2/Drqledv8BDmCx1Du8iOECyw9nanoIeuGrOyKEH1MP/P+B7T7+CuLaI4+rmmpLaF+LJu14znDftYA0g+oIK3p0EyhFaJQGQXRUyW6z3fuZ/ScjBvXrIhdNvrr6KayGil287auLtHowF4HxBO1hvc9EEPwhERKf92WVe68BS8lNApSe2VzVu6Ym4lM8vlarPT79uP1zIPnORv8u8GEagPmeQ3x0AqthirGwqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SJ0PR11MB5149.namprd11.prod.outlook.com (2603:10b6:a03:2d1::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.32; Wed, 10 Apr
 2024 07:35:23 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::8970:61a2:f00d:b23f]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::8970:61a2:f00d:b23f%4]) with mapi id 15.20.7452.019; Wed, 10 Apr 2024
 07:35:20 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Murthy, 
 Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCH v4] drm/i915/panelreplay: Panel replay workaround with VRR
Thread-Topic: [PATCH v4] drm/i915/panelreplay: Panel replay workaround with VRR
Thread-Index: AQHagMyoTMnRoRLJh0mdEsapi/E1Z7FhLoyAgAAAVOA=
Date: Wed, 10 Apr 2024 07:35:19 +0000
Message-ID: <PH7PR11MB59816B3BAF4FFE3FCE1FB6F0F9062@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240328044354.1871391-1-animesh.manna@intel.com>
 <b425ba4a833691fefdb70a7ac7d4bdb9bcf75f41.camel@intel.com>
In-Reply-To: <b425ba4a833691fefdb70a7ac7d4bdb9bcf75f41.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SJ0PR11MB5149:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lcnC1/NJ5z602kI0uvq71Uru2rq4Natc7YaBN5PaRBLj2iuWqF4TPXtey4tUQLUnxKeaMrrTvI1m2SZMYuUOdOy4HLu7MOCrygktgbub4928aRUM0/I4gvzSeZrr8TwNUBPI4OgJWtTGgJE+Bct50tN+uZo04wFgDQmnJtcjRPSCM/+reSMyK0UHCUiroc1ub8UdUq1QT5kcRBu4hmIcTiye+0IRANg/tmE6h0ycnm6Hf+r6Ztwjy4W8p0lN5CaCIlA8pRmjdkSNrkoMoIOMc02aK1G8PNpLx2RF0FvspzZDSz0QhUfAYmSiqQSm74QVLfVqjog+IMzGg4D9BSk3+MFJjAATXhFYztxR6BX9a1wmCDqNZnpmp7FS8cIp2sBLq61REwc1h9UntpNFe70xs6wTBDrDWE2c0INoEfaYMJitv4Dmk6AR+YiJhH4gikWv7/vpWyUuMi3n/Zac2EhNzfsBlmoLUEJpj+qWneBp3Gl/jCRM+Ebi5/XBBF7W+Fgn7Itquml5woHJZKXWUSaMZ7tFbIi5uyGz7laLPPh71tVsoYJlVhcZBTzpj3KIF3T+Tu6UzrTkrW+PY6A0hWXwzz/kpWc2yr3x/WEmVFYg94c=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZDIvRGdHTG05WlM3T0VWOUVwbUtoU1RvT2lRSmhYTy9YZTQzTk1ZT3JEOEty?=
 =?utf-8?B?WVpoUDNkdnVTdDBRUXVWd1BzWkZxcUdnNWI4c0JEMUJJQXRBVm1FbW5IMWZw?=
 =?utf-8?B?K2JMcTBzQndvd3NYczN0bVFGeTJ1K2ZvNTR3Z1BmRy9xcFErNk9kRmtzU3hG?=
 =?utf-8?B?cjZvMnlSUjNqME9XZ0xIOWdkR25ZSGxrOS85WGF5YlI0dVpWMHBQZWNOQVQv?=
 =?utf-8?B?VnBWMktuejJZL0JYY3NBY29obURWTDFML2JUNE5aeWtKNk1id2k5dmYyZm9M?=
 =?utf-8?B?TjdwcURZby85MHpTRDZBaDNtUVpsYW0xTms4UVIycHIvay9sQkM0WHJnTUNs?=
 =?utf-8?B?S3BQaVk2QVJDVTJ2b2t1Vk0zUVZnVnBPRW9RUi81TDVxTzJ3a1pNSUFlcFpj?=
 =?utf-8?B?bm5zTlZuMjBKVGIxeDc2NEV2Ym9iZDkyZjEwWWwrMi96ZUEzcjY3VGtXd1lJ?=
 =?utf-8?B?SXlGV3Z0WHJHaGZoL2FhRGdaY2x4NUUvT3IrZU0zbGh6R3YvdXRQR3p1L1Vk?=
 =?utf-8?B?VEhCQzJDOTFWSGdoR2VLa1hKRitQV1B0WHQ4Mko2WThQVHBRdlZXRVVwQ2lV?=
 =?utf-8?B?UUljWHJKUFQzWDBiOUxEV1RWNlFwY29hMnVzSXV0RTVsdmlreDNhYmNaM2pH?=
 =?utf-8?B?cVRVczErcHVUbllLWFFBbFpXMElReFZhRnlqYzZYU1ZCVnBEODJsZGptNE1B?=
 =?utf-8?B?V1lLcGsydFduOVRJNVRpZjNWejkrV3RzaWduMWxMZVRRdmxwS1RBVTNOcEkw?=
 =?utf-8?B?MmMrT1p6MGtqWEMxbmYxWjdLMm1tOUhQNjFjbFZYczVUZFllT3FIMCtGV3l1?=
 =?utf-8?B?ODMrek1xc2djcDlKS0NiOVVGQnFVdkJmZHd6cUtIVktTYUR1bzJidUhjNHZP?=
 =?utf-8?B?UldOZnBjakkzelJmVWNJSmRtNEF4Uml4enh5QjN6enR6VGljYlhKNndrZFBr?=
 =?utf-8?B?dENMOW0yYzVta0tNVWZpU2VhTDc3UGljTmhXNmpqajJQNjl6cEtZZExNcCtT?=
 =?utf-8?B?M244Q1d1S1pDVUZyc3dQYk5CRUloZDlsNTczUS9QY0tLblRyTnFhb25lU2lR?=
 =?utf-8?B?bzA5Wm15a3EvMzUyeWlzN1pQdkZlM1lLL3JlTGd1bTRNK2RaRFZVSFZQY0Jl?=
 =?utf-8?B?NXFDdWtkaDdURktPMk9vMGdxbURsdmxTVUNzVVR0cGQvOTVxWDIvaWo4TVY1?=
 =?utf-8?B?M0l6YWdiUHc2S3VZczdUWFpNa2JudXVCRXV0cS9RdkxoQnVsYVRhZUdraFVt?=
 =?utf-8?B?R0MyZFZ0dytaVlNTd2x1MWh2djRoaUxaWE9IVHFKWEoyb1JJdlloNWZGN01O?=
 =?utf-8?B?UU95QWRud1VlcHNacXIrQk5pbkh0WlA4UTZLRmtaN3o1eTFSNlhEeEZnWUsv?=
 =?utf-8?B?cDRERUs5LzJmZCszUFphbGJNKzl5Zys4UFpIZ3F0K1dSbGJpczUyOFFqYXpl?=
 =?utf-8?B?Nzd3dm9OclZmOWpQYlVDQlNNdUd2L2xnZW5xZTRXdFQvaUhnWGpob2dmWWo1?=
 =?utf-8?B?dHh0MGRsUFBtOEFYRHNkUDNVR2dYVERIRk9oU3BOVHYzYUFCTmFIK2NRR3Rp?=
 =?utf-8?B?MEJwVlMwM2JVeTV5ZEpmczJkZm9QSXFURXVBTGtNd3hOZDN0YUFNTVN4N2JU?=
 =?utf-8?B?aFBaV3hNS2p1Qm5nT04zeThnSjBlQ05wSklva1dGWnMwblZqMXg5ZkNnV3RM?=
 =?utf-8?B?emc3T2ZZUEQwMm5zUFBGblE5RzdPRkpVc2Vadk1KMk94YVBuWEcvQzM3THBU?=
 =?utf-8?B?VW9VbUsydTVFNlRtYnhuUU5zdzQrbU5aR3lNZUc2RStrMEVYbU9pWmZpWWlo?=
 =?utf-8?B?VzJQbUJRbVVYZDdDZEZXSStBOHQzaE1tRjhMVUdIT1JwWjdJUi9QVndEMSs0?=
 =?utf-8?B?MjV2K2FjZzJsaGVCdFRVbHAwcFBnbEQxMWdkYUJZMDNKc1pac092L3VvRStC?=
 =?utf-8?B?ejlwcTROYWJ4cjBGaWtuL1d1bytYSzFsSmozQUJ1YTlRYi9VRkliRWJXbTZx?=
 =?utf-8?B?bmY0OHJ5TDNzZ0g0NHgrdE44c3BoU2srN1BFNjEvNzdxclA5ZGszUHk2Ty9B?=
 =?utf-8?B?OHNQWGdINmpGOEF2Ulgra2ZSUWE5OEYzRFdQQWhhUFFza0lhQ1Q4YW4zdi9r?=
 =?utf-8?Q?qkKuYi1O+53F+Ja4IByLv6Q3m?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f5f4f24-783f-4504-13ab-08dc5930c651
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Apr 2024 07:35:19.9776 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: h8xXAc/dbcb+NQSrWq+Z/wdNzefoNqhFkDft/L+yObnUmuDmAuAmjr5IKNERsIY105ywNTWLP2RKlAEEGCm7kg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5149
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFdlZG5lc2RheSwgQXByaWwgMTAs
IDIwMjQgMTI6NTQgUE0NCj4gVG86IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVs
LmNvbT47IGludGVsLQ0KPiBnZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiB2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbTsgTXVydGh5LCBBcnVuIFIgPGFydW4uci5tdXJ0aHlAaW50
ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIIHY0XSBkcm0vaTkxNS9wYW5lbHJlcGxheTog
UGFuZWwgcmVwbGF5IHdvcmthcm91bmQgd2l0aA0KPiBWUlINCj4gDQo+IE9uIFRodSwgMjAyNC0w
My0yOCBhdCAxMDoxMyArMDUzMCwgQW5pbWVzaCBNYW5uYSB3cm90ZToNCj4gPiBQYW5lbCBSZXBs
YXkgVlNDIFNEUCBub3QgZ2V0dGluZyBzZW50IHdoZW4gVlJSIGlzIGVuYWJsZWQgYW5kIFcxIGFu
ZA0KPiA+IFcyIGFyZSAwLiBTbyBQcm9ncmFtIFNldCBDb250ZXh0IExhdGVuY3kgaW4NCj4gVFJB
TlNfU0VUX0NPTlRFWFRfTEFURU5DWQ0KPiA+IHJlZ2lzdGVyIHRvIGF0IGxlYXN0IGEgdmFsdWUg
b2YgMS4NCj4gPg0KPiA+IEhTRDogMTQwMTU0MDYxMTkNCj4gPg0KPiA+IHYxOiBJbml0aWFsIHZl
cnNpb24uDQo+ID4gdjI6IFVwZGF0ZSB0aW1pbmdzIHN0b3JlZCBpbiBhZGp1c3RlZF9tb2RlIHN0
cnVjdC4gW1ZpbGxlXQ0KPiA+IHYzOiBBZGQgV0EgaW4gY29tcHV0ZV9jb25maWcoKS4gW1ZpbGxl
XQ0KPiA+IHY0Og0KPiA+IC0gQWRkIERJU1BMQVlfVkVSKCkgY2hlY2sgYW5kIGltcHJvdmUgY29k
ZSBjb21tZW50LiBbUm9kcmlnb10NCj4gPiAtIEludHJvZHVjZSBjZW50cmFsaXplZCBpbnRlbF9j
cnRjX3ZibGFua19kZWxheSgpLiBbVmlsbGVdDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBBbmlt
ZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiDCoGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMTcgKysrKysrKysrKysr
KysrKysNCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5o
IHzCoCAxICsNCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmPC
oMKgwqDCoCB8wqAgNCArKysrDQo+ID4gwqAzIGZpbGVzIGNoYW5nZWQsIDIyIGluc2VydGlvbnMo
KykNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMNCj4gPiBpbmRleCAwMGFjNjVhMTQwMjkuLjdmNWM0MmExNDE5NiAxMDA2NDQNCj4g
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4g
QEAgLTM4NDAsNiArMzg0MCwyMyBAQCBib29sIGludGVsX2NydGNfZ2V0X3BpcGVfY29uZmlnKHN0
cnVjdA0KPiA+IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+ID4gwqDCoMKgwqDCoMKg
wqDCoHJldHVybiB0cnVlOw0KPiA+IMKgfQ0KPiA+DQo+ID4gK3ZvaWQgaW50ZWxfY3J0Y192Ymxh
bmtfZGVsYXkoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpIHsNCj4gPiArwqDC
oMKgwqDCoMKgwqBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqYWRqdXN0ZWRfbW9kZSA9ICZjcnRj
X3N0YXRlLQ0KPiA+ID5ody5hZGp1c3RlZF9tb2RlOw0KPiA+ICsNCj4gPiArwqDCoMKgwqDCoMKg
wqAvKg0KPiA+ICvCoMKgwqDCoMKgwqDCoCAqIHdhXzE0MDE1NDAxNTk2IGZvciBkaXNwbGF5IHZl
cnNpb25zID49IDEzLg0KPiA+ICvCoMKgwqDCoMKgwqDCoCAqIFByb2dyYW0gU2V0IENvbnRleHQg
TGF0ZW5jeSBpbiBUUkFOU19TRVRfQ09OVEVYVF9MQVRFTkNZDQo+ID4gcmVnaXN0ZXINCj4gPiAr
wqDCoMKgwqDCoMKgwqAgKiB0byBhdCBsZWFzdCBhIHZhbHVlIG9mIDEgd2hlbiBQYW5lbCBSZXBs
YXkgaXMgZW5hYmxlZCB3aXRoDQo+ID4gVlJSLg0KPiA+ICvCoMKgwqDCoMKgwqDCoCAqIFZhbHVl
IGZvciBUUkFOU19TRVRfQ09OVEVYVF9MQVRFTkNZIGlzIGNhbGN1bGF0ZWQgYnkNCj4gPiBzdWJz
dHJhY3RpbmcNCj4gPiArwqDCoMKgwqDCoMKgwqAgKiBjcnRjX3ZkaXNwbGF5IGZyb20gY3J0Y192
Ymxhbmtfc3RhcnQsIHNvIGluY3JlbWVudGluZw0KPiA+IGNydGNfdmJsYW5rX3N0YXJ0DQo+ID4g
K8KgwqDCoMKgwqDCoMKgICogYnkgMSBpZiBib3RoIGFyZSBlcXVhbC4NCj4gPiArwqDCoMKgwqDC
oMKgwqAgKi8NCj4gPiArwqDCoMKgwqDCoMKgwqBpZiAoY3J0Y19zdGF0ZS0+dnJyLmVuYWJsZSAm
JiBjcnRjX3N0YXRlLT5oYXNfcGFuZWxfcmVwbGF5ICYmDQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgIGFkanVzdGVkX21vZGUtPmNydGNfdmJsYW5rX3N0YXJ0ID09IGFkanVzdGVkX21vZGUtDQo+
ID4gPmNydGNfdmRpc3BsYXkpDQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGFk
anVzdGVkX21vZGUtPmNydGNfdmJsYW5rX3N0YXJ0ICs9IDE7IH0NCj4gPiArDQo+IA0KPiBEbyB5
b3UgaGF2ZSBzb21lIHNwZWNpZmljIHJlYXNvbiB0byBoYXZlIHRoaXMgaW4gaW50ZWxfZGlzcGxh
eS5jPyBIb3cgYWJvdXQNCj4gbW92ZSBpdCB0byBpbnRlbF9wc3IuYz8gWW91IGNvdWxkIGFsc28g
dXNlIG1vcmUgZGVzY3JpcHRpdmUgbmFtZS4NCj4gQ3VycmVudCBuYW1lIHNvbWVob3cgbWFkZSBt
ZSB0aGluayBpdCBpcyBzb21lIGdlbmVyaWMgZnVuY3Rpb24gdG8NCj4gY2FsY3VsYXRlIHZibGFu
ayBkZWxheS4gSXQgaXMgYWN0dWFsbHkgb25seSBmb3IgdGhpcyB3b3JrYXJvdW5kLg0KDQpUaGFu
a3MgZm9yIHJldmlldy4NCkFzIHBlciBmZWVkYmFjayBmcm9tIHJldjMgSSBoYXZlIGFkZGVkIGlu
IGludGVsX2Rpc3BsYXkuYy4gR29pbmcgZm9yd2FyZCBhbGwgdmJhbG5rIHJlbGF0ZWQgYWRqdXN0
bWVudCB3aWxsIGJlIGFkZGVkIGludG8gdGhpcyBmdW5jdGlvbi4NCmh0dHBzOi8vcGF0Y2h3b3Jr
LmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTI5NjMyLyNyZXYzDQpJIGNhbiBtb3ZlIHRvIGludGVs
X3Bzci5jIGlmIHRoZSBjdXJyZW50IHZlcnNpb24gaXMgbm90IGFjY2VwdGFibGUuDQoNClJlZ2Fy
ZHMsDQpBbmltZXNoDQoNCj4gDQo+IEJSLA0KPiANCj4gSm91bmkgSMO2Z2FuZGVyDQo+IA0KPiAN
Cj4gPiDCoGludCBpbnRlbF9kb3RjbG9ja19jYWxjdWxhdGUoaW50IGxpbmtfZnJlcSwNCj4gPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBj
b25zdCBzdHJ1Y3QgaW50ZWxfbGlua19tX24gKm1fbikNCj4gPiDCoHsNCj4gPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgNCj4gPiBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oDQo+ID4gaW5kZXggZjRh
MDc3M2YwZmNhLi4yMzMxNWVjZWQ0MWUgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaA0KPiA+IEBAIC00MTMsNiArNDEzLDcgQEAgYm9v
bCBpbnRlbF9jcnRjX2lzX2JpZ2pvaW5lcl9tYXN0ZXIoY29uc3Qgc3RydWN0DQo+ID4gaW50ZWxf
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7DQo+ID4gwqB1OCBpbnRlbF9jcnRjX2JpZ2pvaW5lcl9z
bGF2ZV9waXBlcyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ICpjcnRjX3N0YXRl
KTsNCj4gPiDCoHN0cnVjdCBpbnRlbF9jcnRjICppbnRlbF9tYXN0ZXJfY3J0Yyhjb25zdCBzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ICpjcnRjX3N0YXRlKTsNCj4gPiDCoGJvb2wgaW50ZWxf
Y3J0Y19nZXRfcGlwZV9jb25maWcoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUp
Ow0KPiA+ICt2b2lkIGludGVsX2NydGNfdmJsYW5rX2RlbGF5KHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlICpjcnRjX3N0YXRlKTsNCj4gPiDCoGJvb2wgaW50ZWxfcGlwZV9jb25maWdfY29tcGFyZShj
b25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ICpjdXJyZW50X2NvbmZpZywNCj4gPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gPiAqcGlwZV9jb25maWcsDQo+ID4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIGJvb2wgZmFzdHNldCk7IGRpZmYgLS1naXQNCj4gPiBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMNCj4gPiBpbmRleCA3MmNhZGFkMDlkYjUuLmZjY2VmNTQzNGU5YyAxMDA2NDQN
Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IEBAIC0x
NDMwLDYgKzE0MzAsMTAgQEAgdm9pZCBpbnRlbF9wc3JfY29tcHV0ZV9jb25maWcoc3RydWN0IGlu
dGVsX2RwDQo+ID4gKmludGVsX2RwLA0KPiA+IMKgwqDCoMKgwqDCoMKgwqBpZiAoIShjcnRjX3N0
YXRlLT5oYXNfcGFuZWxfcmVwbGF5IHx8IGNydGNfc3RhdGUtPmhhc19wc3IpKQ0KPiA+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuOw0KPiA+DQo+ID4gK8KgwqDCoMKgwqDC
oMKgLyogd2FfMTQwMTU0MDE1OTY6IGRpc3BsYXkgdmVyc2lvbnMgMTMsIDE0ICovDQo+ID4gK8Kg
wqDCoMKgwqDCoMKgaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSAxMykNCj4gPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfY3J0Y192YmxhbmtfZGVsYXkoY3J0Y19zdGF0
ZSk7DQo+ID4gKw0KPiA+IMKgwqDCoMKgwqDCoMKgwqBjcnRjX3N0YXRlLT5oYXNfcHNyMiA9IGlu
dGVsX3BzcjJfY29uZmlnX3ZhbGlkKGludGVsX2RwLA0KPiA+IGNydGNfc3RhdGUpOw0KPiA+IMKg
fQ0KPiA+DQoNCg==
