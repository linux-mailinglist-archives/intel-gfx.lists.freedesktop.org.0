Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3EE0542BB4
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jun 2022 11:41:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC5AF10E6F5;
	Wed,  8 Jun 2022 09:41:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57FAD10E48C
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jun 2022 09:41:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654681304; x=1686217304;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=HgPXIBwLYeeej6flO8zRf7C+I/rv/YKx6PcYVceYPaA=;
 b=if0OAvfrTDWAF0fg6bNmbNPZzvPaogmNlslzI3rVNDXalHGEvfppSDi1
 IeenDBOXyMqvNhZO0httzN19r81fPszRVRkxXqFBYo8QxQpMK836xafhC
 pYOrl1y3wW8MUlH5c0lDz6He3GyuSFFIzDlIQqav/eKSxdBUWyX9q7AYe
 nBSrLyWBhhvJ9wHN+OKtwGdZ6r2WwezVdOFKQm7FfRfOb6RAjQcSWs665
 NGZTPdCtRxd8LzWOHuJSRWNKn8azdSn18AxSPpx/JQEO9oYfYygZY88pO
 EZU4TDKqf4yb3YpAGeVauCnnbBQevSAYpKY4FcESWjAo5hrAPo+qGCodU g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10371"; a="363166056"
X-IronPort-AV: E=Sophos;i="5.91,285,1647327600"; d="scan'208";a="363166056"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2022 02:41:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,285,1647327600"; d="scan'208";a="723768960"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP; 08 Jun 2022 02:41:43 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 8 Jun 2022 02:41:43 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 8 Jun 2022 02:41:42 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 8 Jun 2022 02:41:42 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.43) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 8 Jun 2022 02:41:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mNJL5eMLCVon9CwltXP/mLZ0Hz3sjKonrVyOGiFYDKQPrzyySpnqxDIuGQ/PM/rFSFbi3pbAibG3R4qRaUP+xu5B9wd7KI2BOIFYLMttFYsotahBb7X6K67NiWtB67Oc0fGmOOXSxx2IB/17ac5z8elgA2srcXc8ZviVc/+h8uoO++46lnm2saAjYgvSa9BtEEvIy3xVkVONT8ofqzFLv45e4uaE5TjKl9BP4B6HQEuQSYal4U1omSUyFSqNq/fMuTTRK3vsxdo4SKsDIbjFM4OKpvrjjUp7j0NukAYx2v90r8FPqadBYpyne1rUjT6BMmY8t/zdsa4hlzBf0xUP1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HgPXIBwLYeeej6flO8zRf7C+I/rv/YKx6PcYVceYPaA=;
 b=Yykdt4xVkQSoxdlpDCu6ADoyrTVaWTdO0q/BLmL4eLYtXlQb/HI/TDKCaicu8rlc/y0MdetQLxcZm/DTwOuGgpqNlmdr+8BpwgDe9yrwOuI51DxCJbDlOEgT1eaRv3IGNIrd768E580UwHvQAcYS0DXoDbqG9FQTOUaIqP8id4mcBGhJF9nvwaG7QTe4Ed2OApogIgKEDmM0nQPJ6WRtbQvhHLM/6gr+7d4SXLpWahGVGvRSIqOOeBH6r4uhojPDXi+4bNPAy3BSYiURBhf+qzokgoy9lUNBURhyHT8CG/6W0eGQzUhM3u6uze65TipDvy5ahaDeWo+i4FNCq2niDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ0PR11MB4880.namprd11.prod.outlook.com (2603:10b6:a03:2af::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5314.12; Wed, 8 Jun
 2022 09:41:40 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::a4a2:3569:ce75:fd0f]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::a4a2:3569:ce75:fd0f%3]) with mapi id 15.20.5314.019; Wed, 8 Jun 2022
 09:41:40 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>, "Souza, Jose"
 <jose.souza@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915/opregion: add function to check
 if headless sku
Thread-Index: AQHYdzK5I5Fh8Y/l3EawA39lhGFtWq09oLGAgAAIngCAADdkgIAEKJiAgAADxwCAAFN+AIABiy4A
Date: Wed, 8 Jun 2022 09:41:40 +0000
Message-ID: <02ce1ff0d1968e54dfc43ef62fb6e2c0857ba21d.camel@intel.com>
References: <20220603101411.3087789-1-jouni.hogander@intel.com>
 <20220603101411.3087789-2-jouni.hogander@intel.com>
 <87k09xor2e.fsf@intel.com>
 <eeac0a25543a75cbeb39eaa61a1abbfdcfb94a6f.camel@intel.com>
 <0069e1028bfccf5f1c3f7b8d8a129c202f4cf764.camel@intel.com>
 <f69cf635fc2da871baee0bbbbf946addf9a35ddf.camel@intel.com>
 <875ylenr4t.fsf@intel.com>
 <8a83b4595e603df3ed8975a31425639b714b57bd.camel@intel.com>
