Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18442708B4B
	for <lists+intel-gfx@lfdr.de>; Fri, 19 May 2023 00:08:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CA5210E137;
	Thu, 18 May 2023 22:08:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A041410E137
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 May 2023 22:08:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684447727; x=1715983727;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=45/zVD2l/7944rn26jTjkzlitNZgbt7hG3/F7IB3FCA=;
 b=HU/cRLYI5zL4sxpvUYHh1+YVMbOcIuOcRWvalXOxu/ZtP8AqLorvQC3f
 v0Et4+l08SYGTKhvRQIAClx0fxeG7vEU8DROlcMOE9rMVwCtHOCdY2t7E
 CyKKpvC8g8yG8iCddyv7mRdfNvEjnP41z0SGc6aE7v3PUB1NolJ2mxFU/
 q3kxnpg8iVjEdsIO7WLqqHAnhu2WNs6AVWFm7lmuzIM0AR2w0EsXuPndY
 CTSt3hqyFO+914mCmsfZd3EGDUOSt5f5Gw7uLTyRApWm8zM8J+2YsYnJX
 1rdZQwJ/WkvYOhrqP4ZoFm53CZc80YT+n+YcscEjfn72rAAA5f6yG2ItO w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10714"; a="349723854"
X-IronPort-AV: E=Sophos;i="6.00,175,1681196400"; d="scan'208";a="349723854"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2023 15:08:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10714"; a="733056962"
X-IronPort-AV: E=Sophos;i="6.00,175,1681196400"; d="scan'208";a="733056962"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 18 May 2023 15:08:46 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 18 May 2023 15:08:46 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 18 May 2023 15:08:46 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 18 May 2023 15:08:46 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.45) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 18 May 2023 15:08:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pc/opXd1mfeprjn8g/Yj+pczh8Txtaj6ktQoAo11l8uRqUFvN/I2dvEZx0thZI32ezEoZCXQHBZmvkN6fXwSCWOagB9UqfU56X8Fvt7zFQg0OvAVVwD0Ukvddc87CZnayrS8/ZCC5aOJ47D0iQYxZ6Tg4IJDFu7Y9DErvVDC3aE+iO1nx17S8oS2gdXicaJyaEwG5j5m1dcPEV1jxZ+dkOdfS9yzpMgOoOtPm77UROUm5KddLEpN1bUZJCL7nSg+BFePLEjyx+wjotjkAvtHIlwDSNuucc59my4ymo0zPJ5oSw8AvnZwYlt20nkHJfm96gpq1h+yGHylNQYxRhbLaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=45/zVD2l/7944rn26jTjkzlitNZgbt7hG3/F7IB3FCA=;
 b=KmAjeb8uTPOLxqoov5vrp9ckZnppxLFKGQc7ixOoGShV5PS2k/Wkkxs04xwsKntrVeGJOzREpMSC9GXiEkBlLBZ6SvlpQHxtCzdSE3ZuhemJY8agNHg7uYeFeuoXe64rs+dVjZj/shE7GQm4R2cG7C1Pj/GQ/c/w3kTe7do1NbeCTTm7zihyUSOrU2nqmW9l4YJ07L4bN+eGwqCgZ1OVBps8muBq+a7xNJ+Tt783+MvVmglmSel7zlTuLmiukDZNPCfiY4kM6ZFXjBqeBqvWGgv4Q4++1OIr54R2EYoA1jFgeJiC6YPYwSnXzhwZYBRQgvh7n6DxWs2tAL64BBX1Uw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN0PR11MB5711.namprd11.prod.outlook.com (2603:10b6:408:167::22)
 by SN7PR11MB8263.namprd11.prod.outlook.com (2603:10b6:806:26d::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.19; Thu, 18 May
 2023 22:08:42 +0000
Received: from BN0PR11MB5711.namprd11.prod.outlook.com
 ([fe80::1aaf:fb37:1851:2008]) by BN0PR11MB5711.namprd11.prod.outlook.com
 ([fe80::1aaf:fb37:1851:2008%5]) with mapi id 15.20.6411.019; Thu, 18 May 2023
 22:08:42 +0000
From: "Taylor, Clinton A" <clinton.a.taylor@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgQzIwIENvbXB1dGVkIEhETUkg?=
 =?utf-8?Q?TMDS_pixel_clocks_(rev3)?=
Thread-Index: AQHZib9xHcFhU28s/kKQxIxhFEsDMq9gl0CA
Date: Thu, 18 May 2023 22:08:42 +0000
Message-ID: <ad3ea8fd13d72ffd1e2b380bc465b2ad3c389f37.camel@intel.com>
References: <20230515231725.3815199-1-clinton.a.taylor@intel.com>
 <168443831887.2372.5786124962463754360@emeril.freedesktop.org>
In-Reply-To: <168443831887.2372.5786124962463754360@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN0PR11MB5711:EE_|SN7PR11MB8263:EE_
x-ms-office365-filtering-correlation-id: 7fd703e9-62cb-4020-8d17-08db57ec7141
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: eV2vnFKWW2ucewPPEl4f6pQJdxDwoSbNJ7sKAWzt4KCz6+Tpz4HtJx9t5AKuOTjTlGqJLp2rHI8P6Jcm9Tu0F5Xrf+/QSGenO3AqkAH1hVL0eDorUB8YB515mhWmjQ4e6c1GdHpw4lKZeXZwwdzI30vLmb8GUOgdVevx18L7Alp06ymzfVJ8wJwGltE9q4DLEXvvShCO/fVB9Grpc8EG+cFpCJFiLhz4Z+3IclS84qZaY7+djUhrE8H8MvWrAETARVTDSEnq/06xSlQDZBwWmmajzTJRMiQoolxH5iee1WBoruzoTDoQUe52AI/UNXj0GITTDKkEHTOKS0FtTYrpf5ThIoy+XcCct87Ia1HaoSftmcH35RijIp4saldiSH1Gztt9PGw4FjA3qLIWfkXkKwWzMK5mZ849haOXNnfswb66yQB+mAOq+VMQUMK9O+vl9f6UMUF552QeBtCiRSHj+V1+GOxob0osnROAIR6emVB+nN1yw2v/QttlxiizKXudefhPCppTJK4KCOvS82pnRHI4WBvRKc7/up0M7iLdxWihaCM23SVpLDb8ik03rOlDKV18K0KCBmebF/zspcIebRSOGrKd12en7zwvBkKgCPE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN0PR11MB5711.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(346002)(136003)(39860400002)(366004)(396003)(451199021)(26005)(6512007)(6506007)(966005)(36756003)(83380400001)(86362001)(38070700005)(2616005)(38100700002)(82960400001)(122000001)(186003)(6486002)(5660300002)(478600001)(2906002)(316002)(6916009)(8936002)(41300700001)(91956017)(66446008)(64756008)(66476007)(66556008)(66946007)(76116006)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L0luZ05iTy9VTkkvQnhmRFdoL05qU0tkL3UxcXAyMDNoSmlZMFF5YVJWVSty?=
 =?utf-8?B?WTdMbHBKYzA0aXczWXVZQ3ZZbmdVVGp0TTF3SVpQL1JRcjEzbW9RS25LSWEz?=
 =?utf-8?B?VEpvcFJTSi9aaGE2dVU4YndGdncycU4rRGJSUUc0SW5WdUJ3T0dOSC9KOUdK?=
 =?utf-8?B?Y0lROUJaUVczdnNiWW1namtpZnV0MWFjSi95SVE2UlFpcENsTnlUaWZVUFUv?=
 =?utf-8?B?eTAwcUtBSk5mMXh5NUxLMTViOG50SjZpSmZKMzhzUTdOQ1lPM1ErRTA5QzFT?=
 =?utf-8?B?USs2RU96bFJ0TW1ZaXdKRWZwaHJLbnJlRWVIZS9wdGd5Y3JHZ3BUdFpQUmhw?=
 =?utf-8?B?eHNqREIvdVdWU2w0cjEzNjlvc3NNYjdaaC9ueVVheTFMYTRqMGtKOVNBSGdT?=
 =?utf-8?B?d3l5SEZLV1dST0Y4dUlxS1N5TExRcGExT2syNWVScHRxaURXREhpMkc0ckNE?=
 =?utf-8?B?L01SandaMTVwQlBjT05XcHltekhIQzNNOGxYZ0l5MS9laHpJamUveWZJZ3No?=
 =?utf-8?B?ZmtxbndnVm5XSGkxanFyVEFwUlE1cWFJdjIvcTdDLzhtRVNCMDBXOEE3UUNG?=
 =?utf-8?B?eGYzWUlzc1BkQlErVWZRZjBDTDQxaTJuMS84RWpYbE8zUnYzbllodXQrY1lS?=
 =?utf-8?B?Z3A4aGcvVEl2c1VMYUNnSFkxcVZHMGNGTE13NGZIYUVnN200STBMZk1GWElM?=
 =?utf-8?B?QmowUE9IMWlUajRnR2lxSzM3c1N6OWlYWThYRHJTd3dFYUkwemhCWDRub01D?=
 =?utf-8?B?RXFjcUpISVFURkNKeVNyRjVLK1ppQ1VtUkRkZTluTGQyM0YxV21yR1lUOW5V?=
 =?utf-8?B?TGZ0V1MwcU1NZlFxUVVHQ2psR0hhVlNPN0JHUkZIbWwwOFJJcCtMZUk3cHBQ?=
 =?utf-8?B?S0lEQmF2MithN0lhYUkzRFZ4TGtucEtSOHFIZDJNbUZ5VitaUGN0NU45QjJl?=
 =?utf-8?B?bnpWeVFlNlBWWkQ1STBQa25mTzRMQTRMT1FJeHJuZFp4dGl2WGJIdFk0Z0dR?=
 =?utf-8?B?dXpYTVNZcWo5c2RIN3ZZYWkxQ21CVGwyWllBUG1zM1psbXlobnZEYWtzT3V1?=
 =?utf-8?B?ZHdEUVFUdENOTDJreXFNOGhXU055TG5ZQ3kwZkR5VnVFY0gzcC93aVlvR0VL?=
 =?utf-8?B?N3RDRlQrZVkvT1hhTkgrclJZTFdZUGZ0amlwbzJTamx3UGVIODhlSHZNVHBj?=
 =?utf-8?B?Q3N5YVZvU3h2ekdVbDZjZlNqWklwcUVGME1RSGozWFJGOXJyWTNkdlcrY3pU?=
 =?utf-8?B?MXF0YzVLQ2locGQyamNndzBNeW8xNlVqTVBDNktqTnIxSzEyZm5Sdko0U3k2?=
 =?utf-8?B?NkthMHM1WGlRRXJuWEFadWN5b0VmSEdZZ2ZtOU9aaDBDWDlzaW9mNkZWWFRB?=
 =?utf-8?B?cHpQelgxdUdxNXRUOHZuYjhJQkFFS0psenNhTStGUWJsaHQ4QUxRRm1yMjJP?=
 =?utf-8?B?TG90WDNxeU9QeEJWcFBvN3MzV3hSM0JBdjVUOXdManZaeE5TZnAreVdyYzdt?=
 =?utf-8?B?RTdiYlRVa3lzUzNuQnN3YVZxckRYczhlNGFqT0xZdVdrVWxwZkdoeUdkVFFL?=
 =?utf-8?B?K1RMZnNwQ2dkdGVIdjRNVk50Yys5K3ZJQVVWSFEvK0NNdVdkc3RlL2Y2NTIy?=
 =?utf-8?B?dkRWTUhRaHIrMGdwS0hIRGM4eUJ4Y0hndDltYmxPODAyYnprN2xjaXYvQzNT?=
 =?utf-8?B?YXBWMXBhTXJWd2NkTVVST1k0azVjMm9vUi91eFl0UVBIc2NaZVN5RzBCVzUx?=
 =?utf-8?B?bnd4Qnk1NjJSTGxIaWcwbyt3MFcvUDNqeFV3b0svTE5YWTllUVV5bzc4bXdM?=
 =?utf-8?B?dDNDR0NGZXorM3JRcHF5YmRjUHA0Kzd0VzdlT05HZS9BYmpDS0J0L3ZRWCtO?=
 =?utf-8?B?dXZlOUw3Y0VCU3ZpM1J2QXdmRHZXRWQ3c0l6UHJEUUcyY244b2MwVFREdWds?=
 =?utf-8?B?YmJhK3FBU0JsZ0JhaE9kUVZybUNHOXFhb1ZmdzNTd0hTRFpCNHNRR1N4ekJY?=
 =?utf-8?B?RVdKVENVZGxwMkNIbGltUFVJZm9JZ0psWU5jdENRSzhldjRTbmdwM2Ftbzhs?=
 =?utf-8?B?SW5ZNkxHVVIzYUVFMkl2bDlrQUFUak5hQ2VIK0dIcTdjYXV2My9tR2V4d05N?=
 =?utf-8?B?aWJXTXd6UHVBZ3dxNHF3c2VpWGRySHB1MzYxUjRCVU9zRm9idS9wL1lrVWJo?=
 =?utf-8?B?MEE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D146D6363AA92547BFA40829E204B052@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN0PR11MB5711.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7fd703e9-62cb-4020-8d17-08db57ec7141
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 May 2023 22:08:42.6891 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sfOQzr/ifHzxoms9O9F/PGXbsqyM0mA8FvDnTKCLJYCvvxyUMAYEe+WxJMxhjebRQcYvqENj3Vj7inuISkWPV/+TXDCwdj3M/uuHIx1EPS0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8263
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgQzIw?=
 =?utf-8?q?_Computed_HDMI_TMDS_pixel_clocks_=28rev3=29?=
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

T24gVGh1LCAyMDIzLTA1LTE4IGF0IDE5OjMxICswMDAwLCBQYXRjaHdvcmsgd3JvdGU6DQo+IFBh
dGNoIERldGFpbHMNCj4gU2VyaWVzOglDMjAgQ29tcHV0ZWQgSERNSSBUTURTIHBpeGVsIGNsb2Nr
cyAocmV2MykNCj4gVVJMOglodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVz
LzExNzM5OS8NCj4gU3RhdGU6CWZhaWx1cmUNCj4gRGV0YWlsczoJaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTE3Mzk5djMvaW5kZXguaHRtbA0KPiBD
SSBCdWcgTG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV8xMzE2NCAtPiBQYXRjaHdvcmtfMTE3Mzk5
djMNCj4gU3VtbWFyeQ0KPiBGQUlMVVJFDQo+IA0KPiBTZXJpb3VzIHVua25vd24gY2hhbmdlcyBj
b21pbmcgd2l0aCBQYXRjaHdvcmtfMTE3Mzk5djMgYWJzb2x1dGVseSBuZWVkIHRvIGJlDQo+IHZl
cmlmaWVkIG1hbnVhbGx5Lg0KPiANCj4gSWYgeW91IHRoaW5rIHRoZSByZXBvcnRlZCBjaGFuZ2Vz
IGhhdmUgbm90aGluZyB0byBkbyB3aXRoIHRoZSBjaGFuZ2VzDQo+IGludHJvZHVjZWQgaW4gUGF0
Y2h3b3JrXzExNzM5OXYzLCBwbGVhc2Ugbm90aWZ5IHlvdXIgYnVnIHRlYW0gdG8gYWxsb3cgdGhl
bQ0KPiB0byBkb2N1bWVudCB0aGlzIG5ldyBmYWlsdXJlIG1vZGUsIHdoaWNoIHdpbGwgcmVkdWNl
IGZhbHNlIHBvc2l0aXZlcyBpbiBDSS4NCj4gDQo+IEV4dGVybmFsIFVSTDogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTE3Mzk5djMvaW5kZXguaHRt
bA0KPiANCj4gUGFydGljaXBhdGluZyBob3N0cyAoMzkgLT4gMzYpDQo+IE1pc3NpbmcgKDMpOiBm
aS1rYmwtc29yYWthIGZpLXNuYi0yNTIwbSBmaS1ic3ctbjMwNTANCj4gDQo+IFBvc3NpYmxlIG5l
dyBpc3N1ZXMNCj4gSGVyZSBhcmUgdGhlIHVua25vd24gY2hhbmdlcyB0aGF0IG1heSBoYXZlIGJl
ZW4gaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTE3Mzk5djM6DQo+IA0KPiBJR1QgY2hhbmdlcw0K
PiBQb3NzaWJsZSByZWdyZXNzaW9ucw0KPiBpZ3RAa21zX3BpcGVfY3JjX2Jhc2ljQHJlYWQtY3Jj
QHBpcGUtYy1lZHAtMToNCj4gYmF0LWFkbHAtNjogUEFTUyAtPiBBQk9SVA0KDQpDaGFuZ2VzIGlu
IHRoaXMgcGF0Y2ggc2VyaWVzIG5vdCByZWxldmFudCB0byBBRExQICh2Mykgb3IgQURMUyAodjIp
IHBsYXRmb3Jtcy4gU2VyaWVzIGNhbg0Kb25seSBjYXVzZSByZWdyZXNzaW9ucyBvbiBNVEwgcGxh
dGZvcm0gd2l0aCBDMjAgSERNSSBvdXRwdXQuIA0KDQotQ2xpbnQNCiAgDQo+IFN1cHByZXNzZWQN
Cj4gVGhlIGZvbGxvd2luZyByZXN1bHRzIGNvbWUgZnJvbSB1bnRydXN0ZWQgbWFjaGluZXMsIHRl
c3RzLCBvciBzdGF0dXNlcy4NCj4gVGhleSBkbyBub3QgYWZmZWN0IHRoZSBvdmVyYWxsIHJlc3Vs
dC4NCj4gDQo+IGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAbWlncmF0ZToNCj4ge2JhdC1tdGxwLTh9
OiBQQVNTIC0+IERNRVNHLUZBSUwNCj4gS25vd24gaXNzdWVzDQo+IEhlcmUgYXJlIHRoZSBjaGFu
Z2VzIGZvdW5kIGluIFBhdGNod29ya18xMTczOTl2MyB0aGF0IGNvbWUgZnJvbSBrbm93biBpc3N1
ZXM6DQo+IA0KPiBJR1QgY2hhbmdlcw0KPiBJc3N1ZXMgaGl0DQo+IGlndEBpOTE1X3NlbGZ0ZXN0
QGxpdmVAZ3RfZW5naW5lczoNCj4gDQo+IGJhdC1hdHNtLTE6IFBBU1MgLT4gRkFJTCAoaTkxNSM2
MjY4KQ0KPiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQGd0X3BtOg0KPiANCj4gYmF0LXJwbHMtMjog
Tk9UUlVOIC0+IERNRVNHLUZBSUwgKGk5MTUjNDI1OCAvIGk5MTUjNzkxMykNCj4gaWd0QGk5MTVf
c2VsZnRlc3RAbGl2ZUByZXF1ZXN0czoNCj4gDQo+IGJhdC1ycGxzLTI6IE5PVFJVTiAtPiBBQk9S
VCAoaTkxNSM3OTEzIC8gaTkxNSM3OTgyKQ0KPiBQb3NzaWJsZSBmaXhlcw0KPiBpZ3RAaTkxNV9z
ZWxmdGVzdEBsaXZlQGd0X2hlYXJ0YmVhdDoNCj4gDQo+IGZpLWdsay1qNDAwNTogRE1FU0ctRkFJ
TCAoaTkxNSM1MzM0KSAtPiBQQVNTDQo+IGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAZ3RfbHJjOg0K
PiANCj4gYmF0LXJwbHMtMjogSU5DT01QTEVURSAoaTkxNSM0OTgzIC8gaTkxNSM3OTEzKSAtPiBQ
QVNTDQo+IGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAZ3RfbW9jczoNCj4gDQo+IHtiYXQtbXRscC04
fTogRE1FU0ctRkFJTCAtPiBQQVNTDQo+IGlndEBpOTE1X3N1c3BlbmRAYmFzaWMtczMtd2l0aG91
dC1pOTE1Og0KPiANCj4gYmF0LWFkbHMtNTogRkFJTCAoZmRvIzEwMzM3NSkgLT4gUEFTUyArMyBz
aW1pbGFyIGlzc3Vlcw0KPiBpZ3RAa21zX3BpcGVfY3JjX2Jhc2ljQG5vbmJsb2NraW5nLWNyY0Bw
aXBlLWMtZHAtMToNCj4gDQo+IGJhdC1kZzItODogRkFJTCAoaTkxNSM3OTMyKSAtPiBQQVNTDQo+
IGlndEBrbXNfcGlwZV9jcmNfYmFzaWNAcmVhZC1jcmNAcGlwZS1iLWVkcC0xOg0KPiANCj4gYmF0
LWFkbHAtNjogQUJPUlQgLT4gUEFTUw0KPiBXYXJuaW5ncw0KPiBpZ3RAaTkxNV9zZWxmdGVzdEBs
aXZlQHJlcXVlc3RzOg0KPiANCj4gYmF0LXJwbHMtMTogQUJPUlQgKGk5MTUjNzkxMSAvIGk5MTUj
NzkyMCAvIGk5MTUjNzk4MikgLT4gQUJPUlQgKGk5MTUjNzkxMSAvIGk5MTUjNzkyMCkNCj4gaWd0
QGttc19zZXRtb2RlQGJhc2ljLWNsb25lLXNpbmdsZS1jcnRjOg0KPiANCj4gYmF0LXJwbHAtMTog
U0tJUCAoaTkxNSMzNTU1IC8gaTkxNSM0NTc5KSAtPiBBQk9SVCAoaTkxNSM0NTc5IC8gaTkxNSM4
MjYwKQ0KPiB7bmFtZX06IFRoaXMgZWxlbWVudCBpcyBzdXBwcmVzc2VkLiBUaGlzIG1lYW5zIGl0
IGlzIGlnbm9yZWQgd2hlbiBjb21wdXRpbmcNCj4gdGhlIHN0YXR1cyBvZiB0aGUgZGlmZmVyZW5j
ZSAoU1VDQ0VTUywgV0FSTklORywgb3IgRkFJTFVSRSkuDQo+IA0KPiBCdWlsZCBjaGFuZ2VzDQo+
IExpbnV4OiBDSV9EUk1fMTMxNjQgLT4gUGF0Y2h3b3JrXzExNzM5OXYzDQo+IENJLTIwMTkwNTI5
OiAyMDE5MDUyOQ0KPiBDSV9EUk1fMTMxNjQ6IDMwNzkzMDY3ZjE2MWRmY2JhY2ExYjAyNDlkOTE5
YzlmYzMwNjc1NGUgQA0KPiBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGlu
dXgNCj4gSUdUXzcyOTY6IGY1OGVhZjMwYzMwYzFjYzlmMDBjOGI1YzU5NmVlNWM5NGQwNTQxOTgg
QCANCj4gaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pZ3QtZ3B1LXRvb2xzLmdp
dA0KPiBQYXRjaHdvcmtfMTE3Mzk5djM6IDMwNzkzMDY3ZjE2MWRmY2JhY2ExYjAyNDlkOTE5Yzlm
YzMwNjc1NGUgQA0KPiBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgN
Cj4gDQo+IExpbnV4IGNvbW1pdHMNCj4gZTJiNjMwOTBhOTU2IGRybS9pOTE1L2hkbWk6IEMyMCBj
b21wdXRlZCBQTEwgZnJlcXVlbmNpZXMNCj4gMjczNzY5ZDczYzdiIGRybS9pOTE1OiBBZGQgMTZi
aXQgcmVnaXN0ZXIvbWFzayBvcGVyYXRvcnMNCg==
