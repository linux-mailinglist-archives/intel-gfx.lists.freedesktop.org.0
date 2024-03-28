Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFB3F8904C0
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 17:16:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21FBB1124C6;
	Thu, 28 Mar 2024 16:16:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bYVViPsS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E57261124C6
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Mar 2024 16:16:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711642590; x=1743178590;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=h0gG+JtxdCzOUPP7IZTdHtwLCDYJSLMQKii/aTpq9qg=;
 b=bYVViPsSE+9g5M69LnDf1CXxKJ6FOIC/oSvPtqhcGKK28Wq/cQzD2o4b
 oQq0+ybkU0UTkULv4GeEPXXAGJFAhv0RxDIHD+dtGMV4ss+oh6Jj2xWBq
 jGWwr6Gje7i1Yo9AzptRRhQokNdODVRtV3k+pUi+NJodcJVZpKZDziEdZ
 Jj9VrpNv99h+gnXPm+/2F3KLqfnd4KAbduZxS7aSXxgpfiNf/BWEmTXQZ
 TtaBDKg5Znxqm44aM2G7Tu23IqexjJPBjumj1HEqfmlmTOcz06efvQNfV
 EUrZlnMFJz0NUXh1wdIWKvOobhcWIIDqtErZ7PKEentWpdX6N797KEsEl A==;
X-CSE-ConnectionGUID: dfxdsXukRXKg4mvnDAk0LQ==
X-CSE-MsgGUID: qH1NAFfVQz2DneOc2cQlLg==
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="7024445"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; 
   d="scan'208";a="7024445"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 09:16:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; d="scan'208";a="16719814"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Mar 2024 09:16:26 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 09:16:25 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 28 Mar 2024 09:16:25 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 28 Mar 2024 09:16:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fR1iUXeUjlNMqqCckIiNVSOG4Myok9RDGINr5ZOGCqDCpw4vdjeJbWKzFWMLtaXxnHIg+Tyrh4YaDSiyBzDbTOyMwd5KoPuwXG9vQa3UYGdxTzIFmUbr7L35YZIincOGnByXCW0jAg9tBcFZSQnIHzcorZoKStyJEEZcf6NHjL2D3zUWz0jCQh9lBldVoa/kvocDqoOH6JQQMMcfzMAGyXopBL5DsII3xH6NH008GCwYU13gOLPsArtLJYUn/jn+96iKFgDGKGWJYGoeFevvDVtGQrCEVRmUlR5Pzj3K+FFQq0x3118phUspOYzZqtrx3UUBrYDQKAA08V2M8Hs9PA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h0gG+JtxdCzOUPP7IZTdHtwLCDYJSLMQKii/aTpq9qg=;
 b=Tvr4R4/1Z1QnxvnwTQ+yBPAnMr2uub4i1mf9va8dtr3wngEUm2Hkdb4IAx6letWHo8DJeTJcpyzmU4hTfmmmB9hG3PvmSiIIACGvdeAurO4o8hDBnzOlao1AAyrIJRr+STQYJjvqNxj0d5eV6+n4WrqgkO3BdbiW4B3jsQFVgIbMeLFpPKVMpK9QBgb7wgzvf3y88ibMPel451vv1sEGfb3O+vjRTeIY99kEeiK0VrvBEA12T2I7iRK7lwGbA+Ie+fPntXJjY55l+akvxmFLLHTtjAPJOnFiVu/tqd7B4v9YZHao6+Ho/rPF9doKNpRgT4ItA1rgw7aCBS+w3k2S4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH0PR11MB7166.namprd11.prod.outlook.com (2603:10b6:510:1e9::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.32; Thu, 28 Mar
 2024 16:16:23 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff%7]) with mapi id 15.20.7409.031; Thu, 28 Mar 2024
 16:16:22 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 00/13] drm/i915: Implemnt vblank sycnhronized mbus joining
 changes
Thread-Topic: [PATCH 00/13] drm/i915: Implemnt vblank sycnhronized mbus
 joining changes
