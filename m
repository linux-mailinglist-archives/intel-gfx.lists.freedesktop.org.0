Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DCF957B7CF9
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Oct 2023 12:21:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62F4E10E0C0;
	Wed,  4 Oct 2023 10:21:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5E1410E0C0
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Oct 2023 10:21:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696414864; x=1727950864;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=cs3nJ9Lk7ZCaU0sR/rBIQx5Nw0N5wZg4663qnOT+wN8=;
 b=dmduOAImN8nbwvn7YYMFtL2izvg95hn0X6YtTNq4pAa6oqSiZl2JO+QC
 RiW3ZwaEzZjVeG/083Vpr8ir3GBkYuGCs4Ot2w96FvgRuAQKzyBnVFewb
 em3zqi3XKiSNqd5M+PQOObNGRHfyzDb3OJw0ox1K4DLtwpyIi2IZkyodz
 di5qe0yGpfC/CgLp4mNmsisJ4pNPjobJR5NZKksWi8gCc1HCpKHuqcn4r
 GMDs/UY76zbu81pQ6YtsUrZ185c8AyIoVaKF15cyNypcAPdpVouYqhzk/
 b3v0GhZgitbFwTr2722nA4jctxQUfLMcqfciWHCQmSBEQktbmu96Ts8ba w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="373465750"
X-IronPort-AV: E=Sophos;i="6.03,199,1694761200"; d="scan'208";a="373465750"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 03:21:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="821611742"
X-IronPort-AV: E=Sophos;i="6.03,199,1694761200"; d="scan'208";a="821611742"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Oct 2023 03:21:03 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 4 Oct 2023 03:21:03 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 4 Oct 2023 03:21:03 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 4 Oct 2023 03:21:03 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 4 Oct 2023 03:21:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G/THS3KG/ebr+rpBEdwAz7/wzoNGjUth7YZ73KGl68x+Eu4mw8+KYGosRuKoAKyuOm+BPvKXrY/uD9m++qgBe24AYcRGJZWr5PrYKvl6bWzA7k7jLGE82MJVncLEWyDbkEP1MJButwvKpOEC2UYvP8Vj2Mf2UwD/i4FxxsI8gvmlhIpdX2HZUnz21ULPG+bUmU51GKgtf+3YVx2rdhku5pAzOtpLQyOWfNuH+tmzPuoS9/3iybMEsCITszUaOtYkCHNztMhURqcElfmBiQ9YgIusB8HiwKjzelFnYJE7XRJIOhqZ2dqlFTEbpjaRViZI9LOsr/XtCKc5ITPxPwBUbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cs3nJ9Lk7ZCaU0sR/rBIQx5Nw0N5wZg4663qnOT+wN8=;
 b=Kt/dOzv4WJ6N2GxZx2HVopDJGUOpIyh6BRwc5bEt0Bh8+nCVCMBDnNyNIPCGHt2Wh7ztG/XatKUd4UAHrZZUh1Y1NM9Z3GbySB4KeZonOP4ir8/SwkJzBn6KbI34PuUMi3hPGftT/iEHJRLv0zkJhPjvM+avGkxHriP9m2QCgFriwXKZLv7hPkykLafNSW2iYhc099yHOQNITTiadB9sIJgHEFR7Tqa1Al/mat1BGvjdL5+vQNV2IJ3FcPbas5YnHXcMhmOv6RPXYGLTWAbl6qzADvGlNDkXpUpZJnabJa6m+K38uJRvs/o6dDtQj2yt5yr05Ul+slHJnfW0oIKwQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by CY8PR11MB7108.namprd11.prod.outlook.com (2603:10b6:930:50::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.26; Wed, 4 Oct
 2023 10:21:01 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::cf28:4320:6c5e:aec]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::cf28:4320:6c5e:aec%5]) with mapi id 15.20.6838.030; Wed, 4 Oct 2023
 10:21:01 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 6/6] drm/i915/fbc: Remove pointless
 "stride is multiple of 64 bytes" check
