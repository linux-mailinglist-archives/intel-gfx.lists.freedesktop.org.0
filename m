Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5BAF39F4A4
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jun 2021 13:08:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35B276E1B8;
	Tue,  8 Jun 2021 11:08:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 793DD6E1B8
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Jun 2021 11:08:42 +0000 (UTC)
IronPort-SDR: Kk5BTK40lnRdlWXH+kTi7no3Cet4GsDXVtm0Ctcf0/8HXHp15H3LQnE81aPd40pVri9AVzeFQT
 SV39YQTasrUw==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="204787619"
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="204787619"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 04:08:41 -0700
IronPort-SDR: iubf4Myv1u74+hpvYgXw+1LRNCLpmKTwah3WsVde6pvjD79hL7mblGoL+5OnWQhJpaFNFBHFRA
 lE3ihXpkWl+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="551566315"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga004.jf.intel.com with ESMTP; 08 Jun 2021 04:08:41 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Tue, 8 Jun 2021 04:08:41 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Tue, 8 Jun 2021 04:08:41 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Tue, 8 Jun 2021 04:08:41 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Tue, 8 Jun 2021 04:08:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jHotFdVfVJoSU4bTLRK1Rv8FHd+CKDy80heyicN+ZOPfd5nvT/JfWNZ5aIoqGeEU/jExfc4gyI3+8DOdxmlzUewY9pWFPWcPXC3x3m98rz6yUEYDf4n3dH54b2Ay/fihwPemh6zX/OOQBR4GfvSgqZp/IQz7FnP1AktH3WVA2A4DLakUCPq7zVFRy3PuK6t4i13P9lZ8htHWDCx4tNgzUXyN6bvTYpQ31qdXRNNcXqLs3SpBEbeDS512pFS19geHfYlesq9R5BLEtgB1j2JpWwPNRZcnIdUDBWfXkBzomQb8Fbz01XtMdpJoFDX95FV6Y0cFru0Z88sEmPpeR4iLjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VBHaEhypyajnTwKdZyZL/8e77eiU9OXTHeKjNViuZrw=;
 b=NNwRgVH27HFiTTqbaybLF3vmj3oWY8srtXn6haKVICvphurnsgV1bv5aC3z1mIZEDZ8p/TwpA7x/plwnVhkAf6jGohEb4Wt+aGKYU4rZj/wrKNM6a8M0rOWyHbkRSUf4OCjBOOVQNY07M0mn4UeMF1OrMXpR2iDeicN1i47FrOwre3dtOTmUnzqHPiqED6lkPgB5wuXg/tKnUhp66WlpjIh4jsKzvJVYU7DFAZAS6NEDrkmIHmIcUNGkL8muH1KNlWUEev71c90/eeSo3P87G2COAKnREDVlFHrvZ9IeXeJnNJ/9dZvr2T/dfY0dE5LbWCITbLTApdCmVCt7NmbZtg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VBHaEhypyajnTwKdZyZL/8e77eiU9OXTHeKjNViuZrw=;
 b=xUxHlkX+wCkecRSyd7N1hS+MAzmKpQGX0+vbVWxXMs8me64ZE0HwmXth5Jmg3CIq+T+gb6Ro6T4Vjaldmy6KT6zFwfKbaYl3iD3BZ7+SF8uuMIlB0aAhBQGqjLHJP/7AoYtmOhKM4lFvUwi4uvQwdnX4KGQjja19UyxdpJXOH4s=
Received: from SN6PR11MB3421.namprd11.prod.outlook.com (2603:10b6:805:cd::27)
 by SA2PR11MB4923.namprd11.prod.outlook.com (2603:10b6:806:fa::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.21; Tue, 8 Jun
 2021 11:08:39 +0000
Received: from SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::5c0d:c982:3e51:d948]) by SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::5c0d:c982:3e51:d948%4]) with mapi id 15.20.4195.030; Tue, 8 Jun 2021
 11:08:39 +0000
