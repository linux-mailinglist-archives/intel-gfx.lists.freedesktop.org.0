Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BF955AE3EF
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Sep 2022 11:15:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EE1A10E600;
	Tue,  6 Sep 2022 09:15:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6384310E600
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Sep 2022 09:15:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662455729; x=1693991729;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Dty2tLucGOf2Nif5kc17jl8qodVMcy9pIFrlBAn5tGI=;
 b=WqMGpA6DPE7LBPsry09z2KPauGqIp0NAaFPUmLk7t88R1FdNm95jVzoa
 Pe6AA/Na4vIEnYm+DVUbkM1m7lGfQaaEkQ7BqLfHRRg8ddaEAymbb14OX
 GYLm7npr0XQRoUvYQ2b8VCHApvnETdEYGwXGuzQVCmHhRyOSk7pQxg28n
 eDrlr6OSUPeIRnJplJCaslCZyo7OMvZRwzm/GiCVHFvMGp/nq516/2c9j
 WSHp3Cilyo8/TPccoiaCzK77VZlZ5bhE/TX8gFpEwGb+8vZfR0LImX64j
 fyNSf9m0A2KTVE9ngC18Da0yOnM5mH2i9jXiaL4vSvd4UOW8SXeHbC2zX Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10461"; a="276939940"
X-IronPort-AV: E=Sophos;i="5.93,293,1654585200"; d="scan'208";a="276939940"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2022 02:15:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,293,1654585200"; d="scan'208";a="565025697"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP; 06 Sep 2022 02:15:28 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 6 Sep 2022 02:15:27 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 6 Sep 2022 02:15:27 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 6 Sep 2022 02:15:27 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 6 Sep 2022 02:15:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aIBVNLMWGD9l4NKin0tTOExKdYUGuvYe/KQxHTlSi/QUdBjaDfd/33Mc9FYLJgELv1v8ZHx/861UMEEJns5vw3KSyK7m3fFpCDBfiyloDO7QpXI8cQdyeBXlXex4kX9twW4Ebx6IWfWILB2GINd8UXa9enaHHAdXjU68IVyN221nEtGZ4dL3Gj5CpbPClnIYFFGfKYYTEWEleHQufoZzsMegVvaa8EDsvCkjnXagJTonRNc4GHZwOyyiCmv6OnnTThZ+mGZVvpjrMxx98YWWouFKKppat6nmUB6KGTBg0GJH4wd9AEsi1y98ChCbv5BYoEwk/hepCIold4+WFvGasA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Dty2tLucGOf2Nif5kc17jl8qodVMcy9pIFrlBAn5tGI=;
 b=jNDNAmTxN1JzS/Dx7m2HqJVi4moXTCAE5UIEGj/cQLRH4D3IqrnsqlspZIalAe7YBMWbCwGsXZKcBGBPuIcuwdSsJi7jfBUVAAwotCutYXpBHB5sDQFAY8MkuTD7g0mYLCFn/WGJ9Otkef8ZGSmYOLCIOtJpFoEorKsE9LpKIk/M+1kZgmIxzHRIzXyxExPpS/tZiILxypG4H7DY0SUfCOHQUP3UxZeC2+G0z0BlL2uwVmrGuwJX+uCHY80p+mANnl1BJ7Xs40NsWtz+AJ5nLe7b6ykAutaFNI4gMmrRMkeWmz3/cO/Fi9RK6QijxNKyoMThg9/3JvdPQHaZ+yoE6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR1101MB2157.namprd11.prod.outlook.com
 (2603:10b6:301:51::10) by CO1PR11MB4785.namprd11.prod.outlook.com
 (2603:10b6:303:6f::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.10; Tue, 6 Sep
 2022 09:15:25 +0000
Received: from MWHPR1101MB2157.namprd11.prod.outlook.com
 ([fe80::549e:abb2:40dc:6591]) by MWHPR1101MB2157.namprd11.prod.outlook.com
 ([fe80::549e:abb2:40dc:6591%9]) with mapi id 15.20.5588.015; Tue, 6 Sep 2022
 09:15:25 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 1/2] drm/i915/psr: Equation changed for sending
 start/stop on prior line
Thread-Index: AQHYwRGzxZfdZBEQIEeeYG5gSNFvnK3SICmQ
Date: Tue, 6 Sep 2022 09:15:25 +0000
Message-ID: <MWHPR1101MB2157D32D72149A0732557853EF7E9@MWHPR1101MB2157.namprd11.prod.outlook.com>
References: <20220905102355.176622-1-jouni.hogander@intel.com>
 <20220905102355.176622-2-jouni.hogander@intel.com>
