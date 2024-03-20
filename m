Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A5BD88162B
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Mar 2024 18:10:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 017FE10FE5F;
	Wed, 20 Mar 2024 17:10:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L5x6y2Ht";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AB8E10FE5F
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Mar 2024 17:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710954600; x=1742490600;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=2jDcgwe5MmXFz+NvLlwW4SAKrQ2oUGhJRYwsixOCrME=;
 b=L5x6y2HtPvAcx1cfM85j2O3uVugRMuoCO4U9uRPJe583eqQ9lS48EfiF
 vUBZ5IsrvWOLwU5OdFYcU6dA6ppV6H5UGv6GBfs6/wRwk7OFIQmvR9mGz
 Sz0vRuEKtwPjRxvkbNXAEagvQKBbS/DLq/4nxMo/meNM13P4WmpK7HZJJ
 VXICLCjbuGqkR4VJI1gOLpPAcSw1KMrC4haNMwlSd8tNSVmapQK9Cwov9
 c7545Ev/gSW8vJvAbf/ZV87NERdj6mfHLvmIB5X7nJij+7hJFJUB/VPz4
 AoHkcEQ2gEpUhiasLOJBsm1TWN8z6YtwfgNFuxQVAZAa8eNAeoEpwUexl w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11019"; a="5770826"
X-IronPort-AV: E=Sophos;i="6.07,140,1708416000"; 
   d="scan'208";a="5770826"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 10:09:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,140,1708416000"; d="scan'208";a="14617736"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Mar 2024 10:09:59 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 20 Mar 2024 10:09:58 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 20 Mar 2024 10:09:58 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 20 Mar 2024 10:09:58 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 20 Mar 2024 10:09:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IP8Yet2lCp1ab2juxu8Y6i2bWCkETBdfOttOR7C41nSCRv+OQx4DqRM+2RFPuz1lYX0smKZ3aW9tbl8f7fW4CqQ5Uld+FsGb60jZ8lp1cFEsOYW7c6NFyCGRbqVUj1tmr3nsDckJ5Iy79MMUThtNaRuxUTaTT6cu7KDIEkeTWWcVS22vaTmxaufrJXmrEkd9PlIzqKOlG2hJTPy1hbatz8vdl1rMkmRgxDNEw48kM9v4l+vDBblZuTB3yo2W0/DPQPZJrzn8QGULA2TL9+Kxlu8qAyFY2EIJnhJn6YTptQZV+xHYqEsNx6exNw0MCWozZFPbRZlUe2psESboYkTeJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2jDcgwe5MmXFz+NvLlwW4SAKrQ2oUGhJRYwsixOCrME=;
 b=iEjxPANWWYWbEKUFBguJnWeAIwl1SP+f1WB257pe6TxK//gMB71mFFe95gNmC1qdxb0qvEz+CqXxqrQ5X28IGT+z5KRXLHnQcBB27dgDtMWLX2rYmqNZVbC9gu84utCL7w4UFDB8nY/hClMsy5XWA7TKguJVFKDiG5BwpqHYqMq4JpI7zbLpJ0A/yrxvBJuqQurzRbTELkR3SyrTOtf5uV8ShHCJ3QJL14OM2peSlpHj7/q9CeRLSjuGAvtd+FD12F7xPWnHz0/i5T1axabWPYJ839cj1VrWlFcd8IFsBzTnI/kTw04QIrZEZibU8JxPcrZQKp1EyDBZ7mFvROq65g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by SJ0PR11MB5867.namprd11.prod.outlook.com (2603:10b6:a03:42a::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.10; Wed, 20 Mar
 2024 17:09:56 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::f:d87:3265:6573]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::f:d87:3265:6573%6]) with mapi id 15.20.7409.010; Wed, 20 Mar 2024
 17:09:56 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Saarinen, Jani" <jani.saarinen@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 1/3] drm/i915: Add meaningful traces for QGV point info
 error handling
Thread-Topic: [PATCH 1/3] drm/i915: Add meaningful traces for QGV point info
 error handling
Thread-Index: AQHaY9+p/uiWKA6YS0KMKwWU/YEc4bFBCxgA
Date: Wed, 20 Mar 2024 17:09:56 +0000
Message-ID: <1d65f72c06e0038fe6cb72f8533628fc3923c603.camel@intel.com>
References: <20240220093136.32181-1-stanislav.lisovskiy@intel.com>
 <20240220093136.32181-2-stanislav.lisovskiy@intel.com>