From: "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: Borislav Petkov <bp@alien8.de>
Thread-Topic: [PATCH V3] x86/gpu: add JasperLake to gen11 early quirks
Thread-Index: AQHXXFZAAP8bZRI/ikG443lWOoszfqsJ9HBg
Date: Tue, 8 Jun 2021 11:08:39 +0000
Message-ID: <SN6PR11MB34215E5EF4B601EDE6DF722DDF379@SN6PR11MB3421.namprd11.prod.outlook.com>
References: <20210608053411.394166-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <YL9O+Tfly7LHcudb@zn.tnic>
In-Reply-To: <YL9O+Tfly7LHcudb@zn.tnic>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: alien8.de; dkim=none (message not signed)
 header.d=none;alien8.de; dmarc=none action=none header.from=intel.com;
x-originating-ip: [103.240.204.227]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7344ae88-6b17-4f9a-94e1-08d92a6dc524
x-ms-traffictypediagnostic: SA2PR11MB4923:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA2PR11MB4923CB65BFE304C985698D4FDF379@SA2PR11MB4923.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:305;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YMVIBFxDuC47gisVO+5aaQBD9fp/mlbMY0iM/PGbD6i3z/gnxzhL4q/wMkwJ+1kT7sj+mG2EG3JviTNE1IYJYEZlh+54fPdR5bVC4jZGg+e3Oi5Tp047dZqIU4GcrCfdHgokAV/GLRAOKRA3buLIAqg+8OxFxNehw+uWhKcps2lZAP/F26KB0yuYQv9bypvvYroC0jq/FHlNnFlzjBkh+QZM7wTEbhCFcDaIyTDcjFxBglOMwf2VHkCHnTyoDhj9MFqEyw0r9Rbo5NuN5p9ef7531gxAEKRC3PudE+I9FkYuG9c3FAWqoJI9V8FEdC/M7cZgweIXSfHQyprLdfqBF+UOrC/0Z9g18gvX5Lgqsu8S0ev5oTii9WouK4jvqVBe9sxborrKJTuUR5dpRmuw/JQALIIt7MKCB6EpYoNvckl1p6szrsqySEHyC2p6Jx2MuV8j6FwPpIDXwiomLnaNGDIUgB23/Mg4n/sqV4yUX1Xh8NW4Kqb2gojEB5hXvZJB6qi0O0lZqjuTvQKbPVrhCwsJrTtuF7pOIOVTM9sAF/l2kjDfAVvnv9XiPsdHrKNmMav0HX5CV4H8/buWMmfSHSul6A6aZfbBtZJvWqxS4zerE5SLa2v5jRHjfSX+5HGbI+lSadvWR+zVsxqOTW1svKW+AMQkSoIGzoe4zO3meIX6MUW3KbioxWkBd851b7b7XyO8fOHol/VgOBcMRrAxOBFdYvtn38WVY8xO/gwut1I=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3421.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(376002)(396003)(136003)(366004)(39860400002)(6506007)(53546011)(7696005)(186003)(26005)(122000001)(71200400001)(33656002)(54906003)(966005)(38100700002)(478600001)(4326008)(83380400001)(8936002)(66556008)(66446008)(64756008)(6916009)(55016002)(9686003)(66946007)(2906002)(86362001)(316002)(5660300002)(8676002)(52536014)(76116006)(66476007)(107886003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ek12aTZhaFpCVGQ1cE8vTHdjc2NSakFMcmw1Snh4OGltU3dhY2ZibVQ1TkVk?=
 =?utf-8?B?ZFFpbDgvNllCYzlPMGJ0aWlQREN5SzdKYmorSkFUSDh6eld6aUtUejZXQTkv?=
 =?utf-8?B?Rk1aNkNaNVMvL2FrWFNkOTZodUp2RlhyTWUzZVkxYVAzTGtLeEVCdm45SEZD?=
 =?utf-8?B?WGc1WEl0aWVGNVFsVGpKWGdYZzdBYlpPYVYrb2lncDR0VnplV2xlRzFWUitM?=
 =?utf-8?B?Z1pzNlVCUmFSL0FhRnZDbWNCUzhJNFBYR0hLQmYvQVZqNjNtT3dScmlTNkFz?=
 =?utf-8?B?MkJzK2VHRVNZOWZad0JXV1VoTGVHUHl3SVQ0RVdaQUdaSnFUeEdMd0VTZEQ1?=
 =?utf-8?B?WW1KdEpIZ2RaNWFITW5RcGFvOWxleDR2L25FRXMzTkZnQk9PK3FzdXRJUFZm?=
 =?utf-8?B?MkhSbkMreU1xMVlqazlxanFlQXI2VlY2eURQc3NVY3Zhc21aSXhTd3pwSmhl?=
 =?utf-8?B?WmRMYUhobEI4MkhSNlYxQlRZdUxGb0dMN044TklIZUI2VHZNb2dNWnBpR1Vt?=
 =?utf-8?B?WDlmdkNveHpQcXNTU0lVZyt6K1poVGdFMWZ2UWJ1cGNIcVZQaTVIam5YYjdK?=
 =?utf-8?B?YWNTeWppSzNTeElXUElieWZ5MzNKUDFqWGJCU3dBbXJOekJUc3czcTgyNlpy?=
 =?utf-8?B?eUZ2NlUySlN6aEllczVZbW5TUHdwRTBVNTg0VHhxM1JUbEFEeTM0N3Rzb1Ux?=
 =?utf-8?B?VURQQmhQN1R5N3haK2hjYUtGcmdRakxuSXg1R3Z3OWczZHRzZDZUcG9ZL0h1?=
 =?utf-8?B?aHVubnBwN01rWlIwY3pMVUgrajFZY2l1UW5zT1pHK0wwQldrd1RRUnQwdGpi?=
 =?utf-8?B?Ym1JQ2JFclRVVlBRWTNxdkMyQ2Z0alpSTFQwSGpZWjhwVGdqMVhwTmdJRmFk?=
 =?utf-8?B?UVo3WExxVmhVQXMySE93QXM1M2V5NlRiMWtGUVFvdlF4WEN6VUdUN1Q2Tnpz?=
 =?utf-8?B?ZWx6WFhJYzZ1a1gxa1VFSTUzOHVkaFFMai9RYlFwdWxtbWhBQVIwR2d4ZHlk?=
 =?utf-8?B?dThnR1ZVa2svRkNSM1BOS0pKam1BZVkvN0FWWmdMRmFYaHc2UzA3cFFESUdi?=
 =?utf-8?B?eThpOUc0clplaW1JRU9kMGRVTnFac1p6YzRUN0doWDBvZnV5Ty95Yi9jTUp1?=
 =?utf-8?B?Y0hUcnJieHRNMUh6R1RDdXc4UThzNEMyVGJwZDVhSGpyeWtWUXg3bWVkUlRT?=
 =?utf-8?B?WHVFME5ETWgrdWJORCtLcmdVZXExVnBCbFY2cmh3bVJLdzFJUVl0YW9xUUZ6?=
 =?utf-8?B?VlViSmZqZzF5aTVmeHRWcVZzRnVnMnZxWGFjMitCUUVCcjJyaGRPT2VVK0FD?=
 =?utf-8?B?UHVzUDR0ZWJEOHZJdlJWYnU0cW1SWitjdFphMlFYaEs3YWZiZENjdzhBOEQr?=
 =?utf-8?B?WS9wUS9VdkUvdlJKMU85czhRWW11bGwzOHNCTlJNbWJkdUlqYjB0WVNCZnBK?=
 =?utf-8?B?Q1B3Lyt6c1QrQnlkOFJ0T1oyV3VGOVlBUUtIVUsrVk9JeUdiVi9hVnhBZmhY?=
 =?utf-8?B?dnd1dHZFTURUS0ZNOXhQSUpzN1hEcmgxYkFoUDBLelZRcktvQkYrZTRpTlFW?=
 =?utf-8?B?ZTdZZlhRSDQ3QjhLSEdTZ25LdmFlTkNJSlFXSmFoTGFkNlo3OU1FK0cvVFp2?=
 =?utf-8?B?RXdEbHlJQ1c4d3BRaUxWcWlWU2lyUU9EWGtVWjN5dUFTR3lGR1JjSGdjaWdG?=
 =?utf-8?B?WHg0S3hBbm16VUlOOVhxOXlRS25Vb1FKaW9hT2FEeWhwUzBqMjBScjk1YThS?=
 =?utf-8?Q?kgJyHsniyLnRkIkAtqqTQOWVldcEvJ9n87qij7T?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3421.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7344ae88-6b17-4f9a-94e1-08d92a6dc524
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2021 11:08:39.5837 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YQEyzyAuE5blluqvf5+ZJ3OJW2pRS/TjWJywBu40tEG8FpF6bs1TARrlMPl+JuOuverTSorKoAEQMSSR/tULC9VqrmyYu4YTXUknngOkYmE+7glAhPsx0NG02v6Vj7w9IpC+Y2tI8g6CQ5vOLRuC0A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4923
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH V3] x86/gpu: add JasperLake to gen11 early
 quirks
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "x86@kernel.org" <x86@kernel.org>, "mingo@redhat.com" <mingo@redhat.com>,
 "hpa@zytor.com" <hpa@zytor.com>, "tglx@linutronix.de" <tglx@linutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQm9yaXNsYXYgUGV0a292
