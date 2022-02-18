Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A30324BB9E2
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Feb 2022 14:13:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B809210F066;
	Fri, 18 Feb 2022 13:13:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B222410F063
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Feb 2022 13:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645189979; x=1676725979;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=x2XwwW7ZqDFG26gAXBB8E9GpLrYQ7UDBpgVRyU7WHOE=;
 b=MdfcBMoD9+OzDcYnW9DAD6ebED8s0R/s/JQ1SfX8AQ8/bEKFrtlgU7ZF
 mVxwVhPe2huLHqiOy+hCP40vuwpRVwtBbeeGmLX/O73RgNZlUBhdgU6g/
 SL0Fd+3LaSTFDZnI05EOmD9wAs18Tktm6GVMZxr1r3Zge8ZDNNDIVVIzh
 2ASJb+xeAk06FYy7diUki64X1K8wQRWUzmkivedbZDOJqL+g+x1/iAojF
 mOWTzXuanVULiPNl6DOBdubx7UQnzMCkl7I3IUvznBSTRzgwb7hZmuw9w
 7y6YskK6zQaxxbtffwPRkg0uqHdgFyqgpgSEdTg4FsPiNdA3wo9XgzKBg Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10261"; a="275719801"
X-IronPort-AV: E=Sophos;i="5.88,378,1635231600"; d="scan'208";a="275719801"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2022 05:12:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,378,1635231600"; d="scan'208";a="546276021"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga008.jf.intel.com with ESMTP; 18 Feb 2022 05:12:58 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 18 Feb 2022 05:12:58 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 18 Feb 2022 05:12:58 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Fri, 18 Feb 2022 05:12:58 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 18 Feb 2022 05:12:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GzCGWv66Z/dr2mVtARdpKXE+lEPY6kicCr+akj4WTVfueuKiSvoOq9Cx1cBSV/DuMs6tTjvVZIBR/ae2S5OVUcs73BP932TIBHyfdPrjyOV0zBmpqh6kmCKFUGYN3bBDg5zjNkiGrvcswxlfv9otGpZZHC8r01rcPpim4p344ZWqX8B11P6LwUjdQyHSSeYDgDEgEj8Pi6Pwr1cE/ssXFonbPdCUy9FHEM1Rh6hhzE4dYDR4NS+7angvO1gS3rlWZeLgH1SiVkOruTEpEkLWOPz5SeIVGa89a4RnksYabTZzrYZ6BCmNNklLQ1YiU6hDMGT6jah/FERBxwf/RjRxTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x2XwwW7ZqDFG26gAXBB8E9GpLrYQ7UDBpgVRyU7WHOE=;
 b=BlkIVlbLkVdm9AFAuQrl0sF7RDyXBS1CaqsVHJq/KN1SutfPzyQb+cLWXHmB8dY9wZxiBDj6O+qDOA3uAHFER/lYWhaEvT/G13PLKHCsgqmi3BtwA0HJDRI3Z/G1TcAXUTDONcBqw6M1356u2+p8c+5Tmq/aZWMrvrphLM/LJE8JWzChEI3kaxBzIaOVozlVYQEdftIaH8itd6oQ+FFfqxdE0vE1VtnYIwRyizrH05QFQiMu02dQnsbCR5u8iipMbaHVYCccHGugaiQmH2Xs9AQXTQf5P/dKvzGuhJ/dWh9WXOG21nhIdRFk0tGH+s0eYKYoWlGSqnhVF3nr8N/ZQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB2731.namprd11.prod.outlook.com (2603:10b6:5:c3::25) by
 BY5PR11MB4498.namprd11.prod.outlook.com (2603:10b6:a03:1c2::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4995.14; Fri, 18 Feb
 2022 13:12:53 +0000
Received: from DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::b4f9:69c4:33a4:aca2]) by DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::b4f9:69c4:33a4:aca2%6]) with mapi id 15.20.4975.021; Fri, 18 Feb 2022
 13:12:53 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH 1/2] drm/i915/display: Group PSR2 prog sequences and
 workarounds
