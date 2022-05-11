Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C1CBB523F96
	for <lists+intel-gfx@lfdr.de>; Wed, 11 May 2022 23:45:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6BA210E149;
	Wed, 11 May 2022 21:45:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DC1E10E149
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 May 2022 21:45:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652305514; x=1683841514;
 h=from:to:subject:date:message-id:references:in-reply-to:
 mime-version; bh=35MDuCXxqNpt9aFGjcXslNEVz02wcq6CMlkGUMK9GWE=;
 b=m8Mzvd0pGIcyD2lgfffapK64eqDjKr2e66HtGhfe42ven0iQ3R6Zj0QG
 +UKWw8Ftn5uUOk6tCs3yEbR0eOOxqKpv2ehycdt0GLiylAUvY+Xa0L5wP
 668HS5Ef0+EX9ltXfN2+ZZJ4OobTiHLqvyS5UbZtGRH/J2vLUB9vEgE8m
 L9zeRGgQGGJgupy+kQRVdjMgLcXR5ZQieBHzoXQ3g/r+OFOevJd1oHz7I
 z2OOrkXf9D4pEgUl3UXZ7OP7oCaJbG0/6ODawSBAgBIEV15IBkVWA+Eki
 cUg/0ULCm/bfPkehvVHv1q+WMS8567jXZdRdXT39lcLyYVTzJMf19Afkg A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10344"; a="332860288"
X-IronPort-AV: E=Sophos;i="5.91,218,1647327600"; 
 d="scan'208,217";a="332860288"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 14:45:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,218,1647327600"; 
 d="scan'208,217";a="697752588"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 11 May 2022 14:45:13 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 11 May 2022 14:45:12 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 11 May 2022 14:45:12 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 11 May 2022 14:45:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XsD3FfdT5NgZhNwE0M6E1xqTcwpuSd91Zn+6c+5Rp2QG0e/HSOzTOOYuQ4DJKJSPbYp8dwoAWGsYdEhV4LzIX9fKvqZoaMSO0IK1VrsJC7c7i+PrrIfYcp74rJni2AIft8dVXV0sbvydLnzDNBeuV+X7wJeYtR6BGClkb4gXgoFq/PZdIrW2WAa9Th9l193MV7COzQPsNjoT7MntPQhx9R8ooLNv23s2lmRDu1218L5ZHVRC5hI4qNGne3YTnRMUrsrzu8pNPb6WrPPB1fUL5nNw9dtNkW6+uXoz3a6dPRi7TTrsjHniCzWCCOErSMqAUKve+sHMLzGezRVSJCq7Tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=35MDuCXxqNpt9aFGjcXslNEVz02wcq6CMlkGUMK9GWE=;
 b=CVNVxeWFhT6TtFaDL6b4eLbKedi5Hl1yRDTz8CqZ5J9UGQQ6YYG6ivZotL8VjEtVCgiUnBv7CAYDYGL/BHJu/oYlCXB/hZcY4qUhinsiOe/5IHFbpKpRyVroefJMbRSYPYUPoQmvG1lSm1a9GVbHLMGcgV9FgtZkICWazs0GD87p1pKIfSsbiTPbLB0XHSWi6Uh8BrTw6/u9qU0XWXag6pQ/JBRtIdxiOUj5PB8FJ3BHs9zIMWJFpVIwcbcYTK2iIaowt3QCS0XLz+dkBnYh6X3YWpEnYfZM1M5XCiBYS8zEo9us3jIxJTnh4ydkEULSOoE0ZyTrZ+1ixue9HhBgIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 BL0PR11MB3409.namprd11.prod.outlook.com (2603:10b6:208:31::32) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5227.22; Wed, 11 May 2022 21:45:11 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::4ca0:c733:3433:ce7b]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::4ca0:c733:3433:ce7b%3]) with mapi id 15.20.5227.023; Wed, 11 May 2022
 21:45:11 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0g4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgVXBkYXRl?=
 =?utf-8?Q?_GuC_relay_logging_debugfs?=
