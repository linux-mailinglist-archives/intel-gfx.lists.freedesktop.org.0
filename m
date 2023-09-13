Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7663279F079
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Sep 2023 19:37:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E8C510E4D0;
	Wed, 13 Sep 2023 17:37:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19B3710E4D0
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Sep 2023 17:37:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694626650; x=1726162650;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=N2taDZYplCqwA+rEEsjOk84yfOz+mgmgKeU/81WHhio=;
 b=GTuynNZYnFkHEMKvXeAHXycS3H0Pvjoo6SzFWqc+T7AOEKKIqS5P6rcm
 ScSm9yCZNhM6oP4GpCjlEE0Sew5jd22/dxALVVIiW2hwjObfUWZdENSPo
 WilzHS9kw+v6YhIDMmh0DpH9VIMHIdgTGh9k71kdtpsrdb3IC/WDbeOF2
 iSCK1MXUp69XrPEGzwe7kRD09HOjLTRUqYTcXBHezqx4yRuerVZGAWfTH
 JajJ1W9o+d7vYbZNNTNe/V7XJIWUuCKljs2aoMMYF3JselY0vwM5e2NWm
 HIFfPWuyQ7mWbJDAAMqA4ATlT8VXLPGt+r/+ESJnd0MSSj3CBEZtY4SQ/ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="445168966"
X-IronPort-AV: E=Sophos;i="6.02,143,1688454000"; d="scan'208";a="445168966"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2023 10:37:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="834400461"
X-IronPort-AV: E=Sophos;i="6.02,143,1688454000"; d="scan'208";a="834400461"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Sep 2023 10:37:15 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 13 Sep 2023 10:37:14 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 13 Sep 2023 10:37:14 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 13 Sep 2023 10:37:14 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 13 Sep 2023 10:37:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dUUlwow+woOS5Eu4CWmsLR4CO6GNTUeb2zkT6rdLkNFlZ3aqIWpuFG1jiwVOeFt41ZH2ZAfyHD16PMVwX4e10r6vykcESnn+L4vwKbL9TJh9zQhzNZjpt4A9nCNc1KZP3zRap0RHQhg6tSf18GkB0Vnqo4VklMKaUIH64sQ6EMDUJ08JT/pQkE2KUCuW9xOEzkH2yngruzyjrhEY8ma2jNT6tbBbL5QWpyGTLWNwJ9dAO85JDs+zFZzemODQKLdrV9VuGaL+ZhpCt1XtHu5oxdfIlq6rQuLNrP3X+XHQhumXZcrOCSkHzuPAMoQJ/pNQQ+wxD4lwvNAT/m8DQvo89Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=N2taDZYplCqwA+rEEsjOk84yfOz+mgmgKeU/81WHhio=;
 b=cZ2kCLGccSg56la0QlLndOIjFX+1enlDp2qXEP27kzUv9/SwmVbmcBI8KFe/m4/LvpPSwNtnJNgYwOeIpzJ8BmAe5E4xFmZTPxdF3d+3f0DJeWN1zq/eE5SXHQTH5LzQtEHOdKEkFw11KjLiTtiJZzipaPsfLjNGI0Hi6azeaeKUTSe3I/8MnTLmVztKZHfIqNvonCVblnk2crcjZNdqvVpiduf2LUG2pgHDFKit2ThcddpBBUcwys8FziI3lWiFinNGLuECpRe85W7EuGEt/ZE6fGDNmAaxlgBKb9ZPtSHFzZsOrUbMo0DLvH0ehkTNUMXZmBzPXKdawrfjen41sA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH0PR11MB5782.namprd11.prod.outlook.com (2603:10b6:510:147::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.33; Wed, 13 Sep
 2023 17:37:12 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4%3]) with mapi id 15.20.6768.029; Wed, 13 Sep 2023
 17:37:12 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 16/19] drm/i915: Introudce
 intel_crtc_scanline_to_hw()
Thread-Index: AQHZmKtkYGELrAh3eUSK98RKiFbQGbAZnY5A
Date: Wed, 13 Sep 2023 17:37:12 +0000
Message-ID: <DM4PR11MB6360B3A3326555B128B783BEF4F0A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
 <20230606191504.18099-17-ville.syrjala@linux.intel.com>
