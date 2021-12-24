Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E719B47EF34
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Dec 2021 14:34:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91B0410E44D;
	Fri, 24 Dec 2021 13:34:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDCD410E44D
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Dec 2021 13:34:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640352872; x=1671888872;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=VM9rRPWK5hhlERmiNpA+/fJyp3GJJp6E+YQGgOyP/Yw=;
 b=NPcnhVv60YY28y645GXn4xfAxZEj6mmNSMwJwZ87BbR9ESBnzL/13h34
 LoCzuRAmaiIrjmrBdKzNAtpJGREx7ttvP38/d06J1QsMo/BVlNIAkmtR/
 r2wSOrJLLdqJAffm9Uxbhfj8RA/LMCnH8E1GebqVScVzoULqow2Ghy2z4
 siNsUWVb+fEYGajhS75urI93uBRNvaaHLIizXMVzfIQ2YZcmCG2EJnZDO
 ejvpihIIVzZzbpVReBJaUdkknPAWnS0R/losPN65hVg4u253N6Tsam1uA
 KG47Q1l87cNuIWdNy/RV9geGRd39CQdU2pVUr4V9eLUDsHHC7oFJBTo1W g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10207"; a="240928236"
X-IronPort-AV: E=Sophos;i="5.88,232,1635231600"; d="scan'208";a="240928236"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Dec 2021 05:34:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,232,1635231600"; d="scan'208";a="485383437"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga002.jf.intel.com with ESMTP; 24 Dec 2021 05:34:32 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 24 Dec 2021 05:34:31 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 24 Dec 2021 05:34:31 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Fri, 24 Dec 2021 05:34:31 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 24 Dec 2021 05:34:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DPi5HnB7LaTDPEZ2ufeEOsk1Y6PXNPda7hkSLyUwjY4PpNKQ2Z4GLy9NV7R2fZ+EqhjKr9GJpc1PxdW3wPlsjIiGzeFmreNTrzQmjewcW8bFIWYRMXUWFd9vWKXbsTvifhum1e8MAxaDguBpCNMNcVb+wlwy3OXpUNGT5q5igTsWqeeosDemQbwaDQWd0ri1hJP7rGrWBEcRWtLMZYxK3K/FzBuUgybBRyGjaG2hr5nn3uPjD04sjNInZRdR8rP1pj9KHOst1Ghmx+WvlAbEqPTN07d5YQhN8/PLZUb2wPeOUMDEyB3W3LlZoIY2n39ipzI2wUHYAfftYEL4/gnIjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VM9rRPWK5hhlERmiNpA+/fJyp3GJJp6E+YQGgOyP/Yw=;
 b=dWERbj5GUfnFpRXvv/JMbdSv5H+a+YoOIpZA5OJZDVIwK+fxVpo6AL4B+q40MimGmGFGukC9S9FFnHZ2vHT8OH1EdIeluyu7g5ah/4PMf4EYX72RxSN/romRTh1aoHUJDLaLeu9nzUIVGScp5T9dc8WqhAbJfcLfQeu1n4zc6jVGDsfPkFj8fhvXuQj/BVOW03WUo2tze7L+DJeLq5mnartXchfkFyEaS94/sVRMklI9/cSOiBr3+xr6+kh5PVF7t5rBm2YckN5i0ijf1Yb7E4LHjnpzXLMmdpnnRbEMcwOJ1KfvABcgX46F8QPAE1WJsnG0mY500e617nRkk7E7rg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3784.namprd11.prod.outlook.com (2603:10b6:a03:fe::10)
 by BYAPR11MB3687.namprd11.prod.outlook.com (2603:10b6:a03:ff::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4823.17; Fri, 24 Dec
 2021 13:34:29 +0000
Received: from BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::7894:920e:c7dd:6abd]) by BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::7894:920e:c7dd:6abd%7]) with mapi id 15.20.4823.021; Fri, 24 Dec 2021
 13:34:28 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Brost, Matthew" <matthew.brost@intel.com>,
 "tvrtko.ursulin@linux.intel.com" <tvrtko.ursulin@linux.intel.com>
Thread-Topic: [Intel-gfx] [RFC 7/7] drm/i915/guc: Print the GuC error capture
 output register list.
