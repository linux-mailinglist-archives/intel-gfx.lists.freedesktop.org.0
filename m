Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 426E259662D
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Aug 2022 01:56:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFC6010E09B;
	Tue, 16 Aug 2022 23:56:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70B4E10E0C8
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Aug 2022 23:56:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660694163; x=1692230163;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=R4BGCsNNyrvKEJl0BkSL2fjWG7UEggbDhh1Oo+azKi4=;
 b=JqJzrfLGLb5JGfXlT57Q9d8lP4VKZuqYmsoKCBdjjh/zLw07/NwZ+BCh
 Gz2FtHq2pn0od+sR0qWzz4w0Ox6UXJGe7eKCkPXgFteGaWiowx5VQ+ZC0
 9SSk93FegnWL0Pkdro4Kp6ON8F/sHMUvEIs64RmPEvQqDK2FD1ZRE0k+n
 YzGipuqJTk2X53NQfQ708GuYCpNILFAv+z12lV3c0L+AceKj6nxvEsWDQ
 s6CiuY3OyKxS50CVjSKZ1pVlAhpeF814DfgdWZkmnz8yQ6ungQXc6ZIih
 /UjVzUFuG+VEA+qWPMN8olH8LhafJcNtGLD6zg+Ew2sQIZeVnCnGARrF1 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10441"; a="275413147"
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="275413147"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 16:56:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="935122970"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP; 16 Aug 2022 16:56:02 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 16:56:01 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 16:56:01 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 16 Aug 2022 16:56:01 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 16 Aug 2022 16:56:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YSUr9gJS48ElnfgCBxpoW17LSzFDpsEX6QB+x5Np9wLuM4TcBYyEwW+Jnq2adHP2gMmdFu1b16V1VpzJu8Uei1fp4COQJbZTaQWAhY/bSRg4kFfwLXfsfXmlbTW/ezT/wFZvSeDXxC6mltlrTlSD4A+KsYWc2wi6Q1FmBJo5Ixhm+f2byrKggrAe78cT0JSL1tkHcFAp+GqEB50tcMq+h9M07Fuw9+mL+ckklWYjXjq0B6nmRfUOS7HiotWsIb2Nvad95/f0PDbBsHOrBOBLVplmCV1fKJqSK59NZ+ZFdF6CW3FbB7l+64ogJlr2cREBTLXh6cbq561Zb4+6er0ykQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R4BGCsNNyrvKEJl0BkSL2fjWG7UEggbDhh1Oo+azKi4=;
 b=XPTY8byHB4ur4JjVkj2PlGTlMYOdkiVqgUm/Rna9Ipyh9LZcSvmg2bIS1aYHKbPr3Fvcw6PmztlyakIOXLIr6PZKkVlBal0M+Ps1LEUbUVFOeLuYEHe7HZ1ZIsWMQVo1EKWJNMXxzYcHgxklXuYW8D6pJc3WPnWVnhagdhe0H3vlNYWDS7Jio1hwmMzEdsEj/rDTZZFblspenXIKNgijSSdERzMZBWmZ72m0HbWAxltMG/9mNOrwu04Kq5Hsd2rldyaJ35uuJ79Z7nScMEoGay3rGHKkwByzmJYooFJHtLyXI81pvkrr/gnDUY6rJ7dgozNWXbMyGnXYX1tUy6lnOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 SN6PR11MB3294.namprd11.prod.outlook.com (2603:10b6:805:c4::33) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5504.16; Tue, 16 Aug 2022 23:55:59 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::fdd1:18b1:3e9c:b03e]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::fdd1:18b1:3e9c:b03e%5]) with mapi id 15.20.5525.011; Tue, 16 Aug 2022
 23:55:59 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Harrison, John C" <john.c.harrison@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/2] drm/i915/guc: Add delay to disable
 scheduling after pin count goes to zero
Thread-Index: AQHYsRZPfW+YmQiOwEqeRHXPHKG1Oa2yIbMAgAAT9QA=
Date: Tue, 16 Aug 2022 23:55:59 +0000
Message-ID: <7959392c4c800123585f4c5784f1d5961f864610.camel@intel.com>
References: <20220816021715.1835615-1-alan.previn.teres.alexis@intel.com>
 <20220816021715.1835615-3-alan.previn.teres.alexis@intel.com>
 <bda52b13-1925-7a07-eabc-349e8573b09e@intel.com>
