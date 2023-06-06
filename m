Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E05E17248FC
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jun 2023 18:24:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C2CF10E381;
	Tue,  6 Jun 2023 16:24:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C0EA10E381
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Jun 2023 16:24:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686068648; x=1717604648;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=O4WEbshhBXSv6eda164P/CLsZ0EF5Z05V2w4jRne7Ks=;
 b=EVkLbsnLQD7ErW+k4YYOv5urURWm6dWysx0zTGKpy62Lk47Fp+QL4qS2
 SVGeckRiMyANP1X9WiOh+MfgygZ2IHk1ePwgS4LPH3la4ZR39LsQteOpW
 c72WH3evOy9rp/ps/oA8M3gzl4nwecZbQ68nIbMsDil3Y7yjQMF+VNiNP
 +hVlrbDLx+PlymLhvT8TKi5sEg93kXvYBj4wnYmz6JbOJbDGC1JdqQvuZ
 GFphWdYB3X4CW4jcwpf4AST/UjKI8flVfmmyqFqJVKeBfACW6a4S8FnQP
 gyVW+Chb6jiXJM3XJgiePkO3Yk3Qqf2xX7JR/yBP0s8+rgwXrcTpQvjg6 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="354224243"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="354224243"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 09:23:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="686603078"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="686603078"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 06 Jun 2023 09:23:04 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 6 Jun 2023 09:23:04 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 6 Jun 2023 09:23:03 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 6 Jun 2023 09:23:03 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 6 Jun 2023 09:23:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K8KPnjxOD0deneQM5zS5RLumujqZSh1ak15StgYZfveztd/11U2PvDbnl1iXkrEQ0jUpyg2J1NjwsG3Jj4D/jBCobSlj9ibK9OctLfqzDvpZz+6vdPN3/ggCWZdQY6TUID42YM3D2p/0Ey+OXgUBKIV19A/MY41E0fGGvUVssOnInZ5N5DQx4WGdOi4E6SDn6iQsgo+ip/kv/AQmiKqdob9ukjHYBwDcBka3KMT92GkO58WuKTg5BstohQF50Pl71BhGwNYeuV81wSYzuOcZDoqQBG7lUzOZxyDdz9AZDgKEhxBeublH/zz01j70Dmx52w91UL8G45qN9R8KceQGJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O4WEbshhBXSv6eda164P/CLsZ0EF5Z05V2w4jRne7Ks=;
 b=KdJPqWtJq4rd78tXqrcIKbMMmqIqpyAaFtCTsNU1ms5XzloGIOcnMeMbxxmtWFrkiHzzBo49HvkmGySg099gYr5pHWg3rL91oCj9ta9AdcQEKiAcv+msElLNKJOjfPTbmp8q88EJT4isuD26RtuTcJ3OwjcdqK1ScYwN1YrapapMdqvRjSSR37eAW5cczPm5JQ7Yrj2HxbZ92a64Nzcy8PlWm8v+KrmXlW6nDwhHvSDXHZe6DX/FUE1l5G2suX/vTNDwHfIgbyWqA+y5BmjOhKAFnSvUp8OLFF1qcAGsRo5/7voPa6z00ySLsQqqiL1uVkTAwPn02ZUFsp6iqr6wyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7382.namprd11.prod.outlook.com (2603:10b6:8:131::13)
 by DM4PR11MB6526.namprd11.prod.outlook.com (2603:10b6:8:8d::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.33; Tue, 6 Jun
 2023 16:22:56 +0000
Received: from DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::7c95:e842:18f6:92f9]) by DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::7c95:e842:18f6:92f9%7]) with mapi id 15.20.6455.030; Tue, 6 Jun 2023
 16:22:56 +0000
From: "Coelho, Luciano" <luciano.coelho@intel.com>
To: "tvrtko.ursulin@linux.intel.com" <tvrtko.ursulin@linux.intel.com>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0gIOKclyBGaS5DSS5CQVQ6IGZhaWx1cmUgZm9yIGRybS9p?=
 =?utf-8?Q?915:_implement_internal_workqueues_(rev3)?=
