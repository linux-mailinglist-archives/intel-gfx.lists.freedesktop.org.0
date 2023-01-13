Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C57FA66948B
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Jan 2023 11:44:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62FC610E1C5;
	Fri, 13 Jan 2023 10:44:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB23E10E1C5
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Jan 2023 10:44:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673606682; x=1705142682;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=vPuPMAsZygVXNZYdFlNLn5jWFPQlM5UtdpgexbUajBo=;
 b=R+txOzNaoXagxqEf04lf6l7mZyBPvtfbM8UeK9zicKEJXUCqlk1cxUyH
 r4hZvJ8nWqOxtdHpUMFGpLK014SS2JyUrp+vxLMQtNjK84JD9Z6k2t4C7
 mWyg7FL3OV3GygZqNa+sVqg1TJSJErLjSVTBa8Ut3GFJRBaOIcILrAmZW
 9OU8kG52yxPGkVhZMjNdyi9+hAjQyGBiKyosQfB7TtGlvU7biL8N0Db4C
 vqilI1wuXEaU5CPDHNq8yCK/uvEbChXzNjFMho/zbK2vCibOvVM78+2be
 Nw+XWrRAKYPdW0xKxvneKIAftcNqAodfZ36z5pYKWYJUEUIgliUmeUSRM w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="386312288"
