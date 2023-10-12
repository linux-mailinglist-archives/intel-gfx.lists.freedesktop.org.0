Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D09D77C7890
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 23:22:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A379610E552;
	Thu, 12 Oct 2023 21:22:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15B5F10E552
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Oct 2023 21:22:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697145772; x=1728681772;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=t5nttrMLDHuJ9bT20R6d2GfXRiZzeQGGfs8V2WW12lE=;
 b=KH0e7hx3LCqFR7RSsY05/Tkp3vrBaU6g+1AhnOFG5WE1D0bn4boFyQrT
 ddsvDN5KsAhBe1EThg4xJgvKdJj0z3GLi0HFuwRBafrZQdUfcdcpLIt7N
 s+Y+nyJoRxJEhhgPLxOOnGoS4tDJ9GvMdvlhxloDMNy9ZRda/HhfKn6ne
 0uQE71YnOiyIcLzI4WnAhydGTB/ThQZRC23FEpOhG9eI+RtoAY+Gfa3ix
 bA0ol0ws68DTnzKc+KEv1X9zdjinT5nhA6Oqr6loX0Cb2YGeJMeZ5cULA
 e9ZfkTUelaAJ9ys4qE7WUoHk99Vl3e8KYSobJltV04fb0v5dZz1xwL/2s A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="471279654"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; d="scan'208";a="471279654"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 14:22:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="789571106"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; d="scan'208";a="789571106"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Oct 2023 14:22:25 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 12 Oct 2023 14:22:25 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 12 Oct 2023 14:22:25 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 12 Oct 2023 14:22:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SegecUhNENkR4Dk6BkEcwJ8wS5M0U7PMrOfHV9FaLEjf71pXij6okJUVc2LbQMPXLioSOL2WBUYHbqzFQDhc13FH7IpxWW9RxnEnmDxgNYtroFI/mG+WmQjPN7CcbCoauH8BCPXMobEpmOaq9HZpOaJoRRlO1z1TOJ+91Pmr9wsFjnFJrrWHgpSddhmN2tJN7j+y4WfaMitPTh3jugNBFA3InhQ7LgklDNIXzjd3ilpaDRDpIRTmpolF/8HRYL0dDJbe9zDrgj1dwDMh4Rh//G2aWIXYdZ5uX/yA6MKlior679RcRIVErBw+7aTLA1fuCLdZomroflM6IrZmtTQEjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t5nttrMLDHuJ9bT20R6d2GfXRiZzeQGGfs8V2WW12lE=;
 b=oCw26N5U8nofUPAhtL9E6JZknh7YEot0NcF+pEPcXMP9nBIQAlfO9Rwm+a+7TJc2Fca1e/uqSVPmvWjtM9GsMktbXpjo+KVRSC86f3yfD7aBLXZhv0LundUFFYDhqFNJL4MtQDC3xNNrj8SSQkyT7hoiW4mmFHzWBuStkaZD16WLU67O64KnyfAHZ95FfKWxSUONqDafOf+d+LBvBmOAHA1MvaCmFbA8V8mdg+mPecjSLm49FB6u+5wQx4S+nD/SVfYL95t5uQKn/wfxrtLYYnblPLOg/CPZMNbBB1rIvqdImX1r6LLgh4Q4IfwPIhYGOB5kHh/E7WRTP5WVFN7puw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SJ0PR11MB6696.namprd11.prod.outlook.com (2603:10b6:a03:44f::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.45; Thu, 12 Oct
 2023 21:22:23 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4%3]) with mapi id 15.20.6863.032; Thu, 12 Oct 2023
 21:22:22 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/4] drm/i915/dsb: Allocate command buffer
 from local memory
