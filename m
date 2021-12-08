Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F96D46CCDB
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Dec 2021 06:14:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7D096E051;
	Wed,  8 Dec 2021 05:14:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 702096E051
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Dec 2021 05:14:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10191"; a="236496674"
X-IronPort-AV: E=Sophos;i="5.87,296,1631602800"; d="scan'208";a="236496674"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2021 21:14:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,296,1631602800"; d="scan'208";a="543083792"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga001.jf.intel.com with ESMTP; 07 Dec 2021 21:14:18 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 7 Dec 2021 21:14:18 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 7 Dec 2021 21:14:18 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 7 Dec 2021 21:14:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lIuYMwsK3b4D2uEXX3KTaCtvgjmYdS9eIt9Opqt49S0Ol16h5OfCdWeRygZcH7NYoaZqdiqlY1Sxc5WReMZaoFf1EGZJziSah26Cg9qs3T2b3NBc53qeHjuwTSLfVvafkxdG4PNGCExzePtDXTHMHfSqH7W9aYg0dNiNf4JuCPrMDs39W8i1JM0/3uzLnXnDOVi617xK9PfxaHE3DbgRiIK/cAogS3gbJSblS3WlpBqeviX2u8gUGIYnVIGH7f3O+ijIjIkmzLv1dVGBwKLHfSyYIJe7jjP02me6birXakn9gTLTC82IPQjJ4GHxTZsdyTPHUsuJa6bSN2Wn+UCQKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pfMQUUMKK7Iode79xT1xosEVbO0BEZKtfRoBFBZoNVg=;
 b=MlO2S0uTJRyRscWBpISNACxy797Z94Dwm/tbohPb+agHyrn6Hc24A4+/cQw01v6E+CBJMF6lIsMn75aJR/BsvmJb6DkcwKoXzXH/O7379kRIvy4pqtvHOEKEI5NoeKV5T1xdAA7GST+RK0mkV85yqHALLCMnr3TXUqhBCcWQPOEN5WWQZzvEHjHVls6KOV2PKCH3b5E2JseEu96vaVUAFLNBQblHEhG1F8iD7/yycEYB9UdV0XIM9fR5RyeYTo1iTTN5vcDrcbd3VG6nscLKpvIq7369GCDM9tBnxsUNQ+Sx/IfrWLrJ40TlrnavPqEnNY7DdAd0XNEeGiieODwoiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pfMQUUMKK7Iode79xT1xosEVbO0BEZKtfRoBFBZoNVg=;
 b=Ujhzu3/A9er3HeIl3oYjGSMmnZZRv8DiNcrblbd6oACuX+/QR5tK7GoW2XVfRHv778lA7SeB6S6J6C4AhgNCdLWH6vZfzSKPHHkyleOaEX9JUMTQnr/fmxfDGl2/RnSesFwpPYTvh0vomc7z6Ll6GvcdbitfrhmsvNyNkaWX5jg=
Received: from BYAPR11MB3784.namprd11.prod.outlook.com (2603:10b6:a03:fe::10)
 by BYAPR11MB3414.namprd11.prod.outlook.com (2603:10b6:a03:85::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.21; Wed, 8 Dec
 2021 05:14:16 +0000
Received: from BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::2d25:f356:ac1e:ff14]) by BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::2d25:f356:ac1e:ff14%6]) with mapi id 15.20.4755.022; Wed, 8 Dec 2021
 05:14:16 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Brost, Matthew" <matthew.brost@intel.com>
Thread-Topic: [Intel-gfx] [RFC 6/7] drm/i915/guc: Copy new GuC error capture
 logs upon G2H notification.
Thread-Index: AQHX3/UermldWxO9zUyehL4r5Mja7awnvBAAgABpSQA=
Date: Wed, 8 Dec 2021 05:14:16 +0000
Message-ID: <14d4ac59ffdb3b8163701e26da18a01d8d5b2b2a.camel@intel.com>
References: <20211122230402.2023576-1-alan.previn.teres.alexis@intel.com>
 <20211122230402.2023576-7-alan.previn.teres.alexis@intel.com>
 <20211207225845.GA17712@jons-linux-dev-box>