Thread-Index: AQHZ9jHpCE30DPnavEG31u2S9lkNG7A5bIuA
Date: Wed, 4 Oct 2023 10:21:01 +0000
Message-ID: <84085c014a58e14e74a9bd5048c27d364f7b2034.camel@intel.com>
References: <20231003194256.28569-1-ville.syrjala@linux.intel.com>
 <20231003194256.28569-6-ville.syrjala@linux.intel.com>
In-Reply-To: <20231003194256.28569-6-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|CY8PR11MB7108:EE_
x-ms-office365-filtering-correlation-id: 88c91316-03fb-49e6-5c44-08dbc4c39bfd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XfufAdc06QYb2qqycyHE/ZtFxsbOzyWFp1OES0KpnjaQ0cWeJ8db0JQFQZRExv+J85YzbQmD/a074Okxcur/9mIYPuYnnfstRwAQr/f2zLVbv1tjQLXYiW1dmxCKLwS0sOeKYFgSdJ/Gd4JOMf/jNyDRO+Pb90hHiagvNN7J86sa1UY/upPs70BLmqHMr7f7pJWuJiSaoKtNFIGdk1vBaZm3gSIT/xeyCBlR7AMmDdcJxgWmnKmlAyrs19/GHcYNuio50M30syF07lTezRlruIM6KIVc1+ton1+VR5Sc+Eh3KLlPpD7s8Rt4JjTLp1in/Zt4r3cCIsiKgRXMAtm1bPA1B0Dwtxvod5FwHnfMYm1EmmirXuj+VpIk/5n7B9u7JJ1L+a6F1QOLNCe6Apau7x0IXv7Slk3tArnryp4ElitcrHb/+9zz0bd5pMMSUucDZX32269XrlxbhrXk2Kz8QeCCQXjiJttzrXvuvnyBqKCx2ssVaNuxv6Vg4nTdqe/w557y+EON2S66xtDYSWLz+FoPNMTN58AOk6B1/1sevtGaNqc9slimasEQdco2CLyBduy+qAlm/kJRVN2zWyBY17atf46pyaCat9+c+zFu6G9SjcMtZuLZbZH2UM7TOw2B
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(39860400002)(366004)(376002)(136003)(396003)(230922051799003)(1800799009)(64100799003)(451199024)(186009)(2906002)(6512007)(6486002)(6506007)(2616005)(91956017)(8936002)(110136005)(478600001)(316002)(83380400001)(66446008)(71200400001)(66476007)(8676002)(66946007)(5660300002)(76116006)(66556008)(26005)(64756008)(36756003)(41300700001)(86362001)(38070700005)(82960400001)(38100700002)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VHFocFdlejVDTnZOd3V5SzJnL0N6WmVuRW82RFluZWI2VDhtT1FCdGk4TEtK?=
 =?utf-8?B?TTU1b1hsOHlBQ3Jud2V4UkMzTE9PTW43OXNjZFNDRHhyNjVKUWdVQ1NhdkRQ?=
 =?utf-8?B?eDlaOUJ0aUt0YkRod2RRN1A1MlNmNTU5Nm9EaXZ4WkZicEhpbFFwM05HdjFk?=
 =?utf-8?B?ZnUyTTN6c2tVdlozeEZjam5xVWF1TDk4RjZDcG15TFZhZmRsb2tSS1Vkc2ZJ?=
 =?utf-8?B?Szl5bUJzTHNUT1c4ZXhEaWhHTEw1WG1ndjNRS3BPM1RITVlRbGdQVGtUZ1ly?=
 =?utf-8?B?aGNYT0xTemdKQkR1TUF0cGJpdWozZmF4SHlUTkl1UUV4NVp5T1NIcHk4Vi8v?=
 =?utf-8?B?ZjgzUkVnVVFBejMxRTZJbS93Y3pCaldFVkNCaEpuYjBpRy8zM1k5YVkyLzVy?=
 =?utf-8?B?WVhUMGNuei9aUGQrK1ZqZm1CMk9rd3F3dGhyZENVWHJLNkdUanV1U0gwK2cx?=
 =?utf-8?B?Z0Q4Zk55c25UVHlSblNHZCtZZmRBc3lmcUYxSjA5NDRwSzBsOUJtS1ZLSDVI?=
 =?utf-8?B?OTNUc2o2L29aaDdLeGIrWlMyZTBBY3NTaG00TXFjQXppd3dIdzJnUHI3b3Yv?=
 =?utf-8?B?dTlUZklvZWV6dlVWOWo4UVdZQ3lIOFA4QmFPbThJR2tERGtLazRrNlBNcTBi?=
 =?utf-8?B?dzJ6aTZRelAzNkk5QzVwK0ROUllySlgvY1FYTHVaVjhUb2Q0b1JRakJZY0l4?=
 =?utf-8?B?cUNFcU82K2FJS21nbHQ5dXhSSjdIZHpUd0s5TDE0TnBPSDBXUnplNnZjc3dI?=
 =?utf-8?B?VjB5bit1RE1ScGRseVBFeGIwRHNZMkxidHVQK2xUck9jU0JSMlQ1TThnYWY1?=
 =?utf-8?B?V2l4VVdxZ3pkRUZRV3JjbnRQSXIycUI4MFhCQjJORFhMR291TzBadUFxZWhQ?=
 =?utf-8?B?WXg1M3lxc1BJVXlWMHd1WDAwZ1MwUUtCc1J6ZE1oUFpXMHpqdms2Mi9hNnZs?=
 =?utf-8?B?QnZqTkZ4U3BnU1phWjcxQ0hZTmtOOWJvUmJBd0pad2kvQktZeG1CcW4xbVUv?=
 =?utf-8?B?WnFxNi8ybzlNL1lVQVAyL0U1ZEp2cm1uYXk5bzRoZkkxeDl4MXdqNVJCWU1v?=
 =?utf-8?B?UFpzdTVXS0lxQllIZWkyUTRFWDN6aUhxckg2Q0xCZ2NRY0cxTVQ5ZWxveDZG?=
 =?utf-8?B?djN1UW9JajMvK0JZNnZBRS9iRUVTemkwUUpUMGZVM1ZSdUo5Y294a0YrOFR4?=
 =?utf-8?B?dHkyWHNjS3BpM3lzMVNFMDRBdHVBbUFKSFZtcW9iMFZnZlU1SnFLbHFNMlVI?=
 =?utf-8?B?ZThMV2FKN2hjR3VSYmNXUUtpWXduOHZYOVcwam4yQ1BHbkhGcnRqOTZqRXZG?=
 =?utf-8?B?b2tjeklBQzVGU3podTlLM0R6WGxCTWd3cklLVUR6VkkzZC91a2lJbnR6ZHJk?=
 =?utf-8?B?RzBQSDYxT3I5R0lTYUVHTEMvb1FSSGI5TmFsV2N3MEdqQXp5M0licndEWmtJ?=
 =?utf-8?B?LzlCWTFyN0o3bGt2SHpqTCs2MG9Oa1NiZFZoOE9xOXA3SlRiWW51dEEvakdQ?=
 =?utf-8?B?OTVvQ0NVUGxHcUt4bVk3UWkyUXpnL2dGdHJBb2NXNlZlVHFkRE51S3VhSEtG?=
 =?utf-8?B?ZndlWndLWjNjVmVIaGtGUDFseGtlcUs5dUk0cURqRTFZcnNEOUphaEw3N3JO?=
 =?utf-8?B?akJJZ0VDeTc0Rzh5eTArYnFaaDZqbkJwUFRGQ1dWbitON0hRVUMyVXRnenBh?=
 =?utf-8?B?dkVxU0VTSmZBM0RsYlZpK0thZzBqTldER2RPMFU5YU1aS2pDKzUwWndrbGw4?=
 =?utf-8?B?YUNuYWgrZ1NyZWQ4WHJraVpMVU5KUnM0WFJORWtjOWJzYi9USDg3SVFPRUx6?=
 =?utf-8?B?RWhzTDZPNmRvcTNkbkt6UnFtUzQ3YnpvMlhSUUdKbXZXOXBaVVJBMTJldWdh?=
 =?utf-8?B?V2NFV2dCMVQxVU5YZzJGTWFKNGJFSHVNUEFrbjZVWTdHejhuN01LOUJyWFZX?=
 =?utf-8?B?U2E4WTBGUHZPa1lFNVhjSDdyemVYMmwzMExNQU1EbFZKS3RPcXZpUUdTMUNR?=
 =?utf-8?B?OWE3WnF4QjlidGNESzY0SXEyWDdkZEUwbXhuU3gxVmxMNWRUQXRBNEN4djMz?=
 =?utf-8?B?SjdETlJEZE55RUZSeHVoTWJ2eDZ1bCtrQ0tUSnBsOHJ0MXpXSmJZRVV0VGJE?=
 =?utf-8?B?Qzh3UDVOeWlXRjY5dkJVRXd2aWlTR3dTM2RsZlRjRCtBVEQrUHNSNjJTVTl4?=
 =?utf-8?Q?bm3TJNkopyQD20MoUv+mSvk=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D6CE0D14D39D8F498DD5380E9944EAE5@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 88c91316-03fb-49e6-5c44-08dbc4c39bfd
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Oct 2023 10:21:01.7566 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SxWRA2lZ+ltCHc21AQh9//SE4NwFzVhXKKMTw7PMWqDKxikcQUBbFMvJZbZGm+oBDJft4U7buOOeZXvAvmJQxC665pcji3QnwgtVO1gPoJU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7108
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 6/6] drm/i915/fbc: Remove pointless
 "stride is multiple of 64 bytes" check
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