Thread-Index: AQHYHq8c0L/uJ/UNhE+yvL+2X1qJmayZVRkA
Date: Fri, 18 Feb 2022 13:12:53 +0000
Message-ID: <4c0effe2d45f11dcd82aec44305f07e896c5e073.camel@intel.com>
References: <20220210185223.95399-1-jose.souza@intel.com>
In-Reply-To: <20220210185223.95399-1-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d290e429-bb7c-4214-d56a-08d9f2e05f1d
x-ms-traffictypediagnostic: BY5PR11MB4498:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BY5PR11MB44987705DB42A59DD4347C578A379@BY5PR11MB4498.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bm5Lu90nLK84KbljDk2+Z4K+A5ifob3p1oTOao8Y2Q6lGMSteKu8LsiIuLsrMCNz+GpjiXd+B4MWEwxzMoVG4IwcjbWKpflrLhVLIr5WDaUEuV7G17HzbHlgwF9GvX+6RhxRGKV5kUfTXAevpk/2qBjHY6WGkhPuPkCvm+kBKjKkJeYVWyHB4jMQd7ILjZkjgdWRJyubB3/f3spo9V/nuHnc7fpdLvRuCXuJ0B/aJNYoTZgE2Xgc4CudePbm4IFVAlW+vh2n45ILuJ9XWbTXDsGY2N44hCgjQ+JP4ax4qUJZ1EA6oC7uNLjY/7qUBdiD4MhlvMXWqOssPh/vzLqr7B8tTDHwZLkb5SidLcCYvx24ZSdhMo6yI31VcSpl7MaPCLAe0rpT+yAqIACxyRM30qxTR+j9O/A4Drzr0PbuAd/+9UOLUo7Q4PGK+hJCTfiDLHE+wNAihUdFjv9suPN+6M9Z2kjPe+oFUNAWna5ev6h5tHzwibGB7FXxVfc+JCYfNF2Y+wCUTCFAgrSe+5dxkOgFEtcDFLl9eIsaeEz3YK6MFS3ZumZgofUotn0IFUjLImPZ4icDNnYvvezHIoRxdpO5NO1stunqYYzdtpNoLhSR1MOmYF5LuagD3Es7TsKDB/61xR84rFVbky5t8QNlbwQBlNSeISvIT5ieAv77LMatqFcewpJ5d+xcylkiyUI6XLU5PUleFfOeobtIUJP9hA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2731.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(5660300002)(6506007)(86362001)(8936002)(76116006)(122000001)(2906002)(83380400001)(6512007)(82960400001)(186003)(26005)(38100700002)(71200400001)(2616005)(316002)(8676002)(66476007)(110136005)(66556008)(66946007)(66446008)(91956017)(36756003)(508600001)(6486002)(66574015)(38070700005)(6636002)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?T0lXTXcwVnRIQ2hRZ0R6Q2FaUlpCR2lDZTlqbkRTc0YyS0wxUUdKWUVUd3pY?=
 =?utf-8?B?UkpaMG5TQnlWZ0xTV1Z0YTQ3VGxGd2VQRzFlQWJTbVRZZGEwT2FYWUw3SjFX?=
 =?utf-8?B?UWVBK2RJTm9TdEV1WVN2R3JuWUd3cWIwRU5OakppTGlrMW5YaHJnNWthWnYx?=
 =?utf-8?B?ZXZvRGhHTXpCVGJNTTVCc3FNYkh6YUNHQ0tqR0hXSVJZUjA3MmtSMHVvRGVL?=
 =?utf-8?B?bi9BQytmUnZ2dGE4TUdoWXlPOXFwa2JacGZnTGRicUFMS3dsakQrSE9vcW1y?=
 =?utf-8?B?ZWJaL1JVUEwxMUkvVFhINFN6SmtNUFZ2MHVOYzRzL3o5WVZzcHd1RWhBTnlJ?=
 =?utf-8?B?V0pEL1UyUXcyQXBobjNqRHB6SFhUMFkxeENtSlpGNk9EOG4vZzlPNlRnVGRG?=
 =?utf-8?B?VE9Cb2FsMWYvNk1McU01eE00ZUxNZjEydzZBKzNMOFFxaDNOWFRYZnNHUjBK?=
 =?utf-8?B?ZkQ3WFJUdDNqRnI4ODVlNnQ3RDVQY0c2VVZaMkovYURVNVRSLzl5aHE2WFpM?=
 =?utf-8?B?R1haa3pKRXR5QkJuUkNLZ0FsSm5UcFFibDcyMzI0Rnk3VllXREJTbTdYbE8w?=
 =?utf-8?B?NC9nNktnL0toRjhnMHcvbkg5dSs4N2xLYVdNaXhoTisxdHNZRStwR05vOE1R?=
 =?utf-8?B?RytjRjE4dlp3WWF5SllEVzc3R2xQOE56NFpobU1sTjdocllvbEpTYjE0WmtY?=
 =?utf-8?B?SElVa0o5eGhvdEJIZHE5bXljcmEyd3lneW1WU2w5R2NaZFNoVUpObCtLeEFo?=
 =?utf-8?B?WXRYRG5LTWJzNXVsb203NkVJNHB6SDVGRU40dmhLbU9Vd2hrSU5rK25aRU1n?=
 =?utf-8?B?bjNxamw1M1cwZGRQVU1yOXJlWFY3UFBQRjNxZWdRYWx5bVUyY0FnY2pSY0xX?=
 =?utf-8?B?ZDJ0allWUFU1UUdHczFjblVsK2dsclRkWnNvVmJaaFF4L1lxSjZNaG02S0Vo?=
 =?utf-8?B?amV5TjNva1poVytJZWlKb3lMWTllYkMycE4rSlhZR2ord3ZFT0dqVmZHMVFP?=
 =?utf-8?B?TmFyUnpaQ0k1aHo1SlVoMVpMUERIaE94T0JabVl1akFFanJpOGZLY0s2cTh4?=
 =?utf-8?B?U3cxWkQxR0t5RG5sS2doa3EyODZBcnFtSEpyUDEzYmxTL0NpRGVha3J1aFdF?=
 =?utf-8?B?RG1JU21uVDUyMXNHV1RIby9Oa1Q1U3pwdDdxaG0vT0Q0RWQrbmFRbTI5WUNS?=
 =?utf-8?B?dmRQWTkxeGtqcXZwUVpacCttaVdjMVE0enlpck9PZFZzakVKNlVTem1pbDhV?=
 =?utf-8?B?cnIraTI3K2kweEVrQTRsYk9nbzV1akd5S3laK2sxTUp5SllhY0NQMENoMk9j?=
 =?utf-8?B?WE5ndkNBTzZBdU54K0VXTDhVZmZlT040a3BTcjNNdXZJcGx2RjFvN1N4ZEdv?=
 =?utf-8?B?YWFMdUZVZnR0dTMyTDNPZ1BuczFnNDJ4S0JPZnQyVEtlZU5VZXNwKzdkWkp1?=
 =?utf-8?B?S0JVNU1NWkdZMlZocUtJcUhwTzBGUGtyOHBuRFAwT09heXpHQVlQWndkYzNT?=
 =?utf-8?B?d3pFeVJtMi9CMDJpb0lRUGlWbFlHTlFBWGt5ZFU3eDA2aEZ5bVhJd0ZpZVI3?=
 =?utf-8?B?ajEzd2pqU1AzTURKQ3VvaXJNYXh4NklFdHZmTi90SkZ3OVlDamJwUEJhMGdX?=
 =?utf-8?B?YUdOUjE3L3NacVNWZFg4ZWxWTmFZdVFkdGJOS1l3U0FjWVNmR011bzNaN0Ro?=
 =?utf-8?B?UzNYUVdKbmZPQ3ZGc1psY2dlSUE0ZVNJWW8yYUM4cDR3SFJsbkFibkF5MGVt?=
 =?utf-8?B?K2EzTUY2aWZZbjRUQko4Sk8yZUJLZHkydi9YV2xwQzNkdzVBeE1zeHYzVU44?=
 =?utf-8?B?K1JDd2xNT25PcUdvWGlkeFZiSHljYXUvYVd2V0pscmQwU3JGUmpYMGhsTGF6?=
 =?utf-8?B?aDFBV045T3psbEZmMFMwQ3BFdUhDN2pMcVhQaDNUdlFjTFJjdHVJeEwzbk12?=
 =?utf-8?B?Zk1POVhIeWFOV05NcUlGUHpvU2pMaGFVOWM0MDdaWDJUNFcwUk0waDVidkIy?=
 =?utf-8?B?c25xblIwQ0NheXhHelRvRzhCNkxURUZMenRDQVpQampndG41ZGVNMWgydjNV?=
 =?utf-8?B?bjNLZ3RCRzNUYmFNUzFBZ3RvSXVGYzJobFJmNG1mZ1JvNEFjeVpTK1FhTlBt?=
 =?utf-8?B?UFE3ZlZ0U1VwN3lSMzZ0Q3RkdXBuL2wzVWo1VDJza096K2N2YVZOKzRxQS91?=
 =?utf-8?B?Wm1rdkdBRXpYbmVsVG9LVWZDdHkwdThtQzllTmJDTVNlNUM4L3JWVUx6YWZ2?=
 =?utf-8?Q?7Ua7QzGJjKcGuRsW7oLAtPPv8ae7yA3VRBqc9L4aMY=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <4884570C8265CF4B9BAC6C5282E190F7@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2731.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d290e429-bb7c-4214-d56a-08d9f2e05f1d
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Feb 2022 13:12:53.1085 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0mkD0f7tTszERJfdMaHhUgYjUcAAYnMWWC//zOw+n5hUNzc2x4ZXhdJXah19yI/EPiXBWqez0U68aXdmvrMV30BDkWgkilZ/zj6N+KAK1YQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4498
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display: Group PSR2 prog
 sequences and workarounds
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

