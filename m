Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 593817EEDB7
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Nov 2023 09:46:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E94D10E726;
	Fri, 17 Nov 2023 08:46:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61FA010E2FA;
 Fri, 17 Nov 2023 08:46:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700210798; x=1731746798;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=QBkMUQYtO0vKzhQmozkKDu/lf8/9CGrc47iy7pMZoes=;
 b=fCMe3hQaJuLl/q/WtMuJk+sKJZ7JeITzimVvRB9rrM9fhsGsGdA+ch8c
 4JEn3LTM1k7naf51mMy7kiICnNKoslRXHgKX+S7L3TWZOi6dsICKlgG1d
 4S37Bu/VBE01xhciPN+oGPs3EZESd2/6Vd91P4Ups0nJZfH+AVlzoy863
 gxsSZCzABS3EbJxuj4JvLf9uL0y85dlA6ozPgioVY/fN+7ieOdDxM+zEp
 MtKxt9nW2oBH+8fwQMEZfzEUSW+D0U90s7Sy1oou/OzOUxlU/VnOx0rL9
 X+p1m3J+LBUCipCwiktQtAzpzqDM2jdgJQoK61s4MlBYjLDthrHm16Wmj g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10896"; a="457759173"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="457759173"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2023 00:46:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10896"; a="715474467"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="715474467"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Nov 2023 00:46:37 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 17 Nov 2023 00:46:37 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 17 Nov 2023 00:46:37 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 17 Nov 2023 00:46:37 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 17 Nov 2023 00:46:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O9Wr97CWBSzmfGCeckffj2HU24e8oADJKsNJ3Ul9TdQy/O8orjnisIC0DRbvKQPhluixQ4QhnRl936ZqRar6Pybsv/mZiQCeoyyNTLyzhE/NjpvMxxFLQJmJFbdFS4q0hmiLzTeZjxUh2yA9x8P2aIgtCBe2MUgxiWgEecwovM7d1Hb01jy9j+3pXWU66rObPJPMCxXYhjzemn5SL9yiYIwj/mNHXY0uH5oRbUo70dsNHx2zD+EiWcfx7PzcsJJO/knzXRLOHr02qtPWoyAp4EwjVrwR9VqMuVIjO9tZIfFwo2mBsHU4YKG9IM5vq2Rts/j89OQgR2gE5mX/hSYXiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QBkMUQYtO0vKzhQmozkKDu/lf8/9CGrc47iy7pMZoes=;
 b=l79xcGgcKG2IVuDpRaI7MIaNls1GegvWeBytqbuEIn+lvCGzfQzL4+MQKYEevhUigFlD80zrLfkxl62qhNYRdLnHArsxKZSYkaGTRaVqhc2omzwAQrod3lXgsc8GRELW3qcHXIaGjuw+p25yV61UDRPGpuu03Iz+yKFXIK5eF5H2zW/Faub4Ks7AeH6b2fw0PJ4TkymsUxXnW1PugvNzayGPCVdA2htcNrjDxOCKADr+fbLfHr+foQNet4XUwYXRmnYzHpwzt+D9rYIBcvq4BXSmjByUOReu5OwNqEOPmw9VeiTEoIYc8MTLK5wYf1bXWQWVuWyDhXneve29wmLZmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7382.namprd11.prod.outlook.com (2603:10b6:8:131::13)
 by CY5PR11MB6234.namprd11.prod.outlook.com (2603:10b6:930:25::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.21; Fri, 17 Nov
 2023 08:46:35 +0000
Received: from DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::b043:8f67:3566:67ee]) by DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::b043:8f67:3566:67ee%5]) with mapi id 15.20.7002.021; Fri, 17 Nov 2023
 08:46:35 +0000
From: "Coelho, Luciano" <luciano.coelho@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [Intel-xe] [PATCH] drm/i915: don't use uncore
 spinlock to protect critical section in vblank
Thread-Index: AQHaGSaArQJ8pF5ISkyZkn0q4woPlrB+MYd6gAABTYA=
Date: Fri, 17 Nov 2023 08:46:35 +0000
Message-ID: <90321c818be543e54c910ac3b5b7c16c97011c33.camel@intel.com>
References: <20231116112700.648963-1-luciano.coelho@intel.com>
 <ZVcUH7G40NQ4Q-R7@intel.com>
 <8cb3dbfe8290336233133b98b903adca0738ee4e.camel@intel.com>
 <ZVcnRzSDC8s8G073@intel.com>
