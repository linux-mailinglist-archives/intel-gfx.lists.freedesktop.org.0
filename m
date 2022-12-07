Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D371264560A
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 10:08:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D77B110E0D4;
	Wed,  7 Dec 2022 09:08:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F95010E0D4
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Dec 2022 09:08:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670404084; x=1701940084;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=VFkBfUsTLV3mPHAIggAOpkzjJZ9YL8Fb43bSJUY2zmA=;
 b=eCNdTv6rb4FGRHgZpRI/YOpBpw4fMRrYaCle+P7SXcqZsEtfZIuCVTwL
 UJe527ECWls7gvqLhq9mba437BGSwxbPaej//H/z9MLu9SF7HG2Dn9EL3
 27R3R5a358t+KHx0w31Yln24EhXEh5VwwbB2us4jegKCV3CAthAM4JOVx
 xdwbIliI9wNmLAjeVq+FKMwO0k6QAJF5zhCxgqgfWffVM9m23WbMmAiRR
 fnmTdWEvfQs0BD5Ck+tF0MMKxW6Ilow3AYc2Q+fNUshxlNy/Mg6ajTzu9
 uPxh4pcztRmXmezHq1h5taX5mrVMxs7tk1hxdCQ/tpUbLq0NIpIHZgmB2 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="300262767"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="300262767"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 01:08:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="640179532"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="640179532"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP; 07 Dec 2022 01:08:03 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 7 Dec 2022 01:08:02 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 7 Dec 2022 01:08:02 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 7 Dec 2022 01:08:02 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 7 Dec 2022 01:08:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zz0cgRrri2+9ufivnX6sWD5sdZDIhC4MkFbGCB0XHYgxbn2iu5FRrQEn7uSuyACbSOtlG/m84GP7+we8osR86eJgGgufRjZpKfalY043ZjjUMzhM4SXMemMj2ebwYXC/NxTt1s4a0C0hwRqcjheXTSpe7gHMzhLb5T9uYpIysZg5y0fu2iiVLXcUP7Pt84gp0TIWtOexxTtvMlsxyKEYka4OKe750qq26mlxndwurVhPotUYlQ0B5V69br9SnK2qd6z7qOscyGB5U4DfNVHbfFtGMLt1yLevI68Ig4/x0G/G3MUuf4zhmQTFgos8K94kkWSBdw9Uz9w3JHdY7YciOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VFkBfUsTLV3mPHAIggAOpkzjJZ9YL8Fb43bSJUY2zmA=;
 b=QYfP8Y0XS2ReZj/KUjg/chXg/f1/TsZqFAUn+x+L1o3qUtAVbgYTiQZUXs6Bm0lq7nohHvy6mnRFKyOg7YjwrBJBRC5Vr2mVuyc41ESIp8q1PVALn9hJ3Qgxx/H3leDcDpEZr9581pTJu7ZXZIFRtba8rV3gtLuEDb+NGQFkEBuMc5QsLoPFkpviSL/9dflikx4wf8b6vxfmdTnP9uSscs/rXHburqM6HWOYdmP9iiRMkLjlaetF0ahA/8hg2TthXbedaVu9KZC4c+AtgcrfVK0DwU2BhdRGBCgGHxF5yKF4Ns55GCrX6a1SZ7t68xN9n/0odpBj1AY4JxV095kxaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 MN0PR11MB6036.namprd11.prod.outlook.com (2603:10b6:208:377::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.14; Wed, 7 Dec
 2022 09:08:00 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::aa9e:a40d:d382:d488]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::aa9e:a40d:d382:d488%4]) with mapi id 15.20.5880.014; Wed, 7 Dec 2022
 09:07:59 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 06/13] drm/i915: Document LUT "max" register
 precision
Thread-Index: AQHY/1A5Ln6Se2RVEUKnBep+H8TWHK5iOB+A
Date: Wed, 7 Dec 2022 09:07:59 +0000
Message-ID: <DM4PR11MB6360D346C3A5AB24DA129F08F41A9@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20221123152638.20622-1-ville.syrjala@linux.intel.com>
 <20221123152638.20622-7-ville.syrjala@linux.intel.com>
