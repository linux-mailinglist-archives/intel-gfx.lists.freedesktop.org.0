Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AC855F5C51
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Oct 2022 00:02:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3361210E379;
	Wed,  5 Oct 2022 22:02:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A27FA10E379
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Oct 2022 22:02:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665007340; x=1696543340;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=Qngy3G0Dy+snXYmvgz3Xau+9BE9ZVqgQXWINIhDc29s=;
 b=BMHnrlRLcv1kB+B7VM2/w/3sFbAK8ofnZUscB1llDQNdzGZfUBeOqV6T
 YHGZ3fcfTO/4F7YcfjcejcQ4aUED3cRHj9ZeWgPC+DjJAZXWmUWGOMcf3
 TXPuigsN/+m1yLueDXLHOCT5WnMxRBhs+51QE/zvKJFXIPkXfh7IE0NX9
 YpDtQZm8G/zbZQPhjCgwIk8SRwsIovTi6wskuBQj42OC5DfNfvDV622+Y
 m7PtLG/J9SvdOtb86gFt9RMaICVJIZdnJwEwvJ7w6epDpZHxDl5i5v1vO
 lxqhqb62dnJx7RNcvdoy22c8mIPv0A8Mcj88iJkLzV/6PYM2K9PyDGoop Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="365218407"
X-IronPort-AV: E=Sophos;i="5.95,162,1661842800"; d="scan'208";a="365218407"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2022 15:02:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="749927817"
X-IronPort-AV: E=Sophos;i="5.95,162,1661842800"; d="scan'208";a="749927817"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 05 Oct 2022 15:02:15 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 5 Oct 2022 15:02:14 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 5 Oct 2022 15:02:14 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 5 Oct 2022 15:02:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UYRxZ6BCYdN3lIlTYA1WIdSgi9X0FcHfMBWjJgncKgOkf7camrAvTnYvWjXJtsOE82kCFnA4IaYzmZcxjxzhqHt2mpRIfujnpk7MvYK00mj2Dw7oJd4vNWk2687LBcGf6YU95XKR8OzZXMoaoae+uou2BH+SggEADFGr4ocQKkst0vekgQz/PJHPFbxyux86QiZsxvmI2P5KOx5wCxFMETAYzagWL37mxoejdXongv1VSpANZBEXh8Ad6cUfz0WQRRthaxXbW/IG/t0hCQ1PzFvbGhIy0apB6RXV7qWWvtfBOa9nhQ1uA+nYF02NFMx0BVmFD/IwJWsiCESXmhjKLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Qngy3G0Dy+snXYmvgz3Xau+9BE9ZVqgQXWINIhDc29s=;
 b=gg6wDL8WIaV2OTzTGlWOB0jtqs1l432T7b8jgI6MMlBdUCtkjESllal2GISeCcgDbyibQAwyWiPUFHRQHoQOUGZxoE1bljV4itg3DZXpi5YGH2MldAzz3+cVhgcp+K6GalpTVAu3pUp73n62Q7m+7EBj4+x6bE1oeNoze+by3RbIBS9GNZZzvw0fAEBABCJYuqyn5q6rVfag1onhb/aYM+GHKhDdtwBx3P1ibhM2kPp8uacgCpqnLKH2ncR/4ZDW0CME1+/8xt77XaLkNMO7FZWnwkoLs6HWH9/NyYDKhdfM+luE1jM2PenaMFZNugjH2xFwN1rokuBKgTyeZo7xwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 DS0PR11MB6325.namprd11.prod.outlook.com (2603:10b6:8:cf::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5676.28; Wed, 5 Oct 2022 22:02:08 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6f3a:c6aa:731c:d1fd]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6f3a:c6aa:731c:d1fd%7]) with mapi id 15.20.5676.032; Wed, 5 Oct 2022
 22:02:08 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 0/6] drm/i915/pxp: Prepare intel_pxp entry
 points for MTL