In-Reply-To: <ZVcnRzSDC8s8G073@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.4-2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7382:EE_|CY5PR11MB6234:EE_
x-ms-office365-filtering-correlation-id: b595ce43-13c8-4c86-1054-08dbe749b4a9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: W2z/c52dx/HgoPUCP6+5lxctXS/b/38Gmcxo6uXo4oP0kJubYrv58I9axNPnM5mpCL4tJx68SIPEVEP2ggiE/VX/2zP6BunKpzWMkfVP9wNzawGAFKeXiLepn//V1d7UdLKO7Bavhc4s18ofVxtqkvLdSZE6GrIAR7dGzZc3Z0673i11w5AAv9k0YIqwnRMoJDSlwWsVIwkDn05fdwYYQ+Avyx0S4nayFv1NDidI05xeJvgIb/MDMPKE+hGnH++Y0d+aFLpmcv2Bs0bt1Q788IOxxIcnrLI4eflkSqCdzMUj4U5kDpxrZOGx6/F5G1gcvZfQCOh2dpHX1K/XFYqESJsmJU9Y/+zpF741Ca4CHEKVexizx+xD0AMDRBhoNC9yxSMXCfVRLNLxHzs3/H30pdUnnrT0ZkJLDPiR4nhQpgQEjIECuGdxTZYMMKS6GPGdo4oQxMTmU7SsvqlayfueDFwmifZ3kqdyN8ENOfU5yA1co9333f5YrMPG0JmF9AUbbWKcxFTil8wOXuKNxvecTfzgpv8S5v7Jjz5JPZVelNgJRm+6odi0h6ZlFdcZZQr22z4cTNvi7fDv+IypLRRKCA5ECVJVmu+DI7wakiqNpPfk/RpsFC7xaRCGmSrdd2zB
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7382.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(366004)(39860400002)(376002)(346002)(396003)(230922051799003)(1800799009)(186009)(64100799003)(451199024)(2906002)(41300700001)(4001150100001)(316002)(54906003)(64756008)(66476007)(66556008)(66446008)(6916009)(71200400001)(36756003)(8936002)(38070700009)(8676002)(76116006)(66946007)(4326008)(38100700002)(122000001)(478600001)(5660300002)(86362001)(6486002)(91956017)(83380400001)(82960400001)(66574015)(26005)(6512007)(2616005)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bU9mWXlvVnoyNWRhVzVVbjVncGprK0FNZGwrVWxQTXBrcnZKS3VWTTVrcjJB?=
 =?utf-8?B?T0xqNkI4eEtyRDNubDFSVW5rbWNQb1BNUXAzWGVzdzd6ZDB4K25Oa0xkaEZp?=
 =?utf-8?B?dHp3c1Blckx5NHdZUkcxMzA3T2c2R3pvK2tiMmRVUjRndVhaSVBkcmRDcEJ6?=
 =?utf-8?B?ZHNuUVIrc0R5c08wM0o4dW9GckprWmY3amRVVVhMdG9DNUc1dW94bUZCMGVs?=
 =?utf-8?B?dUhrM2FMcFgrZHRSQUtZaWdCTDN4dVlkdWdWSWEybEV6YVZCR2hBN1dzU01G?=
 =?utf-8?B?NEZ2WXIrNUFHOG5xeXZoM0tjZXphM29JMWhZNzVWTS9hUWlpODVHTWhwQzVU?=
 =?utf-8?B?KzdoWmhYN2RRT0dLWGJ3ZHc5WW04RzROS3Y0RnhDdDh4Zmx0NEJXVWFLVmtE?=
 =?utf-8?B?VE5OUFB4bitmVUdkdW5HakZ4RDVjUlp6bW94MTlNeDhobERtSis3WkVEMXlF?=
 =?utf-8?B?YUZ0TzJvZnIvN0hUcS9pS0g3WVRiZTAvMXk0RTlBUldpNC9kYmlWU0cxRjhO?=
 =?utf-8?B?REVHSVBsdGFjOHhaRnkwRjAxZUx0L213d3h2YlJJRkptUzJTNE5id1BwZkhh?=
 =?utf-8?B?Z2xJaVRsL2RuYzh2NXBldVBCL1RFbVVneUx6Y21ZeVhwU2s1WDJTT1dzUS9k?=
 =?utf-8?B?ZTljN29ST2hWNjJhWmYySGVOVUhmeGZ4NWNnN2IxUVZJK0IzSW1CR2FnbTFD?=
 =?utf-8?B?dUp5SDE1ekcrS3pXbCtjWjZieXFVdm0yblBqWmJ3cDNHRzk2Y2dQWW9OU1M5?=
 =?utf-8?B?Q0VaZkhRMUFqK0NpMFZrN0NrQ1ZBZzlidTlRY05YUjlrQW90REczcG9jb0lT?=
 =?utf-8?B?bGxPcWN0VUE5M1VxSEREblM0SUNuYjZJSFNDN21ZdnNla3Vub1Z6UkI3Qmds?=
 =?utf-8?B?NEhxRTJsNkVWM2NlaXhMWUtvak92cFJDT3lJQjBybnVIa2tGMDhqcXdhT2tG?=
 =?utf-8?B?MlNaS0F1QUZ1Qzg2VTdYeFNlZGJ2VWdjb2t3MG84cGFQeHdvNmV2UEd0Mndy?=
 =?utf-8?B?U1lISE14bUxxV3NKM0RYaWNoajZqc2R1SmY5U1ZnNjhYcm5UN1pJSlA1Lzh1?=
 =?utf-8?B?cE11WXU0YjFyS21GUWlEL3Q1NWZNUVVuNGpxMEFrbXVVNGhtcWN5d21OeEdO?=
 =?utf-8?B?NXQxRlMxQVJTWmNVclg1VDlNVnVGbGlMaWl2SGsxMk5oYzd1Y2c1c056VHNn?=
 =?utf-8?B?M2JWWTRHUnF6NDM1aCs2enlPeDFMaHhpZ2gwZzlxcWh4bXA1Qk50QkZlTTNx?=
 =?utf-8?B?VjlzRlFRLzBPSGd4d3FsTG1iWC80b3FKZVp2UVRtU3ExSUt6NXMyV3NLenMy?=
 =?utf-8?B?dEFMN1hNbEJmSnJOQWxFU01oQ3U0a2Y0TlExVEVSR3NXbTJMUVRnbFVZaEZm?=
 =?utf-8?B?ZUpoZnlrazlQKzUwOWU2Mit1UTJGeDJkMmVoOElHK3hJN2pGc1R2NG9iS0dI?=
 =?utf-8?B?RkUzOUV0YXp3T0o4N0djYTJ0SC81ZzN6SXVKZ3hnMlNDL0ZNVzdLUXBEaWha?=
 =?utf-8?B?Qlprb1hwNjR2VC8zOW9iZ0hRUUNEMXE5d1dHdWlTU0djQitBNlgyWURmd3Z3?=
 =?utf-8?B?TlJKeGJFazZ5NXoxcENjaDhVTGt1OCtnK2NhUXhHY2pYQVI4TW9CU3hIT0Ey?=
 =?utf-8?B?bGZIYUFzUkdDd0lKVnJGR1pEVUxNRWJsWWZEbVAzWk9nNkN2SU8zVS9ZMDhB?=
 =?utf-8?B?TjByRklKMU5yVWQwazZiRmRFSUwweHh4WnJLWFRIMDQ1Ym9HUTh2NWtCOWcw?=
 =?utf-8?B?VldjWFpzT25TcjdGMWl6WEJja1Z6L0Z4bEZxSjdDSmpKdlpmdzFYdStER0I3?=
 =?utf-8?B?RzA5aDdxeEh6NFB2QXhrak1ldDlsNzg5bWtSSUZmNHpGYnRqL2QzUU5OSHhi?=
 =?utf-8?B?dFpnZk11OXgyMUhKVitldFRYN3p4ckVUVU5FdzFob2J1OFNYYXYwWWIrUnV4?=
 =?utf-8?B?QVA0eVkzK1hrR2xxdmlhTHI3OTBpQWpiRmJXOTRpSUNDZXVVbmVtTWVuakpZ?=
 =?utf-8?B?SGMveWFlMHpNRG83dVFVQmV6aDZ0MklqbmVxQkFpZ0dnUjFKRjNDbGdtV1RW?=
 =?utf-8?B?MmlZZ1lYNjNlWlREWmZKM0JiRHVZbS9vcHpEN2lJN3F1RnRuTmdGbmF2Rmdq?=
 =?utf-8?B?RkZxTHIwbmxFc3l5RjdRbmlEMXczbTFEV1JoalovdEZWVW9waUEwNmJBUXE0?=
 =?utf-8?B?aHc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <3335E688536ABF4283905BE5C391A1DE@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7382.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b595ce43-13c8-4c86-1054-08dbe749b4a9
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Nov 2023 08:46:35.2476 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QJ/0dDjsmY/RUeD/c2Iw4XRcR4IPdGl6GTNtGu6NSkIqv2xnF1kacspBz7zws6l5IY3KtFUqm4ooNtIqHtS7hdcilrQo1fW4iLCQGRwYwr0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6234
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH] drm/i915: don't use uncore
 spinlock to protect critical section in vblank
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Vivi, 
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIzLTExLTE3IGF0IDEwOjQxICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIEZyaSwgTm92IDE3LCAyMDIzIGF0IDA4OjA1OjIxQU0gKzAwMDAsIENvZWxobywgTHVj
aWFubyB3cm90ZToNCj4gPiBUaGFua3MgZm9yIHlvdXIgY29tbWVudHMsIFZpbGxlIQ0KPiA+IA0K
PiA+IE9uIEZyaSwgMjAyMy0xMS0xNyBhdCAwOToxOSArMDIwMCwgVmlsbGUgU3lyasOkbMOkIHdy
b3RlOg0KPiA+ID4gT24gVGh1LCBOb3YgMTYsIDIwMjMgYXQgMDE6Mjc6MDBQTSArMDIwMCwgTHVj
YSBDb2VsaG8gd3JvdGU6DQo+ID4gPiA+IFNpbmNlIHdlJ3JlIGFic3RyYWN0aW5nIHRoZSBkaXNw
bGF5IGNvZGUgZnJvbSB0aGUgdW5kZXJseWluZyBkcml2ZXINCj4gPiA+ID4gKGkuZS4gaTkxNSB2
cyB4ZSksIHdlIGNhbid0IHVzZSB0aGUgdW5jb3JlJ3Mgc3BpbmxvY2sgdG8gcHJvdGVjdA0KPiA+
ID4gPiBjcml0aWNhbCBzZWN0aW9ucyBvZiBvdXIgY29kZS4NCj4gPiA+ID4gDQo+ID4gPiA+IEFm
dGVyIGZ1cnRoZXIgaW5zcGVjdGlvbiwgaXQgc2VlbXMgdGhhdCB0aGUgc3BpbmxvY2sgaXMgbm90
IG5lZWRlZCBhdA0KPiA+ID4gPiBhbGwgYW5kIHRoaXMgY2FuIGJlIGhhbmRsZWQgYnkgZGlzYWJs
aW5nIHByZWVtcHRpb24gYW5kIGludGVycnVwdHMNCj4gPiA+ID4gaW5zdGVhZC4NCj4gPiA+IA0K
PiA+ID4gdW5jb3JlLmxvY2sgaGFzIG11bHRpcGxlIHB1cnBvc2VzOg0KPiA+ID4gMS4gc2VyaWFs
aXplIGFsbCByZWdpc3RlciBhY2Nlc3NlcyB0byB0aGUgc2FtZSBjYWNoZWxpbmUgYXMgb24NCj4g
PiA+ICAgIGNlcnRhaW4gcGxhdGZvcm1zIHRoYXQgY2FuIGhhbmcgdGhlIG1hY2hpbmUNCj4gPiAN
Cj4gPiBPa2F5LCBkbyB5b3UgcmVtZW1iZXIgd2hpY2ggcGxhdGZvcm1zPw0KPiANCj4gSFNXIGlz
IHRoZSBvbmUgSSByZW1lbWJlciBmb3Igc3VyZSBiZWluZyBhZmZlY3RlZC4NCj4gQWx0aG9ndWgg
SSBkb24ndCByZWNhbGwgaWYgSSBldmVyIG1hbmFnZWQgdG8gaGFuZyBpdA0KPiB1c2luZyBkaXNw
bGF5IHJlZ2lzdGVycyBzcGVjaWZpY2FsbHkuIGludGVsX2dwdV90b3ANCj4gY2VydGFpbmx5IHdh
cyB2ZXJ5IGdvb2QgYXQgcmVwcm9kdWNpbmcgdGhlIHByb2JsZW0uDQoNClNvIGRvIHdlIGtub3cg
aWYgdGhlIGRpc3BsYXkgcmVnaXN0ZXJzIGFyZSBhZmZlY3RlZCBhdCBhbGw/DQoNCg0KPiA+IEkg
Y291bGRuJ3QgZmluZCBhbnkgcmVmZXJlbmNlIHRvDQo+ID4gdGhpcyByZWFzb24uIA0KPiANCj4g
SWYgYWxsIGVsc2UgZmFpbHMgZ2l0IGxvZyBpcyB5b3VyIGZyaWVuZC4NCg0KT2YgY291cnNlISBU
aGF0J3Mgd2hlcmUgSSBmb3VuZCB0aGUgaW5mbyBhYm91dCB0aGUgUlQgc3R1ZmYuICBCdXQgSQ0K
ZGlkbid0IGZpbmQgYW55dGhpbmcgZWxzZSByZWdhcmRpbmcgdGhpcy4gIE1heWJlIEkgc2hvdWxk
IGp1c3QgbG9vaw0KaGFyZGVyLCBpZiB5b3UgZG9uJ3QgaGF2ZSBhIHJlZmVyZW5jZSBhdCBoYW5k
LiA7KQ0KDQotLQ0KQ2hlZXJzLA0KTHVjYS4NCg==
