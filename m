Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A90FF7C4F50
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 11:43:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8724010E602;
	Wed, 11 Oct 2023 09:43:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E6C110E602
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 09:43:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697017426; x=1728553426;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=rIXLzJ8U/1UaKxno+YK/awXjV700DbDCvHuv+OquKyY=;
 b=QpDHp3xh86hR2N6hQ2v9KVli7IQnbBdgknlg9AzShl01QWeJdLxLyb3j
 pjle3t+HYPxgg3y2TWHnW+qTuXTFFlVVQJjGLtyrc++l/EassFhPc8BLr
 hDKw9E/BLA6OCzNNYd4PZ21I9dNLAglk2dji8vy+fdlrzbCPPWnIFexKg
 80oMxCIeAGSrL7w15snLPLq5C30vS2V6bcJhy7R9xJ61wMlbI6NG3Lx02
 0msIMNWWPetNYBxCDR4pwzuqO6YKM5G6b1a4v5MZVBlfDGpW7OqyNLYB5
 hgJE7kPMObiCDO1r0KSCCK/UJ2zp61ymfpP6QtIqMTFRIdDlwLCvccOKk g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="387466667"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="387466667"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 02:43:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="788941247"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="788941247"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Oct 2023 02:43:45 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 11 Oct 2023 02:43:44 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 11 Oct 2023 02:43:44 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 11 Oct 2023 02:43:44 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 11 Oct 2023 02:43:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Fvd//dxCwwqEUK0P6zUTOpYRNJqMISSc7m1RCtePYVS9uQFQ77DqYgGB8GmMVr2b95iwgxq/MfburMKa3pEvkUC2Y3TcFwIv10/iGYihJtoaXhgeCj5zGtWi1rteOP/fdR8NlnoM+bF0VFTCrATMzH2dcipb0A+aIgOg5G3NoN3VENXyJATGDy4XhuUadqLPG8GkYaVaJY8ezRhDYsIZjfu9JHLEioicbK0Tvs3JIw0YPTt4NiLe187ZniilWa7WFa9c4unDNDvn4qzuj3H94WDhc/qKtgXWa5Zvqm0oXtAsBWLii62tR7TdUZOKMKWySAb57sPazaqSCaMbNoy/Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rIXLzJ8U/1UaKxno+YK/awXjV700DbDCvHuv+OquKyY=;
 b=XwLUQwfDHu/Dyc/tkXLF9ZcxhWVTGC7Ft4ZkFWd1dafgTraPDqTzWjp/uggSXV8Xu/fDUISHTSrD5s+y+LDSSDjrQM9EKBkjDUuLq9oX9jE0s5ZIVv7WPxfTUwoqlTbm0BgS4UTvOR/xUo87HrAILawYdKfGPrrEBf7wnmQDDzjSZXKzk0tynU1JyjDOkl4Qqi2NtxXxefNU+YnUlAZTER5OqEnkVCUw1mCB/SaS3Tl4rxpauZ60e23tGK4QSRXvJhXZkGXgxwjv/p/KJVKdFsHLKs4yn5S4xjAwO+FzYDo7tu/APNDoBA2wm6zQIIw1C6o9xkm0fnvocyHB6JINZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MW6PR11MB8412.namprd11.prod.outlook.com (2603:10b6:303:23a::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.38; Wed, 11 Oct
 2023 09:43:36 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::3c89:fe31:95fd:c2cf]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::3c89:fe31:95fd:c2cf%5]) with mapi id 15.20.6863.032; Wed, 11 Oct 2023
 09:43:36 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v1 0/3] scalable display feature
 configurations
