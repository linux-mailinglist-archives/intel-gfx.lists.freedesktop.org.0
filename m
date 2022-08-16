Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1558594E4F
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Aug 2022 03:55:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DC9CB7DDB;
	Tue, 16 Aug 2022 01:55:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24E22D93FC
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Aug 2022 01:54:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660614897; x=1692150897;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=w9yYxmG924tvrXTY0f4N1412KG6cjYdTPl7TAAjzbSA=;
 b=PKjBA0XdAe+jc7N1ZvO+1AvOSa6ufj8olmA0dWn2mZXj6cbov69OnSEs
 KThCqYmYHGl0I+2dMxhd7HRxkdtEJUTR/7t4IURi/dxLOFPcFeozzvbEA
 o+EFtIgtjAvIsGYXb8yWkv+GB2WdzJk5Ace+GxDa2ifSNjfGeuJLf3pDR
 V1Oxhu4UnxROu02NloIItBVfUWhpR1HI0hYC0BHJLVANqtTBloADaR/xj
 eJ78b6qZQywk2khnopYOug/wcMHZCfnIcIEH7wgW7ssiBJJ0K0yXeXtUn
 t8tez1TcSbqeg1BEptW5QgkMwfsC6I4TRy1UI48yj8jSPrEWKqT1TsSqs A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10440"; a="318092017"
X-IronPort-AV: E=Sophos;i="5.93,239,1654585200"; d="scan'208";a="318092017"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2022 18:54:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,239,1654585200"; d="scan'208";a="675032643"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga004.fm.intel.com with ESMTP; 15 Aug 2022 18:54:55 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 15 Aug 2022 18:54:55 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 15 Aug 2022 18:54:54 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Mon, 15 Aug 2022 18:54:54 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.43) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Mon, 15 Aug 2022 18:54:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i27zog8g7V4zyF+gazAN/6wxS9qM4UBYQpdsCO7kAUDoMa/DMcuE2tfjHsebitztnQk5ZiaIqv+ULINyzsN2ht8Q9jeDBuRVVATbA3ycYJlscBPshw+tVjnvQhpu8a1HKf5AhHjyESHcDzwATtLStyE/8HNLECmQ0t5UYBqnwDWdEjpN/a4+oB/653qY7QXo3LUbG5H6Cmzq0LRnM0dHVZHHOBhAXnI1XdsF5+ZGnaoRoCgEmYPx6Eit57OXI2XtdcY/ftLkaOzNLkH50OPiQwKt0urSr0hSlUrLYZ0fWMbUBfexS5YtRENgeF3qz/+1DRIfdfJicrQVKtc34jz9zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w9yYxmG924tvrXTY0f4N1412KG6cjYdTPl7TAAjzbSA=;
 b=kTJLSXff8De3fSPUFvVRFFCLlvVGB+8o618oxQPdK+LlM02Aa/P7bfMWTKWgIubQKSzBrpiFDh2tF5Kl/PrxliUSm8Iibpwi9G5oLObRk3zTr2Ui7FjfcdXsnkHnDNVNhACULVMkOvEw6osbhk3LT61XWmn7u0MB0VnPkj5C8x7kUCtGq521jMhqUB+yFAdvuz1pPuNYp9mu7LUQE1ihP2Y8WQ5KQmbxm4KwzPODfR01F1xiVM2WKrRDfOMDA5eCb8FddA4uU8/OxKtyC5YNVmN6FhKicb4auHv62IxFkv0w1HVkanMPQdQOu8MufWGWh73rIpQfroJ6ypxIHQLU7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 BYAPR11MB3749.namprd11.prod.outlook.com (2603:10b6:a03:b0::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5504.17; Tue, 16 Aug 2022 01:54:52 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::fdd1:18b1:3e9c:b03e]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::fdd1:18b1:3e9c:b03e%5]) with mapi id 15.20.5525.011; Tue, 16 Aug 2022
 01:54:52 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Harrison, John C" <john.c.harrison@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [Intel-gfx 1/2] drm/i915/selftests: Use correct
 selfest calls for live tests
