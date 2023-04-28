Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C2A7D6F13E1
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Apr 2023 11:11:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A24110E399;
	Fri, 28 Apr 2023 09:11:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A722410E399
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Apr 2023 09:11:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682673076; x=1714209076;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Q4PtC9crIDVYsJZTr/r7VIt6b4GBQQyDRtzMHmlbMLI=;
 b=Z5YKZCKOla8k+JmANmDczIy7BexPlnLIt28MxNgfzyPIaeHnlaX6b/o1
 CtvuN/mxqqXD2OUCgAqSygwvqjadNdu+tqaZqfJcn4yix+PpXgyXRBGCO
 dkrrjdBNYscxZ0AvyNGB0Pxe3PybOYvZDY10hMtj1Thw4s7pW42PWmbij
 ZVpsfAh9+Brn2YaXKkepI6gdvVc5hYWTKUOmrA6p3DqC0IhPtAhaMaKAV
 XgzTK/DxPO+uYiu2PQZLRMvs+y2wqY9rBmLCTIYxAiqTJBygyHBwOSLoA
 ms8G1yOQQWRwO2JV75RZtDmXftXA2OgeNvb28R1GBWzP2Yx/lJ2IfJBzx A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="336747986"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="336747986"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2023 02:11:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="818936472"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="818936472"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP; 28 Apr 2023 02:11:15 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 28 Apr 2023 02:11:14 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 28 Apr 2023 02:11:14 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.43) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 28 Apr 2023 02:11:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iMlcMoG5DiqZtS+UPK896rUL3edJArboi0qW1f2goPjTPQIV72FXujv03JXRrhS2kka8dXP9m76vSS6Yu4gCyYmxI5Zp5QBhNZxz765W10uY9QbZD5yLcYac0+4s5FMGQ2/F30EoHKq/8N2gR7qmxVXMcXQbhFDpfz2A45eJru19pTedGq5dwp0Lo0p4szt2TcvsOrY1qoMU7rRiyZu4vJEdXxWWBZtcvW7q4RZ90hM2Dp8v6b2IPVobfs+kn+LlZX6xFbHjBqJKimhikDkUGhh3jcNRmT8lj1ogRxSlDN7veOD53UD5T9WV7pBFnTtDK59oQ04/UkW5kMSLO8Mz9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q4PtC9crIDVYsJZTr/r7VIt6b4GBQQyDRtzMHmlbMLI=;
 b=eZNqFz+5bJbabV4M4gSSK9zMotl3wwP6XrE4eYaYeUBW8YyoG7OE8gsCfRm0vNI6xxqc0BCf3uPdJ7cBSX9CNoAV+D8QicdJ+pxCY+Hjtac/FAi/E4QVJr1z5oTABJ4LXpXQ644QH7KSCwrR37yKzgkFjl5aTsiC8IVx/Y6O4Wo5U8Il5OK1krljg+rk0pWAP1ehzymOeRD9kq1/gajCdo/JkUcFV0p13ZbxXFDVih4Fxf+lVZOlGi00M07oSSa4B3JaFj93IN5zSfrEkU9yNRo+f+PSJtrFtux3dX188nxyC8Xqtz2afc5dXKEjwXxf+SJNuPDHTSfE9ZUPb75JKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by PH0PR11MB5660.namprd11.prod.outlook.com (2603:10b6:510:d5::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6340.22; Fri, 28 Apr
 2023 09:11:07 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::c845:cafb:c99b:c889]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::c845:cafb:c99b:c889%6]) with mapi id 15.20.6340.021; Fri, 28 Apr 2023
 09:11:07 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 01/13] drm/i915/mtl: C20 PLL programming
Thread-Index: AQHZc4YQ0WZkq/4WRUWX8VowkWiAYK9AeqGAgAAAxwA=
Date: Fri, 28 Apr 2023 09:11:07 +0000
Message-ID: <MW4PR11MB7054DB7F74116896C3DF1321EF6B9@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20230420124050.3617608-1-mika.kahola@intel.com>
 <20230420124050.3617608-2-mika.kahola@intel.com>
 <ZEuMyQBKY4dfAEAV@ashyti-mobl2.lan>