Thread-Index: AQHYZFTZfXCSp7eFrkiIWOMyh9pNdq0aOCKA
Date: Wed, 11 May 2022 21:45:11 +0000
Message-ID: <68058cecbea59ad0eeb2686603ad2386d9e04feb.camel@intel.com>
References: <20220509210151.1843173-1-alan.previn.teres.alexis@intel.com>
 <165217683858.26421.11682510592854637046@emeril.freedesktop.org>
In-Reply-To: <165217683858.26421.11682510592854637046@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9fb6c7cd-1af0-4cea-24f1-08da33978652
x-ms-traffictypediagnostic: BL0PR11MB3409:EE_
x-microsoft-antispam-prvs: <BL0PR11MB34095E6D4D9154D6B39AF29F8AC89@BL0PR11MB3409.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GO3TO2MzpVK4PSfpl5WDfStkjptcK4xuRnv1/KUJrbwixx6g1FHkwQRnMxHV1lGQ+LtVp7TNemWapGZpLcmlTwZEaqsbOTe/BRCkZtozRtxjQyhJbccnc6W4t8W74TJmOlMqnYZClsrJnKUM59eI6WRVSrbSdHukygJ1XPnhwWn5ea29GG2sh2zfz1wX8uD4J4uJUrnnBp2fxdLRVMA0/k8j9P6LLiH0G3RrmxxiPVvy4D/R6viYTGN75EY4yoaIS5wV5591J+A5ugIIRGHIsfdTKAZcBHlXHso5CrVMlmy7lm1pUbVFFyC0EM3GJmzS9Jec0AhC0foLs4wsfLQvAGlT8tcmIyTMzUq1aRtk7KEZR//nKQzNVtHX5/edLL8W0crobxEXX21HxovQop69nagDLUPSv8uKpQQxfDITRp2EBZf5qk8qdu9WkQyqF1Kjj4mJL6TzFGwFM5DqVlAFJ+0P9bm6tswWg8aimhQRcFAvQR+PYe/kYiM1wFkkHgEhIj+evxo6rUZcLPNweubZnWrDLIrM52s5vSQCjqIgsCF8rDjDYH5cnnzLv2kF7ZUMgT+OwhLkfWhYGUltWqfng1A4FwH3At8jesz+8vPkBG5c29hf16oVP1AAA/GZvpwwSND3iXEqB/yTpTZa2EK0Zhjz3xRpAbNEp1mruWPmHmue9uls7IhvNgHZcqfzcnNWejFzwttnEsmZ+L/jhjXKgs4wIkoNIZ3T/hCH9ac5W6e0ZJDm+77IMDuwPBzWkLdqq6sNvl5fItNqU2Ab7zw+r1YiureTf4m/6/NbljEwV4K5fP9M+jlq1ckpD8dUCJ9z
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(76116006)(21615005)(2906002)(15650500001)(38070700005)(38100700002)(6486002)(508600001)(5660300002)(36756003)(186003)(83380400001)(2616005)(66556008)(316002)(8936002)(66946007)(64756008)(66446008)(66476007)(966005)(6916009)(86362001)(40265005)(166002)(26005)(71200400001)(122000001)(6506007)(6512007)(82960400001)(91956017);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?N2tYVWhROGZhLzc0UDNmQlM1cHR3L280Q015aFU0SG81YlJqU1JYdzFFM0hX?=
 =?utf-8?B?eVh3bTZSK2p4b2xJaTh3Z1dkMUVVVm9kdHBJeGlCNUlVdi9KOWZndlJ2K0dG?=
 =?utf-8?B?bHNIRzU2OEFnenlUQi8rRVFRVEFZMSs1VFFZc09mZjN3a2hvclNzV0JlR2lB?=
 =?utf-8?B?aXc0ZkJ4NlFOYXc0bUQvZnFKU0VPTWhKaFpOOW5nYlpaZTMwNTg3OHA1UHJE?=
 =?utf-8?B?WkcyL1g1UkVYRXNWNUdoSitJRGczNStuQTVrbGQ1S2w0UDBVbFI5YnovM0VK?=
 =?utf-8?B?WHdRR2J4SHZ6RTJwSTlkWWVrc3N2UW16UnU2ZHNldHRSc3VEV0ZnUk92OEJv?=
 =?utf-8?B?RHAwOHRTWmIwUkJqbER6ek5POW82eWpmY25pbWd1MzhSQlErQnc3RTJGS0Yr?=
 =?utf-8?B?Y3FtSjc3MHdFS1hqYk4xSFN0cW5RdUpzSmJYNXpSaE03bDVTRWZWT2RpM29S?=
 =?utf-8?B?OHh6empIMHJXMSt0Vjd5MHdCb2RqTExFQndXSXJvSE5vTGpkRGRtK3FMMklQ?=
 =?utf-8?B?TnJpRStHaVFTZ2E2djAwRTNPbVZsSU1jODAvR0p5Wjk4eGpzRFNlNmZ6Slly?=
 =?utf-8?B?QUxBelNxdXVzU0JHNzNJZ0F2SFN2M0h4SG9qU0hHYWh5YjMvUmZ3QUNJYXIy?=
 =?utf-8?B?SVRLT1VFVWErdVREQWltMWFoZUpWOCtuRFNTY3lIa2pEZnM3bUhERUZxQ2Zp?=
 =?utf-8?B?bkFGR2hWbCtrVmpTVFdzU1N4MUhkdDRhc2YzQkVzWkg1c3BuWUlhWFc0THF2?=
 =?utf-8?B?MWxlWTl6alovNXovc1JVVXpza1ZKbWhXdW5kaVV5eGFqTHZ4dWNadU5kRHh4?=
 =?utf-8?B?TlhVaE9kcUxXeER2ZGdIaHBZL3F4Ui9SckhMU2Z4QUloVVQyR00wRVl1SkFM?=
 =?utf-8?B?OWYxUWo4MlVkcjZKK2tYNXg1Y1hMNmxJSmVZNkZjOXJzQlgvU3dWM0hKY0Nl?=
 =?utf-8?B?dWU4MTlzaWFwQmJHWkVCaXNlZjJhV2x5bWdpb3Z2aVZJSi9qRUZWYm9qK2ha?=
 =?utf-8?B?eEJ2WW5rOTJ1dXlpd25xRFFoUGQxYkZMTFlsdW1SVEVvMG5TMG02K1RmUWFh?=
 =?utf-8?B?Ky9ua0lseVV1aHdoYjdUa1U1WDhXdjdzTFFMaGZPM1VaWThMRDJNMGw1Z3VU?=
 =?utf-8?B?SlY2SE9qdkRmRmtEbTJxclFLV0ZDSm1WOEdmYm5tRkVKWUF1MVVOSzhWc29h?=
 =?utf-8?B?ZlloZVpTVUtoMzRUYWR1c1VqYnZlYUxaT01iYmRWanh6a1lWZERwV1dkQzNu?=
 =?utf-8?B?UjBIa3JqMzAzOTliYVhpdFd5ZGlFV1piVlpxd3RkaTRFV090MlM3NGNod1Jr?=
 =?utf-8?B?WVJEbE9hek9wY051Sk1nQkF0eXpMNiszNGJJVHcxdFJ4YXVQT21oRDNRbXlq?=
 =?utf-8?B?OUVmOUZFN2dzSVNVdlZ6OUZjSDcvODBVMm5nTlp4ZDIvaVBobUE0d2g1a1dy?=
 =?utf-8?B?T2lwNTFwWDE1N2k2ZG1JMFFwWC9iaUhreVNUS0x4OXJMN0Z4OGhZbGZnbzZn?=
 =?utf-8?B?YW0yVkNsRFFmYk13ZmlTSWsyeUZLekdubXllaGdrTzdxbDk0TzhLdFFGYkpK?=
 =?utf-8?B?TVdkRzBTc2xFOWJyNkpWTy9IQitTK2Q1M29rMmNHT083Nko5NjEyTEY3YnMv?=
 =?utf-8?B?b3U1VmtnaGM1M1k2M2VQTjFCL1dpYXdienFXV2xsUVo1c0h1QVF0UnpXKzdi?=
 =?utf-8?B?WjVBeURoR2R0b0ZvZnRwTkdUcTI0Q1RBYWpLNExTQkpiVXJvRDVKTUlyRmR4?=
 =?utf-8?B?b1NpanVpSEdEZmdOTHdJY0tuL3B6TWowenhqNEIxUlp6aHFxbEgxK0kwWXBR?=
 =?utf-8?B?SHdMeG9RazJ4a3ZYNFRvamhINHE2Zks3WDd3bk0wSnFBUVltVkJQb0Zzc3JS?=
 =?utf-8?B?ckp0SHJtUEpFdkxNYUhLa0FybGVnK1FLSTdkVE9tSSszWU15UGNwVVdsVi8r?=
 =?utf-8?B?NjA2YiswWGlhUU1Xc29hYXFHbUVCN0YwNXR3aDJXeitCZmlUU0FLaFFFejRp?=
 =?utf-8?B?bDNyZGE3Z3FmN1o2UWpOQlJ3bVVEdTFlVHUyakR6OUFzUlV6T3A4Q2NxQmZx?=
 =?utf-8?B?SVhUcXh5NjRoTmQ2WFVLTFdKTDdIdSs2bWlHUklkeFlOQVRuRXlDS2pZU2tY?=
 =?utf-8?B?Ri96OVA1T3YxUkNqZlZxbndZWktZY3ZKSkxpMjBrdWc3STR5R2JvdndvOGVO?=
 =?utf-8?B?VTkxWjh1RzllZjFZaFZiWkdyOFBFanRKVnFxZzkvd1ArdGhBT2RxUlBXbDJ2?=
 =?utf-8?B?S1BoblpiRzQrb1pEUUgybDhnalVDbGZTdXg1TU0rTHlaRytOU0s3d3FqMS9T?=
 =?utf-8?B?SkpZOHdXR2ZwT0tUYU9EUm5Wd3BFQkdwUHBFOWIvYmdwcC9PNTdkK0FBQXdp?=
 =?utf-8?Q?0/yBAsuKK4l6MsdH7I3wnkTvlbiuMoqN19x/IgsrlZ+j4?=
