Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB96D7CDC7A
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Oct 2023 14:58:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9D3B10E3DC;
	Wed, 18 Oct 2023 12:58:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C140F10E3E9
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Oct 2023 12:58:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697633911; x=1729169911;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=p3zu6hwwib72DN5xlPPXJGwoGZXAT8sa85+wvzBPTA4=;
 b=Wm09UxotADC55xKxMJvN//ELfADf7BsBMBhshrptPkUElVBy8kiAdSBX
 A/18Ho1uwVgoxxELws4QROgWfyhfZb5DbYTwWAs71GSQWLD2NMLsXjy37
 rR9ixhtTA0465ZaZ9uG7wPP6QzEEH3t6r3Vvfu3A27+92mX1W07zU53Gj
 kmk3W7bMormzF+vydDSgPTARO37PKcKFwBmy9qDMXAh5AejqqCpvgV/MV
 LAuY/5XHZ5aVO7TfPiCCO+mlvtbglvhIbjZC4PiOdqCSmBaHVFyqKsRcp
 SuQaUkg9l8kJrDw3N6OWNu+xizb8vtrl/V1C3qon8GqqgMamgZFTriAJ5 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="384887856"
X-IronPort-AV: E=Sophos;i="6.03,235,1694761200"; d="scan'208";a="384887856"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 05:58:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="791607696"
X-IronPort-AV: E=Sophos;i="6.03,235,1694761200"; d="scan'208";a="791607696"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Oct 2023 05:58:30 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 18 Oct 2023 05:58:30 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 18 Oct 2023 05:58:30 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 18 Oct 2023 05:58:23 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 18 Oct 2023 05:58:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q9NaOU2xd8gmV28wXHwWE/7cp7qIvLGR6oHON8uEyhOCu8Suh3OEc8Ht+kMju1qwEYiz1HyspEHb2AfHtnLNFiPfLKQr0uIVZbYUZr7MAHJiBe+vOxOJnbv8eqVnrUon6q8NRrN2Fd9A09wa0worpDyVKTI2jrkIl8Ke7Yt1JY9DMws5uj6RvRsxqjYMrRvzUrrXa4Sh/trg3P8vNUkXfnozjWgh4LBGiksPt0hMfUpSJ8uAfC0c8cuqaetvtvr3jWfA7IxhUEj+XATDW/r78gWkbpHgNF38cDgVhdI7U3QqpuebvpWxQtvUTVO84hlFq8liwuZ1lFXR2otfJMargQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p3zu6hwwib72DN5xlPPXJGwoGZXAT8sa85+wvzBPTA4=;
 b=bAW8WPr5Ump/XxJIb/0bVMw6wgWi8FcIWLYTprxeoQyZGS4rfQ7JRXvd4oVTxcAoJ/80HCq+6Wjzixmjauun5qgCBUGeQqUpiUblYi2LCK4M2/xvPLuDV+MlJnvjmP5IjvIGr1r/65GXBdFRUAtMP8WJaV53n+sf6OCbfxYVAngFnWfcCyQxyRMWuthlgNTncXvuHNCgWbi/lLk/bscflHU5CyZzTLvEuX8rK+6kMdn9+A2t+1pskx+CE/YzGRVpLckIHl3e9HUV68bkBDZFKGxLumQMAPgBudx+fvTZ0GxULsup3/wR6pc1cbmWgDqRYVb1GeYg1Vb5u8WFlr18LA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by MW4PR11MB5889.namprd11.prod.outlook.com (2603:10b6:303:168::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.24; Wed, 18 Oct
 2023 12:58:21 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::ca79:c6d4:e6bb:aaaf]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::ca79:c6d4:e6bb:aaaf%6]) with mapi id 15.20.6907.021; Wed, 18 Oct 2023
 12:58:20 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/mtl: Support HBR3 rate with C10 phy and eDP in
 MTL
