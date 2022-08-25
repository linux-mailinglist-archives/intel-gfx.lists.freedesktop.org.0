Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B62275A1823
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Aug 2022 19:49:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61F7110E2E1;
	Thu, 25 Aug 2022 17:49:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3A2310E2E1
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Aug 2022 17:49:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661449783; x=1692985783;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4zwcsrVR2KTEeTSO2wE85NdetarI4P+dW/Kxokpksc0=;
 b=UmtBEW/VPddynSkqXEN2jPLRGml+B/JIVXIbA5UZkU/VkMGvEauyZ+bN
 omOR0db4dH+wgYaZsu47Z++Rzs8HTSscFW4nhQZukXOItd2UsY+KxnxiW
 g7NrqDX7svDwapEnvpiJnuRlK1GINqBJnm7aua7hGdwg92fmdJGhiSljD
 ZNMoXrqDVm6r96gnDQ6pNJ7p8rGYOZ2tTgA4nMBu9Rwpf/F4864n5gbtI
 nRqiStSaUXlM6yVv9asEDIZA5GgBqNfJx04cKCPvk51mhAuFrojK63AnS
 1EKR6PTZIuaRMDSxObPE0T+wtqhaYd0sI0q//rMa0c9/d9orOR5nb52Hn g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10450"; a="293057540"
X-IronPort-AV: E=Sophos;i="5.93,263,1654585200"; d="scan'208";a="293057540"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2022 10:49:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,263,1654585200"; d="scan'208";a="678557167"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP; 25 Aug 2022 10:49:40 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 25 Aug 2022 10:49:40 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 25 Aug 2022 10:49:40 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 25 Aug 2022 10:49:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ra6cBTRUQw6w2EVPEDHtZLRKHKtynIpqoyRRG1SdT1ZFYZlV241z9eflo+XMFEVvpi4ojTHufwcljcSc5/lfeFta44sOL7VTxaG27fk/w8pxD2BczcpprYe3V+JGb8zgT6ofTFZMcq+nwTAmQza9TWdj9Xq0TUEmYPnqVee3hXEubWeVW7dIA8zJbYquATqTm2XQ5TFLdF7a5kaFqp3PFXgTnK7ARTPLxmpaVt8X+2GJI23YUDme7Y+ThNBh+8vsJCz4doTB/obj7tPISpagB++4tZj4++XMwnxtJqE3D9jPpFv55sYwwzlBoFQbidzDDzvoUihoJQl2HD6rGdFIVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4zwcsrVR2KTEeTSO2wE85NdetarI4P+dW/Kxokpksc0=;
 b=im17YBcBKXgtDdaHaPBk9oHIVoFpV1XzDjzk2ZW9JZMFmEltqsB0Lqp98bv9jgRzTDV0GDxOB4lMEhd4e3K0GhHM79HqrwONx2x56bW+AdvARTPRofZ4Sa3BaESAgW3jqKvc1NE3nr924YGac3RPTUW4m6nvfMKeRVM0rs127b4J3h2Q7mS3m1pUbSbg/Z6UZTR3sR5p0sfkZp+j4BsgGE3o7U9pznTKDvXDMQU3/yBn2odBnmuSIyKo4EsPB3TeRHOen0V8FgA3NJjljLmITrbp7nBjLVnc4PleihzLxkNRqu2G/egsnVPeLgH7+oeWqSRK01Kx3QEW54HXiDlFow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 SN6PR11MB3181.namprd11.prod.outlook.com (2603:10b6:805:c3::29) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5546.21; Thu, 25 Aug 2022 17:49:38 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::f400:a8a1:3c7:3827]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::f400:a8a1:3c7:3827%6]) with mapi id 15.20.5566.015; Thu, 25 Aug 2022
 17:49:38 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Skip Bit12 fw domain reset for
 gen12+
Thread-Index: AQHYsorgMAGnJyy10U+Mp+Q7o81qBq20Km6AgAlx5QCAAkjnwA==
Date: Thu, 25 Aug 2022 17:49:38 +0000
Message-ID: <DM4PR11MB5971A43B5E78F34B30EA5E1587729@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20220817224304.255767-1-radhakrishna.sripada@intel.com>
 <Yv3VY2agZffBJLut@mdroper-desk1.amr.corp.intel.com>
 <071b7a16-8848-f9f7-2dc7-53c499787c29@intel.com>