In-Reply-To: <bda52b13-1925-7a07-eabc-349e8573b09e@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e6ec0a7e-a853-40d3-4122-08da7fe2de69
x-ms-traffictypediagnostic: SN6PR11MB3294:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rtcQ4mPbqPpzxwBGucWtxrAECJJzfapTvKWh1/XjBZtRqPSOtSKhg0ZSiBFNHd7EgZ/Ag3KntxaBPP/aon6c0gnTaL+qurkss9Sst2ls0zv9Wh11eJPx+QSl+dICgPu3FTLzNgbxrfmAuUjW3/b6QV/VRQuiPtV1DcJuO+bHgypo5LayPTR80OHCnSrgu2bwCbkRMkC16asz8ftSADizrjRe/7UmH/fQq9Xbkn6ZXFqa+Y8OKVWZvC2SFYzVVyD1h3a/M9xyhl4XkFByuKq1BwA9dHWa4bn/n796vcpGNp5vI3+HeafT6YIVz0lhL8If49it8EippjvOpZBrE2QoYf9KVQmOWnwarn0sAFeFBp25LEXkgyLZZPAmfmSY9ixxHuv76jpViDos3vIBEnZsnqtT4igGdIQvQdJs4Y5P3i/tJm7g9shel46EQVwLZNO/+/LhOOOXuKt7K0JyC2qvfOaZermkUnKoIBShZemxTSgB1QkgW0awQ5YNrbaWG1nGgGzdgCUxPmSwRMTaxDgyc/eGbjsB4o3oQ4TWNfQazYLiyt9mq/apWAeiV/kBr43wlRmjCJ0BHn5+Qwzyn2kMDzBXscAunBEIpUJAAU2fm22pRPrL/J85B6nvf/VKIp8mPq2bkabGnFHT28I5K33hfUYvWWb6wq128lDXbVzW7gJy5j9ubi+bTaBAnSl4uzJAGlmp9o2OLTSIqxnGHzr0QvOS1I7dkxxw36UJO7NQLdODkpazXvd0ZolQack646y1d+zO371eC4IrAKzhHMriCgXqLSwQchTutvBN6bgn4Zk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(346002)(136003)(376002)(396003)(39860400002)(316002)(83380400001)(110136005)(6512007)(6486002)(2906002)(86362001)(8936002)(36756003)(6506007)(82960400001)(38070700005)(5660300002)(478600001)(38100700002)(122000001)(186003)(26005)(66476007)(2616005)(71200400001)(41300700001)(66946007)(66446008)(53546011)(91956017)(64756008)(76116006)(66556008)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Qk1lSWNBWjVDMWE0NzFZblB1UDRsZ3RNRzk1MnR2SUZ3MmRsRzBVZEc5eU5K?=
 =?utf-8?B?TVo5TVpWNG9MK0tYVGdOSDh6ZG02d2ttbmZVZVRBMjAyNVpiSERQUXpVMFJK?=
 =?utf-8?B?NnFWQXFueFA2eDJaUU0yT3U3ZDlQV0o0ZzMvYXA4MDYrTU4wU0huNHZqbTRI?=
 =?utf-8?B?ZzFaTjF6ZkJCSCtaVjJlVFRTckg5aWlTbEhjQjIvano3cGlrdThCME1YYllJ?=
 =?utf-8?B?amptMGtCdUxVYXN0ODFjcXVJb0w2YS83ODBJd1ZsL0xSUmUyVDRmYVBnQ1g0?=
 =?utf-8?B?QjJHZzFFcytDOS9JOVlnZGFXeVBPODk3aGtOc3VOYWhINjgxSVloMUNJQXk4?=
 =?utf-8?B?V2krdHphUmR4VlJ3b2ovRVFtZjgvK0RJMncyZTVVYUlRbTg4c29jZmFUMFNF?=
 =?utf-8?B?bEViZzBHazJISU8xN2dsMzQ0Z1hzdFZiZm5DaUk2TVpVL2ZVdURwUjRsWlFB?=
 =?utf-8?B?a3JxaUpMQnI4UzVob3FvQ2xKK1Z2aVVwUEtiNEl5MnFrMlIyblZ6YkFOVjFw?=
 =?utf-8?B?bmp5MW82QTUxQmEvZHJGcmVKNkxEWXNST2pDOWtvajB4ZmdZaTFqSndnMDVv?=
 =?utf-8?B?ei9la0dVRVNtdVJmSHpqcUFsaWw5YWlPNmxZV2F6amlTWC8wNVhoLzhZOHU0?=
 =?utf-8?B?NWxEcDhFa1lpbE82aWxtV0hiOG9ZZEpvMUxYQlhJaVdoU2RRMUM5RGJTc0JC?=
 =?utf-8?B?YXlSQXNpUnNUZlA4YUhVMEFmZVdjeUhPTC9UbjJCQS9DZWVuSlFsc2dZRk9p?=
 =?utf-8?B?RXV4T0pLT0FFakRBMFRsRnlDSG8wekd3bm01M01wVTArRzl4T1FESHVlemJo?=
 =?utf-8?B?OUdzQlA5c3I4a2prdVFqTFZWa3hRU0hicjRxT2p5WDFxL1VTdncwVHlMT1k2?=
 =?utf-8?B?ZU9ZeERNd2NSRmFLWVFlRUNkbWM2d3NUU3NraEhmTDNlMVArRUM1dGgySEsr?=
 =?utf-8?B?NGtCNU5xcm9rMzVacElOYTdaOWplK0tFZFdOckE0MHQvcjlsclNmRnN5cS9N?=
 =?utf-8?B?N0lYTFQ5UjYrcXQ4VE8zdU8vajFrbkxpaEgraENtMUorYXdqS3Y5UmxKZWQ5?=
 =?utf-8?B?YVVXTGhkTjUvYTEvbkNtcXdWc09kTFk0ZnhSS3IxeXJEVUJRdUh3NTF3c0VX?=
 =?utf-8?B?UHJ6R3c4RXhQbjIzYkkwbzkvclhFNW5kcFFjMkpiRHVTdWtuVGhsOS9CaUVR?=
 =?utf-8?B?ZllJR2FoYlRjSTFLSVY0dGxraTlIc0tidHB0cDZxdUUvekt0UVhtTHkvQ1U1?=
 =?utf-8?B?eDNmaEdyOWJpNXRBU1lDOHdOWGlrcXE1TXRZRlJES3RSeDFIbXVoNndYbjcz?=
 =?utf-8?B?TUZEbkdhSnNkQklJdy82RFZFSTh4VzBxQ3lVaFp6U2VtdVR1K3hxcU9jRkYy?=
 =?utf-8?B?d204NDFzNS9NcG5NSGdHdm5YMnJBb0FSdzFIdUp3VUYwb2FzQXh3SHZVWERY?=
 =?utf-8?B?UHJKUjdlQTE3WXdkaGNLYk5JU2VVQURqSUhXbVgwNEZmVnU1clZzK3p2emZ1?=
 =?utf-8?B?bnZpQ3NReHpMWGtEQkdOZEtvK1VETG5OdStSalE5STdTSjQ4Wmgra0tJVk03?=
 =?utf-8?B?a0JiRFRMU2Fia1ZZNWtFeEc3K3JSZVNqVEExckFZWnlncWZCT2kwenkxaTZZ?=
 =?utf-8?B?V2xxdlJmTnkxTFExWnZadUFZakF0RGdpWEV2QWtVS25kZnNyOGpaNFl5RWl0?=
 =?utf-8?B?UXU2aVR4ZWlRd0JTSjV1czBCNXhvb3lEcDNVZ0J1Y1kxSlBFUFArcGNiZFlw?=
 =?utf-8?B?RmY1TUY2akJhNVpyVXJYMmJPR1I5ckFUOW9FZjIzNmlkZGpQNXJDZ1RvTDdK?=
 =?utf-8?B?M1JKMlFrVG9oZlhCa3UyRktxajRtanB2bnJWM2Y1SnhQdURYd0RONkp3aFVr?=
 =?utf-8?B?SHpadjRoemsxaVYwNnhLTUR4bll2WU9hQnVKcVlidlAydVNFUVVxU1BUaFp6?=
 =?utf-8?B?a2k0aHNvVXo3ZjFYN1BjcG4zWHZhWEVwQUJuVTE1dVBteEd3L0VKK2Nmb3lz?=
 =?utf-8?B?elM0TGdoYUVPaGhzOElCWlZYRWNJQnVNc2xiSUhoYjZyK0pObVRydHNDM2hT?=
 =?utf-8?B?NWswRnZDUnZlS0xGTEp5YjRocFlBYmpPYjF1T0JrbHBsa2psRkwxYXRaMTVw?=
 =?utf-8?B?N1VuY3cvSllITnhsd3FOZytpbFhpaFZFNGVhMlFjYmU1ai9QdVEwRDRrNFF1?=
 =?utf-8?Q?kGXKf6KzizzsAepMPj/R5D4=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <CF1D02297AE8C541A9A48E272026F5D9@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e6ec0a7e-a853-40d3-4122-08da7fe2de69
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2022 23:55:59.6966 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YABvEHcAi5WER+UogB1AvrxF+OQDJQh7Dsa0Kf6rnlsx+T9tTSvLPROSip9vD0p87WXmTEsexf3oAlwYPI1F7PvMOA9K6uWoWWwF3DlEcLiST0RoLk2Pj9GETwb6Uim5
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3294
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/guc: Add delay to disable
 scheduling after pin count goes to zero
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

