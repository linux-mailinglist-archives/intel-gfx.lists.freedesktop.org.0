Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C0AB0581D47
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jul 2022 03:42:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4AE4B9BF9;
	Wed, 27 Jul 2022 01:42:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CACE1B9BD8
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jul 2022 01:42:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658886168; x=1690422168;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=RkEiVXmFHq4DMEC3mwncldbOanX42z4hFMNauT6CP1I=;
 b=YLBIRBpo8x3ZIZXUouPSERNXzjHQGEK9deEoKvdQv6eP00c9J1DmNXkj
 z/VbUW3TI+B+grjUgO6UtnrpqwApl9UBCu0uoIem4WnAiT25K10hN/ajB
 K2/9Bcd5UZ5s+DfT1Lq4evwuEzs1n/tEGmUwWnkmt2UvCMT/tnemDHRAx
 CZYpS8m0vfTO9vkgoEAR9bxZ6I2uAwGfP9/VXYAQ3Bieasieix2h9JGLm
 Cm6HjpnFVc5dP8kgarnVSGCb8MV+Ch21PEUAmiRRVinYKgTTAy67Cs4oZ
 a4JIpAXPj9TrTj01bJJ87cokSaN9qnxMfsqXtNmANIRlSRAC3bVvmRGCo A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10420"; a="349821885"
X-IronPort-AV: E=Sophos;i="5.93,194,1654585200"; d="scan'208";a="349821885"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2022 18:42:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,194,1654585200"; d="scan'208";a="600227596"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga002.jf.intel.com with ESMTP; 26 Jul 2022 18:42:48 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 26 Jul 2022 18:42:47 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 26 Jul 2022 18:42:47 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 26 Jul 2022 18:42:47 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 26 Jul 2022 18:42:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L14AhsuoJfGLWzVGDt4mp/ZY9whYpbuX9lEMDmwyFa80BXkdum95hvFqEmSZ31W1z0JxcsXyUQ3bWFbOm8YVxdQWd7oTzKkts8++E6LMd35JK6Jx0ylithQ4hjRdNsC1HHr4pGqxGpzX9DRAJMAsGW/6vFEvbGcQvbjo7puYueHT1vjrvsxRGuCaOqB33cfVQgzbOcdOgYkZc0qNVCX1syko4a/vE05Plj1/30h/BBZK8s3Hn6+Wh8FPRPY0JQcvVOicxbamcgtZ5slyT07ZoiVIXbzIspIgMrcwrqTD5573gc+FjgTIXGbZ7BeqXCXfCc6lGhzl8k2PVLhpOut6cQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RkEiVXmFHq4DMEC3mwncldbOanX42z4hFMNauT6CP1I=;
 b=XNyJI4jQWyfEPDeZG0GYzVtvjlJk6FNeO4c35pv44BjFQfmgvc7AqkdYCmgFvDH5UruRWhsusmCyu35mvGdgZ9xYcX9a4VWmx8njtC7yG+mBiKfWB0w4ARmcFZCKKjohz+v2RiTcwe/yQvR1hn69eZIsCdDc1b7KS9gLzQYuKyGviHv3W9w7Ab62tdo886JIxsv+Vcwdgb4wryEA6SjV8hhrCqPPwfN7Vd3ZDqt1EnYH1PX3lLBWJOxKfxXjfxNs7Sl2U1zgVuc4N4aGQJijZzeAtFJAX6gDtljaNSm3cJlJsvI+cn+UgJJuABAoFlvPVQ0q56VAVr09mRilG5XRvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 BY5PR11MB3992.namprd11.prod.outlook.com (2603:10b6:a03:188::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.21; Wed, 27 Jul
 2022 01:42:44 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::fdd1:18b1:3e9c:b03e]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::fdd1:18b1:3e9c:b03e%4]) with mapi id 15.20.5458.025; Wed, 27 Jul 2022
 01:42:44 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 05/15] mei: pxp: add command streamer API to the PXP
 driver
Thread-Index: AQHYfFecT110MXwIBkuVyqU+ZYvYIK2Ru/QA
Date: Wed, 27 Jul 2022 01:42:44 +0000
Message-ID: <4b55881b62a68e7daa64e026a29188c0005b16b8.camel@intel.com>
References: <20220609231955.3632596-1-daniele.ceraolospurio@intel.com>
 <20220609231955.3632596-6-daniele.ceraolospurio@intel.com>
