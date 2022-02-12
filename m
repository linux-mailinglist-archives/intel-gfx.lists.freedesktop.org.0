Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C38774B3203
	for <lists+intel-gfx@lfdr.de>; Sat, 12 Feb 2022 01:31:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7A7610E186;
	Sat, 12 Feb 2022 00:31:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BAFF10E186
 for <intel-gfx@lists.freedesktop.org>; Sat, 12 Feb 2022 00:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644625865; x=1676161865;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=AxNykJom5J+Qp9bXTx1az5zeS2ZrUGlnZqSHCzXEQPk=;
 b=ANr2muEJwYIS2GTXY2UapEEL3zvABLXw6ejTuN6HbU8H8wR1YENw6kQ4
 816VzYbgI5KNTzpaF6n9Wov6HQdNTonqY/U3WXgMOWdBdphhz140pzqj/
 hfiAXrDY77T/bwqZwv85LcitIHOJbYhVJTLt/oVbsA5Xtb5GOT1QpuKU4
 GH7RL0Sc0O17jfITjP/h/WKBw6SynQopFakAXzwE1copjOAzf9X9oeOvB
 03PUCdGo/DgwDZvU9LXoqJTZGJDsruYxIcuNuXDEoG2zc5MRiDDrWvfvc
 62/R/gZ4Y0PwECIq4Q2coPJEyMjm/ZfWBHKq2U7FLzXSlK6fLhS/PdAdS A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10255"; a="310572318"
X-IronPort-AV: E=Sophos;i="5.88,361,1635231600"; d="scan'208";a="310572318"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2022 16:31:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,361,1635231600"; d="scan'208";a="602520173"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 11 Feb 2022 16:31:04 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 11 Feb 2022 16:31:03 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 11 Feb 2022 16:31:03 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Fri, 11 Feb 2022 16:31:03 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 11 Feb 2022 16:31:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KIw93tN8pBUm7TgPqCtIdPoQxtS+XPaM+MvQobu490AMZRvzjiAalUxbmIDUOEa90BI7BS/zkfA0anL6BO4VKYkIw+3K2dIGyAiXqSebQvNHNkI0uy1s2u5lNoIL2Ef3CR2gRc9ZsHgdFZv5+PJbN3g/M3QKnT7kv2OFRGawkjc5YCj8Pjm52FBfjurtV/kXq3JQZ52/A4kCVHu2VEvAnagzFG2sVWa+pwyYGcRzptRc0LMhBtmtKnoanSHgf7Lj3Yt1qOzkydo1RAEVnYUkXV1YCPB7F26Z1plU0pmX2ylg/gLXSulfkpJXrBuSGpBzY7ksCRAF48rDcMOKXASxGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AxNykJom5J+Qp9bXTx1az5zeS2ZrUGlnZqSHCzXEQPk=;
 b=P30Xg72Ron7PGIwf5PXD4lsai3ztEkry6PbzOFBdzSeEcqb54KGDx6spyfVSj+N4UEtiMy0blRLfCzpkr3eUQ3oHTI4Y9E5xseMo6/wdyXYTh1zNiqO7KQCzmVtP9gldrkMcaUqEIgGDBN9tAO4wqs6jn+6QxQZh/Lp5eoqNsz8jO4w+QJhLCU2/aaKUQXbVBxl+NX/tVv3c7uggDY1NSgjetgiXuI6bSPTrITeYLa2IMMmZ7WXd9cx6b8ZjMsgIlTx4fdbN8uVeJnXq5Y+SGB12P4W5EFrn7sHgdameGbnBKBh3pyEGC21v8VUfVTqHre1uglzIw5tGfVCGVsJ0yQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from BYAPR11MB3784.namprd11.prod.outlook.com (2603:10b6:a03:fe::10)
 by SA2PR11MB4923.namprd11.prod.outlook.com (2603:10b6:806:fa::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4975.11; Sat, 12 Feb
 2022 00:31:01 +0000
Received: from BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::a048:b2cb:5446:6b13]) by BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::a048:b2cb:5446:6b13%7]) with mapi id 15.20.4951.019; Sat, 12 Feb 2022
 00:31:01 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Nerlige Ramappa, Umesh" <umesh.nerlige.ramappa@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v5 08/10] drm/i915/guc: Plumb GuC-capture
 into gpu_coredump
