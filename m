Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ABA2F629173
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Nov 2022 06:23:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A1E510E367;
	Tue, 15 Nov 2022 05:23:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA6DD10E365
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Nov 2022 05:23:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668489825; x=1700025825;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=WUqR0US2m+w4EyQSqkFMygm1v5wyLdvLe09oNsWGjUQ=;
 b=ZJJkIkhXjqGtAWbVOs0bYkCqCQDahbv7Jm+16KzWZrCZ5B71T/tuPXwn
 4n7QqsjISqM681Ux9jrJSlols9ZtU7fD8uGrZ/ELF977E53tF+Bp0cpY2
 HGfe/uB8DW/xz3mHtTOzBENWho5dM8phCnDx5lsBd3KdiQr+2V8O3YKsM
 t7BX0vlBRhk0o2IJj0lx6YCu/qJsyEupgvoAwwI02hJqaLzn/C0tfVKU7
 BBsOenXN9dEK+gkYVWqywA8brtT2VJZ1xpNp4UCvzslGjUWyhD+LZL3ht
 jEWXZA9pYz0Z60uKoMF0wugP0a2OfBWelm/d5vFLmzPg76xgwFX6UjKyf A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="338961604"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="338961604"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 21:23:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="702300386"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="702300386"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 14 Nov 2022 21:23:45 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 14 Nov 2022 21:23:44 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 14 Nov 2022 21:23:44 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 14 Nov 2022 21:23:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UnV6dxsDxTzG6EsbH6CiE2rliV/bvi27i7ZmllbjMVfxcrhGM5Z+iWuUJaavoFOwDWdvNQmix5ncvdMjqfIzKt+uH68un6IKZtYqbce634C1GpyOWi5M1gMMWPlv1Gs7iwCJpcxdDaGKKCOaHca89pUFQiQP7dHOStXZ9oNC24QUr9OsOcMtxLWUvAtIfBkP5waqjoPaJ9HiNxV7ZHOpECEt8nyxF8iXsdwBd9Gkhff5mLmteQ1OkcQ4hPe1oOHnUywwzEkLn+n/WjDX5ZQPYjJV3JBTgyAwEltJ0QDIpK7eQLtdIGxHERN28TbzfNOocjwd1MuI0VvaxmTEavwQSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WUqR0US2m+w4EyQSqkFMygm1v5wyLdvLe09oNsWGjUQ=;
 b=ESzI2plPaNXleqaL882VC/29gPRQwZpAJNdfiP82HHDD29QpKwE2XPWrpvqP/XYA+aoaKBY1U3LprlGpRSFj9H1YhyjdX83zlNpAw3+Vxj3bVuLSx1r3g/vUNUUG/En1AB52rKR/K7VzvxmGlmfXN+v9sAmpunL7WDuT/4my9lsBWceATvdjXJj94mPZBwfHbwBJhpQIgnQQBmWlyfCRsPoueAVZSten1Iv1wGqRE7EXFpaLu2+l+5t20I5frwep0COyjv5tK3PBV30EowzNf5ALXEuvftuAuK5ejt/LWkDxAAgLIrVsYnX4Pa8E4XIkIYitNbe/ifvL6gYcYl6brQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 IA1PR11MB7246.namprd11.prod.outlook.com (2603:10b6:208:42e::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.17; Tue, 15 Nov
 2022 05:23:37 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::bbc2:ab8e:b98:feaf]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::bbc2:ab8e:b98:feaf%9]) with mapi id 15.20.5813.017; Tue, 15 Nov 2022
 05:23:37 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 2/6] drm/i915/pxp: Make
 intel_pxp_is_enabled implicitly sort PXP-owning-GT
Thread-Index: AQHY5XPj4JK0sRYSOUyfefFAQ3hCqq4/hbcAgAAU5gA=
Date: Tue, 15 Nov 2022 05:23:37 +0000
Message-ID: <86cc7f71007fb08f590f9585b91d2b2c512dd19e.camel@intel.com>
References: <20221021173946.366210-1-alan.previn.teres.alexis@intel.com>
 <20221021173946.366210-3-alan.previn.teres.alexis@intel.com>
 <8722056e-3e6f-8ec6-6586-eaa9711d6b49@intel.com>
