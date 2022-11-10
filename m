Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 418EA6243DB
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Nov 2022 15:10:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FB0010E6FC;
	Thu, 10 Nov 2022 14:09:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEF6C10E160
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Nov 2022 14:09:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668089395; x=1699625395;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=6e0jFgarcSfekjhPMYcs/40tUX5udpde9kumqMyrugY=;
 b=YZS06n2JMiQ8XNJ2JubFxq0hQ2O+1O5brf/IdiZD65d3+py8J59RK/cz
 LLMArtlgt38CTkJhAeTy/SpwCSaNi1ZppfqH27cK0x0SECTFi3Qn2Xnrx
 ILIYMphL9lOVVOuJ5i8HnJRecwwbYm6ETObgwzt7hYbepQfNu0hMTIcnn
 /b2Ojrln6za+irsD6zOQBsoCGIKarqVuLCHNd8m4IyzXQAiLeH60+CXUG
 Aoiw6n4j2MR0j0wCbUfZR0YeGkM5T2VLswC5f0bqBqtxzEt5lO4fm2gHN
 HEUwjNz7bmDn0odRrwXWg5HSfWTfjU3d+phxB9dmvS72K0wGD6QsL60jp g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="397610001"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; d="scan'208";a="397610001"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 06:09:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="966420118"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; d="scan'208";a="966420118"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga005.fm.intel.com with ESMTP; 10 Nov 2022 06:09:55 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 10 Nov 2022 06:09:54 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 10 Nov 2022 06:09:54 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 10 Nov 2022 06:09:54 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 10 Nov 2022 06:09:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AFrolWiQwrtMJr8pc8oNt4DbpqbK2ZEaoScFTu3zKLZ5CJ4H3tb1mcqlejram0tCCoUbO8PM9LBF8t3cJW4OVekv6m6WfuKYC6aocH9ouOQPYXgHCOhUxzjn0utZWM6/fweXYBQBqSH8Olf9pcFEnP6sDEgptEAyR1Qf+rP+LpdcRF0UATSlV/ReqELbQevU7wHLKoI+/cY+FemI8bFAk0bgpJmyDkIxgU0Xr6iFekC4M3O774o+f3V7XeKm6bJzi75VFVg7fO3mj5z53TvLnJ+0e74UAfv5rrQRpNYgNyZ4S833te1Y8nPkqlE6MUCXb5IJ8CcDdChar6sCczdToQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6e0jFgarcSfekjhPMYcs/40tUX5udpde9kumqMyrugY=;
 b=miyvatVGm3EaO9LfisvfCr2W2SGlhn3tNhYzTNb0kLlRHMRkiUpBSsM9q4BPfpOdm8ahid479dSvTI6x1Gqo/W3y3+R1PFBdxKNu4v4ATLITAzI94iLBhx3JOo1Y3ltmlQ+1672/uOtNxDw6GXV0SKmdaPJH5DhzUZOWkkZDCuyuT17PwtXsxhkrWyheMrFVpdP/gV9EPHiAj4yuvMcSnqVShrdtv04HNbx920QkrZjAy6BxfsFf7zE4YhIVcCBuFx/Y0pwptRBexr0HmBb6vbGNl3KPfUNsQ27wp3krRD4BpFod0giVs1LQ+wIEtUcCcgmgRWMf2n8JtqheionbfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by CH0PR11MB5265.namprd11.prod.outlook.com (2603:10b6:610:e0::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.13; Thu, 10 Nov
 2022 14:09:52 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::4b94:7187:5dcf:24b3]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::4b94:7187:5dcf:24b3%9]) with mapi id 15.20.5791.027; Thu, 10 Nov 2022
 14:09:52 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 5/6] drm/915: Extend dual PPS handlind for ICP+
Thread-Index: AQHY9CzUx8ZBUc/tI0+eYzykTly1AK44MTbw
Date: Thu, 10 Nov 2022 14:09:51 +0000
Message-ID: <PH7PR11MB5981926F7D82ADFC0E78A52CF9019@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20221109111649.23062-1-ville.syrjala@linux.intel.com>
 <20221109111649.23062-6-ville.syrjala@linux.intel.com>