In-Reply-To: <20240220093136.32181-2-stanislav.lisovskiy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|SJ0PR11MB5867:EE_
x-ms-office365-filtering-correlation-id: 81532bc2-d2a4-4866-a63b-08dc490090f8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jiGP84VzonOhICb1JuFu5J3fxhp8maKdsuBEGcNrbjRWwMCkl0WMFnreV/VDLTIHZ9YXQbdIg1DfAa86rf7UVjJGOwBvjf8Fhpr0hvYeETv5cklfVaD5+8I/oASpE2TLAe0trVlDg7JvrSzfu2AyPfiIqt2BOLfGf4p6uy+a8TBfU359nz7jU7LcrUX65hVTNEDFW5PQEMwycQCSm2MKsP65QSOV7nrpDGPIzdNcaRz/I8OTRPvz90GCDC1uvB5QjqDNDcOgwQgMGOBYqS00PahK8DccVPmaOftVER7GIe+ATHd6UlBiOLlARWR4ASTqmczFPK4OGGSzE6o4NdX/oHf6+bbxPO0i1cHtKIE//um8/HwEEnnrbp6/Zbw5LYOPFRnWEDfWdIJFwwCSVx1UcNudb2/Em5vdsEd8TogUh9W9EErh9/glNYvfTwBnWPOXbQJ6lLK3Q+UF8ayBRo8sJegGSuBBMcqj6GiriCTc6qbGHGeb7Lu+bSKIAGoy30KZ31wRDOYE1QUUWmvTMSv05cZK+AWz3z+qsBQm4MhIZob/Fg1VERSbtKN9yeAcxe3oyJSWpvwIFWMqHTU3pqGU2Ke3tBuFVTOcpSnLuFUF+VXz9aL77sDguk+6TTqKGL7o6IeTv65BOrXwjO7Pfjv2x+1dCJIhlaKjMM59tkRIbfeTcAxibDuLKUT4zwkWjGlyr5NLrhPwNXuPl+f73vW1MA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MExaK1ZxUXA2UXMvS0JMaEwyUEFHa0d0WTNWN2dIZ2hlTWRpdUZHVDNzMFJn?=
 =?utf-8?B?YlMyNUZSUjFjOWRpNENJZkZVaDRUR0liZ3RjenBtWGJHTmJtTUJxR0FQbnZj?=
 =?utf-8?B?MmQyZ2RuNnRhcDRrbTFld01LV3NSS2xRbVpmSWRiY0FQYzdjTlBvd3lqUENh?=
 =?utf-8?B?b2V6ZXVURHF5L3BJZUNDWUd1L2grUkExcVBjaFVCdWQwcUMvQ2NsZGlSU3ND?=
 =?utf-8?B?a3gxSkhNellKWTI4M3Vtd2hnSXJ5TFVDYkpJS05CNlpmMTZLcm9qRHBNVDl2?=
 =?utf-8?B?WlAxdWY3T3RWdGtTbkpPb0E4d01MREdWVFNkSzNZSWxSNlVnUm9leUtMR0U4?=
 =?utf-8?B?MXVXQjVnSDJuSUlkWDNZeXA0dy9EYlJYTGhWbjlLcUxYYmNsckgwcnZ3SXpa?=
 =?utf-8?B?WlpKZVFTYldtTUlZdmNHM0tSQ29lT1ZJWGliK1RqcXlqTlltMTFXalNFL0Vk?=
 =?utf-8?B?K1B5QjBjanJ1QmtGYVRVQ3lROUpXU1VhbVk1cWZ3TFJOK1lsektyNDk1RUdv?=
 =?utf-8?B?dGhTbWdSLytscVhaOG8zcWxhc2hJbk1TNWY0elJEemRuOWpSTGptV2FVN3ZR?=
 =?utf-8?B?ZnVzcDY0eVJwb2lxbXNCM2FQOEYyUkhkVEZGMk5tY3BlazV1Z1NkSHZlMHBv?=
 =?utf-8?B?VHBXY1Q2eWViTFQxU2NkTG9qT1gzNjBCM2Z3WHpjdkdVM2E5OVFzN0MzaFFz?=
 =?utf-8?B?S2pMMzVwSnR1L1d3dVdUaWJJYXI5bmlJSFpxZFdBV1lMR21sbVZjRXdXR1BQ?=
 =?utf-8?B?OFBLbWNpemJNK2ZaWEdqOVdVMnBYdGtKRnpmSjZxZHZ6OEtsRnNYTTNzb28y?=
 =?utf-8?B?c2hQbkF5L1luMXBRbXk3N0hQVndCL3JaR3BVMnpWWEVEOWh4RXlKT3o2bmVX?=
 =?utf-8?B?ZEtZMzhCOEc0M3o2SGxXeDBLSVR1ODl6WVZuTzVVV1ZGcWI4OVZtVEIwdk0w?=
 =?utf-8?B?TG14ZzZEWFgrUU5MU25Oc3lKSG5aNDdkRkNwRjRlQnBmNVk3M0JNOGk2TExS?=
 =?utf-8?B?VGRGT2xMOHh3aXV5L05zb2hsdkxzNU5FWXRINnl6NzJPdHhXS0xVYmhIV0dx?=
 =?utf-8?B?dkkzVm5KN0JYbVFrOFNLeXZYbG9GSE1qM1p6OS9seERPRHgvMnJtN2JpQm93?=
 =?utf-8?B?QTdJdGYvSTlBMlJQQUM0cWhRUENQUjkzNVZTUkN5SzdmRnlpb2xXcGZGVHRW?=
 =?utf-8?B?ZW03cWdsMFZUSTIrRThGWUZ0YTdVS2E4c29kQ2NqRmVTUHZmYXQrUTdwcDUw?=
 =?utf-8?B?THBFMVMvTy9oVEFGMllDbmNpK29rQndtZVFVbDR2Umo0WDVxSW9ab0M0TTRi?=
 =?utf-8?B?a0ZycXlaZXR4MTFlb3JCVTNSSi9RS0doRWJtWGVScERWWVVyaE5vWndCNmEw?=
 =?utf-8?B?ZHdFUFpzQnFUQ3JUNks5TDEyUnZJYzlsbjUvMnYySWhmV0tpeDhQNWt5RkY3?=
 =?utf-8?B?NmFMbHppWEUzUjdpYnFld0UwMTFpaEFoa1NhVWNDUUplS0VVNSsxYlVSU05p?=
 =?utf-8?B?MC9HQzBkdTFLWmwvSWZiYmw4YjE5M0E3UVZ2UmVlQlpDSHV6cENKNXpPYWdM?=
 =?utf-8?B?NEtKMnVYV3ZVVEZVUVArK2l0YzBJUy96TEFpNmIrd3lnOVJuVWs4c2dXa1Rl?=
 =?utf-8?B?Q3VIZXJtUzhhTmdPcVJMZzNZZW9yRjJlSVpSbWdpREtRSGY3aEVoVzRkbmxl?=
 =?utf-8?B?ejcwazUzZEd3UUt0RGtoaVBqOThKVDRNb0ZyMFYvei9XUkdTN2tkWDRUVFU2?=
 =?utf-8?B?RTJuWnlzRzJKRG14eVN5ZmVRdjhZcmg1MzNoRmJvelNlRlNERnFNYjNDT0M5?=
 =?utf-8?B?alJodEZ0RVpCQjNSQyt0R2lrSnlDWURYeWhENElCK210ME1ic2Q2bzIremRz?=
 =?utf-8?B?YUpuWU05bVNuL1dWN05uc3VGK2JRUysySVFGM0lQS0l6cUdTa2QzcnVNYkNB?=
 =?utf-8?B?U1NpN2xGZWs0YWFrYktZdCtnaVpKK3pTWklBYk85RXBvdE5BTzdLOWRCbFNK?=
 =?utf-8?B?RDVzZC83M2NFUTB4MjlpNGtiRWtZb1l6ZlZlR0hKelhkY3RYTDZ0K0VPSWdS?=
 =?utf-8?B?MThITEVlQTBGS3Mra0xWZ2cvSVorVHJTVUpyaE5uWjZ3VG5tTCtjYm0yZXhV?=
 =?utf-8?B?eEN1VWRyRTBxSDlBMC92REd4V2lIbVdVbEh0TEdWUDBVSTZPb21BSlpXQy9l?=
 =?utf-8?Q?RLojpVdX/Em9EcEG6Cu8PIE=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <74F7737C51A0C848BC9ECC2DEE89B25B@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 81532bc2-d2a4-4866-a63b-08dc490090f8
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Mar 2024 17:09:56.0689 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: j2pxFEhE1c9zqUe7u9rrSiEe73wACSa2ffagNrX+JNy9BKAuymcfzgmknA+wXx4XnitKWQ3WrkHxh8VhkLwaglXoUQw7qakKjkr7IiWzqkg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5867
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

