Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF10B78C40B
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Aug 2023 14:16:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C9D310E301;
	Tue, 29 Aug 2023 12:16:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25D1E10E301;
 Tue, 29 Aug 2023 12:16:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693311399; x=1724847399;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=F1NesQKHaA8s6MM1v1y7i/5RskkEexOJ0NnnIHnbQV8=;
 b=fimhUzamtEqk8coSDCfehB6bf+HaFA2VSRjgGy2djaRCRXaSVM509MTh
 FAK89CadaG3mTT2+PBxfUPfMNqPTzV/p6vjvLmIj5vOpKHWcf/BbWlyG9
 1ilRKMvWdaLblxJErF7oReIuIl3jLxyZxpx3sfRQGTie8kH9jx8ogBVyR
 tL0aHDNFKh1SUCOTyFZT9HZ8oLX3J/Zq8fJqsPcsZO1SCy37t4sxckISV
 0LkgAgAASuPtmXU+MnsPWPDlfE6hKtjuYJHZEOC2EuvwKbg7ur+Y2RLtp
 eg6KQm7jaW1BlYftQexV1Bc95I30++Y1Aqy88EqGN18ja0workl7q2pJb A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="379122827"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="379122827"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2023 05:16:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="1069449816"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="1069449816"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 29 Aug 2023 05:16:38 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 29 Aug 2023 05:16:37 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 29 Aug 2023 05:16:37 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 29 Aug 2023 05:16:37 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 29 Aug 2023 05:16:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WlPKIkGAxxduiu9bQCHXAQ1FU2hXAkEKiP+iLFihj2cNsm7JdTKEAWJekKH5GzdeqgDU0HmRp7WqU0C7J9X5hKHAPrp1CDNPpwB6yQybzwkefBnP/xXanOwVX8JYmiMtEIQ+LohO34B/d/TCsoA3mGiZ7xdk535eiYIiMInGgdxZn6vFoaDcqMiUc+S903gPy+IWWDsnYxKTxYj79X856XNZqaffxJve/bxgdPP1I6r2QcXsXZDYqqB6LKheZ9fgmz04LhTHPf+21a7ptSvUa7MVOgRwDk/q1uPVT440XN7gjqUpSq1A83weprZbiR2JQQiAIfxFe/Q+FxL9U4h1Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F1NesQKHaA8s6MM1v1y7i/5RskkEexOJ0NnnIHnbQV8=;
 b=SuMgxwhs9bj6Ol+ys5C83Qr5AUGp9evpTCiSDQCeoDIopyw+Q7hyO05jtQvy/OI0Ts6S21+fIJ0ZoFNbGaKoK6Owu9lPrX8qc25/5vrSOeru7Xh/ivqq0X9zFdjuGJ9IDZNvTEouqdwMxHukGhWJ2wghJ9gbagkU2MI8VLYUWlxMU5grVlDI8Inr83p2rXoHhXUQkxBDArtbHsW6XFgNzbxLNpI8CKgsy1b+1R8S4BdVhnqSL7+YtZznGD5pW/xW5ns5Rh7cW5mH8E9quEJ4lxavQVjdtJZxfaRoJHvNiF5QYIH5TWMGft0MR/uKyqqXItz5znWq8l7zkJ8saWE2Kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by SJ1PR11MB6108.namprd11.prod.outlook.com (2603:10b6:a03:489::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.34; Tue, 29 Aug
 2023 12:16:33 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::cf28:4320:6c5e:aec]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::cf28:4320:6c5e:aec%5]) with mapi id 15.20.6699.035; Tue, 29 Aug 2023
 12:16:33 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [Intel-xe] [PATCH 1/4] drm/i915/lnl: FBC can be enabled with PSR2
Thread-Index: AQHZ2Xfft+GG3vKL5Uy/XaGyCtKtB7AAZASAgADOVYA=
Date: Tue, 29 Aug 2023 12:16:33 +0000
Message-ID: <62beb1e24bc20a22afd32385f0cd32d8a6e938de.camel@intel.com>
References: <20230828062035.6906-1-vinod.govindapillai@intel.com>
 <20230828062035.6906-2-vinod.govindapillai@intel.com>
 <20230828235801.GO6080@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20230828235801.GO6080@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|SJ1PR11MB6108:EE_