Thread-Index: AQHY2O8RdSy1aJ0R1USdAHF1ScYXVa4AWucA
Date: Wed, 5 Oct 2022 22:02:08 +0000
Message-ID: <541bb0cdca07f9fe72715b573e5427c42d134b7c.camel@intel.com>
References: <20221005191838.466351-1-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20221005191838.466351-1-alan.previn.teres.alexis@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.1-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|DS0PR11MB6325:EE_
x-ms-office365-filtering-correlation-id: 44f1263f-7b16-4aff-576e-08daa71d3f46
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2OH4D7Y2QTGWn8jsHkYg+3LDOKnrawFRVSysUbi0Nl6nb3FIkzos4h/BsMmrS4wOXqW5E1cOdB+PB7P3abdpRJ9uLcCgeLWU7jT/1ssej4CDeRKJOnrZ8RuBXPIrDHzKiajlQnhc5KzAU8RwAkOejwXH4xBo1Ladk/1QkCpthVMNDsfY+szqKZBQHom7deU+vhcqSn4T5LdS0RuygBH3IeqYLJLkvJAXqPYQThHcaoDJ3I3iJDn0KhcB9PakiWAQLh4aPygYslc+6Z3O1PF4Ydy8Ws56WryMl7cqlAiB/G736UTVT3bJWIIWhoZZPAkHVY6YOdxqAEuV/b09ek3gmbf2y05JkQQJMCTa9y2mUJ7TK+rZZCVwCCRzQQlRaU8r39DIh3VfpMmglBdAGZuY2pYSAPObPvFpJXH/o69PSan9q5+YObKgxKbzTPyX9nNlvDUElKTmD5mQ3eOOzMf4d0zYZage6mq55kyTyj/8Qa7Fk0Mw5btCteHyTqVZAOOQsK0WdHp5XlEgK2+gWn3ApwG2upTaVIakp7R8FkhDtpg4aqBM57XhcCpkuuZqA5kyVNLVec6snSwhXYVS2kXLwa6KzsKhj9wT4CDUrl1uWpe4RbPpjO9T63j8uOD153FNbx/fKo/G8iRGMXZdIick3gKjmS2WZaEqcqIa9RZWAvfM0vT1GN3NvKdXxm5jYsLmXO5g5RSW/1jFSk1TxlAJciTJqhtkZjPpGZ+N3rQgK6SAEYU+gZOHy3hLxIX0UwF5sgNfAiql6pbskZbGEfil1Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(366004)(376002)(136003)(396003)(346002)(451199015)(66556008)(8676002)(316002)(64756008)(66476007)(6512007)(66446008)(478600001)(76116006)(36756003)(2616005)(6916009)(71200400001)(122000001)(6506007)(82960400001)(38100700002)(86362001)(91956017)(6486002)(186003)(38070700005)(66946007)(83380400001)(26005)(8936002)(41300700001)(5660300002)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SXV1NmpiNDBhZ1dLbG1rQmgvNHZaTi96Q2tnSklHY0FnWTd0SjBmK2dqZDZT?=
 =?utf-8?B?WkVUampSU253VVhVKzFCSy9tV2ZSbTBIL3dOZlkzV2NPWHlGbldud2NjTmhn?=
 =?utf-8?B?Vm9zSStwaGl6TVRHLzVBRndLSDZMN2puSWZEem1ibndwYjhMbVp1dlcyY09m?=
 =?utf-8?B?TkZUbWFvS3VHQXhqOGtlek5WTDRZRXIxTnlUaXNoNXZCTW9ta0JsaVBvdGs2?=
 =?utf-8?B?b1F5Wm52TUtBRzF0NnFIQUFaVkQ0M0pOcERoUjBXN2czZ0Vhb2MwRjJ6TEVu?=
 =?utf-8?B?S2NONG45ZzF2QVpSb3BjdEhLZEhCWkROTHVjd0R1S1VNOEpCRHExMzlxc2lm?=
 =?utf-8?B?aUxNanl5NG1UbHpGR0FnajUyaWVNT0pKQzJzYXFzcFU4QmdTa3hBRnRMbjFt?=
 =?utf-8?B?bWpGTHllRERlWG8xdUx3cDJ5WStTYmRFajZpcDV5V1BiZ21tbTExK1krZWtp?=
 =?utf-8?B?aTl0TlowQ0F6b0VmRnd2RUgzem1kMTFNTWtiT3Y1NDRVY2Vaa3FRSWVFNHU5?=
 =?utf-8?B?THdpZTYwbG9xT1IyamN0VEUzTHJCRW1kUTFkQnR1V3RwdWx0NU93RUZlM1lt?=
 =?utf-8?B?aDIxZzl5YXpQOUFsTUhMazFvNmZQNDdBVkVSVytHdmtJMWUzaXk5UVFsWkZP?=
 =?utf-8?B?d0dkdmExYlM2eTBqdjhZNU5pNHcwdVlSYS9Qdk4vUVZibjRMaHVrMi9OdTJM?=
 =?utf-8?B?SGh4YVV0c3Vka294VkVVendSeVVIbGFwYUJIVDdRM3pEc3UvS1hNY3krUDB4?=
 =?utf-8?B?MzRyd1d6Q3pXS0w2Z3FyaVcwenJpYjNES1d6TFNSaFFQVml3ZXEzRHI0R3RS?=
 =?utf-8?B?VU8xKzVsR0xIRXo4RHRCRS9RVGMzUEZncXZZZVlFQkx3bUtsV1RieE1zdWJt?=
 =?utf-8?B?b0d1MTNSZHVVSVM4UE0wL1VkdWVWcm53dkdadHhKbmd1UkNDb0QrS1NoRDZJ?=
 =?utf-8?B?eERnNUtqRzA2OWowemdGSlFCaDlRVEd3V29OY1lMb3l6d2l0UVdsSjZxNE1N?=
 =?utf-8?B?RzBIOVhBd0cvQWFubGhQcFZYRE9Fd2VFTWltZXZKWnBJc0ExTmlFTCtrZzkv?=
 =?utf-8?B?UDlqc0hEc0NGYTBub0gvbkpHS1JCNlZ5ckloSDhpRmdRNGg4ZCtKOGx2UFFv?=
 =?utf-8?B?Q1J2bDFEeFRFcHFkaVByWVFIZ3Z6V0ZwOG1ZVXl2OHM3cTRybW1QYkZ3bXZk?=
 =?utf-8?B?TTZKOE12SUpjbE5UUmZFZXJzSVFjcVh3RkVDV0dXNjZNdlh3Q2ZRbzRDTWJv?=
 =?utf-8?B?eTVFUkNXL3dRdnJuLzFiMmJvdUlDOHc3NzQzV3FtL040a3NkNmN5SGtRK3dh?=
 =?utf-8?B?d3AvVWt4SjRHRlJkT2FHMUpvTGx0ckkrcGljMERBSmlZRWlmaG1GT1F0bWZw?=
 =?utf-8?B?UmV3Q0tHMDBIVU5MRVdQamYxM1hicndEN0hXalQyYWhhWHJoWlVBeHRiT2c3?=
 =?utf-8?B?aFRxMVJOdFlTODRCMUpDMnhXanp5YVhlUXo2OGxuNXVLd1FOK0txRnU3Y3p6?=
 =?utf-8?B?amdyT2hEbm5GbjJNbEE1NFZhUkVwL3RIZ3VXQk1rREc3S21yNVlGbWUzVWRr?=
 =?utf-8?B?NWhXVmJyZklNY0hnYXVvVjRwTnBBd0cxUDNHVXZxMDFZUHVjTm1CT3gzVi9N?=
 =?utf-8?B?ZjBQRzQwTGoyR2ZxTW0yeXFvQmwvQ1lERG4yeEhkUFZNY3RxdndQYjVydlhu?=
 =?utf-8?B?K2twTjZjL04xZHY5a1YvdVJLVGsxSDcwZDducXFraGRIUkQ0ZjdqMnErSndH?=
 =?utf-8?B?SkFUdG82NHo3a1hjSGVFRSsxajFYMGNsTUFWMnFjcDhTdllDUHdDdkpYeXBU?=
 =?utf-8?B?YWp0cnhYL0k3Y1lRNzhQQlRNVTgvdVNhWERtZ2J0NWRTRU10UFR4UkxBd1Bh?=
 =?utf-8?B?QkErOVdCZTRlMFdXSkpNbEJTMlpWR2IwUXVqNkN4NTVEVWY1bWZHRitQK2xR?=
 =?utf-8?B?TzBYV096bzdlN1Ryd1kyZUFmUk50RHViOW52QTN1WDhrcEhTaTduOGVCTkNR?=
 =?utf-8?B?a0VaaTFuSm54RGVTdmJjQ3VEak1wVUQ1Ly8vSkc4UTVCT1NGK09OQlhvallx?=
 =?utf-8?B?YTYyYlE0VFgveUV5NWk1L3VzbXdvN2pJcWljOFNwVWxFb1VlcVg5Y3RhKzZQ?=
 =?utf-8?B?Tmg1Z29ucDN2MENqVnJCdGI1Qmt3SlhvcEN2WXdWL3BBM2t6VFVhc3BNVHNy?=
 =?utf-8?Q?Kg2hmXAwBZm2VP2XxhyKc9s=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <8B9F831CE14C1A478290629717DD5FDB@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 44f1263f-7b16-4aff-576e-08daa71d3f46
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Oct 2022 22:02:08.3186 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YKktjt/0qTOH0YmwDMQR/8Y2lzy3s+m9T5hTrLH6VO5SV2dDF0s2e1iDpqbMzwwRqqtj5CA/X4r5I3QAslxBa+tHE58hn/8lnq/qEf8h7z0iJODtKFZ98sb4kgX7RBJJ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6325
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 0/6] drm/i915/pxp: Prepare intel_pxp entry
 points for MTL
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