Thread-Index: AQHX3/Ueewn73SRF5061jq6P87GJy6wn02QAgABnhACAGGKigIABIMoAgAAYIIA=
Date: Fri, 24 Dec 2021 13:34:28 +0000
Message-ID: <baaf6bcf51c487817392142913f31655138b6596.camel@intel.com>
References: <20211122230402.2023576-1-alan.previn.teres.alexis@intel.com>
 <20211122230402.2023576-8-alan.previn.teres.alexis@intel.com>
 <20211208002215.GA17960@jons-linux-dev-box>
 <bf9b1af14a700959ca58e615d7d15cb9300ab56f.camel@intel.com>
 <fb0f6eace4bd1c243544a0804ffa9fa5b16159a6.camel@intel.com>
 <c0fa7466-ecdc-4768-0584-6937e7f0d71a@linux.intel.com>
In-Reply-To: <c0fa7466-ecdc-4768-0584-6937e7f0d71a@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 68e8020c-4979-4aec-bb71-08d9c6e21c45
x-ms-traffictypediagnostic: BYAPR11MB3687:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BYAPR11MB3687F605EACDD124D5E2F73F8A7F9@BYAPR11MB3687.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:530;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: B54sujKBn+mcPqlCNcOPBk0bGF0EoHJ8Jno/vPfz0WTNExCpmHfhzsfD2qfC+szt7qIYkuhaLTqIEqYUF+l1yWq+wYYGYg9qOvHrIT04d9NwYvXEenLY+NyWgftDH37a3kIaBG2SsRba3cWaQTZ+cgdMGhittC88A1dZrL9OXHTMFGTZ8fX5njVDcq0qTXMctsoJg1xraOxlJMN0B72LYMsqLK0D/5uAzCNbW36A0r6hKQZlb/rxQALkqYm/rZ4Lwz1kSKz3uLWkOqKKekokv88eNFNBxxsZSYUNJjHLOO4Zy+DT5CCt4KGZYH8Tb1cSFwPSepowsp2NULW2heYgEX0SgER1+BBMNKKmyMW0gYm2NevjyNd+v84BT20kxC0CoI41E0W7epv2v2T6rtUIbNER54Bo5GKafEeHsLzgDxw3QEKWEPahHZuWPI5zo95rFs/KE1Ya/2iv1n/Aia/wceSR8/m0VZBLdlEa/il5xzxSz1Esu0CUt9k+F35yWl5ZOlHtYfimnjM6asGBvlhNy5WE9Aep0c8ExfUa1Ld9QmSSoH2ISHDAE89RP7HBVqRYIHfQITtIEwhLcpj5u66a/Kzz5vSLpNUn4ZhD2rT9l4YrmWzwf/a3xU9LkyEH8Cfre5seRRACbTm15Fl2LsoFUDE2LoFnZ4R4vG4BzDQ11Xo+h5hDmRB6bOTKUTwez7i7T5cXf9Jp/fI+QCy2RlFI9g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3784.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(5660300002)(4326008)(76116006)(38070700005)(38100700002)(66556008)(2906002)(316002)(508600001)(82960400001)(6506007)(86362001)(4001150100001)(66446008)(66476007)(83380400001)(8676002)(66946007)(6486002)(8936002)(6512007)(53546011)(26005)(36756003)(2616005)(110136005)(64756008)(71200400001)(122000001)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?emxJRlNBTjY5ZTA5RU5zMllwQmNuUEI5NGlESGFrbHZoUytFcjdheDBYSzhj?=
 =?utf-8?B?dTJHTHp6d3ptUE1ESXArOThPbTZ1dm92MmJmbGV3N1gxNXA0WGRDMHNiVFAz?=
 =?utf-8?B?WXlZRFgrYzJXWWVFYncrRDhicTZWajg3RUxsTW4xWEY4OVpQTUx3RFRoR216?=
 =?utf-8?B?d0RhZ0pGTXpCb213eTJaM3FCLzE5Wk4zeU9SVi9hM0hNOUlZS0d5TzIxcWdP?=
 =?utf-8?B?NUVMOFhscmZELzdxSGxuZ3EwTVpvTWRGTW4vREtBOHBmUnFXdGVUZldMQi9D?=
 =?utf-8?B?NFNHRVZZTVpMaEhnRklBM1lUakxJL0kyTy8wa3k0bFh3bm41bXFxdHV6ZG5s?=
 =?utf-8?B?c21JZ1orTjRFdnhUKzFZT21lMVE0TlltaVdqS1g5VVg4dGFEQ1IyS2h0M0M4?=
 =?utf-8?B?RXhQU2FsdVhkZDZ4VkNMYWFNTjk2TTY5SmJ1RlRKdThSZ3MrWitJeUlpNFll?=
 =?utf-8?B?Qjdzc2h0Tkw1ZFBBeGM3WVZEQzBYeGR3MzBRdkJSd29WdVB3eXpaZDhrZklW?=
 =?utf-8?B?VGJDdmRuTEVndGtETHp0b3lHb2JXZzN4K05JdFNXYXJPeE1RTnpYOVVQeGFp?=
 =?utf-8?B?UGVyYnJtY1B3WHhUVXF5UXBkREtXZS9uRmF1MVlqSlhQa0NwYW1iYXVUMWVJ?=
 =?utf-8?B?UWNLQ29iMWg4bFVzTzRmSzFacEI2VHN3bFN6ODVmUWprbjM0WXZxeElwQnUy?=
 =?utf-8?B?YXhUVER5Wkl1N24xcWw1MVNuYkJMUDNYaXhWcG9PeTRWZjY0M0tVQXYreDYw?=
 =?utf-8?B?S1o4N09GNm9IclZjbXNnUVFDQmR2YlNMTmhNTkVsQ25kZ1hTcWczaHFNbU1z?=
 =?utf-8?B?UmIvUmJkQmR0VW4xdk1PMG5RSkVjYTNHU0p6VjJwdEI4UkptYVdBdzBjVkVz?=
 =?utf-8?B?V2ZXRWpFNTBOSmhoRTNNQmRWbEJUVnB6M0FjVWJvcVFlc2JENjllVGdkN3dv?=
 =?utf-8?B?OGhFSjkvTVBvcnFocGs0OUNlVlhEMUdRYjB5bWltNDlQRkZHQ3ExN0djL2dj?=
 =?utf-8?B?ZXZZSnZMQ1ZlK3ZOczArZGs4d3VzamdhNEVJemNIRjFadEpmWDVjWFJheHBS?=
 =?utf-8?B?dHJZYXhiN0VBWU5rNEhhU2FONGs0YVJnYml0ZWpIL1pMSjcwQnBJamNGM291?=
 =?utf-8?B?TGZqRDZ6SmJ1emE4VHd4bkFCMFdYRk53Sm82bUhkbVJ3ZWZmMnNkMmhGVm9X?=
 =?utf-8?B?TjBIa3BSV2x2eTdVZWhiQnozWlVmemNIdGZMc2g5L1EwWHE1ejJ5V2VZa0Qw?=
 =?utf-8?B?WXRRNDRCbE53RjU4b29QaXo1Zk43ckcvVEZHVWlHQkVPMWxUSDZDMm4xWnMr?=
 =?utf-8?B?ekFWWld0aWtWM2tjUzJ6MDZ1K2ZrVDNGVHlyR2c1eXpqYVhEakFRdWVHRWVl?=
 =?utf-8?B?VXpBcnZJdktjZXhYeW9LekZtZlRxd2N2bnBGYzJLYWh0dlpSK3BKQkdBRnM1?=
 =?utf-8?B?VnMzb2ovV201WXRjcEN0UDZJVFVHbEJpWlVFR0xkWnZhak40RTF1N1l0dlNu?=
 =?utf-8?B?Sy9rTjRTbThjeXkwWTVObE1BVnRzc09KdDB4eUxnUmNLNkg0cXVHU2xlUGdI?=
 =?utf-8?B?MkNwbTNqZFk4aW5VRS80UXkzZVE0TUVpd0lUbFlYZDF3c3Y4cEF0Ym5vTXdX?=
 =?utf-8?B?UFdsdHd1TWZsY0ZtMEt4SnlPRUViQjhKVzRSMWMwOVNyMGdrNndlYnZoSzgr?=
 =?utf-8?B?bFZwSGRnemdUL1hFeUhKOTJvdVNETXFPRjRZSHRsQXVNRllkcEVWanlNZ1k1?=
 =?utf-8?B?S3docGhLVTVOUHYyUlI5U0NvYUQvYlN6MkI5NEJmd3VJOTQ2ZmJCQWN0NzlY?=
 =?utf-8?B?RDduWWNaMmNnQlh4a0l6VnhBZm5CcFJ4ZmdkRG5GcDhJdDFqQVFPS0VQckx3?=
 =?utf-8?B?YkUzdncybS90UWVEdVUwOHNscFJtTUlxbWlDMkNzMzdOSFJPSmFNai9hREJ0?=
 =?utf-8?B?dFBlUjhLQnVld2JVd0N3dWdYYUhlNWV5aHhLNlBGWTNPRWcyRitpU3grVVEy?=
 =?utf-8?B?K1ZNZXk1SmhhM2c4WlczdmpQMitIN0hlNGpvQ2VCZjdFdHdJQU10OENCUzA3?=
 =?utf-8?B?QUM3dDlmb3lmdUpUWTNDZTk4VzhRUXkwakMzcWNMbUh6T2tiMEYwd3FIYUJU?=
 =?utf-8?B?S2VsWFFraVNTdnh2N2tEYXA0REtDaTBCUEtkTnNTN0ZHWUhWdGtFeDNJTWow?=
 =?utf-8?B?QWlTbFd0c2RySVBVN0pqdUx4a3hVTDdlRU1zNWtRbHVGVTVEYlZ3N0Q4ckNV?=
 =?utf-8?B?MGhEeU9UNk1VL1RVci9FWC85aGNtWjc3cURYQXp6VCtVVWpJRmp5RmFLdW1O?=
 =?utf-8?B?UkRpNDVvU09IVkt1S01qSFZoekhFWUp2NjdWTmJySnNNYk93dWpKQT09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <3BB99B64A9DB2F41B2251C9EA2305290@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3784.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 68e8020c-4979-4aec-bb71-08d9c6e21c45
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Dec 2021 13:34:28.7626 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9JsCXTEyBFdSRwhaQrpTB/QHjWOWmTnuIRzrNQ8KZtexeuomSiAKXWfaDNfGgofZ6R7nZ7KsAxHyvgMWoQCQigjYn3t+nx5NeKJH2zGWk63JsNNlprz9yQQiBouFPWEZ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3687
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC 7/7] drm/i915/guc: Print the GuC error capture
 output register list.
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