x-ms-office365-filtering-correlation-id: d0b13444-262f-4b6e-dd42-08dba889c893
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RANCW30xzkzLVVyIrTaR7v6lEx9Y16qnkurA6mqNUhlj2ygiZ99T0+fmH3GcnkGpOnDS0bdOMDUqWJ36GMa8rJMOKOqwRs7usutgpw30l8XUucj4TH/EkCDk3O07kt3alyVI/s5MXGsdYwWtAccx3FJ/0/Q1cTvtW0G7ZSE/TJBYZAt+n2nW7n2Hnf0sif5BaCRXsoP+OxJhtqAiE8GNpKh0CHKTFxEKNXgG4e9Rkc5VMt1DD2ep59PeDl6pHNkrTFZdMmVwHi/y/I9nPCgr9myM2XRrGBOR+aOha+cxPueoednjOIYJENbXszlpj+OPTkP25Zr86StX4WVAu2OzmPR8NH4JQraBqPEsMXzTxxjiu6ZK5IYL3C/Ra+bWMApucohWp19EuiVYffMDTCj4EoTNiDSDMH8yNo5zgokxjRZ7KFdF2jFEifowPD2kfaPqR/RcKjlYMCR6G3RIo6RiGVVwFiVU06FUEV+vufoWYxNbdXNacAULtr9HA2KDq9Ttix2STQ3T0ZKKtvXfI7RIuq0jPnXHozUiTE9P7+NeiwsMCgNLR3Iqb6NFAoijCqj6po8Sux3uwg2OeFWgDd8neqHv/HAbIZY2yLEToJ4UEkjvrnA5f/3livK+LPMyK69x
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(136003)(346002)(39860400002)(376002)(396003)(186009)(1800799009)(451199024)(71200400001)(6506007)(6486002)(86362001)(36756003)(26005)(2616005)(107886003)(83380400001)(6512007)(38070700005)(316002)(6636002)(66446008)(5660300002)(76116006)(91956017)(66946007)(37006003)(66556008)(41300700001)(66476007)(38100700002)(54906003)(64756008)(2906002)(450100002)(122000001)(82960400001)(478600001)(6862004)(8936002)(8676002)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UE85aXpBZHdDMzZ5N2UzNURFdDRYeTl6d2RhZkxUcXpUTk40dU56d21LWSta?=
 =?utf-8?B?WDJVYjFuU0p6aURWY2VyVE1xS2xYWmMrS2kyOGhGZUtxUVM1OTVyVEkwejBx?=
 =?utf-8?B?TFlyM3lralJPQ0hnYmFDdkU5eU95dWpkYWtkRUNBQUdadFNHTjNDK2xqczBl?=
 =?utf-8?B?UmVtcnRENEZPQTV0bWRtR3lHZmQ3SldtRzJnSjd1UjlBbitXcDRhdGRJYzB6?=
 =?utf-8?B?MEF0NWxGa1BXMzV3bUwyMWxqMW4rc0Rlb3lzQ3pwSFE1YmlsL3VqbXYwTTND?=
 =?utf-8?B?RWJUYUxkNGk3cW9JZ2VkWlVDRDZJWFd6eGhPcWgyWlB6NFZtZWtqUmIwL3Y2?=
 =?utf-8?B?NHFCYnBWZm5Od1FEaFpDWmxyaDd1STUrQzhmbEY0eFFIQzlFc2RZVGE0YWpP?=
 =?utf-8?B?VXFQMThuOUdrYzF5WjVqWStCRzE4TjQ3WkZPZ25SV043SVBka201MEthUGhk?=
 =?utf-8?B?aElJTmR0c2dyUEw2QTRRZFZsb0x2TS95U3hMVFR4OVlMYVFER1pQUXY0ODJl?=
 =?utf-8?B?ajRJMVVaOGx5b3drd3lrWlRVNnZiV0tqRmFQYWU4N0ZSTU13b0cyZFlTSHF3?=
 =?utf-8?B?MzNMUzZqdjZhRFBTQ2M4bmFIRG9Ybm1sZmh4RjArNERJNThXcGh5dHo0Mjcr?=
 =?utf-8?B?ejRtOVJTcm0yVitaamhrMmFQb2ZBQ1lFeTQzK0tCS1cxMkM5QWJMNHUxaFh0?=
 =?utf-8?B?b3A0dHBHS0NVV1NCMjJQR2UxZGNUY2VSMGRmdEdrMDRjSEJDa25uby80MEhJ?=
 =?utf-8?B?bFJhbG13S2M1Uk1aOTI1T0dESDdHY2NRSnJrNTB0OGJIeUtXTjhSTGFzTXFT?=
 =?utf-8?B?c3pFUG5XSk9mdWxuMG92WDY2V2pQS05xNSt5dWpLdW51VjhjVUU3Q1llVzE1?=
 =?utf-8?B?ZlFjaUJMZEhHYUFPNnpSVEV6OGlqRENuM1FkMTkyOEdLbnhXbHFXQkVTZnN5?=
 =?utf-8?B?OHFhOWhZd2E0aDlEMUhBejV4MjhFZXFwOE52K1RDYTZ2VExEZHFjOVlMM2cr?=
 =?utf-8?B?dmdVRGhuUEora0hkYzBPcGZiVjNmUE9JRndzZnRnWmJCNDdvcC9HWVd5T0xI?=
 =?utf-8?B?NWY5WHdHNE1jenlpVVAvSXFkdU9VTlVLOStEcmdmQ25kT1k2ekw5ZzY0NW5O?=
 =?utf-8?B?MjRKR1JJVzJyQU9CSFh0aDNQUzBlaDcwaTFzclB4VlRLM0I0RUFFcUtoWEtv?=
 =?utf-8?B?OHU5UTVEL2QxdFVkUld3RlhuNTAwYWlMbTM5akRkQlZ5cEdwMDduTlVMTWt0?=
 =?utf-8?B?MWlwS21oZkFmU0ZqR3lVL0FoMi9Dd2VwUVE3SzMxTFBwSFA2RXNUTDhQeC9m?=
 =?utf-8?B?NlVkNXFpdXVDV2JEcVZUQW0xQzZVUVlGZ0xNWE9RUld1SGVBTFkvaUs1KzBU?=
 =?utf-8?B?SCtiZzhESm9qUDliVzR5eHNsbG9INXM1YVVEaUZFK01QK29oWkMwaHdwS0pC?=
 =?utf-8?B?cHRjZDdnTjlieFIzVTRneWJXNmtvNEF3cVJ3ZXFZYzJMY1RGTFRnZTlyZDhS?=
 =?utf-8?B?T1NjOGloWkRjUytJck4rZUxNMTBJWHhSZ3lyRmxWNEpKRjczancxaEhia3pv?=
 =?utf-8?B?cDV3VmNRY3hJSE9zbDFkbVJnZStabzJiWkIva1FGQjZXUFN6bjl0bnU2bHRO?=
 =?utf-8?B?c3hiN0Z3SzlxbFV2Q0phNVRRNi83T0xtd3ZYREVzMW9OTjJWTVFDSnhjNWtJ?=
 =?utf-8?B?TlZENDNqWFlwZjZweHdwV0RubmY3WnJ0WEFhVDNvR0VsSVNCdGJ5MGE4WG1m?=
 =?utf-8?B?TkJEN1dicFo1NDhxVEJvdUZDRHQzZnBQVE1CRy9jbWxwTW4vdEk0emphQmFR?=
 =?utf-8?B?RS9yWFVOVEVMdE9wczZweWU5N1lITnVjTWhEVVZ0R1d0U0dhNnhaRTQrSXNR?=
 =?utf-8?B?VkJIaDdoNno1bjNFaFUzR3AvMDVVZkhlRTVwMkVodDFyYTJXamV6U2d6TElh?=
 =?utf-8?B?T3JuZWw0dTZLSkkrSmpIRUE3OXAvZzBPZWttM2hwbUJvK0dURWJZWEVMTmQ2?=
 =?utf-8?B?dWRXVGV1VUlmL1ZRNGdmRk5hejE2a3I4Mi9wNnl5M0w0TlZiNU5ib1lPbStD?=
 =?utf-8?B?ejhqYjFBaHZvb3ZPRTBKLzRlR215dVl6RWFuM0pMUm9qWmowRFJBTlJiOE1C?=
 =?utf-8?B?RFpRQThFRlQ5RCtEVnJmcHFSTlRCL1EreTJnU3FJQTJFZThGWkluUDVWS3pv?=
 =?utf-8?Q?ic/pNvDDt42TEtkKq8UWJL4=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <36F314F701C73E46A84F74C3EDF30D8A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d0b13444-262f-4b6e-dd42-08dba889c893
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Aug 2023 12:16:33.1876 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iw07FgPq1L/PQcxm7UnOW/k1+Y7SY6x8hbkAP0q8TSVCcOEnVFKXxj4XBWRuK92U3LokgD9njKr5khebJrGaah//JeJIK0XI5V79ufwf/AM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6108
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 1/4] drm/i915/lnl: FBC can be
 enabled with PSR2
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
 "Syrjala, Ville" <ville.syrjala@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDIzLTA4LTI4IGF0IDE2OjU4IC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBP
