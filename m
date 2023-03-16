Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BCA446BC7C7
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 08:53:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5011010EA75;
	Thu, 16 Mar 2023 07:53:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B584D10EA62
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 07:53:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678953224; x=1710489224;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gf+Fpely6tk1aWlX+crgEJVCPsHHnvjiJ/c6skm10O0=;
 b=bMo9tiBUuy4ftLhOTiqwXkbPzZEmC3jBg2c/MomRrdWM8G9R9zhPnliK
 cTxJCRFYRVJkjcV1GlSSE/2QXxKwCtEUQ+l982X0sFn1qJU9k2qHvCAf+
 E+YQl+jgCA7HjZ0Ah357R/pl9HcupFSCypfkfXG/4wmrHLMY5O6Ypw49r
 MvN2N16JRWt09RjCi7E7SLOFjnSFNYxRGFEKTL3Mk+TZg/XynrQgEysFU
 R2+4SAaJGtki5NK0wvrFBk/VCGfOnCsCDC/h//ZwslJZWMxmNnIL8lCOj
 KqNCHPQdDa8VUL4thHhdClFKqWbpNHcBr1zKegdQfXNG75CfrJeR+Cdy4 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="365605802"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="365605802"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 00:53:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="682193978"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="682193978"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP; 16 Mar 2023 00:53:44 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 16 Mar 2023 00:53:43 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 16 Mar 2023 00:53:43 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 16 Mar 2023 00:53:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Uqe1EbdmvcZQ/xWI1/qrvoj2dNGa1Gs3Zh9xiADtKx68Db1w9DfYUZ+2Q7jFIzPfWORT3Smzj8ArYddyV8iBMSiqgRfhHvvm61Xpjvuoo0Z626a3Yh+20P8ju28778WokU2eA6mytVw07/8EevJAj2bUZRxiew+YbaDBLvM/L83INrqr0PRXjmYqVfvnlrfnxvtYONKBymZkwKMWx5CC4Gqg7KRWkX0oSFWYvEjPxQdoaoj4QunN9o2PMlJjhu2cTvUoT0Uau5e5esE4O/4M1htZxE8oMXoTF+3RW29qPkLl23WuhrLbnKXfovWYz6iK8SYpokTHqaELtd5mvxjPmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gf+Fpely6tk1aWlX+crgEJVCPsHHnvjiJ/c6skm10O0=;
 b=V9uAJ9vAJv8gMQoBHBDseUBB2RGPw5Stu4IRwbh5PB/2At3FDLgSN+5lecYQ3glTHHDptGc3qG6Kzy8p7BxFiONtXLeormiflx8G1eh8UKWJ6YGvkdWBlyrIUC+79PP7G8VKeuoaxJ1IyVPH68X9HkqSongIn7uf8cjIuc5NN66Vtxva4zucupxo0W3YclcjFWGMdbp9fkCz6biLLCp4Qv3LHSTLY7UcN0UmTf9i8p+ercSN22F3EplnVcae1RwqzbVNPoS6xuiWob9jhcCrc6s+8ypNcBMsjWbFNaahxll5RUpFmUoky97o2NM3Y/IEaGgus/cLY1aup+KyP5WF5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SA1PR11MB5875.namprd11.prod.outlook.com (2603:10b6:806:238::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.31; Thu, 16 Mar
 2023 07:53:42 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::f677:36e:9fae:b45e]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::f677:36e:9fae:b45e%5]) with mapi id 15.20.6178.031; Thu, 16 Mar 2023
 07:53:42 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v12 1/6] drm/i915/gsc: Create GSC request submission
 mechanism
Thread-Index: AQHZUlyJPx5BnhUncEC+j1rHCRb5pK79E/pQ
Date: Thu, 16 Mar 2023 07:53:41 +0000
Message-ID: <DM4PR11MB63601F910BE5FDBDFE55A8C0F4BC9@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230309075423.409402-1-suraj.kandpal@intel.com>
 <20230309075423.409402-2-suraj.kandpal@intel.com>