In-Reply-To: <20220609231955.3632596-6-daniele.ceraolospurio@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d2d57873-a9fa-4de3-354b-08da6f714d1a
x-ms-traffictypediagnostic: BY5PR11MB3992:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7sReq+owdanBu9KAEepeu06cCVzt8kMiX7MK9ADQwP5uKhQzhiKCreLAMGBpoUdZYWTf2LNcLnj+Gc41pcZ+ktBWUGDlhiJIVcf9+RDPS2TArCBNQTUiyqTCTF9W2KheHDpzqbR1StNjgRcil79Gx57kjSlsIoukwCeXoiruVl4o58b8BPa98mV3Vg9Xov67CzNH/j0q9ZCitpfHcROeN4MtiWLMvCGGydDNcOLyojn31moqXmitMhlRAD3L/HkwNaqJAZUptJMcZ7nLmBjY9AdSZTMveuzAfGR32/85Ej8shy9Pd5Kroaw2Sy/8rrgFQ7cRF+arAsN8jWMM8HslZL81R7jgf2Al2KEPOh00n3qHJePQXTf93tro71iV8u8WO6B9cDG6xXamyVHqIoHlfVzEidiLKsR3hh975m+wxTcDqgZD8Dv2aIu8D5B01sEKfwCYgmWivj4lMnxmpfm1GukGytJ8IhxaPd+5LNP+eqR+OaZDWNzDCThVWMM2GO+HOpk7jgMcUvjFGVMqsNo+ZeYoDiUsgblsPI46RBHJ+8ba77NI5lmu/1A4knA13vWaEObxXHiHcfuofFTx3SGYmd1hbyQXFYnK4aW3EiZntDoyVMbtq+tJBY1iwPYFmVGKzCz9cm14XcyLBEKHcf9cFDq1IxwOFfy6rHVq8bkw/6oK3qqgyrSR1o5XQ1gtVeHuVADedvrAgSlFMvGQutuMIAqSnV8LRrgDKvlh7uGKc6/f5HGXzO05MJ+PsH1nLEqfVM/HMELPwL13z08Zl6PdbM9lqJgIzOH5JRfwuJy3dxuqSPyF9eGtALYlP8UvrIrp
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(376002)(39860400002)(366004)(136003)(346002)(76116006)(8676002)(4326008)(66946007)(5660300002)(66446008)(66476007)(64756008)(66556008)(91956017)(54906003)(36756003)(8936002)(86362001)(110136005)(316002)(2906002)(186003)(83380400001)(82960400001)(38100700002)(122000001)(71200400001)(6512007)(26005)(41300700001)(2616005)(478600001)(107886003)(38070700005)(6486002)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dkxyUnh4VVAzWk5CWlR6dDYvdk54ZHJmeHNzMVBhQ0lFRmhnUjVQY1lCYyt4?=
 =?utf-8?B?dWV3TlEvZTk0RE5JU0tHTms3SUNVZGtiSm9UQk5mb2l4cUZYU25UUGsrdnhv?=
 =?utf-8?B?Z1R3blozSWRzc0dRTkdtZlRaZEl0c2lwYWhRaXBaTE5leHRpaEVTUHE5MmFO?=
 =?utf-8?B?Wi96bG9FcFFpWFVpWHIzZ0h6WGNXdERLdEJSM3dEMi9ObTRhWVZKU2JwTTN1?=
 =?utf-8?B?OG9lSkl0MXRsVTBzZ1VKMHVLVW03eDY4MkxHZVF2OEJVRnF4Q1Y3Q2lCbE5E?=
 =?utf-8?B?RkJqUmYzTHpza2NMTldtNVBja05ad0gyY1Ewd3lHcGhkVEgrUU56eEQvVU81?=
 =?utf-8?B?K2JNcUlDVk1GOUlhRzRoTm1RK2RNb0J4aXoyVDgvaWRtdVVlWmZYeW9nc0Qy?=
 =?utf-8?B?YnhvRXIvRW4xMGo2bGtqczFiam9VYnBTdXVPOHdTOEVOY0JhL21jc29xeTBF?=
 =?utf-8?B?RzZnRW4wdnVjVkp2TXl1NnpJR1RRdmJFU3ovbWtvYWxXa3RnWGNMdU14UUta?=
 =?utf-8?B?TUhZVFl4LzJZQlc3V0RQYm5PT3pvaTB5NGNjbFhHOVE5WHZKQitRb2tpTXpv?=
 =?utf-8?B?cHY1V1ptVEwveERyUGpENzhPSGM4WVJxa0Y4NVdaU1NIK2ZRMzlXbE9uL1RN?=
 =?utf-8?B?WkNyeXl0c0ZjYnM1aE5MUXBLTnpJQ3ptWWFqeGx0WlFqbE1iMHcvNTBTWER4?=
 =?utf-8?B?dndLdlRkOEN2ZHFMN1pZcXVBRlRhdUplZGxya2FzbElxZ1F2UVA2bUtjUnZC?=
 =?utf-8?B?TDR1TVNja3QvL1RBTXFUSXByMnNrVWNEbFFTd2VnOHNXU2ZKS2ptMDgzY0Zv?=
 =?utf-8?B?Q0JocXFDa09oK1RPcFVIWGFma0R1aWFUeVNNQm56NTJ0T21sWDlpcGIySWlF?=
 =?utf-8?B?NG41cWNSQm1zS3JXNjJ0SWFsdWdHeE9YcmRoL00xbVhCeUErTU5VV1VRck56?=
 =?utf-8?B?TytKV2YwNVg3VmZ1cGNVL01IOFBJNldDaU56eUViVnBCRHE2RzZQaWt2cEtF?=
 =?utf-8?B?ZjVkWkdTQ29QaFRYL2FRSmw4alVMV0NHbE1idnRINm9KT2h1OFZlWXhCK29O?=
 =?utf-8?B?UHNYQzRtS0ZwTUhxaHB2aHBsanVsNW1EOU9KTHNLUUM2V3h0UnQvYUF1K0Za?=
 =?utf-8?B?UERWZldtTFBXQjhoVE43clBCUVFMRVZZWFJUVGF1c0tpTDkzQUQ1QXZuSlEy?=
 =?utf-8?B?NWZrYWNqL3RreVRaQTg4QVViTnk2bDRPTjhrNlhTVU11UmZ3WWlMbVFBWGtI?=
 =?utf-8?B?czVqMUNXY3NOYXB2TVAyMkZSc2hCdkVndllaN1htZU5FYVVyMVlWMUhzbW42?=
 =?utf-8?B?Q2haYy94M2R2UWVEQ00rN0tPb0piU3BZVXNQVnVMNWJPQ2k0T1NzWlRwSXVP?=
 =?utf-8?B?NnpYSVVpTFdLc3RKa1pkLzgyVDRlOEQ0TGlxLytCUmdFM2R6ekJCb3VmV3NY?=
 =?utf-8?B?RkgwL0hIZkhHZ29mZ3g4bWVyRERQQ3lLbXdnMlI0b0FtMWVHd0pWUjJMNk9k?=
 =?utf-8?B?YXYxWk1BZkNzNDFreEJsajJyZGF6b2lvMHVGN21GS1IyRW1meWthZGxaQlNV?=
 =?utf-8?B?RnBuZ1BHU29CcjVSZmFYQUFmaGNWT1VGMWlaVnRPUnNqa2F2VXNoY3lCZE9m?=
 =?utf-8?B?K1B1Zk4zVUtlNHdWQklkQzIyVkZNa2hJTEZBWmpjL0RrbWU0YUExZkp5emhJ?=
 =?utf-8?B?aHBDRlF2c01kQXhXeVZiWEtKVFBBZFNvYkJPaWFKVXc3RHJZSkN3NVNuQjdv?=
 =?utf-8?B?dkRoWTJYZWFIbGxNYUJlK25tdGJ4OGtYT2tCdmY4bStDYys1YnpSTUFnTDNu?=
 =?utf-8?B?QSt3cFFiT0xnT3IzZ1duc25BV0p1VWM0aVRNYkc4VXVUTGZ5SnlsdCtteUVt?=
 =?utf-8?B?ZlJOcG9HT3dEcXdRYkZKNlRFK3k1ODduZVcwT0tmU1kyTHJBQVlXYUNkVFA5?=
 =?utf-8?B?RlRoZmYzblhnamhIYWJURGxEMDNUU2dqYXBkKzhnNTVHWkYyVU9BYUw4M0J0?=
 =?utf-8?B?Q1BUWThpKzJDZmNHV1hzdjY2aGlkdW1TbnFweTFvWkhtYlhNYTk3NUVlbi81?=
 =?utf-8?B?dE04WWtjTGR0dUx5T0RUSlVPcU82UEVWUk9XNDdUWTNNOWtBbWZyV21NRDVh?=
 =?utf-8?B?SzdoOE51RjhqRVN4Z1cvSktDY2NUQUlVa0NTQkJudklKbnpkQmxuTTl1Q0k1?=
 =?utf-8?Q?MAoZnEOKYnZy5Alfn7AuMAO3uYLwx5D8N3QFgaUZHaID?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <797021F271A5524BBF94DC88BEBE2D46@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d2d57873-a9fa-4de3-354b-08da6f714d1a
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jul 2022 01:42:44.1741 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tLnYNHzEpiZmrTV+/NuShSBUSVT5+xG/HWXu3bMh3yFGsB5jwcuq9nih9LkXeCs8VWrox0wbxrHsgecHkHiUl2UDu92nD3EapS50BpMDUDTpxHwu2BmHSkwTXlGhPxA3
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB3992
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 05/15] mei: pxp: add command streamer API to
 the PXP driver
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
Cc: "Winkler, Tomas" <tomas.winkler@intel.com>, "Lubart,
 Vitaly" <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Y29kZSBsb29rcyBpbiBvcmRlciBhbmQgdGhpcyBwYXRjaCBoYXNudCB0b28gbXVjaCBtZWF0IHRv