In-Reply-To: <20220905102355.176622-2-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3667953a-379d-4ade-13d4-08da8fe8557c
x-ms-traffictypediagnostic: CO1PR11MB4785:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IIq1F11S6OGey0lTb6w6DqthTD2rIu8o3onvi4TBtbNiK2I1jLhUK9uauX8hkaoErP9jz9ti72cjTkzaUo8TvYtQeX8OeT0/1+pFYWcFXi7kChukeOwXk3EW4Ff5qlwt+6x2PY92rHBTpN8k/lRuQ6Gx2X3Jv4evxzjeZPARpTfo9ObeqruvhOACwOxpbslp0M5D9wesBYo+U1o16vADla5l9UwitmjnlL2vDL3KlttUJyGbTzuq+hTNNtCrKh/szqfhwspfq54uJnuthnQpF8159Vhc7WPfLfnf0hWs9i3YjMYL5hN/Xu6LiopF7LUUpHBACrR3nxdECEC5FrbnHvGrR6ASrbTuaUdewEnaPtpQbHSdYa/cFUvlkZBNQU9acvb5KxykYstKbs2UW8MWWJzOprYy1NQ3CD9GDdkMx9hhaPem0TIOeK5nANzL8IzkSG8gY5nlA/l2q+H53WHCXb+Upi5j5Y+5fFkcEry3Qmu6cTG9rZHQLfydTxaG//EqrC79Z+DqLoYi0VNg+Wzb6ktQlyVIPUyDQnJ7T1DY6IJNaex/wTMgpdUGBESXwAelRtWPsLdgwFEtrnUk6HzDIWuDjjoT0/kJAheJ7QPnXrfUhoFcN7Nmn8T0bXZfJdW43ZfSUO+4VKK/QZCNWu/lLO0vGGT/gG9Ax7bZg8p6Wq9+Ee4aQSY44w9p5nXPkmker5Gvg/DV8SJfdOZEndhAllpxXCpOJC+xBanYbTDfVqj/xHRyfxsAXHiA98njv7/Po1sN/gPFTNct+NSWOGCiMg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1101MB2157.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(136003)(39860400002)(346002)(366004)(376002)(66446008)(86362001)(64756008)(33656002)(66556008)(76116006)(8676002)(4326008)(66476007)(66946007)(122000001)(38100700002)(38070700005)(82960400001)(41300700001)(83380400001)(9686003)(66574015)(53546011)(7696005)(6506007)(107886003)(26005)(478600001)(71200400001)(55016003)(110136005)(2906002)(316002)(186003)(8936002)(5660300002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cnJKQ0tHRHd5NjRPK3VhWGpSTXZLZU9ZQWlyOXl3U0tPOVlTQnZrSU5IOFJQ?=
 =?utf-8?B?cVlvZEdkek9pTWYzVjIwdzQ1VG4rTEtQK2NCUkZQMkp6NkViNmZ1a3EzcDkw?=
 =?utf-8?B?aktxVnBhRk1hNnhRWXl6ZHNreXNHVUpWaVArOUtkdlZGNXVlcGg0OSt1OU5H?=
 =?utf-8?B?TUNDY2hOVGtvR0hHTkpscjd3aG5xbGR2UEF4dDN2VTdiS214aWFSMkFnamFF?=
 =?utf-8?B?cHBQbTFNemQwQ25kYndqNWpZZkJHdmVlYnhlZ3ByWkcwMExRbjZZVUJjWUZB?=
 =?utf-8?B?djlER1AxQVIwVHdIUlIvN1B4SWo5aGtKc0hxWG9oeFliYzY3MENzcWFIYVQv?=
 =?utf-8?B?bGlpVWd1MWw0OElFUnMzUExvK05xc2lFKzNvQm5oVGlObUlUaVlpeEJWUy9m?=
 =?utf-8?B?bWdienNyZi9URnhpRmxkQlVzemlldW52V2xiTFNEUEx6MStjMlRqTWl4dzhT?=
 =?utf-8?B?dldnaWQ2ektzbXA4TDFlcnpFc2hLZjV6MXdJblVWMVhUcVpSemRYUUg4VTJU?=
 =?utf-8?B?aGdHeHpUeEx2N0N6czUxTW95Q2xUN2lnNThvbHhPWDVMQmp4eExEbG4yNEJp?=
 =?utf-8?B?OUJkYWNDODdhVWp0TnA1VWdQREl0RU4wNmlicmtaSFlKZWtqRHJGWGdPMUNN?=
 =?utf-8?B?alNWRDkramJiYkVTTkhQV1l0Q1dyY2J6L05SaUFFRlpZQjdTN1JCbzhsRXp3?=
 =?utf-8?B?QnN1UXc5S3ZEOS9DTFBmVGdiRUFIWHdENFhwMUdmRklCYlNBejlPM2lJS3FK?=
 =?utf-8?B?d3JlTkpGTUE0UUJaQ0V2ZVNOUTdjVmFRbFhqbWxWSGVsMm05NGJPK00zZytW?=
 =?utf-8?B?SWplRHNkeWwyRmpNWVp4NTBxSE9waGhCQzgxUnN6djRiRHEwTHFuTjRVYUlM?=
 =?utf-8?B?RUthd0hEWnI2QU9adGdyTVVYcDdrdzJVMGxBRnlVUTBiS1ZLLzVBbzRKaDlT?=
 =?utf-8?B?cW9XalZ1eW1ORmhhRUtpaTJySHl6ZkY5MGxlOHZROUVjN0EzM3NUM0RQb1p2?=
 =?utf-8?B?ZEZtbHBxcnNkQTE0Z3ZlWDdabUh3WjZLYndmUmhoQ2ZveTI3ZDJTZmF2cEZF?=
 =?utf-8?B?TWlpK1dmYzV4OGJKTFlESzBHZXBKKzdROHk4cktJQ1phZ2gybmtYQkpxTWoy?=
 =?utf-8?B?c2xMMElKOVEwbWc0Mmw5bVZ6R2hLQjRnSks0ZXR5c2htQVRGbUNpWVN0ZzA2?=
 =?utf-8?B?bGVvNTJFbDdFWElQVTAxSHY4VDZ3YklWYU0vQ1ZENVdMeEhKWVNVanJReEVZ?=
 =?utf-8?B?Sm1OWVBFOFppcmsyU2NmVUFrN3JNLzBzOHN4SzA4NnA3MFBzUGwwQW5qdmdo?=
 =?utf-8?B?U2FTazA1aWt2QUVzMmZwdTJQaEZsRVB0R1p4TlR2VGNNYklpS1FoRWlzRE15?=
 =?utf-8?B?M3BJcUYzZDhUcGl3ZzdMckdrN1RYNGZOV0U1K3k0Y0pzOWlzT2V4ajNWOVNR?=
 =?utf-8?B?Zk9lU2ttUUJ6bUtBWjl1UVZySEJYYU1JS3piM0dHY1gzTlZsb282ajQ5Y2hJ?=
 =?utf-8?B?ZTN0MVdYZk9JRHZYUkw1c0F2SjlZNkhpMnZhN3R3KzBTQlVtdXMzeUdYeUpY?=
 =?utf-8?B?VjhoT01DNWIxQkY4Tk8yVkxCTDFPVFB5MTM5cC9RY1daQ1ltUTVQWFpSNkhz?=
 =?utf-8?B?WUlRcWNHV25vUCtBN3BYNGt6ZVQzL0p3TzVyU1A4TUs0bFdsRGNjdnVFRE5P?=
 =?utf-8?B?b1ArQkFNems2SkpTZERaaWU2WW9Vak16UzZ0Q1VJc1hXdE52dUxSUFZHdGVi?=
 =?utf-8?B?b3pSV0ZsSkZ6K3VoTlJOK3ROSisrV0lFSFp0cmRQTEQxSFluWW5CakVEMldF?=
 =?utf-8?B?TWZKMm1XSXZmY0NIVjNTQ2kyLzRmdU9NdjJCNzU1c3JxZHpSUmJYMlE4dTV6?=
 =?utf-8?B?Qit4bzV6V2kxWGNaTlBzbndUWnNSekViaE9sZXNFcXpYSXltcFNOZXZkS21y?=
 =?utf-8?B?amR4OUxzQXAxMUlEakdqT2UwSFNvM1ZuZHpvV1JGb2JsVEs0bGJObFBqWVpL?=
 =?utf-8?B?Qi94WktGU2l1SXk0cDY2RjRTaVJRSmxiQjQyNjJ2a0N6VFM3eXAyVmZ3OGww?=
 =?utf-8?B?SlVYWTR0TGRzam1JRTliTFFKQ0JKVEVlV2M4ZWNhbU1yYlo0TE9PVDkwVXZP?=
 =?utf-8?Q?W44oUNCVg/aCq7VnPU8vnZmGu?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1101MB2157.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3667953a-379d-4ade-13d4-08da8fe8557c
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Sep 2022 09:15:25.5257 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: A6y5OOWgxbQJ7lMw6wntTtFLD9jV3ZUA2BRTK9VDFUP0YZdAaDG219Gs0jEbTHiCVfRtCs9UqNPJtoTIVpq0MQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4785
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/psr: Equation changed for
 sending start/stop on prior line
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBIb2dhbmRlciwgSm91bmkgPGpv
dW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gU2VudDogTW9uZGF5LCBTZXB0ZW1iZXIgNSwgMjAy
MiAxOjI0IFBNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBI
b2dhbmRlciwgSm91bmkgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT47IEthaG9sYSwgTWlrYQ0K
PiA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsgU291emEsIEpvc2UgPGpvc2Uuc291emFAaW50ZWwu
Y29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggMS8yXSBkcm0vaTkxNS9wc3I6IEVxdWF0aW9uIGNoYW5n
ZWQgZm9yIHNlbmRpbmcgc3RhcnQvc3RvcCBvbg0KPiBwcmlvciBsaW5lDQo+IA0KPiBFcXVhdGlv
biBmb3Igc2VuZGluZyBzdGFydC9lbmQgU0RQIHByaW9yIHRvIHRoZSBTVSByZWdpb24gc3RhcnQv
ZW5kIGhhcw0KPiBjaGFuZ2VkLiBVcGRhdGUgdXNlZCBmb3JtdWxhLg0KPiANCj4gQnNwZWM6IDQ5
Mjc0DQo+IA0KPiBDYzogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCj4gQ2M6
IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KDQpSZXZpZXdl
ZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2Zm
LWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gLS0tDQo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgNCArKy0tDQo+ICAx
IGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGluZGV4IDA3OWI3ZDNk
MGM1My4uNmYwM2JmMTZkNmY0IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMNCj4gQEAgLTgwNSw4ICs4MDUsOCBAQCBzdGF0aWMgYm9vbA0KPiBfY29tcHV0
ZV9wc3IyX3NkcF9wcmlvcl9zY2FubGluZV9pbmRpY2F0aW9uKHN0cnVjdCBpbnRlbF9kcCAqaW50
ZWxfZA0KPiAgCWhibGFua190b3RhbCA9IGFkanVzdGVkX21vZGUtPmNydGNfaGJsYW5rX2VuZCAt
IGFkanVzdGVkX21vZGUtDQo+ID5jcnRjX2hibGFua19zdGFydDsNCj4gIAloYmxhbmtfbnMgPSBk
aXZfdTY0KDEwMDAwMDBVTEwgKiBoYmxhbmtfdG90YWwsIGFkanVzdGVkX21vZGUtDQo+ID5jcnRj
X2Nsb2NrKTsNCj4gDQo+IC0JLyogRnJvbSBzcGVjOiAoNzIgLyBudW1iZXIgb2YgbGFuZXMpICog
MTAwMCAvIHN5bWJvbCBjbG9jayBmcmVxdWVuY3kNCj4gTUh6ICovDQo+IC0JcmVxX25zID0gKDcy
IC8gY3J0Y19zdGF0ZS0+bGFuZV9jb3VudCkgKiAxMDAwIC8gKGNydGNfc3RhdGUtPnBvcnRfY2xv
Y2sNCj4gLyAxMDAwKTsNCj4gKwkvKiBGcm9tIHNwZWM6ICgoNjAgLyBudW1iZXIgb2YgbGFuZXMp
ICsgMTEpICogMTAwMCAvIHN5bWJvbCBjbG9jaw0KPiBmcmVxdWVuY3kgTUh6ICovDQo+ICsJcmVx
X25zID0gKCg2MCAvIGNydGNfc3RhdGUtPmxhbmVfY291bnQpICsgMTEpICogMTAwMCAvDQo+ICso
Y3J0Y19zdGF0ZS0+cG9ydF9jbG9jayAvIDEwMDApOw0KPiANCj4gIAlpZiAoKGhibGFua19ucyAt
IHJlcV9ucykgPiAxMDApDQo+ICAJCXJldHVybiB0cnVlOw0KPiAtLQ0KPiAyLjM0LjENCg0K
