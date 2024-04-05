Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27D89899DCA
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 14:58:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AB1310E7EE;
	Fri,  5 Apr 2024 12:58:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C7KoGaA5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D9CD10E7EE
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Apr 2024 12:58:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712321915; x=1743857915;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ZBnekpi1T0oCnilAfEI1TqmqVVESjXcjymxaeWoH5QQ=;
 b=C7KoGaA58VQbnWT3e7svgL30G3nLxl0yx4QZmLYDI2iokEuXvQ1DIQaI
 O/E3+4vnOC8IH+a/+eD1igfDH/pf/RAOg0OpXRYpog3Bul41WhAE+jDqM
 XQt+w55xlAjkATz2Z5slMJ3WkY5SzNGIS7+2yu5uwr2XdkyJt6/FmLwn3
 ujIa8n0ecZdI4KrtEt+9cL9SZV3cOkkySKfQFrDreUVUglgPEU9wF1pBY
 l86DfEeLk8d4e0+nHPXgyuTDuU3Q4th6iw738Ui84V7CEnVZFAD/tTf71
 4mgnDWnrvyNCAVLT0dxprmlCw6Ku83RD54bHpOJGUK+D0tmAiBITDEGNp Q==;
X-CSE-ConnectionGUID: g2SjWybJRzuIbvA3ElcgCA==
X-CSE-MsgGUID: FpN/ZoZgQti3dFpBeqK/jw==
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="11466537"
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="11466537"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 05:58:35 -0700
X-CSE-ConnectionGUID: vcnY/IUvR4esfDFz7BXYEg==
X-CSE-MsgGUID: Q4ks+NRFQgaA6vtgXJkFVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="19613221"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Apr 2024 05:58:33 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 5 Apr 2024 05:58:32 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 5 Apr 2024 05:58:31 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 5 Apr 2024 05:58:31 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 5 Apr 2024 05:58:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kW/ruNpknCJx4bPLzQrJpjcUIKZIFmrl0rcc5QHH6w2nHjeBjhdjkcB+m3jJ3zSx0Do76Hft3Et/TwwJt16BBrFy8eN4uFVyxAA96Vfv4qKhileesjXp7JabHGkaIvci6XsE/QhRju+kUC4QB+ZFJvFix/gQ9qjH7lypLaiQxtfMtUr6Zt2Sqndyzo0QGtU1wGQQz9PvGYlhY5ZhRccIfcHdyD+2oFUukm1nUApKksxBoSNAeBX1xnUS0dyGDCnHGNcOBZqxTSV06zeJY3tnD52oZkLGtvtEITh0TkIEp+DLJAYIlyDWQm9fwcv3TF4tQsquRLRkX8KLJTa4r7s2rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZBnekpi1T0oCnilAfEI1TqmqVVESjXcjymxaeWoH5QQ=;
 b=UPadXzugkKtU7YSjIJwstD4W5tNPnyBPRxHvdrfigLA8rsMDxm9gVTdudFM5xwBaj8T4OwL8zmF67131a9dFbZ4QXULAgHoGMt36LJbAKmAv4s/YODYtx5w9r6uwjpEBwxtgTbZpx93zs9zo4MMzTzkSasSdwe/7kGZ7PH1Gn5XNJGJlqDEJnAmsmQXczXIckNLUAt3B9kYw3BJSZFsI7/ui/RTaO6/DhNl2WVwmY8Ov34ljwuzPSXZLabDmCqG75bNoRlfpTtLHnaQ1Hz6QOUURACZw3LoqokKgQPr2fAlh0GFEpndEjrh4vfDvD3JCgn8WmvmXDr07G2TObj43YQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by CH3PR11MB8749.namprd11.prod.outlook.com (2603:10b6:610:1c9::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.26; Fri, 5 Apr
 2024 12:58:30 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a%5]) with mapi id 15.20.7452.019; Fri, 5 Apr 2024
 12:58:30 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v2 02/17] drm/i915/psr: Disable PSR when bigjoiner is used
Thread-Topic: [PATCH v2 02/17] drm/i915/psr: Disable PSR when bigjoiner is used
Thread-Index: AQHahtf/mfMerDeStEKYsyEuoSKFRLFZP7UAgABkZdA=
Date: Fri, 5 Apr 2024 12:58:29 +0000
Message-ID: <IA0PR11MB730790443637DE7457E342CFBA032@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240404213441.17637-1-ville.syrjala@linux.intel.com>
 <20240404213441.17637-3-ville.syrjala@linux.intel.com>
 <2a410df93d112ec9881419820baaf4d3ffd4ee7d.camel@intel.com>