In-Reply-To: <8a83b4595e603df3ed8975a31425639b714b57bd.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 58b22bd9-0ede-4543-fb68-08da493316ed
x-ms-traffictypediagnostic: SJ0PR11MB4880:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <SJ0PR11MB48809324F4BF500D81B97A618AA49@SJ0PR11MB4880.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: F0QPgfS9pm1lL5EW115o9X5P61CNIHR5DSX6VpUvZaz9Yz8RYIwyKaFDb+Vz67pY1YKKTvZyTsNxluPluuCLyRmnqCmRWDa0x3sz9x8Ks1HS2zg1jJHkM88LZZ4Al0WGODslGsvqisoVDWbjZHZjQ6gemMIQSSeneaaQOAOahCbsWp0MSSqD4xJKsqEuEQ2Xl0Tb+vkz05p4lGjnbmDu88Lfx/2CqWsF5+xnWT7XrSu3kdDIubpdAbTA4zTvUEMsU9LvWohtgTAvodsEvNN6tZeucaxrBLoYso9WSUFjz5ZE5tcASWjyTuVH1++HnpCMcsBxlir1G9wW0BDFiryeKcJQDHnuGO4h42wjFA1QGU6NnGfpxdIYLbUtOuIxwkl4kEVODQ29mMg01/TkwFqvbKgzsncokGdQMrwIm5+yYc6TGvHmdDm3CNwVvpDfo+VJiYb7A/0ZfzK0Iw/RrCgWug26qwaq0zlGZ9g6cQKIlAKKZRrBfJsHZK4V3oA/HeC/ulUq/7+4lq8cjP7lIjN9rWum89Xf1Sp/RanX8yr60G+b34o1Jp+sK4HCmbK35kyl2V/jJWVa1ZeNbUjYUFcveWE8iGqtGSQx3bLZSiXP2yOIE1+O7/1+lnT/4gsZwmhLaicsgwZe5mAZ2M7/hkCmHJF3w3VCiT3/a7vp+NA29/BE9jPWn+rJ688mZT9ZOORAO+v0Iw7Tz5uFjssI3iystg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(110136005)(36756003)(91956017)(64756008)(76116006)(6512007)(66476007)(66946007)(66556008)(38070700005)(66446008)(83380400001)(8936002)(2906002)(186003)(38100700002)(508600001)(86362001)(26005)(66574015)(6506007)(5660300002)(6636002)(82960400001)(8676002)(122000001)(2616005)(71200400001)(316002)(6486002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dmVHRC9BWko5alQvc093YUpnVVQ0b1dVTm1aWjRqbE9zMUxpSm5acmw0c2RW?=
 =?utf-8?B?bHNYNS9lanh0dHRzaGM5dURMZlNwVW1GcTZkQWRKSXIzcW5CdnFyL0NRYkJz?=
 =?utf-8?B?Z2tITDg2ZUV1dTB2QU5vWE44eUl4dGhya3JZVDlEb1FmU0dUVjlscHZoV0dL?=
 =?utf-8?B?VzlkWDdiOERVNFo3ekROSG5nNUc3QVhFMTVYK1JmRVU2cGJ2eXU3Zm9VQ1Yr?=
 =?utf-8?B?dzNsN04yc21NOXNsMVlqVHhyM2FLR1NEOHhsQjdUbFNiWXJ0TVhWSkhVWTds?=
 =?utf-8?B?V0ZNM0wxN3R3YUVxQjdFM1lBankyajd0VDB4T041VUF5QWFkb2ZIcHVDTDF0?=
 =?utf-8?B?ZXQ5enBTcWg3aEVMVnZueEEzaUlheXVyOTl5R1pXd3RncW1PcitBa2NNRFhY?=
 =?utf-8?B?OHNKVmxybVNRSUMveDc5bW9qVUFNRjAweklhV1EvR1BVS1dlTXZKKzhHYTRC?=
 =?utf-8?B?ckZORm44aEM4bkpBUW41VllzQnE2NlI1YVlNUUg5b1MvVDRnbC9IRnA4ZzRQ?=
 =?utf-8?B?b29nWi9BaTJxUzM4OHdzZWdKQ3ZHcElaaTRUYnpiMHlrWFV3U3p3aXlENDhk?=
 =?utf-8?B?RTlrL0NqVUFxV3FCbjFrTmwyWmhnaFRFWDZuWEpjZkFzS3NJRjBBYmpYNnl0?=
 =?utf-8?B?eVpLcldSSUUxR0JsZWZ2UjN0VWhLZk04MmJVYVdjblVDUjNqWFBtcENqeWZZ?=
 =?utf-8?B?c2tCTzh2eXNUOTF5ZUQvL0hDaHpVNW9VNTVpSlFwZEJaMy9nMWg5aFFiMFF0?=
 =?utf-8?B?blViRFZCaTMzSHNuRDYxR2diTldWajQvakFlZFdPZ3RQa1J4UHFtNWppNmxq?=
 =?utf-8?B?Mi9mTytDdzNDU2pkUE84Mm5vek1qNkRSbS9MSVRaSWJCenpNRnN2NXFZRXRC?=
 =?utf-8?B?QWd3bHpHclhVWFc3cmlXUmpPS0ZrZytWVkRLNVlZQytZc0ViWmdzdlhmb2N5?=
 =?utf-8?B?V2Y3bTBZTnFWdDlzK1pBeDVQMkVlV3B2bU9WVXdUeG03cEhDbWFjOEV4eHMr?=
 =?utf-8?B?ZlRaL3UxazZiWFFBQkd2L0FyaEF1U016Yy9qLy9ib211bVRUS3doaHoxYnBU?=
 =?utf-8?B?bnBCdXRzSjJ5eGN2RGwrOGdZZ0lBWXFoaFBiZVpGVUxIcWN6ZjVRUW5BL2Q0?=
 =?utf-8?B?VW1hYThhVFFPOG16cWQ5WGNqVEJxSjhrenV5dXlKd2xSNmpVNDdnSU9DcnFT?=
 =?utf-8?B?MU9TU3lqL2xHaHZLWm5DODE0UVVxaVF2UGFUQzNXQVVuOUkyVjhWMFNTTWlq?=
 =?utf-8?B?UEk3WUJnMWJnN0xiNzQwaWxERDJCVU9jS1RQSU9zSXlKUmdld0F3dVZMZEJV?=
 =?utf-8?B?bEVibUI2Z01EUHB0TnpuTWdKMkFscGNXR1VvemNVNXpUNXNURUhxa3NBZW9K?=
 =?utf-8?B?aDZTMlJSVERpcFNpeVk4OCttVk93dEhoa0Q5WTBSWFZKVEUrYmh5VXRvSUVB?=
 =?utf-8?B?OWZmK1Z1NjBmOHhNcXVzSW1IcVdPaTUwb2JReU9oRDFQSHQvRWJ1dks5djMw?=
 =?utf-8?B?ekVrNmdjcldTbFYzZHRENC85YThuZFlORjVnbU1OTnFjdkxvcitUY0t0TG9W?=
 =?utf-8?B?VjMrZWdwRzhMbmJNUTNrUlI3NFNxS1p1UnZaaHRuRnEwUWw3UVJ3RE05K0ky?=
 =?utf-8?B?RVB5MzRsemxSKzhiRU1iRlEwRTRHVlFQalZsTXdGNmJhaG56SkdFekpQOStS?=
 =?utf-8?B?aVN4SWs1eWIxWFk2YWNWZFRvRDk0N3d1OFY5blNCbldBRFAyRU5UMjBBVjJR?=
 =?utf-8?B?cm9zVXcvVlh6Y3Y4N3ZoZ0JQOFJ3S3ltMU5VRERYYjNBM1E5M0ZBdFA2VGNS?=
 =?utf-8?B?em1KYnVwUVFSTHdXOFVCNHE0b1V2bnR6Y3ZLeW0wamJDWmhNOVdZTnA3ME5G?=
 =?utf-8?B?UHhQK3VqL0VhL05Oemg5ay96NXhYQnRvek1JSkROS1hacGErK1Z1bncvTUIw?=
 =?utf-8?B?MFVSc1NnMVlRWVhHQW1Jd1NmSGtpWng0V3ZDMmJMaGtnb3RORUNPTUU2RGp3?=
 =?utf-8?B?UTluK2g2QXF0RVQrRjRvZHZ1Mm9HRVdFdXFpVy9qcTIvWWxWZjRNRDF4T2Er?=
 =?utf-8?B?K1gvY01vMXBGeHlIWGF6elBiR1diMGRSc0VhVFc1SU1OY0UxeHV2WmthLzh0?=
 =?utf-8?B?b0kwWkJKVlF4TFp0L0xmNXpxenRkQm16ampZeUNWL3RtaEIwWGhqNlNlUEtV?=
 =?utf-8?B?SjdrRHNoT2xxSjFNbmY1TjM0aWJwZHNrU2FlaFBVYzNIbGIzR2ZuMFVVUklK?=
 =?utf-8?B?Q2Fqemg4QTBOWnM4OGRMaEYrcDlqQmtTc3paU2p0WXMrRDcrRlRuN2doMjVh?=
 =?utf-8?B?cHpTQk1qM3ZFNTdVNnZEN2R3TVYvOTM1ZG5nNFhRbW9EZG0xQkk0a3drdWR2?=
 =?utf-8?Q?uz0SOiJ4+TjQT3JN78uAmZLILwjHPyMlibQKP?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <BA3391040CEABD4A92BE598D8573307B@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 58b22bd9-0ede-4543-fb68-08da493316ed
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2022 09:41:40.3045 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: l/zysdcBOZlJW+6dAVLneJRDiSKGg4byNd+miTe1mb5YNeTvtRD+XNJC8Sok2IpT+oN2NtwiGDmMfUdZBZ1cttVkuSA6D/gpZ8C7y8ycizQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4880
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/opregion: add function to
 check if headless sku
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

T24gTW9uLCAyMDIyLTA2LTA2IGF0IDEzOjE1ICswMDAwLCBTb3V6YSwgSm9zZSB3cm90ZToNCj4g
T24gTW9uLCAyMDIyLTA2LTA2IGF0IDExOjE2ICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
PiBPbiBNb24sIDA2IEp1biAyMDIyLCAiSG9nYW5kZXIsIEpvdW5pIiA8am91bmkuaG9nYW5kZXJA
aW50ZWwuY29tPg0KPiA+IHdyb3RlOg0KPiA+ID4gT24gRnJpLCAyMDIyLTA2LTAzIGF0IDE2OjMy
ICswMDAwLCBTb3V6YSwgSm9zZSB3cm90ZToNCj4gPiA+ID4gT24gRnJpLCAyMDIyLTA2LTAzIGF0
IDEzOjE0ICswMDAwLCBIb2dhbmRlciwgSm91bmkgd3JvdGU6DQo+ID4gPiA+ID4gT24gRnJpLCAy
MDIyLTA2LTAzIGF0IDE1OjQzICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4gPiA+ID4gPiA+
IE9uIEZyaSwgMDMgSnVuIDIwMjIsIEpvdW5pIEjDtmdhbmRlciA8DQo+ID4gPiA+ID4gPiBqb3Vu
aS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gPiA+ID4gPiB3cm90ZToNCj4gPiA+ID4gPiA+ID4g
RXhwb3J0IGhlYWRsZXNzIHNrdSBiaXQgKGJpdCAxMykgZnJvbSBvcHJlZ2lvbi0+aGVhZGVyLQ0K
PiA+ID4gPiA+ID4gPiA+cGNvbiBhcw0KPiA+ID4gPiA+ID4gPiBhbg0KPiA+ID4gPiA+ID4gPiBp
bnRlcmZhY2UgdG8gY2hlY2sgaWYgb3VyIGRldmljZSBpcyBoZWFkbGVzcw0KPiA+ID4gPiA+ID4g
PiBjb25maWd1cmF0aW9uLg0KPiA+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+ID4gQnNwZWM6IDUz
NDQxDQo+ID4gPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmku
aG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+ID4gPiA+ID4gPiAtLS0NCj4gPiA+ID4gPiA+ID4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfb3ByZWdpb24uYyB8IDEyDQo+ID4gPiA+
ID4gPiA+ICsrKysrKysrKysrKw0KPiA+ID4gPiA+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9vcHJlZ2lvbi5oIHwgIDcNCj4gPiA+ID4gPiA+ID4gKysrKysrKw0KPiA+
ID4gPiA+ID4gPiAgMiBmaWxlcyBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspDQo+ID4gPiA+ID4g
PiA+IA0KPiA+ID4gPiA+ID4gPiBkaWZmIC0tZ2l0DQo+ID4gPiA+ID4gPiA+IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9vcHJlZ2lvbi5jDQo+ID4gPiA+ID4gPiA+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9vcHJlZ2lvbi5jDQo+ID4gPiA+ID4gPiA+
IGluZGV4IGYzMWU4YzNmOGNlMC4uZWFiM2YyZTZiNzg2IDEwMDY0NA0KPiA+ID4gPiA+ID4gPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX29wcmVnaW9uLmMNCj4gPiA+
ID4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9vcHJlZ2lv
bi5jDQo+ID4gPiA+ID4gPiA+IEBAIC01Myw2ICs1Myw4IEBADQo+ID4gPiA+ID4gPiA+ICAjZGVm
aW5lIE1CT1hfQVNMRV9FWFRCSVQoNCkvKiBNYWlsYm94ICM1ICovDQo+ID4gPiA+ID4gPiA+ICAj
ZGVmaW5lIE1CT1hfQkFDS0xJR0hUQklUKDUpLyogTWFpbGJveCAjMg0KPiA+ID4gPiA+ID4gPiAo
dmFsaWQgZnJvbSB2My54KSAqLw0KPiA+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+ID4gKyNkZWZp
bmUgUENPTl9IRUFETEVTU19TS1VCSVQoMTMpDQo+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+IEhl
cmUgd2UgZ28gYWdhaW4uDQo+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+IFdoYXQgZG9lcyBoZWFk
bGVzcyBtZWFuIGhlcmU/IFRoZSBzcGVjIGRvZXMgbm90IHNheS4gRG9lcw0KPiA+ID4gPiA+ID4g
aXQgaGF2ZQ0KPiA+ID4gPiA+ID4gZGlzcGxheSBoYXJkd2FyZT8gQXBwYXJlbnRseSB5ZXMsIHNp
bmNlIG90aGVyd2lzZSB3ZQ0KPiA+ID4gPiA+ID4gd291bGRuJ3QgYmUNCj4gPiA+ID4gPiA+IGhl
cmUuDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gVGhpcyBpcyBmb3IgaHlicmlkIHNldHVwIHdpdGgg
c2V2ZXJhbCBkaXNwbGF5IGh3IGFuZCB0aGUNCj4gPiA+ID4gPiBwYW5lbCB3b250DQo+ID4gPiA+
ID4gYmUNCj4gPiA+ID4gPiBjb25uZWN0ZWQgaW50byBkZXZpY2UgZHJpdmVuIGJ5IGk5MTUgZHJp
dmVyLg0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gV2UgaGF2ZSBJTlRFTF9ESVNQTEFZX0VOQUJM
RUQoKSB3aGljaCBzaG91bGQgZG8gdGhlIHJpZ2h0DQo+ID4gPiA+ID4gPiB0aGluZw0KPiA+ID4g
PiA+ID4gd2hlbg0KPiA+ID4gPiA+ID4geW91DQo+ID4gPiA+ID4gPiBkbyBoYXZlIGRpc3BsYXkg
aGFyZHdhcmUgYW5kIGhhdmUgZG9uZSBvdXRwdXQgc2V0dXAgZXRjLg0KPiA+ID4gPiA+ID4gYnV0
IHdhbnQNCj4gPiA+ID4gPiA+IHRvDQo+ID4gPiA+ID4gPiBmb3JjZSB0aGVtIGRpc2Nvbm5lY3Rl
ZCwgaS5lLiB5b3UgdGFrZSB0aGUgaGFyZHdhcmUgb3Zlcg0KPiA+ID4gPiA+ID4gcHJvcGVybHks
DQo+ID4gPiA+ID4gPiBidXQNCj4gPiA+ID4gPiA+IHB1dCBpdCB0byBzbGVlcCBmb3IgcG93ZXIg
c2F2aW5ncy4NCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gTWF5YmUgd2Ugc2hvdWxkIGJvbHQg
dGhpcyBvcHJlZ2lvbiBjaGVjayBpbiB0aGF0IG1hY3JvPw0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+
ID4gPiBNYXliZSB3ZSBuZWVkIHRvIHVzZSBJTlRFTF9ESVNQTEFZX0VOQUJMRUQoKSBhbHNvIHRv
DQo+ID4gPiA+ID4gPiBwcmV2ZW50DQo+ID4gPiA+ID4gPiBwb2xsaW5nLg0KPiA+ID4gPiA+IA0K
PiA+ID4gPiA+IFRoYW5rIHlvdSBmb3IgcG9pbnRpbmcgdGhpcyBvdXQuIEhBU19ESVNQTEFZIEkg
YWxyZWFkeSBub3RpY2UNCj4gPiA+ID4gPiBhbmQNCj4gPiA+ID4gPiBpdCdzDQo+ID4gPiA+ID4g
bm90IHN1aXRhYmxlIGZvciB3aGF0IHdlIHdhbnQgaGVyZS4gSSB0aGluayBib2x0aW5nIHRoaXMN
Cj4gPiA+ID4gPiBjaGVjayBpbnRvDQo+ID4gPiA+ID4gSU5URUxfRElTUExBWV9FTkFCTEVEIGFz
IHlvdSBzdWdnZXN0ZWQgaXMgZW5vdWdoLiBUaGF0IHdpbGwNCj4gPiA+ID4gPiBwcmV2ZW50DQo+
ID4gPiA+ID4gd2FraW5nIHVwIHRoZSBodyBpbnRvIEQwIHN0YXRlIGZvciBwb2xsaW5nLg0KPiA+
ID4gPiANCj4gPiA+ID4gQSBoZWFkbGVzcyBza3Ugc2hvdWxkIG5vdCBoYXZlIGFueSBEREkgcG9y
dHMgZW5hYmxlZCwgbXVjaA0KPiA+ID4gPiBlYXNpZXINCj4gPiA+ID4gY2hlY2sgZm9yIHRoYXQu
DQo+ID4gPiANCj4gPiA+IENvdWxkIHlvdSBwbGVhc2UgY2xhcmlmeSB0aGlzIGEgYml0PyBXaGF0
IGV4YWN0bHkgeW91IGFyZQ0KPiA+ID4gdGhpbmtpbmcNCj4gPiA+IHNob3VsZCBiZSBjaGVja2Vk
PyBBcmVuJ3QgRERJIHBvcnQgYWxzbyBkaXNhYmxlZCB3aGVuIG5vbi0NCj4gPiA+IGhlYWRsZXNz
DQo+ID4gPiBzZXR1cCBpcyBpbiBydW50aW1lIHN1c3BlbmQ/DQo+ID4gDQo+ID4gSSBhbHNvIHRo
aW5rICJoZWFkbGVzcyIgYW5kICJEREkgcG9ydHMgZW5hYmxlZCIgbmVlZCBjbGFyaWZpY2F0aW9u
Lg0KPiA+IFRoZXkNCj4gPiBhcmUgb3ZlcmxvYWRlZCB0ZXJtcy4NCj4gDQo+IEluIGEgcHJvcGVy
bHkgc2V0dXAgaGVhZGxlc3Mgc2t1LCBWQlQgc2hvdWxkIGhhdmUgYWxsIHBvcnRzIG1hcmtlZCBh
cw0KPiBkaXNhYmxlZC4NCg0KU2hvdWxkIHdlIHRha2UgaW50byBhY2NvdW50IGhlYWRsZXNzIGJp
dCBpbiBvcHJlZ2lvbiBwb3NzaWJseQ0KY29uZmxpY3Rpbmcgd2l0aCBWQlQgY29udGVudHM/DQoN
Ck5vdyBhcyB5b3UgcG9pbnRlZCBvdXQgdGhpcyBJIHN0YXJ0ZWQgdG8gdGhpbmsNCmludGVsX29w
cmVnaW9uX2hlYWRsZXNzX3NrdSBjaGVjayBjb3VsZCBiZSBhbHNvIGluIGhlcmUgYXMgYWRkaXRp
b25hbA0KY2hlY2s6DQoNCmlmICghaW5pdF9kcCAmJiAhaW5pdF9oZG1pIHx8IGludGVsX29wcmVn
aW9uX2hlYWRsZXNzX3NrdSgpKSB7DQoNClRoaXMgd291bGQgcHJldmVudCBpbml0aWFsaXppbmcg
YW55IGNvbm5lY3RvciBpbmNsdWRpbmcgc2V0dGluZyB0aGVtIHVwDQpmb3IgcG9sbGluZz8NCg0K
PiANCj4gaW50ZWxfZGRpX2luaXQoKSB7DQo+IC4uLg0KPiANCj4gaWYgKCFpbml0X2RwICYmICFp
bml0X2hkbWkpIHsNCj4gZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sDQo+ICAgICAiVkJUIHNh
eXMgcG9ydCAlYyBpcyBub3QgRFZJL0hETUkvRFAgY29tcGF0aWJsZSwgcmVzcGVjdCBpdFxuIiwN
Cj4gICAgIHBvcnRfbmFtZShwb3J0KSk7DQo+IHJldHVybjsNCj4gfQ0KPiANCj4gDQo+IEFsbCBE
REkgc2hvdWxkIHJldHVybiBlYXJsaWVyIGluIHRoZSBhYm92ZS4NCj4gU28geW91IGNhbiB1c2Ug
dGhlIG51bWJlciBvZiBlbmFibGVkIGNvbm5lY3RvcnMgdG8ga25vdyBpZiBpdCBpcyBhDQo+IGhl
YWRsZXNzIHNrdSBvciBub3QuDQo+IA0KPiBTbyB5b3UgY2FuIHNraXAgdGhlIHBvb2xpbmcgaW4g
Y2FzZSB0aGVyZSBpcyBubyBjb25uZWN0b3JzLg0KPiANCj4gPiBTZWVtcyB0byBtZSB0aGUgdXNl
IGNhc2UgaGVyZSBjb3VsZCBiZSB0aGUgc2FtZSBhcw0KPiA+IElOVEVMX0RJU1BMQVlfRU5BQkxF
RCgpLCBhbmQgdGhhdCBjb3VsZCBiZW5lZml0IGZyb20gcG9sbGluZw0KPiA+IGRpc2FibGUuDQo+
ID4gDQo+ID4gQlIsDQo+ID4gSmFuaS4NCj4gPiANCj4gPiANCj4gPiA+ID4gPiA+IEkgY2VydGFp
bmx5IHdvdWxkIG5vdCB3YW50IHRvIGFkZCBhbm90aGVyIG1vZGUgdGhhdCdzDQo+ID4gPiA+ID4g
PiBzZXBhcmF0ZQ0KPiA+ID4gPiA+ID4gZnJvbQ0KPiA+ID4gPiA+ID4gSEFTX0RJU1BMQVkoKSBh
bmQgSU5URUxfRElTUExBWV9FTkFCTEVEKCkuDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gTm8gbmVl
ZCBmb3IgdGhpcy4gSSB0aGluayB3ZSBjYW4gZ28gd2l0aA0KPiA+ID4gPiA+IElOVEVMX0RJU1BM
QVlfRU5BQkxFRC4NCj4gPiA+ID4gPiA+ID4gKw0KPiA+ID4gPiA+ID4gPiAgc3RydWN0IG9wcmVn
aW9uX2hlYWRlciB7DQo+ID4gPiA+ID4gPiA+ICB1OCBzaWduYXR1cmVbMTZdOw0KPiA+ID4gPiA+
ID4gPiAgdTMyIHNpemU7DQo+ID4gPiA+ID4gPiA+IEBAIC0xMTM1LDYgKzExMzcsMTYgQEAgc3Ry
dWN0IGVkaWQNCj4gPiA+ID4gPiA+ID4gKmludGVsX29wcmVnaW9uX2dldF9lZGlkKHN0cnVjdA0K
PiA+ID4gPiA+ID4gPiBpbnRlbF9jb25uZWN0b3IgKmludGVsX2Nvbm5lY3RvcikNCj4gPiA+ID4g
PiA+ID4gIHJldHVybiBuZXdfZWRpZDsNCj4gPiA+ID4gPiA+ID4gIH0NCj4gPiA+ID4gPiA+ID4g
DQo+ID4gPiA+ID4gPiA+ICtib29sIGludGVsX29wcmVnaW9uX2hlYWRsZXNzX3NrdShzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZQ0KPiA+ID4gPiA+ID4gPiAqaTkxNSkNCj4gPiA+ID4gPiA+ID4gK3sN
Cj4gPiA+ID4gPiA+ID4gK3N0cnVjdCBpbnRlbF9vcHJlZ2lvbiAqb3ByZWdpb24gPSAmaTkxNS0+
b3ByZWdpb247DQo+ID4gPiA+ID4gPiA+ICsNCj4gPiA+ID4gPiA+ID4gK2lmICghb3ByZWdpb24t
PmhlYWRlcikNCj4gPiA+ID4gPiA+ID4gK3JldHVybiBmYWxzZTsNCj4gPiA+ID4gPiA+ID4gKw0K
PiA+ID4gPiA+ID4gPiArcmV0dXJuIG9wcmVnaW9uLT5oZWFkZXItPnBjb24gJiBQQ09OX0hFQURM
RVNTX1NLVTsNCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gV2Ugc2hvdWxkIHByb2JhYmx5IHN0
YXJ0IGNoZWNraW5nIGZvciBvcHJlZ2lvbiB2ZXJzaW9uIGZvcg0KPiA+ID4gPiA+ID4gdGhpcw0K
PiA+ID4gPiA+ID4gc3R1ZmYNCj4gPiA+ID4gPiA+IHRvby4NCj4gPiA+ID4gPiA+IA0KPiA+ID4g
PiA+IA0KPiA+ID4gPiA+IFllcywgSSB3aWxsIGRvIHRoaXMgY2hhbmdlLg0KPiA+ID4gPiA+IA0K
PiA+ID4gPiA+ID4gQlIsDQo+ID4gPiA+ID4gPiBKYW5pLg0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+
ID4gPiA+ICt9DQo+ID4gPiA+ID4gPiA+ICsNCj4gPiA+ID4gPiA+ID4gIHZvaWQgaW50ZWxfb3By
ZWdpb25fcmVnaXN0ZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUNCj4gPiA+ID4gPiA+ID4gKmk5
MTUpDQo+ID4gPiA+ID4gPiA+ICB7DQo+ID4gPiA+ID4gPiA+ICBzdHJ1Y3QgaW50ZWxfb3ByZWdp
b24gKm9wcmVnaW9uID0gJmk5MTUtPm9wcmVnaW9uOw0KPiA+ID4gPiA+ID4gPiBkaWZmIC0tZ2l0
DQo+ID4gPiA+ID4gPiA+IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9vcHJl
Z2lvbi5oDQo+ID4gPiA+ID4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9vcHJlZ2lvbi5oDQo+ID4gPiA+ID4gPiA+IGluZGV4IDgyY2MwYmEzNGFmNy4uNWFkOTZlMWQ4
Mjc4IDEwMDY0NA0KPiA+ID4gPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX29wcmVnaW9uLmgNCj4gPiA+ID4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9vcHJlZ2lvbi5oDQo+ID4gPiA+ID4gPiA+IEBAIC03Niw2ICs3
Niw4IEBAIGludA0KPiA+ID4gPiA+ID4gPiBpbnRlbF9vcHJlZ2lvbl9ub3RpZnlfYWRhcHRlcihz
dHJ1Y3QNCj4gPiA+ID4gPiA+ID4gZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+ID4gPiA+
ID4gPiA+ICBpbnQgaW50ZWxfb3ByZWdpb25fZ2V0X3BhbmVsX3R5cGUoc3RydWN0DQo+ID4gPiA+
ID4gPiA+IGRybV9pOTE1X3ByaXZhdGUNCj4gPiA+ID4gPiA+ID4gKmRldl9wcml2KTsNCj4gPiA+
ID4gPiA+ID4gIHN0cnVjdCBlZGlkICppbnRlbF9vcHJlZ2lvbl9nZXRfZWRpZChzdHJ1Y3QNCj4g
PiA+ID4gPiA+ID4gaW50ZWxfY29ubmVjdG9yDQo+ID4gPiA+ID4gPiA+ICpjb25uZWN0b3IpOw0K
PiA+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+ID4gK2Jvb2wgaW50ZWxfb3ByZWdpb25faGVhZGxl
c3Nfc2t1KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlDQo+ID4gPiA+ID4gPiA+ICppOTE1KTsNCj4g
PiA+ID4gPiA+ID4gKw0KPiA+ID4gPiA+ID4gPiAgI2Vsc2UgLyogQ09ORklHX0FDUEkqLw0KPiA+
ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+ID4gIHN0YXRpYyBpbmxpbmUgaW50IGludGVsX29wcmVn
aW9uX3NldHVwKHN0cnVjdA0KPiA+ID4gPiA+ID4gPiBkcm1faTkxNV9wcml2YXRlDQo+ID4gPiA+
ID4gPiA+ICpkZXZfcHJpdikNCj4gPiA+ID4gPiA+ID4gQEAgLTEyNyw2ICsxMjksMTEgQEAgaW50
ZWxfb3ByZWdpb25fZ2V0X2VkaWQoc3RydWN0DQo+ID4gPiA+ID4gPiA+IGludGVsX2Nvbm5lY3Rv
cg0KPiA+ID4gPiA+ID4gPiAqY29ubmVjdG9yKQ0KPiA+ID4gPiA+ID4gPiAgcmV0dXJuIE5VTEw7
DQo+ID4gPiA+ID4gPiA+ICB9DQo+ID4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gPiArYm9vbCBp
bnRlbF9vcHJlZ2lvbl9oZWFkbGVzc19za3Uoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUNCj4gPiA+
ID4gPiA+ID4gKmk5MTUpDQo+ID4gPiA+ID4gPiA+ICt7DQo+ID4gPiA+ID4gPiA+ICtyZXR1cm4g
ZmFsc2U7DQo+ID4gPiA+ID4gPiA+ICt9DQo+ID4gPiA+ID4gPiA+ICsNCj4gPiA+ID4gPiA+ID4g
ICNlbmRpZiAvKiBDT05GSUdfQUNQSSAqLw0KPiA+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+ID4g
ICNlbmRpZg0KDQo=