Thread-Index: AQHYEqH6X4oTx9ZkiEigCkIt+MIgw6yNtCAAgAF2zQA=
Date: Sat, 12 Feb 2022 00:31:00 +0000
Message-ID: <033582d84e6859ccd02d0114a5fcd3851eba8785.camel@intel.com>
References: <20220126104822.3653079-1-alan.previn.teres.alexis@intel.com>
 <20220126104822.3653079-9-alan.previn.teres.alexis@intel.com>
 <20220211021136.GB34157@unerlige-ril-10.165.21.154>
In-Reply-To: <20220211021136.GB34157@unerlige-ril-10.165.21.154>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3ae6e8ae-fcf7-4c4a-fb50-08d9edbef227
x-ms-traffictypediagnostic: SA2PR11MB4923:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <SA2PR11MB49239903EB4E4E91D149648B8A319@SA2PR11MB4923.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PUhM9sCyLxjNwdCD5BQClbZ7+xNLOkdfv5ylEY4dGTQHnU0xx09HWKqlQZNuzMnqs1Puzv+gISNqWndZ9ziwERetB7cUOTsb8U0+AFL1covExm+gvvfpdQHFn4XFtLKMbkk7yGNBFrosSyJm7cXRn9UPUNWdbReO2zx8ir4iHtDgLARhVtzmrQzLyVXwehNR8ekYE8wSQdnFjDjoGKi03sIpLhE4HriEuLjg/q7vV6bOVHjcuXWOydUWQTMqinjP2Oeu71fXZ1GTeY3typmGIphDj4yiQZjRlP4YMNKW/XbYTXDv2CK2bqpn3gxQqTTbp5ODV3ev5eNCI3RbDWIcXJQO8XimT4Y3RPemhJgN5ORq48+X8t4ybOmSTpGKGt0p0KA0CKrPHfHkZMTAGRcrvYG5tSvlLYHLRZPk3UGKsrF0M1p8/A6BfKfeAIRIy61uwfp7qY6/3JwkfVtKEugcJi2JMLjcTd/PAKHefyRONuTpB7N7yrbovBZ78HA5LTOMeg8T+zUB2BRWsYR8F8zo05LrNessaNRGoHiErkIEwchoWpZT78KeUG4SbOiaZ0eGB4wwIXO/JUT4PzsZTY51RIuvX5Ear8kHebdFvKKS6WfeInOHHqa649Bs4cfXmu95+TqyV7BlN2TVCNwloYDj4BUt2z52D1cW7rRypUDTW7EdS40CLVPQy5CaoL38KrGVOcTo+EtwLiHU4o622vuxrQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3784.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(37006003)(5660300002)(38070700005)(6636002)(6506007)(66476007)(66446008)(8936002)(76116006)(66556008)(8676002)(122000001)(4326008)(6862004)(316002)(64756008)(38100700002)(71200400001)(66946007)(2616005)(82960400001)(508600001)(6486002)(186003)(26005)(86362001)(36756003)(83380400001)(6512007)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OTdKNjN3RmczK2MzenhYdmJYRlZRbGlFTmxkZ1FhVVg1VFh5eGlBYy9VZFR2?=
 =?utf-8?B?OUd0aHhuRHZXSjVFSm1xbitDdVNmb0F4MnNFcUV6YVZwMFBhTEtKRm9GcFZx?=
 =?utf-8?B?TjEvNHRIOXlBRDV5ZTQ1aS9uOUhOV3ZjbEdtZXNNTHVFSnYwRm03dXMyaE5N?=
 =?utf-8?B?WlpMcnJnb0RHTVB4WTVOaTZCamtuYmUzN0g4OWl5Q1YzZ2FaM3VQVmxlekwx?=
 =?utf-8?B?QXpMWEgzVDRFRGIwUitpV1FyQ3EwWWJZdVlUQmtSM09IMlZYK2pRMDNoLzg0?=
 =?utf-8?B?RFZZeFBic2xMRE5oeTF6ZHc0Y054YXpmK2xGUldaYjY2NFZzcHhVdG1qMndF?=
 =?utf-8?B?Rmh2dk9LekdwbDhYNmVFMGh1dVl1MVpBZHNlNDZBSFRMY0ZrQWRmcks5Mmdl?=
 =?utf-8?B?OExXL0ZNNTk3bFlXYkhOZlo5NWZtcXZ5RzcxZ1poajRwU2ZQdlBOS2IxN1hu?=
 =?utf-8?B?MHk0RDlzcUZaeTU2NUd5OE5xa0dpaXFHVGNubkkxOTJ1dGtiYXU4OWptdW5s?=
 =?utf-8?B?a0lXeFZTdXNxVEd4dnkzUHVsR3VHQWRWZGlsREkwN2pFS0VPdHhBWVJ5Nlox?=
 =?utf-8?B?VXltMFNYS2kzS2R3R09YeEYvSFY1b1V4VmN6WnN2SEZSelpLQWp1S0RiM1ho?=
 =?utf-8?B?anVoZkZSZVR1b1VXT0VlWXZhbHI5YlV0bTJ5R1kyVEVxV1dwWkcxYnZpcEJa?=
 =?utf-8?B?bWxhT0lPOTUvbWFoQkNkT0JEN3h0T2VSMFpjWTdieGVqZFBwZStycDBSY2hI?=
 =?utf-8?B?TTA4Q2lxWHZDRk8yUktiengrWm5ocGl1eXN3cEJkQXRmZ3Nocy9MUk1lRDZm?=
 =?utf-8?B?VmFheUYrOFVKaVBwSzJpY242YlhiZHZCbHc1M2ZxTU5QTWtUY0RzQk1FanN6?=
 =?utf-8?B?KzV3R0VQc0JKL21Rc0wrVmZ1OGV1ZHd6Rm8xUjU0Sy9EWTJhY0pOVGprMnhK?=
 =?utf-8?B?RU5sT1pHVE5qVE9LczhYS1hxUXFqQ2lyaEVRUnB3V1NzVnMzcnJDNi8wbE43?=
 =?utf-8?B?SmdiOUU0dzdsbVB2a2VWdWRKY1huU0lRMElvVkZqTm9lbi8rRlMwbDcyNlZS?=
 =?utf-8?B?TjdDZmFOdzQvK0hyM1YwckdCTmROSm9yaUIxL1BuWUlXYkpsMWRKcWpjRExj?=
 =?utf-8?B?ZXJ4dHd6MEs4ZjNHN3ZzRDJXRjhUU1A4d3ZkYnRRWS9vdkJZSVBIcGxlNXht?=
 =?utf-8?B?SUh6NC96c3M1ckRSeVV3WTk1eUZYYVlKNFVMeFdxUGNhdFI2UkllbVFNclBP?=
 =?utf-8?B?Wmw3N3ZSOTAwYjEyaWV1VVFqMWdJeHlHeDFvUXlQeEJ3OFZ5ZGIyZ1NvK3ZU?=
 =?utf-8?B?ZXhZNFFBaGRRUUs0QVArT2x1YmZ6cFRtUkxQQytOQVhITEdlS29JWXlBVVk1?=
 =?utf-8?B?YUc1UXpvNkFnakovU215U0ZoL3dFd0kxR3NEa1RKTURMakhGdmN1bzZNUWUz?=
 =?utf-8?B?UzBLalFQZkVGZ3ZOaTRjTGZyS2pCbzZIWVR5b1NqcW9wZXVON2l3SlRQUVJC?=
 =?utf-8?B?dmlYZGNvMlFxZWF2WkRPQUtwVzB2ek5JWHE4U2JrUlI5NXdLRW5VbjJzazlk?=
 =?utf-8?B?UEtDMml6K0lEWXRMQ1BKUmdUTEZ5YzZsdVQ3NnZhS0U3V1QzbkpLM29pS1NJ?=
 =?utf-8?B?NzRCL2hERm9wS1BBdEk0VGo1VmwrZVp6WG9HZW5CYnBJU1NXZnZrUTlYLzFt?=
 =?utf-8?B?Tkg0SXovdDFJNU9vaFMzdEtIcHp0QjNzUW1SNjlTNkpvejByZHdHcE9RUFNu?=
 =?utf-8?B?TUhLTzhwcmM4Z0paMmVjMXRLb3lwaFRIaE04RWpXS09hcm5sSHEvSGZJNkZt?=
 =?utf-8?B?Ty9lSHhHb3FWcENNU1VCUFI3ZG9IU3BaZ0lKOWx0bWNiTmU5T0FCd3dSaE1x?=
 =?utf-8?B?WFA3R1pGZGFzZlI5YXZPdElTemF5RWs1bkx5VGNCVUM3OENaTWVtN203Mkl2?=
 =?utf-8?B?V3NKZFptRk1qU3hCcXVZa0thZWNxbjdZNEI2TmFUZ0xkOG5JNlY2Szk1WDhn?=
 =?utf-8?B?VXl5NXY1a3o3ZXhTNk1xdHB0eGVTOVE0d2lkNEwyU2VuNjltbXU1K2k2Q1lV?=
 =?utf-8?B?ejNGeHB4QlVsQnVSTnhjQjU4MlBxRGoxM21nZUVHTEZJU0QxN3RKSll5aDVW?=
 =?utf-8?B?ak96ZTZrOXlaQUgxMWZQTTRMOEJwYU0vMEN3bldTMEtwL0pqK2lQOGNOU1dY?=
 =?utf-8?B?eGNKLzRSQklEZTh4clpUU3c2ZEdxMWs2elFqeXdLVEEySEdXYlBBemxwNzV0?=
 =?utf-8?B?NkV3NHFQdWZZdXVMYmNRWHNRYUNkWm04aEs0bUZsbXgzdXl5ZDN4ODBIMU1k?=
 =?utf-8?B?eTU2bmdIeFpBUUlFYUpQOFlxWjB0WGEvTTVaUG55bHN5MmpZTTZkUT09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D9113130CB8703408CB31F040109CF2F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3784.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ae6e8ae-fcf7-4c4a-fb50-08d9edbef227
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Feb 2022 00:31:01.0817 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gmFCDg+ahlieDW9cL7IROcVit+RR4XtFE0+EM8wVTLSumgawuCkRxM+o0wQsz8dpKjmjv6B5ZteY4UmEUkihRycky/VfqoCBZXVLDnGZUSBi76r+OeoXMlqIJNOOTf+7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4923
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 08/10] drm/i915/guc: Plumb GuC-capture
 into gpu_coredump
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhhbmtzIFVtZXNoIGZvciByZXZpZXdpbmcgdGhpcyBmb3IgbWUgYW5kIGZvciB0aGUgUi12LWIu
DQoNClJlc3BvbmRpbmcgb24gb25lIGNvbW1lbnQgYmVsb3cNCg0KT24gVGh1LCAyMDIyLTAyLTEw
IGF0IDE4OjExIC0wODAwLCBVbWVzaCBOZXJsaWdlIFJhbWFwcGEgd3JvdGU6DQo+IE9uIFdlZCwg
SmFuIDI2LCAyMDIyIGF0IDAyOjQ4OjIwQU0gLTA4MDAsIEFsYW4gUHJldmluIHdyb3RlOg0KPiA+
IEFkZCBhIGZsYWdzIHBhcmFtZXRlciB0aHJvdWdoIGFsbCBvZiB0aGUgY29yZWR1bXAgY3JlYXRp
b24NCj4gPiBmdW5jdGlvbnMuIEFkZCBhIGJpdG1hc2sgZmxhZyB0byBpbmRpY2F0ZSBpZiB0aGUg
dG9wDQo+ID4gbGV2ZWwgZ3B1X2NvcmVkdW1wIGV2ZW50IGlzIHRyaWdnZXJlZCBpbiByZXNwb25z
ZSB0bw0KPiA+IGEgR3VDIGNvbnRleHQgcmVzZXQgbm90aWZpY2F0aW9uLg0KPiA+IA0KPiA+IGxn
dG0uIEluIGdlbmVyYWwgdGhlIGltcGxlbWVudGF0aW9uIGRpZmZlcmVuY2VzIGJldHdlZW4gc3Vi
bWlzc2lvbiANCj4gYmFja2VuZHMgKGd1YyB2cyBleGVjbGlzdHMpIG5lZWQgdG8gYmUgdmZ1bmNz
IHNvIHdlIGNhbiBhdm9pZCBoYXZpbmcgdG8gDQo+IHVzZSB0aGUgZmxhZ3MgYW5kIGNvbmRpdGlv
bnMuIFJlZ2FyZGxlc3MsIHdpdGggdGhlIGFib3ZlIGNvbW1lbnRzIA0KPiBhZGRyZXNzZWQsIHRo
aXMgaXM6DQo+IA0KDQpJIGRvIGFncmVlIGl0cyBtdWNoIGNsZWFuZXIgYW5kIGNvbnNpc3RlbnQg
d2l0aCBvdGhlciBlbmdpbmUgcmVsYXRlZA0KdmZ1bmNzIHRoYXQgZGlmZmVyZW50aWF0ZSBndWMg
dnMgZXhlY2xpc3QgaG93ZXZlciwgaW4gdGhlIGNhc2Ugb2YgdGhlDQpncHUgY29yZWR1bXAgb3Bl
cmF0aW9uLCB3ZSBjYW4gaGF2ZSBjYXNlcyB3aGVyZSBHdUMgc3VibWlzc2lvbiBpcyBlbmFibGVk
DQpidXQgdGhlIGNhcHR1cmVfZW5naW5lIGZ1bmN0aW9uIG1heSBoYXZlIGJlZW4gdHJpZ2dlcmVk
IE5PVCBieSBHdUMuDQpDb25zaWRlciB0aGUgZm9sbG93aW5nIHNjZW5hcmlvczoNCjEuIEEgY29u
dGV4dCB3YXMgcmVzZXQgYnkgdGhlIEd1QyBhcyBwZXIgdGhlIGNvbnRleHQtbGV2ZWwgZXhlY3V0
aW9uDQogICBxdWFudGEgKyBwcmVlbXB0aW9uIHRpbWVvdXQuLi4gT1IuLi4gYSBjb250ZXh0IGZh
aWx1cmUgY2F1Z2h0DQogICBieSBIVyBhbmQgcm91dGVkIHRvIEd1Qy4NCjIuIElmIHRoZSB1c2Vy
IGhhZCBzdGFydGVkIGk5MTUgd2l0aCBtb2RwYXJhbSByZXNldCA9PSAxIGFuZCBoYW5nY2hlY2sN
CiAgIGVuYWJsZWQsIGJ1dCB0aGUgY29udGV4dCB3YXMgZXhlY3V0ZWQgd2l0aCBhbiBpbmZpbml0
ZSBleGVjdXRpb24NCiAgIHF1YW50YSwgdGhlbiBoZWFydGJlYXQgY291bGQgdHJpZ2dlciBhIGZ1
bGwgR1QgcmVzZXQgYW5kIGNhcHR1cmUNCiAgIGFsbCBlbmdpbmUgc3RhdGVzIGRlc3BpdGUgaGF2
aW5nIEd1QyBzdWJtaXNzaW9uIGFuZCBpbiB0aGlzIGNhc2UsDQogICB3ZSBkbyB3YW50IG1hbnVh
bCBIVyByZWdpc3RlciBkdW1wcyBieSBpOTE1IGFuZCBub3QgcmVseSBvbiBHdUMuDQoNClRoYXQg
c2FpZCwgZm9yIG5vdywgd2l0aCB0aGUgZXhpc3RpbmcgZ3B1X2NvcmVkdW1wIGZyYW1ld29yayB0
aGF0LA0KaWRlYSBtYXkgbm90IHdvcmsuDQoNCj4gUmV2aWV3ZWQtYnk6IFVtZXNoIE5lcmxpZ2Ug
UmFtYXBwYSA8dW1lc2gubmVybGlnZS5yYW1hcHBhQGludGVsLmNvbT4NCj4gDQo+IFVtZXNoDQoN
Cg==