DQpPbiBGcmksIDIwMjEtMTItMjQgYXQgMTI6MDkgKzAwMDAsIFR2cnRrbyBVcnN1bGluIHdyb3Rl
Og0KPiBIaSwNCj4gDQo+IFNvbWVob3cgSSBzdHVtYmxlZCBvbiB0aGlzIHdoaWxlIGJyb3dzaW5n
IHRocm91Z2ggdGhlIG1haWxpbmcgbGlzdC4NCj4gDQo+IE9uIDIzLzEyLzIwMjEgMTg6NTQsIFRl
cmVzIEFsZXhpcywgQWxhbiBQcmV2aW4gd3JvdGU6DQo+ID4gUmV2aXNpdGluZyBiZWxvdyBodW5r
IG9mIHBhdGNoLTcgY29tbWVudCwgYXMgcGVyIG9mZmxpbmUgZGlzY3Vzc2lvbiB3aXRoIE1hdHQs
DQo+ID4gdGhlcmUgaXMgbGl0dGxlIGJlbmVmaXQgdG8gZXZlbiBtYWtpbmcgdGhhdCBndWMtaWQg
bG9va3VwIGJlY2F1c2U6DQo+ID4gDQo+ID4gMS4gdGhlIGRlbGF5IGJldHdlZW4gdGhlIGNvbnRl
eHQgcmVzZXQgbm90aWZpY2F0aW9uICh3aGVuIHRoZSB2bWFzIGFyZSBjb3BpZWQNCj4gPiAgICAg
YW5kIHdoZW4gd2UgdmVyaWZ5IHdlIGhhZCByZWNlaXZlZCBhIGd1YyBlcnIgY2FwdHVyZSBkdW1w
KSBtYXkgYmUgc3ViamVjdGl2ZWx5DQo+ID4gICAgIGxhcmdlIGVub3VnaCBhbmQgbm90IHRldGhl
cmVkIHRoYXQgdGhlIGd1Yy1pZCBtYXkgaGF2ZSBhbHJlYWR5IGJlZW4gcmUtYXNzaWduZWQuDQo+
ID4gDQo+ID4gMi4gSSB3YXMgcmVhbGx5IGxvb2tpbmcgZm9yIHNvbWUga2luZCBvZiB1bmlxdWUg
Y29udGV4dCBoYW5kbGUgdG8gcHJpbnQgb3V0IHRoYXQgY291bGQNCj4gPiAgICAgYmUgY29ycmVs
YXRlZCAoYnkgdXNlciBpbnNwZWN0aW5nIHRoZSBkdW1wKSBiYWNrIHRvIGEgdW5pcXVlIGFwcCBv
ciBwcm9jZXNzIG9yDQo+ID4gICAgIGNvbnRleHQtaWQgYnV0IGNhbnQgZmluZCBzdWNoIGEgcGFy
YW0gaW4gc3RydWN0IGludGVsX2NvbnRleHQuDQo+ID4gDQo+ID4gQXMgcGFydCBvZiBmdXJ0aGVy
IHJldmlld2luZyB0aGUgZW5kIHRvIGVuZCBmbG93cyBhbmQgcG9zc2libGUgZXJyb3Igc2NlbmFy
aW9zLCB0aGVyZQ0KPiA+IGFsc28gbWF5IHBvdGVudGlhbGx5IGJlIGEgbWlzbWF0Y2ggYmV0d2Vl
biAid2hpY2ggY29udGV4dCB3YXMgcmVzZXQgYnkgZ3VjIGF0IHRpbWUtbiINCj4gPiB2cyAid2hp
Y2ggY29udGV4dCdzIHZtYSBidWZmZXJzIGlzIGJlaW5nIHByaW50ZWQgb3V0IGF0IHRpbWUtbit4
IiBpZg0KPiA+IHdlIGFyZSBleHBlcmllbmNpbmcgYmFjay10by1iYWNrIHJlc2V0cyBhbmQgdGhl
IHVzZXIgZHVtcGVkIHRoZSBkZWJ1Z2ZzIHgtdGltZSBsYXRlci4NCj4gDQo+IFdoYXQgZG9lcyB0
aGlzIGFsbCBhY3R1YWxseSBtZWFuLCBiZWNhdXNlIGl0IHNvdW5kcyByYXRoZXIgYWxhcm1pbmcs
IA0KPiB0aGF0IGl0IGp1c3Qgd29uJ3QgYmUgcG9zc2libGUgdG8ga25vdyB3aGljaCBjb250ZXh0
LCBiZWxvbmdpbmcgdG8gd2hpY2ggDQo+IHByb2Nlc3MsIHdhcyByZXNldD8gQW5kIGJlY2F1c2Ug
b2YgZ3VjX2lkIHBvdGVudGlhbGx5IHJlLWFzc2lnbmVkIGV2ZW4gDQo+IHRoZSBjYXB0dXJlZCBW
TUFzIG1heSBub3QgYmUgdGhlIGNvcnJlY3Qgb25lcz8NCj4gDQo+IA0KDQpUaGUgZmxvdyBvZiBl
dmVudHMgYXJlIGFzIGJlbG93Og0KDQoxLiBndWMgc2VuZHMgbm90aWZpY2F0aW9uIHRoYXQgYW4g
ZXJyb3IgY2FwdHVyZSB3YXMgZG9uZSBhbmQgcmVhZHkgdG8gdGFrZS4NCgktIGF0IHRoaXMgcG9p
bnQgd2UgY29weSB0aGUgZ3VjIGVycm9yIGNhcHR1cmVkIGR1bXAgaW50byBhbiBpbnRlcmltIHN0
b3JlDQoJICAobGFyZ2VyIGJ1ZmZlciB0aGF0IGNhbiBob2xkIG11bHRpcGxlIGNhcHR1cmVzKS4N
CjIuIGd1YyBzZW5kcyBub3RpZmljYXRpb24gdGhhdCBhIGNvbnRleHQgd2FzIHJlc2V0IChhZnRl
ciB0aGUgcHJpb3IpDQoJLSB0aGlzIHRyaWdnZXJzIGEgY2FsbCB0byBpOTE1X2dwdV9jb3JlZHVt
cCB3aXRoIHRoZSBjb3JyZXNwb25kaW5nIGVuZ2luZS1tYXNrDQogICAgICAgICAgZnJvbSB0aGUg
Y29udGV4dCB0aGF0IHdhcyByZXNldA0KCS0gaTkxNV9ncHVfY29yZWR1bXAgcHJvY2VlZHMgdG8g
Z2F0aGVyIGVudGlyZSBncHUgc3RhdGUgaW5jbHVkaW5nIGRyaXZlciBzdGF0ZSwNCiAgICAgICAg
ICBnbG9iYWwgZ3B1IHN0YXRlLCBlbmdpbmUgc3RhdGUsIGNvbnRleHQgdm1hcyBhbmQgYWxzbyBl
bmdpbmUgcmVnaXN0ZXJzLiBGb3IgdGhlDQogICAgICAgICAgZW5naW5lIHJlZ2lzdGVycyBub3cg
Y2FsbCBpbnRvIHRoZSBndWNfY2FwdHVyZSBjb2RlIHdoaWNoIG1lcmVseSBuZWVkcyB0byB2ZXJp
ZnkNCgkgIHRoYXQgR3VDIGhhZCBhbHJlYWR5IGRvbmUgYSBzdGVwIDEgYW5kIHdlIGhhdmUgZGF0
YSByZWFkeSB0byBiZSBwYXJzZWQuDQoNCih0aW1lIGVsYXBzZXMpDQoNCjMuIGVuZCB1c2VyIHRy
aWdnZXJzIHRoZSBzeXNmcyB0byBkdW1wIHRoZSBlcnJvciBzdGF0ZSBhbmQgYWxsIHByaW9yIGlu
Zm9ybWF0aW9uIGlzIA0KICAgcHJpbnRlZCBvdXQgaW4gcHJvcGVyIGZvcm1hdC4NCg0KDQpCZXR3
ZWVuIDIgYW5kIDM6DQogICAtIExvb2tpbmcgYXQgZXhpc3RpbmcgZnJhbWV3b3JrIChlc3RhYmxp
c2hlZCBieSBleGVjbGlzdC1jYXB0dXJlIGNvZGVzKSwNCiAgICAgICAgSSBiZWxpZXZlIHdlIG9u
bHkgaG9sZCBvbiB0byB0aGUgZmlyc3QgZXJyb3Igc3RhdGUgY2FwdHVyZSBhbmQgZHJvcCBhbnkN
CiAgICAgICAgc3Vic2VxdWVudCBjb250ZXh0IHJlc2V0IGNhcHR1cmVzIG9jY3VycmluZyBiZWZv
cmUgIzMgKGkuZS4gYmVmb3JlIHRoZSBlbmQgdXNlcg0KICAgICAgICB0cmlnZ2VycyB0aGUgZGVi
dWdmcykNCiAgIC0gSG93ZXZlciwgaW4gdGhhdCBzYW1lIHNwYWNlLCBndWMgY2FuIHNlbmQgdXMg
bW9yZSBhbmQgbW9yZSBlcnJvci1jYXB0dXJlIGxvZ3MNCiAgICAgICAgIGxvbmcgYXMgd2UgaGF2
ZSBzcGFjZSBmb3IgaXQgaW4gdGhlIGJ1ZmZlci4NCg0KU28gdGhlIGlzc3VlIHdhcyB0aGF0IGlu
IG15IG9yaWdpbmFsIHBhdGNoLCBmb3IgZXZlcnkgbmV4dCBjYXB0dXJlLXNuYXBob3Qgd2UgZmlu
ZCBpbg0KZ3VjLWVycm9yLWNhcHR1cmUgb3V0cHV0IGJ1ZmZlciwgaSB3b3VsZCBmaW5kIHRoZSBt
YXRjaGluZyBlbmdpbmUgYW5kIHByaW50IG91dCBhbGwNCnRoZSBWTUEgZGF0YSAodGhhdCB3YXMg
c3VjY2Vzc2Z1bGx5IGNhcHR1cmVkIGluICMyKS4gSG93ZXZlciwgaSBzaG91bGQgb25seSBkbyB0
aGF0DQpmb3IgdGhlIGZpcnN0IGR1bXAgb25seSBzaW5jZSB0aGF0IHdvdWxkIGNvcnJlbGF0ZSBl
eGFjdGx5IHdpdGggdGhlIGV4aXN0aW5nIGV4ZWNsaXN0DQpjb2RlIGJlaGF2aW9yLiBTbyB0aGlz
IGZpeCBpcyBhY3R1YWxseSBwcmV0dHkgc3RyYWlnaHQgZm9yd2FyZCB0byBnZXQgdGhlIHJpZ2h0
IG1hdGNoaW5nDQpWTUEuDQoNCldSVCB0byBteSBzdGF0ZW1lbnQgYWJvdXQgImdldHRpbmcgdGhl
IGNvbnRleHQtdG8tPnByb2Nlc3MiIGxvb2t1cCwgaSB3YXMgaW5pdGlhbGx5IGhvcGluZyB0aGF0
DQpJIGNvdWxkICJvbiBteSBvd24iICh3aXRoaW4gdGhlIGd1Yy1lcnItY2FwdHVyZSBtb2R1bGUp
IGdldCB0aGF0IGluZm9ybWF0aW9uLCBidXQgaXQgd291bGQgYmUNCmEgc3RyZXRjaCAoaW4gdGVy
bXMgb2YgaW50ZXItY29tcG9uZW50IGluZm9ybWF0aW9uIGFjY2VzcykuIE1vcmUgaW1wb3J0YW50
bHksIGl0cyB0b3RhbGx5DQp1bm5lY2Vzc2FyeSBzaW5jZSBleGlzdGluZyBleGVjbGlzdCBjb2Rl
IGFscmVhZHkgZGlkIHRoYXQgaW4gU3RlcCAyLiBUaGF0IGNvZGUgcmVtYWlucyBpbnRhY3QNCndp
dGggZ3VjLWVycm9yLWNhcHR1cmUuDQoNCk9uZSBvcGVuIGkgcGxhbiB0byB0ZXN0IGJlZm9yZSBm
aW5hbCByZXYgaXMgd2l0aCBzaGFyZWQgZW5naW5lcyBsaWtlIENDUyBhbmQgUkNTIHdoZXJlIGkg
d2FudCB0bw0KdHJpZ2dlciBjYXNjYWRpbmcgaGFuZ3MgKyByZXNldHMgaW4gcXVpY2sgc3VjY2Vz
c2lvbiBqdXN0IHRvIHNlZSBob3cgdGhlIG92ZXJhbGwgZmxvdyBiZWhhdmlvciB3b3Jrcy4NCg0K
SSB3aWxsIGF0dGFjaCBhbiBvdXRwdXQgZ3VjIGVycm9yIGNhcHR1cmUgYmFzZWQgZ3B1IGVycm9y
IGR1bXAgYXMgcGVyIHRoZSByZXZpZXcgY29tbWVudCBmcm9tIE1hdHRoZXcNCm9uIGxhc3QgcmV2
Lg0KDQouLmFsYW4NCj4gDQoNCg0KPiBSZWdhcmRzLA0KPiANCj4gVHZydGtvDQo+IA0KPiA+IChS
ZWNhcDogRmlyc3QsIGd1YyBub3RpZmllcyBjYXB0dXJlIGV2ZW50LCBzZWNvbmQsIGd1YyBub3Rp
ZmllcyBjb250ZXh0IHJlc2V0IGR1cmluZw0KPiA+IHdoaWNoIHdlIHRyaWdnZXIgaTkxNV9ncHVf
Y29yZWR1bXAuIEluIHRoaXMgc2Vjb25kIHN0ZXAsIHRoZSB2bWEncyBhcmUgZHVtcGVkIGFuZCB3
ZQ0KPiA+IHZlcmlmeSB0aGF0IHRoZSBndWMgY2FwdHVyZSBoYXBwZW5lZCBidXQgZG9uJ3QgcGFy
c2UgdGhlIGd1Yy1lcnItY2FwdHVyZS1sb2dzIHlldC4NCj4gPiBUaGlyZCBzdGVwIGlzIHdoZW4g
dXNlciB0cmlnZ2VycyB0aGUgZGVidWdmcyB0byBkdW1wIHdoaWNoIGlzIHdoZW4gd2UgcGFyc2Ug
dGhlIGVycm9yDQo+ID4gY2FwdHVyZSBsb2dzLikNCj4gPiANCj4gPiBBcyBhIGZpeCwgd2hhdCB3
ZSBjYW4gZG8gaW4gdGhlIGd1Y19lcnJvcl9jYXB0dXJlIHJlcG9ydCBvdXQgaXMgdG8gZW5zdXJl
IHRoYXQNCj4gPiB3ZSBkb250IHJlLXByaW50IHRoZSBwcmV2aW91c2x5IGR1bXBlZCB2bWFzIGlm
IHdlIGVuZCB1cCBmaW5kaW5nIG11bHRpcGxlDQo+ID4gZ3VjLWVycm9yLWNhcHR1cmUgZHVtcHMg
c2luY2UgdGhlIGk5MTVfZ3B1X2NvcmVkdW1wIHdvdWxkIGhhdmUgb25seSBjYXB0dXJlZCB0aGUg
dm1hJ3MNCj4gPiBmb3IgdGhlIHZlcnkgZmlyc3QgY29udGV4dCB0aGF0IHdhcyByZXNldC4gQW5k
IHdpdGggZ3VjLXN1Ym1pc3Npb24sIHRoYXQgd291bGQgYWx3YXlzDQo+ID4gY29ycmVsYXRlIHRv
IHRoZSAibmV4dC15ZXQtdG8tYmUtcGFyc2VkIiBndWMtZXJyLWNhcHR1cmUgZHVtcCAoc2luY2Ug
dGhlIGd1Yy1lcnJvci1jYXB0dXJlDQo+ID4gbG9ncyBhcmUgbGFyZ2UgZW5vdWdoIHRvIGhvbGQg
ZGF0YSBmb3IgbXVsdGlwbGUgZHVtcHMpLg0KPiA+IA0KPiA+IFRoZSBjaGFuZ2VzIChyZW1vdmFs
IG9mIGJlbG93LWh1bmsgYW5kIGFkZGluZyBvZiBvbmx5LXByaW50LXRoZS1maXJzdC12bWEiKSBp
cyB0cml2aWFsDQo+ID4gYnV0IGkgZmVsdCBpdCB3YXJyYW50ZWQgYSBnb29kIGV4cGxhbmF0aW9u
LiBBcG9sb2dpZXMgZm9yIHRoZSBpbmJveCBub2lzZS4NCj4gPiANCj4gPiAuLi5hbGFuDQo+ID4g
DQo+ID4gT24gVHVlLCAyMDIxLTEyLTA3IGF0IDIyOjMyIC0wODAwLCBBbGFuIFByZXZpbiBUZXJl
cyBBbGV4aXMgd3JvdGU6DQo+ID4gPiBUaGFua3MgYWdhaW4gZm9yIHRoZSBkZXRhaWxlZCByZXZp
ZXcgaGVyZS4NCj4gPiA+IFdpbGwgZml4IGFsbCB0aGUgcmVzdCBvbiBuZXh0IHJldi4NCj4gPiA+
IE9uZSBzcGVjaWFsIHJlc3BvbnNlIGZvciB0aGlzIG9uZToNCj4gPiA+IA0KPiA+ID4gDQo+ID4g
PiBPbiBUdWUsIDIwMjEtMTItMDcgYXQgMTY6MjIgLTA4MDAsIE1hdHRoZXcgQnJvc3Qgd3JvdGU6
DQo+ID4gPiA+IE9uIE1vbiwgTm92IDIyLCAyMDIxIGF0IDAzOjA0OjAyUE0gLTA4MDAsIEFsYW4g
UHJldmluIHdyb3RlOg0KPiA+ID4gPiA+ICsJCQlpZiAoZGF0YXR5cGUgPT0gR1VDX0NBUFRVUkVf
TElTVF9UWVBFX0VOR0lORV9JTlNUQU5DRSkgew0KPiA+ID4gPiA+ICsJCQkJR0NBUF9QUklOVF9H
VUNfSU5TVF9JTkZPKGk5MTUsIGVidWYsIGRhdGEpOw0KPiA+ID4gPiA+ICsJCQkJZW5nX2luc3Qg
PSBGSUVMRF9HRVQoR1VDX0NBUFRVUkVfREFUQUhEUl9TUkNfSU5TVEFOQ0UsIGRhdGEuaW5mbyk7
DQo+ID4gPiA+ID4gKwkJCQllbmcgPSBndWNfbG9va3VwX2VuZ2luZShndWMsIGVuZ2luZWNsYXNz
LCBlbmdfaW5zdCk7DQo+ID4gPiA+ID4gKwkJCQlpZiAoZW5nKSB7DQo+ID4gPiA+ID4gKwkJCQkJ
R0NBUF9QUklOVF9JTlRFTF9FTkdfSU5GTyhpOTE1LCBlYnVmLCBlbmcpOw0KPiA+ID4gPiA+ICsJ
CQkJfSBlbHNlIHsNCj4gPiA+ID4gPiArCQkJCQlQUklOVCgmaTkxNS0+ZHJtLCBlYnVmLCAiICAg
IGk5MTUtRW5nLUxvb2t1cCBGYWlsIVxuIik7DQo+ID4gPiA+ID4gKwkJCQl9DQo+ID4gPiA+ID4g
KwkJCQljZSA9IGd1Y19jb250ZXh0X2xvb2t1cChndWMsIGRhdGEuZ3VjX2N0eF9pZCk7DQo+ID4g
PiA+IA0KPiA+ID4gPiBZb3UgYXJlIGdvaW5nIHRvIG5lZWQgdG8gcmVmZXJlbmNlIGNvdW50IHRo
ZSAnY2UnIGhlcmUuIFNlZQ0KPiA+ID4gPiBpbnRlbF9ndWNfY29udGV4dF9yZXNldF9wcm9jZXNz
X21zZyBmb3IgYW4gZXhhbXBsZS4NCj4gPiA+ID4gDQo+ID4gPiANCj4gPiA+IE9oIGNyYXAgLSBp
IG1pc3NlZCB0aGlzIG9uZSAtIHdoaWNoIHlvdSBoYWQgZXhwbGljaXRseSBtZW50aW9uZWQgb2Zm
bGluZSB3aGVuIGkgd2FzIGRvaW5nIHRoZQ0KPiA+ID4gZGV2ZWxvcG1lbnQuIFNvcnJ5IGFib3V0
IHRoYXQgaSBqdXN0IHRvdGFsbHkgbWlzc2VkIGl0IGZyb20gbXkgdG9kby1ub3Rlcy4NCj4gPiA+
IA0KPiA+ID4gLi4uYWxhbg0KDQo=