IDxicEBhbGllbjguZGU+DQo+IFNlbnQ6IDA4IEp1bmUgMjAyMSAxNjozNQ0KPiBUbzogU3VyZW5k
cmFrdW1hciBVcGFkaHlheSwgVGVqYXNrdW1hclgNCj4gPHRlamFza3VtYXJ4LnN1cmVuZHJha3Vt
YXIudXBhZGh5YXlAaW50ZWwuY29tPg0KPiBDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZzsgdGdseEBsaW51dHJvbml4LmRlOyBtaW5nb0ByZWRoYXQuY29tOw0KPiBocGFAenl0b3Iu
Y29tOyB4ODZAa2VybmVsLm9yZzsgU291emEsIEpvc2UgPGpvc2Uuc291emFAaW50ZWwuY29tPg0K
PiBTdWJqZWN0OiBSZTogW1BBVENIIFYzXSB4ODYvZ3B1OiBhZGQgSmFzcGVyTGFrZSB0byBnZW4x
MSBlYXJseSBxdWlya3MNCj4gDQo+IE9uIFR1ZSwgSnVuIDA4LCAyMDIxIGF0IDExOjA0OjExQU0g
KzA1MzAsIFRlamFzIFVwYWRoeWF5IHdyb3RlOg0KPiA+IExldCdzIHJlc2VydmUgSlNMIHN0b2xl
biBtZW1vcnkgZm9yIGdyYXBoaWNzLg0KPiA+DQo+ID4gSmFzcGVyTGFrZSBpcyBhIGdlbjExIHBs
YXRmb3JtIHdoaWNoIGlzIGNvbXBhdGlibGUgd2l0aCBJQ0wvRUhMDQo+ID4gY2hhbmdlcy4NCj4g
Pg0KPiA+IFJlcXVpcmVkIGR1ZSB0byBiZWxvdyByZWZlcmVuY2UgcGF0Y2g6DQo+ID4NCj4gPiBj
b21taXQgMjRlYTA5OGI3YzBkODBiNTZkNjJhMjAwNjA4ZTBiMDI5MDU2YmFmNg0KPiA+IGRybS9p
OTE1L2pzbDogU3BsaXQgRUhML0pTTCBwbGF0Zm9ybSBpbmZvIGFuZCBQQ0kgaWRzDQo+ID4NCj4g
PiBWMjoNCj4gPiAgICAgLSBBZGRlZCBtYWludGFpbmVyIGxpc3QgaW4gY2MNCj4gPiAgICAgLSBB
ZGRlZCBwYXRjaCByZWYgaW4gY29tbWl0IG1lc3NhZ2UNCj4gPiBWMToNCj4gPiAgICAgLSBBZGRl
ZCBDYzogeDg2QGtlcm5lbC5vcmcNCj4gPg0KPiA+IENjOiBUaG9tYXMgR2xlaXhuZXIgPHRnbHhA
bGludXRyb25peC5kZT4NCj4gPiBDYzogSW5nbyBNb2xuYXIgPG1pbmdvQHJlZGhhdC5jb20+DQo+
ID4gQ2M6IEJvcmlzbGF2IFBldGtvdiA8YnBAYWxpZW44LmRlPg0KPiA+IENjOiAiSC4gUGV0ZXIg
QW52aW4iIDxocGFAenl0b3IuY29tPg0KPiA+IENjOiB4ODZAa2VybmVsLm9yZw0KPiA+IENjOiBK
b3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gPiBTaWduZWQt
b2ZmLWJ5OiBUZWphcyBVcGFkaHlheQ0KPiA+IDx0ZWphc2t1bWFyeC5zdXJlbmRyYWt1bWFyLnVw
YWRoeWF5QGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgYXJjaC94ODYva2VybmVsL2Vhcmx5LXF1
aXJrcy5jIHwgMSArDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQ0KPiA+DQo+
ID4gZGlmZiAtLWdpdCBhL2FyY2gveDg2L2tlcm5lbC9lYXJseS1xdWlya3MuYw0KPiA+IGIvYXJj
aC94ODYva2VybmVsL2Vhcmx5LXF1aXJrcy5jIGluZGV4IGI1NTNmZmU5Yjk4NS4uMzg4MzdkYWQ0
NmU2DQo+ID4gMTAwNjQ0DQo+ID4gLS0tIGEvYXJjaC94ODYva2VybmVsL2Vhcmx5LXF1aXJrcy5j
DQo+ID4gKysrIGIvYXJjaC94ODYva2VybmVsL2Vhcmx5LXF1aXJrcy5jDQo+ID4gQEAgLTU0OSw2
ICs1NDksNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHBjaV9kZXZpY2VfaWQgaW50ZWxfZWFybHlf
aWRzW10NCj4gX19pbml0Y29uc3QgPSB7DQo+ID4gIAlJTlRFTF9DTkxfSURTKCZnZW45X2Vhcmx5
X29wcyksDQo+ID4gIAlJTlRFTF9JQ0xfMTFfSURTKCZnZW4xMV9lYXJseV9vcHMpLA0KPiA+ICAJ
SU5URUxfRUhMX0lEUygmZ2VuMTFfZWFybHlfb3BzKSwNCj4gPiArCUlOVEVMX0pTTF9JRFMoJmdl
bjExX2Vhcmx5X29wcyksDQo+ID4gIAlJTlRFTF9UR0xfMTJfSURTKCZnZW4xMV9lYXJseV9vcHMp
LA0KPiA+ICAJSU5URUxfUktMX0lEUygmZ2VuMTFfZWFybHlfb3BzKSwNCj4gPiAgCUlOVEVMX0FE
TFNfSURTKCZnZW4xMV9lYXJseV9vcHMpLA0KPiA+IC0tDQo+IA0KPiBJIHNlZSBpdCBoYXMgYmVl
biBhcHBsaWVkIGFscmVhZHkuIFJlZ2FyZGxlc3M6DQo+IA0KPiBBY2tlZC1ieTogQm9yaXNsYXYg
UGV0a292IDxicEBzdXNlLmRlPg0KDQpZZXMsIHRoYW5rcyBmb3IgQWNrIHRob3VnaC4NCg0KVGhh
bmtzLA0KVGVqYXMNCg0KPiANCj4gLS0NCj4gUmVnYXJkcy9HcnVzcywNCj4gICAgIEJvcmlzLg0K
PiANCj4gaHR0cHM6Ly9wZW9wbGUua2VybmVsLm9yZy90Z2x4L25vdGVzLWFib3V0LW5ldGlxdWV0
dGUNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