SGkgU3RhbgoKT24gVHVlLCAyMDI0LTAyLTIwIGF0IDExOjMxICswMjAwLCBTdGFuaXNsYXYgTGlz
b3Zza2l5IHdyb3RlOgo+IEZvciBkZWJ1ZyBwdXJwb3NlcyB3ZSBuZWVkIHRob3NlIC0gZXJyb3Ig
cGF0aCB3b24ndCBmbG9vZCB0aGUgbG9nLAo+IGhvd2V2ZXIgdGhlcmUgaGFzIGJlZW4gYWxyZWFk
eSBudW1lcm91cyBjYXNlcywgd2hlbiBkdWUgdG8gbGFjawo+IG9mIGRlYnVncywgd2UgY291bGRu
J3QgaW1tZWRpYXRlbHkgdGVsbCB3aGF0IHdhcyB0aGUgcHJvYmxlbSBvbgo+IGN1c3RvbWVyIG1h
Y2hpbmUsIHdoaWNoIHNsb3dlZCBkb3duIHRoZSBpbnZlc3RpZ2F0aW9uLCByZXF1aXJpbmcKPiB0
byBnZXQgYWNjZXNzIHRvIHRhcmdldCBkZXZpY2UgYW5kIGFkZGluZyB0aG9zZSB0cmFjZXMgbWFu
dWFsbHkuCj4gCj4gdjI6IC0gTWFrZSB0aGUgZGVidWcgbW9yZSBnZW5lcmljIGFuZCBtb3ZlIGl0
IHRvIGludGVsX2RyYW1fZGV0ZWN0Cj4gwqDCoMKgwqDCoCAoR3VzdGF2byBTb3VzYSkKPiAKPiBT
aWduZWQtb2ZmLWJ5OiBTdGFuaXNsYXYgTGlzb3Zza2l5IDxzdGFuaXNsYXYubGlzb3Zza2l5QGlu
dGVsLmNvbT4KPiAtLS0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncu
YyB8IDQgKysrLQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvc29jL2ludGVsX2RyYW0uY8KgwqAg
fCAyICsrCj4gwqAyIGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigt
KQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMKPiBpbmRleCA3ZjJh
NTBiNGY0OTQuLjc3ODg2Y2MyMTIxMSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2J3LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2J3LmMKPiBAQCAtMjkwLDggKzI5MCwxMCBAQCBzdGF0aWMgaW50IGljbF9nZXRfcWd2
X3BvaW50cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfcWd2X3BvaW50ICpzcCA9ICZxaS0+cG9p
bnRzW2ldOwo+IMKgCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXQgPSBpbnRl
bF9yZWFkX3Fndl9wb2ludF9pbmZvKGRldl9wcml2LCBzcCwgaSk7Cj4gLcKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoGlmIChyZXQpCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oGlmIChyZXQpIHsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoGRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLCAiQ291bGQgbm90IHJlYWQgUUdWICVkIGlu
Zm9cbiIsIGkpOwo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoHJldHVybiByZXQ7Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoH0KPiDCoAo+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZHJtX2RiZ19rbXMoJmRldl9wcml2LT5k
cm0sCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgICJRR1YgJWQ6IERDTEs9JWQgdFJQPSVkIHRSRFBSRT0lZCB0UkFTPSVkIHRSQ0Q9JWQgdFJD
PSVkXG4iLAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zb2MvaW50ZWxfZHJh
bS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc29jL2ludGVsX2RyYW0uYwo+IGluZGV4IDE1NDky
YjY5ZjY5OC4uZTk1N2JlNWJmYjM1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L3NvYy9pbnRlbF9kcmFtLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zb2MvaW50ZWxf
ZHJhbS5jCj4gQEAgLTY4MSw2ICs2ODEsOCBAQCB2b2lkIGludGVsX2RyYW1fZGV0ZWN0KHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+IMKgwqDCoMKgwqDCoMKgwqBpZiAocmV0KQo+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuOwo+IMKgCj4gK8KgwqDCoMKgwqDC
oMKgZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwgIk51bSBxZ3YgcG9pbnRzICVkXG4iLCBkcmFtX2lu
Zm8tPm51bV9xZ3ZfcG9pbnRzKTsKPiArCgpUaGVyZSB3YXMgYSBzdWdnZXN0aW9uIGZyb20gR3Vz
dGF2byB0byB1c2UgJXUgYXMgbnVtX3Fndl9wb2ludHMgaXMgdTguLiBpbiBjYXNlIGlmIHlvdSBt
aXNzZWQgaXQhCgpSZXZpZXdlZC1ieTogVmlub2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5k
YXBpbGxhaUBpbnRlbC5jb20+Cgo+IMKgwqDCoMKgwqDCoMKgwqBkcm1fZGJnX2ttcygmaTkxNS0+
ZHJtLCAiRFJBTSBjaGFubmVsczogJXVcbiIsIGRyYW1faW5mby0+bnVtX2NoYW5uZWxzKTsKPiDC
oAo+IMKgwqDCoMKgwqDCoMKgwqBkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLCAiV2F0ZXJtYXJrIGxl
dmVsIDAgYWRqdXN0bWVudCBuZWVkZWQ6ICVzXG4iLAoK