Thread-Index: AQHZmIOAT3UV3PukuUausN8Yz/w0Ea999UMA
Date: Tue, 6 Jun 2023 16:22:56 +0000
Message-ID: <d5e4f046b4831c238657c30649883e7b81d5dabe.camel@intel.com>
References: <20230530111534.871403-1-luciano.coelho@intel.com>
 <168551428578.17615.13321848387509410861@emeril.freedesktop.org>
 <87r0qqaqz2.fsf@intel.com>
 <df70861a-a8bf-07cc-90d2-400820b751e8@linux.intel.com>
 <755fa4ba3d28d7be9bff235842ee10934be4c90d.camel@intel.com>
 <f3409beb-3736-f4cd-2036-2b75b81cd4f9@linux.intel.com>
 <4747e357bfe219f04662707604c4cbaedf0389a1.camel@intel.com>
In-Reply-To: <4747e357bfe219f04662707604c4cbaedf0389a1.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.4-2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7382:EE_|DM4PR11MB6526:EE_
x-ms-office365-filtering-correlation-id: 34599e15-3185-437d-f341-08db66aa4969
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /t16qrLHMVV1+tz4yXlJuznX8ZVUbFPNfhisgwepCyJojSQyDyHfyKAgzxp/SRBJp9sQFExRLouT248HkezVEw2xGfGc24YzA3bYUwdIPpNcMWzp48EKkX2Cn6W3hLv2pTwHqfqiFrMdP6ePDMcn3+PyejtcRUqK9Vr0dkbjxcu+8JuCQRAQ+Ril9bvahxUITIQuR1Ws0aM5sun50fttrINrE56PznaB7IDo4HyLqi+8axf+Q1NQWet0UGTtc13SFsjrj/zg63b7QTyx6MlKdMg/IBJ/ICJDl/r9aLIlaYG5kI1XVk2OWuVLHQ4WYLBzsWfHwNjKzqQBsZIXFCrukJyhLvONpIJ2WPnX2l9t70jLhNkdIbZh3mcP7rdlYjQZWcfdOjdQSWedB0wW+AsfwMGCYl6wjCQiCm98nIDDvwRMLxh7tfM/LYi9QLa96HQ3STGP7TQz1RZLc0rmd+IAGCrtpYOF8/S9ix8DFgX3ui7QmHjNPv0ZO1IT0OqpiT8X1iutYTFJKFgUDFf+ARG4vGgk54OMnd1RXpQyoLYs0xzlqsHpuWzEuYVbeiYdcGCcbkkoAO4NO+cvzey2KmxOii/JwGj9SwyDmy/h4HrZSUo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7382.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(396003)(376002)(39860400002)(346002)(366004)(451199021)(2906002)(41300700001)(8936002)(5660300002)(316002)(66556008)(66476007)(64756008)(66446008)(76116006)(66946007)(91956017)(4326008)(110136005)(478600001)(966005)(71200400001)(36756003)(6486002)(53546011)(186003)(86362001)(2616005)(83380400001)(82960400001)(6506007)(6512007)(26005)(38070700005)(38100700002)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cFk4M0Nmd0U2MHRiODRGTzBzOG1hcElYL3JTNFpMbTlhdlA2SSthS3lqT2Yy?=
 =?utf-8?B?YVhDMDczeitkaDduLzRadnVlWW5oMDNVMUhoMEFDN3JKeHJRQ0ZOSWFDZk9V?=
 =?utf-8?B?cEg5RUlTYkxMK2srZStwR0hnQlRIdHlPTHdJVHR3bjBIOTZIRlRvdDRIaXVV?=
 =?utf-8?B?N1RxT3JDNXcwU3RBN2VuM3NNWjl3a3ZWTmpBOFgxV3dybWhZRVRhVGxJd0hL?=
 =?utf-8?B?eHpKZHBCTXVhcXU1ZCs0WkRTUzIyS0F3QWJuWHlHaDBJZzNWZWZtOFUrazU0?=
 =?utf-8?B?OHdqNnZjbTgyWEQ2bFNTVlRHUzFQL1FvR1orRUVDUHdBZFJqYUgwRnZKVXBh?=
 =?utf-8?B?b0VBWlVpdXBGbTBHZG5iMlRGVGRtalZIV3A2dEZRZllTdDBYZ1BlVjFrRkxl?=
 =?utf-8?B?dUNQNGFrVlJrdjNHcmdPOXNuekRHWlF4QTNzUmVzYlk4RkNuZSswQ0MzQVVQ?=
 =?utf-8?B?bGhucllhVHg5YWE0blJHR1BJQWw4YVlRZWdlcTRRMDJiTUh0M0ZncHh4OEl6?=
 =?utf-8?B?MjNLaU16UEdYeTNtRVRmaWF0N1N0c3RZTlI5cGxHcVZIZ1RqYlpRU0Z0K1J3?=
 =?utf-8?B?UGNMYnhlSWptNjhxd1ZLclBqUGx0QzYxM2tjZVRXdUhQZjVicHY0dkc5bk9Z?=
 =?utf-8?B?aTYvSWpLM1RJYkl5cDNwWG4zT0RCSU92dFo5d0RJb3BEamdlRmxBS2oyYzFu?=
 =?utf-8?B?S1NIQUlYdndSTC92YXdETi9ldkI4RHZQbllIK2RiZTNsaEd6MmRwcVk0WnpG?=
 =?utf-8?B?S2FEOVFhaHdTSDNVOERBc0cyVGdwMkZFVHFveFNFN1J2cVliMXRodnczRmxi?=
 =?utf-8?B?RitIZHZ5b21UaG9hb0p2dm9EejQ3Mk1jazNjZzdMeGNTMmQvMExRbkRKS3Bh?=
 =?utf-8?B?NnlUM1k0V0htVG1LZzEwYS9NTzFNbXBGQisybXNXa1RKdnZFUW9VamQ4Nnhn?=
 =?utf-8?B?TlR4QmVheEFIM0dXdUtKUURTYkFGTlNvYzBkM1QvWGpMMlRHRVpaTlhyYlJw?=
 =?utf-8?B?MmRPK1BVWXA5bTJ1Ukx4bWEydElPNWxXaE5SeEdxcHRsSDhEODdDMHAwQ2tS?=
 =?utf-8?B?RXpTajZ5aGFJbm9BV3U4aVBINjQ3Sms3VVJOR3l1cFplZ1lZZWJvUDB3WTZH?=
 =?utf-8?B?UitVVklmMjYxck5iWVJhZjU2TXV6VmlUQmtMeDhFTlo2MUx6eFRSQnVFS29q?=
 =?utf-8?B?T0g1V04yWVVBWGNHdGxaMmJZRzlJaytpYjdHQThsdFVuMHk0ek10UnFUMUk2?=
 =?utf-8?B?M3JVV1NwaWZZMCt1dEZheWVPMENYTUxTbXZsY0pxWVByaHIzMDNpZngxc3lU?=
 =?utf-8?B?dlQ2K09qZk1iZy9wb00yNC9mMkpyeWEzMWJKUHZ3V1puZExORWJ2UWNaMDc2?=
 =?utf-8?B?Y05YZ2xicUpMNnZmMkZGUkV6eEEyQUtSb0VuVkZMOEplTDVwVkRCb0VwK2tW?=
 =?utf-8?B?WTBPYW9HRWtzQ2FqbzVRZjk2eG15Q0M1K3JYTHhjSElWRVp3akU1SS9pUG5r?=
 =?utf-8?B?ZGJwRUFEWWhoRkxVNUNxajZxMkYrRldnMFhIMUUvTnlhNzRkdTZiRXFHc0N5?=
 =?utf-8?B?OXJER1BaM2wzSDVhNjJxYkFtL1VtVS93S05UNFNmMDFTMC9jR3FVbUZENDYr?=
 =?utf-8?B?T1JSUHFyVkhFQmNTL0ZCRVBZaEJ6YjV5a0I5MjdRbkx0QVAyK2JPbUErUUxv?=
 =?utf-8?B?aVZlcUZsWEFiNklyazR4c0ljMng2M04zU3BReGtUUXdZajlYNHR1T3UybWtu?=
 =?utf-8?B?NUlic01nZTkxUGZwZzlrdnoycDRreEJjRllLNWx6WVZLY3VlVVMzTkJpQ0t5?=
 =?utf-8?B?NXlORUlad2dDN002QktnOVhhaVpxYXl4aklBaVlhNzBLVCs0NGJnNDhhbWQ3?=
 =?utf-8?B?RlZuaWJhWTFjcERpS2ZQdHFKRnNIcWN6WlA4MlhYaksxSjd3UTJza1E3Yktp?=
 =?utf-8?B?QnNkZ0lkZGI0MVV1WVJPcTlwUEhHN0prbnk5Ry9RdUJHZkFBd2YrbjRSTnRk?=
 =?utf-8?B?T0hUeFVXeThYS2FEMThRTTlpZmdDOFV4N0RaUkVWMDI3d2ZRbFQxVkl0OUp0?=
 =?utf-8?B?SUVPc05hY0dVY3J2MmFhZ1VHa2h2cHM4L3liRXUyTVpHOWxoWnJxNmsxNE9n?=
 =?utf-8?B?TTl1VXpzeis4OWZNMC8yOE00TjRCR1JFYWRMWW5GdmE0MmhCdU9CREs1c0Yv?=
 =?utf-8?B?SGc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D7115C96E3266A4BB9322E5F47B3A5F7@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7382.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 34599e15-3185-437d-f341-08db66aa4969
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2023 16:22:56.4630 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lNdpyi6oVu6ySwkYtfUFjzT52ZCVcsm3CEiY+TaLsDReZTDFcAfJArUEog8rZ1tF4kOY0Z516yrM5RgQniTXFDzj3uzSTwHsv7kWJJ9o2yc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6526
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_implement_internal_workqueues_=28rev3=29?=
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