DQpPbiBUdWUsIDIwMjItMDgtMTYgYXQgMTU6NDUgLTA3MDAsIEhhcnJpc29uLCBKb2huIEMgd3Jv
dGU6DQo+IE9uIDgvMTUvMjAyMiAxOToxNywgQWxhbiBQcmV2aW4gd3JvdGU6DQo+ID4gRnJvbTog
TWF0dGhldyBCcm9zdCA8bWF0dGhldy5icm9zdEBpbnRlbC5jb20+DQo+ID4gDQo+ID4gQWRkIGEg
ZGVsYXksIGNvbmZpZ3VyYWJsZSB2aWEgZGVidWdmcyAoZGVmYXVsdCAzNG1zKSwgdG8gZGlzYWJs
ZQ0KPiA+IChkZWZhdWx0IGlzIDMvNCkgb2YgdGhlIGd1Y19pZHMuDQo+IGFyZSBpbiB1c2UuDQo+
IA0KbXkgYmFkIC0gZ290IGNsaXBwZWQgLSB3aWxsIGZpeC4NCg0KPiA+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19zdWJtaXNzaW9uLmMNCj4gPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfc3VibWlzc2lvbi5jDQo+ID4gQEAgLTY1
LDcgKzY1LDEzIEBADQo+ID4gICAgKiBjb3JyZXNwb25kaW5nIEcySCByZXR1cm5zIGluZGljYXRp
bmcgdGhlIHNjaGVkdWxpbmcgZGlzYWJsZSBvcGVyYXRpb24gaGFzDQo+ID4gICAgKiBjb21wbGV0
ZWQgaXQgaXMgc2FmZSB0byB1bnBpbiB0aGUgY29udGV4dC4gV2hpbGUgYSBkaXNhYmxlIGlzIGlu
IGZsaWdodCBpdA0KPiA+ICAgICogaXNuJ3Qgc2FmZSB0byByZXN1Ym1pdCB0aGUgY29udGV4dCBz
byBhIGZlbmNlIGlzIHVzZWQgdG8gc3RhbGwgYWxsIGZ1dHVyZQ0KPiA+IC0gKiByZXF1ZXN0cyBv
ZiB0aGF0IGNvbnRleHQgdW50aWwgdGhlIEcySCBpcyByZXR1cm5lZC4NCj4gPiArICogcmVxdWVz
dHMgb2YgdGhhdCBjb250ZXh0IHVudGlsIHRoZSBHMkggaXMgcmV0dXJuZWQuIEJlY2F1c2UgdGhp
cyBpbnRlcmFjdGlvbg0KPiA+ICsgKiB3aXRoIHRoZSBHdUMgdGFrZXMgYSBub24temVybyBhbW91
bnQgb2YgdGltZSB3ZSBkZWxheSB0aGUgZGlzYWJsaW5nIG9mDQo+ID4gKyAqIHNjaGVkdWxpbmcg
YWZ0ZXIgdGhlIHBpbiBjb3VudCBnb2VzIHRvIHplcm8gYnkgYSBjb25maWd1cmFibGUgcGVyaW9k
IG9mIHRpbWUNCj4gPiArICogKHNlZSBTQ0hFRF9ESVNBQkxFX0RFTEFZX01TKS4gVGhlIHRob3Vn
aHQgaXMgdGhpcyBnaXZlcyB0aGUgdXNlciBhIHdpbmRvdyBvZg0KPiA+ICsgKiB0aW1lIHRvIHJl
c3VibWl0IHNvbWV0aGluZyBvbiB0aGUgY29udGV4dCBiZWZvcmUgZG9pbmcgdGhpcyBjb3N0bHkg
b3BlcmF0aW9uLg0KPiA+ICsgKiBUaGlzIGRlbGF5IGlzIG9ubHkgZG9uZSBpZiB0aGUgY29udGV4
dCBpc24ndCBjbG9zZWQgYW5kIHRoZSBndWNfaWQgdXNhZ2UgaXMNCj4gPiArICogbGVzcyB0aGFu
IGEgdGhyZXNob2xkIChkZWZhdWx0IDMvNCwgc2VlIE5VTV9TQ0hFRF9ESVNBQkxFX0dVQ19JRFNf
VEhSRVNIT0xEKQ0KPiBUaGUgZGVsYXkgdGV4dCBoYXMgZHJvcHBlZCB0aGUgJ2RlZmF1bHQgMzRt
cycgaW4gcHJlZmVyZW5jZSBmb3IganVzdCANCj4gcmVmZXJlbmNpbmcgdGhlIGRlZmluZSBidXQg
dGhlIHRocmVzaG9sZCBzdGlsbCBtZW50aW9ucyBib3RoLiBJcyB0aGF0IA0KPiBpbnRlbnRpb25h
bD8gRHJvcHBpbmcgdGhlIHZhbHVlcyBzZWVtcyBzZW5zaWJsZSAtIG5vIG5lZWQgdG8gdXBkYXRl
IHRoZSANCj4gY29tbWVudCBpZiB0aGUgbnVtZXJpYyB2YWx1ZSBpcyBjaGFuZ2VkIGF0IHNvbWUg
bGF0ZXIgcG9pbnQuDQo+IA0KWWVzIGludGVudGlvbmFsIC0gYW5kIHllcywgaSBzaG91bGQgYmUg
Y29uc2lzdGVudCBmb3IgYm90aC4gd2lsbCBmaXguDQoNCj4gPiAgICAqDQo+ID4gQEAgLTQyMDcs
NiArNDI4OCwyMCBAQCBzdGF0aWMgYm9vbCBfX2d1Y19zdWJtaXNzaW9uX3NlbGVjdGVkKHN0cnVj
dCBpbnRlbF9ndWMgKmd1YykNCj4gPiAraW50IGludGVsX2d1Y19zY2hlZF9kaXNhYmxlX2d1Y2lk
X3RocmVzaG9sZF9tYXgoc3RydWN0IGludGVsX2d1YyAqZ3VjKQ0KPiA+ICt7DQo+ID4gKwlyZXR1
cm4gZ3VjLT5zdWJtaXNzaW9uX3N0YXRlLm51bV9ndWNfaWRzIC0gTlVNQkVSX01VTFRJX0xSQ19H
VUNfSUQoZ3VjKTsNCj4gPiArfQ0KPiA+ICsNCj4gPiArI2RlZmluZSBTQ0hFRF9ESVNBQkxFX0RF
TEFZX01TCTM0DQo+ID4gKy8qDQo+ID4gKyAqIFRoaXMgZGVmYXVsdCB2YWx1ZSBvZiAzMyBtaWxp
c2VjcyAoKzEgbWlsaXNlYyBidWZmZXIpIGVuc3VyZXMgMzNmcHMgd29ya2xvYWRzIGFyZQ0KPiA+
ICsgKiBhYmxlIHRvIGVuam95IHRoZSBsYXRlbmN5IHJlZHVjdGlvbiB3aGVuIGRlbGF5aW5nIHRo
ZSBzY2hlZHVsZS1kaXNhYmxlIG9wZXJhdGlvbg0KPiA+ICsgKi8NCj4gPiArI2RlZmluZSBOVU1f
U0NIRURfRElTQUJMRV9HVUNJRFNfREVGQVVMVF9USFJFU0hPTEQoX19ndWMpIFwNCj4gPiArCSgo
KGludGVsX2d1Y19zY2hlZF9kaXNhYmxlX2d1Y2lkX3RocmVzaG9sZF9tYXgoZ3VjKSkgKiAzKSAv
IDQpDQo+ID4gKy8qIERlZmF1bHQgdGhyZXNob2xkIHRvIGJ5cGFzcyBkZWxheS1zY2hlZHVsZS1k
aXNhYmxlIHdoZW4gdW5kZXIgZ3VjLWlkIHByZXNzdXJlICovDQo+ID4gKw0KPiBDb21tZW50cyBh
bHdheXMgZ28gaW4gZnJvbnQgb2YgdGhlIHRoaW5nIHRoZXkgYXJlIGRlc2NyaWJpbmcsIG5vdCBh
ZnRlci4NCldpbGwgZml4Lg0KDQo+IA0KPiBBbHNvLCB0aGUgZGVzY3JpcHRpb24gcmVhZHMgYXMg
anVzdCBhIG1vcmUgdmVyYm9zZSB2ZXJzaW9uIG9mIHRoZSANCj4gI2RlZmluZS4gQXMgaW4sIG1v
cmUgd29yZHMgYnV0IG5vIGV4dHJhIGluZm9ybWF0aW9uLiBOb3Qgc3VyZSB3aGF0IG1vcmUgDQo+
IGNhbiBiZSBzYWlkIGFib3V0IHRoZSB0aHJlc2hvbGQuIEknbSBub3QgYXdhcmUgb2YgYW55IGVt
cGlyaWNhbCBvciANCj4gdGhlb3JldGljYWwgZXZpZGVuY2UgYXMgdG8gd2h5IDc1JSBpcyBhIGdv
b2QgbnVtYmVyIGJleW9uZCAnaXQganVzdCANCj4gc2VlbXMgc2Vuc2libGUnLg0KWWVzIC0gdGhp
cyB3YXMgbWVyZWx5IGEgc2Vuc2libGUgY2hvaWNlIHRoYXQgd2FzbnQgcGFydCBvZiBhIGtub3du
IHBlcmZvcm1hbmNlIGlzc3VlIHdpdGggcmVhbCB3b3JsZCB3b3JrbG9hZHMNCihjb25zaWRlcmlu
ZyB3ZSBoYXZlIHRob3VzYW5kcyBvZiBndWMtaWRzIGF0IG91ciBkaXNwb3NhbCkuIFdpbGwgZml4
IChyZW1vdmUgdGhlIGNvbW1lbnQgc2luY2UgaXRzIHNlbGYtZGVzY3JpcHRpdmUNCmFueXdheXMp
Lg0KDQoNCj4gVGhlICdtYWtlIGl0IHdvcmsgZm9yIDMzZnBzJyBzZWVtcyBxdWl0ZSBhcmJpdHJh
cnkgYW5kIA0KPiBtYWdpY2FsLCB0aG91Z2guIFdoYXQgaXMgc28gc3BlY2lhbCBhYm91dCAzM2Zw
cz8gSSBmZWVsIGxpa2UgaXQgc2hvdWxkIA0KPiBhdCBsZWFzdCBtZW50aW9uIHRoYXQgYW4gcmVh
bC13b3JsZCB1c2UgY2FzZSByZXF1aXJlcyAzM2ZwcyAod2FzIGl0IA0KPiByZWFsbHkgMzMgbm90
IDMwPykNClRoZSBwYXRjaCBjb21tZW50IGFscmVhZHkgaW5jbHVkZXMgdGhlIHdvcmtsb2FkIGRl
c2NyaXB0aW9uOiBnYW1lLXJlbmRlcmluZyArIGVuY29kaW5nIGF0IDMwIGZwcyAobm90IGFzIGZh
c3QgYXMNCnBvc3NpYmxlIGJ1dCB3aXRoIGxhdGVuY3kgZGVhZGxpbmVzIGF0IHRoYXQgZnBzKS4g
QnV0IGkgY2FuIGluY2x1ZGUgaXQgYWdhaW4gaW4gdGhpcyAjZGVmaW5lIGlmIHlvdSBwcmVmZXI6
DQood291bGQgdGhpcyB3b3JrPykNCiAgICAgLyoNCiAgICAgICogVGhpcyBkZWZhdWx0IHZhbHVl
IG9mIDMzIG1pbGlzZWNzICgrMSBtaWxpc2VjIGJ1ZmZlcikgZW5zdXJlcyAzM2ZwcyBvciBoaWdo
ZXIgZnBzDQogICAgICAqIHdvcmtsb2FkcyBhcmUgYWJsZSB0byBlbmpveSB0aGUgbGF0ZW5jeSBy
ZWR1Y3Rpb24gd2hlbiBkZWxheWluZyB0aGUgc2NoZWR1bGUtZGlzYWJsZQ0KICAgICAgKiBvcGVy
YXRpb24uIFRoaXMgbWF0Y2hlcyB0aGUgMzBmcHMgZ2FtZS1yZW5kZXIgKyBlbmNvZGUgKHJlYWwg
d29ybGQpIHdvcmtsb2FkIHRoaXMNCiAgICAgICoga25vYiB3YXMgdGVzdGVkIGFnYWluc3QuDQog
ICAgICAqLw0KICAgICAjZGVmaW5lIFNDSEVEX0RJU0FCTEVfREVMQVlfTVMJMzQNCg0KDQo+IGFu
ZCB0aGF0IGFueXRoaW5nIGZhc3RlciAoZS5nLiA2MGZwcykgd2lsbCBhdXRvbWF0aWNhbGx5IGJl
IGNvdmVyZWQuDQpJcyB0aGlzIHJlYWxseSBuZWNlc3NhcnkgdG8gc3RhdGU/IEkgdGhpbmsgdGhh
dCBpcyBhbiBvYnZpb3VzIGluZmVyZW5jZSBpZiB3ZSBrbm93IGFueXRoaW5nIGFib3V0IGZwcyBh
bmQgcGVyaW9kcy4NCg0KPiBBbmQgdGhhdCBpbiB0aGUgb3RoZXIgZGlyZWN0aW9uLCB+MzBtcyBp
cyBub3QgDQo+IHNvIHNsb3cgdGhhdCBpdCBsZWFkcyB0byBsYXJnZSBudW1iZXJzIG9mIGlkbGUg
Y29udGV4dHMgZmxvYXRpbmcgYXJvdW5kLiANCj4gRGlkIHdlIGhhdmUgYW55IHNwZWNpZmljIHJl
YXNvbnMgYWdhaW5zdCBnb2luZyBsYXJnZXI/IEkgcmVjYWxsIHRoZSANCj4gb3JpZ2luYWwgZXhw
ZXJpbWVudHMgd2VyZSB3aXRoIDEwMG1zLiBXYXMgdGhlcmUgYSBzcGVjaWZpYyByZWFzb24gZm9y
IA0KPiByZWplY3Rpb24gdGhhdCB2YWx1ZT8NCkluIHNvbWUgaW5pdGlhbCBpbnRlcm5hbCBjb252
ZXJzYXRpb25zLCB0aGVyZSB3YXMgc29tZSBjb25jZXJuIGFib3V0IGtlZXBpbmcgY29udGV4dHMg
cGlubmVkIGFuZCBwb3NzaWJsZSBpbXBhY3QgdGhlIEd1Qw0Kc3Vic3lzdGVtIHBvd2VyIHJlc2lk
ZW5jeSB1c2FnZSAtIGJ1dCB0aGF0IHdhcyBsYXRlciBkaXNjb3VudGVkLiBTbyBhdCB0aGlzIHBv
aW50LCB3ZSByZWFsbHkgY2FuIGtlZXAgYW55IG51bWJlciB3ZSB3YW50DQpidXQgc2luY2Ugd2Ug
YWxyZWFkeSBkaWQgdGhlIHdvcmsgdGVzdGluZyBmb3IgYm90aCAxMDBtcyBhbmQgMzQgbXMsIEkg
dGhvdWdodCBpdCB3b3VsZCBiZSBiZXR0ZXIgdG8gc3RpY2sgd2l0aCAzNCBtcw0Kc2ltcGx5IGJl
Y2F1c2Ugb2YgaXRzIGNsZWFyIHJlbGF0aW9uc2hpcCB0byB0aGUgcmF0ZSBvZiBjb250ZXh0IHN1
Ym1pc3Npb24gZm9yIHRoZSBhY3R1YWwgd29ya2xvYWQgdGhhdCB3YXMgdGVzdGVkIChpLmUuDQoz
MCBmcHMgd29ya2xvYWRzIHRoYXQgd2VyZSBnZXR0aW5nIHN1Ym1pdHRlZCBhdCAzMy4zMzMgbWls
aXNlY3MgYXBhcnQpLiBUaGF0IHNhaWQsIHdvdWxkIGFib3ZlIGNvbW1lbnQgbW9kIHdvcms/DQoN
Cj4gDQo=
