Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFEFE45CB23
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Nov 2021 18:37:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57A976E917;
	Wed, 24 Nov 2021 17:37:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF56D6E917
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Nov 2021 17:37:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10178"; a="298738532"
X-IronPort-AV: E=Sophos;i="5.87,261,1631602800"; d="scan'208";a="298738532"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 09:37:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,261,1631602800"; d="scan'208";a="509963076"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga008.jf.intel.com with ESMTP; 24 Nov 2021 09:37:05 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 24 Nov 2021 09:37:05 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 24 Nov 2021 09:37:05 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 24 Nov 2021 09:37:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dVePPWPLllsbVgEzTXk2ofFyoheP/FBzokhxe4d5Vmdoj3KsOzadk73q065XUsqU7e83rZ0rexdExB8EzZF4RJn2RohWdp8iXSiRgg97VZwdThvUKC0y/qwjypjC+K0hybHTbFqDo0qCm0onoGYJAq0pU12HIxAca38m5zJaRkrfpZVSwyiV7IXrHZIN4NVGQQ5zJYwJdPp1Uv1IJdfrU1+m2PrA4ZCD3Y0Qn0mMCa4zttXZt63/YPYc3p7kZu0Hzf2CnNzm2dhy6JZK/lixN86cC1kSLnU3KAHBCJPCPoHIH1mo0MkvzbmI5BIF+HXzv6qMHW9PPUXt/U82oO1lQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mvSAGzF3BpSkfIHO0ipUXu+IP4nJDrAXejipDTPd99c=;
 b=l+WoiW18Gwk7ZcKsNGxIT5OldwLBgE4TeAIrmFTZpxh16vkE6Ol4L1b8Q2TIHIk68zRZEYOfa69l+O1gXWTIDkqwz66+Sz1TWhYXV5W/2kFLcRPgv0A75QvGZok4NKm4/IWKG6W6G+cyspU/e8SGilIGTsVroCfFK8cTkQTIHSWGKN+wILIjIlh1ao4IGaALSEqCrHhsVPy0UTXgqWwPFUZQpY8xZbkVG1IJDCkuFclXZAHR72AQb36oF9Gh2TGgR9Pt+WfLMnjOil80wu9x7R/R9tZDbA+KFXoHXVIkHaK+BfMpYWv2pmPY/uMKmB5mnxONbhN5Rx4xaBtvLR038g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mvSAGzF3BpSkfIHO0ipUXu+IP4nJDrAXejipDTPd99c=;
 b=pXFgm4EVqvexaR/O0uOtHocqsvY7jjGbIOSJBR/gevtlPWBHeFshvs1l6aK5/vxulWmBri4sovnkxlwMR9irckJJNPX9O6MH4baW8nLNghvNLiHEiCaO4ql/QBPpzgJ2cZFg5RzPf5Y1pHim4r2iHHosn6Fr/zkgC2IyBExbGns=
Received: from BYAPR11MB3784.namprd11.prod.outlook.com (2603:10b6:a03:fe::10)
 by SJ0PR11MB5894.namprd11.prod.outlook.com (2603:10b6:a03:42a::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.10; Wed, 24 Nov
 2021 17:37:03 +0000
Received: from BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::2d25:f356:ac1e:ff14]) by BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::2d25:f356:ac1e:ff14%6]) with mapi id 15.20.4690.027; Wed, 24 Nov 2021
 17:37:03 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Thread-Topic: [Intel-gfx] [RFC 2/7] drm/i915/guc: Update GuC ADS size for
 error capture lists
Thread-Index: AQHX3/UdnUUo4tOgtUe/AX5UZn/RNqwSdgoAgAB+KwA=
Date: Wed, 24 Nov 2021 17:37:03 +0000
Message-ID: <73c87ded763d47a82aea19c3a653ee71ec1ca7e3.camel@intel.com>
References: <20211122230402.2023576-1-alan.previn.teres.alexis@intel.com>
 <20211122230402.2023576-3-alan.previn.teres.alexis@intel.com>
 <87czmpn9zh.fsf@intel.com>