X-IronPort-AV: E=Sophos;i="5.97,213,1669104000"; d="scan'208";a="386312288"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2023 02:44:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="746894781"
X-IronPort-AV: E=Sophos;i="5.97,213,1669104000"; d="scan'208";a="746894781"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by FMSMGA003.fm.intel.com with ESMTP; 13 Jan 2023 02:44:41 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 13 Jan 2023 02:44:41 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 13 Jan 2023 02:44:41 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 13 Jan 2023 02:44:41 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 13 Jan 2023 02:43:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HUEK4WHKu1QiPHgRhXGzGMQTrY4ijkLwllkZt33unwSsmi+C0WvkW8vSI0vE9QIKgo7VG0ezS2Zbh95pb/dNXL74wRUNbXoRnSe35JPVPpgbDBk91Vkuhb/EYrlI1EQqb2TjAVE50Ug0brLm3oY7GY++yCn3FnPAjtYeTJmAplDSdYWsOern0e6OcZuEQ6BtioycxsGVbUN1hlI+8V5lsgE+xRq3Mibb8ae/HIjedk2Lfb4AIMw0K7+Ua9tq7QaxR7vV2NVYczv4MvHE0F1RMY8sz/Bqt8um1I3oQqfkSMnlNeeo40cJqei2deQ0X+e6jAZzTHlxmAQ3bjx34txHDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vPuPMAsZygVXNZYdFlNLn5jWFPQlM5UtdpgexbUajBo=;
 b=GETSTc4Ebm6F3C8hBj/9qgEeLENq/RYWIdf48zYeipf3pVC4/4mAOGjBWY+pBWdIGF//FyGkgtZyGhI97wTUkxTZ2E9I9J4tLFSYDFynudwrtbLmbmyuM+nJpYgVUVD8QCtnEM3CvnQopxWj2rzkpuiUohpV7jmxsyYicNuKwF4X+IMthHSMuADq8vPxNXDFsl3wjlxsz+zKkCnnZg99prJSUeeXEh8GqGy9MyJwUGfn8dEMUVNMw0j9dAnzte+u0/YX08kv5M49Qd/bf3wcctMT+w0nMzAg+xEVZCkdPT6Ly0lT1+pp68GXcICFhFc5BscFRzEnO9atbq8yTBQvkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3207.namprd11.prod.outlook.com (2603:10b6:a03:7c::14)
 by CO6PR11MB5619.namprd11.prod.outlook.com (2603:10b6:5:358::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Fri, 13 Jan
 2023 10:43:46 +0000
Received: from BYAPR11MB3207.namprd11.prod.outlook.com
 ([fe80::e4f5:8f4e:4caa:dce9]) by BYAPR11MB3207.namprd11.prod.outlook.com
 ([fe80::e4f5:8f4e:4caa:dce9%3]) with mapi id 15.20.5986.019; Fri, 13 Jan 2023
 10:43:45 +0000
From: "Coelho, Luciano" <luciano.coelho@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: update src and dst scaler limits for display
 ver 12 and 13
Thread-Index: AQHZJzqzIOvieHw9Ykq4KEsEX1LZ2a6cKVqA
Date: Fri, 13 Jan 2023 10:43:45 +0000
Message-ID: <6225743360dd38fff14c095cb5514bfb9a946597.camel@intel.com>
References: <20221223185719.56565-1-luciano.coelho@intel.com>
 <3471ee3d-df91-f81b-2196-863414c1ebaf@intel.com>
In-Reply-To: <3471ee3d-df91-f81b-2196-863414c1ebaf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.3-1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3207:EE_|CO6PR11MB5619:EE_
x-ms-office365-filtering-correlation-id: 441784a5-d7f6-4dd4-4168-08daf5530bdf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SzoB2vhQdJ68Lh0YzfeNpawJce/Vco0vQ9fmmKdE6wPIUSf3gPVXJw/3JrrM0NXqjj7jbmZFrTryuanONIJdM3j+odpbob9UhQ/UMaX3FvQFRuyO4BmZXOOYUuVNZEIz6zhU8iTgPnD+d3rY1VT62f1ArlY1r5VokaX+VBl4m11B5RDYrirdY2h4qbh2JvxLzbqRxg8zh50DjR+FVEsuqpSJyfV6WDtXuekRVolRqcALZRLuPymqd4jsuzb4rYaxtxHIB9wHnq3VQ8x8mPKYlPVj2ZH2PHuca6wy7jli80hrd5eunPkS7JVCOx1hVLb1BomtIgq8wlkJkUWEtScDRS4ci1jR/tFciOgvVIe37zwdlvY0IGlzAs9xkVmMS//8B5b8cJ3tAOvrhzamfrpvqRLGMcnFJleJvYgWlLVKko3Hz4PnqietJ7HRfQltE8O7NbAmGsN6TQbJRYgLoHh/OmOSvEw71oDuwQHi91J1uJjo3ginGFUEuV2WuwuhXBGMraLuS43rRND0Q6h4QnNXQQqneu/n8NSabZM7IMyZtXNBVdYuilfrUP2t6NaygdubiamdTHpcik54j6ihti8vqmNPpbY+gwg4SVl2USfGBLvsjtjfiUQWIuDdxzcAS8tFnWLUnb5wB9xOLdXfAsvZDYJpeHB/Wa0r9y3GE/gZEmV50O8A+9tlopgji+3RC3D8bv2FDui7oeu0YGDAtwYsAw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3207.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(136003)(366004)(346002)(39860400002)(376002)(451199015)(66946007)(91956017)(66476007)(66556008)(64756008)(8676002)(76116006)(316002)(4326008)(38070700005)(110136005)(15650500001)(2906002)(71200400001)(8936002)(26005)(66446008)(41300700001)(4744005)(5660300002)(83380400001)(36756003)(82960400001)(478600001)(6486002)(6506007)(38100700002)(2616005)(122000001)(6512007)(186003)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V2d1N1lVYWFsMzh3M05EUlo1K2NiaytxMllJMXo5ZFdZalYzbUhDa1poaFo0?=
 =?utf-8?B?cUI0SW5MMHkwa0NtVzg5ZzRpOWdhekNXZmxXenpzTEY4dExhczBCNDY1aC9n?=
 =?utf-8?B?cUs5RFp3T0NhWFN5Rmw5SUtWOFJKMWV2NllLN3hyenMrOU15dGVsQjNoTkdi?=
 =?utf-8?B?aGN6SUdUVnNwcHhvR2Q4a0wxVzJIbXU1Q1IwRUpFazh4bXdZZ25LY2ljRTBx?=
 =?utf-8?B?RCs3SFowNDFtQ1QrME5TNlczUWEzemVLSzFEVzYwMExyWjUycHd2Q0VXZUo3?=
 =?utf-8?B?eDR2L2E5OE5PSVh1UDRTNkZGWG5RbXdXZ1I4UXpqWFlwclphQnY4QzFnRlJB?=
 =?utf-8?B?TjVDSDRuZGNhL3h5UkliSTFDUXFkd2w0U2pWOHFac0F5TGNjMUs1akp3WDUy?=
 =?utf-8?B?Wm9UZldWOXBDcDd6eDZZd3Zzam5ySlB1NmIzaGpja2ViTDJORUh2VlNDNWVa?=
 =?utf-8?B?U044ZCttRFNZRFlYbDQzSEJ4TXF6eVZoL2N4VVVYZXFWWkFJTnNnTWNZTDk5?=
 =?utf-8?B?aEU1UWRIWVN3Q3FWSThMcTlabE00dnZYaFRpQUdUV2UxQ1FPWkxNSnNlRFFX?=
 =?utf-8?B?RVhIZysycFhVbU9ma1RVYnZOY1AwQUN5dWFHSFcwajg5MHZJOXQ1UFY2TXZo?=
 =?utf-8?B?ODlaays5dEp5QjErZ0tKQkQxSFVtOFhxYmdkclJzU2N6N2RoV3lkb2prZXVm?=
 =?utf-8?B?MWR5SWpXS0RHTjM2NWhEY3IxME5Udncya1g4bUEvNWhpeHdheElwS1lucFhu?=
 =?utf-8?B?UFFpaGFvTHMzRTJPQm96MGZVMjliTkQ4RVNjajhVNy9kNkZiWUxHTVYxcmRD?=
 =?utf-8?B?Zy8ycGtqaHprZXUvUGlTaU5hZDNPdzBxTTZQK2RUK1RKcSs0ZEpQM1lBd3I3?=
 =?utf-8?B?VDRXNEVPMEkxZjFOb0V5Q3NZaHFUTlY3dHZHWnlyQXNoQThGYlE0MlB2ZnUx?=
 =?utf-8?B?Q3h3U2F5OXVRWVBDQ09nNmtFcnlVSnhGN2FrbzBEN3pzUVV2akUwZXVmNWVp?=
 =?utf-8?B?dHpTbWY2ME5CbUdpQ0hpdHUrRkNkSSttZUdSVVNOeW9tWDlQL1R0K25TVVZO?=
 =?utf-8?B?dmE3a0w2bUZhMnQ5VUJrVmJyVEk3MnVqMGZJKzhSUjJ1eWdTMlpoRWdDVk5V?=
 =?utf-8?B?aTc5UVVnU1RKUzNaLzFaQzlVT2R6ZFNpc0diU1U2LzBzQUN5UXZYZlFWMENz?=
 =?utf-8?B?NkcrZjVTdkU3czllTUVGUXZ5cktNKzlaS1ppTGgyeGVzUU1HT1h2MENIMjhK?=
 =?utf-8?B?dnB3MEMxckxkSVRmOE9jK2FwYzZ6VlFKWDUwUGRLQ2tBT3Y2WmlKT013NU1F?=
 =?utf-8?B?SGZ2T3hxNmdXM2t4VXo2c25ka3loNWJ2Z09jaEkxcEc2NzZvclZCK1FyT2lV?=
 =?utf-8?B?L2Yyakk3ZmRUQWpGTVVmcWQxSkNkUEJqTm1NV2dpeHpYbFB0djRVU2YyUTRT?=
 =?utf-8?B?S2FnRXpTZFJ3dWVBb1lSWCtqWElpSWRYcDZScEx2OEdRVjNFZzk3dngzcXc5?=
 =?utf-8?B?eFVRS1lJNG9rb0lpeTFOeFlIdlpKSFI5SEJZcEFiU3lvbzNtSEorUzFPTmhw?=
 =?utf-8?B?bFJPMExHZWhabDVpdndKVTF3UE8vaVAySjlIZWNDK1dVMVY2M1JtOWxLQXJt?=
 =?utf-8?B?V3lKS01MSm9TekFQZmprWVhXRjR4Umk2VWZ2L0sxdjluOXhGTHdCdUJYSGp4?=
 =?utf-8?B?SWJqOFBXbDJ5Um5BOFU2ck1WTzlJNWFCQjBXbTJNWTNCeDZsVnZjSjIvYVBF?=
 =?utf-8?B?ZHJscTNBSFJMdlo2aERHamlOWXZ4WVZnMEVYWVhoQVFyMXhWUDFvTVJId1h6?=
 =?utf-8?B?d2gyTXBWdzRaL09ENjBlQ04zamRZVGVET21IeXoxWVg3YjNlQVZvRXhMdWVx?=
 =?utf-8?B?MzZOVjNNT2RhZmdzYmY5aWdkanVvVERndlU2SjE3eHh5ZjZxeUNyVm4wcW94?=
 =?utf-8?B?WTlkb1IzaUIwSE1rbmpaQlZ1RkFTUmVYL3pJOXBPWExERVluT2VDTXR1OGxC?=
 =?utf-8?B?OWxhQ3RDTG05ZkhFVGg0QzgySWMwdENKYk5DaUhkU0RCV0RrK1FNeUg2UUlF?=
 =?utf-8?B?dXFHemRScng3a3g1Q3hpZ0RDVWZYTm84TzZwMk9nb0ZzUXBOWHR6bDJraU5F?=
 =?utf-8?B?bTlHUHdKUjdmbVNZa3lSeTB3eWlOdDFPeHQ4ZG5mUmRzVjV0N1ltYUhNMDMv?=
 =?utf-8?B?ZEE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <A1966AF21EB77F4DACF8ED9E1DC7DA3A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3207.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 441784a5-d7f6-4dd4-4168-08daf5530bdf
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2023 10:43:45.6305 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SbdUosslJxk625LZJiRb9HEuzVRQxfCQ161+oZ5SEldCWAQHLZgu9cogx4zrK221XXtT/92d/tWWSsopRGMkO6IoZAzbMhnhsfoxmvJEJkw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5619
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: update src and dst scaler limits
 for display ver 12 and 13
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

T24gRnJpLCAyMDIzLTAxLTEzIGF0IDE2OjA0ICswNTMwLCBOYXV0aXlhbCwgQW5raXQgSyB3cm90
ZToNCj4gSGkgTHVjYSwNCg0KSGkgQW5raXQsDQoNCg0KPiBQYXRjaCBsb29rcyBnb29kIHRvIG1l
LiBQbGVhc2UgYWRkICdCc3BlYzo1MDQ0MScgaW4gY29tbWl0IG1lc3NhZ2UgZm9yIA0KPiByZWZl
cmVuY2UuDQoNCkdvb2QgcG9pbnQsIEknbGwgYWRkIGl0IGFuZCByZXNlbmQuDQoNCg0KPiBBbHNv
LCB5b3UgbWlnaHQgbmVlZCB0byByZS1zdWJtaXQgZm9yIHRlc3QsIGFzIGxhc3QgdGltZSB0aGUg
b3RoZXIgDQo+IHNjYWxlciBjaGFuZ2VzIHdlcmUgbm90IG1lcmdlZCwgYW5kIENJIGJ1aWxkIGhh
ZCBmYWlsZWQuDQoNCkknbGwgaGF2ZSB0byByZXNlbmQgaXQgYW55d2F5IGJlY2F1c2Ugb2YgdGhl
IGJzcGVjIHRhZywgc28gaXQgd2lsbCBydW4NCmFnYWluLg0KDQoNCj4gUmV2aWV3ZWQtYnk6IEFu
a2l0IE5hdXRpeWFsIDxhbmtpdC5rLm5hdXRpeWFsQGludGVsLmNvbT4NCg0KVGhhbmtzIGEgbG90
IQ0KDQotLQ0KQ2hlZXJzLA0KTHVjYS4NCg==