biBNb24sIEF1ZyAyOCwgMjAyMyBhdCAwOToyMDozMkFNICswMzAwLCBWaW5vZCBHb3ZpbmRhcGls
bGFpIHdyb3RlOg0KPiA+IEZCQyByZXN0cmljdGlvbiB3aXRoIFBTUjIgY2FuIGJlIHJlbW92ZWQg
ZnJvbSBMTkwgb253YXJkcw0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IFZpbm9kIEdvdmluZGFw
aWxsYWkgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+IMKgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyB8IDQgKystLQ0KPiA+IMKgMSBm
aWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gPiANCj4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gPiBpbmRleCA2NmM4YWVk
MDdiYmMuLmQzNjQ5OWQ3ZTBiZSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9mYmMuYw0KPiA+IEBAIC0xMTY5LDExICsxMTY5LDExIEBAIHN0YXRpYyBpbnQg
aW50ZWxfZmJjX2NoZWNrX3BsYW5lKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0K
PiA+IMKgwqDCoMKgwqDCoMKgwqB9DQo+ID4gwqANCj4gPiDCoMKgwqDCoMKgwqDCoMKgLyoNCj4g
PiAtwqDCoMKgwqDCoMKgwqAgKiBEaXNwbGF5IDEyKyBpcyBub3Qgc3VwcG9ydGluZyBGQkMgd2l0
aCBQU1IyLg0KPiA+ICvCoMKgwqDCoMKgwqDCoCAqIERpc3BsYXkgMTIgdG8gMTQgaXMgbm90IHN1
cHBvcnRpbmcgRkJDIHdpdGggUFNSMi4NCj4gPiDCoMKgwqDCoMKgwqDCoMKgICogUmVjb21tZW5k
YXRpb24gaXMgdG8ga2VlcCB0aGlzIGNvbWJpbmF0aW9uIGRpc2FibGVkDQo+ID4gwqDCoMKgwqDC
oMKgwqDCoCAqIEJzcGVjOiA1MDQyMiBIU0Q6IDE0MDEwMjYwMDAyDQo+ID4gwqDCoMKgwqDCoMKg
wqDCoCAqLw0KPiA+IC3CoMKgwqDCoMKgwqDCoGlmIChESVNQTEFZX1ZFUihpOTE1KSA+PSAxMiAm
JiBjcnRjX3N0YXRlLT5oYXNfcHNyMikgew0KPiA+ICvCoMKgwqDCoMKgwqDCoGlmIChJU19ESVNQ
TEFZX1ZFUihpOTE1LCAxMiwgMTQpICYmIGNydGNfc3RhdGUtPmhhc19wc3IyKSB7DQo+IA0KPiBB
Y2NvcmRpbmcgdG8gYnNwZWMgNjg4ODEsIHRoZSBzaXR1YXRpb24gaXMgbW9yZSBjb21wbGljYXRl
ZCB0aGFuIGp1c3QNCj4gZmxpcHBpbmcgdGhpcyBiYWNrIG9uLsKgIEZCQyArIFBTUjIgc2hvdWxk
IG9ubHkgYmUgZW5hYmxlZCB0b2dldGhlciBpZiBhDQo+IGJ1bmNoIG9mIG90aGVyIGNvbmRpdGlv
bnMgYXJlIG1ldCAobXVsdGlwbGUgcGxhbmVzIGVuYWJsZWQsIHNlbGVjdGl2ZQ0KPiBmZXRjaCBp
cyBub3QgZW5hYmxlZCwgZXRjLikuwqAgT3RoZXJ3aXNlIHdlIG1heSBiZSBodXJ0aW5nIHBvd2Vy
IHVzYWdlDQo+IHJhdGhlciB0aGFuIGhlbHBpbmcgaXQgYnkgdHVybmluZyB0aGVzZSB0d28gb24g
dG9nZXRoZXIuDQo+IA0KPiANCj4gTWF0dA0KDQpUaGFua3MgZm9yIHBvaW50aW5nIHRoaXMgb3V0
ISBUaGlzIHBhdGNoIHdhcyBkb25lIGJhc2VkIG9uIHRoZSBkaXNjdXNzaW9ucyBWTEstNTA3NTQN
Cg0KDQpJIGNhbiBkcm9wIHRoaXMgcGF0Y2ggZm9yIG5vdyBhbmQgY2FuIHJlaW50cm9kdWNlIGxh
dGVyIHdpdGggYWxsIHRoZSByZXN0cmljdGlvbnMgbWVudGlvbmVkIGluIDY4ODgxDQppZiBuZWVk
ZWQuDQoNClRoYW5rcw0KVmlub2QNCg0KPiANCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoHBsYW5lX3N0YXRlLT5ub19mYmNfcmVhc29uID0gIlBTUjIgZW5hYmxlZCI7DQo+ID4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gMDsNCj4gPiDCoMKgwqDCoMKg
wqDCoMKgfQ0KPiA+IC0tIA0KPiA+IDIuMzQuMQ0KPiA+IA0KPiANCg0K