In-Reply-To: <ZEuMyQBKY4dfAEAV@ashyti-mobl2.lan>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|PH0PR11MB5660:EE_
x-ms-office365-filtering-correlation-id: b6828fc5-ee03-46a5-77cd-08db47c88068
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3fNDmyH9KJTzGjK5XV9qCE17VtbpUptjAYXD/vc5A/+i+fKLbwzdC6KStPLxG4wF3kTjN98qHnzPwFWXg9GiRcyVk0ths6I0ztSagEL4JhokVXeRegQ+bqKmLgi9zMkCpz7xGkYK6+b2gkuT0FxzmwBXAePlBkgwpwEPKH954mSvpKYBGXRuzHzQ1bpctGKTPFCiGBgC+xrQU0VEhDmACYrKgD8oxKNRPJIBnxd8x59oJJYNGEf9hDFP5c4Qn7otduvRoMIaT2kaLAUNAiRpZ4qtWbpwrTPvX/qb8qCLRdtAmeQQCrUMU3bZFXkB+Gi3euQqm4QGOOd3wyHFggkg+kD0w219TP/ew24X02+c4dUisnp8hmGbXYVIrVxh9GhLpXsF0WPTbTVEdsFZ2ArNXYEAbD0fYZrFbWgXQDEe/KJ/KacuXKdxyfV7EieD8IuLOVM3wUflW9a64NFyd3QcwWzU+7vt5uOeaGaqSEfa49lPToDbW+kFeyIPPfJEqnzUlvHOuOVUrIqlOCyB+45IlSxYcoc1xheiWreGZsrSH87Bd58afO2GggNp63DmE0mHlKxgDosINyfIkXHrAPcAfTBs86f42H81pUKTs8stUEOBsYCB9fMkiWgtiWPlYY/1
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(396003)(136003)(346002)(39860400002)(366004)(451199021)(38070700005)(478600001)(38100700002)(52536014)(8936002)(8676002)(5660300002)(2906002)(26005)(66446008)(66476007)(41300700001)(64756008)(316002)(6916009)(66556008)(66946007)(76116006)(122000001)(4326008)(55016003)(82960400001)(33656002)(6506007)(186003)(86362001)(53546011)(9686003)(7696005)(83380400001)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SHQzK1RGVE9RQTFCdzFIVlpNNzA3eStvRUV5Q1BoNWMzamRoRHJwL1EwZkwz?=
 =?utf-8?B?KzdBRDhYTDhpZjRLZFMrYjFWNmZPMUhhSE40UUo4QlBIN2tLbnFqL3NQam9R?=
 =?utf-8?B?K2FRM3puSTgrenQvcXVGcUhvMi9tRkUrTysyQVVsVVF0NXo1TWJnVkhPQ2RF?=
 =?utf-8?B?RlBxczVnZE5tWmwxTyt5UWx0bFFiem1haVMyZEZacXl1eUF1TGxkaTh2T2lE?=
 =?utf-8?B?L0N2NW1VTEhONDhHTFJ6SU16ZVRvTVFnY0I3YnQvaHl4eHZUY0pxSXBXaHRx?=
 =?utf-8?B?bjI5SnA0K25jNUNPMmprNWM1UjFPZittSlFwcFJVUExPZC9RczdCb0c0QURt?=
 =?utf-8?B?MXdYRktzYTVzcnh0dndsb0RERzZnWTA1aEllVFh4elp2by9tUGVvNFJRS0wy?=
 =?utf-8?B?RkROa3EyNFFwaW1taU5vQ0ROZnhVZ0s3TnlJRFJqYTlXMHk1UmxXVkZPTmQz?=
 =?utf-8?B?RW5vbXMwaGNQNy90eHh5cmFDbXQxeU1MU2dsU0tPamthcG1yQ01JUXVTc0lB?=
 =?utf-8?B?NE9oZE8xN1BEUTNFZHVkZkpLem9ZdC9vK2pVdjRDWGJlMGp2T0Z5b2FQMVkz?=
 =?utf-8?B?Q3RiMlF6SWsranMwYkRqeFVJcW1tVnM5cHdyV3dLYjIrTWE5OFRWcTREYnps?=
 =?utf-8?B?MGFMVmN4bGFUZk5RMkRuMHg1c2VCbklPVUZ3WFRtdGw5UHN1Q01NOWxCSEdH?=
 =?utf-8?B?a21OUWdaNGZoRWkrb1ozeHNtMHBjb2hNMTZJY2I2dmJtTmRuRzJaR2Znb204?=
 =?utf-8?B?ZEU4VjJadkZjR0ZCVVF2dm42STJnanJzRUk4clU4ZXUwVU1wNHVGTEV5clVD?=
 =?utf-8?B?WE1tbmVnLzB6NmtWaW8yTWI0bXN2Szh4cEcyZWp2cXVFelhMT1NYV2Z5ZVJl?=
 =?utf-8?B?blBVSkg0S0FkR0w1amJudnZpa2d2QXNPck9jTlV3UzhpZmlnamF5dHhwOU9v?=
 =?utf-8?B?cDJjRW1DY3pFUWtzSnFmMityREo0ckgvTEhUNkY2Znk5Sy9KRGcwOXVBTFBI?=
 =?utf-8?B?YWErRmN4WGpwbmFWdGpZaSszOHhhcExMdUxBYVFHMithYkU2KzRFTWhsak10?=
 =?utf-8?B?YklmdnZ4MER4WGtsdGJDak1EWEtKUjcrMWNUc04rUCtmYXJ1VXlKUjN4SzRs?=
 =?utf-8?B?Y2RWdERXNWxtb3ZET0ZPWURrblRITVpsMmhDSGlQOG5GZDRNbkV4b2Vyd1pn?=
 =?utf-8?B?Q0pBOXpqRGZ5YzdNQ1FxWlVxelVwRVlJSGg5emZldy9hYnhqaDcreHlBdHlq?=
 =?utf-8?B?NGR1dmQ5MmVsOU50Y0p5RFZZNjVyUzRaZ0VEa3FxaFlyYXYxSStFemRlRTdD?=
 =?utf-8?B?L3NScDkrV3NEcVBJSENKRnFCTmN4QkhaR2x5azQ0ZzByUytOa0VvSXRYT0ZK?=
 =?utf-8?B?NURWT3NSRlBRQjk0Zm1hai9SNWVSSmc0N1kwbEVJcHdrbU1ZL1YwZ095blJ5?=
 =?utf-8?B?Nk1Wc3BJTzFoZFN4OWV1NnNubk44ZkF5ZGhTTVdsR1gwSnBYek9yZ1JKTXFy?=
 =?utf-8?B?RWFIa091dHl2djh3VVVWQmN3a0h3VkUrenpwN3NvTzhldDdCdVhSbXZkdXdp?=
 =?utf-8?B?WUsvaitYZjhZYnVzK0VYeDJKeG9WT1NHSlVjckhIVVNWc2QxR0xvejB5bVMx?=
 =?utf-8?B?cTVlaTdtQVpOY3dlelNBZXg0ZUh5aXp6L01zQ24yZmx3UnhHajZtZm9GYTdO?=
 =?utf-8?B?N09OTlE1dVIrQm5lVi84RnRGQmUyQVNra1BKWmpldXFqa2RaTXNTTGZmNEhy?=
 =?utf-8?B?OUlQOHJBQUtRZTczakRTUDAyRXJySkU4YjMrSkhNR3Z4bm9lQ1ZTbzlGdVlw?=
 =?utf-8?B?SHVxT3NoZzdHVnFsaHVQUlA4aE90cFZNOFdLT0tpRmFiUGFIV2d2a093OHcx?=
 =?utf-8?B?ZE10WVFwd1gyZDVGM0N4cEN4QlNqOERoY1BkNDYwM24xWGYzZWtxMGdQalI3?=
 =?utf-8?B?Zm9xcU1mOWQzSnlMMXBITmFzSXFEZlBIT2dnM1l1NUhibk02YjVEa2hPNkRl?=
 =?utf-8?B?VjZ6TEpRK0wwMFg1NjN4dnE0djdPczdkSzNveXJ0WmxvTHFJaS8ybVV2TFdE?=
 =?utf-8?B?eHFKY0JsdUN1Y2dROXREaCsxUzRDVDF4WHZmaElYZUdYODVrV2VYaDNiZGZY?=
 =?utf-8?Q?mAv2D2wbdL0wZEw2yPnBDDVjW?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b6828fc5-ee03-46a5-77cd-08db47c88068
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2023 09:11:07.5827 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6w2Z+CNZJXdV2uH+GJIBDZ8De/R96Dh/oxqKrpv4aWO4fFb3YLLpFBhD36RT7y+UcNQm7BKJIcKvzgerdqqwkg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5660
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 01/13] drm/i915/mtl: C20 PLL programming
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBBbmRpIFNoeXRpIDxhbmRpLnNo
eXRpQGxpbnV4LmludGVsLmNvbT4NCj4gU2VudDogRnJpZGF5LCBBcHJpbCAyOCwgMjAyMyAxMjow
NyBQTQ0KPiBUbzogS2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+IENjOiBp
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFJlOiBbSW50ZWwtZ2Z4
XSBbUEFUQ0ggMDEvMTNdIGRybS9pOTE1L210bDogQzIwIFBMTCBwcm9ncmFtbWluZw0KPiANCj4g
SGkgTWlrYSwNCj4gDQo+ID4gK3N0YXRpYyB2b2lkIGludGVsX2MyMF9wbGxfcHJvZ3JhbShzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwNCj4gPiArCQkJCSAgY29uc3Qgc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+ID4gKwkJCQkgIHN0cnVjdCBpbnRlbF9lbmNvZGVy
ICplbmNvZGVyKQ0KPiA+ICt7DQo+ID4gKwljb25zdCBzdHJ1Y3QgaW50ZWxfYzIwcGxsX3N0YXRl
ICpwbGxfc3RhdGUgPSAmY3J0Y19zdGF0ZS0NCj4gPmN4MHBsbF9zdGF0ZS5jMjA7DQo+ID4gKwli
b29sIGRwID0gZmFsc2U7DQo+ID4gKwlpbnQgbGFuZSA9IGNydGNfc3RhdGUtPmxhbmVfY291bnQg
PT0gNCA/IElOVEVMX0NYMF9CT1RIX0xBTkVTIDoNCj4gSU5URUxfQ1gwX0xBTkUwOw0KPiA+ICsJ
Ym9vbCBjbnR4Ow0KPiA+ICsJaW50IGk7DQo+ID4gKw0KPiA+ICsJaWYgKGludGVsX2NydGNfaGFz
X2RwX2VuY29kZXIoY3J0Y19zdGF0ZSkpDQo+ID4gKwkJZHAgPSB0cnVlOw0KPiA+ICsNCj4gPiAr
CS8qIDEuIFJlYWQgY3VycmVudCBjb250ZXh0IHNlbGVjdGlvbiAqLw0KPiA+ICsJY250eCA9IGlu
dGVsX2N4MF9yZWFkKGk5MTUsIGVuY29kZXItPnBvcnQsIElOVEVMX0NYMF9MQU5FMCwNCj4gUEhZ
X0MyMF9WRFJfQ1VTVE9NX1NFUkRFU19SQVRFKSAmDQo+ID4gKwkJUEhZX0MyMF9DT05URVhUX1RP
R0dMRTsNCj4gPiArDQo+ID4gKwkvKiAyLiBJZiB0aGVyZSBpcyBhIHByb3RvY29sIHN3aXRjaCBm
cm9tIEhETUkgdG8gRFAgb3IgdmljZSB2ZXJzYSwgY2xlYXINCj4gPiArCSAqIHRoZSBsYW5lICMw
IE1QTExCIENBTF9ET05FX0JBTksgRFAyLjAgMTBHIGFuZCAyMEcgcmF0ZXMgZW5hYmxlDQo+IE1Q
TExBLg0KPiA+ICsJICogUHJvdG9jb2wgc3dpdGNoIGlzIG9ubHkgYXBwbGljYWJsZSBmb3IgTVBM
TEENCj4gPiArCSAqLw0KPiA+ICsJaWYgKGludGVsX2MyMF9wcm90b2NvbF9zd2l0Y2hfdmFsaWQo
ZW5jb2RlcikpIHsNCj4gPiArCQlmb3IgKGkgPSAwOyBpIDwgNDsgaSsrKQ0KPiA+ICsJCQlpbnRl
bF9jMjBfc3JhbV93cml0ZShpOTE1LCBlbmNvZGVyLT5wb3J0LA0KPiBJTlRFTF9DWDBfTEFORTAs
IFJBV0xBTkVBT05YX0RJR19UWF9NUExMQl9DQUxfRE9ORV9CQU5LKGkpLCAwKTsNCj4gPiArCQlt
c2xlZXAoNCk7DQo+IA0KPiBjYW4geW91IHVzZSB1c2xlZXBfcmFuZ2UoKSBoZXJlPw0KSSB0aGlu
ayB3ZSBzaG91bGQgdXNlIHVzbGVlcF9yYW5nZSgpIGhlcmUuIElmIEkgcmVtZW1iZXIgcmlnaHQs
IHRoZSBtc2xlZXAoKSBpcyBub3QgdGhhdCBhY2N1cmF0ZS4NCg0KVGhhbmtzIGZvciBzcG90dGlu
ZyENCg0KLU1pa2EtDQoNCj4gDQo+IEFuZGkNCg==