Thread-Index: AQHaAbf55W/jsY9MeUq9sITV5NcB/rBPgdDQ
Date: Wed, 18 Oct 2023 12:58:20 +0000
Message-ID: <MW4PR11MB7054FBFEED0E701D0B6E7CC1EFD5A@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20231018113622.2761997-1-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20231018113622.2761997-1-chaitanya.kumar.borah@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|MW4PR11MB5889:EE_
x-ms-office365-filtering-correlation-id: e6995e9d-6557-45db-9a88-08dbcfd9e7d9
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FM/8mdpyK5TjY2735aQVovgKXF+VualuzU5BAseUGv/SAjRiDqPbJ9+9aCM/4WVkw2ZWL4L5aosug9rvPKzJ/XOTYwPaDjNIj0+twytlKxcZ2R9MF302qxyxmQcyZQ30GFtnYuGId/kalFK6NSsScWkCd7sUznbRKf9njxk+8tW9U6UzKgFcajaGAXEX+Ymy0f8Il+Vgzv8C0fpHGCGZ1VM+dgvMItDMZckMR37Rgow3kn3exaLjkMq68OAtkGBW4HgbPsRNVOESmbcfB6nXCBh63Lx55yr3fDpYRGwul4pfMWuOluM1D/k1hLd3Jz827EQojf3FseM3w6zHiYa1lGujAOwRi0ZCg/s/Agw+hQ45udgwSJyMsDFh5/ANUNqsklW6ikMRogb1vSQqgIG6LtAo1X3pK95OvlaM2oc4gtODdCS7hFu/s9EjYo3fY45BDlxKKBiqDoaK5mN/ClG/kogJ7O+9tBYWvQFoTv/A0or46ZY4nCcwIYDmboPNd1wVs0G793NXKANB35zUpkxBR9mnn97UxQorW8MqYnFs+l2lOIKl6uQPObkBm5cC/G+94Rb6pz/jvILwKLQUPfi0RR4Ler8evMw1cBdcA2EJA4FHCoZL/vFEE+AYCihc9Xsf
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(376002)(366004)(136003)(346002)(230922051799003)(186009)(451199024)(1800799009)(64100799003)(83380400001)(38100700002)(55016003)(9686003)(38070700005)(122000001)(316002)(2906002)(66946007)(110136005)(64756008)(66446008)(66476007)(66556008)(54906003)(76116006)(41300700001)(5660300002)(52536014)(4326008)(8676002)(8936002)(86362001)(478600001)(6506007)(7696005)(53546011)(71200400001)(33656002)(26005)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YmpQUVF5YkZ6dElraVNsQXRadjg3dTViOUVIcEswUzN5MVU1YUVvcWlmZ0o0?=
 =?utf-8?B?NUp1ejRnSDhIdzlhWndYYXNpaERDQTZXRGVVdjB3VHlyZC9XWnlIZDJvSHJa?=
 =?utf-8?B?dUhkZjFlWTRhNGVQdXgvY1NsTW52cnowcVFLT01MbktkT1pEMzhUN0FOUU5U?=
 =?utf-8?B?M3FidWo5NlJ3YWZQWXVGM1o3eGlDZ0FxbkZuRmUvZmJCQ2xrZDY3REh6VTk3?=
 =?utf-8?B?bkdJUW5Vcklsd1dRaDRzT3ZMcDlQRTMxY2tQbVNnakpjY3puSVlGSFhFZ3FE?=
 =?utf-8?B?Q3ZwTTcya3MvTTR3bGhlRjBKaXZFOGIvT1VwNkJtQ1I0WFBzOElDMTNQSjdi?=
 =?utf-8?B?WitRTndsMm96ZXgwMlF2WlJSZFY2R3hKTWp3NGx3bklLWFZ0NWcycm92Zi81?=
 =?utf-8?B?T3UwUmNyNXF6aEwxbllnMkdIY2hZQm5UNjc2aG9YQ1FSRnJ4WE9uK0laaG9V?=
 =?utf-8?B?MjVlWjJZaW5RVFdtdVRhS1ozTFRwdXJlWTVtY1J2aXFJTEUvMlNtczdmS004?=
 =?utf-8?B?ZkJ5bmZiRFJpTmxRam01M1ArSk1jR1B0YzcrajNtZUVCRE9ZVGd5QmlWRW5p?=
 =?utf-8?B?cWYzQ3lRbHFDQzBLYjVRUFBaeFFmMThnaGg2TDVSdUlJUzhBMGxmRDNkWXQ3?=
 =?utf-8?B?VGU5UHA3TGxHRWc3UmpldExFYkowYTdlRXU5akpYMzBVVzFrRllRL29FRTBW?=
 =?utf-8?B?WE5mc081RTZNTkc2V0NnWUwvN3N4OXhMcjRJUVdEZEdEalY5bVFhWUNhbTAr?=
 =?utf-8?B?VzIwRmVoTDdZZ3BNMW9PM2t0VVpVaWMyR2JIMlRXUGVodHJoSy9pb0t4WFZv?=
 =?utf-8?B?NmNVNWZlTVk3YldZakNjaWdkc3I0b2ZoOTdMWUdQRWh0ZlJnUFJha0NjRTB2?=
 =?utf-8?B?dkEwZkxwMzg3M3ZMOURoTXRHSGw3bHhUek9EY3d3MmExVWNiMFQxbTB2MFZp?=
 =?utf-8?B?Wkgzd0NqK0hJVkFaelZJbWt2YkVlaC91UHRQUmR4NzVWUm9uTkJ4YS9hc1NG?=
 =?utf-8?B?ZmdTSmtwNEgyVVhzVU9Nb3F0bXlMZGhwdXFFclpKOTcva1FSZTZLb3QzVHVQ?=
 =?utf-8?B?UWMxMGY1bzcvNk9aK3djQVUrbUwwb29FbE9NRjdTY1NRWVM3M2lsaDU2OFI1?=
 =?utf-8?B?UjF2QmQ3dWFUaUhBRmFnNVYydHlmQy9Gci9UUkoxS0ozLzJ2WTNGaGZ1K0Ey?=
 =?utf-8?B?bmhtbTZrTnBaQ0tZd01uWXpJa1U5RWtYUzNoWm5ibFV4TEVXclZTTWtIdEVT?=
 =?utf-8?B?Qy8xOFQxV0FQaWI2Z0xwclBPZ1cwTEY2bk1CS3FjYUxWbS85Tk5tZGhSb3BC?=
 =?utf-8?B?cDhaMk9ONitxSzZFVEg5RWc2a2NLdktEeUd5VVAwSC82NGZlM2dkK3ZpbDdL?=
 =?utf-8?B?R2tMRXVxWDBtck1sb0hzRnRwcnRRc2prbVhGTW1RM3IrK1ExU091NTIwNlY3?=
 =?utf-8?B?KzlyZlovYWtQbENEclV3UU56STJSQ1c5eVVaTUZTQWJlT1dLak1uNy9KeVBC?=
 =?utf-8?B?UUJ3eXdoQkJIOHRsWmQrZlNRT0QvdytrUVZyM05ESEhkYXlPRXg1TVR2MXJs?=
 =?utf-8?B?QnlWYlhEN25BOVNkQWdhNXhTYUZSZVJacGtibDdQaHZMcldib0FFUnhUblFH?=
 =?utf-8?B?VUs2dERWdmhpNW9Ed2kzdUlpTy9mOXZiL2I0NWo4Z0pKeDdzdVNnNldyUkFx?=
 =?utf-8?B?VkY0MmEvUVZEdlFodXorMklaUkdMTldHRzdBL0pNYTNNR1AvOXZBM3pnZmJo?=
 =?utf-8?B?Nlk0SUtkMHJ5TC9PMWZ0SXprS2lrc25XZ2tuTnpNSEJ5V3ZwVkgvY1JJYVZM?=
 =?utf-8?B?T28zTVoxV3c0eXVmN3VHWDgxbkNkTENETFh1MFliNGE5VGQ2d3BiQ2hVM1Q3?=
 =?utf-8?B?UmNQOWpmdDNnNllBWmdrbWpHclNac3p3ZUVRd3lyRkVKMnFpY21OM2RGT0N4?=
 =?utf-8?B?Rko4QWZWS2JrYkw2cGRUNVJ2MmpkQVNiS1d1QnNjUDNvZXJGcml1aVc1Unkz?=
 =?utf-8?B?c0xzajVCc3hjazFJeDQ2clJxejR0UStPc3lQNURRYVN0ZWtWVDlsVjl2ekZn?=
 =?utf-8?B?WDlaT1ExbUpoMFphaGxYTTR2VysyY0thNjJjdCtqTFYrUjIvY2s3ajc5Yzdw?=
 =?utf-8?Q?9jQpH5Bb6S34vCD0af0jDgick?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e6995e9d-6557-45db-9a88-08dbcfd9e7d9
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2023 12:58:20.7633 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UHA4D0vHg8KeAeb6XalH+3ALlWCnojeGry6dPtzbSlf5QBeXDDwViGKqfDRX0BORyTGCRzx2MaC4U6Ixfn4Frg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5889
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Support HBR3 rate with C10
 phy and eDP in MTL
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
Cc: "Syrjala, Ville" <ville.syrjala@intel.com>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBCb3JhaCwgQ2hhaXRhbnlhIEt1
bWFyIDxjaGFpdGFueWEua3VtYXIuYm9yYWhAaW50ZWwuY29tPg0KPiBTZW50OiBXZWRuZXNkYXks
IE9jdG9iZXIgMTgsIDIwMjMgMjozNiBQTQ0KPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZw0KPiBDYzogS2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+OyBTeXJq
YWxhLCBWaWxsZSA8dmlsbGUuc3lyamFsYUBpbnRlbC5jb20+OyBTcmlwYWRhLCBSYWRoYWtyaXNo
bmENCj4gPHJhZGhha3Jpc2huYS5zcmlwYWRhQGludGVsLmNvbT47IE11cnRoeSwgQXJ1biBSIDxh
cnVuLnIubXVydGh5QGludGVsLmNvbT47IEJvcmFoLCBDaGFpdGFueWEgS3VtYXINCj4gPGNoYWl0
YW55YS5rdW1hci5ib3JhaEBpbnRlbC5jb20+OyBzdGFibGVAdmdlci5rZXJuZWwub3JnDQo+IFN1
YmplY3Q6IFtQQVRDSF0gZHJtL2k5MTUvbXRsOiBTdXBwb3J0IEhCUjMgcmF0ZSB3aXRoIEMxMCBw
aHkgYW5kIGVEUCBpbiBNVEwNCj4gDQo+IGVEUCBzcGVjaWZpY2F0aW9uIHN1cHBvcnRzIEhCUjMg
bGluayByYXRlIHNpbmNlIHYxLjRhLiBNb3Jlb3ZlciwNCj4gQzEwIHBoeSBjYW4gc3VwcG9ydCBI
QlIzIGxpbmsgcmF0ZSBmb3IgYm90aCBEUCBhbmQgZURQLiBUaGVyZWZvcmUsIGRvIG5vdCBjbGFt
cCB0aGUgc3VwcG9ydGVkIHJhdGVzIGZvciBlRFAgYXQgNi43NUdicHMuDQo+IA0KPiBDYzogPHN0
YWJsZUB2Z2VyLmtlcm5lbC5vcmc+DQo+IA0KPiBCU3BlYzogNzAwNzMgNzQyMjQNCj4gDQoNClJl
dmlld2VkLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KDQo+IFNpZ25l
ZC1vZmYtYnk6IENoYWl0YW55YSBLdW1hciBCb3JhaCA8Y2hhaXRhbnlhLmt1bWFyLmJvcmFoQGlu
dGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
LmMgfCAyICstDQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24o
LSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gaW5kZXgg
MTg5MWMwY2MxODdkLi4yYzEwMzQ1Nzg5ODQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwLmMNCj4gQEAgLTQzMCw3ICs0MzAsNyBAQCBzdGF0aWMgaW50IG10bF9t
YXhfc291cmNlX3JhdGUoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gIAllbnVtIHBoeSBw
aHkgPSBpbnRlbF9wb3J0X3RvX3BoeShpOTE1LCBkaWdfcG9ydC0+YmFzZS5wb3J0KTsNCj4gDQo+
ICAJaWYgKGludGVsX2lzX2MxMHBoeShpOTE1LCBwaHkpKQ0KPiAtCQlyZXR1cm4gaW50ZWxfZHBf
aXNfZWRwKGludGVsX2RwKSA/IDY3NTAwMCA6IDgxMDAwMDsNCj4gKwkJcmV0dXJuIDgxMDAwMDsN
Cj4gDQo+ICAJcmV0dXJuIDIwMDAwMDA7DQo+ICB9DQo+IC0tDQo+IDIuMjUuMQ0KDQo=