Thread-Index: AQHYsMC+enooPAoM0UeSPFUcvtNiVK2wjoQAgAA2soA=
Date: Tue, 16 Aug 2022 01:54:52 +0000
Message-ID: <bdc0d8ac2e84012fc72a0b892fba3c60421c19f2.camel@intel.com>
References: <20220815160134.1527085-1-alan.previn.teres.alexis@intel.com>
 <20220815160134.1527085-2-alan.previn.teres.alexis@intel.com>
 <442e7caa-054e-9c1c-7d02-4d0a5cad6244@intel.com>
In-Reply-To: <442e7caa-054e-9c1c-7d02-4d0a5cad6244@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5b69560b-9192-4c77-4d50-08da7f2a4f54
x-ms-traffictypediagnostic: BYAPR11MB3749:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LRLSs2dNR9JMjqdfRmpuDQVX4aUIlr4zJPfH84TPXGLJZYJ088GuzR81xQ1Jh5U99qyGsb32ijkhJuTaP1v5P78IpmRbF9XoTeD7JxJCA0b9nSKwR7BjAs4dH2g9ZkRKJXgLyJ5Ie/7NSTwSxNbDyPwc1MvJQo3G27Ck2q8hmulWpjJMsV0fH8SuYrQuf2U4O6L+PjHZ7vBHAu4gS3W1uBUxtRFj7vwye9czZeIbFcI/y2eWk5wmwRcB0UUUYap6aq7hBqMpe1ZSOf82dDhxcO87aiwYkZ0vzDhoU32J3BaqCRla1x6CUetGGagoFCdXf2s88uC6N2xn+qjZa1vMQWd04ed3W5xDm9ustv9CDnF7WiQplD1p9eWTv/aqkOjPyfJ8+lreCe4En6vdb0HKb8X4Nx3vAeMJ/Jg6r8tBNdHLsm2zxpTKeicV9Uw/vXgZ+htlXpmT6yRu5SqSfYSu5QokIbUHPkp0DyvbooKwWsClfsuUGeVM5qAcq5Oo92iJkXRu3iIWX/eOT4L6pzuhIFuvp8r0gjMeazQhQY2ahFM1HINrn/jWhX5Fe904FVY1Ol1z1dqm9Y4KiJsQHWuqUiiULluIajME2QFmqzbTTnwSwKFJR94L9o2WY/NrZ5LxaFDPiQzHmf6jKpkNXhp3olg1TnMV6K+dDkwzu8pdaL2nWdh/PisOruxYBbMQFmy5jdELRYUFpoc6Pxj3fMI7Kn8qoGpJlVncmcQ2XXrcmCs4+qEfWiwRX9Zdp6oTUtH8pDV8Wg1KK3je5ctKQSUZJjoVyIk/SH5JiSLXpV6cRr4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(376002)(136003)(366004)(39860400002)(396003)(2616005)(53546011)(76116006)(66446008)(186003)(66946007)(64756008)(2906002)(91956017)(66476007)(66556008)(8676002)(36756003)(6486002)(26005)(478600001)(41300700001)(71200400001)(6512007)(6506007)(38070700005)(82960400001)(86362001)(122000001)(110136005)(316002)(8936002)(4744005)(38100700002)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NE4rRDd3bVgyVkhsNDNhVlRuTkw3aTFNMEFlNjV3T1UwOWtJVlVRQVNIU2lK?=
 =?utf-8?B?c2plbkRqeHFzUU1ua1dSbFZZTWUvSDNwT0tnTWQ2K1FhUFgvVGZjM0UxOEhl?=
 =?utf-8?B?RUpwRXY2M05WWVI0UDVtNjZVaE1RUVFDeDRKVGFWRzZJQ0IvNzRvNE81SlU1?=
 =?utf-8?B?M2FFUEViNUQ2TGJZZVVkamswazdIaUVLSFNLWUY1aG5XL2FKRHB1K082OEEw?=
 =?utf-8?B?ZEJWdzhHMGt4N29CR1kvWU91cnIyeUJ0d05wbjgxZ3B4R1RRakFzVjUwS01z?=
 =?utf-8?B?akxyTHNsNWdQMVR1QklNK2RKb1ZvRHNCMXhGVGYrTkJpY0NwVC96ek9XeUl4?=
 =?utf-8?B?T2xwZWtNdk5XYUYvSkdzOW5iNnNvSDNjSTJ1QkRwYTlvWlFRR1NOMG1GVEh2?=
 =?utf-8?B?SEFMMXh1YkV3c2JpN1k2d2ttdG9BN2JtQ01OTStmUnhGZjFvdEQ0VUlCbzBy?=
 =?utf-8?B?VjFLSFBvclp5UTdnWUxjdW11K3lzdmJCY05veGwxVWI1S0F5RVVFYWpCTkh5?=
 =?utf-8?B?WWZETWpaSzZNdHpFMFFYL2JTdXFWK0FuUm15U1J3bzZPck4vRjc5R3pHK1hK?=
 =?utf-8?B?RGc3NDM0N0ttSzRjVGlCSTRkWWhmQm1qK2xjbzJoSzVWS2hUK0E3SHl0NXRC?=
 =?utf-8?B?YTRsUmRhNk04akdCcVdGK3JWWXZCRkFYUUhZVUhIU1pETDRDQXp0ZTdscm4v?=
 =?utf-8?B?aGRrZUFPdk9hcVhPNXRZQTBpSkRoRUhOZVJmNFhoQWdrMEhuaG9nRFA1MU5W?=
 =?utf-8?B?bWhzRXdGOWREelBlaUkvdEpVMThCK0R2RE4zNjNlN2RFNXpybHI1azQxWi9G?=
 =?utf-8?B?RFBkbzNpNWJIK29Da1VkM2RKZXBkd1dabTdSTTZDaXBrZ3cwTDY5Y1p0SXBw?=
 =?utf-8?B?MEJXWGw2aHhQNTFOZ3hWS1NoaHYrRG0wNWQvWERRajVya0pzNjZjME9TaWl1?=
 =?utf-8?B?NTBRSDREMk44M3RiRTcwaW1WRWZvOUdPMTQyTGpJbHAyckUxMG02dExpaTJR?=
 =?utf-8?B?ZzVVVklLd1VPVElRektoOTFHV1hld0VVZmhJUVFKNEpvQkkwZzJxTlJpNnFp?=
 =?utf-8?B?UDdVYlFZdHdvd3IyRVRibDBFSnk1Qkgrc1o1TlJSZUR5eTZnNGlUL0Q4L3VO?=
 =?utf-8?B?UFVnVUlwa3NUWUhDd2pSMUJIOGx2aitlT2huNEVmeGFycUpXdHpMSzVzWVNQ?=
 =?utf-8?B?dWc3TDZod3Fjb0p3b0IvblprL1oyOW1WVlpMOWVtNDNQYUFWbUlNd2R2UTEy?=
 =?utf-8?B?WDVYUWZhUFdKazZDczFDTGU3RUxNYUpnckRJM0N0bzBvV3gvRkkySXBMYmZH?=
 =?utf-8?B?dnNZclR3S293M1VPaytHVk5lTHNTa0lmMkl0bVBMdmZJa3FRakRyUndIZmNH?=
 =?utf-8?B?aUh6S2Q5T2pWQUpsMnV1Ym1GNCtrRUxIOXhtQWh2R0hQNFdXdngzN2dKU2xi?=
 =?utf-8?B?V2FqQ0UzbWFncmVJYVpzWGphYVFXdnlWVENNdnVnaXQ0M0JURU9mNjJxTmtU?=
 =?utf-8?B?bkNiTHIyNW5Gclp2ZmpJRllOanJyTGsvbHcxa2RrUkluUW94N2pReHl4Rll3?=
 =?utf-8?B?OGI3anByeE54aWk5ZFlpTzliTGJVdENwbFJpODJkd2N5NWJCRks0cXpObnVm?=
 =?utf-8?B?SWZJUG1UMkc2ZXdnZld2TkxSWmc1OWZ0Q3VyZktLcTQ5Y0FZaUovaWZrUW9R?=
 =?utf-8?B?MUVCVnF6bDFyZm5IMlZwVEZDYW85MEF5R1JiZERqajRPQWRNS016MXYxSkU1?=
 =?utf-8?B?bnFKZHlMZDQ3S0NVU3ZuNE91OG9EM2VucVIxM0lKOUtLRlJoOEh0QmlTU0ho?=
 =?utf-8?B?alZ1UXlscVl4bkZBY2x2SlpRbVp4RnpaZjFMVlpaUm5yTXYySy8rR2VZd0x2?=
 =?utf-8?B?QzlTYkRGZkhMcmc5RTk5bGZkUCtYWGN5VGVSTkVYc1MvQTlBVkErNFlaQXBG?=
 =?utf-8?B?amR5N2djV21vcHRpQllwQW1zVDV5T0dhVGFGNFhzQjJqUnRxQjVuL3d6ZVR1?=
 =?utf-8?B?amRwbXpFeXlFNmEvZGtCT1hFK204Wnl4ZmRpeFFaM3g2bkt2OTJRdDV2MU9Z?=
 =?utf-8?B?ZDh2ZTV3a0kybCt5WDh3N2hQZC83SEk5Y3E2b1FISlFJenFDUCtYZ2QxeHh6?=
 =?utf-8?B?WlZqUjFzQXVVUndnV282Z2RSd095OUFLdXZPN0FWMGNJei9EbFBxODBjK3RN?=
 =?utf-8?Q?OXARpkAqng4KVsT7hD3aGyU=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <06B2F284723C8341ADAA0070A8DBE5A0@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b69560b-9192-4c77-4d50-08da7f2a4f54
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2022 01:54:52.2000 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2rwDAMlRdjJGDwXJPS58h2sSMZ+vkgF2WnZAuDbO5PXudCGTO+pOqR5h/qDepMQOWzXQ3MAw/NjEJnngm3cFQD2UJ/c4jD97NvDAababbsinZR5lp+yzHZcXFTiBMYvN
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3749
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-gfx 1/2] drm/i915/selftests: Use correct
 selfest calls for live tests
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