In-Reply-To: <87czmpn9zh.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1a2ba69e-8c09-4166-110b-08d9af710709
x-ms-traffictypediagnostic: SJ0PR11MB5894:
x-microsoft-antispam-prvs: <SJ0PR11MB5894E4E927DE16EDCD90913B8A619@SJ0PR11MB5894.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vWuJSaq0BRMz0tw+GmS4+MXbxihEMXfYc4wmc5TjOyI5/AOGM43xSBvxjG/klmRwIIojT6coV3Jzg18qxn77FC3mziH2eDM05VjQXpUr8fCnCimBs8uDm5S+c5uWqK4ZW7droj7a/eZVir/Trlf9iBOE5GOR6d5MqJmt9WUX8sZ1AQ6uFacYRPto8GqmIfD4p6+ko1Hsh5T4YBQmdwfiEM5ho3XCwI2FILYIXL3o5Gj0+iKZztXTY1ZAFMEFxpLbv6yq5kgFFPbwRcu9SRjLGRSFvN5h5l8brDL8xdJQrzuvu6DI6gDJ+DbZW68owUMQsxqJ/KYMtOE6Gbu5ZLi6XGPFOATrWtui5AOgNaXuGYJMo0lba/JKoIihU9vYyOyQs9gHV4IMpMmjjVVxTBE2oWE00ulAdOSIhYJXw6/ey6ACb+SAUiP/izFdAWrkETDSIThlO2s8+udPi8fPFvcgvVr5xJr74mTKUY4+t8JqB8NPKSvUlcLQntprZM2gowqmAfGMP/yYo/Gq72i5+IwY5XOYiwmNqD2A9LSdmXqkdM0bkWZexHGqVMAccphg7woil6m6XbSEmtUbbEiKU1/GOCNK0liHqiyeLiwQXHZvGfuvDS7D1j2GmKnME+bOFyQ/rj0eAA++GiCQRfv/oc9H+8BlgEE3flidp4Wgsv1FGV90S6BWfJkT5fc6EVQK1+/+Vcb2nLLaTAESQLsn4daVkw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3784.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(86362001)(71200400001)(38100700002)(508600001)(122000001)(2906002)(38070700005)(5660300002)(6506007)(66946007)(66476007)(66556008)(64756008)(66446008)(76116006)(316002)(26005)(4001150100001)(6512007)(2616005)(6486002)(36756003)(110136005)(8936002)(82960400001)(8676002)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aDk2a1AxYzFOUHRmLzdCbis2ZnpEV3RZU0NmczJIekxCTXgwV2F4YXF3QU83?=
 =?utf-8?B?d3hSekxXK1o2ejdwNFR2bnF0N2taUHVrbmtLWitXUXJIU1ZVSGlseUx6V1FB?=
 =?utf-8?B?QlYxaHovVUJ4UFc5NDdUbEtQa1ZnbHBRdWt2aDdZL3FlYlFMd0phOG13TUVC?=
 =?utf-8?B?bnBCYlRnRDdZdXYveSs0Y0tva0VrZlR1YlkwVkZaYS9SWVFaOHQyK3lhT3Nr?=
 =?utf-8?B?NFRpY0NmMXFCR1NSUXdNa2NhWjRYZDQydW9qUGhpZHhzWUl0N1ZRVnFOcHMy?=
 =?utf-8?B?ajQrM1NpRnBHanNUUEExKzdqV08xOGIxVm0zTHRXQmQ2bnhXYlZPdHNJQVRa?=
 =?utf-8?B?aTg2dnZRT3dHUmNIWllnejJ5TnVxZkV6Nkl0aDlYaDVFbWtvOFkxaXo0WDBE?=
 =?utf-8?B?SDNzRGxteEtMQThaSzFrNFIrdEgrUnFuZ2FkMjliZ3NUbVhHeUxabFdoQmV3?=
 =?utf-8?B?NHh6ZUJiOE9TcXl2UktlZFBuWmE0SWp5bFBjWDhFWUcvaVRSZUxmdUVGSkFD?=
 =?utf-8?B?N1lUUHRSRUd6ajZsNmtDN0RrOTRMVjZjTjdZVjAyVVhUUUVpOHBNYkZvWE5r?=
 =?utf-8?B?MmgzRHd4Y3RLLzM3bTNVV1JXaHZJREdmTFFqaFNVakdaT2t5OUUyQlRmZEhq?=
 =?utf-8?B?d0dXZlBvblB4bWZlVFY1WWxlaVpBVjYrTlEwY1NWYWhiMlNLV0dPcE5GdjJG?=
 =?utf-8?B?VzYweVFSNk9jbWZyQWc5SnIrV0lpUnRTWUxRZHB5dWovMkVtSHh4OXI1K3R3?=
 =?utf-8?B?MCtkbG1WZzN4c0F5Zkt3Z21YNVBmVU9HMzQ2ZXVCK2tzL0ZSU3JKVGYwUkhn?=
 =?utf-8?B?VlY5SHRITkhzbmUyMUljNGJ1YWNPTUNRVFc1Q2p2MklDV0o4VzhUMXQvNDly?=
 =?utf-8?B?cW82cThmR0cxbGpMTzJqSkdaU2pLaWR6QjFsZnE3cjBZK0E5T0tvQ3RBSWI1?=
 =?utf-8?B?dUhXUk9YZGxvLzJXclNLaDdQOEp2OVJ5NW9vd1gxV2w4YTdRdm9vYkRSbmp0?=
 =?utf-8?B?RW5sblBHYSt1Z0gyVGY0Ykh3SWxvd25XcHFYTHVsTHRKdU01MGQvZ0QrSWkr?=
 =?utf-8?B?eU9XUGdEVVI3MHMwTDZHQlMxWGdSNmFUNHFTOE5lMFJLZnUwSjhNa0tINnNk?=
 =?utf-8?B?bnZ0QTZCRm5GRWtmbWxuR1EyMjc3R3JleDJ4SE8xTGRNKzFqaUZYNHUyL1k5?=
 =?utf-8?B?MUJGNFZEUUdUd2VFK2xWV0xhcVVEOVZYYVdnNU9DSDArTUR0SWlIbGVHZ0Rj?=
 =?utf-8?B?TlhVZ2dwZmZyTGpqZlF4bkluSGJrVGU3ZjUwa1pLLzdRUDhaekJlS0Q3a3ND?=
 =?utf-8?B?OGdES3BvK1dLc1BXck8wMUJmRzhRRk5veWhyTDdNUDlNcTIrbmFVSFB6Yk1l?=
 =?utf-8?B?OGczTEY0eVZjMkIwSEw0VWVRUVFDeXhncFVSUWhmaUdiZGNhdXRleEFLb0h1?=
 =?utf-8?B?ZWZQTXgzMWpmWnpnMGUwQU9iVU1rNU1iN0NrMnphdTJDR1FBYXpoOEgzUGlw?=
 =?utf-8?B?RklQZk1SL3JaV2k1ejdqTkw4ZGVtM1lsak8wQUZKTFFyRjd6T2hES3ZnK2NQ?=
 =?utf-8?B?dHltMm5YMS9pRE8xUm9EcFg5VVZoZmdzL3RNaiswZ3Yxekhud240YVE2N3px?=
 =?utf-8?B?NnovcjVrd1V0SzNsbnRxVHhpa20rdHl4ampvSE5XdlF5clFXQkRXSzNhUHF4?=
 =?utf-8?B?d0dMTTEzNzM5djRMZVJLWDIrTkVaSDN1SzIzcGl2OGIyZVlpQWoyVEsvd3F4?=
 =?utf-8?B?ZTJScWpoSGRkZk1Xc1k3a3FuQ0NxaXBIb1YrNUZaSHlWSmQrMTFweXBUb2lQ?=
 =?utf-8?B?dW9WMi9WaU9iN3N5TW5FU0o5d1Rsc2lmODlRbThJTjZ3N3FDaGJiQ2lNT0VB?=
 =?utf-8?B?YnMxakNoUkRuSllyR2pxeEM0RWxFU2tia2VDZGdaRWV3NSs0Qm0ySnhUTTRZ?=
 =?utf-8?B?Z0dDNDF2RzhueVo3blJuQ2NjaGRla2dKeitUZzE2R2l5d1VYVll2cDhvUDdP?=
 =?utf-8?B?RmdadjBSNHQ0WTUvUllYRDB4RVMyU1hVL21sdXF0RVFac2dvTmswVGRQQ1dF?=
 =?utf-8?B?WUs5OTFpR3VGWmhpUjMxd2VaRWJ4bUZRMFRCaWZJUnc0OWNoQy9DRWtXU2sv?=
 =?utf-8?B?ZHFxZ3ZjUWJPTlZPTVFKaGwwS3U1SGkvNlV6NE9JcDQ4RFFNSmNVSm5WVmVp?=
 =?utf-8?B?U2Y5ZmhRMGpSOWJQWnRBOTE1K0tlMHhlR3lkcGJ1ck1VYW92R1p2NFFLTXhx?=
 =?utf-8?B?MU8veVQ0djNaUGpwemRVVTI4WkJxWGdZMU14bTd1Z3F3MkpHU2o1cmtESDdB?=
 =?utf-8?B?QkhyaWQ3RzRFSERKZVA5dUtwbm1QMVFudHh5UVBhTzJpSkxSNjBXZz09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <8BEF0414375F9945B9E9D3F2AEF5412F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3784.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a2ba69e-8c09-4166-110b-08d9af710709
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Nov 2021 17:37:03.2306 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aQIe1NdXuJXKAX+IvJwyOhHaCMF+eKKxZu80yI1wIi9yQjsAxDzAqD6XnC2XdX9a7ynQ19GJWcS8LmsMQXTO+CidxWYYAtv+hgA/y85CRtKzc0KCIv2itVgBkieod+jk
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5894
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC 2/7] drm/i915/guc: Update GuC ADS size for
 error capture lists
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