T24gVHVlLCAyMDIzLTEwLTAzIGF0IDIyOjQyICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gUGxhbmUgc3RyaWRlIGlzIGFsd2F5cyBhIG11bHRpcGxlIG9mIDY0IGJ5dGVzLiBSZW1v
dmUgdGhlDQo+IHBvaW50bGVzcyBjaGVjayB0aGF0IHJlYWxseSBkb2Vzbid0IGhhdmUgYW55dGhp
bmcgdG8gZG8NCj4gd2l0aCBGQkMuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rs
w6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jIHwgNyAtLS0tLS0tDQo+IMKgMSBmaWxlIGNo
YW5nZWQsIDcgZGVsZXRpb25zKC0pDQoNClJldmlld2VkLWJ5OiBWaW5vZCBHb3ZpbmRhcGlsbGFp
IDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNvbT4NCg0KPiANCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+IGluZGV4IDM3Zjk2YTRkNTBmMi4uNDgyMGQyMWNj
OTQyIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Zi
Yy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4g
QEAgLTg5NywxMyArODk3LDYgQEAgc3RhdGljIGJvb2wgaWNsX2ZiY19zdHJpZGVfaXNfdmFsaWQo
Y29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlDQo+ICpwbGFuZV9zdGF0ZSkNCj4gwqBzdGF0
aWMgYm9vbCBzdHJpZGVfaXNfdmFsaWQoY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpw
bGFuZV9zdGF0ZSkNCj4gwqB7DQo+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSA9IHRvX2k5MTUocGxhbmVfc3RhdGUtPnVhcGkucGxhbmUtPmRldik7DQo+IC3C
oMKgwqDCoMKgwqDCoGNvbnN0IHN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZiID0gcGxhbmVfc3Rh
dGUtPmh3LmZiOw0KPiAtwqDCoMKgwqDCoMKgwqB1bnNpZ25lZCBpbnQgc3RyaWRlID0gaW50ZWxf
ZmJjX3BsYW5lX3N0cmlkZShwbGFuZV9zdGF0ZSkgKg0KPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgZmItPmZvcm1hdC0+Y3BwWzBdOw0KPiAtDQo+IC3CoMKgwqDCoMKgwqDCoC8qIFRo
aXMgc2hvdWxkIGhhdmUgYmVlbiBjYXVnaHQgZWFybGllci4gKi8NCj4gLcKgwqDCoMKgwqDCoMKg
aWYgKGRybV9XQVJOX09OX09OQ0UoJmk5MTUtPmRybSwgKHN0cmlkZSAmICg2NCAtIDEpKSAhPSAw
KSkNCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiBmYWxzZTsNCj4gwqAN
Cj4gwqDCoMKgwqDCoMKgwqDCoGlmIChESVNQTEFZX1ZFUihpOTE1KSA+PSAxMSkNCj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gaWNsX2ZiY19zdHJpZGVfaXNfdmFsaWQo
cGxhbmVfc3RhdGUpOw0KDQo=