SG1tbSAtIGkgZ3Vlc3MgSSd2ZSBiZWVuIGl0IHdyb25nIGFsbCB0aGUgd2hpbGUgKGJlZW4gdXNp
bmcgdGhlIHNhbWUgc2NyaXB0IGZvciBhIHdoaWxlKS4NCldpbGwgZml4IC0gdGhhbmtzDQoNCi4u
LmFsYW4NCg0KT24gTW9uLCAyMDIyLTA4LTE1IGF0IDE1OjQwIC0wNzAwLCBIYXJyaXNvbiwgSm9o
biBDIHdyb3RlOg0KPiBPbiA4LzE1LzIwMjIgMDk6MDEsIEFsYW4gUHJldmluIHdyb3RlOg0KPiA+
IEZyb206IE1hdHRoZXcgQnJvc3QgPG1hdHRoZXcuYnJvc3RAaW50ZWwuY29tPg0KPiA+IA0KPiA+
IFRoaXMgd2lsbCBoZWxwIGluIGFuIHVwY29taW5nIHBhdGNoIHdoZXJlIHRoZSBsaXZlIHNlbGZ0
ZXN0IHdyYXBwZXJzDQo+ID4gYXJlIGV4dGVuZGVkIHRvIGRvIG1vcmUuDQo+ID4gDQo+ID4gU2ln
bmVkLW9mZi1ieTogTWF0dGhldyBCcm9zdCA8bWF0dGhldy5icm9zdEBpbnRlbC5jb20+DQo+IEFz
IHBlciBwcmV2aW91cyByZXZpZXcsIHlvdSBzdGlsbCBuZWVkIHRvIGFkZCAgeW91ciBzLW8tYiBh
cyB3ZWxsIGFzIHlvdSANCj4gYXJlIHBvc3RpbmcgdGhlIHBhdGNoLg0KPiANCj4gQWxzbywgd2h5
IGlzIHRoZSBzdWJqZWN0ICJbSW50ZWwtZ2Z4IFgvMl0iIHJhdGhlciB0aGFuICJbUEFUQ0ggWC8y
XSI/IA0KPiBUaGUgbWFpbGluZyBsaXN0IGF1dG9tYXRpY2FsbHkgYWRkcyB0aGUgIltJbnRlbC1n
ZnhdIiBwcmVmaXguIFlvdSBqdXN0IA0KPiBuZWVkIHRvIHVzZSB0aGUgc3RhbmRhcmQgIlBBVENI
IiBvciAiUEFUQ0ggdiMjIyIgYXMgYXBwcm9wcmlhdGUuDQo+IA0KPiBKb2huLg0KPiANCg==