x-ms-exchange-antispam-messagedata-1: X6qiJ7+uNqX24g==
Content-Type: multipart/alternative;
 boundary="_000_68058cecbea59ad0eeb2686603ad2386d9e04febcamelintelcom_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9fb6c7cd-1af0-4cea-24f1-08da33978652
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 May 2022 21:45:11.2642 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iUpsaOpD2NIFKveg7wjN2yIDDcgok9Ede/LxtCVV+OTo3B5+32dDKQPpgoJTL5RyClIXQD7BvPPG7K0nNfHG7jHHlUqrS2bChGIKP7OF00mmcfr0eKo9IzvZFXlP3Ina
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3409
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgVXBk?=
 =?utf-8?q?ate_GuC_relay_logging_debugfs?=
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

--_000_68058cecbea59ad0eeb2686603ad2386d9e04febcamelintelcom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TG9va2luZyB0aHJvdWdoIHRoZSBsb2cgbWVzc2FnZXMsIGFsbCA0IGZhaWx1cmVzIGJlbG93IGFy
ZSBub3QgcmVsYXRlZCB0byB0aGUgR3VDIHJlbGF5IGxvZ2dpbmcgY2hhbmdlIG9mIHRoaXMgc2Vy
aWVzLiBUaGV5IGFyZSBhbGwgZGlzcGxheSByZWxhdGVkLg0KVHdvIG9mIHRoZSBmYWlsdXJlcyB3
ZXJlIG9uIFNLTCB3aGljaCBkb2Vzbid0IGhhdmUgR3VDIGVuYWJsZWQuDQpJbnRlcmVzdGluZ2x5
LCBhbGwgNCBjYXNlcywgY2FycmllcyBtdWx0aXBsZSBkaWZmZXJlbnQgdGVzdCBvciBzdWJ0ZXN0
IGZhaWx1cmVzIGJ1dCB0aGUgZXJyb3IgbWVzc2FnZSB3aGVuIGZhaWxlZCB3YXMgYWx3YXlzICIt
NzciIChGaWxlIGRlc2NyaXB0b3IgaW4gYmFkIHN0YXRlKQ0KDQoNCk9uIFR1ZSwgMjAyMi0wNS0x
MCBhdCAxMDowMCArMDAwMCwgUGF0Y2h3b3JrIHdyb3RlOg0KUGF0Y2ggRGV0YWlscw0KU2VyaWVz
OiBVcGRhdGUgR3VDIHJlbGF5IGxvZ2dpbmcgZGVidWdmcw0KVVJMOiAgICBodHRwczovL3BhdGNo
d29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzEwMzc2Ny8NClN0YXRlOiAgZmFpbHVyZQ0KRGV0
YWlsczogICAgICAgIGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzEwMzc2N3YxL2luZGV4Lmh0bWwNCi4uLg0KUG9zc2libGUgbmV3IGlzc3Vlcw0KDQpI
ZXJlIGFyZSB0aGUgdW5rbm93biBjaGFuZ2VzIHRoYXQgbWF5IGhhdmUgYmVlbiBpbnRyb2R1Y2Vk
IGluIFBhdGNod29ya18xMDM3Njd2MV9mdWxsOg0KDQpJR1QgY2hhbmdlcw0KUG9zc2libGUgcmVn
cmVzc2lvbnMNCg0KICAqICAgaWd0QGk5MTVfcG1fZGNAZGM1LWRwbXM6DQoNCiAgICAgKiAgIHNo
YXJkLXNrbDogUEFTUzxodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJ
X0RSTV8xMTYyNi9zaGFyZC1za2w3L2lndEBpOTE1X3BtX2RjQGRjNS1kcG1zLmh0bWw+IC0+IElO
Q09NUExFVEU8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTAzNzY3djEvc2hhcmQtc2tsMy9pZ3RAaTkxNV9wbV9kY0BkYzUtZHBtcy5odG1sPg0KICAq
ICAgaWd0QGk5MTVfcG1fZGNAZGM5LWRwbXM6DQoNCiAgICAgKiAgIHNoYXJkLXNrbDogTk9UUlVO
IC0+IElOQ09NUExFVEU8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTAzNzY3djEvc2hhcmQtc2tsNy9pZ3RAaTkxNV9wbV9kY0BkYzktZHBtcy5odG1s
Pg0KICAqICAge2lndEBrbXNfY29uY3VycmVudEBwaXBlLWJAaGRtaS1hLTN9IChORVcpOg0KDQog
ICAgICogICB7c2hhcmQtZGcxfTogTk9UUlVOIC0+IENSQVNIPGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEwMzc2N3YxL3NoYXJkLWRnMS0xOC9pZ3RA
a21zX2NvbmN1cnJlbnRAcGlwZS1iQGhkbWktYS0zLmh0bWw+DQogICogICB7aWd0QGttc19wbGFu
ZV9zY2FsaW5nQGRvd25zY2FsZS13aXRoLW1vZGlmaWVyLWZhY3Rvci0wLTI1QHBpcGUtYy1oZG1p
LWEtMy1kb3duc2NhbGUtd2l0aC1tb2RpZmllcn0gKE5FVyk6DQoNCiAgICAgKiAgIHtzaGFyZC1k
ZzF9OiBOT1RSVU4gLT4gU0tJUDxodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xMDM3Njd2MS9zaGFyZC1kZzEtMTgvaWd0QGttc19wbGFuZV9zY2FsaW5n
QGRvd25zY2FsZS13aXRoLW1vZGlmaWVyLWZhY3Rvci0wLTI1QHBpcGUtYy1oZG1pLWEtMy1kb3du
c2NhbGUtd2l0aC1tb2RpZmllci5odG1sPiArMyBzaW1pbGFyIGlzc3Vlcw0KDQo=