In-Reply-To: <20221123152638.20622-7-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|MN0PR11MB6036:EE_
x-ms-office365-filtering-correlation-id: c3a7e478-14d0-4454-a492-08dad8328995
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IkdWYVTiPiQjDfgNiHncoFkprmPsfeKj4flLz91UxiDFpk0g8oH52S8FPwhLtgfxCT2CD9+SK1cjhFmZsPekfFgw0tWXRW6cWdtvadVJYPp0DZuQVIxsy/tY4fs/dY3tJrZVBcLCrA+HJK2y79e2x83EBFL9o67MViSK/HdXGrIn9cQ5rOSBkMVyFKQBvM0qaF7YPhc4hFTiGXKmbzQ84Eu8EbBs7BKFK+u2c8AexMv/fN4G3m77FHESJujKDINMI14+750X6uxZX+6W9sQJTNyjxU0pMyeSQ/kzkBfTNpGgk0Ud1x0e734leeBXF2EG8WKbjfm8sUDZ4NSaq/s/+EosIDSIzno9Tn+eUP2kMwQKqzUFCKTOUkQV0NK1hWgWh7MTd+PIMDzvQ5u3J2oAChZkq5aU2HkO7ohtLK8jruxUUIZYTYZSYLjngvR5ctfg401FvoOAHF/CiVbEWxkCNqAde+vwshf5FJWLg4DTQymGrAZ+3S8l46U2B9GztpxVJjl5EOFia79JtSTSSpoTcRgH8KFnDkWOzwxh19L4FiLSGMjqunX4Leu1OKL5WyinpZlmycZcJcCAgGfoCoh/Qf+iHaobnUsCyKRkkzibSPTdSrbNu22MZIzQ5hfNGOY/Sw1vkR1VAE+5cdSoRTniSJ2N2nC2SzrytTxZ9x+0v+MnQpgq+wF9MaLj56dGsa4A2u31lEjB+FD/0IkauuA+KQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(346002)(39860400002)(376002)(366004)(396003)(451199015)(82960400001)(33656002)(38100700002)(122000001)(8936002)(5660300002)(52536014)(2906002)(41300700001)(55016003)(186003)(86362001)(38070700005)(83380400001)(66446008)(64756008)(316002)(110136005)(66476007)(66556008)(71200400001)(76116006)(8676002)(6506007)(53546011)(66946007)(9686003)(478600001)(26005)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dExSRWgwajYyLzE5ODFxZ1ZQU25XbnFGTnNoUG9ibW5VQndONExQYnAwT2RQ?=
 =?utf-8?B?UlNOWnNMUiticld4bVhoTFJHT2R2ZXRFUkZiN3pWbHJVTE1qaDdnZ0dhcVdq?=
 =?utf-8?B?TEhuV1poK0wzbllqZUpVYm5JRyt3RzcyUHpBeld3S1Jta01nOURUVEllQzhu?=
 =?utf-8?B?S1VRVFprYlBIalNvTEpHR3RaekxaZ25IUlh4cUE5Wk9IWGNJbE0xY0FTeEJL?=
 =?utf-8?B?RmVocUNHM092cUxPWm5JR3hBN3hPQ211ZWtJZ0s3UzM1U2NDZWh0ZWVDaDdG?=
 =?utf-8?B?NCt6WU9aOXRkVUVHWXQ3aWV0b0k3SUtsZXgrWis3ZEtYOWNORE9hM1hGNVlT?=
 =?utf-8?B?YVUvbXNOQ014bWRkcDgxUnJVMitzQmdZWEMvRmxXQmUvNnlETDFoQW9McUZy?=
 =?utf-8?B?bEZOcUlMeWVsRk8rZUdobUtlSmtHK3NYWDR4MnYrYTl3K2hJZmVTWWdYNmFV?=
 =?utf-8?B?bk1uYUhvRTloblJqbUdVVHF5RklIM3RweDNPcS9sRmFYcUlhSHhSbTBVRXRK?=
 =?utf-8?B?bVQwSEkwUGFWSkxOd3hDMVFIREpjcjhjbGRnMEJiN1crWDQ4MitkWEhDbkFt?=
 =?utf-8?B?cFlaNmlsQW5UWFNNTHZXUWNtdlNuSDhRN2dEMWNzZ0xyT1ZUbzVzZHVlYkRJ?=
 =?utf-8?B?WmdKa0kxcFp3dTM1ZkMyeGFpOU93REtwMkNGc2hTUzlhQy92dVBheERmNFRZ?=
 =?utf-8?B?ZEpqenk0N0xiMU9SM29weGFMOFpOSDFWSUN5YzVaM3VqV0lTZVFpb1lHU3N0?=
 =?utf-8?B?NVREc1M0RGwvT3h6TTF1eUhnRDdSUDhNbGVsZzJGNUFOMFFuVVg0UTZ1RzNz?=
 =?utf-8?B?NG1PUDF0aU8vZE5UUXVCQjRseUJteTJZcDYycFhnWjhwdUFEcWRpaW1Ja29T?=
 =?utf-8?B?ZGNWYThMOHRsajk2Rm82TVlTMWdHMEtQNzZENUp2bHZ3dWk5ZE5yM0hnbmZr?=
 =?utf-8?B?LzVsOHlwaFFXQno0QXFHMTl6UDNMZ0N4QmwyWWV2UnVzdXo2OStlNjR5K2tC?=
 =?utf-8?B?TGxraC9QNllTaWNmNm5ZaHh1cExmK1FhSVNRS2NNa25nUmx2SnB2NTJjd25o?=
 =?utf-8?B?UnF6dkwwQXNSbENKeFBLK1ZPWTFpZEg1TjRiVHJtcFZCL0s5QkVxNExIdEVN?=
 =?utf-8?B?VEhkUFgzbVpLU0U3NGprYkVTUTdQb1l4cTNPZDlpN1RMRUNpSVQrcHJSM1Fn?=
 =?utf-8?B?dkRMR0xXeFZFb1Rxazlyd3hUdmVadGdiaDg1Nm14TmdwdHkrdTFoeTVnU295?=
 =?utf-8?B?R1dPc3RJUlBYMXhXVDdRcDNrdzlUTFhlYkpwV3JTS0FwQVZ1VVB4eFdhMlhP?=
 =?utf-8?B?OFkySlN2aE1PdWpTTEVaZm5XSWYzdHp6NzBxaWlrdFJ2emNrcDlzZGVCS2d0?=
 =?utf-8?B?VysxRE5mTytSUkRwYnJTLytudHE0YXkrT1VzRmozTUxXUEtldnVza2VlcFp0?=
 =?utf-8?B?OXJNd1Z2bHAybWVLZnk2bVIrcjBabVFoaGlSa0s0TFlRSHVTRnZLbm9wajNu?=
 =?utf-8?B?bjVyOERrcDcxUTE4WDVXZnFEdGZ4NHNXZTdDbzVNZnVqcFZRN3E4TXQwNExX?=
 =?utf-8?B?ZnA0UWJKK3k5cWZDRG1IcGJWaFhLUmpjWm52SmNGN2ZpNEVEcnliaGxTVFRH?=
 =?utf-8?B?Y3htYU16a3dLSEh1RE5na0ExQjNINmJZY2xyV25Ebzh3cnloRk9Tc0JZSVdn?=
 =?utf-8?B?S1dYZmJEY3c2UHRvSGMxRFlPRWdRUW5oVWcrdnVObm9jYVJFZStBZDJvZlg4?=
 =?utf-8?B?aFo5RE5zQnhnZGprUGJaYWM2c25zUnFTMTdOUmNrZ3JUZVBiRUxqS0t1cHhj?=
 =?utf-8?B?UElqcEE2TmtvNzI1N3lSWDRZd1NZU3pHSDk3Wkc3MThUL0tSNFRYQ2ppeGM1?=
 =?utf-8?B?ZU8vUDBkNTZTRGU5M0wvcFc4Z0NmVC9GWWpaSkYvYXoxT2NIMCtMZGlwSGVi?=
 =?utf-8?B?ZWhDdUh2WE1FRFpoSnpnYnFkd3ZTQ3g1WTJiSWlqWEErYkJlQUNaUGJya0FV?=
 =?utf-8?B?cWFvM3lzanNGQWo2WW4vQzc0ekxPb09pTWdRcVJDRnZLMi9kWDVOSHhYWDcw?=
 =?utf-8?B?Mlo4am5DbVg1Zm1nZUZ0b1gxVmJTblFpQmtyYUV0SzdNYWVHVlhLVDFRYmtE?=
 =?utf-8?Q?HU1uBLSXKvv+apQxhzrwJUlVD?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c3a7e478-14d0-4454-a492-08dad8328995
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Dec 2022 09:07:59.3971 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PSAmK4D6ZtHO0I163Zltzvu4+rtugt/O6JZc1Ted7aHEQWjW/WwWamgArHLM+0Q/9oLLbVIfOuW6CR030LzuGQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6036
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 06/13] drm/i915: Document LUT "max" register
 precision
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZSBT
eXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgTm92ZW1iZXIgMjMsIDIwMjIgODo1NyBQTQ0KPiBU
bzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4
XSBbUEFUQ0ggMDYvMTNdIGRybS9pOTE1OiBEb2N1bWVudCBMVVQgIm1heCIgcmVnaXN0ZXIgcHJl
Y2lzaW9uDQo+IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPg0KPiANCj4gRG9jdW1lbnQgdGhlIHByZWNpc2lvbiBvZiB0aGUgTFVUICJtYXgi
IHJlZ2lzdGVycywganVzdCBzbyB3ZSBkb24ndCBoYXZlIHRvIGRpZw0KPiB0aHJvdWdoIHRoZSBz
cGVjIHNvIG11Y2guDQoNCkxvb2tzIEdvb2QgdG8gbWUuDQpSZXZpZXdlZC1ieTogVW1hIFNoYW5r
YXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJq
w6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmggfCAxMCArKysrKy0tLS0tDQo+ICAxIGZpbGUgY2hhbmdl
ZCwgNSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oDQo+IGluZGV4IDIyZmI5ZmQ3ODQ4My4uY2QwYTQ0NTgxNGM3IDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcmVnLmgNCj4gQEAgLTM2MjAsNyArMzYyMCw3IEBADQo+IA0KPiAgI2RlZmlu
ZSAgX1BJUEVBR0NNQVggICAgICAgICAgIDB4NzAwMTANCj4gICNkZWZpbmUgIF9QSVBFQkdDTUFY
ICAgICAgICAgICAweDcxMDEwDQo+IC0jZGVmaW5lIFBJUEVHQ01BWChwaXBlLCBpKSAgICAgX01N
SU9fUElQRTIocGlwZSwgX1BJUEVBR0NNQVggKyAoaSkgKiA0KQ0KPiArI2RlZmluZSBQSVBFR0NN
QVgocGlwZSwgaSkgICAgIF9NTUlPX1BJUEUyKHBpcGUsIF9QSVBFQUdDTUFYICsgKGkpICogNCkg
LyogdTEuMTYNCj4gKi8NCj4gDQo+ICAjZGVmaW5lIF9QSVBFX0FSQl9DVExfQQkJCTB4NzAwMjgg
LyogaWNsKyAqLw0KPiAgI2RlZmluZSBQSVBFX0FSQl9DVEwocGlwZSkJCV9NTUlPX1BJUEUyKHBp
cGUsIF9QSVBFX0FSQl9DVExfQSkNCj4gQEAgLTUzMDQsNyArNTMwNCw3IEBADQo+IA0KPiAgI2Rl
ZmluZSAgX1BSRUNfUElQRUFHQ01BWCAgICAgICAgICAgICAgMHg0ZDAwMA0KPiAgI2RlZmluZSAg
X1BSRUNfUElQRUJHQ01BWCAgICAgICAgICAgICAgMHg0ZDAxMA0KPiAtI2RlZmluZSBQUkVDX1BJ
UEVHQ01BWChwaXBlLCBpKSAgICAgICAgX01NSU8oX1BJUEUocGlwZSwgX1BJUEVBR0NNQVgsDQo+
IF9QSVBFQkdDTUFYKSArIChpKSAqIDQpDQo+ICsjZGVmaW5lIFBSRUNfUElQRUdDTUFYKHBpcGUs
IGkpICAgICAgICBfTU1JTyhfUElQRShwaXBlLCBfUElQRUFHQ01BWCwNCj4gX1BJUEVCR0NNQVgp
ICsgKGkpICogNCkgLyogdTEuMTYgKi8NCj4gDQo+ICAjZGVmaW5lIF9HQU1NQV9NT0RFX0EJCTB4
NGE0ODANCj4gICNkZWZpbmUgX0dBTU1BX01PREVfQgkJMHg0YWM4MA0KPiBAQCAtNzU1MSw5ICs3
NTUxLDkgQEAgZW51bSBza2xfcG93ZXJfZ2F0ZSB7DQo+IA0KPiAgI2RlZmluZSBQUkVDX1BBTF9J
TkRFWChwaXBlKQkJX01NSU9fUElQRShwaXBlLCBfUEFMX1BSRUNfSU5ERVhfQSwNCj4gX1BBTF9Q
UkVDX0lOREVYX0IpDQo+ICAjZGVmaW5lIFBSRUNfUEFMX0RBVEEocGlwZSkJCV9NTUlPX1BJUEUo
cGlwZSwgX1BBTF9QUkVDX0RBVEFfQSwNCj4gX1BBTF9QUkVDX0RBVEFfQikNCj4gLSNkZWZpbmUg
UFJFQ19QQUxfR0NfTUFYKHBpcGUsIGkpCV9NTUlPKF9QSVBFKHBpcGUsDQo+IF9QQUxfUFJFQ19H
Q19NQVhfQSwgX1BBTF9QUkVDX0dDX01BWF9CKSArIChpKSAqIDQpDQo+IC0jZGVmaW5lIFBSRUNf
UEFMX0VYVF9HQ19NQVgocGlwZSwgaSkJX01NSU8oX1BJUEUocGlwZSwNCj4gX1BBTF9QUkVDX0VY
VF9HQ19NQVhfQSwgX1BBTF9QUkVDX0VYVF9HQ19NQVhfQikgKyAoaSkgKiA0KQ0KPiAtI2RlZmlu
ZSBQUkVDX1BBTF9FWFQyX0dDX01BWChwaXBlLCBpKQlfTU1JTyhfUElQRShwaXBlLA0KPiBfUEFM
X1BSRUNfRVhUMl9HQ19NQVhfQSwgX1BBTF9QUkVDX0VYVDJfR0NfTUFYX0IpICsgKGkpICogNCkN
Cj4gKyNkZWZpbmUgUFJFQ19QQUxfR0NfTUFYKHBpcGUsIGkpCV9NTUlPKF9QSVBFKHBpcGUsDQo+
IF9QQUxfUFJFQ19HQ19NQVhfQSwgX1BBTF9QUkVDX0dDX01BWF9CKSArIChpKSAqIDQpIC8qIHUx
LjE2ICovDQo+ICsjZGVmaW5lIFBSRUNfUEFMX0VYVF9HQ19NQVgocGlwZSwgaSkJX01NSU8oX1BJ
UEUocGlwZSwNCj4gX1BBTF9QUkVDX0VYVF9HQ19NQVhfQSwgX1BBTF9QUkVDX0VYVF9HQ19NQVhf
QikgKyAoaSkgKiA0KSAvKiB1My4xNiAqLw0KPiArI2RlZmluZSBQUkVDX1BBTF9FWFQyX0dDX01B
WChwaXBlLCBpKQlfTU1JTyhfUElQRShwaXBlLA0KPiBfUEFMX1BSRUNfRVhUMl9HQ19NQVhfQSwg
X1BBTF9QUkVDX0VYVDJfR0NfTUFYX0IpICsgKGkpICogNCkgLyogZ2xrKywNCj4gdTMuMTYgKi8N
Cj4gDQo+ICAjZGVmaW5lIF9QUkVfQ1NDX0dBTUNfSU5ERVhfQQkweDRBNDg0DQo+ICAjZGVmaW5l
IF9QUkVfQ1NDX0dBTUNfSU5ERVhfQgkweDRBQzg0DQo+IC0tDQo+IDIuMzcuNA0KDQo=
