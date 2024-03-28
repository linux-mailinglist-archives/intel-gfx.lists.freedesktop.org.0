Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FDC88904AE
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 17:12:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 010BD1124C1;
	Thu, 28 Mar 2024 16:12:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WmyN/g8K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88B261124C1
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Mar 2024 16:12:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711642357; x=1743178357;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=vT6ZlVWnqEif82CnNQyCz5hs8WEZ4j90ukeX2yDf1+g=;
 b=WmyN/g8Kz7GFwDvuVCdpTHmpvXWsbSrcexAV2XYd639UXXCjwZv8O1em
 zEI4VwPhCL7oZweshyuP45TWBH0ZLhzHaQuYHYosNkJD+R5m0DZmMQpoJ
 04E+xzZ6I2WnaRnEE9cEyXDF7DiZkAJYcU17SEtEF5Eu4QdNcaoO/RYYh
 FCWF6QnkZQI4rgq5AXWGHal2fqg/SmUppOKTdtqnX1t0XHa4GtlglcH4z
 kJrTI1BoLTWhBVrqLjRwgk1tnmn+NOfWJoeSzT1U8ITWcCshFKi7HisyK
 P+3Jhv0qGqT8jJA1oXON5ZmSfO0XWHmsDzG9S5tbf4fnuX55vrWbCuak5 Q==;
X-CSE-ConnectionGUID: cUWuqS/gTM2u/xIF0ceNIQ==
X-CSE-MsgGUID: JrapuKbZR2e1DSRbYwPN+w==
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="6739875"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; 
   d="scan'208";a="6739875"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 09:12:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; d="scan'208";a="16574376"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Mar 2024 09:12:26 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 09:12:25 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 28 Mar 2024 09:12:25 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 28 Mar 2024 09:12:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hzxdhzh2LYivDsfNTdga4nhJclp44G7KwbkgtZtmYeFT9EnUzH8xGO4suO0EDKHnyAIVZuB28FjCKZR64FKwuuhV7ZXo78/xWzcRfw9eWJdTptsy3R5I6ZkHxVfSkXOoEyB906C9mUQIODeWsO78Y44wkgDxd0kgMGVBDpGHwx7pVIABuQ4qLgFV6puEV50DmOak3zOHzkzdRIsxizmEqytrAUQVyVjUJWJ+4+bD988Vkxz+6RqdMqJpeUqEsnvQdyWDYZkx3WIZab+bFYChfZURfY4hXG5UoESWfrMP3kfAl5XwsfbCz1MftVmk3ggL7MpL9oZJkX6b+2syLOB5aA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vT6ZlVWnqEif82CnNQyCz5hs8WEZ4j90ukeX2yDf1+g=;
 b=F/BO9w/jsnVgORZSQx4QVWgvOy2GZCFDAEug3t0geVC9Teh+D4BdZ/Q4df+1eTad/XvZu+3MGhOjMx3uITxpwmzgmTPVrvBzPtsNDsp9uPSL/PGx2GjTtkKWV8c0un5F+PwSKxVExO/riPX51sU4SYIpZiWE81jCgsrljLwTtELxFHV8OcpQHY3oWcQsm2LvsIi2hUuy/L9qBfJOZmMZ1ysOXzXU/drpNSzBI3ht8DinJnhlM2JWIXvYF9cLuuip3QRCH+v5EcpM5T7T/mIlIxnLlnLS2UvAioEyI6VK/OpxjBAJVRlm+Gc1Zlv/7IhXJw9Q+sSeGGD6OquANoQnJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CY8PR11MB7685.namprd11.prod.outlook.com (2603:10b6:930:73::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7409.32; Thu, 28 Mar 2024 16:12:23 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff%7]) with mapi id 15.20.7409.031; Thu, 28 Mar 2024
 16:12:23 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 13/13] drm/i915: Optimize out redundant dbuf slice updates