SSBqdXN0IHJlYWxpemUgaSBtaXNzZWQgYSBwYXRjaCAoc2ltaWxhciByZWZhY3RvcmluZyBmb3Ig
cHhwLXN1c3BlbmQvcmVzdW1lIHdoZW4gY2FsbGVyIGlzIGV4dGVybmFsKS4NCldpbGwgcG9zdCBh
IHJldjIgd2l0aCB0aGF0IG1pc3NpbmcgYml0LiBSZXZpZXcgY2FuIGNvbnRpbnVlIG9uIHJldjEg
dGhvdWdoIChyZXYyIHdpbGwgYmUgYW4gYWRkaXRpb25hbA0KcGF0Y2ggZm9sbG93aW5nIHRoZSBz
YW1lIGRlc2lnbiBwcm9wb3NhbCkuDQoNCi4uLmFsYW4NCg0KT24gV2VkLCAyMDIyLTEwLTA1IGF0
IDEyOjE4IC0wNzAwLCBBbGFuIFByZXZpbiB3cm90ZToNCj4gTVRMIGhhcyB0d28gdGlsZXMgdGhh
dCBpcyByZXByZXNlbnRlZCBieSB0aGUgaW50ZWxfZ3Qgc3RydWN0dXJlIGluIHRoZSBpOTE1DQo+
IGNvZGUuIFRoZSBQWFAgZmVhdHVyZSBoYXMgYSBjb250cm9sLXN0cnVjdHVyZSB0aGF0IGNvbnRh
aW5zIHRoZSBQWFAgY29udGV4dA0KPiBhbmQgdGhpcyBoYW5ncyBvZiB0aGUgaW50ZWxfZ3Qgc3Ry
dWN0dXJlLiBJbiBNVEwsIHRoZSBzdGFuZGFsb25lIG1lZGlhIHRpbGUNCj4gKGkuZS4gbm90IHRo
ZSByb290IHRpbGUpIGNvbnRhaW5zIHRoZSBWREJPWCBhbmQgS0NSIGVuZ2luZSB3aGljaCBpcyB3
aGF0DQo+IFBYUCByZWxpZXMgb24gZm9yIGVzdGFibGlzaGluZyBhbmQgdGVhcmluZyBkb3duIHRo
ZSBQWFAgc2Vzc2lvbi4gSG93ZXZlcg0KPiBQWFAgaXMgYSBnbG9iYWwgZmVhdHVyZSBhcyBvdGhl
ciBlbmdpbmVzIG9uIG90aGVyIHRpbGVzIGNhbiByZWZlcmVuY2UgdGhlDQo+IFBYUCBzZXNzaW9u
IGluIG9iamVjdCBpbmZvIHdpdGhpbiBiYXRjaCBidWZmZXIgaW5zdHJ1Y3Rpb25zLlRoYXQgY29o
ZXJyZW5jeQ0KPiBpcyBoYW5kbGVkIGltcGxpY2l0bHkgYnkgdGhlIEhXLiBIb3dldmVyIGN1cnJl
bnQgaW50ZWxfcHhwIGZ1bmN0aW9ucyBzdWNoDQo+IGFzIGludGVsX3B4cF9lbmFibGVkLCBpbnRl
bF9weHBfc3RhcnQgYW5kIG90aGVycyB0YWtlIGluIHRoZSBpbnRlbF9ndA0KPiBzdHJ1Y3R1cmUg
cG9pbnRlciBhcyBpdHMgaW5wdXQgdGh1cyBjcmVhdGlvbiB0aGUgcGVyY2VwdGlvbiB0aGF0IFBY
UCBpcw0KPiBhIEdULXRpbGUgc3BlY2lmaWMgZG9tYWluIHRoYXQgaXMgaW5kZXBlbmRhbnQgZnJv
bSBvdGhlciBHVCB0aWxlcy4NCj4gDQo+IFRoaXMgc2VyaWVzIHVwZGF0ZXMgYWxsIG9mIHRoZSBp
bnRlbF9weHBfZm9vIGZ1bmN0aW9ucyB0aGF0IGFyZSBhY2Nlc3NlZA0KPiBmcm9tIG91dHNpZGUg
dGhlIFBYUCBzdWJzeXN0ZW0gc28gdGhhdCB0aGUgY2FsbGVycyBvbmx5IG5lZWQgdG8gcGFzcyBp
biB0aGUNCj4gaTkxNSBzdHJ1Y3R1cmUgYXMgdGhlIGlucHV0IHBhcmFtIChiZWluZyBhIGdsb2Jh
bCBoYW5kbGUpLiBJbnRlcm5hbGx5LA0KPiB0aGVzZSBmdW5jdGlvbnMgd2lsbCBsb29wIHRocm91
Z2ggYWxsIGF2YWlsYWJsZSBHVCBzdHJ1Y3R1cmVzIG9uIHRoZSBHUFUNCj4gYW5kIGZpbmQgdGhl
IG9uZSBHVCBzdHJ1Y3R1cmUgdGhhdCBjb250YWlucyB0aGUgb25lIFBYUCtURUUgY29udHJvbA0K
PiBzdHJ1Y3R1cmUgYmVmb3JlIHByb2NlZWRpbmcgd2l0aCB0aGUgcmVzdCBvZiBpdHMgb3BlcmF0
aW9uLg0KPiANCj4gQWxhbiBQcmV2aW4gKDYpOg0KPiAgIGRybS9pOTE1L3B4cDogTWFrZSBndCBh
bmQgcHhwIGluaXQvZmluaSBhd2FyZSBvZiBQWFAtb3duaW5nLUdUDQo+ICAgZHJtL2k5MTUvcHhw
OiBNYWtlIGludGVsX3B4cF9pc19lbmFibGVkIGltcGxpY2l0bHkgc29ydCBQWFAtb3duaW5nLUdU
DQo+ICAgZHJtL2k5MTUvcHhwOiBNYWtlIGludGVsX3B4cF9pc19hY3RpdmUgaW1wbGljaXRseSBz
b3J0IFBYUC1vd25pbmctR1QNCj4gICBkcm0vaTkxNS9weHA6IE1ha2UgUFhQIHRlZSBjb21wb25l
bnQgYmluZC91bmJpbmQgYXdhcmUgb2YNCj4gICAgIFBYUC1vd25pbmctR1QNCj4gICBkcm0vaTkx
NS9weHA6IE1ha2UgaW50ZWxfcHhwX3N0YXJ0IGltcGxpY2l0bHkgc29ydCBQWFAtb3duaW5nLUdU
DQo+ICAgZHJtL2k5MTUvcHhwOiBNYWtlIGludGVsX3B4cF9rZXlfY2hlY2sgaW1wbGljaXRseSBz
b3J0IFBYUC1vd25pbmctR1QNCj4gDQo+ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVy
c2FsX3BsYW5lLmMgICAgfCAgMiArLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX2NvbnRleHQuYyAgIHwgIDYgKy0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9jcmVhdGUuYyAgICB8ICAyICstDQo+ICAuLi4vZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9leGVjYnVmZmVyLmMgICAgfCAgMiArLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZ3QuYyAgICAgICAgICAgIHwgIDQgKw0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZ3RfdHlwZXMuaCAgICAgIHwgIDUgKysNCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX3NhX21lZGlhLmMgICAgICB8ICA0ICsNCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJ2LmggICAgICAgICAgICAgICB8ICA2ICstDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3BjaS5jICAgICAgICAgICAgICAgfCAgMSArDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9kZXZpY2VfaW5mby5oICAgICAgfCAgMSArDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9weHAv
aW50ZWxfcHhwLmMgICAgICAgICAgfCA3OSArKysrKysrKysrKysrKysrLS0tDQo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhwLmggICAgICAgICAgfCAxMCArKy0NCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L3B4cC9pbnRlbF9weHBfY21kLmMgICAgICB8ICAyICstDQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhwX2RlYnVnZnMuYyAgfCAgOCArLQ0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4cF9pcnEuYyAgICAgIHwgIDcgKy0NCj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L3B4cC9pbnRlbF9weHBfcG0uYyAgICAgICB8ICA4ICstDQo+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhwX3RlZS5jICAgICAgfCAyMSArKysrLQ0K
PiAgMTcgZmlsZXMgY2hhbmdlZCwgMTMwIGluc2VydGlvbnMoKyksIDM4IGRlbGV0aW9ucygtKQ0K
PiANCj4gDQo+IGJhc2UtY29tbWl0OiBlZWJhNzNkYzMxMDAyNWRiYmYyZWRmODEwOThjZDExNGNi
Y2VjNTRiDQo+IC0tIA0KPiAyLjM0LjENCj4gDQoNCg==
