Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22A3E88FE71
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 12:57:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D8D010F75F;
	Thu, 28 Mar 2024 11:57:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WQECM8SS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74A4910F75F
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Mar 2024 11:57:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711627066; x=1743163066;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ExtCbfTO5ge5Ui2q/mXT0QrYVpL7b2mC1gHfIATBGz8=;
 b=WQECM8SSI2Qf8+LrHcw3Pl2zileI7FCzFg0D+6tFVkW6dqpbF17vr8Di
 xmqlHgxmDoVuyJsD07B7OCfoqQGO9KRYqA8fXcaURvp/1I0Pe2ZNM319q
 l+I/31Rmi9dk3M/oXSG7mk3BRMpPR8K7+H4MTWoO+kvmgdhI8/ymYJ+Rc
 bzFh//YbsqvhZkfJQqfIjWRjYmSl16VakvwdWA9pDIwR7JKm0MaP/jjYv
 NVk4o0YuCOXZ83CYRl8GaAbVbiZbvC7ItW7I7rlcYE5Sbnt+pgTsEWzRv
 hFCT3UzvomQtz/wXsu/eaJmFTgLK7mm3P5vvKsd7+SLqGgtVIhNi9OFE/ Q==;
X-CSE-ConnectionGUID: Pj6A+qRhSZmY8qZehSlKGg==
X-CSE-MsgGUID: Ag8OkFa8S6mIfnyMs+qQKw==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="6664012"
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; 
   d="scan'208";a="6664012"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 04:57:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="17072014"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Mar 2024 04:57:43 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 04:57:41 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 28 Mar 2024 04:57:41 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 28 Mar 2024 04:57:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k4qdIFiCT40CixCiiBa2BkMEmbRNkhCwDHoSNfsdX7rUKKaabHkXQ/qQ+ex1AhngEjjMgroy3RXhbFmQMPszeBgZXTA3Im6Ob+kxooMS5/5Hh5a0nz09CYjazgN8umtsGoyH7SzXzu3YZ86OTf955ubUbahYuIJ5IogbIe+A++wTEHrWhv8Gvh+hdtBiD0uUxkHITmFxyAhtGzP91V7UiAitvErvhZUbiEqlzP95BHqkVmfFPDHdMHaNLWPAROIno0hRzOKyFp22BwyNDjRMQZSl8JAn9DoRsbbZjkwIQndrmY8Cy0Waj80J2v210mrYHQp4LL7qpGh1NSUeR67PRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ExtCbfTO5ge5Ui2q/mXT0QrYVpL7b2mC1gHfIATBGz8=;
 b=oHKWvvC7EMzUDQJ96gBlNGBSrJeZwuDyuoazm94ZLZw0ItcBpXOeUsmP5TKAQKQJNmXSiJ026ygoK02A4DuG237mbC6GjAs5cI8l4c4e9DZ7Q6gEKzIiyA7GqFjx7bQX7TNaECTu+U4L4LbFaFUmE7hzqnKJHmfKX1gKz67EQcTzeGwwCVqvBTYmFW3LCLiasUiik1GvBSk/bnCz4h8qaZThTH3TvagSena5Y/RyrstWX6cxbdo7BZv17FKb4EXddA3cNones37qzrMLcWoYjUvDSGSx2KGceprOE1MOnLePUXMpM5Tukxz8K6lTLQX5J62Q4gq9Qeyb9Chz2zokgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH7PR11MB5863.namprd11.prod.outlook.com (2603:10b6:510:135::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.31; Thu, 28 Mar
 2024 11:57:39 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff%7]) with mapi id 15.20.7409.031; Thu, 28 Mar 2024
 11:57:39 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 07/13] drm/i915: Extract intel_dbuf_mbus_join_update()
Thread-Topic: [PATCH 07/13] drm/i915: Extract intel_dbuf_mbus_join_update()
Thread-Index: AQHagG7AyRfrUkNs40iz794GwYRbELFNDU1A
Date: Thu, 28 Mar 2024 11:57:39 +0000
Message-ID: <DM4PR11MB63609E5398BAD1244C88244DF43B2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240327174544.983-1-ville.syrjala@linux.intel.com>
 <20240327174544.983-8-ville.syrjala@linux.intel.com>
