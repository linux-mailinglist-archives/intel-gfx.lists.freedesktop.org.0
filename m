Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5396B6B507A
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Mar 2023 20:01:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F7B210E079;
	Fri, 10 Mar 2023 19:01:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D05C10E079
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Mar 2023 19:01:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678474883; x=1710010883;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=8hkt4zLvo9/7iXRuRO3t1naKvqXVY95+f5XXaufySpg=;
 b=jB18WNkuc3UxEp9mT7QlpzzE+6VUFSWFPLfSHCOSQct5QjhiSyy1l4oT
 fg+2hCaRhsaA3BjRrUvAzmDcNdWjbzcyaCqHkq9pH6peSkM3lgaN+QsWJ
 9/7nZwZadYw+YfYRcHyPdGtP28osAPP0yfyNCphmhAV7vBKYlsHrO+bFd
 sOYCbQz76V0NUIHKlFO4riNeHjl00ViG+YNYFQsCrEuPC65T6BrGx5tB9
 QTZrGcNHUBnhGA5eWD9McXJpmxfICGdQrcnEnHMAuRMhc6CKH8kNXffAV
 HnHx9xnZJ5QARr3NPPSLeAoCAEC/+2IZ4K/WZXGS4p0pvGSHxyiXXGsx1 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10645"; a="325160376"
X-IronPort-AV: E=Sophos;i="5.98,250,1673942400"; d="scan'208";a="325160376"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2023 11:01:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10645"; a="1007228967"
X-IronPort-AV: E=Sophos;i="5.98,250,1673942400"; d="scan'208";a="1007228967"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 10 Mar 2023 11:01:21 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 10 Mar 2023 11:01:21 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 10 Mar 2023 11:01:21 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 10 Mar 2023 11:01:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GtuIsuyA88ehokt9fXdORukbgkIxSNCGrq0AnY3tuAs2VKYfchRrjcFPUc8uvJHarqAxH1y2CreF/v0E+Yyoy14wHBxBiSD94NtyoQc6pqHMnHzgCvXdsLu9O5fEXLukGe1LZLV41gDucjhdB2jROKq4kfRBSNa39WOYGBjZG1bGpmePx/ci9GUeEhZHxqnvGYPm74oDYmV0S2RgTuTIvVhOSD6oVcKHuxAc5b9f6m/7fUUyf4WM7zoFX8/TAgkW86hhA3uewbQQ5UWy7IdyaQ0c0tAyyzjCh+yr2oz2PtDoAuhGp3NAXqrQ2oRsd+PL4Cq3HtKVVVwu5MrEesVitg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8hkt4zLvo9/7iXRuRO3t1naKvqXVY95+f5XXaufySpg=;
 b=CN5bLW4Pciv84FwmDGnKb+IGAYPrVnw4WmXzKFy44Q68syF1ktfaRypx7WhL2GLESJOj1xBbgu+eswqO1zv2CoiYdUKGiSdygJtUOSW4LzPWYOfnODODlYmddlAzUbXVlGJBK+A9hnIDyVZQ9f4dn9gosNNjG27wisNxQvaedETuAn9c5ce9bW1tnzeK24YQqMGImHFNbNoTbPvARxyB4P5Le1Nf+Gt2a0XvyEm6KRzfnzRazx07+yqz/jYJ1wRsr/sNrQWj0nLgrCCNoqcxgV9veQPuQRnLFNJIq+TWufmr/xYk4em+aknggrZawQ775DTmB1SPo3vCiLxKfY5X4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1935.namprd11.prod.outlook.com (2603:10b6:300:10c::20)
 by PH8PR11MB6803.namprd11.prod.outlook.com (2603:10b6:510:1cb::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.19; Fri, 10 Mar
 2023 19:01:18 +0000
Received: from MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::9e51:4069:b7da:c7b8]) by MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::9e51:4069:b7da:c7b8%9]) with mapi id 15.20.6178.019; Fri, 10 Mar 2023
 19:01:18 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/4] drm/i915: Update vblank timestamping
 stuff on seamless M/N change