In-Reply-To: <20221109111649.23062-6-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|CH0PR11MB5265:EE_
x-ms-office365-filtering-correlation-id: 1d7c83db-6752-438d-bc77-08dac3253c57
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8AdR8Dy0mpW6IoU4CVJPdy9QmcBbvaxcU9K/QemRx/E5bH2d1bxEmw01f0Vt2Am413+SvxaTd8I8Dcqp7blPt9f93ho3hynt0p06aLokbsMSomRrm+Sse62Qk0C4x4IPNmDK8+P1cNcoHjYUXxIUeObOPN1fC1RJHNEVxkV6lZUXoEmqai863kO+jhyoNlwAg5yBhCHUkFO1olgvZvKobXJhHIVW+thlEzI1VlQUv35z2wTdHvivNhxM23QfRv1kabiV1OYnfSRGfq6cxSAuy/s9OS58u5ltdq8aBkrMzvebwJnv2y8d5Gbk9FOG6YTflP+9vtAIFW2mehUeqfZxC95I6hQEbKRaDxlUT+PdcRimI3EHSeaYSOakcQY1uxDfN2W5N9pThz6gwwPcrlG5ft1VFh5n3u2HKm4LeggbYS69TbRHAjMrVlfE7pfp3l2e1ZeR9HC4bp4JoDjnHQyTZudx1QmPRJUrRK9DbybNcqt68y5JRLZUE/W6VcTZJhIpauxsd0WvvkOgvK7DKor4ZWW2cKfbomZpNrVAphw30oP0I5d6vumPgQBh9pnT2Ib7OvupW31MDe6ZIseICActEl03yrmhnL2IiiXB/Q1G8W20kFqBkBE9LxW54HPKjMXYGzaTI87nVjroGpgUBT3RsBgrQJ8MTqX/4yzrNbQXDQYiWp/1fPnqLBrwrd22QL9Lug+ld6ld4tjK2tqFWFOEPcfsAYmvYFS17UX3aRi5ZTJYRyOmnjSEDbB8yhvzt/I373Ag3UXmtSGtbuGIl/7oWw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(346002)(136003)(39860400002)(366004)(376002)(451199015)(316002)(6506007)(7696005)(110136005)(52536014)(53546011)(8936002)(83380400001)(33656002)(186003)(5660300002)(2906002)(55016003)(66574015)(8676002)(64756008)(66946007)(55236004)(66476007)(66556008)(76116006)(66446008)(41300700001)(9686003)(26005)(86362001)(82960400001)(38100700002)(71200400001)(478600001)(38070700005)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WVJLUUZaM0NGWGo0dEpGcERmZDVUVHpoUXNmUVpwcUFFL0sremtRV3lFRDlv?=
 =?utf-8?B?NU92NXMzVnJjNG1kbmlTQ0FiMzhLdzduZ1pOQm84SW05T0RIakJLQ1o1dHg5?=
 =?utf-8?B?WEdheDY2eXVjOTFHbTFNZ1VKLzBFVm5BSnVyWXlmeEVIVEUzSTNESVh4ZmdU?=
 =?utf-8?B?NU9NUVdjelpjK2xiTlVlWXlXVHJpTE5iV2dzMlZ4dS9JRnRiM05XQWxlcTJW?=
 =?utf-8?B?WGJISE92Njg1OUZuTFpwQ0ZTc3gyNXJZZmRhcHBiU2l4dDBQTjhWMzJHYTZY?=
 =?utf-8?B?ZEY1OXZ0YWZpWGYrMWtzS3RHLy90Titrb0svK2ZTQ2xiUEYxVyt2WkIwVWFq?=
 =?utf-8?B?aWcySnoxbmU0NEh2akM1RUp3d2wvR01hNW9UekxoUVIybXRVOEJKYWYyeTBu?=
 =?utf-8?B?VnI3T1Z4cUpaY2doYnYwdUVERlQ4aWlnbnJ3dEU2aEsyTE1tMFp0WHV6NEhU?=
 =?utf-8?B?dEl3QVJUUXNvMEE3K095LzFoNkswOWdFelhlbm8rdndLU3dhaDI5SGdGZ3Iw?=
 =?utf-8?B?ZkthVldUd1ZqUWpoV0owbDZ6a3JtNm1QN0pQYXRleEpWT3dZMDRuYW1pcU1X?=
 =?utf-8?B?MGFkWW5NS0UwcVV1dTZScjg3cWZSSVU0ek9QbW9QVm1rU2lBUTk3eVFIRktG?=
 =?utf-8?B?NkxOZWNXcUNGU3p2ZEMvL24rajdyd1pDVjg0aFJPdlp4S2k1dVFjbVhiNFpU?=
 =?utf-8?B?eFYwcndqUngxZGsxNjdJa0VuMWRhTDkxZGw1bGRQd2Y2Y0lyVGlCL0wvZXBl?=
 =?utf-8?B?WkRkeEtoK3VHU0lHZ0VsSENYM2RuQjg4MEtIQUNacjJzcndCQXRxSVp0M1RZ?=
 =?utf-8?B?Um1EdEtsS0MxeE93MVVGQSsvWVZVVTJ4aGZINVJaZDJCdmNsdjEwbStObGE2?=
 =?utf-8?B?M001UmRtc2lxT3ZWNWRjMHJXMnVuOFVsNHlKQ1YzVkNUOWExWU9kL2tlUDRt?=
 =?utf-8?B?V21kbEx6K2o3R2o5K1M0Ylg5NVVOTnhnN0lSMHNJR1E4Tnljc3grTDk0YzVz?=
 =?utf-8?B?RGJiczhMVVpubzdZRS9ET2dzK1JSWlhZa2c4NFNkNkxMV0xncGhPNVhReDdD?=
 =?utf-8?B?cTFOVTRsbjk4enB6NWtjQ0pHdnM2bzQrQnlXOUNDRmhZNFRKZm5XVmFFamZI?=
 =?utf-8?B?Y2l4aGh4cjdndlJKSHNsbDBldWloTjIwbTVyREZ4NGJLUk0wSW9hU21WaHF6?=
 =?utf-8?B?dXA0WDhxaUxMRk9MUHJOYndwa0lDbFlKM21UcTM2ckt6R1Nrazd5dmttdE0x?=
 =?utf-8?B?UE10dnZXWG9PRFRScXhvNTJpTVcyTFlnazEwMnlkZkNrUVRieU1rVmI0V1Zn?=
 =?utf-8?B?aW96Y0c5QjZNL1VOSE5NcnVGVFpzTXJsOWEwYnM3a1dkYlJRSEd1QmgzY3Ru?=
 =?utf-8?B?QkowNFpsaU94NTBlbC90OEY3SkRKaDVGbTFZRGpkTEEwU1ZrZFFCd1VzbDRK?=
 =?utf-8?B?b2w5ZE10NDlIOTJ6WFVZR04vNGFTcUpHTTBZS251OVhVdkh3WXNiajJyYlNu?=
 =?utf-8?B?cFkrM0k2dklSNHAzVkh3NWE5SmJvamVsNmFrZ2w1a2F3STRkcWtPTmY3bW1M?=
 =?utf-8?B?Y25VdzBhWmIrOEpmVVFxRWxDK0o5aVNCdWhDMGptNnNqSkIxWnJURU01QVFE?=
 =?utf-8?B?bG9BMEY4WlRvd3NpKzQrYnVTUHNqakE2U3FUVk1wU0QrNWlaem5wNHNXT2pw?=
 =?utf-8?B?UWh5MnlZM1N4MXRad2NqTjBGTXhZUE5tcExwWXdvVkxIcEQ3UDE0QlMxblp3?=
 =?utf-8?B?OHVFdU5qZit0MHh3MHcwOWUvclJObUE1TG5KaXM3TDc5a0twK0NVRUljMWZo?=
 =?utf-8?B?L29hTWFmT1d3ZCt5TjFBYVpQeXljUmcyL2NjK2VvbHg4d2hzZnh4Z3lDMUUz?=
 =?utf-8?B?QnpMelBlNFBwUFplMWZXL1RwZnd4Uzd2dXc1NS9oWjNxWlFKVmVKR1BJRzB2?=
 =?utf-8?B?TTNtelZPaVNmdmhYNW10M293dndyK0UzV2labmdmYkRESzZubXVFSDljMStE?=
 =?utf-8?B?SXI2Vm1kdW9zK01WQ3YwL3ZDTnZTZEVDSFEva2l3elpDMmtRTUdReWhQYWkr?=
 =?utf-8?B?WWxtZmFQbXArWGxFRXJhV3htU28vS0ZpaG14bTFJdkgxRml1eFp1cmZZM1U2?=
 =?utf-8?Q?KA41vG9K2RNCvBBWp9BslIXvc?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d7c83db-6752-438d-bc77-08dac3253c57
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Nov 2022 14:09:51.9623 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ABG6AOTCtKlevFuX9ONWknVFMI5mWTIG6VowluF/G9jhlh/+rbrzeFEeHAPVChsbgbtp2wUjGNaNfj6tNBPvyQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5265
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/915: Extend dual PPS handlind for
 ICP+
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogVmlsbGUgU3lyamFsYSA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IFNlbnQ6IFdlZG5lc2RheSwgTm92ZW1i
ZXIgOSwgMjAyMiA0OjQ3IFBNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
DQo+IENjOiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQo+IFN1Ympl
Y3Q6IFtQQVRDSCA1LzZdIGRybS85MTU6IEV4dGVuZCBkdWFsIFBQUyBoYW5kbGluZCBmb3IgSUNQ
Kw0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4NCj4gDQo+IE9uIHRoZSBQQ0ggc2lkZSB0aGUgc2Vjb25kIFBQUyB3YXMgaW50cm9kdWNl
ZCBpbiBJQ1AuIExldCdzIG1ha2Ugc3VyZSB3ZQ0KPiBleGFtaW5lIGJvdGggcG93ZXIgc2VxdWVu
Y2VyIG9uIElDUCsgYXMgd2VsbC4NCj4gDQo+IE5vdGUgdGhhdCBERzEvMiBzb3V0aCBibG9jayBv
bmx5IGhhcyB0aGUgc2luZ2xlIFBQUywgc28gbmVlZCB0byBleGNsdWRlIHRoZSBmYWtlDQo+IERH
MS8yIFBDSHMuDQo+IA0KPiBDYzogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5j
b20+DQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wcHMuYyB8IDE1ICsrKysrKysrKysrKy0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDEyIGluc2Vy
dGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wcHMuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHBzLmMNCj4gaW5kZXggZmY0ZjFkZWY1OWQyLi5mM2FjNGVlZTRkMzkgMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHBzLmMNCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wcHMuYw0KPiBAQCAtNDAx
LDYgKzQwMSwxNSBAQCBzdHJ1Y3QgcHBzX3JlZ2lzdGVycyB7DQo+ICAJaTkxNV9yZWdfdCBwcF9k
aXY7DQo+ICB9Ow0KPiANCj4gK3N0YXRpYyBib29sIGhhc19kdWFsX2J4dF9wcHMoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUpIHsNCj4gKwlpZiAoSVNfR0VNSU5JTEFLRShpOTE1KSB8fCBJ
U19CUk9YVE9OKGk5MTUpKQ0KPiArCQlyZXR1cm4gdHJ1ZTsNCj4gKw0KPiArCXJldHVybiBJTlRF
TF9QQ0hfVFlQRShpOTE1KSA+PSBQQ0hfSUNQICYmDQo+ICsJCUlOVEVMX1BDSF9UWVBFKGk5MTUp
IDwgUENIX0RHMTsNCj4gK30NCj4gKw0KPiAgc3RhdGljIHZvaWQgaW50ZWxfcHBzX2dldF9yZWdp
c3RlcnMoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gIAkJCQkgICAgc3RydWN0IHBwc19y
ZWdpc3RlcnMgKnJlZ3MpDQo+ICB7DQo+IEBAIC00MDksNyArNDE4LDcgQEAgc3RhdGljIHZvaWQg
aW50ZWxfcHBzX2dldF9yZWdpc3RlcnMoc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCwNCj4g
DQo+ICAJbWVtc2V0KHJlZ3MsIDAsIHNpemVvZigqcmVncykpOw0KPiANCj4gLQlpZiAoSVNfR0VN
SU5JTEFLRShkZXZfcHJpdikgfHwgSVNfQlJPWFRPTihkZXZfcHJpdikpDQo+ICsJaWYgKGhhc19k
dWFsX2J4dF9wcHMoZGV2X3ByaXYpKQ0KDQpwcHNfaWR4IGFsd2F5cyB3ZSB3aWxsIGJlIGdldHRp
bmcgYXMgMCBoZXJlIGFzIG1lbnRpb25lZCBpbiBwcmV2aW91cyBwYXRjaC4NCiANCj4gIAkJcHBz
X2lkeCA9IGJ4dF9wb3dlcl9zZXF1ZW5jZXJfaWR4KGludGVsX2RwKTsNCj4gIAllbHNlIGlmIChJ
U19WQUxMRVlWSUVXKGRldl9wcml2KSB8fCBJU19DSEVSUllWSUVXKGRldl9wcml2KSkNCj4gIAkJ
cHBzX2lkeCA9IHZsdl9wb3dlcl9zZXF1ZW5jZXJfcGlwZShpbnRlbF9kcCk7DQo+IEBAIC0xNDc4
LDcgKzE0ODcsNyBAQCB2b2lkIGludGVsX3Bwc19pbml0KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxf
ZHApDQo+ICAJcHBzX2luaXRfdGltZXN0YW1wcyhpbnRlbF9kcCk7DQo+IA0KPiAgCXdpdGhfaW50
ZWxfcHBzX2xvY2soaW50ZWxfZHAsIHdha2VyZWYpIHsNCj4gLQkJaWYgKElTX0dFTUlOSUxBS0Uo
aTkxNSkgfHwgSVNfQlJPWFRPTihpOTE1KSkNCj4gKwkJaWYgKGhhc19kdWFsX2J4dF9wcHMoaTkx
NSkpDQo+ICAJCQlieHRfaW5pdGlhbF9wb3dlcl9zZXF1ZW5jZXJfc2V0dXAoaW50ZWxfZHApOw0K
PiAgCQllbHNlIGlmIChJU19WQUxMRVlWSUVXKGk5MTUpIHx8IElTX0NIRVJSWVZJRVcoaTkxNSkp
DQo+ICAJCQl2bHZfaW5pdGlhbF9wb3dlcl9zZXF1ZW5jZXJfc2V0dXAoaW50ZWxfZHApOw0KPiBA
QCAtMTUxMiw3ICsxNTIxLDcgQEAgdm9pZCBpbnRlbF9wcHNfaW5pdF9sYXRlKHN0cnVjdCBpbnRl
bF9kcCAqaW50ZWxfZHApDQo+IA0KPiAgCXdpdGhfaW50ZWxfcHBzX2xvY2soaW50ZWxfZHAsIHdh
a2VyZWYpIHsNCj4gIAkJLyogUmVpbml0IGRlbGF5cyBhZnRlciBwZXItcGFuZWwgaW5mbyBoYXMg
YmVlbiBwYXJzZWQgZnJvbSBWQlQNCj4gKi8NCj4gLQkJaWYgKElTX0dFTUlOSUxBS0UoaTkxNSkg
fHwgSVNfQlJPWFRPTihpOTE1KSkNCj4gKwkJaWYgKGhhc19kdWFsX2J4dF9wcHMoaTkxNSkpDQo+
ICAJCQlieHRfcHBzX2luaXRfbGF0ZShpbnRlbF9kcCk7DQo+ICAJCW1lbXNldCgmaW50ZWxfZHAt
PnBwcy5wcHNfZGVsYXlzLCAwLCBzaXplb2YoaW50ZWxfZHAtDQo+ID5wcHMucHBzX2RlbGF5cykp
Ow0KPiAgCQlwcHNfaW5pdF9kZWxheXMoaW50ZWxfZHApOw0KPiAtLQ0KPiAyLjM3LjQNCg0K