Thread-Index: AQHZ9FsBnuQIH1h7lU26l6EhzwtPRrBEZhaA
Date: Wed, 11 Oct 2023 09:43:36 +0000
Message-ID: <276840230cf93f8c23601b4dea0a02fc9c99cc90.camel@intel.com>
References: <20231001113155.80659-1-vinod.govindapillai@intel.com>
In-Reply-To: <20231001113155.80659-1-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MW6PR11MB8412:EE_
x-ms-office365-filtering-correlation-id: ed150a8c-c11a-4ffc-bffd-08dbca3e8a93
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: E0g26Ei5ObBPn95G5zofShj6IR+Qjfg8HEJhAdAPt6SJ59BFb6m0R23hiuFh25uDLgYGRIKsXw0Pa5DPT1fRbG91bX/6vvwJyqLw/a/U1/qY5ZcT8iyAxd7cdpzwFfHTx8u+D5WWc3i24xJ8nZXf9WoalY/ARrIKNeElRqil7A4Q0FLNdvozCRPyjGJfw4CR7yxBBpgFBOio6ElM/ULYoIQfHBOLMS2QD8T+Y55PxL+EJxqpOEwXtamWxqOubLeBjfA3Bsk0VxHz6nHXfiEA+Kigb+8QJN/BqomzKLI3j1MOkYsiOWG3ztT2vZwqtMhQ37Fm6z66aOBdmZuksK/ormqa8e/+VLXtPPdLEjoF6N6W7Oh4DMnOIuhdlF+79nfrGCo9DHJO7nZgGD/WbUpAHeeacd84oC8uHTf0QBbwcP4pSjqdN/wV2agrgp4feAcpArt6d6Z73vsMCkE9teZnIFsUh0ZW2F2FrApw9jar6JgFUNssTHVFc7lJObNRH7nnGaTJtsxzxXdx/CbwLTWAG2hfJlgTubbyWBTMa+sA+pKJJ7oI3FrjSpfDd6r5g+LYRRHQ6XewCT4fyA/s2LhontEu1+ZyL7pRl9ezmAKVWh7O0s8dMXB3ClapgH4wTgft
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(39860400002)(396003)(376002)(136003)(230922051799003)(64100799003)(451199024)(1800799009)(186009)(122000001)(36756003)(82960400001)(86362001)(38100700002)(38070700005)(41300700001)(6512007)(478600001)(6486002)(4744005)(8936002)(2906002)(71200400001)(5660300002)(8676002)(66574015)(2616005)(6506007)(83380400001)(91956017)(6636002)(66946007)(66476007)(66556008)(76116006)(66446008)(316002)(110136005)(64756008)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NjRMNmtzNTRRa0ROUGhsbURjR0F0dWVaZWRoMFl3d21ab0dIMFBKRkxHbWpt?=
 =?utf-8?B?R0dRbVd4empvb1Z5cjdwS2lTdjJURkozRExMWDUyUHdIQlJLN2pxNXk5bkh6?=
 =?utf-8?B?M093c0JJcm5XVHQvV2lzK3RuVTVwcTA5YnA3TjUvNFY5cDZMeUtPcXdKczV0?=
 =?utf-8?B?eTBXa0lhQ3Q1dUZFZnJ6L2FvSEdLZ2xqMlR0TzB3eDUrNnRzWGVuSUR3SGN1?=
 =?utf-8?B?c1RXcW5PanVlS2FEN0VqTmNOcEg1UFovdWNCaklaM3RscUZ1UHpTTm1nakdY?=
 =?utf-8?B?UHVXRmZaTFQ2eVZtbjdsYXk2ZjN1TjZwWDRwM3J1c3FaUXR3aDgxdGhWTVB4?=
 =?utf-8?B?WlJzTW5NaGRlTnFGMUN3UStzb1BDMnM0WE55WlhaT2I5STF5ZU04ajNCc3Uw?=
 =?utf-8?B?N3d6Tlg5OXJVdStvTnQ5TXdHVHYxYjZkMTlHRUhDU1pVYjVLM3FuUEtKVmlZ?=
 =?utf-8?B?cmxXLzhYc0UycWhVQ3Ayczk3OTVQRGU0WGhZY1ZOR0lXVFZCZ2VaWkJOU3RB?=
 =?utf-8?B?QUI3S3YwT3doRVJST21xTEd6QksyZVUxT2M5YXZ0V250ZzBNWnNmZFZEWkw1?=
 =?utf-8?B?MnMrc1lpQ3paYVJ5cmx4cWhQN2tiWW5Md0JIYjJqRWh5TmVyaXFZaTVDUUo1?=
 =?utf-8?B?WVNvYXZiMEMrR1lGc3RwelJBVE1CdDZhVVUwbjJlV09qTUlWcmhVRDUvdngy?=
 =?utf-8?B?eXBHUkg3cmZ1aGRSZUZoQm12ODZWNTAvM0R2NFJWL040VlRtSkhmN0dBMlFV?=
 =?utf-8?B?ZEd0SHZhUUNHRXA0OVNCVVpGRzVSZGkwaUZ5NE9mL3ppdXo5NTBTRnZhU1JF?=
 =?utf-8?B?WVo2QWRzRU9laEFuWkgvdmtoNmtCL3NFbVdBcCt4Rk9tV3RQWFF2emI4MFZh?=
 =?utf-8?B?RE1zVWNPQXlwdW92ZnJ2dno4RlFVTk8wUUViTEhhYWVUbTBVV3JHM1puejB5?=
 =?utf-8?B?eTBpSTZnTXdCS0dmWjgwczFORVhiSHhJcmJyNUtkTkRLaG03eVAvTm5aVXI5?=
 =?utf-8?B?c0lEMm1TVHBsaEpKTmhSMzJPNEczangxcHFjWXZ0NDNVQVJDL1hjeStYRGdj?=
 =?utf-8?B?V1pKUzFhQ0d0alB2VnA5VUVYM3V6RDFIMjBESFp5WHRYWXFYTko0ZENieDJa?=
 =?utf-8?B?cnQvUUhOS1R0TkdoRkxCR1lGSHQyV1ppRTVONmthS1p1KytpL2lQY3dTb0Yw?=
 =?utf-8?B?UlNvSXBaSnVnZnpvTmFnd1lXWWFFZG1FckNPaXpod1Q3c3JwTzFvTHo1ZjFQ?=
 =?utf-8?B?bG5LR1Y1RytweERESkJXYjVMTkRXRFhIR25MbkZWTzhtT2hTa3I2UVMrdTNw?=
 =?utf-8?B?NmZBZmRoNW9vcnRqM3lPQjhTeTlCQzgzMGgrR1VNcFlESkIxZTJ2S2pJTmZ5?=
 =?utf-8?B?Ri9URC9uYUxtd0RwMDN2dFluclB4U0FiKysxQ1AwaGRvMTlQZld3c2kzSSts?=
 =?utf-8?B?dzBMQTZrMHdieTJ2RVpOQ3dqNkNxYWJOZGtsOWEzbXN4YzJYL2hHZkJ1eXZG?=
 =?utf-8?B?enROa243cFB1WTdubisrbkRkVTE5VFRjY1hJSGZqcFcyWjU2Z3YzcGluZU5L?=
 =?utf-8?B?TnpDQTY3T2FGbTZtTTM0VURSZWtmZ3BubHM0VTRyTDN6NzhtTjFXWlBBOEZp?=
 =?utf-8?B?UjZmSzJhRDZrR1dFZ1h2V1VnUWJyVVdDTFVtNjUwc2F6US94dy92SnpCYVVY?=
 =?utf-8?B?a0NtTkdJdDNUdldmQ3B5Rnlsb0lMdW9aTGFERG5jdEhBN1B5YjZrZFhFTlBR?=
 =?utf-8?B?Rmc4Q3VCYXJXMjRUOXJxaHhpZkliSDlUN2ZFSi9wSFVXQmJYOWVSNWRPQmw3?=
 =?utf-8?B?REY5aDlaemtacFM3L1hVa0Zsc0I1OS9PUjZBbFpOUWxzZWxEeDdLS3NOL2Rj?=
 =?utf-8?B?Qkx5WURKMUtRVWhHZFd5clo1MVdtZzIxRElCbWxVWUpPbDlnMGlqVTRZMUh1?=
 =?utf-8?B?bUNxeFhJOUplYWNrUnFxVkwwbmJ3RWRqbEJNRjA2R2VVbmRrVWVaRGpYU29W?=
 =?utf-8?B?ajRkU3dyRlprOE14dEZyMWQrNStLdDhBM0pJM21jcC9iRHYxb0c1OStQd3Ex?=
 =?utf-8?B?djBkZ2FibVFoTytSbzlDbGJZVlpKbUdmbVhwcytCMTVMUnE2a1hwcHlkQXlk?=
 =?utf-8?B?VjZyTE5FUEpoclVxMjlEQmZONHpkb1J1ajlIZXlqdnFlRHViclRMOEs5WmNE?=
 =?utf-8?B?Z2c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <102FDDE4065E2C458ED69FC611B66015@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ed150a8c-c11a-4ffc-bffd-08dbca3e8a93
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Oct 2023 09:43:36.4551 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4IPbweH4Rn2Bbq2hMhHpySAz+fBsWayoAohnRzzFvD0jUG9Qcxq7kbOQ51zrLNQr1iAUFtsfxgZ0Z+g/0wAMswgCCFsvcLmjMWCQ1qtx0PU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8412
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v1 0/3] scalable display feature
 configurations
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