In-Reply-To: <071b7a16-8848-f9f7-2dc7-53c499787c29@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4630733e-e80d-4542-4f10-08da86c22e23
x-ms-traffictypediagnostic: SN6PR11MB3181:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1HO40PN7qeURzlUeD+xbXmobj07ZhECC02KzqgVLX1CaNfunAMuQkGA0inS1YVGeVhXCeEOab6q6ObfOKhkWERoyCitpKowMQHoqm3N5V7f+a85sMWfBiAjc0tXpW0QBhHvexJV7MDAJxibIGcee+rhfBaLbM3QCSQ9wOh99qQv7qY342ujcI0phDCd8wlP+hLhm18CiSHCLYaOtbQlCL8LnVWpJx6UMedl0a4OH9tkEWpIFnYcFFAPI/g+0GkHDQ0RHq6gvc61MXN+AWxSxrtrjABYbTwIhPaK/SERpiL5lGRPWcX4DPV7RLA2W4VyyeK+jZb0P9C4oi29ihlR8rci70AI02Oxjl47IAMtHro2esB9S+tNcGPmE9kvCzWEtbFkF4H0DC7m9oDNd0/cTkUnJHa0agSCctq+Z6D9ZFTgAu2K8wjC+M2JTDUstqB1uENgeilVWRaIOVWVzGNO21EcOYgAC3B1Dj4DHyezDqajgX2wZeRpPAnX+4266izK2xbFZHx1Uuz8qkaaEI+y1L7E2v5N6C+gfkEEoh4iUBMrr4zM/aQ1pkqj+jCcqa2Rqpy9/mBmTqDSUeb/p1w9AzQAYE3OwkmK4ltoQ9x6zfJO6zAwX98TO8MMKPlMa5VknIORs2ZDcT6Bxse+CYcZC0pU8Dvd1q7EoecCvSOsj2jwNxvfSmOKpCEm9BueXU/tTSM1PP0quQbGKOjfC2kpRUo6K5/Uc0FeSnuBIg710DphXS7ZfC2gcHTGBbFJUMtZK1xVU5CiK2WCpYdE+ZyVEhA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(136003)(396003)(39860400002)(346002)(376002)(38070700005)(26005)(66946007)(83380400001)(66476007)(110136005)(66556008)(4326008)(76116006)(8676002)(71200400001)(316002)(64756008)(6636002)(186003)(66446008)(53546011)(6506007)(2906002)(8936002)(9686003)(478600001)(52536014)(5660300002)(33656002)(7696005)(41300700001)(38100700002)(55016003)(122000001)(82960400001)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V1FTMWZkSEdGUWJHZEQyRXV3dzZFaWJsMTZUdXdSWUc0Ui9EcDRMa04ySU1w?=
 =?utf-8?B?MEd3ZktCQXJxaGFZajN4SHhRckw4cE9FWWxBWEZxTlRMUXY1Z25HY2oxNERI?=
 =?utf-8?B?YktqbXpjRnFYVGkySkpxd2xVQ2xEazVNUy9udTAxNTNiNkQ2bkNOY0g1NlVQ?=
 =?utf-8?B?cHBmL3pKbWxqcVpmZVFOc015NUVQTXhKeG5NR3ljVGtTamlhUXJXUmowRkFW?=
 =?utf-8?B?RTFHZnRrYWJDU3gxMWcwZDl5dVFFcHprMmVUdk90cEdOZllmY1JTcjFTenE4?=
 =?utf-8?B?NElmQzlzVmpvdG1KajNyQnRzMThaalR0Q0JrYldkRWJUdUg2Qm5mV3kwUEoz?=
 =?utf-8?B?K3JnaVdvNXdFdnYvSU9UTGtHUU1JSGtGd3VKQVliZ3FVakFJQUhNMjZFQmpI?=
 =?utf-8?B?OXp0YUE3aHQxRDNiaE5tY1Fuay9sYWRQWjZ1RHJuVCtWc0xLWnhxSW0yZy9a?=
 =?utf-8?B?QWFBaElsTnUrZFk5emlUblcyVDRnRXE2VmZVZk9RQnlqK21Jb2F4VUhPVDcr?=
 =?utf-8?B?UVNhT3lhVGkvblBmWm1vNmFSOVRHN01VNHBlUlQwQ1hvZzZXZEdmdEtnSzFM?=
 =?utf-8?B?RzJ2OGNsTUdtMG9UeGpHSFo4am5kM01vM1pRYzBaQnNWcVEwRjV4cFJIN3R0?=
 =?utf-8?B?TFVGdEJPTmRrZkx1TFo5ZUdOOENlUUtzYWkwY2VOb2xLZmFWMlF0OTlpTHZp?=
 =?utf-8?B?NktqZ3lRU3BnaFpMdFBsNDNpc2docHhOU0ZiLzByTStLSjRmcjdCcDZJQnla?=
 =?utf-8?B?MURXVUh1aHJhZlFsZEhLOWZXN3VjU1NUN3lFMmhLMWMzOTRzMVdoNDB6UStL?=
 =?utf-8?B?dmlTazljS0hVcUxWOHIwekhCUHNBWU5GU3VrczJIVEhoRDVWc3ZKak1iaVZW?=
 =?utf-8?B?TUMycDkyMU9zNHpCOVB0cGtveHQwMzBNKzE0d29vUFlrQkVGdE1CN3EyQS8v?=
 =?utf-8?B?OS95WWVmdFRMc0UyQ2FlNndzVTh5eUV1NG9iQjc2bTdMTTBmZmM5NjVlTEtj?=
 =?utf-8?B?MS93OUV6MDJBZjIwWkYrWU5mQzRaZXhRTTEwY2g0VWUrMi9ncklCMzRpbUJT?=
 =?utf-8?B?SDBsL0hOd2xFWjhQNG8rbWozVGRVblhVZlBYTFdDbWJOelBYRm05clJWYkhQ?=
 =?utf-8?B?TEw1MkVZZEJRN2ZWMENVc3NTaWF0NE5TN2E1MjNsYjcxSW94ditXV2xPNmM4?=
 =?utf-8?B?YTYvVFpVQnFtMXRDcGQ1eWJoTURlT1ZKMGlrTmlNL2E1WDNEUFc2ZmN4QXB0?=
 =?utf-8?B?NG96cGxrLzRKTXdCY1Nqa2xEM3RFQlNVSTg1MFZUWTVpU0cxVHJBQVJSUDFY?=
 =?utf-8?B?TTdzZ1JMUW95UXVaMnoxM1pldTM5VW9rRWh6YWhDU0lhMjhpbTRKRlROWmZF?=
 =?utf-8?B?OFBvcyt2ZDhzUlF2emdqNFExVXo2MmpJQ21kTk1QbmFkandjdjZ1SmhpRjhS?=
 =?utf-8?B?TlA1aWNRNUsvMmZjei9UOFhUT1pFNWRZdXltK1JrYnFlVzc1Wlo0MVp1aGRH?=
 =?utf-8?B?YkQ3bWpDMFRXL09MSS9TL3hYMkovSXNIeitDeEh4akZ1TkpxMTUzZjBla0dW?=
 =?utf-8?B?OWZBZDZsbElLdDdzTE5id0FCUzh1cTdPVjhjZXBKRHZNWmJyOU9iMjlEMENq?=
 =?utf-8?B?UFg3UGFPMTE4NHJEbkpOWkZ2eTdkVm9zalhkUkJRVDQxSFJVNVV0VHNxdUZh?=
 =?utf-8?B?aTlQZWkxaUFjM0lTVUhmem1vdHJGQ1Y4RnZLcE9Gb2NwRUZsNStTZ01nZitu?=
 =?utf-8?B?UjRUT0RkLzNRS0RzUmhzdVdJZFc3aFFlSDl5RHpRdXNtYUZDbmIrNEZjaGh4?=
 =?utf-8?B?MWRsUFBzRU5iUlNCQ3pTeUxpQTl2Y1NOaDJiVG5rSkR0Nithb2d4U0hVaHlZ?=
 =?utf-8?B?WlU2dWhWNU9jSWpDOUd4OEJsaml4N3h3M3N5QVVPWUlYMTRuZjl4T2dtaFly?=
 =?utf-8?B?UHRDZ243Y3V4UThSS243OUN0UnZjZTJKdFI2MHovS01lQllmTkU4bUkvZWwv?=
 =?utf-8?B?RE8yUnh3TFkxaW1ZSklvNEljNGtzYjR6N0w1R1RqS1MrRDZxdjZyVjZCNDFk?=
 =?utf-8?B?R1hFMXRvV1NPU2lzWFBNZjd5NEJ5TXd1UkZHbmw0WGltYnBiaWl1WjU0VVJB?=
 =?utf-8?B?TzBWMzRLa05jemNsTG44MDU1ZmNYNXByM1Z1RzgranhVRytrcllIMEdHekVQ?=
 =?utf-8?B?cmc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4630733e-e80d-4542-4f10-08da86c22e23
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Aug 2022 17:49:38.1564 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FLUuhIYPPfiDMG3e/5OhqJIPMXu5cSx5etot8ESYjlU7i6iULBixGd62UlCgswbkHRzGnOSRQQYhVFBBKl9f1NMFiJ98cIo/V412CIq0Gsg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3181
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Skip Bit12 fw domain reset for
 gen12+
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