In-Reply-To: <20211207225845.GA17712@jons-linux-dev-box>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 45c9f796-d22e-48b8-9ec7-08d9ba0994c3
x-ms-traffictypediagnostic: BYAPR11MB3414:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BYAPR11MB34145F6EFFF74D48E5132E7C8A6F9@BYAPR11MB3414.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dUO6ytRZDsztF3za7WwQbAQAjHJWHyiSOTp5jJN8efzPDa+CxZACnk9Z8bmdg+RId8UTKN+kgyGNqbWMdln8AiGmzIWNLUEuSJ0AA5ldUpfdieJOVfQ5UgYPx9rgdDo8LMWt9k3nc+uGwLwYBYCbAR5j9ntFQ4XsB4NL00Se26NYzE4LqZ0yaFCuqwFeoG7P/g0nEwJNVTybnWGyrTn9wrcxn0bUHz9jnxkFgJO675OheACvsz7NmCAeKhau1APMk64LlJgXPm8EQOJvBgzKeiHsRa6S8XPagA2u2tCvLrixTsE0SGA06ia4W5cWzUQYleiT5JZEs6BzV16j2nxb5SXsKBuftD7TSpYw3dCV6HGrzmw4Ux1VNjm8PL/2d7mx4aI+ygITOaAnlC2tYaAJ9dJ3Rnuc++nE4X5WFaCtyJZuObFD1GPFA1VFKkypUcyLS23qHM7NMe1UzRiGTPy0lBKgCgOsyCF5F/UmG9jJW2P2DUBqouRpK9w2S+mmaTgjw5ohyRGFGNZaejZVasgQWH/WN7wU3DOUdP+phLcFRL6bwJG1WcrYlYyzC4xqNJ0QEtgNPeMF9h+a+jm0ZaP38lKVETo3G+71bnu4/1PfEeuSBvpkZXfwVrqlOkKi8p2l97MK7gDF35O512+B/JXy2YwZBgUbsIi079REHQQ2A1audsUs0Lbi26fwEtPWavtCSW2BT/Q0qQti18T6GcM8wA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3784.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(5660300002)(38070700005)(4326008)(37006003)(6862004)(6512007)(15650500001)(122000001)(66946007)(86362001)(66476007)(66556008)(64756008)(36756003)(2616005)(6486002)(66446008)(6506007)(508600001)(38100700002)(82960400001)(8936002)(8676002)(71200400001)(26005)(76116006)(2906002)(83380400001)(186003)(6636002)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aFNzRFUyZEppUmkrc1o2aVRPVWIxRWxnV2JZSWUzRHNTa0dRUEk3ZGFVdkVa?=
 =?utf-8?B?a01udHFYeG85dVZzTU5yRDY4Z2dzM0NNNFFsRkZhQWdmWHFjMGdDL1JWOHVh?=
 =?utf-8?B?YXRvU0NRK2VmbkovM2s1MFZ3YnJDbE1EOUp5WTVudzBLWW1WbE9aWXg1ZHlI?=
 =?utf-8?B?Wkt5WTNYNlN4SUR1aEl0UmJ2ZUxELy9RcDliZGMxVTV4bjdVRUxWM1B0V2Nn?=
 =?utf-8?B?L2xwZk5FVlFJNTdaUkhtUjdVZ0pqSk9DOWs4NjhqV0JoekwzY2oxaFVFOVJ1?=
 =?utf-8?B?V3ltd09yWEFoRVhCZHI2MGFwT0ZlK0dtcGFWMEpLQlRONURzNDV4NHgxZ3dN?=
 =?utf-8?B?YUg0aDRjZGc2K3BDRnltZmtCcnAwRVBDZm5tWWRlQzd2TnZ5UENJeHk3Q2Rs?=
 =?utf-8?B?Y2J0VU1YK2Rkdjdya0xrVVVLeWRrdk9XMjFpbzhYRlIvdjVxRU9BeUVoWGcv?=
 =?utf-8?B?SUo5NVJ3Sk5rcTZhYkIwUGRHd21sS09YZnVOOXZRa0dQb1hITjdRUy9TNnUv?=
 =?utf-8?B?d1hLb2lkU0JyVkgrbkxFR2ZGcnM5QzYwWklJNkxuV3MxZk9Cb1dPY2hmMHpn?=
 =?utf-8?B?UG0zLzdicVBjbXJ4dVZTMTEvM09kYTJZSUJLdFpRTFUzMkhFVHAxS01WcFdD?=
 =?utf-8?B?K0RQb3F3Rm00enBpdW0xWXZadDROQnpsVVBrYWlhSkJXdHpnSHFUQ2s1OWpm?=
 =?utf-8?B?Z3d0QTJIbHN4MnA1VFFCVnQ1LzVtOUN5blRWeGxYb2RLam0rTldiUlk5OUk5?=
 =?utf-8?B?TEFHcjhGVHVpZW9NR1UrZy9TdnZ5SUpJNG5sZjR3QmVhbjFVbk5pL2JXZmlx?=
 =?utf-8?B?WTRRb0lubGNCTXV0NFF3S3lGS0ZDVGM5WFRETEhxQkwwdis3cDhRLytDeW0v?=
 =?utf-8?B?b0F3YlRMSmtLSC9PMWkwV2V6WmIwUi9kOUdlc3hKcUtMQ1F1NFdQdmo3T2hk?=
 =?utf-8?B?aXkyNi9FenJwanJjWDhYOTYrbkUrd0l4THRUT3g1Vm1ITTJVSG0zc1JRSE9p?=
 =?utf-8?B?S3NYSFRreUluZlR0OUk0NUFIWVZKbEwzQXZlZEVibkRsS1JzQXVwbE5meThQ?=
 =?utf-8?B?M055bzJtdzJkUjlrOXh2ZFRQamNGNGVNNFR5NFhBdEd1ei9sNmZuYXFtZzZP?=
 =?utf-8?B?V09xZHJTVVJOMTVuVUFheUdvK3Q0TWtoZTBERHVSbVBOdjZKOXBFNEhwRlp6?=
 =?utf-8?B?UnZ2WWZFalIrcDVIYUJkdlRsRXNpWXBySENhbk9yNmVaOTJ5QzNCMmloNVlD?=
 =?utf-8?B?bDFXRTNsT1FCN2Z1WWJXVVhyOCtmUitkbnpnWWFmSGR3TmV2Qit3OFYvSkow?=
 =?utf-8?B?U0ZOOVZDVDBCdVcyWS8zb0tsekljQUM2L2dzT25kdVY2QlhuS1I0ek12ZlZO?=
 =?utf-8?B?YTJFNkdLUGVKVkR0aEw3ZHFVVkdUZ3c3WEc2cUUyN1I2UDdLOFVFS24vZkNm?=
 =?utf-8?B?YTc1YVN5MkR3emlEZFlvcUNaMUdab2hodW9JZEpUR2c4RHJzRnJBdkR4RVpt?=
 =?utf-8?B?T2NtbTdrbDBwMTlNcW05Rlp3VE9jL3QxUE1oZjMzNDN3L0g1aERRckU4K2NP?=
 =?utf-8?B?cTRyNm1wTnJNSkJZeHd5djI5SmJ2VUcrVEtrRTFXTjZjcmZISXlyS1R0OURW?=
 =?utf-8?B?S1R0QkhMSVE2Mko3YTUvQUtEa3NlUUhPUyt4ZkVoWVp0VEZncnR1Z2k3TE8z?=
 =?utf-8?B?czBLVGgwcE9jYnRaMC8xZEZMb0IxcWlJQjE2THJIMkhlSFVVZllqYjgrNFpn?=
 =?utf-8?B?ZDVMZzJ2ZHc2M2p0RjA2WFJmZjJjK1J4c2tXYTJsVTVpOXhTVDNPWjJDcVo2?=
 =?utf-8?B?ZnhsQ2lZam8yUXk5WUhxWnBabGZPM3Fqb1JON0EvK3hpRkh3RGpvZW5XK3Qv?=
 =?utf-8?B?cUV4Zm5OVDJIdHBEcFZWN0hMV0MrdGhqTkVxK2oyM2pZSnp6cERUZXdtVWpu?=
 =?utf-8?B?RmQ4SXhVTDNuUFBDbzJDNjVhOHA5T1B0Q3BiYTV2Wi9IYlYwWU1YbUNneEFG?=
 =?utf-8?B?SlN4K2phZmhnOTI4SVVsMDlrZlRaNldpcHo2MWF5anRpcXl6WjNIMWs4ZHlY?=
 =?utf-8?B?N3JKckRxc1MrUk1rUmg0QnZlQ1h5Si85a0hJMmdGTFA5SGxPZWlxTDNtY2ww?=
 =?utf-8?B?TE82cTJ3amVKSVpOeWpDaTcxZ0hGMnZRUlhaWGpsWUIvbVhheGYyS3VndHZm?=
 =?utf-8?B?eVkyS3R1OGtFSmJLY29xWERCZUJpN29NTWRtNmQ0dkp5L0N2ZnBKVGtmNGpP?=
 =?utf-8?B?bGdsYUtyYkdMSktjWFhuSVVjU3cwYmZlUTRJTkxZMzd0S3UzWTJFa1NzVjNN?=
 =?utf-8?B?ZDJWUTVwWDlPUE5ZR3BiZTl1c1ZqeXMrblZ3RFFBWHVYMVdvdnNuUT09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <05746E8A0E06FC4195885D5CABEE7D22@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3784.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 45c9f796-d22e-48b8-9ec7-08d9ba0994c3
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Dec 2021 05:14:16.2196 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ERO87wOrkDRw0wLTRhZSnwAbOdR55l/ReL0G8O1xmRUeP0GQkk93cMMjZgOiKMQ/DlX8P8KMCi9/GC8qxG3fxKRwRJCJC/pW4z4fVCdMsYppT/ehY2ZKz+dUxxkhQmPr
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3414
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC 6/7] drm/i915/guc: Copy new GuC error capture
 logs upon G2H notification.
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