In-Reply-To: <20240327174544.983-8-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH7PR11MB5863:EE_
x-ms-office365-filtering-correlation-id: 1487eba4-5610-4789-755a-08dc4f1e4455
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UILn500fviD+W/vuTGr7DUYa8uL7fMcY74zDqbGmxg9WUfIsw6G/OykEyVYwJQwCv1eBNo0ks7pfG4nHqmEOj8xS4N1D01/pBD8A6yOsGTrjPMnClLC0d/LL8vcDuOhiIrSih7Q6Ri692YhTr9jx5FDJnao8YZ622NN+QgrmBwn+OCyu0nD6LOYvOlI55G81+25Hfy5qZJDL0ubeLe7+kE7dztjdrQeTCuObGcuvZ4x6myPPE3TcHmkPciLlzc/f+xa9OKfj/wDgdAmlJwglmYO8l8rYSqPLV4SdieIHK2Fnguxu4FItmR5PpSGncyYdGHG0F0RZOfMO0dC6On+CB1j74/+hcdi2D72S35OLkpepIKZB3AXxp9+N6qs30ez+JES8I5SSCOXR1OS74gHy1upT3pg+zWsgKI2dWzDyV1Pa9E5mi0xBZUrSavy5jW6QJmElxtxSwAq8crTHA+Wsob5VH+wAgWHph+33Kj/ILobmjtvVTAibCvtikEEnPJjpCRZ+kwv/HTgU8MHEJ4wcJSlbfft/XVq+VOhfVJcaMTYVCmdLmqLhPr52yj/ZKxATXHFxUJlfan/X0QOGCN8qxROQhLEGGMfKwub39QGUWcSk4SfjJ0ZvhS6ieXtdx0gBbBOMQsVEW7gvFosgLPAUmuvtlo5t3pKYDXdNBrZJwPAT8uYAX/QflWAUXWEi62TgQa4arTGBYXatDJdhtTAOKWOgBlC33HTAJ21CB4Uqxyc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NXRwSzZON0RURmg3Z2ppVHFxWllMbEtKdnpnUklCSjRjZ0Z2aXJEUTNhay9x?=
 =?utf-8?B?SW9ja1FYUWpJOXlMdmdKU2t5cVBBVWdDa0ttZS8vMk4rUEVtaFYyNDlQcFMw?=
 =?utf-8?B?M3VybEg4SXlrQnBwa2RPMi9LR0hBZ051TXlCQTM3YnRQS20rVlVpeUczSGlw?=
 =?utf-8?B?YXFEUVZaTmswdjZKcmg0YUhhSFd1eERvdFlZS3RUMEJHNXovQUZmaHM2UEZO?=
 =?utf-8?B?VTVMRGg0Ym00V1J4MmlNOUlyY3VOM1diVnE4VVFXNlJIMndoYWxTNm9nOXMw?=
 =?utf-8?B?Ny9DVy9VK0hlcVIxaHBRQUUxeW9yOUIvc283Mzdydno4VEpicTA4VUhLdWhK?=
 =?utf-8?B?U09STXZxbHFTMU1ZQ0wzN3JKMFB2WDl5Z2NoSnc3T3pUSng0d2tsMkNtbThB?=
 =?utf-8?B?QXZTbm4wMW9VQmxRVXp4UEY4aWk3QTVTUEZ1Rit0Q2VkTVdESnhCcTM2YjFJ?=
 =?utf-8?B?a2V1MDM2SEU4Uy9zcFRZakVuS0xQN1BNNG94WGxuNEluQWROTUFrM25YQksr?=
 =?utf-8?B?WHJJS0VSbStYUStFUHV6b1hFWFY0Qkkzc1haTit2ZlFlSjJoRFc0VVJMY1ZB?=
 =?utf-8?B?cUNyTll6Zi9IVzZRT2lzWjhJZzFhUHdEWWVyMEM0VzNWTHphVTlmOUxCVDNr?=
 =?utf-8?B?K1RZWFZBbjFyK2ZGT2liSW93cUd1bEtYQ0NubFpUb0h1cUVNVVJwZTNQbllJ?=
 =?utf-8?B?REphYjFRdHJ0djViNWM2UGpvVG9Bd21LWTBjZnNsMmNDUWVBOTdFdGgrdVRi?=
 =?utf-8?B?VWM5SFErRHdCeGZuTzFyYVFkWXduVGpjdnlSa1NhU2dGSUZaTVRxcUcyRWp2?=
 =?utf-8?B?MzQ2TlFoNTExbzhEYkk4b0dYTkVnUHlkdklrSDBFaHhETkx2ZGtxOEJNWjRC?=
 =?utf-8?B?SlY0YzkvdHRtYjNzYnNXOHhraHFyV00yd2lIQ2Y4UUZ3VWEzUms3TW1rSG81?=
 =?utf-8?B?NTJMckpWdU8wSzVkVXcwMi8vUFNaVC9QUmlsYXpWU2FUZm9ZYlZwVWpPL1Ju?=
 =?utf-8?B?Tm5UTWNydDRUNmtuZ2F3MjNrRzVXb0JYWnFCOXZvTStVUHdkQjlJVHdpSVRE?=
 =?utf-8?B?Q0tIV2JnSTBVSytXL1JIZGdWYTVaaDBkTVVXSjlYL0J1T2dyL2UzdHNWcGM4?=
 =?utf-8?B?RUIyZitpNFpYTlg3VmJ4K2twU2RXU3VmWEkycGJqaG1MUHdCclpBbk1IVk9U?=
 =?utf-8?B?WXY0WlBQZ2JGQW1Idjc4aHRscUR5eUNSY0xNS01rc1hVb2dIZ0ttaTF2RFRP?=
 =?utf-8?B?VlMxNHZGd3FaWGR1bXhJRjV3Y2lpR2IvVVJNeGZJZTZReTJKczUrbGI3Q2ll?=
 =?utf-8?B?dzBmc29hcVRMaElDTmJIZzlETFNqSVVXaGg4T0Z0Q2lVVTYveDRKMk5LN3NI?=
 =?utf-8?B?d1BBS1ZnckljNDhwOXdmNVg5UExTaWI4OENGekpBL0kxbmpuUDZ6VEhQU2RQ?=
 =?utf-8?B?Sm56Zmt6cFZYQ3RmQWpLaHhyamJ4ZHFtb0NZeVlTMmFnbVhhREZBc0dDb3JK?=
 =?utf-8?B?TUtDTmpxUTk2R0ZwOCtYbXdEYXNBNVVBWVQrVXVpSGxyT3hRWkpyOVZSNkU0?=
 =?utf-8?B?YzUrNngzSzNXeUpxZXVvZWVjejcyUDhmN2FjeDhmV1dvUUp6TXNZcEg0Z3pS?=
 =?utf-8?B?QnpXcGh5aml0eFlhakJ0RnpSTWZNMGNtR3JmTTNOeUF6S2JiUnRGb3BRTzcw?=
 =?utf-8?B?VUgvSTFVR21TeVRkSmdibmVJRFpkV2E2VVh0ZTA0U3VMRzZqeDlBZzRiTnRm?=
 =?utf-8?B?WEF1bWIrNXJjckR1OHhqYTNGbU0yNXJJZWlIVmRJOHoxWkpUMWRaeklEQW5o?=
 =?utf-8?B?andIS2xkY2hLYUFYUlpmN2xTMk9VQ3lpVko0SnR6djN6Y1VzUWQ4dnQzRGU4?=
 =?utf-8?B?b0lPWFlwYnpqTDFVVkxldFR5K3M0UEo4MEYraWI2V2ZJTTNDQ3hDeDljck4z?=
 =?utf-8?B?cjk5SE50blRXdnJ3VDRmNWllNVlORVJ5Z0tFMDJqcVJVb29VazlmREh0c0NS?=
 =?utf-8?B?MXd5UlF5UWhsMTEwUE1raDVjL0MvVzdUY2k0TVQzWHdDOXUwelVkelR5ZW9Z?=
 =?utf-8?B?ZEhzL1ZwNDZzamE1ODg0TWVqWnh3Y3VNQTBtZlpOUWpHVkZjbFZRaUVhNHQ3?=
 =?utf-8?Q?fPBPYGOYgrXukCS7LT//J227B?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1487eba4-5610-4789-755a-08dc4f1e4455
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2024 11:57:39.3412 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cDg4ulYF9ymSLek3OUqk/mM7ULF0uOON3h4j3tvdI87MdN626LJoJc3ZosSYXOY6hAqXRfYN9vWNa0o3kICNpA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5863
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
VG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDA3
LzEzXSBkcm0vaTkxNTogRXh0cmFjdCBpbnRlbF9kYnVmX21idXNfam9pbl91cGRhdGUoKQ0KPiAN
Cj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4N
Cj4gDQo+IEV4dGFjdCB0aGUgc3R1ZmYgdGhhdCB3cml0ZXMgdGhlIGpvaW5pbmcgYml0cyBpbiBN
QlVTX0NUTCBpbnRvIGl0cyBvd24gZnVuY3Rpb24uDQo+IFdpbGwgaGVscCB3aXRoIGNvcnJlY3Rs
eSBzZXF1ZW5jaW5nIHRoZSBvcGVyYXRpb25zIGRvbmUgZHVyaW5nIG1idXMNCj4gcHJvZ3JhbW1p
bmcuDQoNCkxvb2tzIEdvb2QgdG8gbWUuDQpSZXZpZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5z
aGFua2FyQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jIHwgMzcgKysrKysrKysrKysrKy0tLS0tLS0NCj4g
IDEgZmlsZSBjaGFuZ2VkLCAyNSBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkNCj4gDQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsu
Yw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jDQo+IGlu
ZGV4IDZiZDNmZWMwYWE1Ni4uZjdlMDMwNzhiZDQzIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuYw0KPiBAQCAtMzY1MywyMSArMzY1MywxMiBA
QCB2b2lkIGludGVsX2RidWZfbWRjbGtfY2RjbGtfcmF0aW9fdXBkYXRlKHN0cnVjdA0KPiBkcm1f
aTkxNV9wcml2YXRlICppOTE1LCB1OCByYXRpbw0KPiAgCQkJICAgICBEQlVGX01JTl9UUkFDS0VS
X1NUQVRFX1NFUlZJQ0UocmF0aW8gLSAxKSk7ICB9DQo+IA0KPiAtLyoNCj4gLSAqIENvbmZpZ3Vy
ZSBNQlVTX0NUTCBhbmQgYWxsIERCVUZfQ1RMX1Mgb2YgZWFjaCBzbGljZSB0byBqb2luX21idXMg
c3RhdGUNCj4gYmVmb3JlDQo+IC0gKiB1cGRhdGUgdGhlIHJlcXVlc3Qgc3RhdGUgb2YgYWxsIERC
VVMgc2xpY2VzLg0KPiAtICovDQo+IC1zdGF0aWMgdm9pZCB1cGRhdGVfbWJ1c19wcmVfZW5hYmxl
KHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQ0KPiArc3RhdGljIHZvaWQgaW50ZWxf
ZGJ1Zl9tYnVzX2pvaW5fdXBkYXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUNCj4gKypzdGF0
ZSkNCj4gIHsNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoc3Rh
dGUtPmJhc2UuZGV2KTsNCj4gKwljb25zdCBzdHJ1Y3QgaW50ZWxfZGJ1Zl9zdGF0ZSAqbmV3X2Ri
dWZfc3RhdGUgPQ0KPiArCQlpbnRlbF9hdG9taWNfZ2V0X25ld19kYnVmX3N0YXRlKHN0YXRlKTsN
Cj4gIAl1MzIgbWJ1c19jdGw7DQo+IC0JY29uc3Qgc3RydWN0IGludGVsX2RidWZfc3RhdGUgKm9s
ZF9kYnVmX3N0YXRlID0NCj4gLQkJaW50ZWxfYXRvbWljX2dldF9vbGRfZGJ1Zl9zdGF0ZShzdGF0
ZSk7DQo+IC0JY29uc3Qgc3RydWN0IGludGVsX2RidWZfc3RhdGUgKm5ld19kYnVmX3N0YXRlID0N
Cj4gLQkJaW50ZWxfYXRvbWljX2dldF9uZXdfZGJ1Zl9zdGF0ZShzdGF0ZSk7DQo+IC0NCj4gLQlp
ZiAoIUhBU19NQlVTX0pPSU5JTkcoaTkxNSkpDQo+IC0JCXJldHVybjsNCj4gDQo+ICAJLyoNCj4g
IAkgKiBUT0RPOiBJbXBsZW1lbnQgdmJsYW5rIHN5bmNocm9uaXplZCBNQlVTIGpvaW5pbmcgY2hh
bmdlcy4NCj4gQEAgLTM2ODMsNiArMzY3NCwyOCBAQCBzdGF0aWMgdm9pZCB1cGRhdGVfbWJ1c19w
cmVfZW5hYmxlKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQ0KPiAgCWludGVs
X2RlX3JtdyhpOTE1LCBNQlVTX0NUTCwNCj4gIAkJICAgICBNQlVTX0hBU0hJTkdfTU9ERV9NQVNL
IHwgTUJVU19KT0lOIHwNCj4gIAkJICAgICBNQlVTX0pPSU5fUElQRV9TRUxFQ1RfTUFTSywgbWJ1
c19jdGwpOw0KPiArfQ0KPiArDQo+ICsvKg0KPiArICogQ29uZmlndXJlIE1CVVNfQ1RMIGFuZCBh
bGwgREJVRl9DVExfUyBvZiBlYWNoIHNsaWNlIHRvIGpvaW5fbWJ1cw0KPiArc3RhdGUgYmVmb3Jl
DQo+ICsgKiB1cGRhdGUgdGhlIHJlcXVlc3Qgc3RhdGUgb2YgYWxsIERCVVMgc2xpY2VzLg0KPiAr
ICovDQo+ICtzdGF0aWMgdm9pZCB1cGRhdGVfbWJ1c19wcmVfZW5hYmxlKHN0cnVjdCBpbnRlbF9h
dG9taWNfc3RhdGUgKnN0YXRlKSB7DQo+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUg
PSB0b19pOTE1KHN0YXRlLT5iYXNlLmRldik7DQo+ICsJY29uc3Qgc3RydWN0IGludGVsX2RidWZf
c3RhdGUgKm9sZF9kYnVmX3N0YXRlID0NCj4gKwkJaW50ZWxfYXRvbWljX2dldF9vbGRfZGJ1Zl9z
dGF0ZShzdGF0ZSk7DQo+ICsJY29uc3Qgc3RydWN0IGludGVsX2RidWZfc3RhdGUgKm5ld19kYnVm
X3N0YXRlID0NCj4gKwkJaW50ZWxfYXRvbWljX2dldF9uZXdfZGJ1Zl9zdGF0ZShzdGF0ZSk7DQo+
ICsNCj4gKwlpZiAoIUhBU19NQlVTX0pPSU5JTkcoaTkxNSkpDQo+ICsJCXJldHVybjsNCj4gKw0K
PiArCS8qDQo+ICsJICogVE9ETzogSW1wbGVtZW50IHZibGFuayBzeW5jaHJvbml6ZWQgTUJVUyBq
b2luaW5nIGNoYW5nZXMuDQo+ICsJICogTXVzdCBiZSBwcm9wZXJseSBjb29yZGluYXRlZCB3aXRo
IGRidWYgcmVwcm9ncmFtbWluZy4NCj4gKwkgKi8NCj4gKwlpbnRlbF9kYnVmX21idXNfam9pbl91
cGRhdGUoc3RhdGUpOw0KPiANCj4gIAlpZiAoRElTUExBWV9WRVIoaTkxNSkgPj0gMjAgJiYNCj4g
IAkgICAgb2xkX2RidWZfc3RhdGUtPm1kY2xrX2NkY2xrX3JhdGlvICE9IG5ld19kYnVmX3N0YXRl
LQ0KPiA+bWRjbGtfY2RjbGtfcmF0aW8pIHsNCj4gLS0NCj4gMi40My4yDQoNCg==