In-Reply-To: <20230309075423.409402-2-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SA1PR11MB5875:EE_
x-ms-office365-filtering-correlation-id: 03b832cf-d8ed-4d80-2a11-08db25f38f88
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5JAjANuUnuC+0mD+jqzR1KqhFt3XYd0nx67KawW/B2HTi9klXiAMGGpAR3hVjN6sjSEYRzCHfaGsHi07PXTX0eJ4Xwi33SCeXlUl+VToEvTuY9UDYLrPO9Qts6VUquntSEFuhrKpRWfmb0vZmsT13lJHPzErjkbtL6X5OAygJlDpFa7joanfVuEXvnfKoyWTenHC0xpusPDv4UZJAjgpruMbGcenZsA+tnv0LCj+bKuys8d+p3ks6kzmO77Bgi+9RjxhzIv0bEgeQQyK7lsrB66hu1p3EG+KtBGCs/GxDdbRRqSmutqjpVjap0ES9hDSarpp/2gr0epUkzvGFPj5BPKT70exzjiE+uTQ5yuaCGBe9UEh8+mtWIKJoBnB005a9E/TwBcZuFkF4zgod4fbL55AnlzBVXDyfSwaPCdlgjSmeqHpQ32cUbPIvRMsGiKThDx3tL+hBJjcXSdrnkpo42EYL6puPiVRa1y4F6vq9LOX77OpKE2/1VPJzKshIgtUJY3fpQAfhAWarx/0i+KZiL2QOQt9AP49/BYDOSGpjDn/d5MyePO1igNFpHKNV9ZWGHTiD27Kng6fDZF/X19O/BTMEVQA5jlmmyh0Ym4Z13y+FQ/kIZvyfSGNneMYaqN62Yo9qQyuuNW4fHHgM2/bFXsrWDSLaEuguQcWfrKt8HUGiX/X8YCZauJvporp4dgvOpG9vX3qbBKDTNUwlLJDHg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(136003)(39860400002)(396003)(376002)(366004)(451199018)(186003)(9686003)(316002)(122000001)(54906003)(38100700002)(478600001)(38070700005)(83380400001)(110136005)(8676002)(64756008)(66446008)(66476007)(66556008)(66946007)(4326008)(41300700001)(76116006)(82960400001)(2906002)(5660300002)(52536014)(8936002)(107886003)(26005)(6506007)(55016003)(33656002)(53546011)(71200400001)(86362001)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QWN2aWticHdqT2VRSHBoNEFTOXNHRkc0K25PWms4bHJPb3JEQWg3bE5Qc0VJ?=
 =?utf-8?B?R1F0Sng1eGVCT2szN0x6eTRmOUVwQUNURlhSalR0L2RuZXlzZDNtNHdPaGZF?=
 =?utf-8?B?bS83TEgxTklSSTJwbHRvaE1oMUJHNjV3RnFvaGkxL0pJYkZoWnFQMFczNTQy?=
 =?utf-8?B?NE5lMW00NmVvbTArb25CN0RpeHJVWWxvR2dTaVM3YytITFptOHNhNXdqZlkz?=
 =?utf-8?B?MGEweUdTZytGRjlHa3FhWTYwUU1qT2l5aDRHaE4wQmQ3QjFHQjMwVy9KeE50?=
 =?utf-8?B?OVZnZ1RKbC9PcVZidXJ6elRJTlBzdU12ZzBHeHdvTnR2NjVUZThoUDRuWXJy?=
 =?utf-8?B?RHhOc01YblVGQWIrL25EYW9NUXNuSzQxbXJrQ3lyTnJ4VFNzK29HaVRiU2RG?=
 =?utf-8?B?anczTjRUbHdrT3FIdnhYQzhxSGxsU2NsbkJYd1hCQi9LOEFwWHZMdk9HWUlU?=
 =?utf-8?B?YWUyYktIcWVGRVFtdkVqQTBjOUhOZmpKam5FN3hLbWRMZlRCMDJWQmtOU3JR?=
 =?utf-8?B?WlYxYWZqUmhHblZpY1FkQ3lCdXlGSWZ2dXdocmUxLzFRZUxiei9NNURLSUtW?=
 =?utf-8?B?czBEckh4TjRWd1IxYWQ4UjNRbkE4cmQ1QjNVT0dCVkZOSk5EOFYxRlhnTWRS?=
 =?utf-8?B?WExMY2FYTks4VktsMlppbVdGVkFNNTRIcXdyZDQ3M3RvSURYNFdKWEtXeHJZ?=
 =?utf-8?B?VWQvN0FUS09WL3dCMzZQckpiRjR3VU9WS21MRmp1RFFHajBxRllmaWdxRmZW?=
 =?utf-8?B?NjBoeW56QzkxY2N3d21mMm5PSGgwZnJwdU54bDRsaEVvTDlLMkdTYnpVRDJa?=
 =?utf-8?B?di9yRXFNMmd4MkVmK3l2bXlsWHNPbXNFak1aaTlPOFhTUjZEWnh1TXNiY05j?=
 =?utf-8?B?Q3FXWDJQVUM1NnpHM2ZXWTNoaGtCT1pqYUcvUkFyS0c2YVZwcC8ycUV3NmUr?=
 =?utf-8?B?dlFkc2J0SDloZlFvSTB0c01HbFRFVDZucjFab3VrVllYZG8zRnNyNmoyRzVJ?=
 =?utf-8?B?eS9Wandldld1ajlHQWpycVlNa2VMczJIUVNnRWp2QXRyZS9ZTVp0WnBna0Fm?=
 =?utf-8?B?VFRsNUwvKzdEWFBUSG9JakQycm8zemYwM3pvUzJQRmd2RlArR3hGbVFOaGsz?=
 =?utf-8?B?cUk2Wi9IM1dtM0Z0Tm1OUDNhTTUyeCtxV0t1NStCNklET1NMMFU5UmlXVkov?=
 =?utf-8?B?TTVMUi8rVGU4UVdyWElTbDVGaUhFb0U3MnVMUnJwQ2ZVZElQdTNtM3IvalBp?=
 =?utf-8?B?ekRvdW1NU09UZVVEODJmK0xRREVZZGVETWVNcjJ5SFpVL2djS3UwVFhlNmhN?=
 =?utf-8?B?UDNzR3ZHZEJjRDY5dHMzNmRqM2U3Umg2UndnVHlyV2dwWWM0NlZod0tEeStZ?=
 =?utf-8?B?emRHNFN1VEVwY2hwOUNJcXBqYkN4c2ovQjZmTjlTVzduendhbCt5QjgxemRB?=
 =?utf-8?B?R1VuN0NJeXN6T0pZY0djRklCV3d5MFNmZTlaNEI2NGdBK1BFbFNUUU5IbU5R?=
 =?utf-8?B?Ukc3NXowN1dDTERrT3k1UXhZOE1mL3ZGdk5zNnpaalNrU3Rjd3llNWEyRjd5?=
 =?utf-8?B?cDZoUTVlTm5GT0M1a2NLc0s5SU5Xc0hiUkVydTZBdjlzOTQyd0xBUGNtVGh3?=
 =?utf-8?B?TkNNQ1U4L3FiUkk2WThHTWM0TUNIRktHRmlYeVRmdFg2V05tbTg0YllaclFi?=
 =?utf-8?B?TS9vNkJadHY2ajVvNW9ZOEhCUG1ZQWEzNkk2SndpMUtXNEhGeE1lUkhhS05y?=
 =?utf-8?B?MGkrQjBHMFlDY3NpN080Z3JOK0FUTmtrWDVkVGVrRVNrOE84eW1ZUitYNXNy?=
 =?utf-8?B?RE1wSXEwaDgxSEV6S3ZlTGpXTHI4aTBwNjZyQ1BnREVUL3V4NUpIcTNtR0kr?=
 =?utf-8?B?UVVLa3FneVJHZS8wbVJBdk5HUjdpVUh3b1krZldQSDVJQXY0aWszWXdFKzZX?=
 =?utf-8?B?ZnVtbkpFS095MFFqZy9qRXM4S3MybkIzWXpFMExrY2JHajh5VEpsc2Fvancz?=
 =?utf-8?B?QzAxUEhUWE5RU1UxbmVSeFZTcGdCZnFISng4d29vR0hKT0JRME1yNGVaTjlT?=
 =?utf-8?B?VXU0dHJ5MHcyRzQvYk1TZzZFbHZRdGpxK3hLN1ZYTVBHSjNzNHBQOGpnaDJF?=
 =?utf-8?Q?2tHNcLyNdWh724qEhPi0iSWc4?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 03b832cf-d8ed-4d80-2a11-08db25f38f88
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2023 07:53:41.8247 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: S5YeIPClywJ15Axc+eKC4TqjNRH2M0reUSqGOes5LqCU/Jns33ErfnPHDfjx7dChx/1OtAqHbjX9OHRDNeC5KQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5875
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v12 1/6] drm/i915/gsc: Create GSC request
 submission mechanism
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
Cc: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS2FuZHBhbCwgU3VyYWog
PHN1cmFqLmthbmRwYWxAaW50ZWwuY29tPg0KPiBTZW50OiBUaHVyc2RheSwgTWFyY2ggOSwgMjAy
MyAxOjI0IFBNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBO
YXV0aXlhbCwgQW5raXQgSyA8YW5raXQuay5uYXV0aXlhbEBpbnRlbC5jb20+OyBTaGFua2FyLCBV
bWENCj4gPHVtYS5zaGFua2FyQGludGVsLmNvbT47IEthbmRwYWwsIFN1cmFqIDxzdXJhai5rYW5k
cGFsQGludGVsLmNvbT47IENlcmFvbG8NCj4gU3B1cmlvLCBEYW5pZWxlIDxkYW5pZWxlLmNlcmFv
bG9zcHVyaW9AaW50ZWwuY29tPjsgVGVyZXMgQWxleGlzLCBBbGFuIFByZXZpbg0KPiA8YWxhbi5w
cmV2aW4udGVyZXMuYWxleGlzQGludGVsLmNvbT4NCj4gU3ViamVjdDogW1BBVENIIHYxMiAxLzZd
IGRybS9pOTE1L2dzYzogQ3JlYXRlIEdTQyByZXF1ZXN0IHN1Ym1pc3Npb24gbWVjaGFuaXNtDQo+
IA0KPiBIRENQIGFuZCBQWFAgd2lsbCByZXF1aXJlIGEgY29tbW9uIGZ1bmN0aW9uIHRvIGFsbG93
IGl0IHRvIHN1Ym1pdCBjb21tYW5kcyB0byB0aGUNCj4gZ3NjIGNzLiBBbHNvIGFkZGluZyB0aGUg
Z3NjIG10bCBoZWFkZXIgdGhhdCBuZWVkcyB0byBiZSBhZGRlZCBvbiB0byB0aGUgZXhpc3RpbmcN
Cj4gcGF5bG9hZHMgb2YgSERDUCBhbmQgUFhQLg0KPiANCj4gLS12NA0KPiAtU2VwcmF0ZSBnc2Mg
bG9hZCBhbmQgaGVjaSBjbWQgc3VibWlzc2lvbiBpbnRvIGRpZmZlcmVudCBmdW5jdGlvbnMgaW4g
ZGlmZmVyZW50IGZpbGVzDQo+IGZvciBiZXR0ZXIgc2NhbGFiaWxpdHkgW0FsYW5dIC1SZW5hbWUg
Z3NjIGFkZHJlc3MgZmllbGQgW0FsYW5dDQo+IA0KPiAtLXY1DQo+IC1yZW1vdmUgZXh0cmEgbGlu
ZSBpcyBpbnRlbF9nc2NfZncuaCBbVW1hXQ0KDQpMb29rcyBHb29kIHRvIG1lLg0KUmV2aWV3ZWQt
Ynk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQoNCj4gQ2M6IERhbmllbGUg
Q2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+DQo+IENjOiBB
bGFuIFByZXZpbiA8YWxhbi5wcmV2aW4udGVyZXMuYWxleGlzQGludGVsLmNvbT4NCj4gU2lnbmVk
LW9mZi1ieTogU3VyYWogS2FuZHBhbDxzdXJhai5rYW5kcGFsQGludGVsLmNvbT4NCj4gUmV2aWV3
ZWQtYnk6IEFsYW4gUHJldmluIDxhbGFuLnByZXZpbi50ZXJlcy5hbGV4aXNAaW50ZWwuY29tPg0K
PiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlICAgICAgICAgICAgICAgICB8
ICAxICsNCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dwdV9jb21tYW5kcy5oICB8
ICAyICsNCj4gLi4uL2k5MTUvZ3QvdWMvaW50ZWxfZ3NjX3VjX2hlY2lfY21kX3N1Ym1pdC5jIHwg
OTQgKysrKysrKysrKysrKysrKysrKw0KPiAuLi4vaTkxNS9ndC91Yy9pbnRlbF9nc2NfdWNfaGVj
aV9jbWRfc3VibWl0LmggfCA0NSArKysrKysrKysNCj4gIDQgZmlsZXMgY2hhbmdlZCwgMTQyIGlu
c2VydGlvbnMoKykNCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC91Yy9pbnRlbF9nc2NfdWNfaGVjaV9jbWRfc3VibWl0LmMNCj4gIGNyZWF0ZSBtb2RlIDEwMDY0
NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9nc2NfdWNfaGVjaV9jbWRfc3VibWl0
LmgNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZSBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlIGluZGV4DQo+IDhlNDZmNTdlNDU2OS4uOGM2YjM4
MDhjNDlmIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQ0KPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQ0KPiBAQCAtMTk1LDYgKzE5NSw3IEBA
IGk5MTUteSArPSBcDQo+ICBpOTE1LXkgKz0gXA0KPiAgCSAgZ3QvdWMvaW50ZWxfZ3NjX2Z3Lm8g
XA0KPiAgCSAgZ3QvdWMvaW50ZWxfZ3NjX3VjLm8gXA0KPiArCSAgZ3QvdWMvaW50ZWxfZ3NjX3Vj
X2hlY2lfY21kX3N1Ym1pdC5vXA0KPiAgCSAgZ3QvdWMvaW50ZWxfZ3VjLm8gXA0KPiAgCSAgZ3Qv
dWMvaW50ZWxfZ3VjX2Fkcy5vIFwNCj4gIAkgIGd0L3VjL2ludGVsX2d1Y19jYXB0dXJlLm8gXA0K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3B1X2NvbW1hbmRz
LmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ncHVfY29tbWFuZHMuaA0KPiBp
bmRleCBlMTA1MDdmYTcxY2UuLjVkMTQzZTJhOGRiMCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3B1X2NvbW1hbmRzLmgNCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfZ3B1X2NvbW1hbmRzLmgNCj4gQEAgLTQ0MCw2ICs0NDAsOCBAQA0K
PiAgI2RlZmluZSBHU0NfRldfTE9BRCBHU0NfSU5TVFIoMSwgMCwgMikNCj4gICNkZWZpbmUgICBI
RUNJMV9GV19MSU1JVF9WQUxJRCAoMSA8PCAzMSkNCj4gDQo+ICsjZGVmaW5lIEdTQ19IRUNJX0NN
RF9QS1QgR1NDX0lOU1RSKDAsIDAsIDYpDQo+ICsNCj4gIC8qDQo+ICAgKiBVc2VkIHRvIGNvbnZl
cnQgYW55IGFkZHJlc3MgdG8gY2Fub25pY2FsIGZvcm0uDQo+ICAgKiBTdGFydGluZyBmcm9tIGdl
bjgsIHNvbWUgY29tbWFuZHMgKGUuZy4gU1RBVEVfQkFTRV9BRERSRVNTLCBkaWZmIC0tZ2l0DQo+
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3NjX3VjX2hlY2lfY21kX3N1Ym1p
dC5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3NjX3VjX2hlY2lfY21k
X3N1Ym1pdC5jDQo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0DQo+IGluZGV4IDAwMDAwMDAwMDAwMC4u
YmUyNDI0YWY1MjFkDQo+IC0tLSAvZGV2L251bGwNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvdWMvaW50ZWxfZ3NjX3VjX2hlY2lfY21kX3N1Ym1pdC5jDQo+IEBAIC0wLDAgKzEsOTQg
QEANCj4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQNCj4gKy8qDQo+ICsgKiBDb3B5
cmlnaHQgwqkgMjAyMyBJbnRlbCBDb3Jwb3JhdGlvbg0KPiArICovDQo+ICsNCj4gKyNpbmNsdWRl
ICJndC9pbnRlbF9lbmdpbmVfcG0uaCINCj4gKyNpbmNsdWRlICJndC9pbnRlbF9ncHVfY29tbWFu
ZHMuaCINCj4gKyNpbmNsdWRlICJndC9pbnRlbF9ndC5oIg0KPiArI2luY2x1ZGUgImd0L2ludGVs
X3JpbmcuaCINCj4gKyNpbmNsdWRlICJpbnRlbF9nc2NfdWNfaGVjaV9jbWRfc3VibWl0LmgiDQo+
ICsNCj4gK3N0cnVjdCBnc2NfaGVjaV9wa3Qgew0KPiArCXU2NCBhZGRyX2luOw0KPiArCXUzMiBz
aXplX2luOw0KPiArCXU2NCBhZGRyX291dDsNCj4gKwl1MzIgc2l6ZV9vdXQ7DQo+ICt9Ow0KPiAr
DQo+ICtzdGF0aWMgaW50IGVtaXRfZ3NjX2hlY2lfcGt0KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJx
LCBzdHJ1Y3QNCj4gK2dzY19oZWNpX3BrdCAqcGt0KSB7DQo+ICsJdTMyICpjczsNCj4gKw0KPiAr
CWNzID0gaW50ZWxfcmluZ19iZWdpbihycSwgOCk7DQo+ICsJaWYgKElTX0VSUihjcykpDQo+ICsJ
CXJldHVybiBQVFJfRVJSKGNzKTsNCj4gKw0KPiArCSpjcysrID0gR1NDX0hFQ0lfQ01EX1BLVDsN
Cj4gKwkqY3MrKyA9IGxvd2VyXzMyX2JpdHMocGt0LT5hZGRyX2luKTsNCj4gKwkqY3MrKyA9IHVw
cGVyXzMyX2JpdHMocGt0LT5hZGRyX2luKTsNCj4gKwkqY3MrKyA9IHBrdC0+c2l6ZV9pbjsNCj4g
KwkqY3MrKyA9IGxvd2VyXzMyX2JpdHMocGt0LT5hZGRyX291dCk7DQo+ICsJKmNzKysgPSB1cHBl
cl8zMl9iaXRzKHBrdC0+YWRkcl9vdXQpOw0KPiArCSpjcysrID0gcGt0LT5zaXplX291dDsNCj4g
KwkqY3MrKyA9IDA7DQo+ICsNCj4gKwlpbnRlbF9yaW5nX2FkdmFuY2UocnEsIGNzKTsNCj4gKw0K
PiArCXJldHVybiAwOw0KPiArfQ0KPiArDQo+ICtpbnQgaW50ZWxfZ3NjX3VjX2hlY2lfY21kX3N1
Ym1pdF9wYWNrZXQoc3RydWN0IGludGVsX2dzY191YyAqZ3NjLCB1NjQgYWRkcl9pbiwNCj4gKwkJ
CQkJdTMyIHNpemVfaW4sIHU2NCBhZGRyX291dCwNCj4gKwkJCQkJdTMyIHNpemVfb3V0KQ0KPiAr
ew0KPiArCXN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSA9IGdzYy0+Y2U7DQo+ICsJc3RydWN0IGk5
MTVfcmVxdWVzdCAqcnE7DQo+ICsJc3RydWN0IGdzY19oZWNpX3BrdCBwa3QgPSB7DQo+ICsJLmFk
ZHJfaW4gPSBhZGRyX2luLA0KPiArCS5zaXplX2luID0gc2l6ZV9pbiwNCj4gKwkuYWRkcl9vdXQg
PSBhZGRyX291dCwNCj4gKwkuc2l6ZV9vdXQgPSBzaXplX291dA0KPiArCX07DQo+ICsJaW50IGVy
cjsNCj4gKw0KPiArCWlmICghY2UpDQo+ICsJCXJldHVybiAtRU5PREVWOw0KPiArDQo+ICsJcnEg
PSBpOTE1X3JlcXVlc3RfY3JlYXRlKGNlKTsNCj4gKwlpZiAoSVNfRVJSKHJxKSkNCj4gKwkJcmV0
dXJuIFBUUl9FUlIocnEpOw0KPiArDQo+ICsJaWYgKGNlLT5lbmdpbmUtPmVtaXRfaW5pdF9icmVh
ZGNydW1iKSB7DQo+ICsJCWVyciA9IGNlLT5lbmdpbmUtPmVtaXRfaW5pdF9icmVhZGNydW1iKHJx
KTsNCj4gKwkJaWYgKGVycikNCj4gKwkJCWdvdG8gb3V0X3JxOw0KPiArCX0NCj4gKw0KPiArCWVy
ciA9IGVtaXRfZ3NjX2hlY2lfcGt0KHJxLCAmcGt0KTsNCj4gKw0KPiArCWlmIChlcnIpDQo+ICsJ
CWdvdG8gb3V0X3JxOw0KPiArDQo+ICsJZXJyID0gY2UtPmVuZ2luZS0+ZW1pdF9mbHVzaChycSwg
MCk7DQo+ICsNCj4gK291dF9ycToNCj4gKwlpOTE1X3JlcXVlc3RfZ2V0KHJxKTsNCj4gKw0KPiAr
CWlmICh1bmxpa2VseShlcnIpKQ0KPiArCQlpOTE1X3JlcXVlc3Rfc2V0X2Vycm9yX29uY2UocnEs
IGVycik7DQo+ICsNCj4gKwlpOTE1X3JlcXVlc3RfYWRkKHJxKTsNCj4gKw0KPiArCWlmICghZXJy
ICYmIGk5MTVfcmVxdWVzdF93YWl0KHJxLCAwLCBtc2Vjc190b19qaWZmaWVzKDUwMCkpIDwgMCkN
Cj4gKwkJZXJyID0gLUVUSU1FOw0KPiArDQo+ICsJaTkxNV9yZXF1ZXN0X3B1dChycSk7DQo+ICsN
Cj4gKwlpZiAoZXJyKQ0KPiArCQlkcm1fZXJyKCZnc2NfdWNfdG9fZ3QoZ3NjKS0+aTkxNS0+ZHJt
LA0KPiArCQkJIlJlcXVlc3Qgc3VibWlzc2lvbiBmb3IgR1NDIGhlY2kgY21kIGZhaWxlZCAoJWQp
XG4iLA0KPiArCQkJZXJyKTsNCj4gKw0KPiArCXJldHVybiBlcnI7DQo+ICt9DQo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9nc2NfdWNfaGVjaV9jbWRfc3Vi
bWl0LmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9nc2NfdWNfaGVjaV9j
bWRfc3VibWl0LmgNCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQNCj4gaW5kZXggMDAwMDAwMDAwMDAw
Li5jZjYxMGRmY2E3YTUNCj4gLS0tIC9kZXYvbnVsbA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC91Yy9pbnRlbF9nc2NfdWNfaGVjaV9jbWRfc3VibWl0LmgNCj4gQEAgLTAsMCArMSw0
NSBAQA0KPiArLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVCAqLw0KPiArLyoNCj4gKyAq
IENvcHlyaWdodCDCqSAyMDIzIEludGVsIENvcnBvcmF0aW9uDQo+ICsgKi8NCj4gKw0KPiArI2lm
bmRlZiBfSU5URUxfR1NDX1VDX0hFQ0lfQ01EX1NVQk1JVF9IXyAjZGVmaW5lDQo+ICtfSU5URUxf
R1NDX1VDX0hFQ0lfQ01EX1NVQk1JVF9IXw0KPiArDQo+ICsjaW5jbHVkZSA8bGludXgvdHlwZXMu
aD4NCj4gKw0KPiArc3RydWN0IGludGVsX2dzY191YzsNCj4gK3N0cnVjdCBpbnRlbF9nc2NfbXRs
X2hlYWRlciB7DQo+ICsJdTMyIHZhbGlkaXR5X21hcmtlcjsNCj4gKyNkZWZpbmUgR1NDX0hFQ0lf
VkFMSURJVFlfTUFSS0VSIDB4QTU3ODg3NUENCj4gKw0KPiArCXU4IGhlY2lfY2xpZW50X2lkOw0K
PiArI2RlZmluZSBIRUNJX01FQUREUkVTU19QWFAgMTcNCj4gKyNkZWZpbmUgSEVDSV9NRUFERFJF
U1NfSERDUCAxOA0KPiArDQo+ICsJdTggcmVzZXJ2ZWQxOw0KPiArDQo+ICsJdTE2IGhlYWRlcl92
ZXJzaW9uOw0KPiArI2RlZmluZSBNVExfR1NDX0hFQURFUl9WRVJTSU9OIDENCj4gKw0KPiArCXU2
NCBob3N0X3Nlc3Npb25faGFuZGxlOw0KPiArCXU2NCBnc2NfbWVzc2FnZV9oYW5kbGU7DQo+ICsN
Cj4gKwl1MzIgbWVzc2FnZV9zaXplOyAvKiBsb3dlciAyMCBiaXRzIG9ubHksIHVwcGVyIDEyIGFy
ZSByZXNlcnZlZCAqLw0KPiArDQo+ICsJLyoNCj4gKwkgKiBGbGFncyBtYXNrOg0KPiArCSAqIEJp
dCAwOiBQZW5kaW5nDQo+ICsJICogQml0IDE6IFNlc3Npb24gQ2xlYW51cDsNCj4gKwkgKiBCaXRz
IDItMTU6IEZsYWdzDQo+ICsJICogQml0cyAxNi0zMTogRXh0ZW5zaW9uIFNpemUNCj4gKwkgKi8N
Cj4gKwl1MzIgZmxhZ3M7DQo+ICsNCj4gKwl1MzIgc3RhdHVzOw0KPiArfSBfX3BhY2tlZDsNCj4g
Kw0KPiAraW50IGludGVsX2dzY191Y19oZWNpX2NtZF9zdWJtaXRfcGFja2V0KHN0cnVjdCBpbnRl
bF9nc2NfdWMgKmdzYywNCj4gKwkJCQkJdTY0IGFkZHJfaW4sIHUzMiBzaXplX2luLA0KPiArCQkJ
CQl1NjQgYWRkcl9vdXQsIHUzMiBzaXplX291dCk7DQo+ICsjZW5kaWYNCj4gLS0NCj4gMi4yNS4x
DQoNCg==
