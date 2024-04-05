Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D62BD899B7A
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 13:00:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F8C8113B02;
	Fri,  5 Apr 2024 11:00:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SocF+sve";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1CBD113B03
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Apr 2024 11:00:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712314852; x=1743850852;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=N1mGiP+pDf4Rhf6VLLVyLmpt0pxHTvnd0KTDTPqY5IM=;
 b=SocF+svefdUDQWyXmPb6fXoDlTiB0/VfarXsLdeHTIZvdr8pizq6JQ09
 Vo48SKYshRlKjEF/dallxnJhnUhe+AVZZ/GEJcvruWTdPuCeVbR625lA3
 D+BdUmszYdv7yp0waelpRqikvhkjUa0kagw1V4hrHQcrKj58VO9yQYpF9
 tyvZ9/VWNnYOjoRkPSXWoyCkGaLW2mxwSfhddHmgPmXlWPMyI3N/4qpJe
 qxDMusuy3TVDlYwHxkTw7XvbbdowNuAGAokM8dMsEShs9N6LIG8QqoQGi
 aN9uOGlIlH3TuTLafs6lC5RCtlIt3w/twkSisRGqdGSN3uJAVZpNw3MHr w==;
X-CSE-ConnectionGUID: Vxw16Q8wQrGZStfRnYRixA==
X-CSE-MsgGUID: RxYuKJqrSVaUYK3HW/K3iw==
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="18203297"
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="18203297"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 04:00:51 -0700
X-CSE-ConnectionGUID: BYZeuoBSQK+4xj0c5JuTHg==
X-CSE-MsgGUID: 47RmqG3sTyCdVeeDcfX1jQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="50369821"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Apr 2024 04:00:51 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 5 Apr 2024 04:00:50 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 5 Apr 2024 04:00:50 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 5 Apr 2024 04:00:50 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 5 Apr 2024 04:00:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SuADZ2mQhuHvJ7K0XMxIoMbPE+XtIs7fbQK+QTqJkSQmJAa3wkyfNWYZPYFi/kGPcqdi5Mn1+lseFPgQBPrGnjdUnCV+FGPjAeRe+UM/WHWvgVZsXQnwuJ/h3VBWnps/hJHiYb0HD1CvlgUF48mNwLO0fRmvnFthbswd+2baSx8I0ulGnhUYbKvWyq5wB+IRWK6Ut76psI9MhYYukfB+haCTrIA7ytO29D3rE+9Kl0Xv+a10bYDOyB1lmPDvEYz0CGVoyDMbjt6clT/iaYAQN2m8+DcX4gdApKIXn1gv1p0QZpWGicbu7AkJce9vd2dA3OgGMAVPPxqHZzg18Qbsaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=N1mGiP+pDf4Rhf6VLLVyLmpt0pxHTvnd0KTDTPqY5IM=;
 b=OudROS6Jv7tOdLrT2du/aHjmU0hupNzqhV3B7r4tKvB1kRsbUWM/4K21xDKMw7+szuc4R/EwjprRM3RL/xdfEvBkYYQh5bTARcwuXqAldXgoH4fnyvd1j0eKbHnEI1WmplATt07TfndLp/JnR3FL11lN2ETTmajB9HBMt/DeRHOAGhzewVCW2g653nTfAau3MQ/VMsewBTU0KAveWjK6qL+j8Iz8g4V263T4AtXbTKQ7rApmApj506cKd20Y0UzFVrsC1v7tSJWM0eRNFdfzun/YWT6myFl5N0T1qmWvxi1AUv7K8V2CHq//2GAev+7FS2jWJEk1XiuhcHMP40qU8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SJ0PR11MB6574.namprd11.prod.outlook.com (2603:10b6:a03:44e::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.24; Fri, 5 Apr
 2024 11:00:48 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::8970:61a2:f00d:b23f]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::8970:61a2:f00d:b23f%4]) with mapi id 15.20.7452.019; Fri, 5 Apr 2024
 11:00:48 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v5 04/19] drm/i915/psr: Do not update phy power state in
 case of non-eDP panel replay
Thread-Topic: [PATCH v5 04/19] drm/i915/psr: Do not update phy power state in
 case of non-eDP panel replay
Thread-Index: AQHahaV3rGyWfO08PUuYMGS7ubS0+rFZhYvg
Date: Fri, 5 Apr 2024 11:00:48 +0000
Message-ID: <PH7PR11MB598124B3BAA5FC5A40C049C7F9032@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240403090013.54296-1-jouni.hogander@intel.com>
 <20240403090013.54296-5-jouni.hogander@intel.com>