VGhhbmtzIHZlcnkgbXVjaCBKYW5pIGZvciB0aGUgZGV0YWlsIHJldmlldyBvZiB0aGUgY29kZS4u
LiBhcG9sb2dpZXMgb24gc29tZSBvZiB0aGUgc3R5bGluZyBtaXNoYXBzLg0KSSB3aWxsIGZpeCB0
aGVtIGFsbC4gSSBhZ3JlZSBjb21wbGV0ZWx5IHdpdGggdGhlIGhlYWRlciBmaWxlIGNvbW1lbnRz
IC0gbXkgYmFkIG9uIHRoYXQgLSBoYWQgYWxyZWFkeQ0KbGVhcm50IHRoYXQgbGVzc29uIG9uIHB4
cCBzaWRlLiBXaWxsIGZpeCBhY2NvcmRpbmdseS4NCg0KLi4uYWxhbg0KDQoNCk9uIFdlZCwgMjAy
MS0xMS0yNCBhdCAxMjowNiArMDIwMCwgSmFuaSBOaWt1bGEgd3JvdGU6DQo+IE9uIE1vbiwgMjIg
Tm92IDIwMjEsIEFsYW4gUHJldmluIDxhbGFuLnByZXZpbi50ZXJlcy5hbGV4aXNAaW50ZWwuY29t
PiB3cm90ZToNCj4gPiArCXsNCj4gPiArCQkubGlzdCA9IGdlbjEybHBfdmVjX2NsYXNzX3JlZ3Ms
DQo+ID4gKwkJLm51bV9yZWdzID0gKHNpemVvZihnZW4xMmxwX3ZlY19jbGFzc19yZWdzKSAvIHNp
emVvZihzdHJ1Y3QgX19ndWNfbW1pb19yZWdfZGVzY3IpKSwNCj4gPiArCQkub3duZXIgPSBHVUNf
Q0FQVFVSRV9MSVNUX0lOREVYX1BGLA0KPiA+ICsJCS50eXBlID0gR1VDX0NBUFRVUkVfTElTVF9U
WVBFX0VOR0lORV9DTEFTUywNCj4gPiArCQkuZW5naW5lID0gVklERU9fRU5IQU5DRU1FTlRfQ0xB
U1MNCj4gPiArCX0sDQo+ID4gKwl7DQo+IA0KPiBVc3VhbGx5IH0sIHsgb24gdGhlIHNhbWUgbGlu
ZQ0KPiANCj4gPiArCQkubGlzdCA9IGdlbjEybHBfdmVjX2luc3RfcmVncywNCj4gPiArCQkubnVt
X3JlZ3MgPSAoc2l6ZW9mKGdlbjEybHBfdmVjX2luc3RfcmVncykgLyBzaXplb2Yoc3RydWN0IF9f
Z3VjX21taW9fcmVnX2Rlc2NyKSksDQo+ID4gKwkJLm93bmVyID0gR1VDX0NBUFRVUkVfTElTVF9J
TkRFWF9QRiwNCj4gPiArCQkudHlwZSA9IEdVQ19DQVBUVVJFX0xJU1RfVFlQRV9FTkdJTkVfSU5T
VEFOQ0UsDQo+ID4gKwkJLmVuZ2luZSA9IFZJREVPX0VOSEFOQ0VNRU5UX0NMQVNTDQo+ID4gKwl9
LA0KPiA+ICsJe05VTEwsIDAsIDAsIDAsIDB9DQo+IA0KPiBKdXN0IHt9ICBzaG91bGQgd29yayBh
cyBhIHNlbnRpbmVsLg0KPiANCj4gPiArfTsNCj4gPiArDQo+ID4gKy8qKioqKioqKioqKiogRklY
TUU6IFBvcHVsYXRlIHRhYmxlcyBmb3Igb3RoZXIgZGV2aWNlcyBpbiBzdWJzZXF1ZW50IHBhdGNo
ICoqKioqKioqKioqKi8NCj4gDQo+IFBsZWFzZSBkb24ndCBhZGQgYW55IG9mIHRoaXMgKioqKioq
KiBub25zZW5zZS4NCj4gDQo+ID4gKw0KPiA+ICtzdGF0aWMgc3RydWN0IF9fZ3VjX21taW9fcmVn
X2Rlc2NyX2dyb3VwICoNCj4gPiArZ3VjX2NhcHR1cmVfZ2V0X2RldmljZV9yZWdsaXN0KHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikNCj4gPiArew0KPiA+ICsJaWYgKElTX1RJR0VS
TEFLRShkZXZfcHJpdikgfHwgSVNfUk9DS0VUTEFLRShkZXZfcHJpdikgfHwNCj4gPiArCSAgICBJ
U19BTERFUkxBS0VfUyhkZXZfcHJpdikgfHwgSVNfQUxERVJMQUtFX1AoZGV2X3ByaXYpKSB7DQo+
ID4gKwkJcmV0dXJuIGdlbjEybHBfbGlzdHM7DQo+ID4gKwl9DQo+ID4gKw0KPiA+ICsJcmV0dXJu
IE5VTEw7DQo+ID4gK30NCj4gPiArDQo+ID4gK3N0YXRpYyBpbmxpbmUgc3RydWN0IF9fZ3VjX21t
aW9fcmVnX2Rlc2NyX2dyb3VwICoNCj4gPiArZ3VjX2NhcHR1cmVfZ2V0X29uZV9saXN0KHN0cnVj
dCBfX2d1Y19tbWlvX3JlZ19kZXNjcl9ncm91cCAqcmVnbGlzdHMsIHUzMiBvd25lciwgdTMyIHR5
cGUsIHUzMiBpZCkNCj4gDQo+IFBsZWFzZSBkb24ndCB1c2UgaW5saW5lcyBpbiAuYyBmaWxlcy4g
TGV0IHRoZSBjb21waWxlciBkZWNpZGUuDQo+IA0KPiA+ICt7DQo+ID4gKwlpbnQgaSA9IDA7DQo+
ID4gKw0KPiA+ICsJaWYgKCFyZWdsaXN0cykNCj4gPiArCQlyZXR1cm4gTlVMTDsNCj4gPiArCXdo
aWxlIChyZWdsaXN0c1tpXS5saXN0KSB7DQo+ID4gKwkJaWYgKHJlZ2xpc3RzW2ldLm93bmVyID09
IG93bmVyICYmDQo+ID4gKwkJICAgIHJlZ2xpc3RzW2ldLnR5cGUgPT0gdHlwZSkgew0KPiA+ICsJ
CQlpZiAocmVnbGlzdHNbaV0udHlwZSA9PSBHVUNfQ0FQVFVSRV9MSVNUX1RZUEVfR0xPQkFMIHx8
DQo+ID4gKwkJCSAgICByZWdsaXN0c1tpXS5lbmdpbmUgPT0gaWQpIHsNCj4gPiArCQkJCXJldHVy
biAmcmVnbGlzdHNbaV07DQo+ID4gKwkJCX0NCj4gPiArCQl9DQo+ID4gKwkJKytpOw0KPiA+ICsJ
fQ0KPiANCj4gVGhhdCdzIGEgZm9yIGxvb3AgcmlnaHQgdGhlcmUuDQo+IA0KPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfY2FwdHVyZS5oIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2NhcHR1cmUuaA0KPiA+IG5ldyBmaWxl
IG1vZGUgMTAwNjQ0DQo+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi4zNTI5NDBiOGJjODcNCj4gPiAt
LS0gL2Rldi9udWxsDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxf
Z3VjX2NhcHR1cmUuaA0KPiA+IEBAIC0wLDAgKzEsNDcgQEANCj4gPiArLyogU1BEWC1MaWNlbnNl
LUlkZW50aWZpZXI6IE1JVCAqLw0KPiA+ICsvKg0KPiA+ICsgKiBDb3B5cmlnaHQgwqkgMjAyMS0y
MDIxIEludGVsIENvcnBvcmF0aW9uDQo+ID4gKyAqLw0KPiA+ICsNCj4gPiArI2lmbmRlZiBfSU5U
RUxfR1VDX0NBUFRVUkVfSA0KPiA+ICsjZGVmaW5lIF9JTlRFTF9HVUNfQ0FQVFVSRV9IDQo+ID4g
Kw0KPiA+ICsjaW5jbHVkZSA8bGludXgvbXV0ZXguaD4NCj4gPiArI2luY2x1ZGUgPGxpbnV4L3dv
cmtxdWV1ZS5oPg0KPiANCj4gQm90aCBvZiB0aGVzZSBzZWVtIHJhbmRvbSBhbmQgY29tcGxldGVs
eSB1bm5lY2Vzc2FyeS4gbGludXgvdHlwZXMuaCBpcw0KPiByZXF1aXJlZCBidXQgaXQncyBub3Qg
aGVyZS4NCj4gDQo+ID4gKyNpbmNsdWRlICJpbnRlbF9ndWNfZndpZi5oIg0KPiANCj4gSSd2ZSBi
ZWVuIHRyeWluZyBoYXJkIHRvIHJlZHVjZSBpbmNsdWRlcyBmcm9tIGhlYWRlcnMgdGhyb3VnaG91
dCB0aGUNCj4gZHJpdmVyLCB0byBjbGVhbiB1cCBhbmQgY2xhcmlmeSB0aGUgaW50ZXJmYWNlcyBh
bmQgZGVwZW5kZW5jaWVzLiBJIGRvbid0DQo+IGtub3cgaG93IHRoZSBndWMgaGVhZGVycyBoYXZl
IGdyb3duIHRoZSBraW5kIG9mIGludGVyZGVwZW5kZW5jaWVzIHRoYXQNCj4gdGhleSBhbGwgcHVs
bCBpbiBhbG1vc3QgZXZlcnl0aGluZy4NCj4gDQo+IFRoaXMgb25lIGxpbmUgcHVsbHMgaW4gYW5v
dGhlciAxOSBoZWFkZXJzLiBKdXN0IHRvIGdldA0KPiBHVUNfQ0FQVFVSRV9MSVNUX0lOREVYX01B
WCBhbmQgR1VDX01BWF9FTkdJTkVfQ0xBU1NFUy4gRXZlcnl0aGluZyBlbHNlDQo+IGNvdWxkIGJl
IHNvbHZlZCB0aHJvdWdoIGZvcndhcmQgZGVjbGFyYXRpb25zLg0KPiANCj4gQlIsDQo+IEphbmku
DQo+IA0KPiANCj4gPiAgCXN0cnVjdCBndWNfbW1pb19yZWdfc2V0IHJlZ19zdGF0ZV9saXN0W0dV
Q19NQVhfRU5HSU5FX0NMQVNTRVNdW0dVQ19NQVhfSU5TVEFOQ0VTX1BFUl9DTEFTU107DQo+IA0K
PiAtLSANCj4gSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcg0K
DQo=