IGl0IGFueXdheXMuDQpJIGhhdmUgMSBxdWVzdGlvbiBidXQgaXRzIG5vdCBwZXJ0YWluaW5nIHRv
IHRoZSBjb2RlIGJ1dCByYXRoZXIgdG8gdGhlIGJhY2tlbmQgZmlybXdhcmUgZXhwZWN0YXRpb24s
IHNlZSBiZWxvdzoNCg0KT24gVGh1LCAyMDIyLTA2LTA5IGF0IDE2OjE5IC0wNzAwLCBDZXJhb2xv
IFNwdXJpbywgRGFuaWVsZSB3cm90ZToNCj4gRnJvbTogVml0YWx5IEx1YmFydCA8dml0YWx5Lmx1
YmFydEBpbnRlbC5jb20+DQo+IA0KPiBBZGRpbmcgY29tbWFuZCBzdHJlYW1lciBBUEkgdG8gdGhl
IFBYUCBkcml2ZXINCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZpdGFseSBMdWJhcnQgPHZpdGFseS5s
dWJhcnRAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBUb21hcyBXaW5rbGVyIDx0b21hcy53
aW5rbGVyQGludGVsLmNvbT4NCj4gQ2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUu
Y2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9taXNjL21laS9weHAv
bWVpX3B4cC5jICAgICAgIHwgMjcgKysrKysrKysrKysrKysrKysrKysrKysrKysrDQo+ICBpbmNs
dWRlL2RybS9pOTE1X3B4cF90ZWVfaW50ZXJmYWNlLmggfCAgNSArKysrKw0KPiAgMiBmaWxlcyBj
aGFuZ2VkLCAzMiBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9taXNj
L21laS9weHAvbWVpX3B4cC5jIGIvZHJpdmVycy9taXNjL21laS9weHAvbWVpX3B4cC5jDQo+IGlu
ZGV4IDVjMzk0NTdlM2Y1My4uOTRkM2VmM2NjNzNhIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL21p
c2MvbWVpL3B4cC9tZWlfcHhwLmMNCj4gKysrIGIvZHJpdmVycy9taXNjL21laS9weHAvbWVpX3B4
cC5jDQo+IEBAIC03NywxMCArNzcsMzcgQEAgbWVpX3B4cF9yZWNlaXZlX21lc3NhZ2Uoc3RydWN0
IGRldmljZSAqZGV2LCB2b2lkICpidWZmZXIsIHNpemVfdCBzaXplKQ0KPiAgCXJldHVybiBieXRl
Ow0KPiAgfQ0KPiAgDQo+ICsvKioNCj4gKyAqIG1laV9weHBfZ3NjX2NvbW1hbmQoKSAtIHNlbmRz
IGEgZ3NjIGNvbW1hbmQsIGJ5IHNlbmRpbmcNCj4gKyAqIGEgZ3NsIG1laSBtZXNzYWdlIHRvIGdz
YyBhbmQgcmVjZWl2aW5nIHJlcGx5IGZyb20gZ3NjDQo+ICsgKiBAZGV2OiBkZXZpY2UgY29ycmVz
cG9uZGluZyB0byB0aGUgbWVpX2NsX2RldmljZQ0KPiArICogQGNsaWVudF9pZDogY2xpZW50IGlk
IHRvIHNlbmQgdGhlIGNvbW1hbmQgdG8NCj4gKyAqIEBmZW5jZV9pZDogZmVuY2UgaWQgdG8gc2Vu
ZCB0aGUgY29tbWFuZCB0bw0KPiArICogQHNnX2luOiBzY2F0dGVyIGdhdGhlciBsaXN0IGNvbnRh
aW5pbmcgYWRkcmVzc2VzIGZvciByeCBtZXNzYWdlIGJ1ZmZlcg0KPiArICogQHRvdGFsX2luX2xl
bjogdG90YWwgbGVuZ3RoIG9mIGRhdGEgaW4gJ2luJyBzZywgY2FuIGJlIGxlc3MgdGhhbiB0aGUg
c3VtIG9mIGJ1ZmZlcnMgc2l6ZXMNCj4gKyAqIEBzZ19vdXQ6IHNjYXR0ZXIgZ2F0aGVyIGxpc3Qg
Y29udGFpbmluZyBhZGRyZXNzZXMgZm9yIHR4IG1lc3NhZ2UgYnVmZmVyDQo+ICsNClF1ZXN0aW9u
OiBDYW4gc2dfaW4gYW5kIHNnX291dCBiZSB0aGUgc2FtZSBtZW1vcnkgYWRkcmVzcz8gSSBhbSBh
c3N1bWluZyB5ZXMgYmVjYXVzZSBvZiB0aGUgdXNhZ2UgaSBzZWUgbGF0ZXIgaW4gdGhpcw0Kc2Vy
aWVzLiBJZiBzbywgcGVyaGFwcyBpdHMgYSBnb29kIGlkZWEgdG8gYWRkIHRoYXQgaW50byB0aGUg
ZGVzY3JpcHRpb24gKHNvIHRoYXQgYW55IGZ1dHVyZSBjaGFuZ2VzIGFyZSBhd2FyZSB0aGF0DQpj
bGllbnRzIGNhbGxpbmcgdGhpcyBjb21wb25lbnQgaW50ZXJmYWNlIG1heSBhbHJlYWR5IGJlIGRv
aW5nIHRoaXMpLiBUaGF0IHNhaWQsIGhlcmUgaXMgYSBjb25kaXRpb25hbCByLWIgYXNzdW1pbmcg
dGhhdA0KY2hhbmdlIGlzIG1hZGUgaW4gdGhlIHN0cnVjdHVyZSBkZWZpbml0aW9uIGFib3ZlIChp
ZiBub3QsIHdlIGhhdmUgdG8gY2hhbmdlIHRoZSBvdGhlciBwYXRjaCwgIzgpLg0KDQpSZXZpZXdl
ZC1ieTogQWxhbiBQcmV2aW4gPGFsYW4ucHJldmluLnRlcmVzLmFsZXhpc0BpbnRlbC5jb20+DQoN
Cj4gICoNCj4gKyAqIFJldHVybjogYnl0ZXMgc2VudCBvbiBTdWNjZXNzLCA8MCBvbiBGYWlsdXJl
DQo+ICsgKi8NCj4gK3N0YXRpYyBzc2l6ZV90IG1laV9weHBfZ3NjX2NvbW1hbmQoc3RydWN0IGRl
dmljZSAqZGV2LCB1OCBjbGllbnRfaWQsIHUzMiBmZW5jZV9pZCwNCj4gKwkJCQkgICBzdHJ1Y3Qg
c2NhdHRlcmxpc3QgKnNnX2luLCBzaXplX3QgdG90YWxfaW5fbGVuLA0KPiArCQkJCSAgIHN0cnVj
dCBzY2F0dGVybGlzdCAqc2dfb3V0KQ0KPiArew0KPiArCXN0cnVjdCBtZWlfY2xfZGV2aWNlICpj
bGRldjsNCj4gKw0KPiArCWlmICghZGV2IHx8ICFzZ19pbiB8fCAhc2dfb3V0KQ0KPiArCQlyZXR1
cm4gLUVJTlZBTDsNCj4gKw0KPiArCWNsZGV2ID0gdG9fbWVpX2NsX2RldmljZShkZXYpOw0KPiAr
DQo+ICsJcmV0dXJuIG1laV9jbGRldl9zZW5kX2dzY19jb21tYW5kKGNsZGV2LCBjbGllbnRfaWQs
IGZlbmNlX2lkLCBzZ19pbiwgdG90YWxfaW5fbGVuLCBzZ19vdXQpOw0KPiArfQ0KPiArDQo=