In-Reply-To: <8722056e-3e6f-8ec6-6586-eaa9711d6b49@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|IA1PR11MB7246:EE_
x-ms-office365-filtering-correlation-id: 9a68297f-001b-4662-244a-08dac6c98cba
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2C3aEvekhKU2Q+lHvRTXiXrW3EpUaredE5wiVR5kUbaKBvUGgIvhJOttS6fcnw54qjeS77PGaWlaeTeXLH0M2ZzncXdo5n0eDwQvMRg3FD4VHrdn1EtsCzZvoYxd+4jHAfT4/CWk5GjlcpxKdl3fIF6sXgM+c4q1g2BbAi5FJoCuy31tgYMMpfzCteesU3HmAi9nXGK/IjoEDK0fWOU6jYT8iYKBFf1nAWh4X3EFo8/8OUXtg+U1Dw+1eMz1sC65tgUJLWeQJAI4Oh0mxLFPG3MWxfhwCccXyv4S7UQXRU/s3dJhU87d3HCYognezTeRNiqCij7zNnsHKYylXd/1QJOPSK0Ni7HcVcL5NHpKmFuZxkm9TXWvYThRiYWj8hS0hF2QoPaH7Q6rUM2ideyNZNGWvrtJWBnwHr/KnIWDsAr2ABetdYhmijeyiTxXr50z1xS3em3tzpeq7oA6K8MSMSP4vR0sdqhhaLC3lfw64NjijkTl8ngwrecqiCZ3A4eeD87gXcqGjn2kILPEkFHfhMuvlmosUPvmtEwLhT/Wu0i+q7ZtEOiBVwScyKY1bBKeg8kDZqWGVJ1VyQbqQ2makrbrs36ReqF70LFeUpzyUhrQx6RseX6JK/y+ik6JnNKsG7HjHWx8KdvPcHoah8qq3hz54oc8zroSJYrmK19K0sm6TIlLMIbdNY5eZNJlP+nHyA+/S/GAds1YBZuZPCWI3xBJB+6lqmmiv49nOAky6BthiZH71/R4cMSdDBhd/j5sLWTyH6QNFxGs2SP13GtSMA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(39860400002)(396003)(136003)(346002)(376002)(451199015)(53546011)(6506007)(26005)(6512007)(38100700002)(6486002)(316002)(38070700005)(36756003)(478600001)(122000001)(71200400001)(110136005)(82960400001)(186003)(86362001)(2616005)(83380400001)(2906002)(8936002)(91956017)(4001150100001)(41300700001)(66946007)(76116006)(66446008)(64756008)(8676002)(66556008)(66476007)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aWwweTRVN3Uxejl6WVRMLzZ1aTNkOE5WdHE0SmNQeitSYzRhTUZvNTA5TEw4?=
 =?utf-8?B?N202R2U1WURoM1R0cUhyc0ZDSkRmWlFaa1JKd0FnSEgvTUo5T0loOGkrTFYr?=
 =?utf-8?B?UEpqV2lOaGV4QXdPV0JYM2hEdUJkdE9QNlpKOUhsZ1FENXFCcTYxRUdncG85?=
 =?utf-8?B?TVdORmFRTXlhMjlCZlRrOHNoamJiSGp2ZWpzeXFyRktsWkFQWTFPc2NKNnRw?=
 =?utf-8?B?aTk5RGd5MnI1NUY3NTZZc1VLRWxNYkc0SU8wa2dqK1pDdGlDYkFKblFFNjdx?=
 =?utf-8?B?TGwycTNSYjR1OGE1bW5wa2NEN1owRnMydHhWcCtxeGE5Wk02YU5PZk5jd1Vh?=
 =?utf-8?B?K2tqTzZZRmt0M0Q1THovQ3pPejgzWG9xcVIyZ0s1SzlGS3lQWi9EWEdXb1J1?=
 =?utf-8?B?ME1JNlUwSURWWTBWUCt4TStLM2xSeEZET243cFgvOXRIRDZtWDM0OVhxMkNR?=
 =?utf-8?B?RFQzSGU4V0VLb085cGMrTks4QmRERjE2QVhiLzVTUGdPbEh4N2x3T3BHTzgy?=
 =?utf-8?B?ekwySkdWYXYxM1ROclFFL3NnY3Z4UStFcWpHTWxhdnFRSzRIaWkrcWMwcnk4?=
 =?utf-8?B?MUo1R3F5clh0NDBnQ3gwdkhGQVJvT0NsNFZiT3ZIcTRxbnFGZ2s4eTlodFNH?=
 =?utf-8?B?UCtpK083NytsdkI0bklBbTRLOWs3TDlGT3JUek51M2VGVStsMDRXV3pQSlBr?=
 =?utf-8?B?dHNmMlVwdlN4YldMZ0lMTVlOdG5vRHU3V0duRGlXaHp5b2tvcFJSY1djSmVj?=
 =?utf-8?B?bTBGYXZ6aTBzbSt6aEdBUkNEcmtZQUl1TEU3cldoL0JGWXNtTk0xMHNhWWNW?=
 =?utf-8?B?YkVLaDlrVXZmR1hPc3VrUzcwNUt3REhXUEFjakNFQU1mckZ6MTFrMy9GVTJR?=
 =?utf-8?B?QzFoZVVnSkZ2SlNDQ0tZblVzS1F3dXQ5UVpoRzBzUVpjWDhzc01mNnJRaml3?=
 =?utf-8?B?M1dxZ0o0TjdNTzZ6TVZWYjZhOHNwYnhMeVhCbGVUaWdkSzVSK1c4a0dwbWNu?=
 =?utf-8?B?R1pNTWFtYU56Nm8zZWJGK0pidlJlRm84dzdNYjRvRjI4aWZFSzlnV3NRTFNz?=
 =?utf-8?B?SnlOL2hsc2NYT2RXMHVkQ05NRHFLR1NSM3ZJQ0hBUXRtZnJuZVMxRTZzUllD?=
 =?utf-8?B?d0RXL1M5VmlUblRmdmZaY29LeWdGcnY1c2V2bzdMYVorc3dvd3ZzV094NEo1?=
 =?utf-8?B?QXhudnptdCtRZ3VJWWE5S05waytYdmRKcmxmaitMNlRlWmc0WUlBZDlCL0lU?=
 =?utf-8?B?WWJDSjVhanpzcVhoYzNIWThoRGJodGZRWllzbVFmK2tLUlQvZGxyYVVNOTFM?=
 =?utf-8?B?TGZMNkJoUGNRd0JRbEJjalB1R1JIQnFuRzNwM3A4dGczNWlWazZXNFhuV0pj?=
 =?utf-8?B?TGxzclUvUENHRy9UM2sxNlp3MFlDajFGU2JYdW5PMDlwTXJtNW5GSlEreC9n?=
 =?utf-8?B?eVFlR3JKUW9oN0hkWEI2THR3b1kvdzZRNTMyVmJoVDZUZkhLZzlJM3dvNjRj?=
 =?utf-8?B?aHFDaEVLeXIxWkZSZEJPUHl1UTk0T3Zjem5BdHZuQ3pHbGJ5NjIwMHJNWVlS?=
 =?utf-8?B?N2UrOWJUcnhjMEswU3llemlOUlVqazRIcmpuaEhRK0gxOE9XTXJQU1NFYlZ1?=
 =?utf-8?B?OWp4NE5ZN09pY0h3N3dyNWVES2hkYW91MWNGSWlMR3FiaVhleFhJRjJLYXhz?=
 =?utf-8?B?STV4UzVUWUZSMTBpb3JTUVk4SGovWFM0NXVLVjF4ZzZ4MkNuazNnazZ6aGs5?=
 =?utf-8?B?OGVRUHRYOFI4YjlKLzJxQW9BSCt2MVFTelVOKzZIYVByRXJFOS9RTkpMVE5F?=
 =?utf-8?B?ZmlONnM0UkY3NWJwQkNvKzdtMEFGQjVvS0l4ci9HNzZDa2dsS0dPdDJnZTg5?=
 =?utf-8?B?OWxBWGx6dU5nbVRpOTVSazdKc3lNejBQOGdVdVdrT0JaSFFNTW5oUm96aDRp?=
 =?utf-8?B?Mi9CU01HeUg2SEhBbTgvWTZIQlMvclB6ai9yKzR2ZS9kMDFKcGpnK3NSSzRI?=
 =?utf-8?B?bE41WExBR3JTRE5mSUdUNzZBRzBodUV5bzYyOGNqOFdJb0FwWUZTSjJoTy8v?=
 =?utf-8?B?dXZod1FWZVVjd1QxUXViNzlJOEtRZXo2eUlVREJaczMza3NROUtsODJsS3lD?=
 =?utf-8?B?YnNpcTBIRm91dCt3SDNvVktCaDV4d1dIZ3IrNERlbG9vM2sxZGJOcDBidDV0?=
 =?utf-8?Q?JBNOsHPe3Kd7i0p8QFUpKQ8=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <EAAE366792109C47942CA98908FB826A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a68297f-001b-4662-244a-08dac6c98cba
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Nov 2022 05:23:37.7769 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wH4cSwtMibSwh6wWOXYJeGNoYaIb8bxM2W5C5Y+FYrJgCPhXva5PNy2tuc+kT5rt0T0AyeTbh08tpWqufKxW1iLM6mG5E5vaiqKu+HgZK0A/FCLP4WTY/cPH343yco1c
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7246
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 2/6] drm/i915/pxp: Make
 intel_pxp_is_enabled implicitly sort PXP-owning-GT
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