Thread-Topic: [PATCH 13/13] drm/i915: Optimize out redundant dbuf slice updates
Thread-Index: AQHagG7CDIzvTa7YAkmfSTgTH0Rh8bFNVH9Q
Date: Thu, 28 Mar 2024 16:12:23 +0000
Message-ID: <DM4PR11MB63608D633F7B24E30C127B00F43B2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240327174544.983-1-ville.syrjala@linux.intel.com>
 <20240327174544.983-14-ville.syrjala@linux.intel.com>
In-Reply-To: <20240327174544.983-14-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CY8PR11MB7685:EE_
x-ms-office365-filtering-correlation-id: 074c606a-d497-4302-0b46-08dc4f41da18
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RykC3UU6zE7GeMqOS3WekGUCHfzDRZ2f0OmDxI6Q13QnDTdiPElwJQrpdmrYeabJPLpQa+eTsPyMwXGqDq4TlLjTwChXctm6qzA+SqgSm6WeXuA523Eo4KqcDMU/8oRSWMAFPNc0rkbNBMb4zX2zqZuse5pYiTiqe86snppnVvDcAmNH0gshNFAjYvMGLgNylzTjb+ok34g7DtdKVqSWmURfD30uvSC6Mm92bOk2eaj0HF/L7+NgmOsHpMqHAaGv0FFTiB3a+17gsjZZKsM0W/e+d0iJKiieTqmetR26gxkMiNQEEqNblS5ZWT751dCnP9kQml+XVywglHugeqKbOL+enxl/CYRKJoBlOV5eMTOrCqeLhnZx0ntPiZaKF88seU7JGHP9oN5P9raKtB8UMPWetVVdDS0QOROIgPsmUj3R1u0dFgflKO7AXwKQJKdausFt74Dt6DJIabrJO0AmREP6hGMdVRpUCCZUnoNARCfc167Ni44d5UTe5ZHRKpWVIa76EMAXJh8BJQPs2E2/eFP1C3i5QeqM/iWkG9nwhZH4771GIii37ugSq8nCEyhG8r2//zmuFInsAjg8MDoKeLqn9m+wpIfGTQ/5sBc5cDpAe86MWY6cORQa17kWHC8cnyKDQhCtXR6mYtXUJdkY0RumT7qVzZzWjR3seZZY6kcN5oMXvi3/mfqBAJkitWarjY0IHtDkuTh7fKyUZ0BX5w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?c081anNOUy9pK2NncHE0SkhIc0N2RWdhTFBESU4rWUNUTE0zSC90MHlsaFN3?=
 =?utf-8?B?ZEFIRnFNKytBZ09nanZUQ1F4dFJOeWlkeEJFQ0doSmdscHZnWFZ1ZlZqdmk1?=
 =?utf-8?B?VHJUUnBWVnVoWGlvbWFlaDViNGh6bW9XSDBoQ3ZIdmh4d0pZMXlBOG1VOS9l?=
 =?utf-8?B?U1dHWXl1aWRBRzZPRTJhc016YVlEall3UmZTMW0rdGVtcVp5TDUzRlR3ZEcw?=
 =?utf-8?B?ZkFoQ0k5M0xhMy9vRDRRY3phaTIzSUhlVVBwZ3d2N25VY1Z2dzQ4WG94Y0ZN?=
 =?utf-8?B?MEFQUlVHVlBwNVJOdzl6SnoyT1FsOGNPSjRlLzVJdnIvYUtGYlNyeVYrSzBj?=
 =?utf-8?B?RlBTNVBOQ01yYWdqc3lHdWdyZDRmdUhZd1cwczdjdUNjS1JlcTU2ZGV2dFJ2?=
 =?utf-8?B?cGc3ZVJrUVBkSm9vRFBFdEUvR1VQWHM2T1QxaE9aSE04RHpSdXJCTnI1cnhM?=
 =?utf-8?B?TFE1bVhXNEI4WWNyWHRCMndRSFRqMVJzSFFvb202ZEZMbFZ0V0JzdzUxVXhF?=
 =?utf-8?B?a21wOC9JSzdMSHNLbmcyR1lySlJUU3duUlNvUkFnZzNyczg5WjdHMXk0RVBH?=
 =?utf-8?B?VWsrVjI1NmgrNUlnaGphWDl6eWg1Vmdzc3BJbTR2N2tCQUZMVk5nOGNZUDVk?=
 =?utf-8?B?ZEdxTHZqY3k4R2huN2ltV3JnR0dtZnloQmNEdU01UG9uS2hESytQZzI2bHli?=
 =?utf-8?B?MHNZL3V4alFwLy9TWk5CS24rMmpNWllVVXRhV3R6YWlzaXpodklrY1BMNGQz?=
 =?utf-8?B?L2pvZWtmczRyOVZrL0I4aGtLWTlyVXVQa3A4czl6cjU4ZWp3UnhUSGptamFv?=
 =?utf-8?B?NzM2ZCtmdFExRWpmZWFvNlF2YjR1aFZVa1huWDZlL3hidnd2RmtTZjIrMWk1?=
 =?utf-8?B?d3p5TjJPdzJjZTV5V0xFaUR2UHZaSHBqRlA2andKT2JjYWFiOVZENExma2Nl?=
 =?utf-8?B?R0VjcWsrS3ZBaFhjWURsNUdZc3lHUEZyM0M0SGVXT25zL3JYcUZtcGQzdnFm?=
 =?utf-8?B?ZzAwQVJHTG1tdE9obW1GWkFSWkgwL1NMNW5oRlZpcUVrOWFHSjNHcmNWZS9v?=
 =?utf-8?B?b3pQNEU2WVpQMmlQejdpWVpFU2o5MlAvNERNdXZmS1FMTmJmd3NEd2x5Z291?=
 =?utf-8?B?dlp2UnpPSmxJRHp2RG5tcEtaYlM0T2JGMEZIendXdVRKczQycUozc2d5c3V4?=
 =?utf-8?B?TDh6ZTROb1ErRzM0blJNM1FTeUEycmJxelg1dXJ1TG9udjcrNDQzM2tDZG9Z?=
 =?utf-8?B?VDRva1cvZFlwVnR5OTlqcm5wZzNYUW96aTJnYklwZ0hFK0xCbGFHZHZRNjR1?=
 =?utf-8?B?N2RGYndHYkZVS2kyazZQREhoTE1wRkZnRUN3SmJLNFNyUWlkMHBoQ1BaeUJS?=
 =?utf-8?B?Ky9ORmZoQStGWWx4UHZrVVJWUzZJSEV4UXBQSGdnYWxtM1lUUExYeWtUL1Jz?=
 =?utf-8?B?d29HTVNydzAwNGU5bFlSMDVkYjdWa0M4UXVGbk1vUVJTNFlUQ1AyN2U0Nkls?=
 =?utf-8?B?VWhWWnU2RFdzRnNxOUlrNDNxclBSeXh6b0t3MXR2bGxVcjZJaVNGeXF6a3dL?=
 =?utf-8?B?djhzUUZLdUxOM083N1J3RUk2R3JSa1J4RmdUK2dGdjNUR09MN0ZRdmk3RVdn?=
 =?utf-8?B?UGhtQU5WSHV4RStYdDg0NXFJNXdUR0k2WTc3RDc0SCtHL3NqdzlOZU5DalRU?=
 =?utf-8?B?VVJzZkRqZFJTWUorMjFqaUoxUjN5aDdscEdiYkVSa1Fnak10czdUcm4rM3dF?=
 =?utf-8?B?T2dmdngxdEcxY3cxOXdlOU9rTVcyQWxsUml6Y1UxckpWeTBoa3ZEb1JVWHJD?=
 =?utf-8?B?Vk9SOWZIRlJPRk9UY2pjZmJCdFc5M2FwN1ErbERqdVI4YkNITVh6OEZIdXVo?=
 =?utf-8?B?V3pqOHV0VU8vV2JMM3VpY3E4OHMvdkNDajdnQXAwa3VCcUhybmpyakpuMGVP?=
 =?utf-8?B?UXhySm5pU2ZtSTdYZVUwWGZzdjh6eHBhYm5LNzFlZDh1aFNscDBBUFVsQ2lM?=
 =?utf-8?B?VlFjODVPaFg0a0w2Wk5mUjF4dkRGS3RiSXFuOTRndi9pNzAxVzZrelFJZ0xo?=
 =?utf-8?B?dUV5L3FMYmFSdVh2bXEvcmp1ZjhySjYyVmdxUSt0RWZOcjhydTBJUmRhM3c0?=
 =?utf-8?Q?3uXHWrs/99ivdlPjWzALoVRfm?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 074c606a-d497-4302-0b46-08dc4f41da18
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2024 16:12:23.0159 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eVScb4+m0JBsKTuu7epmex2EfDyAjqgIIMJda95O2ojm7rfgDhCKOJaacWPCwiPZzOcTR/Q7bpBsz+Kn5HT4dw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7685
X-OriginatorOrg: intel.com
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
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgTWFyY2ggMjcsIDIwMjQgMTE6MTYgUE0NCj4g
VG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDEz
LzEzXSBkcm0vaTkxNTogT3B0aW1pemUgb3V0IHJlZHVuZGFudCBkYnVmIHNsaWNlIHVwZGF0ZXMN
Cj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+DQo+IA0KPiBpZiB0aGUgbmV3IGRidWYgc2xpY2VzIGFyZSBhIHN1cGVyc2V0IG9mIHRoZSBv
bGQgZGJ1ZiBzbGljZXMgdGhlbiB3ZSBkb24ndCBoYXZlIHRvDQo+IGRvIGFueXRoaW5nIGluIGlu
dGVsX2RidWZfcG9zdF9wbGFuZV91cGRhdGUoKS4gUmVzdHJ1Y3R1cmUgdGhlIGNvZGUgdG8gc2tp
cCBzdWNoDQo+IHJlZHVuZGFudCBkYnVmIHNsaWNlIHVwZGF0ZXMuIFRoZSBtYWluIGJlbmVmaXQg
aXMgc2xpZ2h0bHkgbGVzcyBjb25mdXNpbmcgbG9ncy4NCg0KTG9va3MgR29vZCB0byBtZS4NClJl
dmlld2VkLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KDQo+IFNpZ25l
ZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMg
fCAyNyArKysrKysrKysrKysrLS0tLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDE4IGluc2VydGlv
bnMoKyksIDkgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L3NrbF93YXRlcm1hcmsuYw0KPiBpbmRleCAxYjQ4MDA5ZWZlMmIuLjUwZWM1MTA2NTEx
OCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJt
YXJrLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJr
LmMNCj4gQEAgLTM3ODgsMTYgKzM3ODgsMjAgQEAgdm9pZCBpbnRlbF9kYnVmX3ByZV9wbGFuZV91
cGRhdGUoc3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpDQo+ICAJCWludGVsX2F0
b21pY19nZXRfbmV3X2RidWZfc3RhdGUoc3RhdGUpOw0KPiAgCWNvbnN0IHN0cnVjdCBpbnRlbF9k
YnVmX3N0YXRlICpvbGRfZGJ1Zl9zdGF0ZSA9DQo+ICAJCWludGVsX2F0b21pY19nZXRfb2xkX2Ri
dWZfc3RhdGUoc3RhdGUpOw0KPiArCXU4IG9sZF9zbGljZXMsIG5ld19zbGljZXM7DQo+IA0KPiAt
CWlmICghbmV3X2RidWZfc3RhdGUgfHwNCj4gLQkgICAgbmV3X2RidWZfc3RhdGUtPmVuYWJsZWRf
c2xpY2VzID09IG9sZF9kYnVmX3N0YXRlLT5lbmFibGVkX3NsaWNlcykNCj4gKwlpZiAoIW5ld19k
YnVmX3N0YXRlKQ0KPiArCQlyZXR1cm47DQo+ICsNCj4gKwlvbGRfc2xpY2VzID0gb2xkX2RidWZf
c3RhdGUtPmVuYWJsZWRfc2xpY2VzOw0KPiArCW5ld19zbGljZXMgPSBvbGRfZGJ1Zl9zdGF0ZS0+
ZW5hYmxlZF9zbGljZXMgfA0KPiArbmV3X2RidWZfc3RhdGUtPmVuYWJsZWRfc2xpY2VzOw0KPiAr
DQo+ICsJaWYgKG9sZF9zbGljZXMgPT0gbmV3X3NsaWNlcykNCj4gIAkJcmV0dXJuOw0KPiANCj4g
IAlXQVJOX09OKCFuZXdfZGJ1Zl9zdGF0ZS0+YmFzZS5jaGFuZ2VkKTsNCj4gDQo+IC0JZ2VuOV9k
YnVmX3NsaWNlc191cGRhdGUoaTkxNSwNCj4gLQkJCQlvbGRfZGJ1Zl9zdGF0ZS0+ZW5hYmxlZF9z
bGljZXMgfA0KPiAtCQkJCW5ld19kYnVmX3N0YXRlLT5lbmFibGVkX3NsaWNlcyk7DQo+ICsJZ2Vu
OV9kYnVmX3NsaWNlc191cGRhdGUoaTkxNSwgbmV3X3NsaWNlcyk7DQo+ICB9DQo+IA0KPiAgdm9p
ZCBpbnRlbF9kYnVmX3Bvc3RfcGxhbmVfdXBkYXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUg
KnN0YXRlKSBAQCAtDQo+IDM4MDcsMTUgKzM4MTEsMjAgQEAgdm9pZCBpbnRlbF9kYnVmX3Bvc3Rf
cGxhbmVfdXBkYXRlKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQ0KPiAgCQlp
bnRlbF9hdG9taWNfZ2V0X25ld19kYnVmX3N0YXRlKHN0YXRlKTsNCj4gIAljb25zdCBzdHJ1Y3Qg
aW50ZWxfZGJ1Zl9zdGF0ZSAqb2xkX2RidWZfc3RhdGUgPQ0KPiAgCQlpbnRlbF9hdG9taWNfZ2V0
X29sZF9kYnVmX3N0YXRlKHN0YXRlKTsNCj4gKwl1OCBvbGRfc2xpY2VzLCBuZXdfc2xpY2VzOw0K
PiANCj4gLQlpZiAoIW5ld19kYnVmX3N0YXRlIHx8DQo+IC0JICAgIG5ld19kYnVmX3N0YXRlLT5l
bmFibGVkX3NsaWNlcyA9PSBvbGRfZGJ1Zl9zdGF0ZS0+ZW5hYmxlZF9zbGljZXMpDQo+ICsJaWYg
KCFuZXdfZGJ1Zl9zdGF0ZSkNCj4gKwkJcmV0dXJuOw0KPiArDQo+ICsJb2xkX3NsaWNlcyA9IG9s
ZF9kYnVmX3N0YXRlLT5lbmFibGVkX3NsaWNlcyB8IG5ld19kYnVmX3N0YXRlLQ0KPiA+ZW5hYmxl
ZF9zbGljZXM7DQo+ICsJbmV3X3NsaWNlcyA9IG5ld19kYnVmX3N0YXRlLT5lbmFibGVkX3NsaWNl
czsNCj4gKw0KPiArCWlmIChvbGRfc2xpY2VzID09IG5ld19zbGljZXMpDQo+ICAJCXJldHVybjsN
Cj4gDQo+ICAJV0FSTl9PTighbmV3X2RidWZfc3RhdGUtPmJhc2UuY2hhbmdlZCk7DQo+IA0KPiAt
CWdlbjlfZGJ1Zl9zbGljZXNfdXBkYXRlKGk5MTUsDQo+IC0JCQkJbmV3X2RidWZfc3RhdGUtPmVu
YWJsZWRfc2xpY2VzKTsNCj4gKwlnZW45X2RidWZfc2xpY2VzX3VwZGF0ZShpOTE1LCBuZXdfc2xp
Y2VzKTsNCj4gIH0NCj4gDQo+ICBzdGF0aWMgaW50IHNrbF93YXRlcm1hcmtfaXBjX3N0YXR1c19z
aG93KHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAqZGF0YSkNCj4gLS0NCj4gMi40My4yDQoNCg==