Thread-Index: AQHagG6k68+heTjaGUOpw3N6mY27K7FNVMNg
Date: Thu, 28 Mar 2024 16:16:22 +0000
Message-ID: <DM4PR11MB6360AE819EF8DA2E60DE1FE0F43B2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240327174544.983-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240327174544.983-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH0PR11MB7166:EE_
x-ms-office365-filtering-correlation-id: c50b5109-18d0-4b29-938c-08dc4f42689d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: g9ltJkhWHqnaOi1/xLy7L7mn3K89hIS4U4+UFiIUSVyTg8zpaFJGs9RXQxtnY3z2vVzaPhaopsCwRTEoQCX7LPUytH+n0lpmOn6gl1JxMRB6Mwmz8X4O4SSOWfqmcmy8wlLLdZFj0bRhOqmKMuCRi4VtPZ0coAPePGvb/gaQ28Ot9raIlaZPJhQ2SaKNmjIzLRCy6opJcq5maseLNV8Xh9pV3vEK1yz2eLszDefHbIx0ArWJ2J9aZxO6JVb0o1b3KC6xbqhmsmYqX0dEsew/OzISh3InDHEUXQp70GZtY5/c815O/bPDjcnD3imHEdwPNrc/NrlonpYWvFIsWWCh6Z4ctfjvJF4xlj0DSYXmlO4bJUazyxQT8yfrnJAOumhUpSbUPxkfJXaKg5342dv0uxaPM67qd7jbf1QWuKxU7PkbBwEaQsET5clzWrECWPAYrmng0k30Mjt5C2K34e5CRZ8d4B3XBLMiU/wK6QBjuFfiuMBvRzDat+pMojSWicizJAxqKnHtHUietqKZd17biNHi3jMi84AwCNQ03FrV4Q7bEcVcy3nlU/srw3rE7ygGEa1T1FEimxXgLtacknuugV+CcmINesGSc3fAf5SVXlhzQB52CJSXf8r7gEd/cuEq8eSKk47d/rHcPGRmGQCXSLv2s/O71OfvCGKAsBkCB/40KJnKUv66/xE0RsdXcHJM/PCfpCZ2ZoXVN7mUTlEfLqNw+u2fUDTlgDPZfxV+m7w=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cmVUUTlkTXpTWG1GRzJaNi9FRnFGaDFlRmxSWTQ1NWR0VlY1V25Memd0aE81?=
 =?utf-8?B?dEc4dklzNE13TnhNYmVPcThpV3Q3K0xsUDU5a1RpRk13SmxCTzB2d1hnUlVX?=
 =?utf-8?B?L2VvSko3bmJsV29vMzZlTEN0cWx3cDhwZi80YVJYd0NSY01maEJTYTB0bFlN?=
 =?utf-8?B?Z1I2K2p0aENRYjdBZjBERWNMTEpQUVlBc3EvWjNIZVBQdi9pQ1NQVEd0cWk5?=
 =?utf-8?B?UUM1ZE0zZExhSU9DVCtHWndFR1BNdnR3Mkc0Qkh3ZFdHVnhkR240RGREUEZr?=
 =?utf-8?B?MmUySnZQUFhkQS93RWFFTVZEZlRYOW0zYXBtSXRsQWo0TXdVOEw4SzEyMnRX?=
 =?utf-8?B?ck1mQzB3ZG1jK0VFYUFMOVBkWnNZRzdrcGZyZzk2U01UKzdhcGw1OUpTVmlz?=
 =?utf-8?B?dC9PejNIbndmZ2ZaTUFxU0JocW5vYkg4M05PVDQ4TkRwaWVNMlcrSXhBR2Yy?=
 =?utf-8?B?N200d0JpZ0crZTk4TnBvRklXS1B3ZW91WnMxY25kMHNKQnpRTjFRUjFoTXkw?=
 =?utf-8?B?dHhiY2tOV3M2VFZ0WlpKSlIySTl2N2hRdzVGbUpjQXdqSk5tZ2RzT0MyZHNR?=
 =?utf-8?B?bnlhVUVoMU01ZTMxeTViL0ZvMjROSXh4aDFwNndYM1ZiYzMyN2Z6c0FBZWRi?=
 =?utf-8?B?cXF6QmJsc0h5Z0tMS2djNXBrNTJDYlpMVzZ5VXFCOWJ3NjJXaFhNR3lhdWZ0?=
 =?utf-8?B?MUd2TmZuWHJ1ZzRxMVhOUnRqdEV3WVMrMEJQY3RWc3ZzQ0FPbndXV3hRZ2d4?=
 =?utf-8?B?aUROOVF3ZVlFWW9weEVkZHVBQkwzQ2dGYjdUdk9FZmlYVy9qQjBrWGxCUEtM?=
 =?utf-8?B?Y3dWcUlaSlM0RUdJYURVRVpHQWZGUXlJYlZPRDBUQno2Q2F1QWtmWmFQMzRq?=
 =?utf-8?B?M2FaWElYMk9qRU56SG1BT2tlRldUNWZ1U3pMT0JBZ3REVitnSWVWejRhMFlV?=
 =?utf-8?B?b2tERWQxdXpVSzNhSHdESnBUY3BlY2lQVFNaTXZ5MWJ1Z1lHUFBLWStaVHFt?=
 =?utf-8?B?Q1BlU1pkbFRNYUg5QnA2V3JtSDBPK3BTeU53Q2xyWW50RXpjMVhNNjdnNFRO?=
 =?utf-8?B?Sk14R3pmMXk3NHF3Y2JlYlg2R1poRkN3cHY4Q1R1REZyU0ZIM1cxMkxHYWZI?=
 =?utf-8?B?amY3eFl0V3F3QXVENW5qL0VILzQ4REJPeUloZjM2TFVtaW52ZGRWaTc1ZzRr?=
 =?utf-8?B?S3RONk93VCtlRHBNc2xVUzRIVlBXbUY5RjFUcTFJcDc2NWRWeDIwUlVzNHhR?=
 =?utf-8?B?aVZodlp3c2xiVThwS3cveDRYYkJpTDVOK2F2UmFWSGFIY2pEeFhQZTlONUpo?=
 =?utf-8?B?VndtNUVNY1Rpc0R3K2ZwMkpRY3hPMkNSK0FvZDY4U2JLVDRaWXAwaTBZbFk0?=
 =?utf-8?B?akI0Z2hxQllaRFNKMmZTbEYxMDl2YlRhb2RuTTJrVk9MWHU2VzZ4R0FrWUs2?=
 =?utf-8?B?RTlESU9JN09CU29YY3poWmVTK3ZoNlZieTVpQWhNVnRyVzFOVzhteHlwSlUw?=
 =?utf-8?B?UVA4OWdtdDNia21pdnA5LzF3cFZkbGpiZkloWWw1VEVWK3FWNHgvdFVLY09v?=
 =?utf-8?B?ZGtZTnVDcjB5am5UbEhydG82R28reERkejFlSGFDeDVhZDRUUzhRUzVXVE50?=
 =?utf-8?B?d1lsYXorak5SeUdITGQwRzZZdXk4M3NUTDkzenhVb0dwUlAzRUI0Y1FkNFBH?=
 =?utf-8?B?YTRkcmJTQXZRaDllaUt5RUVzNVBSenVQL3N2NmVVbDNCeG84aEdlK2FQNGpT?=
 =?utf-8?B?T0ZjRmYySHpTK2VWcS9GREJQL3JIUkVUUHpXUHUvRHF2cklxaWI2TXU3NmdJ?=
 =?utf-8?B?SkRrWlZ3VFVJWFRSNEx1M2dnTXVTMnFWRFJuaVQ5bUxiOFFhaGZFSmtSS2xu?=
 =?utf-8?B?UXQvTWRUWkNXSnl5dzdSVVFpbG1RNkpIV3pydjhSRXZzcTk5TThsazhHdmlL?=
 =?utf-8?B?SkNoT1pmS1FVZ2hEQ3k0ZmlPb21wSE9kYTBmVUJacDRqRkZtaCtuVEplWUpi?=
 =?utf-8?B?YjA1aVV3dzQweW5jRXNOeGZrOFBiUk1WWm9WbU5VK2M1aW1md3l3S2M1cVRX?=
 =?utf-8?B?Z1REWEgybS96R3FCaVVkNGFPRXIrSEVPajdxbzdva2R3VU00ZGZndnJ2NDRS?=
 =?utf-8?Q?Y4i4lo9x8+9emQ4FtOMnXFpTd?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c50b5109-18d0-4b29-938c-08dc4f42689d
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2024 16:16:22.0837 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QPAWR4tYsGifsgjhXpbLnKG40iSFaEE5bPb1vP8CsBMOS1ca3e/VO/9sx4UzweMeZ7UmGscRvLbOUiR4YmYt+A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7166
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
VG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDAw
LzEzXSBkcm0vaTkxNTogSW1wbGVtbnQgdmJsYW5rIHN5Y25ocm9uaXplZCBtYnVzIGpvaW5pbmcN
Cj4gY2hhbmdlcw0KDQpOaXQ6IFR5cG8gaW4gaW1wbGVtZW50IGFuZCBzeW5jaHJvbml6ZWQNCg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gR2V0IHJpZCBvZiB0aGUgZnVsbCBtb2Rlc2V0IHJlcXVpcmVtZW50IGZvciBjaGFuZ2lu
ZyBtYnVzIGpvaW5pbmcuIFRoaW5ncyBnb3QNCj4gcXVpdGUgYSBiaXQgbW9yZSBjb21wbGljYXRl
ZCB0aGFuIG9yaWdpbmFsbHkgZW52aXNpb25lZCBkdWUgdG8gdGhlIGR5bmFtaWMNCj4gY2RjbGsv
bWRjbGsgcmF0aW8uDQo+IFNhZGx5IHdlIGhhdmUgdG8gZG8gYSBmYWlybHkgY2FyZWZ1bCBkYW5j
ZSBiZXR3ZWVuIHRoZSBkYnVmIGFuZCBjZGNsayBjb2RlIHRvDQo+IG1ha2Ugc3VyZSBldmVyeXRo
aW5nIGlzIHByb2dyYW1tZWQgaW4gdGhlIGNvcnJlY3Qgc2VxdWVuY2UuDQo+IA0KPiBTdGFuIGRp
ZCB0aGUgZ3J1bnQgd29yaywgYnV0IHRoZSBzZXF1ZW5jZSB2cy4gY2RjbGsgdXBkYXRlcyB3YXMg
c3RpbGwgbm90IHJpZ2h0IHNvIEkNCj4gZmluaXNoZWQgdGhhdCBwYXJ0Lg0KPiBJIGFsc28gcmVv
cmdhbml6ZWQgdGhlIGNvZGUgcXVpdGUgYSBiaXQgdG8gbWFrZSB0aGUgcmVzdWx0aW5nIHBhdGNo
ZXMgbW9yZSBsZWdpYmxlLg0KPiBBbmQgSSB0b3NzZWQgaW4gbW9yZSBkZWJ1Z3MgYW5kIHdoYXRu
b3Qgc28gd2UgY2FuIGFjdHVhbGx5IG9ic2VydmUgd2hhdCBpdCdzDQo+IGRvaW5nLg0KPiANCj4g
UXVpY2tseSBzbW9rZSB0ZXN0ZWQgb24gdGdsIGFuZCBhZGwsIGFuZCB0aGluZ3Mgc2VlbSBwcmV0
dHkgZGVjZW50Lg0KPiBVbmZvcnR1bmF0ZWx5IEkgZG9uJ3QgaGF2ZSBhIExOTCBvbiBtZSByaWdo
dCBub3cgc28gSSBoYXZlbid0IGZ1bGx5IHRlc3RlZCB0aGUNCj4gbWRjbGsvY2RjbGsgcmF0aW8g
Y2hhbmdlcyBvbiByZWFsIGh3LCBidXQgSSBkaWQgaGFjayBteSBhZGwgdG8gcHJldGVuZCB0aGF0
IHRoZQ0KPiByYXRpbyBjaGFuZ2VzIHdpdGggY2RjbGsgYW5kIGRvdWJsZSBjaGVja2VkIHRoYXQg
dGhlIGxvZ3MgbG9vayBzZW5zaWJsZSBmb3IgYWxsIHRoZQ0KPiBjb21iaW5hdGlvbnMgb2YgY2Rj
bGsgaW5jcmVhc2UvZGVjcmVhc2UgYW5kIG1idXMgam9pbiBlbmFibGUvZGlzYWJsZS4NCj4gU28g
c2hvdWxkIHdvcmsgKHRtKSBvbiByZWFsIGh3IHRvby4NCg0KUmV2aWV3ZWQgdGhlIHNlcmllcyBh
bmQgaXQgbG9va3MgZ29vZCB0byBtZS4NCg0KVGhpcyBpcyByZWFkeSBmb3IgbWVyZ2UuDQpSZXZp
ZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCg0KUmVnYXJkcywN
ClVtYSBTaGFua2FyDQoNCj4gU3RhbmlzbGF2IExpc292c2tpeSAoMyk6DQo+ICAgZHJtL2k5MTU6
IExvb3Agb3ZlciBhbGwgYWN0aXZlIHBpcGVzIGluIGludGVsX21idXNfZGJveF91cGRhdGUNCj4g
ICBkcm0vaTkxNTogVXNlIG9sZCBtYnVzX2pvaW4gdmFsdWUgd2hlbiBpbmNyZWFzaW5nIENEQ0xL
DQo+ICAgZHJtL2k5MTU6IEltcGxlbWVudCB2Ymxhbmsgc3luY2hyb25pemVkIE1CVVMgam9pbiBj
aGFuZ2VzDQo+IA0KPiBWaWxsZSBTeXJqw6Rsw6QgKDEwKToNCj4gICBkcm0vaTkxNS9jZGNsazog
Rml4IENEQ0xLIHByb2dyYW1taW5nIG9yZGVyIHdoZW4gcGlwZXMgYXJlIGFjdGl2ZQ0KPiAgIGRy
bS9pOTE1L2NkY2xrOiBGaXggdm9sdGFnZV9sZXZlbCBwcm9ncmFtbWluZyBlZGdlIGNhc2UNCj4g
ICBkcm0vaTkxNS9jZGNsazogRHJvcCB0Z2wvZGcyIGNkY2xrIGJ1bXAgaGFja3MNCj4gICBkcm0v
aTkxNS9jZGNsazogSW5kaWNhdGUgd2hldGhlciBDRENMSyBjaGFuZ2UgaGFwcGVucyBkdXJpbmcg
cHJlIG9yDQo+ICAgICBwb3N0IHBsYW5lIHVwZGF0ZQ0KPiAgIGRybS9pOTE1OiBSZWxvY2F0ZSBp
bnRlbF9tYnVzX2Rib3hfdXBkYXRlKCkNCj4gICBkcm0vaTkxNTogRXh0cmFjdCBpbnRlbF9kYnVm
X21idXNfam9pbl91cGRhdGUoKQ0KPiAgIGRybS9pOTE1OiBFeHRyYWN0IGludGVsX2RidWZfbWRj
bGtfbWluX3RyYWNrZXJfdXBkYXRlKCkNCj4gICBkcm0vaTkxNTogQWRkIGRlYnVncyBmb3IgbWJ1
cyBqb2luaW5nIGFuZCBkYnVmIHJhdGlvIHByb2dyYW1taW5nDQo+ICAgZHJtL2k5MTU6IFVzZSBh
IHBsYWluIG9sZCBpbnQgZm9yIHRoZSBjZGNsay9tZGNsayByYXRpbw0KPiAgIGRybS9pOTE1OiBP
cHRpbWl6ZSBvdXQgcmVkdW5kYW50IGRidWYgc2xpY2UgdXBkYXRlcw0KPiANCj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYyAgIHwgIDg1ICsrKy0tDQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmggICB8ICAgOCArLQ0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAgIDUgKy0NCj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jIHwgMzQ0ICsrKysrKysr
KysrKy0tLS0tLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFy
ay5oIHwgICA5ICstDQo+ICA1IGZpbGVzIGNoYW5nZWQsIDI3MSBpbnNlcnRpb25zKCspLCAxODAg
ZGVsZXRpb25zKC0pDQo+IA0KPiAtLQ0KPiAyLjQzLjINCg0K