Thread-Index: AQHZUEBxULJK1v9g/EGk2XvNirIwN670YY7Q
Date: Fri, 10 Mar 2023 19:01:18 +0000
Message-ID: <MWHPR11MB1935F8DD6C9ABE337B4E7781B2BA9@MWHPR11MB1935.namprd11.prod.outlook.com>
References: <20230306152841.6563-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230306152841.6563-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB1935:EE_|PH8PR11MB6803:EE_
x-ms-office365-filtering-correlation-id: 2cf74f46-0028-4f74-e54d-08db2199d48a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9pTyx25YZ5MO/XmdDMiGbB6dwcYIo39q3KTGUHlkQsw5x0KhGC4TlnG1vC54KlLh6kw31Pk218HOjfec6bTk5TgmKB+2g6+U3Ot3mm3bssVbotOC3/aYVejDkgZ+O8J4dxy4H++UW9VXj8hMNbQrmq0MrO1SLtHuGzfiNmOy3Vt1VeF/otgeQagFyRUUTYyU4BI4JBEtHZDaDfvIZASYtwdnKZHEalxgQ9GXTk11Fb9Ro4qP9cG8joVC3lHlpOiGAYbPfOwWy0DqSRg7mIFBVRE3+cwgkVzBdgCbABuAv+l5JHO8KuB64mzwsQLunkvUVTA/8iJSeYpYyFLcGYNLbAfK4cBwmaB+Dw3OXl6UvaisBYPZh6kVptRkktRop/UgrR/BGc8DXxyb7DGbA1/nJpIv2CJTz4aaaznf6ecJ0aG+J7Sk5d84Z1B2Z7TQ15xm+steFoKRX2FOqNbmwl3Xh5qGSJ0cBuAAOm9ZBoao71QQM6LHAmc7Xjm4TFZcgTyb6CrUdxnlHfkW9lIt2I79zqTylfviseDEV0kxWfclRJwlafTEuofwxP4x3l7XFPKbVIO4gmJe/qHpend8bS1xRrQDUgCkUnDLQcEOlkP3XC106FjnFVRDCl5pZ6ZdRB2ieGcZOhqxqXNbIHeBq/uzXYYPU87Y0oeqGFhEC7MT1Y6ozFUElTnKm7fdq87tlEF81EpPi1/WAoej8JXnDtDZYQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1935.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(366004)(376002)(396003)(39860400002)(346002)(451199018)(66574015)(110136005)(33656002)(122000001)(55016003)(38070700005)(86362001)(38100700002)(82960400001)(6506007)(53546011)(83380400001)(9686003)(186003)(71200400001)(2906002)(316002)(52536014)(5660300002)(478600001)(7696005)(8936002)(66476007)(41300700001)(66556008)(66446008)(64756008)(76116006)(8676002)(66946007)(15650500001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VEEvL0NTamFoNE9GckVCRzVlSmJHQlVsNDRhV0JmaytaNXNYaVJtRUFDb0NH?=
 =?utf-8?B?a2dpUFg5ZUY5eHhXVzQreWRHUmJCaEZZRlJwVFkvTldDZTBvU2dzck1jWDQw?=
 =?utf-8?B?blJpNzdwcVVmbVUyYko0bFRyRkg1WWttYWlNRFUxbW5FWGpSbkxzWno1Nkh6?=
 =?utf-8?B?ZlhBeFlQOFdWQ0d6clJkbkpBQWlmbDlNbzl2MkQ3bjExMFFTUnAwUTZESDUy?=
 =?utf-8?B?MGI4T1B6T2MveStwUlZHQ2tWSERtb0JnbDRydEdQaHEvWlhmcjFQVDlDTDZo?=
 =?utf-8?B?eEx1eC9FUXZNNEF4VlJGWWptK1BlQ1lZQnJkU2EybmpFVktKbTZEbjZHK3Y1?=
 =?utf-8?B?RjNaa1l6bGhvaWcxZC9rcloxZ0hXWnB2emtvR2xtbXY1V2wzR1kwaE4vNk51?=
 =?utf-8?B?MGpWWjlOOXlRRlNBdVRYT0hUbTFudnNnY3h2cm90ZHU5YzJ2SnJvZDJyR092?=
 =?utf-8?B?NjA3aTB6L1hGbHQ3YktQMCsydjUwTm85TWV3V1dOeW9HMjhRdHpkTGVKTG1v?=
 =?utf-8?B?WERQdW12Qmg4bVA0UzFwSktjaHpZQWhEK2EzL2Z2a0p4dktka29pU1R5cktp?=
 =?utf-8?B?bmlYWEJFemRkUkpzYVN3bjdic0UyZStLNC9LNDdiLzlIZlBVWFpoRHZYOC92?=
 =?utf-8?B?ZWJ0cThhT1ZYRXY5REdUaE4zc3A4V05Nem1rSHA5ajZUQUtTeG53TnhHdXdW?=
 =?utf-8?B?ekR6eXFwS0o4YllFN0F6WWNIT3doS1hFQ2JadVU0czJpdDRlL0hUV1Fuc3N5?=
 =?utf-8?B?OVlpSEk2Z3BYK0tYUXV4VVVQcTNpbFY1ZnlBZzJiRXhMdGN1dmNYSzE0TjBP?=
 =?utf-8?B?VlN2cWgyUVV4MCtBQnd1dGhCcndoenovbFh6Z0dXbkppMzRVc3ZEU25MdWpW?=
 =?utf-8?B?QzQxQW5vbURTZGxNa2t2U2k3dGJWYWNnUDVQeGozVWpGRGVtVld1M014UFVW?=
 =?utf-8?B?ejBRSTgwR3FYWC9RQ2JyZ0VoVFVkdGNzTWtUeWhEYXJVUE4raUdjZ2FBc0p6?=
 =?utf-8?B?SjBVT1dhRUVWbVI5OE9zVUFKa2lUYmY5RmZRd2dzUzNFZmpCQlhhMmZPa1Uz?=
 =?utf-8?B?MjA0dm5mbkhiQVRmY0ppR01yT24yYmNBckt3cVQxSEo3SzhHRTlucTZYdFVO?=
 =?utf-8?B?Uk9uS1BWVldoN0NHVUI5b1RsQ3dsSFp4cjZjNVJ1U1k2ZmdhY2Y2WHprY05M?=
 =?utf-8?B?aUNTbVdBNStmSFo2YkxINWdEQ1FGRUJXSUZZT3VnSXVaNVR2aytkcjZPNzFU?=
 =?utf-8?B?bGp1RHRES2dXR0FzUjNUTEZWVENUamFPWmNyTTNTMmJYaGpxVEVBYWIwdWlR?=
 =?utf-8?B?NktmYVlsdVRtaHVQN1hIOXozU2pGQmJZaHVVbXorNWVqYWRtWTVTYlBoRjMw?=
 =?utf-8?B?NG5VSVpjcmRVaGdKNFRKSFNmOHVuV0hXTXJlcnoxYXVIeTdPZmQ2L2pxY3Rv?=
 =?utf-8?B?UUc2Si9xK25pa1hGZmY2TzUzU1Y0MlZUcjJoOHJYZTA4NGdwZzZhdDhDTDRC?=
 =?utf-8?B?dWFkbGxEVXFqWVB3REE2WCtRZ0h3c2grbXdhditUVXE5RnpQMXdTbno1empm?=
 =?utf-8?B?d2ltRFpPNVBlVWs4TlV3NHNaTFl0R3R4czA0K2Vqc2cvdEdHVzFKRmg5Mzl5?=
 =?utf-8?B?YWhIbzV5WktscUtSSUl0K1RodW1GT0Q3djJTQmZHdXIzcCtzOHdzcDJ4b0dX?=
 =?utf-8?B?RUptcFh2Vjd3M29TbWVVN0RreDdwd3ZRKzdKdGM1S1l5S2h4ZWgxTTlyVEZ5?=
 =?utf-8?B?Y0oxM2xvL1NRMTMzK2NHVWF2WmVkbVM4aGhhanJGdVRFNTF5UVhQS0hUYmpt?=
 =?utf-8?B?enFZVllnNUNzd0lCbkdMRTJjQkM3Q2ptRFdOV3o4NWd6UWRESDUvT1oxbk9O?=
 =?utf-8?B?RVA0UURrV2VMRlQyWWdjejlNWDQ0WjVsajkvVkpTaFhocWViY015QWpQbnU3?=
 =?utf-8?B?REd3dU9pNUdnNjNUbHFGZTcvZkZENjFJK3c0bUZac0wyQ0VMQXI1bGlRYTJU?=
 =?utf-8?B?RlR2MTBxMjdmZDBwZHJubTRac2FZeUgwRVczR2ttZlUxb0QraFYxUHFvblpR?=
 =?utf-8?B?YS91N2paQ3o1TW9wVGljazhxY0NYaWZDTitRVS8wK2tJMnc4YXZpV3NRY3Nk?=
 =?utf-8?B?aFgvRTJYbGcwanVUK1lITUowS3ZpMUk4YzBiN1hTc0hyREpTQTV6dkZZY2Nw?=
 =?utf-8?B?NThHVW0yMG9MRFFXNHpkS3IwdHlQVzRMWVJjbGorUTA1bmdHbW1TZExWWW1W?=
 =?utf-8?Q?ASbgAdLFrYG4QMB3R1atl2nGPdG4n0JF9Li843H+rI=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1935.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2cf74f46-0028-4f74-e54d-08db2199d48a
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2023 19:01:18.2173 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: K/Xu9nPhsxXG7phGjJg0kKxFTYRoscubs/olT+/ICFIkByL6pItTJt6ufGO0xKqrQ8a/mbG7dH959r66jIQyJq5WYhAjv6pbMe6ZNDfByejx8a0nDFLDGd0FMttkyiT/
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6803
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: Update vblank timestamping
 stuff on seamless M/N change
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
PiBTeXJqYWxhDQo+IFNlbnQ6IDA2IE1hcmNoIDIwMjMgMjA6NTkNCj4gVG86IGludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW0ludGVsLWdmeF0gW1BBVENIIDEvNF0g
ZHJtL2k5MTU6IFVwZGF0ZSB2YmxhbmsgdGltZXN0YW1waW5nIHN0dWZmDQo+IG9uIHNlYW1sZXNz
IE0vTiBjaGFuZ2UNCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+DQo+IA0KPiBXaGVuIHdlIGNoYW5nZSB0aGUgTS9OIHZhbHVlcyBzZWFt
bGVzc2x5IGR1cmluZyBhIGZhc3RzZXQgd2Ugc2hvdWxkIGFsc28NCj4gdXBkYXRlIHRoZSB2Ymxh
bmsgdGltZXN0YW1waW5nIHN0dWZmIHRvIG1ha2Ugc3VyZSB0aGUgdmJsYW5rIHRpbWVzdGFtcA0K
PiBjb3JyZWN0aW9ucy9ndWVzc3RpbWF0aW9ucyBjb21lIG91dCBleGFjdC4NCj4gDQo+IE5vdGUg
dGhhdCBvbmx5IGNydGNfY2xvY2sgYW5kIGZyYW1lZHVyX25zIGNhbiBhY3R1YWxseSBlbmQgdXAg
Y2hhbmdpbmcgaGVyZQ0KPiBkdXJpbmcgZmFzdHNldHMuIEV2ZXJ5dGhpbmcgZWxzZSB3ZSB0b3Vj
aCBjYW4gb25seSBjaGFuZ2UgZHVyaW5nIGZ1bGwNCj4gbW9kZXNldHMuDQo+IA0KPiBUZWNobmlj
YWxseSB3ZSBzaG91bGQgdHJ5IHRvIGRvIHRoaXMgZXhhY3RseSBhdCB0aGUgc3RhcnQgb2YgdmJs
YW5rLCBidXQgdGhhdA0KPiB3b3VsZCByZXF1aXJlIHNvbWUga2luZCBvZiBkb3VibGUgYnVmZmVy
aW5nIHNjaGVtZS4gTGV0J3Mgc2tpcCB0aGF0IGZvciBub3cNCj4gYW5kIGp1c3QgdXBkYXRlIHRo
aW5ncyByaWdodCBhZnRlciB0aGUgY29tbWl0IGhhcyBiZWVuIHN1Ym1pdHRlZCB0byB0aGUNCj4g
aGFyZHdhcmUuIFRoaXMgbWVhbnMgdGhlIGluZm9ybWF0aW9uIHdpbGwgYmUgcHJvcGVybHkgdXAg
dG8gZGF0ZSB3aGVuIHRoZQ0KPiB2YmxhbmsgaXJxIGhhbmRsZXIgZ29lcyB0byB3b3JrLiBPbmx5
IGlmIHNvbWVvbmUgZW5kcyB1cCBxdWVyeWluZyBzb21lDQo+IHZibGFua3kgc3R1ZmYgaW4gYmV0
d2VlbiB0aGUgY29tbWl0IGFuZCBzdGFydCBvZiB2YmxhbmsgbWF5IHdlIHNlZSBhIHNsaWdodA0K
PiBkaXNjcmVwYW5jeS4NCj4gDQo+IEFsc28gdGhpcyBzYW1lIHByb2JsZW0gcmVhbGx5IGV4aXN0
cyBmb3IgdGhlIERSUlMgZG93bmNsb2NraW5nIHN0dWZmLiBCdXQgYXMNCj4gdGhhdCBpcyBzdXBw
b3NlZCB0byBiZSBtb3JlIG9yIGxlc3MgdHJhbnNwYXJlbnQgdG8gdGhlIHVzZXIsIGFuZCBpdCBv
bmx5IGRyb3BzDQo+IHRvIGxvdyBnZWFyIGFmdGVyIGEgbG9uZyBkZWxheQ0KPiAoMSBzZWMgY3Vy
cmVudGx5KSB3ZSBwcm9iYWJseSBkb24ndCBoYXZlIHRvIHdvcnJ5IGFib3V0IGl0Lg0KPiBBbnkg
dGltZSBzb21ldGhpbmcgaXMgYWN0aXZlbHkgc3VibWl0dGluZyB1cGRhdGVzIERSUlMgd2lsbCBy
ZW1haW4gaW4gaGlnaA0KPiBnZWFyIGFuZCBzbyB0aGUgdGltZXN0YW1waW5nIGNvbnN0YW50cyB3
aWxsIG1hdGNoIHRoZSBoYXJkd2FyZSBzdGF0ZS4NCj4gDQo+IEZpeGVzOiBlNmYyOTkyM2MwNDgg
KCJkcm0vaTkxNTogQWxsb3cgTS9OIGNoYW5nZSBkdXJpbmcgZmFzdHNldCBvbiBiZHcrIikNCj4g
U2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydGMu
YyB8IDggKysrKysrKysNCj4gIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKykNCj4gDQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydGMuYw0K
PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0Yy5jDQo+IGluZGV4IGI3
OWE4ODM0NTU5Zi4uNDFkMzgxYmJiNTdhIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2NydGMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2NydGMuYw0KPiBAQCAtNjg2LDYgKzY4NiwxNCBAQCB2b2lkIGludGVsX3Bp
cGVfdXBkYXRlX2VuZChzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqbmV3X2NydGNfc3RhdGUp
DQo+ICAJICovDQo+ICAJaW50ZWxfdnJyX3NlbmRfcHVzaChuZXdfY3J0Y19zdGF0ZSk7DQo+IA0K
PiArCS8qDQo+ICsJICogU2VhbWxlc3MgTS9OIHVwZGF0ZSBtYXkgbmVlZCB0byB1cGRhdGUgZnJh
bWUgdGltaW5ncy4NCj4gKwkgKg0KPiArCSAqIEZJWE1FIFNob3VsZCBiZSBzeW5jaHJvbml6ZWQg
d2l0aCB0aGUgc3RhcnQgb2YgdmJsYW5rIHNvbWVob3cuLi4NCj4gKwkgKi8NCj4gKwlpZiAobmV3
X2NydGNfc3RhdGUtPnNlYW1sZXNzX21fbiAmJg0KPiBpbnRlbF9jcnRjX25lZWRzX2Zhc3RzZXQo
bmV3X2NydGNfc3RhdGUpKQ0KPiArCQlpbnRlbF9jcnRjX3VwZGF0ZV9hY3RpdmVfdGltaW5ncyhu
ZXdfY3J0Y19zdGF0ZSk7DQo+ICsNCkhpIFZpbGxlLA0KDQpjaGFuZ2VzIExHVE0uIEFsdGhvdWdo
IGhhdmUgYSBxdWVzdGlvbiwgYXJlIHdlIHN1c3BlY3RpbmcgYW55IHRpbWluZyBwYXJhbSBjaGFu
Z2VzIGFmdGVyIFB1c2ggYml0IGlzIHNlbnQgPw0KDQpSZXZpZXdlZC1ieTogTWl0dWwgR29sYW5p
IDxtaXR1bGt1bWFyLmFqaXRrdW1hci5nb2xhbmlAaW50ZWwuY29tPg0KDQpUaGFua3MNCj4gIAls
b2NhbF9pcnFfZW5hYmxlKCk7DQo+IA0KPiAgCWlmIChpbnRlbF92Z3B1X2FjdGl2ZShkZXZfcHJp
dikpDQo+IC0tDQo+IDIuMzkuMg0KDQo=