SGkgRy5HLA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IE11biwgR3dh
bi1neWVvbmcgPGd3YW4tZ3llb25nLm11bkBpbnRlbC5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIEF1
Z3VzdCAyMywgMjAyMiAxMToxNCBQTQ0KPiBUbzogUm9wZXIsIE1hdHRoZXcgRCA8bWF0dGhldy5k
LnJvcGVyQGludGVsLmNvbT47IFNyaXBhZGEsIFJhZGhha3Jpc2huYQ0KPiA8cmFkaGFrcmlzaG5h
LnNyaXBhZGFAaW50ZWwuY29tPg0KPiBDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
Zw0KPiBTdWJqZWN0OiBSZTogW0ludGVsLWdmeF0gW1BBVENIXSBkcm0vaTkxNTogU2tpcCBCaXQx
MiBmdyBkb21haW4gcmVzZXQgZm9yIGdlbjEyKw0KPiANCj4gDQo+IA0KPiBPbiA4LzE4LzIyIDM6
MDAgUE0sIE1hdHQgUm9wZXIgd3JvdGU6DQo+ID4gT24gV2VkLCBBdWcgMTcsIDIwMjIgYXQgMDM6
NDM6MDRQTSAtMDcwMCwgUmFkaGFrcmlzaG5hIFNyaXBhZGEgd3JvdGU6DQo+ID4+IEJpdDEyIG9m
IHRoZSBGb3JjZXdha2UgcmVxdWVzdCByZWdpc3RlciBzaG91bGQgbm90IGJlIGNsZWFyZWQgcG9z
dA0KPiA+PiBnZW4xMi4gRG8gbm90IHRvdWNoIHRoaXMgYml0IHdoaWxlIGNsZWFyaW5nIGR1cmlu
ZyBmdyBkb21haW4gcmVzZXQuDQo+ID4+DQo+ID4+IEJzcGVjOiA1MjU0Mg0KPiA+Pg0KPiA+PiBT
aWduZWQtb2ZmLWJ5OiBTdXNobWEgVmVua2F0ZXNoIFJlZGR5DQo+IDxzdXNobWEudmVua2F0ZXNo
LnJlZGR5QGludGVsLmNvbT4NCj4gPj4gU2lnbmVkLW9mZi1ieTogUmFkaGFrcmlzaG5hIFNyaXBh
ZGEgPHJhZGhha3Jpc2huYS5zcmlwYWRhQGludGVsLmNvbT4NCj4gPj4gLS0tDQo+ID4+ICAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdW5jb3JlLmMgfCA1ICsrKystDQo+ID4+ICAgMSBmaWxl
IGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiA+Pg0KPiA+PiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdW5jb3JlLmMNCj4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF91bmNvcmUuYw0KPiA+PiBpbmRleCBhODUyYzQ3MWQxYjMuLmM4
NWUyYjY4NmM5NSAxMDA2NDQNCj4gPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
dW5jb3JlLmMNCj4gPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdW5jb3JlLmMN
Cj4gPj4gQEAgLTExMyw3ICsxMTMsMTAgQEAgZndfZG9tYWluX3Jlc2V0KGNvbnN0IHN0cnVjdA0K
PiBpbnRlbF91bmNvcmVfZm9yY2V3YWtlX2RvbWFpbiAqZCkNCj4gPj4gICAJICogb2ZmIGluIElD
TCspLCBzbyBubyB3YWl0aW5nIGZvciBhY2tzDQo+ID4+ICAgCSAqLw0KPiA+PiAgIAkvKiBXYVJz
Q2xlYXJGV0JpdHNBdFJlc2V0OmJkdyxza2wgKi8NCj4gPg0KPiA+IFdoaWxlIHdlJ3JlIGF0IGl0
LCBsZXQncyByZW1vdmUgdGhlICJiZHcsc2tsIiBmcm9tIHRoaXMgY29tbWVudCBzaW5jZQ0KPiA+
IGl0J3MgbWlzbGVhZGluZyBhbmQgZG9lc24ndCBtYXRjaCB0aGUgY29kZS4gIFdlIGRvIHN0aWxs
IGFwcGx5IHRoaXMNCj4gPiB3b3JrYXJvdW5kIG9uIG90aGVyIHByZS1nZW4xMiBwbGF0Zm9ybXMg
dGhhbiBqdXN0IHRob3NlIHR3by4NCj4gPg0KPiA+IEFzaWRlIGZyb20gdGhlIGNvbW1lbnQgdHdl
YWssDQo+ID4NCj4gPiBSZXZpZXdlZC1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGlu
dGVsLmNvbT4NCj4gPg0KPiA+PiAtCWZ3X2NsZWFyKGQsIDB4ZmZmZik7DQo+ID4+ICsJaWYgKEdS
QVBISUNTX1ZFUihkLT51bmNvcmUtPmk5MTUpID49IDEyKQ0KPiBIaSBSYWRoYWtyaXNobmEgU3Jp
cGFkYSwNCj4gDQo+IEluIGJzcGVjIDUyNTQyLCB0aGVyZSBpcyBhbiBleHBsYW5hdGlvbiB0aGF0
IEJJVDEyIHNob3VsZCBub3QgYmUgc2V0IGZvcg0KPiBhZGRyZXNzIDB4QTE4OCBjb3JyZXNwb25k
aW5nIHRvIEZPUkNFV0FLRV9NVC9GT1JDRVdBS0VfR1RfR0VOOSwgYnV0DQo+IGluDQo+IGJzcGVj
IDUyNDY2LCB0aGVyZSBpcyBubyBleHBsYW5hdGlvbiB0aGF0IEJJVDEyIHNob3VsZCBub3QgYmUg
c2V0IGZvcg0KPiBhZGRyZXNzIDB4QTI3OCwgYWRkcmVzcyBvZiBGT1JDRVdBS0VfUkVOREVSX0dF
TjkuDQo+IA0KPiBJIGFzayBpZiBmd19kb21haW5fcmVzZXQoKSBzaG91bGQgcGVyZm9ybSBmd19j
bGVhcigpIGJ5IGNvbXBhcmluZyBub3QNCj4gb25seSBHUkFQSElDU19WRVIoKSA+PSAxMiBidXQg
YWxzbyBjaGVja2luZyBvZiBGV19ET01BSU5fSURfUkVOREVSIGFuZA0KPiBGV19ET01BSU5fSURf
R1QgdmFsdWVzLg0KQmFzZWQgb24gdGhlIG5vdGUgaW4gNTI1NDIsIGFsbCBvdGhlciBXQSBub3Rl
cyBhcmUgb3ZlcnJpZGRlbiBieSB0aGUgY29tbWVudC4gU28gdW5sZXNzIHN0YXRlZA0Kb3RoZXJ3
aXNlLCBpdCBzaG91bGQgYXBwbHkgdG8gdGhpcyByZWdpc3RlciBhcyB3ZWxsLg0KDQpDcmVhdGVk
IGEgYnNwZWMgaXNzdWUgdG8gcmVxdWVzdCBmb3IgYWRkaXRpb25hbCBjbGFyaWZpY2F0aW9uIGp1
c3QgdG8gYmUgc2FmZS4gV2lsbCBzZW5kIGFuIGFkZGl0aW9uYWwNCnBhdGNoIGlmIHRoZSBjb21t
ZW50IGNvbnRyYWRpY3RzIG91ciB1bmRlcnN0YW5kaW5nLiANCg0KVGhhbmtzLA0KUksNCj4gDQo+
IEJyLA0KPiBHLkcuDQo+ID4+ICsJCWZ3X2NsZWFyKGQsIDB4ZWZmZik7DQo+ID4+ICsJZWxzZQ0K
PiA+PiArCQlmd19jbGVhcihkLCAweGZmZmYpOw0KPiA+PiAgIH0NCj4gPj4NCj4gPj4gICBzdGF0
aWMgaW5saW5lIHZvaWQNCj4gPj4gLS0NCj4gPj4gMi4yNS4xDQo+ID4+DQo+ID4NCg==