In-Reply-To: <2a410df93d112ec9881419820baaf4d3ffd4ee7d.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|CH3PR11MB8749:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kadF22gjLkwSe+uzA6A40rBbaVd0E6gvsl7ZFu8q5CCt4iJNrxSH4eonXkjpaoLAanmCI8C23licb1ol85aOtxPRrBbo976ndhHyer5CmhphmoTqrlkzfy1QsH/04AgpSwqEc+3cA55z18JGLoWtSL4BUqCo9yuqFQVQcLimoD8qedKQgamkX0g15UqNRDC9Qxf7eTUQ2rkN276OcLFYk9AxTCL46q1rNwIMWl1KSYD0U/PilGq53dk4crcq4VgsP0tMnopCNBnF06Ryb9zhadVK5QZPj0y8MhJ+r+V37ge8o+kBgyMnxyK9rOcjFZ7zkzMEPHFZDqHo2HdOQiw6EDhHIXS1U7UqToWWAnyDeM69v1dk+q5OqebL1i2ZnnMNjq0DidvMnO3g3BYBDUgBu5pIiQMQSp6SHdj49pXk8Qqb/d0PoFetBD9Gpv+YUmxcDYNGoT42IYIjfCfjQSHea38TSNAvzZc1oua7u/woL/WqXyVbtIhyb3qf/XLjy6B1i2lrV5e7EaoI1C+IItcujjGj39ILqNGxk3CSpNm6dliN/ntStXI2h5OJcjFQVUhK/AOePoig2sUg+7TOOcpMUnnbrTkGU03sKNEQZTjlftBacbfWHpn+f+SX3Z+vsebbhOjsFCWdq2TBx525xfjxQ+r585ArpP3LQ/xHX3vgE3w=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Znp5UEpBU3M5clRCMklLZkJoS2ZsekplbXFWd2RoVGkyam1LRnJnS3pSVW9m?=
 =?utf-8?B?b0JlQTI2MnA4WnZFTFFEQnBnb1VKc1EyUnBvUzY3YXdEb2lBTUdrSDNaWjU1?=
 =?utf-8?B?RVRmaEZkT0N6QzgrbERiMWo3ZHpqR0JQaHYvYzRKbk43akJCdVZFM2ZQazRi?=
 =?utf-8?B?aWROQ3ptb0JRc2EvS1ZHSDVSUFpadkZoNEs1L0t4RS9Vek1HVmFHam93S3hG?=
 =?utf-8?B?bys3N2dHRUxtaC9CSmhDUGhKTU5zaFdHYU12T3phcXBVY1RjZDI2UXlqRXp1?=
 =?utf-8?B?MUdXNEFFK2kxSUZsaG5HL21FeDY4cEplckw5ekJ4UmNjV1hLdml5ZU1mMGlJ?=
 =?utf-8?B?L3MrVFloc0kyNzFOTDNNaWE5blQzWE5Ody9zZGVaU1owNlRIL0NKZG1qV1pG?=
 =?utf-8?B?cWdTZ3cvM3FUSTBMZ1AxOE5ERkFxLzZVeXkvSmFWenpKUzZ1NlRuZFZvKzN5?=
 =?utf-8?B?UURNOW1tdDBBRjRZSFNOcEIxbWRlcnZaOXRLUE5vYlBRY09ZWDJDdFpQTy9X?=
 =?utf-8?B?eHova3FyN011RkF4Zi9SRHR2bVdja1loaWtRRzMxVE90cm1IUThTTCtyekNw?=
 =?utf-8?B?dS9xNFpPbzVHN3FhbnkyS2JERzhKU0xtTTV0WVlXOW1BY1MyMm1tMG4zNGRu?=
 =?utf-8?B?ejhweG9sZ3YrdnFDVXZSL1V1eUJXenhnc3YwWjRma014SjBZZGdwSm9vVHZR?=
 =?utf-8?B?bWRNRFVqYk9TZmN3VE9qbmhvbkF2R0M2My83SE83YWJuWXBIUHU4UnRBRDJX?=
 =?utf-8?B?Si8rY0xzL05NTjQ3aWpIWVBQb3J0bTl2eGdOb3NoWkUvMFpBTmNoR1VMSVBV?=
 =?utf-8?B?WFNRUlhTMkQ3M2xCd2JoK0hQYmljMEFLVFpOZ0pNSVFvOURNc01QRmcxLzUr?=
 =?utf-8?B?bG5MTmxhUEZYOTAxK3FpR09sNW8zSFk5ZXVIeURsaXQ0bWYyWmpGMWVNUG5H?=
 =?utf-8?B?Z2EwVDhFUC9VOWpDRUY1RG1od0JIdENaUERsT3JrTnF2V2FQeGJZYkNIRzY2?=
 =?utf-8?B?OXhUeGxxMW10eFFPN1RENnB4c1JoM3dUVzNKN2J5WlErUTFZVEE1OWFXeG5p?=
 =?utf-8?B?bXBLdWdCVHU5cU91bFJHbnFSUXJ0YjdYeFNJd3o0cVVJWldLL1ljVEpGbGpV?=
 =?utf-8?B?VjlvRUtqSVRTbkdYTU9QL204cVQ1SEo4ckxkeDFMcVFUUERLSVZoWDkvZlM3?=
 =?utf-8?B?c2hjQVMya1pJMWdhZm52bTYzMlVBcXlubDM3Y2R2THlCSnhVeitzOXBoTUFn?=
 =?utf-8?B?ZGppbHJ6Z3lMNjNuTEYrTjJ1YUcyWVIreGR6RVlyTGQ4a0l2WHQ2TlRFc1dh?=
 =?utf-8?B?VzBHdVBKeWlyVkdLSUNGQ28zTVdoSTloK1BKWjRoVTFFYWo4YnhyRnV5bHFL?=
 =?utf-8?B?T0psdUxoWiswdkp2dkdWdVQ0ZzcxekduaVFGUXNlbGt1UWpBRm9JM240cHpp?=
 =?utf-8?B?Zkx6UzlKaFNUQmx1aTVQTTFFSGNCZHFKYTMvejBHdTNIeG5QSzBlUGE3VDhT?=
 =?utf-8?B?a2lkcTZ2VnJMeDJHZGdiVTBEMGl6NksxM2pFU0EzSVhPWWFkRjd6Z0svY3FG?=
 =?utf-8?B?SG5FYkJuK1RMRXd4bXFvZHJOUkI4d2g5ZldNdGtWQWxxL3U3WlhNOWpQNkZN?=
 =?utf-8?B?bHhsdW12RlljTlF6WXppTmtpd3dRbWorZHB3ZWJsanZvM01PODRPK3NnUURP?=
 =?utf-8?B?U0hVOWpXSFJPWFU5QmlvblpuMVZ4UkxEeDZqbUcvZ20yMzdYUFd5QU9KVVA5?=
 =?utf-8?B?cEpLL0NUWXJ1bVAwWUtncko5aXZwYXdiYVYreSswbHdTRVZMMVZIY2kycitB?=
 =?utf-8?B?Z3RuaURRTklBV1hjNmhiVmtpQW9lamM3VjBjRk0vNVJVVlJhYTJGbkladVFt?=
 =?utf-8?B?YUVZTzcvMit4Z2NDVjBYN3lRcDI3VHFmcU1OR3ZGYUFCZDF2OTFKYUtBOVI2?=
 =?utf-8?B?dENseXl0V2R0SDJFcmcxMHBYNTk4Z245N09BWDYyUWVmR1ozcFN6bmV2UVlG?=
 =?utf-8?B?Nzhra0xITWxHTVFTazFHYkNSQStxYzZtckhkbkJmSTF6RXU1bkYxRXpJcnhD?=
 =?utf-8?B?eG82d1MyQ2tCbzNjZ3NuTDJFK3RQdldDbmpndC9hTXpSTnJ5b0k5bmRCMnQz?=
 =?utf-8?Q?oobMh4DuLieiA2ZiSWTrXEPLU?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 368b1a45-2e72-4dc3-0c11-08dc55701764
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Apr 2024 12:58:29.6414 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: T9SYzeOi/9OhdxItbvz2K61yO9eoGsxc3ujoqF+kwtrTiaSb/D20v3DIkWpKWQEkkKStDfdVQRg17Lwdo1oOBg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8749
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

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEludGVsLWdmeCA8aW50ZWwt
Z2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YNCj4gSG9nYW5k
ZXIsIEpvdW5pDQo+IFNlbnQ6IEZyaWRheSwgQXByaWwgNSwgMjAyNCAxMjoyOSBQTQ0KPiBUbzog
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb207IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcNCj4gU3ViamVjdDogUmU6IFtQQVRDSCB2MiAwMi8xN10gZHJtL2k5MTUvcHNyOiBEaXNh
YmxlIFBTUiB3aGVuIGJpZ2pvaW5lciBpcyB1c2VkDQo+IA0KPiBPbiBGcmksIDIwMjQtMDQtMDUg
YXQgMDA6MzQgKzAzMDAsIFZpbGxlIFN5cmphbGEgd3JvdGU6DQo+ID4gRnJvbTogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gPg0KPiA+IEJpZ2pvaW5l
ciBzZWVtIHRvIGJlIGNhdXNpbmcgYWxsIGtpbmRzIG9mIGdyaWVmIHRvIHRoZSBQU1IgY29kZQ0K
PiA+IGN1cnJlbnRseS4gSSBkb24ndCBiZWxpZXZlIHRoZXJlIGlzIGFueSBoYXJkd2FyZSBpc3N1
ZSBidXQgdGhlIGNvZGUNCj4gPiBzaW1wbHkgbm90IGhhbmRsaW5nIHRoaXMgY29ycmVjdGx5LiBG
b3Igbm93IGp1c3QgZGlzYWJsZSBQU1Igd2hlbg0KPiA+IGJpZ2pvaW5lciBpcyBuZWVkZWQuDQo+
ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGlu
dXguaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYyB8IDExICsrKysrKysrKysrDQo+ID4gwqAxIGZpbGUgY2hhbmdlZCwgMTEg
aW5zZXJ0aW9ucygrKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMNCj4gPiBpbmRleCBlZWY2Mjk4M2U5ZGIuLmEzZmY5MTZiNTNmOSAxMDA2NDQN
Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IEBAIC0x
NTg0LDYgKzE1ODQsMTcgQEAgdm9pZCBpbnRlbF9wc3JfY29tcHV0ZV9jb25maWcoc3RydWN0IGlu
dGVsX2RwDQo+ID4gKmludGVsX2RwLA0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgcmV0dXJuOw0KPiA+IMKgwqDCoMKgwqDCoMKgwqB9DQo+ID4NCj4gPiArwqDCoMKgwqDCoMKg
wqAvKg0KPiA+ICvCoMKgwqDCoMKgwqDCoCAqIEZJWE1FIGZpZ3VyZSBvdXQgd2hhdCBpcyB3cm9u
ZyB3aXRoIFBTUitiaWdqb2luZXIgYW5kDQo+ID4gK8KgwqDCoMKgwqDCoMKgICogZml4IGl0LiBQ
cmVzdW1hYmx5IHNvbWV0aGluZyByZWxhdGVkIHRvIHRoZSBmYWN0IHRoYXQNCj4gPiArwqDCoMKg
wqDCoMKgwqAgKiBQU1IgaXMgYSB0cmFuc2NvZGVyIGxldmVsIGZlYXR1cmUuDQo+ID4gK8KgwqDC
oMKgwqDCoMKgICovDQo+ID4gK8KgwqDCoMKgwqDCoMKgaWYgKGNydGNfc3RhdGUtPmJpZ2pvaW5l
cl9waXBlcykgew0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkcm1fZGJnX2tt
cygmZGV2X3ByaXYtPmRybSwNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCAiUFNSIGRpc2FibGVkIGR1ZSB0byBiaWdqb2luZXJcbiIpOw0K
PiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm47DQo+ID4gK8KgwqDCoMKg
wqDCoMKgfQ0KPiA+ICsNCj4gDQo+IEFyZSB0aGVzZSBwcm9ibGVtcyB3aXRoIGJvdGggUFNSMSBh
bmQgUFNSMj8NCj4gDQo+IEJSLA0KPiANCj4gSm91bmkgSMO2Z2FuZGVyDQo+IA0KPiA+IMKgwqDC
oMKgwqDCoMKgwqBpZiAoQ0FOX1BBTkVMX1JFUExBWShpbnRlbF9kcCkpDQo+ID4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBjcnRjX3N0YXRlLT5oYXNfcGFuZWxfcmVwbGF5ID0gdHJ1
ZTsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgZWxzZQ0KDQo=