--_000_68058cecbea59ad0eeb2686603ad2386d9e04febcamelintelcom_
Content-Type: text/html; charset="utf-8"
Content-ID: <3DCAC77A05E5AE4684E97F7E5248EE42@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGh0bWwiIGRpcj0ibHRyIj4NCjxo
ZWFkPg0KPG1ldGEgaHR0cC1lcXVpdj0iQ29udGVudC1UeXBlIiBjb250ZW50PSJ0ZXh0L2h0bWw7
IGNoYXJzZXQ9dXRmLTgiPg0KPHRpdGxlPlByb2plY3QgTGlzdCAtIFBhdGNod29yazwvdGl0bGU+
DQo8c3R5bGUgaWQ9ImNzcy10YWJsZS1zZWxlY3QiIHR5cGU9InRleHQvY3NzIj4NCiAgIHRkIHsg
cGFkZGluZzogMnB0OyB9DQogIDwvc3R5bGU+DQo8L2hlYWQ+DQo8Ym9keSBzdHlsZT0idGV4dC1h
bGlnbjpsZWZ0OyBkaXJlY3Rpb246bHRyOyI+DQo8ZGl2Pkxvb2tpbmcgdGhyb3VnaCB0aGUgbG9n
IG1lc3NhZ2VzLCBhbGwgNCBmYWlsdXJlcyBiZWxvdyBhcmUgbm90IHJlbGF0ZWQgdG8gdGhlIEd1
QyByZWxheSBsb2dnaW5nIGNoYW5nZSBvZiB0aGlzIHNlcmllcy4gVGhleSBhcmUgYWxsIGRpc3Bs
YXkgcmVsYXRlZC48L2Rpdj4NCjxkaXY+VHdvIG9mIHRoZSBmYWlsdXJlcyB3ZXJlIG9uIFNLTCB3
aGljaCBkb2Vzbid0IGhhdmUgR3VDIGVuYWJsZWQuPC9kaXY+DQo8ZGl2PkludGVyZXN0aW5nbHks
IGFsbCA0IGNhc2VzLCBjYXJyaWVzIG11bHRpcGxlIGRpZmZlcmVudCB0ZXN0IG9yIHN1YnRlc3Qg
ZmFpbHVyZXMgYnV0IHRoZSBlcnJvciBtZXNzYWdlIHdoZW4gZmFpbGVkIHdhcyBhbHdheXMgJnF1
b3Q7LTc3JnF1b3Q7IChGaWxlIGRlc2NyaXB0b3IgaW4gYmFkIHN0YXRlKTwvZGl2Pg0KPGRpdj48
YnI+DQo8L2Rpdj4NCjxkaXY+PGJyPg0KPC9kaXY+DQo8ZGl2Pk9uIFR1ZSwgMjAyMi0wNS0xMCBh
dCAxMDowMCArMDAwMCwgUGF0Y2h3b3JrIHdyb3RlOjwvZGl2Pg0KPGJsb2NrcXVvdGUgdHlwZT0i
Y2l0ZSIgc3R5bGU9Im1hcmdpbjowIDAgMCAuOGV4OyBib3JkZXItbGVmdDoycHggIzcyOWZjZiBz
b2xpZDtwYWRkaW5nLWxlZnQ6MWV4Ij4NCjxiPlBhdGNoIERldGFpbHM8L2I+DQo8dGFibGU+DQo8
dGJvZHk+DQo8dHI+DQo8dGQ+PGI+U2VyaWVzOjwvYj48L3RkPg0KPHRkPlVwZGF0ZSBHdUMgcmVs
YXkgbG9nZ2luZyBkZWJ1Z2ZzPC90ZD4NCjwvdHI+DQo8dHI+DQo8dGQ+PGI+VVJMOjwvYj48L3Rk
Pg0KPHRkPjxhIGhyZWY9Imh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMv
MTAzNzY3LyI+aHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy8xMDM3Njcv
PC9hPjwvdGQ+DQo8L3RyPg0KPHRyPg0KPHRkPjxiPlN0YXRlOjwvYj48L3RkPg0KPHRkPmZhaWx1
cmU8L3RkPg0KPC90cj4NCjx0cj4NCjx0ZD48Yj5EZXRhaWxzOjwvYj48L3RkPg0KPHRkPjxhIGhy
ZWY9Imh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEw
Mzc2N3YxL2luZGV4Lmh0bWwiPmh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzEwMzc2N3YxL2luZGV4Lmh0bWw8L2E+PC90ZD4NCjwvdHI+DQo8L3Rib2R5
Pg0KPC90YWJsZT4NCjwvYmxvY2txdW90ZT4NCjxkaXY+Li4uPC9kaXY+DQo8YmxvY2txdW90ZSB0
eXBlPSJjaXRlIiBzdHlsZT0ibWFyZ2luOjAgMCAwIC44ZXg7IGJvcmRlci1sZWZ0OjJweCAjNzI5
ZmNmIHNvbGlkO3BhZGRpbmctbGVmdDoxZXgiPg0KPGgyPlBvc3NpYmxlIG5ldyBpc3N1ZXM8L2gy
Pg0KPHA+SGVyZSBhcmUgdGhlIHVua25vd24gY2hhbmdlcyB0aGF0IG1heSBoYXZlIGJlZW4gaW50
cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTAzNzY3djFfZnVsbDo8L3A+DQo8aDM+SUdUIGNoYW5nZXM8
L2gzPg0KPGg0PlBvc3NpYmxlIHJlZ3Jlc3Npb25zPC9oND4NCjx1bD4NCjxsaT4NCjxwPmlndEBp
OTE1X3BtX2RjQGRjNS1kcG1zOjwvcD4NCjx1bD4NCjxsaT5zaGFyZC1za2w6IDxhIGhyZWY9Imh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzExNjI2L3NoYXJk
LXNrbDcvaWd0QGk5MTVfcG1fZGNAZGM1LWRwbXMuaHRtbCI+DQpQQVNTPC9hPiAtJmd0OyA8YSBo
cmVmPSJodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
MDM3Njd2MS9zaGFyZC1za2wzL2lndEBpOTE1X3BtX2RjQGRjNS1kcG1zLmh0bWwiPg0KSU5DT01Q
TEVURTwvYT48L2xpPjwvdWw+DQo8L2xpPjxsaT4NCjxwPmlndEBpOTE1X3BtX2RjQGRjOS1kcG1z
OjwvcD4NCjx1bD4NCjxsaT5zaGFyZC1za2w6IE5PVFJVTiAtJmd0OyA8YSBocmVmPSJodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMDM3Njd2MS9zaGFy
ZC1za2w3L2lndEBpOTE1X3BtX2RjQGRjOS1kcG1zLmh0bWwiPg0KSU5DT01QTEVURTwvYT48L2xp
PjwvdWw+DQo8L2xpPjxsaT4NCjxwPntpZ3RAa21zX2NvbmN1cnJlbnRAcGlwZS1iQGhkbWktYS0z
fSAoTkVXKTo8L3A+DQo8dWw+DQo8bGk+e3NoYXJkLWRnMX06IE5PVFJVTiAtJmd0OyA8YSBocmVm
PSJodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMDM3
Njd2MS9zaGFyZC1kZzEtMTgvaWd0QGttc19jb25jdXJyZW50QHBpcGUtYkBoZG1pLWEtMy5odG1s
Ij4NCkNSQVNIPC9hPjwvbGk+PC91bD4NCjwvbGk+PGxpPg0KPHA+e2lndEBrbXNfcGxhbmVfc2Nh
bGluZ0Bkb3duc2NhbGUtd2l0aC1tb2RpZmllci1mYWN0b3ItMC0yNUBwaXBlLWMtaGRtaS1hLTMt
ZG93bnNjYWxlLXdpdGgtbW9kaWZpZXJ9IChORVcpOjwvcD4NCjx1bD4NCjxsaT57c2hhcmQtZGcx
fTogTk9UUlVOIC0mZ3Q7IDxhIGhyZWY9Imh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzEwMzc2N3YxL3NoYXJkLWRnMS0xOC9pZ3RAa21zX3BsYW5lX3Nj
YWxpbmdAZG93bnNjYWxlLXdpdGgtbW9kaWZpZXItZmFjdG9yLTAtMjVAcGlwZS1jLWhkbWktYS0z
LWRvd25zY2FsZS13aXRoLW1vZGlmaWVyLmh0bWwiPg0KU0tJUDwvYT4gKzMgc2ltaWxhciBpc3N1
ZXM8L2xpPjwvdWw+DQo8L2xpPjwvdWw+DQo8L2Jsb2NrcXVvdGU+DQo8ZGl2Pjxicj4NCjwvZGl2
Pg0KPC9ib2R5Pg0KPC9odG1sPg0K

--_000_68058cecbea59ad0eeb2686603ad2386d9e04febcamelintelcom_--