In-Reply-To: <20230606191504.18099-17-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH0PR11MB5782:EE_
x-ms-office365-filtering-correlation-id: 1d44d4a8-2a23-4a1a-aedf-08dbb480103b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1hUi0Hw2fEGUFLdsljFD8+cXqjs2Ba4tcrVEgInZFQWLsciL5EBO3NPfvN77ctLLoxr/hbEbCeD+JNi2FB5sSq0dX1jcfxvVKeTcJes2ab7f1DIDJTS8NAolXrSh2Ag8XCwuET6jwUV6MGrpuUAZoSgkRGd6fglt1tA7YtveKZM3FtJsfLkXPEVz2HNWmMSqHNSrbhOK2I0TVd8IFMFTp+W0Zl2sWB9xfAn9yf/YRkhwl0yNl3guAJ5l4cAZqsKI34odahjuwYdGfd1k5qy7mrM4gsUFPVStOIFri+UrEgzM+TOIHTVTNnKaiwaIPiKLqtZci3kD6VjosRuPKfZnzjiqHWQ6btC4fPrHTPhcUM018QeRHxPVz1Tr0G104edYPpsZSYTMcz3iUfNZzXyYj/sdK+nieVXSqLkaKUQC+5mz6D7B0hVusBe1Gc+8VrkEXgciEvtzMb4bDDwIX3dp1Hqyd95b/lhgneWmtR9DGz/KSQ9LK5XUgNvfXFSa0+aSq54KrtJBOlPMoGswjg/gnSKgFAzB5agplMIXK7kg6ovzTETBZjbsB2YS3g3sW0JxxnSQuSzuNJ0zCkc+Tl2DINXFBFnwwVa9UMRihFdPC9zeO5VtI9j7bqJJ2dSN+Red
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(376002)(366004)(396003)(39860400002)(186009)(1800799009)(451199024)(52536014)(83380400001)(71200400001)(6506007)(53546011)(33656002)(7696005)(82960400001)(38070700005)(38100700002)(122000001)(55016003)(86362001)(9686003)(8676002)(2906002)(478600001)(41300700001)(5660300002)(8936002)(316002)(66556008)(76116006)(64756008)(66946007)(110136005)(26005)(66574015)(66476007)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?THpjVUFOSEhNMWpDRy8xNUZDUUNnUEZLUi9oK2lPSDErdHBLa0hDaUxCbFZF?=
 =?utf-8?B?cWF0M2dWOFZJbGhJbExRZnA4d3FGd2NNSnhnN0djUnFvSkVGQkQwd3R1NExB?=
 =?utf-8?B?c2I3UDJ5L0hyM01xNDVuWnhuWllvTy9BZCt5R24xRTdWSXp3ajYySGRRY1BL?=
 =?utf-8?B?Z1NJZjk5NEFDYytWR2ZkRjJBNkVBYkxzYmFZZHhaa0Ztd3d6R1FiNmNRY3B6?=
 =?utf-8?B?eFprTEw1Y2JZRlkzVHpySU5HQ3lEa3Rrc2RnbUUvQVBuTU1henVKWkkvR2FH?=
 =?utf-8?B?NzhOMEVqZnVNMVRPWlJ3aUM5WWlyREJKaDNxYUpsN29ralowUy9iVE9iWVd5?=
 =?utf-8?B?ekRRVlNML3NlazFaMXFzKytxbXRPSUhHRHZOeXQwY3NYQjZDMkJOdXFlZTdK?=
 =?utf-8?B?MkNzNFA5RWZmekEvcVFBR3NLWFo1a0dlVk10MC9xbzE5ZDlGbXk5MGFBVHB4?=
 =?utf-8?B?YzArRE9tWFVWLzREcUo0bCtDR0xDc1hGekEyZnVCUXF5Uk5GRmMybDZqY0ky?=
 =?utf-8?B?azVMUnJ6NTY0VUhiSEF1aVhBUEVSVmZORm8vWk9pZER4NDczWHlXOXdHNWxV?=
 =?utf-8?B?OEN5ZjJWRkM4Zk15RG40OW9LZm9BeXRhS1lBUGprS0VCM3MydE1QTC8vQmNT?=
 =?utf-8?B?LzRTNURSRUt6TEVKaUdPMDdtaUNuVGVtcmZJejlEdHB3K3dHdUpqbFg0M0s0?=
 =?utf-8?B?NXhLYnhJTkNGTFVIbll2QVZjUzhMWkVZQW16SnZZL1ZENHZ1RWM0U2dBR2hW?=
 =?utf-8?B?U1hBVC8vRHFVTjQvRExkenBLSnMvQi9FVm4vUHBHZ2tEUnBwK1k1ZmVmY2lI?=
 =?utf-8?B?WDl5NkF4dndXd1FVR2pQZS9UV3dzMnlPV0w3OUdSS29KeXllOVp3THM5K01R?=
 =?utf-8?B?Zkh5TG1MSzV4MXIzb090NkxhdXBmVkY4OEtGY0NmZ2FEQSt5bTlWVTVTSXNm?=
 =?utf-8?B?dGpLby9XdE1tem1zYlg5cGJ0U01HbjZWQS91ZnJNN28waFVlSC9COGlZLzhy?=
 =?utf-8?B?WEl6THlxU3dnMlVoZEc1NDhHTkUvcDhkYjByTW9TdGVmb3hZZ0NEbkk2YlhW?=
 =?utf-8?B?VElvaTMrdFdJd2ZXWXRKczhFWFl4aktYbml6S3RWcXZseWxSZlVJRnV3ci9u?=
 =?utf-8?B?Yk9oQklxdTJkZ0pkVFdyTHdNYUNYN0RXSFdqMDJURHBJNUtmUVFKWUdjMkpK?=
 =?utf-8?B?SnExRU9DY2pYdld1N09OTVNoNnRZL0hmVzd5NDlXaVo4S1JnUXRHeUQvRzZ2?=
 =?utf-8?B?djJXL1BQWnpaUkNxcm5BNEpFMmJVWXlxTGxNUXRkT1ZYUGF2UUZEZWtUb2dL?=
 =?utf-8?B?MkZvZkhYRHowNnM2THVGK2JETFZ2empWTDdQRE1aK1QrNVNOTmFIS1pOYTBG?=
 =?utf-8?B?N0RPZmp2NHF0emZjTWxCS1hLaUo4NWRqWDU4aTNIOC9uY1l4N2c3UWZmOHpJ?=
 =?utf-8?B?WnRwMjQ3MlB6S25JWElCWDFOYjlTUkM5clNLWEk4dUI0azJFRkZEYVIrcW1N?=
 =?utf-8?B?YXdCUVpCVEF5aFZpcEszWVU5SU51aVpLSXEzSXdrdDU5N1RGQVNJVmhFVm82?=
 =?utf-8?B?OTZYQnArTGRwNUoycG9JTG9oQ3NFSGdQV085cG5lSlQ3eG1mdkUwcFdJN1pz?=
 =?utf-8?B?cXNXbU4vUkhPSXBLWGVRbS91NkFJa0pYbWQwOWtPOXNJdGRHOFJUNVQ5Y0pn?=
 =?utf-8?B?WGl4VllYNHZJa2Y5UERCL1BUeEE1T2JXdHN6L2NhYkhpSTMxaEIzV2xRYndo?=
 =?utf-8?B?N2xoMGV2ajZFQ2l3azRxWVc5N3cxd280N1hLVUIxamRSUFc0OE1iOFRYZlho?=
 =?utf-8?B?QTUweW41THlkKzdJODljdXJBdXkrYkg0TlgyWkRuazNzMGZBQVpkY2pzTW93?=
 =?utf-8?B?dm5TNk1tcVB6Q0xGWiszVEFMN3hHSUZLZ0ZvNHpYUFdWSVMxZXVsVHd1b0w1?=
 =?utf-8?B?dDNBUHNDS3RTZFcvcGJ2SHp1bDBMQm5IekhTU3hiaE5RaU5hYjhOd0lwRVIz?=
 =?utf-8?B?Wld1MVZZTjgzT2tFYmdKaEZFRVdQNmZaLzU5TmxBZUZrTHRBZW4rL0g5UkZq?=
 =?utf-8?B?RmVtNklHR1oyREsvK3kyT21kYUdTM0ovY2xhVlZ2aDArWUhZZ1IyQlRaZm5Y?=
 =?utf-8?Q?LQs2zOGhuZh4jeLB6NrRXP97Q?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d44d4a8-2a23-4a1a-aedf-08dbb480103b
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Sep 2023 17:37:12.3630 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7ZNKlD6MPBRPbdsI2LghS0M0x7I8h5zqwsEmRjy+OpItWnL7dPMglnUybjg/1NcUiSiNUZv/3JzXDwsUZdl43A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5782
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 16/19] drm/i915: Introudce
 intel_crtc_scanline_to_hw()
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
PiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgSnVuZSA3LCAyMDIzIDEyOjQ1IEFNDQo+IFRv
OiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtJbnRlbC1nZnhd
IFtQQVRDSCB2MiAxNi8xOV0gZHJtL2k5MTU6IEludHJvdWRjZQ0KPiBpbnRlbF9jcnRjX3NjYW5s
aW5lX3RvX2h3KCkNCg0KVHlwbyBpbiBpbnRyb2R1Y2UNCg0KV2l0aCB0aGlzIGZpeGVkLCB0aGlz
IGlzOg0KUmV2aWV3ZWQtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQoN
Cj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4N
Cj4gDQo+IEFkZCBhIGhlbHBlciB0byBjb252ZXJ0IG91ciBpZGVhIG9mIGEgc2NhbmxpbmUgdG8g
dGhlIGh3J3MgaWRlYSBvZiB0aGUgc2FtZQ0KPiBzY2FubGluZSAoaWUuIGFwcGx5IGNydGMtPnNj
YW5saW5lX29mZnNldCBpbiByZXZlcnNlKS4NCj4gV2UnbGwgbmVlZCB0aGlzIHRvIHRlbGwgdGhl
IERTQiBkbyBzdHVmZiBvbiBhIHNwZWNpZmljIHNjYW5saW5lLg0KPiANCj4gU2lnbmVkLW9mZi1i
eTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0t
DQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZibGFuay5jIHwgMTQgKysr
KysrKysrKysrKysNCj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92Ymxhbmsu
aCB8ICAxICsNCj4gIDIgZmlsZXMgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJsYW5rLmMNCj4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZibGFuay5jDQo+IGluZGV4IGY1
NjU5ZWJkMDhlYi4uMmNlYzJhYmY5NzQ2IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3ZibGFuay5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfdmJsYW5rLmMNCj4gQEAgLTI1MSw2ICsyNTEsMjAgQEAgc3RhdGljIGlu
dCBfX2ludGVsX2dldF9jcnRjX3NjYW5saW5lKHN0cnVjdCBpbnRlbF9jcnRjDQo+ICpjcnRjKQ0K
PiAgCXJldHVybiAocG9zaXRpb24gKyBjcnRjLT5zY2FubGluZV9vZmZzZXQpICUgdnRvdGFsOyAg
fQ0KPiANCj4gK2ludCBpbnRlbF9jcnRjX3NjYW5saW5lX3RvX2h3KHN0cnVjdCBpbnRlbF9jcnRj
ICpjcnRjLCBpbnQgc2NhbmxpbmUpIHsNCj4gKwljb25zdCBzdHJ1Y3QgZHJtX3ZibGFua19jcnRj
ICp2YmxhbmsgPQ0KPiArCQkmY3J0Yy0+YmFzZS5kZXYtPnZibGFua1tkcm1fY3J0Y19pbmRleCgm
Y3J0Yy0+YmFzZSldOw0KPiArCWNvbnN0IHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICptb2RlID0g
JnZibGFuay0+aHdtb2RlOw0KPiArCWludCB2dG90YWw7DQo+ICsNCj4gKwl2dG90YWwgPSBtb2Rl
LT5jcnRjX3Z0b3RhbDsNCj4gKwlpZiAobW9kZS0+ZmxhZ3MgJiBEUk1fTU9ERV9GTEFHX0lOVEVS
TEFDRSkNCj4gKwkJdnRvdGFsIC89IDI7DQo+ICsNCj4gKwlyZXR1cm4gKHNjYW5saW5lICsgdnRv
dGFsIC0gY3J0Yy0+c2NhbmxpbmVfb2Zmc2V0KSAlIHZ0b3RhbDsgfQ0KPiArDQo+ICBzdGF0aWMg
Ym9vbCBpOTE1X2dldF9jcnRjX3NjYW5vdXRwb3Moc3RydWN0IGRybV9jcnRjICpfY3J0YywNCj4g
IAkJCQkgICAgIGJvb2wgaW5fdmJsYW5rX2lycSwNCj4gIAkJCQkgICAgIGludCAqdnBvcywgaW50
ICpocG9zLA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF92YmxhbmsuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJsYW5r
LmgNCj4gaW5kZXggMDhlNzA2YjI5MTQ5Li4xNzYzNmYxNDBjNzEgMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJsYW5rLmgNCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YmxhbmsuaA0KPiBAQCAtMjIsNSArMjIsNiBA
QCB2b2lkIGludGVsX3dhaXRfZm9yX3BpcGVfc2NhbmxpbmVfc3RvcHBlZChzdHJ1Y3QgaW50ZWxf
Y3J0Yw0KPiAqY3J0Yyk7ICB2b2lkIGludGVsX3dhaXRfZm9yX3BpcGVfc2NhbmxpbmVfbW92aW5n
KHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKTsgIHZvaWQNCj4gaW50ZWxfY3J0Y191cGRhdGVfYWN0
aXZlX3RpbWluZ3MoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+
ICAJCQkJICAgICAgYm9vbCB2cnJfZW5hYmxlKTsNCj4gK2ludCBpbnRlbF9jcnRjX3NjYW5saW5l
X3RvX2h3KHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLCBpbnQgc2NhbmxpbmUpOw0KPiANCj4gICNl
bmRpZiAvKiBfX0lOVEVMX1ZCTEFOS19IX18gKi8NCj4gLS0NCj4gMi4zOS4zDQoNCg==