Thread-Index: AQHZ+rOymGKyzzX0n0etOTALA13aArBGroDg
Date: Thu, 12 Oct 2023 21:22:22 +0000
Message-ID: <DM4PR11MB636057160DB934E317E097CDF4D3A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20231009132204.15098-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20231009132204.15098-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SJ0PR11MB6696:EE_
x-ms-office365-filtering-correlation-id: 2f8331ab-79e4-4f5f-fa46-08dbcb69531e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Pb6RVwNNm0gBf9ls/TybeghgCjwHmWPEOxcpm9pk48f5fHFP8mUqdlVWG8Ht8a2C2ZZgRIOoqAAWXteDCJSgy9Ns67dqAq1jB971LwUUt62dlDpGCH5ZdP0w3QWN310+YP1DLcfjGeKYVMLNwevc9907VJ5dVnBmtChLRV7bgXjEHqpkdKR8+z19jV0Iy4KJjYdcC1xGVSV3CJf/k8msfLpGXq8w049QvSMxoU2bU3OThm2BLsI9lz7OHWArwJgWLS+/y12G4Hpow3vTmYGCWI8wGr3fn2l9UJXEZc3NXdO9+llpxxkj8uCKqF3iRV/gIWyEmJIjLtbbkc2L3st5b2Wqe5xsRQLXTUyky2M3q3NS5iFOYkC3M90ZyezLFana6RHSibE0ftfvbQvyzGmLxog74plse7A2riWfPJ96WF4P4sZORkNOqQHSP7Di30sHGe7ZaK+PI0EioKkxsKXuGvXzYatm0ltmJR1RZ9qDMauzDcuuz3ghZR4Y1fKtkejMjYWOXxUDQWeB/6ux7tGgrajlmu5sIB56FvFEi3fOk1JPQyXqW4oxMeBZezIL2ZsrjcPaB1ZjL+GWM48cskZQLy3jT1PPePAJZLefYpl/I+UJgqb8bvCxkoPQtJUJ5DqC
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(396003)(376002)(366004)(39860400002)(136003)(230922051799003)(1800799009)(186009)(64100799003)(451199024)(53546011)(6506007)(7696005)(71200400001)(2906002)(41300700001)(66446008)(64756008)(66476007)(66556008)(66946007)(66574015)(26005)(478600001)(5660300002)(9686003)(83380400001)(52536014)(316002)(38100700002)(110136005)(8676002)(55016003)(122000001)(82960400001)(86362001)(33656002)(8936002)(76116006)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V2dacGZ1SFdPaVZObnRDN29GZk9NRkU4dEQ3VnNwYk5KNG1NQm9KMGlNTTJx?=
 =?utf-8?B?aHZwUkRPa3h3LzJvNkREbitwTC9EV2JXQTU1V3hzeFRWQ0JVQnhxaGtqdFRP?=
 =?utf-8?B?WVBiTmRKQlhpTlFkZWQwRXBkMmd1WVcxUS9ZM01mTk14NHNVK3RzY2FwUklu?=
 =?utf-8?B?SmFBV0xxbDVta1J2WTJDSHhpN09kUkdYblp6S2RxcC90Q21KT3QrOCtLQy9L?=
 =?utf-8?B?VGtZNXhJaURwVUJ4Wm10Vi81aU4zbFVFS3hzTTZVQXFmam1sSk1rVTZNMzlq?=
 =?utf-8?B?V0IzZ1NmVEE2ZUcvQTVHTHJOWWdPZ0tyc0FFQ0dFRjV3N0tEYUMvLzQ0K2VJ?=
 =?utf-8?B?QVJYSGtUQkl6S1krNTRtM21HWGZzTXJpbnVWeDhDTFBxbEpqbnpBa05sRnhF?=
 =?utf-8?B?Z2wwZ2w5ck1xS2M4VmtjT0V2MnRLQU5IbU43UHFNRmdjejhKakhueVFCQmNN?=
 =?utf-8?B?N0wwdmNnVUZlTzI5NkpPRmpWaHczTjZ6YU52a3pMTjAxOTJzdE9JVnN4aUE5?=
 =?utf-8?B?a3ZTYUN5eEtIOURBbWptNDUwV2pDUXZGZGVyVmRxQkkwQ3l4c1BGKy82MTh4?=
 =?utf-8?B?aW51NUZISno1NHY3bzQ3MzRKalAvNUM0MTZmQmY1Y05FdWNEVG9aRFBHTjFV?=
 =?utf-8?B?WGpmdDdWM2MyajNublJwTmtFMFFzZ3UvdEhZUGpPRDRYdVJZN1VsS3M0eklr?=
 =?utf-8?B?TENUOEswQnpQNExHbGczZG82ckNjQS9jWEY4TWcwNFpyQ0FOeUtJUkFKWDhl?=
 =?utf-8?B?M2xwWHR6REdocFExa2s2K2QxUitmdEgxNUVXbXAwN0JQNmsrdjRHNmpQOGky?=
 =?utf-8?B?em9BOGhDVG5Dakx2ZHFzcmNJNGJtclpNekxVMHc1UEFRT0k0cWk4TGFDWEps?=
 =?utf-8?B?ZU9WUnk5SHM1Wmd5QVFTNXNHQTdDM1UwZ3E2WDhMdm1EVUVyQjZvR3RBRURR?=
 =?utf-8?B?aGx1d2xQaUlQMUQ0RjdLVEwxb1hkcCs3NnNiUFJTSnUzYjVVUjJrMm9GWVZl?=
 =?utf-8?B?RGtqTytJOEdQclNlN3RCNy82dlhJT3pZb3lpaHZBNThTUGZYVUpGblEyVis2?=
 =?utf-8?B?bjdmZUJoNkhydXJLT2hSc1YxR2VoNTFBWGlTTDRFZTdCdGJDRGZDdVhFMzRi?=
 =?utf-8?B?bGpBL0E2Sk9yNS9hMHFlOGtUZ2lmMmdFVS9RUGZsUFd4U1dHbzhmUjQ2R0wz?=
 =?utf-8?B?U01zbjVJVloweTVmVE9ScDBKNVVia0R2OW5rYUttRUJQbnpHQUNrSlk5M0E5?=
 =?utf-8?B?bkJvbEFucytRaHlFMVpJMnFvVFdvVE9Hc2FERkVJSHZIOUdKNHZ0bEVxcTVR?=
 =?utf-8?B?ZlRpdXFxKzIxWXFEMmhVNTg0a3ZNVlp0ZCt6L3hBNFVRakFacnRwVXFTMGR4?=
 =?utf-8?B?UktZdEMvdFAxVVhqY3lnc1JOSU1VMzZXdjkyRGVrOG1FcHl0VFd2NUtVYVZV?=
 =?utf-8?B?NFJ6bDNEWHN2SmZ6a1FFM1czdEtQSSthNWVrWjdKSFRRVlVGWWgrMm8rcGtD?=
 =?utf-8?B?bW5PcE5mZERualRRZWNjd2ZSYnBEVXNsRmN1NGNBNDZnTExCVE1HSkhVS2Va?=
 =?utf-8?B?L0VqQ1cwTDJubjFhZllMM2JyN285WDlGT05pV2I0MnYvTDFqYWxYMmdqNW9T?=
 =?utf-8?B?eTBjVmk3NTRXUkN3dEVmOTFveERuQkRwOHN2QmNTeXlPbUhLdVVyYVdkZ2Za?=
 =?utf-8?B?SHBuSmNXN3J3MWRKeEFSRHFEMnRaWFVraktxSEREQlN3NXg4VXVIMTRRKzNW?=
 =?utf-8?B?MXlUZ0g0SlZ6YlpWak5IQnZ4c3dXOEpGY1dTQkNnWmlWckk5aFU2Q2xNa01D?=
 =?utf-8?B?SkZvcHVyNWVLaG5rbCs1aGJRWHBuaGJEeFFKVks3RnlXaktEMDF1bitSYkZ3?=
 =?utf-8?B?UzFyMDdTaFRZSlpqeVlOV0ZuUEMzclhDQTVqNkxmNEFGY1R3MW0vRHFXQzFD?=
 =?utf-8?B?eUFSUzdVZ3VwR1FxZkVzWjBLWXpibFpTZHRGWWREdE9GZ1Ezdzg5S1ZIcW13?=
 =?utf-8?B?Q0I2eTBXZjNmc3ZDYWdNcmFKbEpNbFphSmE2aWZjTEJUZjVFV0dXbXBTTkV5?=
 =?utf-8?B?OW15bHU0TmowZUJKQnhhWENiRUkxOUVReCtLcmM1V1lBdjg5c1BZOWVSZVNL?=
 =?utf-8?Q?mayseMEpOd/8iYPX2pYb3swTt?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f8331ab-79e4-4f5f-fa46-08dbcb69531e
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Oct 2023 21:22:22.9423 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SEouJ55pkbdNScWlrbsj/H76tR3kKjm+r9Uffuld5uGMWSgc4Skg8+9Hf+xlfXxkIrOxFNhObhkmx0hYF44JxQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6696
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/dsb: Allocate command buffer
 from local memory
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
PiBTeXJqYWxhDQo+IFNlbnQ6IE1vbmRheSwgT2N0b2JlciA5LCAyMDIzIDY6NTIgUE0NCj4gVG86
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW0ludGVsLWdmeF0g
W1BBVENIIDEvNF0gZHJtL2k5MTUvZHNiOiBBbGxvY2F0ZSBjb21tYW5kIGJ1ZmZlciBmcm9tDQo+
IGxvY2FsIG1lbW9yeQ0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IFVzaW5nIHN5c3RlbSBtZW1vcnkgZm9yIHRoZSBEU0Ig
Y29tbWFuZCBidWZmZXIgZG9lc24ndCBhcHBlYXIgdG8gd29yay4NCj4gT24gREcyIGl0IHNlZW1z
IGxpa2UgdGhlIGhhcmR3YXJlIGludGVybmFsbHkgcmVwbGFjZXMgdGhlIGFjdHVhbCBtZW1vcnkg
cmVhZHMNCj4gd2l0aCB6ZXJvZXMsIGFuZCBzbyB3ZSBlbmQgdXAgZXhlY3V0aW5nIGEgYnVuY2gg
b2YgTk9PUHMgaW5zdGVhZCBvZiB3aGF0ZXZlcg0KPiBjb21tYW5kcyB3ZSBwdXQgaW4gdGhlIGJ1
ZmZlci4gVG8gZGV0ZXJtaW5lIHRoYXQgSSBtZWFzdXJlZCB0aGUgdGltZSBpdCB0YWtlcyB0bw0K
PiBleGVjdXRlIHRoZSBpbnN0cnVjdGlvbnMsIGFuZCB0aGUgcmVzdWx0cyBhcmUgYWx3YXlzIG1v
cmUgb3IgbGVzcyBjb25zaXN0ZW50IHdpdGgNCj4gZXhlY3V0aW5nIGEgYnVmZmVyIGZ1bGwgb2Yg
Tk9PUHMgZnJvbSBsb2NhbCBtZW1vcnkuDQo+IA0KPiBBbm90aGVyIHRoZW9yeSBJIGNvbnNpZGVy
ZWQgd2FzIHNvbWUga2luZCBvZiBjYWNoZSBjb2hlcmVuY3kgaXNzdWUuDQo+IExvb2tzIGxpa2Ug
aTkxNV9nZW1fb2JqZWN0X3Bpbl9tYXBfdW5sb2NrZWQoKSB3aWxsIGluIGZhY3QgZ2l2ZSB5b3Ug
YSBXQg0KPiBtYXBwaW5nIGZvciBzeXN0ZW0gbWVtb3J5IG9uIERHRlggcmVnYXJkbGVzcyBvZiB3
aGF0IG1hcHBpbmcgbW9kZSB3YXMNCj4gcmVxdWVzdGVkIChXQyBpbiBjYXNlIG9mIHRoZSBEU0Ig
Y29kZSkuIEJ1dCBjbGZsdXNoIGRpZCBub3QgY2hhbmdlIHRoZSBiZWhhdmlvdXINCj4gYXQgYWxs
LCBzbyB0aGF0IHRoZW9yeSBzZWVtcyBtb290Lg0KPiANCj4gT24gREcxIGl0IGxvb2tzIGxpa2Ug
dGhlIGhhcmR3YXJlIG1pZ2h0IGFjdHVhbGx5IGJlIGZldGNoaW5nIGRhdGEgZnJvbSBzeXN0ZW0N
Cj4gbWVtb3J5IGFzIHRoZSBsb2dzIGluZGljYXRlIHRoYXQgd2UganVzdCBnZXQgdW5kZXJydW5z
LiBCdXQgdGhhdCBpcyBlcXVhbGx5IGJhZCwgc28NCj4gZG9lbnMndCBsb29rIGxpa2Ugd2UgY2Fu
IHJlYWxseSB1c2Ugc3lzdGVtIG1lbW9yeSBvbg0KPiBERzEgZWl0aGVyLg0KPiANCj4gVGh1cyBh
bHdheXMgYWxsb2NhdGUgdGhlIERTQiBjb21tYW5kIGJ1ZmZlciBmcm9tIGxvY2FsIG1lbW9yeSBv
biBkaXNjcmV0ZQ0KPiBHUFVzLg0KDQpUaGlzIHNlZW1zIGZhaXIgdG8gZG8sDQpSZXZpZXdlZC1i
eTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0N
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMgfCA3ICsrKysrKy0N
Cj4gIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiBpbmRleCAzZTMy
YWE0OWI4ZWIuLjc0MTBiYTMxMjZmOSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RzYi5jDQo+IEBAIC01LDYgKzUsNyBAQA0KPiAgICovDQo+IA0KPiAgI2luY2x1
ZGUgImdlbS9pOTE1X2dlbV9pbnRlcm5hbC5oIg0KPiArI2luY2x1ZGUgImdlbS9pOTE1X2dlbV9s
bWVtLmgiDQo+IA0KPiAgI2luY2x1ZGUgImk5MTVfZHJ2LmgiDQo+ICAjaW5jbHVkZSAiaTkxNV9p
cnEuaCINCj4gQEAgLTQ2MSw3ICs0NjIsMTEgQEAgc3RydWN0IGludGVsX2RzYiAqaW50ZWxfZHNi
X3ByZXBhcmUoY29uc3Qgc3RydWN0DQo+IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+
ICAJLyogfjEgcXdvcmQgcGVyIGluc3RydWN0aW9uLCBmdWxsIGNhY2hlbGluZXMgKi8NCj4gIAlz
aXplID0gQUxJR04obWF4X2NtZHMgKiA4LCBDQUNIRUxJTkVfQllURVMpOw0KPiANCj4gLQlvYmog
PSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX2ludGVybmFsKGk5MTUsIFBBR0VfQUxJR04oc2l6ZSkp
Ow0KPiArCWlmIChIQVNfTE1FTShpOTE1KSkNCj4gKwkJb2JqID0gaTkxNV9nZW1fb2JqZWN0X2Ny
ZWF0ZV9sbWVtKGk5MTUsIFBBR0VfQUxJR04oc2l6ZSksDQo+ICsNCj4gSTkxNV9CT19BTExPQ19D
T05USUdVT1VTKTsNCj4gKwllbHNlDQo+ICsJCW9iaiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVf
aW50ZXJuYWwoaTkxNSwgUEFHRV9BTElHTihzaXplKSk7DQo+ICAJaWYgKElTX0VSUihvYmopKQ0K
PiAgCQlnb3RvIG91dF9wdXRfcnBtOw0KPiANCj4gLS0NCj4gMi40MS4wDQoNCg==