T24gU3VuLCAyMDIzLTEwLTAxIGF0IDE0OjMxICswMzAwLCBWaW5vZCBHb3ZpbmRhcGlsbGFpIHdy
b3RlOg0KPiBHZXQgdGhlIHJlcG9ydGVkIGRldmljZSBjYXBhYmlsaXRpZXMgYW5kIHVwZGF0ZSBE
U0MgYW5kIHNjYWxlcg0KPiBmZWF0dXJlIHN1cHBvcnQNCj4gDQo+IHYxOiB1c2UgZGVmaW5lZCBm
aWVsZCB2YWx1ZXMgaW5zdGVhZCBvZiBtYWdpYyBudW1iZXJzIChKYW5pIE5pa3VsYSkNCg0KRm9y
IHRoZSB3aG9sZSBzZXQ6DQoNClJldmlld2VkLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhv
Z2FuZGVyQGludGVsLmNvbT4NCg0KPiANCj4gVmlub2QgR292aW5kYXBpbGxhaSAoMyk6DQo+IMKg
IGRybS9pOTE1L3hlMmxwZDogZGlzcGxheSBjYXBhYmlsaXR5IHJlZ2lzdGVyIGRlZmluaXRpb25z
DQo+IMKgIGRybS9pOTE1L3hlMmxwZDogdXBkYXRlIHRoZSBkc2MgZmVhdHVyZSBjYXBhYmlsaXR5
DQo+IMKgIGRybS9pOTE1L3hlMmxwZDogdXBkYXRlIHRoZSBzY2FsZXIgZmVhdHVyZSBjYXBhYmls
aXR5DQo+IA0KPiDCoC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2Rldmlj
ZS5jwqDCoCB8IDE1DQo+ICsrKysrKysrKysrKysrKw0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDcgKysr
KysrKw0KPiDCoDIgZmlsZXMgY2hhbmdlZCwgMjIgaW5zZXJ0aW9ucygrKQ0KPiANCg0K