In-Reply-To: <20240403090013.54296-5-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SJ0PR11MB6574:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WCE1ipAaVuvbila1J0iYTK2PMxppxq3hO6FFEkGd2MoqezfoIrZ6hu2NwNS0IRo3AL5h7AQohKvFx5dnMioLt8APrg+hJqpdDySZmfghPIeOUKI6q9yI10iyQjnmd03hRDM/9I5UjmazI1qb9JVhRqmp6tpdgMffqBv10qzQlcXuINZsbeuc5TEvhYf1OKFf0aY19E3r9RbnWFXAs9fXCBpnBH526nxmRW2A11egf2O/fCryD5KOB5vzyzBlFVsz6f5ubfOxIULCTX6PKHu6Y/45C8WXrQJREkIulqGuLMx43GQCivEOGVbwXUXVZx14J6wKRiMvoNSSxYsjh9Li+TGir/utSDnkGJzkQyoNX0DfDOX8JDHV4LM3/UHngIXIVmzbkGqmsFrs+RRJI3uDNqb96kgeNBNb0Z+UGqnAoIQ+Sz8dKWbRMcb+IZk0FGLykLmOp/x4cBMD7/tugO7gKb/mkkwxzAX5PM23ErDBIMNgeHQBBu7z/2SDNjPR4RfpIybYP2xLB1VoHi2JFHoAktGmcqDTERaHHA7vI71vVM3fIvGt67v/aQWNflA2UKPGOn6putJUInXUJ+wCcyfj2AJU1q6zj05nFU7yejKohnTPQIGopQTnw/TGS385CQQfc1e9oA05D6duLlNfoZ88WH4UyBksY9L6vhG654s9B5E=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SEQwL2c4KzRTWXJNU1N5ODVaM2E1NnFVUldIckhFQ2xEc0Z3L3hBYnA5a0FI?=
 =?utf-8?B?TFdCSk9mOXZMN2g2bWI5cmI3U1VGczdsWkFQNUVFWk5IZzZzOFU0VE43RSsx?=
 =?utf-8?B?Q1JoQVJDTlBuTnlkdC9WaVIvSzhWOGcrc3I0cTdOQ3FJOHg1b2czNVBJQWJk?=
 =?utf-8?B?djgrOVN5QU9yV3lOYStrSFFLL1pJeG16NmljVEpMMVNFbVVEbExaaTZja05V?=
 =?utf-8?B?YW15bEltdHZLai9nTXpNQnY5andXZjd2Q1ZMaG05S0EvbDFVQVh1d3k4TFhn?=
 =?utf-8?B?Sld6UEFiK0pxT3ZwRm1xYzBDaW9tK0p6VjB3UXJVU3A4ME95Z0hnU0RMbW50?=
 =?utf-8?B?Yy92WThQenJpZjFybFR6TUhIbDhiK2ZHNmlJMDhOS3pVRUkxUE4xWEcwNEEx?=
 =?utf-8?B?OVNhUUZyUTJRak9kSUtpaUNONmd4cnFRd2F1KzFSb2tvTkVKK3NuUnpJUXpk?=
 =?utf-8?B?YkZvZDlFUnM5TUFmOHlTZ2ppSmpLeUhaQjNtWmlMaFF5dlgycU9QUWdhRGJj?=
 =?utf-8?B?TU9qTENFOHN1eTBtVFFWb3F6N2VJRzMwckcwQ3pxZ3VQSmhmT2dRWEE5aGpK?=
 =?utf-8?B?ZUtjQ096TUVRUkNvNmJyNnQvaHVWTnl3YmNic0tOVS9HWVVwRituY05ZRE0w?=
 =?utf-8?B?TG9uSDZPNlB0Y1pPYmRQQ0JENStnMW9PQTBSNm5XT3Q4bmxqQmVmUGtCQnY2?=
 =?utf-8?B?b0xPTkpaa1RNSDkvZ3k0THhsVXE5Y0pjUE1sektkTUlGVTNWaWJ0TkhIZ2cz?=
 =?utf-8?B?VWhvT2NwSnF0M09zS3F4L0F3dk1SUU9oc1hyRE84cE8zKzlSMTVOSFUyWmhJ?=
 =?utf-8?B?bVVnaFBIUjNINkNDV0ZUTEk4MlZYZUZkaFRtbisrS3piT1lqNVcyL2JYWisz?=
 =?utf-8?B?dEtPMVVlbHdqdEp3Y2ZsUUZnS0NKRW16NXczeEowbGxjVEg2ajF5blBqRW9u?=
 =?utf-8?B?ck44L2psV2trc2NKaTVuRUlSV0tvWHRZTlNTY3FyUFNGWUZKMzFXQ204NVd4?=
 =?utf-8?B?dWFDS0k3MGRTQWlpeG5LNjNZc282Y016MlU5bjBEMFhRNXVSRVR0TTJ0ZStE?=
 =?utf-8?B?YVNXWkU5N0x1WTV5dEJHakZlMjR1OTd0anE1b0VsWkFMb0xMbUM3UktCVmY0?=
 =?utf-8?B?SWttdkEzNjNUOGQwbldFeU5WVkRtUTRVd1dFdHY5YWtObUxoSUZSeGtXeER5?=
 =?utf-8?B?NkNURFRod1l6V3N2bVpraWVMMmhQckRQZ0dZOHFBbi93b0N3U21iTk01OTlY?=
 =?utf-8?B?M09Qb2pPUzdndENVOUY4VHIzVHNqeEJaSzdrNE5rV0Rlc3NKc3NhRTZvSHMz?=
 =?utf-8?B?Vm1UWTYxOElvb0U3T3RoZS9MaVRZV0ZnR0hvS0xZaGw1SC9TNkhiak5CR05U?=
 =?utf-8?B?OEFUYStOdFRkYlpIZWJmYWQxeUxYbzQ2Qm9ZamZuVWJRdTBiVzBKUzMvSmw3?=
 =?utf-8?B?blE2bmViSTlRTDNQbDF3OUx1UDVGT0FQbjc4K1FtSHpydDhTUGkxSkcvTWxm?=
 =?utf-8?B?Y0hpaWVIRUdHZ0JuTm5DTS9aR1RaRW1CdTZGK1FoRTl6bHl1enFGaXhVV1RH?=
 =?utf-8?B?aHQ4cndjbndRd3BWSUowNjRLN0dYNkVGV0JLU2dsOWtNcy83aDlrNmRiUU9s?=
 =?utf-8?B?VElXeXg2ZUhZbm9BaEs3L3JBa3ArREVhSDE3YWVKL3FCSGpMcHlpUTYzUks3?=
 =?utf-8?B?di9GQit1ZUhIR0g3N1Z5b29OdUF3VVJWRDU3ckozUUF1SjgvQXN0NXJEOEZm?=
 =?utf-8?B?L3dJdjZLaTlFdzlHNGNSY09EeUpWT1ZCODJVSzFuZUhyc25PbGlUZ1BTd3BF?=
 =?utf-8?B?MWJRSDg1RjVXQVhmMjIvUHkvNWFoMm56MmVpVUs4bSswd2dUcXcwVTZ6NER5?=
 =?utf-8?B?a2V6dVZzZHRoTjltRW1ObUNZSERoUEpQWEZiWTJuSkE0a3ZRd3p2eGxFbm5j?=
 =?utf-8?B?RU5LeUtxb2xNTkdicTBPcjEwTXhhdFV0RVZUY3pLeWtVMkN6S0RPWGU0TWxr?=
 =?utf-8?B?NWpxeEExOThqMVlRLytUMURrZGtsM2FCa1N1Mm1FNTY3akZXRTZ5VVNqQ3F0?=
 =?utf-8?B?SWMxV2NoQTQxMnRZTFpaNW1mbHc4Y2Y4WkFSMTVud3FnR2pUSStaZkNkTDJ1?=
 =?utf-8?Q?IL5YR8+GLoXmT2NHowCu2r0vZ?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f77b47ae-9844-4105-9fe5-08dc555fa664
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Apr 2024 11:00:48.1150 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lPDPC8NluQGMvy8UNF9yMas0kNd+BE3HHDPbUDWgyHZjsVUhNQ6VPKAw6bKEakohgZ9I/eou+FwODTs+rS0wZQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6574
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
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFdlZG5lc2RheSwgQXByaWwgMywg
MjAyNCAyOjMwIFBNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENj
OiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBIb2dhbmRlciwgSm91
bmkNCj4gPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gU3ViamVjdDogW1BBVENIIHY1IDA0
LzE5XSBkcm0vaTkxNS9wc3I6IERvIG5vdCB1cGRhdGUgcGh5IHBvd2VyIHN0YXRlIGluDQo+IGNh
c2Ugb2Ygbm9uLWVEUCBwYW5lbCByZXBsYXkNCj4gDQo+IEN1cnJlbnRseSBwYW5lbCByZXBsYXkg
aXMgc3VwcG9ydGluZyBvbmx5IG1haW4gbGluayBvbiBtb2RlIC0+IERvIG5vdCB1cGRhdGUNCj4g
cGh5IHBvd2VyIHN0YXRlIGZvciBub24tZURQIHBhbmVsIHJlcGxheS4NCj4gDQo+IEJzcGVjOiA1
MzM3MA0KPiANCj4gdjI6IHVzZSBpbnRlbF9kcF9pc19lZHAgdG8gZGlmZmVyZW50aWF0ZQ0KPiAN
Cj4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5j
b20+DQoNClJldmlld2VkLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNv
bT4NCg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMg
fCAxMiArKysrKysrKy0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDQg
ZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMNCj4gaW5kZXggYmQ5OWI5OTUzMjc0Li4wN2MxZGRlYzJkODYgMTAwNjQ0DQo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBAQCAtMTkzMCwxMyArMTkzMCwx
NiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9wc3JfZW5hYmxlX2xvY2tlZChzdHJ1Y3QNCj4gaW50ZWxf
ZHAgKmludGVsX2RwLA0KPiAgCWlmICghcHNyX2ludGVycnVwdF9lcnJvcl9jaGVjayhpbnRlbF9k
cCkpDQo+ICAJCXJldHVybjsNCj4gDQo+IC0JaWYgKGludGVsX2RwLT5wc3IucGFuZWxfcmVwbGF5
X2VuYWJsZWQpDQo+ICsJaWYgKGludGVsX2RwLT5wc3IucGFuZWxfcmVwbGF5X2VuYWJsZWQpIHsN
Cj4gIAkJZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sICJFbmFibGluZyBQYW5lbCBSZXBsYXlc
biIpOw0KPiAtCWVsc2UNCj4gKwl9IGVsc2Ugew0KPiAgCQlkcm1fZGJnX2ttcygmZGV2X3ByaXYt
PmRybSwgIkVuYWJsaW5nIFBTUiVzXG4iLA0KPiAgCQkJICAgIGludGVsX2RwLT5wc3IucHNyMl9l
bmFibGVkID8gIjIiIDogIjEiKTsNCj4gKwl9DQo+ICsNCj4gKwlpZiAoaW50ZWxfZHBfaXNfZWRw
KGludGVsX2RwKSkNCj4gKwkJaW50ZWxfc25wc19waHlfdXBkYXRlX3Bzcl9wb3dlcl9zdGF0ZSgm
ZGlnX3BvcnQtPmJhc2UsDQo+IHRydWUpOw0KPiANCj4gLQlpbnRlbF9zbnBzX3BoeV91cGRhdGVf
cHNyX3Bvd2VyX3N0YXRlKCZkaWdfcG9ydC0+YmFzZSwgdHJ1ZSk7DQo+ICAJaW50ZWxfcHNyX2Vu
YWJsZV9zaW5rKGludGVsX2RwKTsNCj4gIAlpbnRlbF9wc3JfZW5hYmxlX3NvdXJjZShpbnRlbF9k
cCwgY3J0Y19zdGF0ZSk7DQo+ICAJaW50ZWxfZHAtPnBzci5lbmFibGVkID0gdHJ1ZTsNCj4gQEAg
LTIwNDEsNyArMjA0NCw4IEBAIHN0YXRpYyB2b2lkIGludGVsX3Bzcl9kaXNhYmxlX2xvY2tlZChz
dHJ1Y3QgaW50ZWxfZHANCj4gKmludGVsX2RwKQ0KPiAgCQkJCSAgICAgQ0xLR0FURV9ESVNfTUlT
Q19ETUFTQ19HQVRJTkdfRElTLA0KPiAwKTsNCj4gIAl9DQo+IA0KPiAtDQo+IAlpbnRlbF9zbnBz
X3BoeV91cGRhdGVfcHNyX3Bvd2VyX3N0YXRlKCZkcF90b19kaWdfcG9ydChpbnRlbF9kcCkNCj4g
LT5iYXNlLCBmYWxzZSk7DQo+ICsJaWYgKGludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkpDQo+ICsN
Cj4gK2ludGVsX3NucHNfcGh5X3VwZGF0ZV9wc3JfcG93ZXJfc3RhdGUoJmRwX3RvX2RpZ19wb3J0
KGludGVsX2RwKS0NCj4gPmJhc2UsDQo+ICtmYWxzZSk7DQo+IA0KPiAgCS8qIFBhbmVsIFJlcGxh
eSBvbiBlRFAgaXMgYWx3YXlzIHVzaW5nIEFMUE0gYXV4IGxlc3MuICovDQo+ICAJaWYgKGludGVs
X2RwLT5wc3IucGFuZWxfcmVwbGF5X2VuYWJsZWQgJiYNCj4gaW50ZWxfZHBfaXNfZWRwKGludGVs
X2RwKSkgew0KPiAtLQ0KPiAyLjM0LjENCg0K