DQoNCk9uIE1vbiwgMjAyMi0xMS0xNCBhdCAyMDoxMSAtMDgwMCwgQ2VyYW9sbyBTcHVyaW8sIERh
bmllbGUgd3JvdGU6DQo+IA0KPiBPbiAxMC8yMS8yMDIyIDEwOjM5IEFNLCBBbGFuIFByZXZpbiB3
cm90ZToNCj4gPiBAQCAtNjgsMTEgKzY5LDM0IEBAIGJvb2wgaW50ZWxfZ3RweHBfaXNfc3VwcG9y
dGVkKHN0cnVjdCBpbnRlbF9weHAgKnB4cCkNCj4gPiAgIAlyZXR1cm4gZmFsc2U7DQo+ID4gICB9
DQo+ID4gICANCj4gPiAtYm9vbCBpbnRlbF9weHBfaXNfZW5hYmxlZChjb25zdCBzdHJ1Y3QgaW50
ZWxfcHhwICpweHApDQo+ID4gK2Jvb2wgaW50ZWxfZ3RweHBfaXNfZW5hYmxlZChjb25zdCBzdHJ1
Y3QgaW50ZWxfcHhwICpweHApDQo+IA0KPiBJJ2QgcmVuYW1lIHRoaXMgdG8gaW50ZWxfcHhwX2lz
X2luaXRpYWxpemVkLCB0aGF0IHdheSB3ZSBkb24ndCBoYXZlIDIgDQo+IGFsbW9zdCBpZGVudGlj
YWxseSBuYW1lZCBjaGVja2VycyB0aGF0IG1lYW4gZGlmZmVyZW50IHRoaW5ncyAoYW5kIGFsc28g
DQo+IGF2b2lkIHRoZSBndHB4cCBwcmVmaXgpLg0KPiANCkkgZGlzYWdyZWUgLSBvbmUgaXMgYSB3
cmFwcGVyIGFyb3VuZCB0aGUgb3RoZXIgc28gaSByYXRoZXIgRE8gaW5zaXN0IHdlIGhhdmUgdGhl
IHNhbWUgZnVuY3Rpb24tYWN0aW9uIG5hbWUgaW4gdGhlIG1pZGRsZQ0Kd2l0aCBhIGRpZmZlcmVu
dCBwYXJ0IG9mIHRoZSBmdW5jdGlvbiBuYW1lIGJlaW5nIHRoZSBxdWFsaWZpZXIgZm9yIHdoZXRo
ZXIgaXRzIGEgZ2xvYmFsIGxldmVsIGNoZWNrZXIgb3IgYSBndC1sZXZlbA0KY2hlY2tlci4gUGVy
aGFwcyBhcyBwZXIgbGFzdCByZXZpZXcgcmVwbHksIHdlIGNhbiBkbyAiaW50ZWxfcHhwX2lzX2Vu
YWJsZWQiIGFzIHdyYXBwZXIgYXJvdW5kICJpbnRlbF9ndF9oYXNfcHhwX2VuYWJsZWQiDQotIGkg
dGhpbmsgdGhlICJlbmFibGVkIiBwYXJ0IFNIT1VMRCBiZSBjb25zaXN0ZW50IHNpbmNlIG9uZSBp
cyBhIHdyYXBwZXIgYXJvdW5kIHRoZSBvdGhlciBlbHNlIGEgbmV3IHJlYWRlciB3aWxsIGV2ZW4N
Cm1vcmUgYmFmZmxlZCBhYm91dCB3aHkgImVuYWJsZWQiIGlzIGRpZmZlcmVudCBmcm9tICJpbml0
aWFsaXplZCIgZGVzcGl0ZSB0cnlpbmcgdG8gZ2V0IHRvIHRoZSBzYW1lIGFuY2hvciBwb2ludCwg
InB4cC0NCj5jZSIuDQoNCg0KPiA+ICAgew0KPiA+ICAgCXJldHVybiBweHAtPmNlOw0KPiA+ICAg
fQ0KPiA+ICAgDQo+ID4gK3N0YXRpYyBzdHJ1Y3QgaW50ZWxfZ3QgKl9pOTE1X3RvX3B4cF9ndChz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkNCj4gDQo+IG5pdDogd2h5IHRoZSAiXyIgcHJl
Zml4PyB3ZSB1c3VhbGx5IGRvbid0IHVzZSBpdCBmb3IgeF90b195IGZ1bmN0aW9ucy4gDQo+IE5v
dCBhIGJsb2NrZXIuDQpJIHdhcyBhc3N1bWluZyBpbnRlcm5hbCBzdGF0aWMgZnVuY3Rpb25zIGRv
bnQgaGF2ZSB0byBvYmV5IHN1Y2ggcnVsZXMgLSBpIGxpa2UgdG8gdXNlIF9mb28gZm9yIGFsbCBs
b2NhbCBzdGF0aWMNCmZ1bmN0aW9ucyAoc28gdGhhdCB3aGVuIHJlYWRpbmcgZnJvbSBhIGNhbGxl
cidzIGNvZGUsIGkga25vdyBpdHMgYSBsb2NhbCBzdGF0aWMpLiBBZ2FpbiwganVzdCBhbm90aGVy
IG5hbWluZyBjb252ZW50aW9uDQpwcmVmZXJlbmNlIHRoaW5nIHRoYXQgaSBmZWVsIHNlZW1zIHRv
IGJlIGhhcHBlbmluZyBoZXJlIGFuZCB0aGVyZSBpbiB0aGUgZHJpdmVyIGNvZGUgYmFzZSBidXQg
bm90IGNvbnNpc3RlbnQgYWNyb3NzIGFsbA0KZmlsZXMgLyBmdW5jdGlvbiB0eXBlcy4gU2luY2Ug
aXRzIGEgbml0LCBpIHdvbid0IGNoYW5nZSB0aGlzLg0KDQo+IA0KPiA+ICt7DQo+ID4gKwlzdHJ1
Y3QgaW50ZWxfZ3QgKmd0ID0gTlVMTDsNCj4gPiArCWludCBpID0gMDsNCj4gPiArDQo+ID4gKwlm
b3JfZWFjaF9ndChndCwgaTkxNSwgaSkgew0KPiA+ICsJCS8qIFRoZXJlIGNhbiBiZSBvbmx5IG9u
ZSBHVCB0aGF0IHN1cHBvcnRzIFBYUCAqLw0KPiANCj4gDQo+IA0KPiA+ICsJCWlmIChndCAmJiBp
bnRlbF9ndHB4cF9pc19zdXBwb3J0ZWQoJmd0LT5weHApKQ0KPiANCj4gZm9yX2VhY2hfZ3QgYWxy
ZWFkeSBjaGVja3MgZm9yIGd0IG5vdCBiZWluZyBOVUxMLCBubyBuZWVkIHRvIGNoZWNrIGFnYWlu
Lg0KR290IGl0IC0gd2lsbCBmaXggdGhpcy4NCg0KPiANCj4gRGFuaWVsZQ0KPiANCj4gDQoNCg==