UmV2aWV3ZWQtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0K
DQpmb3IgYm90aCBwYXRjaGVzLg0KDQpPbiBUaHUsIDIwMjItMDItMTAgYXQgMTA6NTIgLTA4MDAs
IEpvc8OpIFJvYmVydG8gZGUgU291emEgd3JvdGU6DQo+IEdyb3VwaW5nIGluc2lkZSBvZiB0aGUg
c2FtZSBpZiBhbGwgdGhlIHByb2dyYW1pbmcgc2VxdWVuY2VzIGFuZA0KPiB3b3JrYXJvdW5kcyBv
ZiBQU1IyLg0KPiBUaGUgb3JkZXIgb2YgcHJvZ3JhbWluZyBjaGFuZ2VkIGluIGludGVsX3Bzcl9l
bmFibGVfc291cmNlKCkgYnV0DQo+IGl0IHdpbGwgbm90IGFmZmVjdCBQU1IyIGFzIGF0IHRoaXMg
cG9pbnQgUFNSMl9FTkFCTEUgaXMgc3RpbGwNCj4gZGlzYWJsZWQuDQo+IA0KPiBDYzogSm91bmkg
SMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEpv
c8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCA3NyArKysrKysrKysrKyst
LS0tLS0tLQ0KPiAtLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMzcgaW5zZXJ0aW9ucygrKSwgNDAg
ZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMNCj4gaW5kZXggYTFhNjYzZjM2MmU3ZC4uNzJiZDhkMzI2MWUwYyAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC0xMDY5LDI1ICsxMDY5
LDYgQEAgc3RhdGljIHZvaWQgaW50ZWxfcHNyX2VuYWJsZV9zb3VyY2Uoc3RydWN0DQo+IGludGVs
X2RwICppbnRlbF9kcCkNCj4gIAllbnVtIHRyYW5zY29kZXIgY3B1X3RyYW5zY29kZXIgPSBpbnRl
bF9kcC0+cHNyLnRyYW5zY29kZXI7DQo+ICAJdTMyIG1hc2s7DQo+ICANCj4gLQlpZiAoaW50ZWxf
ZHAtPnBzci5wc3IyX2VuYWJsZWQgJiYgRElTUExBWV9WRVIoZGV2X3ByaXYpID09IDkpIHsNCj4g
LQkJaTkxNV9yZWdfdCByZWcgPSBDSElDS0VOX1RSQU5TKGNwdV90cmFuc2NvZGVyKTsNCj4gLQkJ
dTMyIGNoaWNrZW4gPSBpbnRlbF9kZV9yZWFkKGRldl9wcml2LCByZWcpOw0KPiAtDQo+IC0JCWNo
aWNrZW4gfD0gUFNSMl9WU0NfRU5BQkxFX1BST0dfSEVBREVSIHwNCj4gLQkJCSAgIFBTUjJfQURE
X1ZFUlRJQ0FMX0xJTkVfQ09VTlQ7DQo+IC0JCWludGVsX2RlX3dyaXRlKGRldl9wcml2LCByZWcs
IGNoaWNrZW4pOw0KPiAtCX0NCj4gLQ0KPiAtCS8qDQo+IC0JICogV2FfMTYwMTQ0NTEyNzY6YWRs
cA0KPiAtCSAqIEFsbCBzdXBwb3J0ZWQgYWRscCBwYW5lbHMgaGF2ZSAxLWJhc2VkIFggZ3JhbnVs
YXJpdHksIHRoaXMNCj4gbWF5DQo+IC0JICogY2F1c2UgaXNzdWVzIGlmIG5vbi1zdXBwb3J0ZWQg
cGFuZWxzIGFyZSB1c2VkLg0KPiAtCSAqLw0KPiAtCWlmIChJU19BTERFUkxBS0VfUChkZXZfcHJp
dikgJiYNCj4gLQkgICAgaW50ZWxfZHAtPnBzci5wc3IyX2VuYWJsZWQpDQo+IC0JCWludGVsX2Rl
X3JtdyhkZXZfcHJpdiwgQ0hJQ0tFTl9UUkFOUyhjcHVfdHJhbnNjb2RlciksDQo+IDAsDQo+IC0J
CQkgICAgIEFETFBfMV9CQVNFRF9YX0dSQU5VTEFSSVRZKTsNCj4gLQ0KPiAgCS8qDQo+ICAJICog
UGVyIFNwZWM6IEF2b2lkIGNvbnRpbnVvdXMgUFNSIGV4aXQgYnkgbWFza2luZyBNRU1VUCBhbmQg
SFBEDQo+IGFsc28NCj4gIAkgKiBtYXNrIExQU1AgdG8gYXZvaWQgZGVwZW5kZW5jeSBvbiBvdGhl
ciBkcml2ZXJzIHRoYXQgbWlnaHQNCj4gYmxvY2sNCj4gQEAgLTExMjYsMTggKzExMDcsMzMgQEAg
c3RhdGljIHZvaWQgaW50ZWxfcHNyX2VuYWJsZV9zb3VyY2Uoc3RydWN0DQo+IGludGVsX2RwICpp
bnRlbF9kcCkNCj4gIAkJCSAgICAgaW50ZWxfZHAtPnBzci5wc3IyX3NlbF9mZXRjaF9lbmFibGVk
ID8NCj4gIAkJCSAgICAgSUdOT1JFX1BTUjJfSFdfVFJBQ0tJTkcgOiAwKTsNCj4gIA0KPiAtCS8q
IFdhXzE2MDExMTY4MzczOmFkbC1wICovDQo+IC0JaWYgKElTX0FETFBfRElTUExBWV9TVEVQKGRl
dl9wcml2LCBTVEVQX0EwLCBTVEVQX0IwKSAmJg0KPiAtCSAgICBpbnRlbF9kcC0+cHNyLnBzcjJf
ZW5hYmxlZCkNCj4gLQkJaW50ZWxfZGVfcm13KGRldl9wcml2LA0KPiAtCQkJICAgICBUUkFOU19T
RVRfQ09OVEVYVF9MQVRFTkNZKGludGVsX2RwLQ0KPiA+cHNyLnRyYW5zY29kZXIpLA0KPiAtCQkJ
ICAgICBUUkFOU19TRVRfQ09OVEVYVF9MQVRFTkNZX01BU0ssDQo+IC0JCQkgICAgIFRSQU5TX1NF
VF9DT05URVhUX0xBVEVOQ1lfVkFMVUUoMSkpOw0KPiArCWlmIChpbnRlbF9kcC0+cHNyLnBzcjJf
ZW5hYmxlZCkgew0KPiArCQlpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID09IDkpDQo+ICsJCQlp
bnRlbF9kZV9ybXcoZGV2X3ByaXYsDQo+IENISUNLRU5fVFJBTlMoY3B1X3RyYW5zY29kZXIpLCAw
LA0KPiArCQkJCSAgICAgUFNSMl9WU0NfRU5BQkxFX1BST0dfSEVBREVSIHwNCj4gKwkJCQkgICAg
IFBTUjJfQUREX1ZFUlRJQ0FMX0xJTkVfQ09VTlQpOw0KPiAgDQo+IC0JLyogV2FfMTYwMTI2MDQ0
Njc6YWRscCAqLw0KPiAtCWlmIChJU19BTERFUkxBS0VfUChkZXZfcHJpdikgJiYgaW50ZWxfZHAt
PnBzci5wc3IyX2VuYWJsZWQpDQo+IC0JCWludGVsX2RlX3JtdyhkZXZfcHJpdiwgQ0xLR0FURV9E
SVNfTUlTQywgMCwNCj4gLQkJCSAgICAgQ0xLR0FURV9ESVNfTUlTQ19ETUFTQ19HQVRJTkdfRElT
KTsNCj4gKwkJLyoNCj4gKwkJICogV2FfMTYwMTQ0NTEyNzY6YWRscA0KPiArCQkgKiBBbGwgc3Vw
cG9ydGVkIGFkbHAgcGFuZWxzIGhhdmUgMS1iYXNlZCBYDQo+IGdyYW51bGFyaXR5LCB0aGlzIG1h
eQ0KPiArCQkgKiBjYXVzZSBpc3N1ZXMgaWYgbm9uLXN1cHBvcnRlZCBwYW5lbHMgYXJlIHVzZWQu
DQo+ICsJCSAqLw0KPiArCQlpZiAoSVNfQUxERVJMQUtFX1AoZGV2X3ByaXYpKQ0KPiArCQkJaW50
ZWxfZGVfcm13KGRldl9wcml2LA0KPiBDSElDS0VOX1RSQU5TKGNwdV90cmFuc2NvZGVyKSwgMCwN
Cj4gKwkJCQkgICAgIEFETFBfMV9CQVNFRF9YX0dSQU5VTEFSSVRZKTsNCj4gKw0KPiArCQkvKiBX
YV8xNjAxMTE2ODM3MzphZGwtcCAqLw0KPiArCQlpZiAoSVNfQURMUF9ESVNQTEFZX1NURVAoZGV2
X3ByaXYsIFNURVBfQTAsIFNURVBfQjApKQ0KPiArCQkJaW50ZWxfZGVfcm13KGRldl9wcml2LA0K
PiArCQkJCSAgICAgVFJBTlNfU0VUX0NPTlRFWFRfTEFURU5DWShpbnRlbF9kcA0KPiAtPnBzci50
cmFuc2NvZGVyKSwNCj4gKwkJCQkgICAgIFRSQU5TX1NFVF9DT05URVhUX0xBVEVOQ1lfTUFTSywN
Cj4gKwkJCQkgICAgIFRSQU5TX1NFVF9DT05URVhUX0xBVEVOQ1lfVkFMVUUoMSkNCj4gKTsNCj4g
Kw0KPiArCQkvKiBXYV8xNjAxMjYwNDQ2NzphZGxwICovDQo+ICsJCWlmIChJU19BTERFUkxBS0Vf
UChkZXZfcHJpdikpDQo+ICsJCQlpbnRlbF9kZV9ybXcoZGV2X3ByaXYsIENMS0dBVEVfRElTX01J
U0MsIDAsDQo+ICsJCQkJICAgICBDTEtHQVRFX0RJU19NSVNDX0RNQVNDX0dBVElOR19ESVMpDQo+
IDsNCj4gKwl9DQo+ICB9DQo+ICANCj4gIHN0YXRpYyBib29sIHBzcl9pbnRlcnJ1cHRfZXJyb3Jf
Y2hlY2soc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gQEAgLTEyOTAsMTcgKzEyODYsMTgg
QEAgc3RhdGljIHZvaWQgaW50ZWxfcHNyX2Rpc2FibGVfbG9ja2VkKHN0cnVjdA0KPiBpbnRlbF9k
cCAqaW50ZWxfZHApDQo+ICAJCWludGVsX2RlX3JtdyhkZXZfcHJpdiwgQ0hJQ0tFTl9QQVIxXzEs
DQo+ICAJCQkgICAgIERJU19SQU1fQllQQVNTX1BTUjJfTUFOX1RSQUNLLCAwKTsNCj4gIA0KPiAt
CS8qIFdhXzE2MDExMTY4MzczOmFkbC1wICovDQo+IC0JaWYgKElTX0FETFBfRElTUExBWV9TVEVQ
KGRldl9wcml2LCBTVEVQX0EwLCBTVEVQX0IwKSAmJg0KPiAtCSAgICBpbnRlbF9kcC0+cHNyLnBz
cjJfZW5hYmxlZCkNCj4gLQkJaW50ZWxfZGVfcm13KGRldl9wcml2LA0KPiAtCQkJICAgICBUUkFO
U19TRVRfQ09OVEVYVF9MQVRFTkNZKGludGVsX2RwLQ0KPiA+cHNyLnRyYW5zY29kZXIpLA0KPiAt
CQkJICAgICBUUkFOU19TRVRfQ09OVEVYVF9MQVRFTkNZX01BU0ssIDApOw0KPiArCWlmIChpbnRl
bF9kcC0+cHNyLnBzcjJfZW5hYmxlZCkgew0KPiArCQkvKiBXYV8xNjAxMTE2ODM3MzphZGwtcCAq
Lw0KPiArCQlpZiAoSVNfQURMUF9ESVNQTEFZX1NURVAoZGV2X3ByaXYsIFNURVBfQTAsIFNURVBf
QjApKQ0KPiArCQkJaW50ZWxfZGVfcm13KGRldl9wcml2LA0KPiArCQkJCSAgICAgVFJBTlNfU0VU
X0NPTlRFWFRfTEFURU5DWShpbnRlbF9kcA0KPiAtPnBzci50cmFuc2NvZGVyKSwNCj4gKwkJCQkg
ICAgIFRSQU5TX1NFVF9DT05URVhUX0xBVEVOQ1lfTUFTSywNCj4gMCk7DQo+ICANCj4gLQkvKiBX
YV8xNjAxMjYwNDQ2NzphZGxwICovDQo+IC0JaWYgKElTX0FMREVSTEFLRV9QKGRldl9wcml2KSAm
JiBpbnRlbF9kcC0+cHNyLnBzcjJfZW5hYmxlZCkNCj4gLQkJaW50ZWxfZGVfcm13KGRldl9wcml2
LCBDTEtHQVRFX0RJU19NSVNDLA0KPiAtCQkJICAgICBDTEtHQVRFX0RJU19NSVNDX0RNQVNDX0dB
VElOR19ESVMsIDApOw0KPiArCQkvKiBXYV8xNjAxMjYwNDQ2NzphZGxwICovDQo+ICsJCWlmIChJ
U19BTERFUkxBS0VfUChkZXZfcHJpdikpDQo+ICsJCQlpbnRlbF9kZV9ybXcoZGV2X3ByaXYsIENM
S0dBVEVfRElTX01JU0MsDQo+ICsJCQkJICAgICBDTEtHQVRFX0RJU19NSVNDX0RNQVNDX0dBVElO
R19ESVMsDQo+IDApOw0KPiArCX0NCj4gIA0KPiAgCWludGVsX3NucHNfcGh5X3VwZGF0ZV9wc3Jf
cG93ZXJfc3RhdGUoZGV2X3ByaXYsIHBoeSwgZmFsc2UpOw0KPiAgDQpCUiwNCg0KSm91bmkgSMO2
Z2FuZGVyDQo=