VGhhbmtzIE1hdHQgZm9yIHJldmlld2luZy4gUmVzcG9uc2VzIHRvIHRoZSBxdWVzdGlvbnMgeW91
IGhhZC4NCndpbGwgZml4IHRoZSByZXN0IG9uIG5leHQgcmV2Lg0KIA0KPiA+IEBAIC00MDEzLDEw
ICs0MDE2LDExIEBAIGludCBpbnRlbF9ndWNfZXJyb3JfY2FwdHVyZV9wcm9jZXNzX21zZyhzdHJ1
Y3QgaW50ZWxfZ3VjICpndWMsDQo+ID4gIAkJcmV0dXJuIC1FUFJPVE87DQo+ID4gIAl9DQo+ID4g
IA0KPiA+IC0Jc3RhdHVzID0gbXNnWzBdOw0KPiA+IC0JZHJtX2luZm8oJmd1Y190b19ndChndWMp
LT5pOTE1LT5kcm0sICJHb3QgZXJyb3IgY2FwdHVyZTogc3RhdHVzID0gJWQiLCBzdGF0dXMpOw0K
PiA+ICsJc3RhdHVzID0gbXNnWzBdICYgSU5URUxfR1VDX1NUQVRFX0NBUFRVUkVfRVZFTlRfU1RB
VFVTX01BU0s7DQo+ID4gKwlpZiAoc3RhdHVzID09IElOVEVMX0dVQ19TVEFURV9DQVBUVVJFX0VW
RU5UX1NUQVRVU19OT1NQQUNFKQ0KPiA+ICsJCWRybV93YXJuKCZndWNfdG9fZ3QoZ3VjKS0+aTkx
NS0+ZHJtLCAiRzJILUVycm9yIGNhcHR1cmUgbm8gc3BhY2VcbiIpOw0KPiA+ICANCj4gPiAtCS8q
IEFkZCBleHRyYWN0aW9uIG9mIGVycm9yIGNhcHR1cmUgZHVtcCAqLw0KPiA+ICsJaW50ZWxfZ3Vj
X2NhcHR1cmVfc3RvcmVfc25hcHNob3QoZ3VjKTsNCj4gDQo+IFRoaXMgaXMgZG9uZSBpbiBkaWZm
ZXJlbnQgd29ya2VyLCByaWdodD8gSG93IGRvZXMgdGhpcyBub3QgcmFjZSB3aXRoIGFuDQo+IGVu
Z2luZSByZXNldCBub3RpZmljYXRpb24gdGhhdCBkb2VzIGFuIGVycm9yIGNhcHR1cmUgKGUuZy4g
dGhlIGVycm9yDQo+IGNhcHR1cmUgaXMgZG9uZSBiZWZvcmUgd2UgcmVhZCBvdXQgdGhlIGluZm8g
ZnJvbSB0aGUgR3VDKT8NCj4gDQpJIGJlbGlldmUgdGhlIGd1YyBlcnJvciBzdGF0ZSBjYXB0dXJl
IG5vdGlmaWNhdGlvbiBldmVudCBjb21lcyByaWdodCBiZWZvcmUNCmNvbnRleHQgcmVzZXRzLCBu
b3QgZW5naW5lIHJlc2V0cy4gQWxzbywgdGhlIGk5MTVfZ3B1X2NvcmVkdW1wIHN1YnN5c3RlbQ0K
Z2F0aGVycyBodyBzdGF0ZSBpbiByZXNwb25zZSB0byB0aGUgYSBjb250ZXh0IGhhbmdpbmcgYW5k
IGlzIGRvbmUgcHJpb3IgdG8NCnRoZSBodyByZXNldC4gVGhlcmVmb3JlLCBlbmdpbmUgcmVzZXQg
bm90aWZpY2F0aW9uIGRvZXNudCBwbGF5IGEgcm9sZSBoZXJlLg0KSG93ZXZlciwgc2luY2UgdGhl
IGNvbnRleHQgcmVzZXQgbm90aWZpY2F0aW9uIGlzIGV4cGVjdGVkIHRvIGNvbWUgcmlnaHQgYWZ0
ZXINCnRoZSBlcnJvciBzdGF0ZSBjYXB0dXJlIG5vdGlmaWNhdGlvbiBhbmQgeW91ciBhcmd1bWVu
dCBpcyB2YWxpZCBpbiB0aGlzIGNhc2UuLi4NCnlvdSBjb3VsZCBhcmd1ZSBhIHJhY2UgY29uZGl0
aW9uIGNhbiBleGlzdCB3aGVuIHRoZSBjb250ZXh0IHJlc2V0IGV2ZW50IGxlYWRzDQp0byBjYWxs
aW5nIG9mIGk5MTVfZ3B1X2NvcmVkdW1wIHN1YnN5c3RlbSAod2hpY2ggaW4gdHVybiBnZXRzIGEg
cG9pbnRlciB0bw0KdGhlIGludGVsX2d1Y19jYXB0dXJlIG1vZHVsZSksIGhvd2V2ZXIgZXZlbiBo
ZXJlLCBubyBhY3R1YWwgcGFyc2luZyBpcyBkb25lDQp5ZXQgLSBpIGFtIGN1cnJlbnRseSB3YWl0
aW5nIG9uIHRoZSBhY3R1YWwgZGVidWdmcyBjYWxsIGJlZm9yZSBwYXJzaW5nIGFueQ0Kb2YgdGhl
IGRhdGEuIEFzIGEgZml4LCBIb3dldmVyLCBJIGFkZCBhIGZsdXNoX3dvcmsgYXQgdGhlIHRpbWUg
dGhlIGNhbGwgdG8NCnRoZSBwYXJzaW5nIGhhcHBlbnMgZXZlbiBsYXRlcj8NCg0KDQo+IEFzIGZh
ciBhcyBJIGNhbiB0ZWxsICdpbnRlbF9ndWNfY2FwdHVyZV9zdG9yZV9zbmFwc2hvdCcgZG9lc24n
dCBhbGxvY2F0ZQ0KPiBtZW1vcnkgc28gSSBkb24ndCB0aGluayB3ZSBuZWVkIGEgd29ya2VyIGhl
cmUuDQo+IA0KWWVzLCBpIGFtIG5vdCBkb2luZyBhbnkgYWxsb2NhdGlvbiBidXQgdGhlIHdvcmtl
ciBmdW5jdGlvbiBkb2VzIGxvY2sgdGhlDQpjYXB0dXJlX3N0b3JlJ3MgbXV0ZXggKHRvIGVuc3Vy
ZSB3ZSBkb250IHRyYW1wbGUgb24gdGhlIGNpcmN1bGFyIGJ1ZmZlciBwb2ludGVycw0Kb2YgdGhl
IGludGVyaW0gc3RvcmUgKHRoZSBvbmUgYmV0d2VlbiB0aGUgZ3VjLWxvZy1idWZmZXIgYW5kIHRo
ZSBlcnJvci1jYXB0dXJlDQpyZXBvcnRpbmcpLiBJIGFtIG5vdCBzdXJlIGlmIHNwaW5fbG9ja19p
cnFzYXZlIHdvdWxkIGJlIHNhZmUgY29uc2lkZXJpbmcgaW4gdGhlDQpldmVudCB3ZSBoYWQgYmFj
ayB0byBiYWNrIGVycm9yIGNhcHR1cmVzLCB0aGVuIHdlIHdvdWxkbnQgd2FudCB0byBiZSBzcGlu
bmluZyB0aGF0DQpsb25nIGlmIGNvaW5jaWRlbnRpYWxseSB0aGUgcmVwb3J0aW5nIHNpZGUgaXMg
YWN0aXZlbHkgcGFyc2luZyB0aGUgYnl0ZXN0cmVhbSANCm91dHB1dCBvZiB0aGUgc2FtZSBpbnRl
cmltIGJ1ZmZlci4NCg0KQWZ0ZXIgdGhpbmtpbmcgYSBiaXQgbW9yZSwgYSBsb2NrbGVzcyBzb2x1
dGlvbiBpcyBwb3NzaWJsZSwgaSBjb3VsZCBkb3VibGUNCmJ1ZmZlciB0aGUgaW50ZXJpbS1zdG9y
ZS1jaXJjdWxhci1idWZmZXIgYW5kIHNvIHdoZW4gdGhlIGV2ZW50IGNvbWVzIGluLCBpIGZsaXAN
CnRvIHRoZSBuZXh0ICJmcmVlIiBpbnRlcmltLXN0b3JlICh0aGF0IGlzbnQgZmlsbGVkIHdpdGgg
cGVuZGluZyBsb2dzIHdhaXRpbmcNCnRvIGJlIHJlYWQgb3IgYmVpbmcgcmVhZCkuIElmIHRoZXJl
IGlzIG5vIGF2YWlsYWJsZSBpbnRlcmltLXN0b3JlLCAoaS5lLg0Kd2UndmUgYWxyZWFkeSBoYWQg
MiBlcnJvciBzdGF0ZSBjYXB0dXJlcyB0aGF0IGhhdmUgeWV0IHRvIGJlIHJlYWQvZmx1c2hlZCks
IHRoZW4NCndlIGp1c3QgZHJvcCB0aGUgb3V0cHV0IHRvIHRoZSBmbG9vci4gKHRoaXMgbGFzdCBw
YXJ0IHdvdWxkIGJlIGluIGxpbmUgd2l0aCB0aGUNCmN1cnJlbnQgZXhlY2xpc3QgbW9kZWwuLiB1
bmxlc3Mgc29tZXRoaW5nIGNoYW5nZWQgdGhlcmUgaW4gdGhlIGxhc3QgMiB3ZWVrcykuDQoNCkhv
d2V2ZXIgdGhlIHNpbXBsZXN0IHNvbHV0aW9uIGZyb20gd2l0aCB0aGlzIHNlcmllcyB0b2RheSwg
d291bGQgYmUgdG8gZmx1c2hfd29yaw0KbXVjaCBsYXRlciBhdCB0aGUgdGltZSB0aGUgZGVidWdm
cyBjYWxscyB0byBnZXQgdGhlIG91dHB1dCBlcnJvciBjYXB0dXJlIHJlcG9ydA0KKHNpbmNlIHRo
YXQgd291bGQgYmUgdGhlIGxhc3QgY2hhbmNlIHRvIHJlc29sdmUgdGhlIHBvc3NpYmxlIHJhY2Ug
Y29uZGl0aW9uKS4NCkkgY291bGQgY2FsbCB0aGUgZmx1c2hfd29yayBlYXJsaWVyIGF0IHRoZSBj
b250ZXh0X3Jlc2V0IG5vdGlmaWNhdGlvbiwgYnV0IHRoYXQgdG9vDQp3b3VsZCBiZSBhbiBpcnEg
aGFuZGxlciBwYXRoLiANCg0KPiBNYXR0DQo+IA0KPiA+ICANCj4gPiAgCXJldHVybiAwOw0KPiA+
ICB9DQo+ID4gLS0gDQo+ID4gMi4yNS4xDQo+ID4gDQoNCg==