T24gVHVlLCAyMDIzLTA2LTA2IGF0IDE0OjMwICswMDAwLCBDb2VsaG8sIEx1Y2lhbm8gd3JvdGU6
DQo+IE9uIFR1ZSwgMjAyMy0wNi0wNiBhdCAxNDozMyArMDEwMCwgVHZydGtvIFVyc3VsaW4gd3Jv
dGU6DQo+ID4gT24gMDYvMDYvMjAyMyAxMjowNiwgQ29lbGhvLCBMdWNpYW5vIHdyb3RlOg0KPiA+
ID4gT24gVHVlLCAyMDIzLTA2LTA2IGF0IDExOjA2ICswMTAwLCBUdnJ0a28gVXJzdWxpbiB3cm90
ZToNCj4gPiA+ID4gT24gMDUvMDYvMjAyMyAxNjowNiwgSmFuaSBOaWt1bGEgd3JvdGU6DQo+ID4g
PiA+ID4gT24gV2VkLCAzMSBNYXkgMjAyMywgUGF0Y2h3b3JrIDxwYXRjaHdvcmtAZW1lcmlsLmZy
ZWVkZXNrdG9wLm9yZz4gd3JvdGU6DQo+ID4gPiA+ID4gPiAjIyMjIFBvc3NpYmxlIHJlZ3Jlc3Np
b25zICMjIyMNCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gICAgICogaWd0QGdlbV9jbG9zZV9y
YWNlQGJhc2ljLXByb2Nlc3M6DQo+ID4gPiA+ID4gPiAgICAgICAtIGZpLWJsYi1lNjg1MDogICAg
ICAgW1BBU1NdWzFdIC0+IFtBQk9SVF1bMl0NCj4gPiA+ID4gPiA+ICAgICAgWzFdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8xMzIwMy9maS1ibGItZTY4
NTAvaWd0QGdlbV9jbG9zZV9yYWNlQGJhc2ljLXByb2Nlc3MuaHRtbA0KPiA+ID4gPiA+ID4gICAg
ICBbMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzExNzYxOHYzL2ZpLWJsYi1lNjg1MC9pZ3RAZ2VtX2Nsb3NlX3JhY2VAYmFzaWMtcHJvY2Vzcy5o
dG1sDQo+ID4gPiA+ID4gPiAgICAgICAtIGZpLWhzdy00NzcwOiAgICAgICAgW1BBU1NdWzNdIC0+
IFtBQk9SVF1bNF0NCj4gPiA+ID4gPiA+ICAgICAgWzNdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8xMzIwMy9maS1oc3ctNDc3MC9pZ3RAZ2VtX2Nsb3Nl
X3JhY2VAYmFzaWMtcHJvY2Vzcy5odG1sDQo+ID4gPiA+ID4gPiAgICAgIFs0XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTE3NjE4djMvZmktaHN3
LTQ3NzAvaWd0QGdlbV9jbG9zZV9yYWNlQGJhc2ljLXByb2Nlc3MuaHRtbA0KPiA+ID4gPiA+ID4g
ICAgICAgLSBmaS1lbGstZTc1MDA6ICAgICAgIFtQQVNTXVs1XSAtPiBbQUJPUlRdWzZdDQo+ID4g
PiA+ID4gPiAgICAgIFs1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fMTMyMDMvZmktZWxrLWU3NTAwL2lndEBnZW1fY2xvc2VfcmFjZUBiYXNpYy1wcm9j
ZXNzLmh0bWwNCj4gPiA+ID4gPiA+ICAgICAgWzZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMTc2MTh2My9maS1lbGstZTc1MDAvaWd0QGdlbV9j
bG9zZV9yYWNlQGJhc2ljLXByb2Nlc3MuaHRtbA0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiAg
ICAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQGV2aWN0Og0KPiA+ID4gPiA+ID4gICAgICAgLSBi
YXQtYWRscC05OiAgICAgICAgIFtQQVNTXVs3XSAtPiBbQUJPUlRdWzhdDQo+ID4gPiA+ID4gPiAg
ICAgIFs3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
MTMyMDMvYmF0LWFkbHAtOS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQGV2aWN0Lmh0bWwNCj4gPiA+
ID4gPiA+ICAgICAgWzhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xMTc2MTh2My9iYXQtYWRscC05L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAZXZp
Y3QuaHRtbA0KPiA+ID4gPiA+ID4gICAgICAgLSBiYXQtcnBscy0yOiAgICAgICAgIFtQQVNTXVs5
XSAtPiBbQUJPUlRdWzEwXQ0KPiA+ID4gPiA+ID4gICAgICBbOV06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzEzMjAzL2JhdC1ycGxzLTIvaWd0QGk5MTVf
c2VsZnRlc3RAbGl2ZUBldmljdC5odG1sDQo+ID4gPiA+ID4gPiAgICAgIFsxMF06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzExNzYxOHYzL2JhdC1y
cGxzLTIvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUBldmljdC5odG1sDQo+ID4gPiA+ID4gPiAgICAg
ICAtIGJhdC1hZGxtLTE6ICAgICAgICAgW1BBU1NdWzExXSAtPiBbQUJPUlRdWzEyXQ0KPiA+ID4g
PiA+ID4gICAgICBbMTFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV8xMzIwMy9iYXQtYWRsbS0xL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAZXZpY3QuaHRt
bA0KPiA+ID4gPiA+ID4gICAgICBbMTJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xMTc2MTh2My9iYXQtYWRsbS0xL2lndEBpOTE1X3NlbGZ0ZXN0
QGxpdmVAZXZpY3QuaHRtbA0KPiA+ID4gPiA+ID4gICAgICAgLSBiYXQtcnBscy0xOiAgICAgICAg
IFtQQVNTXVsxM10gLT4gW0FCT1JUXVsxNF0NCj4gPiA+ID4gPiA+ICAgICAgWzEzXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTMyMDMvYmF0LXJwbHMt
MS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQGV2aWN0Lmh0bWwNCj4gPiA+ID4gPiA+ICAgICAgWzE0
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTE3
NjE4djMvYmF0LXJwbHMtMS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQGV2aWN0Lmh0bWwNCj4gPiA+
ID4gPiANCj4gPiA+ID4gPiBUaGlzIHN0aWxsIGZhaWxzIGNvbnNpc3RlbnRseSwgSSBoYXZlIG5v
IGNsdWUgd2h5LCBhbmQgdGhlIGFib3ZlIGFyZW4ndA0KPiA+ID4gPiA+IGV2ZW4gcmVtb3RlbHkg
cmVsYXRlZCB0byBkaXNwbGF5Lg0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IFdoYXQgbm93PyBUdnJ0
a28/DQo+ID4gPiA+IA0KPiA+ID4gPiBIbW0uLg0KPiA+ID4gPiANCj4gPiA+ID4gPDQ+IFs0Ni43
ODIzMjFdIENoYWluIGV4aXN0cyBvZjoNCj4gPiA+ID4gICAgICh3cV9jb21wbGV0aW9uKWk5MTUg
LS0+ICh3b3JrX2NvbXBsZXRpb24pKCZpOTE1LT5tbS5mcmVlX3dvcmspIC0tPiAmdm0tPm11dGV4
DQo+ID4gPiA+IDw0PiBbNDYuNzgyMzI5XSAgUG9zc2libGUgdW5zYWZlIGxvY2tpbmcgc2NlbmFy
aW86DQo+ID4gPiA+IDw0PiBbNDYuNzgyMzMyXSAgICAgICAgQ1BVMCAgICAgICAgICAgICAgICAg
ICAgQ1BVMQ0KPiA+ID4gPiA8ND4gWzQ2Ljc4MjMzNF0gICAgICAgIC0tLS0gICAgICAgICAgICAg
ICAgICAgIC0tLS0NCj4gPiA+ID4gPDQ+IFs0Ni43ODIzMzddICAgbG9jaygmdm0tPm11dGV4KTsN
Cj4gPiA+ID4gPDQ+IFs0Ni43ODIzNDBdICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBs
b2NrKCh3b3JrX2NvbXBsZXRpb24pKCZpOTE1LT5tbS5mcmVlX3dvcmspKTsNCj4gPiA+ID4gPDQ+
IFs0Ni43ODIzNDRdICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBsb2NrKCZ2bS0+bXV0
ZXgpOw0KPiA+ID4gPiA8ND4gWzQ2Ljc4MjM0OF0gICBsb2NrKCh3cV9jb21wbGV0aW9uKWk5MTUp
Ow0KPiA+ID4gPiANCj4gPiA+ID4gDQo+ID4gPiA+ICIod3FfY29tcGxldGlvbilpOTE1Ig0KPiA+
ID4gPiANCj4gPiA+ID4gU28gaXQncyBub3QgYWJvdXQgdGhlIG5ldyB3cSBldmVuLiBQZXJoYXBz
IGl0IGlzIHRoaXMgaHVuazoNCj4gPiA+ID4gDQo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX3dha2VyZWYuYw0KPiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF93YWtlcmVmLmMNCj4gPiA+ID4gQEAgLTc1LDcgKzc1LDcgQEAgdm9pZCBfX2ludGVs
X3dha2VyZWZfcHV0X2xhc3Qoc3RydWN0IGludGVsX3dha2VyZWYgKndmLCB1bnNpZ25lZCBsb25n
IGZsYWdzKQ0KPiA+ID4gPiAgICANCj4gPiA+ID4gICAgCS8qIEFzc3VtZSB3ZSBhcmUgbm90IGlu
IHByb2Nlc3MgY29udGV4dCBhbmQgc28gY2Fubm90IHNsZWVwLiAqLw0KPiA+ID4gPiAgICAJaWYg
KGZsYWdzICYgSU5URUxfV0FLRVJFRl9QVVRfQVNZTkMgfHwgIW11dGV4X3RyeWxvY2soJndmLT5t
dXRleCkpIHsNCj4gPiA+ID4gLQkJbW9kX2RlbGF5ZWRfd29yayhzeXN0ZW1fd3EsICZ3Zi0+d29y
aywNCj4gPiA+ID4gKwkJbW9kX2RlbGF5ZWRfd29yayh3Zi0+aTkxNS0+d3EsICZ3Zi0+d29yaywN
Cj4gPiA+ID4gDQo+ID4gPiA+IFRyYW5zZm9ybWF0aW9uIGZyb20gdGhpcyBwYXRjaCBvdGhlcndp
c2UgaXMgc3lzdGVtX3dxIHdpdGggdGhlIG5ldyB1bm9yZGVyZWQgd3EsIHNvIEknZCB0cnkgdGhh
dCBmaXJzdC4NCj4gPiA+IA0KPiA+ID4gSW5kZWVkIHRoaXMgc2VlbXMgdG8gYmUgZXhhY3RseSB0
aGUgYmxvY2sgdGhhdCBpcyBjYXVzaW5nIHRoZSBpc3N1ZS4gIEkNCj4gPiA+IHdhcyBzb3J0IG9m
IGJpc2VjdGluZyB0aHJvdWdoIGFsbCB0aGVzZSBjaGFuZ2VzIGFuZCByZXZlcnRpbmcgdGhpcyBv
bmUNCj4gPiA+IHByZXZlbnRzIHRoZSBsb2NrZGVwIHNwbGF0IGZyb20gaGFwcGVuaW5nLi4uDQo+
ID4gPiANCj4gPiA+IFNvIHRoZXJlJ3Mgc29tZXRoaW5nIHRoYXQgbmVlZHMgdG8gYmUgc3luY2Vk
IHdpdGggdGhlIHN5c3RlbV93cSBoZXJlLA0KPiA+ID4gYnV0IHdoYXQ/IEkgbmVlZCB0byBkaWcg
aW50byBpdC4NCj4gPiANCj4gPiBBRkFJQ1QgaXQgaXMgc2F5aW5nIHRoYXQgaTkxNS0+bW0uZnJl
ZV93b3JrIGFuZCBlbmdpbmUtPndha2VyZWYud29yayANCj4gPiBtdXN0IG5vdCBiZSBvbiB0aGUg
c2FtZSBvcmRlcmVkIHdxLiBPdGhlcndpc2UgZXhlY2J1ZiBjYWxsIHRyYWNlIA0KPiA+IGZsdXNo
aW5nIHVuZGVyIHZtLT5tdXRleCBjYW4gZGVhZGxvY2sgYWdhaW5zdCB0aGUgZnJlZSB3b3JrZXIg
dHJ5aW5nIHRvIA0KPiA+IGdyYWIgdm0tPm11dGV4LiBJZiBlbmdpbmUtPndha2VyZWYud29yayBp
cyBvbiBhIHNlcGFyYXRlIHVub3JkZXJlZCB3cSBpdCANCj4gPiB3b3VsZCBiZSBzYWZlIHNpbmNl
IHRoZW4gZXhlY3V0aW9uIHdpbGwgbm90IGJlIHNlcmlhbGl6ZWQgd2l0aCB0aGUgDQo+ID4gZnJl
ZV93b3JrLiBTbyBqdXN0IHVzaW5nIHRoZSBuZXcgaTkxNS0+dW5vcmRlcmVkX3dxIGZvciB0aGlz
IGh1bmsgc2hvdWxkIA0KPiA+IHdvcmsuDQo+IA0KPiBBaCwgZ3JlYXQsIHRoYW5rcyBmb3IgdGhl
IGluc2lnaHQhIEknbGwgdHJ5IGl0IG5vdyBhbmQgc2VlIGhvdyBpdCBnb2VzLg0KDQpUaGlzIHdv
cmtzIG5vdy4gIEl0IHdhcyBxdWl0ZSBvYnZpb3VzbHkgd3JvbmcsIGJ1dCBJIHdhcyBjb21wbGV0
ZWx5DQpibGluZCB0byBpdC4gIFRoYW5rcyBhIGxvdCBmb3IgdGhlIGNhdGNoLCBUdnJ0a28hDQoN
CnY0IGNvbWluZyBpbiBhIHNlYy4NCg0KLS0NCkNoZWVycywNCkx1Y2EuDQo=
