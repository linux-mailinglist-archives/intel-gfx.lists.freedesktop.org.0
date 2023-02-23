Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1254F6A08AF
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Feb 2023 13:35:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13FD889316;
	Thu, 23 Feb 2023 12:35:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E75B10E4D6
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Feb 2023 12:35:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677155743; x=1708691743;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=ab5x6UPx3ITm7KHcQgSMVgHdbRJ3Hm3s98Nbur+x8YM=;
 b=mmYT7Mge/5oyOBguWqw1ht62rzv1pb03jXnKLPg4H0pCIwfBG1pwsLqX
 9yveJg7agIeg6dRjVCJcncKmix9IAdVHtqZG8t5bYW2DpiGkGkPc1eQMV
 v+o4p9F5H83+MjERBkBAjtijhYdYzvbIeSh64nuwUYXDJNTziZD5zAKpc
 PzcXiCDxE0wiNo9X39XsQo5I/5JKBHHDMqQQ2lLcxSpyKycup3HZDLMR/
 27GtqZHvOpvWS/lxAOXZkCARUEM1HYEBWrgCq9q/JuW0XoiFqsGxtFVGb
 wselM3WLMNLoa9U7sQ3WkY7l/LxIs0eoudwih86N5iIQ3oB/BhVpWceot g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="316926371"
X-IronPort-AV: E=Sophos;i="5.97,320,1669104000"; d="scan'208";a="316926371"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2023 04:35:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="761365713"
X-IronPort-AV: E=Sophos;i="5.97,320,1669104000"; d="scan'208";a="761365713"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP; 23 Feb 2023 04:34:59 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 23 Feb 2023 04:34:58 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 23 Feb 2023 04:34:58 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.44) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 23 Feb 2023 04:34:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nmDceSydutYubQqpx+pxAozwcL7uz6+TVKHmNsJ6s1RZxW7TujP4hW3lT2VE8VbevkpsUesxnPX4yjwyMgHviXmAUSjsobgY+zv2L2v1DrMyIiTJ0sZ9i5IcKhQ28x6WD+TDqJD24qvcfRdlg1cOWyyeX2lEbNIlTHckBMRQx4MjyU3YapaLpTNL+TvKQ+/7qqImtACrXejXdZql1/zgLCr9wZxu14S1X1bH+h0SWy4N4AgWT3R+D0Xz/jb6lbVsgEcZqsgwhPzZRU7gNcvdskMHmGB7ebZGNBEv8Km91Wddgmf5z+t1w4ZyD7ajCZHNM1p3uWypYIwVwnif8xUSEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ab5x6UPx3ITm7KHcQgSMVgHdbRJ3Hm3s98Nbur+x8YM=;
 b=jUZVD26AwdVqrFHLgwthR5mBqeJX2fq0x0JLSDEdijvBydZJ5OG4pWLzHuUmtoMFFAyPNX5diPqYEoIUO87EiWExfwZk2fH0v4RlavfesCdpbn2JCIlwc3cIejWTW7W6/Bx2vtTQ6KiParg+Yyg3krst2g6515RLLK9lVfWlNiNalyfFPqfu5M3HYqKd66jvAlCygOxDEvePLmPh6n99n3vbmVI51+AuPaOMq3pve8+zNjAsJa0ODIwT2BwerNCO8XEk6Y7odl1DwsefJWC28JgcR+RW4zjWM2YwMaDKRjgkUqB4LLg+oZ/WtNt2CX11+eaRKNjh7iZ9Qi0q7jioKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4962.namprd11.prod.outlook.com (2603:10b6:303:99::23)
 by PH7PR11MB8060.namprd11.prod.outlook.com (2603:10b6:510:24f::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.19; Thu, 23 Feb
 2023 12:34:56 +0000
Received: from CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::9cbe:1b81:53be:aae8]) by CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::9cbe:1b81:53be:aae8%7]) with mapi id 15.20.6134.021; Thu, 23 Feb 2023
 12:34:56 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 4/5] drm/i915: Extract {i9xx,
 i965)_error_mask()
Thread-Index: AQHZMO5WP2t/KSa/Mk2R+CaY/2EEMK7cpJqA
Date: Thu, 23 Feb 2023 12:34:56 +0000
Message-ID: <f2ab88d98518e37e2c538b8ef73625377551e502.camel@intel.com>
References: <20230125185234.21599-1-ville.syrjala@linux.intel.com>
 <20230125185234.21599-5-ville.syrjala@linux.intel.com>
In-Reply-To: <20230125185234.21599-5-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB4962:EE_|PH7PR11MB8060:EE_
x-ms-office365-filtering-correlation-id: 07c3a829-5aaa-43d2-01f9-08db159a5f02
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: adWc3OcZgGV7Jdc5FpZIn+ybc5LIYJzFtrjgD6ywTADNCa3TkwgEnA8vQ9zMTp6YiVbHOgKzIR3dfkS3aBF0KbXDJffzuT3y45v+cMyZNiOWgzbe7EpWZldxVBDDMFPYPJFnqGYDZlZKEcFB90dq1HWacYptghGvBYciu8yg1UetThllIeU4m5G8fiRcXoGontHZ3cwfhD1Er9XyoksDo8bAn6Fu6WgBG/UAD1iXw+vVM/E8hqhBm9oZOTLbgTlIH8SCvqG2J+LafrgS7RWdTDvEd3AGSdvBTC4rve9j3IAnNnjEqvaDYHycNP1PyIgGXhckMsAbxz38WyJ/LTN2t0u0keQyfK8LBew/6Usq5e2zijsso36kkceU9IC28hXdDioljwFzCZa84fczdCuWeFHZBNQYFcuMMNFSEBu1lGhN5Inyq3hBRRGDMFgaG/BXWTdnuowILEPMgcTEv9L+QVSmwCgxOpUH69LgxBMqNBShCKVwY1yIthUIxYQPS4x+r2WjEIiiSF30XYatun4xVC1/xUgFBUG+kwjlPXjj0rWnuZIiXyNB7XIXDkZmSbCI4Axbp0c66vxxPACPPc159OQ7zT5SVur762NIGepr0l5WJNiA0H+f1u43oHys2yrX/xXrxYwd/OS0v/7sbnniSr/UGpEHf20A6NPa0UK48FwQsX0AQ9q2uDkyzzQIODP+BhM5ek2DmnYHwJXnmfaUBA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4962.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(346002)(376002)(396003)(366004)(136003)(451199018)(478600001)(71200400001)(26005)(6512007)(186003)(2616005)(6486002)(122000001)(66946007)(316002)(91956017)(83380400001)(8676002)(110136005)(64756008)(6506007)(82960400001)(66476007)(66556008)(76116006)(66446008)(41300700001)(5660300002)(8936002)(2906002)(38100700002)(86362001)(38070700005)(36756003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OStNaFdBTldIdkRKdXFpdjhXWjlVZWREQkdCai9EemJIWStzeXBHNXdxaUVF?=
 =?utf-8?B?R0hVcVQrV0dOQW8yTXNxUGFKQWdGS0lFalN0eTNjOXlZNEVlVTFjMCtUZEw4?=
 =?utf-8?B?Q0VUVExVbndYcTRSTHIyMFVNeGJoK0pNYjdiNkFZQkJ0b3pzZWN3VDVEckgz?=
 =?utf-8?B?WTRQTXc3NHpueGt5Qi90UjQ5TUhLak8xTTNTamRnVnpNRFhoY3p6MTJvQ1hO?=
 =?utf-8?B?cFFBVjF0UCtpT3ArVVR6V1hhb29UUlc5eVd4LzhYZlgwcVlNNzQrKzgwSUVP?=
 =?utf-8?B?WWp6dXAwaExMMTJzcWxQYVFVamxzbmQ3SEg4VVhnRUgzQlpVUmQ0WFBZSVB3?=
 =?utf-8?B?cGhBZFMwdFpMb0FNMFlaVU52aEFUM1NPcVBPTjRXU3lXb1RFQjNlWjN6eGZ2?=
 =?utf-8?B?RldKVVNDWlZYdkI3RVQydkM3SGZsRXJvbUpZaStvVEJWd3BXRTJQVVI5Wng1?=
 =?utf-8?B?dm5XeHZwNDdNWElGZkUwemJNNmFRWWk3MmVYQ0pocldudCtFQXBZUHZPWHh5?=
 =?utf-8?B?d2RFaktINGFGQ3ZtQ21OWHlLcGFLaWNoa0dNM1RVMHl6amE1TFF5VGxSWDVm?=
 =?utf-8?B?cGMzaGpNY2FNdnVHUDV1aXBadjArU3N0RFNRL3dMa1VxQStuWEFzSCtIWVJR?=
 =?utf-8?B?cVJLZ3Z4OU5kRGtaT0xLcDRxd2M0MUJwWHJ0dlZtOHZmcHQvRzJQdDBITlo1?=
 =?utf-8?B?V3U1bFlsNDMrZFI5Ky92TmkwSWVvcUw5WGZVYzgyZEdYV2JFWmdqTCtmQ2Q5?=
 =?utf-8?B?cnRYdjNTbnhOYndOT2kzczFyQUxUa1lVNVJTblVFZENUQ2dHYndhOFVOcXNx?=
 =?utf-8?B?eFRtVGx5Ry9TZFAyTHQxYXhINDNxTzVEU0J3aTBVQ1dIVStsTEtzYkRZa0F2?=
 =?utf-8?B?WFV1dWxqVEtoZE9NOFpkT1NaL2M2dzM2ZmxGNVpFbmpIMUVaVHNsbmlrMzlv?=
 =?utf-8?B?QTJHMHh0UXNhcEZRTFlCZmFrellnRTRyQUlwUEEybHNXS3JnbWRFNFZQSWlM?=
 =?utf-8?B?K05QMzFpTHUzNHNXaVBqc1pKQTJYMTBHYnRMaExvMFl1MnNURnl4WHYwQlY5?=
 =?utf-8?B?WnBaanl1d1h6K2VzMkI5Q1JXcW9tcDcwQnlBM3NmZ3k3bVpHWXIrdk5JMHFJ?=
 =?utf-8?B?a0JIdThtaEYzOEhxYTI0Y0MxTjFuZ0FCdlk2NnJNd3Z0MUg0UDFvOVlONGlh?=
 =?utf-8?B?bDBNcHFEVUdZd1lvN2RobitTbHlwbWc4dFp3WnR4UHlSUGQ0RzgvQXFWS1J1?=
 =?utf-8?B?dGR5c0U4WWNwMldqSnZCOXFqaVRYUVNvaWk3akw1M0Vta3JLclN0ZjUraUQz?=
 =?utf-8?B?bGV0czUvWmlnMGY0YlFIWWNwOEFvYmdYWDNRc3FhWWtWdUtvZ0h0alUwb0t4?=
 =?utf-8?B?S29FeVc3MkVycFY4VzhYZzZwVnpuM0tVSXZVdXRpbUJkOWt6ZnM0UUxnUldG?=
 =?utf-8?B?UE0zaXA0WGZxWmtUVU9hMUNOTWJZcW4rYVdxbEQ0YUpUVWFib3FuYTdJbHBH?=
 =?utf-8?B?OHdJYXpvZ1NNNHhPYVR1ZnVyazhFcHNWL3pVNzlBMTJQcDNvVDhPK2VTWkRW?=
 =?utf-8?B?citmSGcxT0U4U2lCNHJ5TUlQNHhBR3R0U3FwRjBFMjRRa0RZNWZHKytsSHFB?=
 =?utf-8?B?eEdScFIwTVRhZmxtRDBIdFlpTytzc0hJMmVRb0FreURRNmFHanRRd0QrTXZG?=
 =?utf-8?B?M0NBWXc0Nmx6T2RKSEdJeHRseHZTeEc2OVFhWFVPMUpsQlZISmxhRW1kZmtv?=
 =?utf-8?B?SmltdVltT3VCUTlRUHFGNzhxRU80M0tiM2pCaUtZVWpsdVQ5dUVSbnBrT3pw?=
 =?utf-8?B?ZVVUWHMxak1oN3pYd3NIZFcvZ09aUFFwRXZEMGNWTkRvLzFFc3hiSnMrTHV2?=
 =?utf-8?B?WFN2dzFMTURuN2t0NTZRY2Y1bWh0OVVqcWIzOHlFUS9wYy85R0NidXJ6QmRa?=
 =?utf-8?B?b0Y5T0x4WUhheHBVUGthK1JqaHgrd2NMRjZCbUJmZWlFUVFmTE5GcGkvdkVi?=
 =?utf-8?B?VXFXTGhMeWxKNURiWGF2VHBUWXJSZTFUTHZ4cUhiUG4xV0VyVzlXRXhPRVFF?=
 =?utf-8?B?U3d5Vy9GeW1YR3FGMEIxcnpTM1RaQUVnbnYrMTFvYVJadjRudUJmN3NKSVl4?=
 =?utf-8?B?MmFZSFh6aGxsK0dvajMyV2lFLzh3bHI2bXJCeThwMGtKSmRabWpHU3VDRElz?=
 =?utf-8?Q?XdCpRLHyXH/pVHqCXl+itiU=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <8455CF691394744DA4612C4E0D5838C0@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4962.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 07c3a829-5aaa-43d2-01f9-08db159a5f02
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Feb 2023 12:34:56.5702 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: o68go04kCKQQTVRnKSc1S5rn7BRb7M5ACEU8B+WhBa2Ib2wT3D3l6nh7qKSnvQwVk4zmaMOo1bLlxirF2q7+L/Pczr5YChTghvgR/8HMYXs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8060
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915: Extract {i9xx,
 i965)_error_mask()
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

SGksCgoKT24gV2VkLCAyMDIzLTAxLTI1IGF0IDIwOjUyICswMjAwLCBWaWxsZSBTeXJqYWxhIHdy
b3RlOgo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+Cj4gCj4gUHVsbCB0aGUgRU1SIGNhbGN1bGF0aW9uIGludG8gc21hbGwgaGVscGVycy4KPiAK
PiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tPgo+IC0tLQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyB8IDQ2ICsr
KysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLQo+IMKgMSBmaWxlIGNoYW5nZWQsIDI1IGlu
c2VydGlvbnMoKyksIDIxIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2lycS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYwo+
IGluZGV4IDBlOTBjMzQ4MTc1ZS4uMDgxYjc5ZDAwNTIxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfaXJxLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2lycS5jCj4gQEAgLTM0NzEsMTUgKzM0NzEsMTggQEAgc3RhdGljIHZvaWQgaTh4eF9pcnFfcmVz
ZXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+IMKgwqDCoMKgwqDCoMKgwqBk
ZXZfcHJpdi0+aXJxX21hc2sgPSB+MHU7Cj4gwqB9Cj4gwqAKPiArc3RhdGljIHUzMiBpOXh4X2Vy
cm9yX21hc2soc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gK3sKPiArwqDCoMKgwqDC
oMKgwqByZXR1cm4gfihJOTE1X0VSUk9SX1BBR0VfVEFCTEUgfAo+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgSTkxNV9FUlJPUl9NRU1PUllfUkVGUkVTSCk7Cj4gK30KPiArCj4gwqBz
dGF0aWMgdm9pZCBpOHh4X2lycV9wb3N0aW5zdGFsbChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYpCj4gwqB7Cj4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRlbF91bmNvcmUgKnVu
Y29yZSA9ICZkZXZfcHJpdi0+dW5jb3JlOwo+IMKgwqDCoMKgwqDCoMKgwqB1MTYgZW5hYmxlX21h
c2s7Cj4gwqAKPiAtwqDCoMKgwqDCoMKgwqBpbnRlbF91bmNvcmVfd3JpdGUxNih1bmNvcmUsCj4g
LcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBF
TVIsCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCB+KEk5MTVfRVJST1JfUEFHRV9UQUJMRSB8Cj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgSTkxNV9FUlJPUl9NRU1PUllfUkVG
UkVTSCkpOwo+ICvCoMKgwqDCoMKgwqDCoGludGVsX3VuY29yZV93cml0ZTE2KHVuY29yZSwgRU1S
LCBpOXh4X2Vycm9yX21hc2soZGV2X3ByaXYpKTsKPiDCoAo+IMKgwqDCoMKgwqDCoMKgwqAvKiBV
bm1hc2sgdGhlIGludGVycnVwdHMgdGhhdCB3ZSBhbHdheXMgd2FudCBvbi4gKi8KPiDCoMKgwqDC
oMKgwqDCoMKgZGV2X3ByaXYtPmlycV9tYXNrID0KPiBAQCAtMzY1MSw4ICszNjU0LDcgQEAgc3Rh
dGljIHZvaWQgaTkxNV9pcnFfcG9zdGluc3RhbGwoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2KQo+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUgPSAm
ZGV2X3ByaXYtPnVuY29yZTsKPiDCoMKgwqDCoMKgwqDCoMKgdTMyIGVuYWJsZV9tYXNrOwo+IMKg
Cj4gLcKgwqDCoMKgwqDCoMKgaW50ZWxfdW5jb3JlX3dyaXRlKHVuY29yZSwgRU1SLCB+KEk5MTVf
RVJST1JfUEFHRV9UQUJMRSB8Cj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIEk5MTVfRVJST1Jf
TUVNT1JZX1JFRlJFU0gpKTsKPiArwqDCoMKgwqDCoMKgwqBpbnRlbF91bmNvcmVfd3JpdGUodW5j
b3JlLCBFTVIsIGk5eHhfZXJyb3JfbWFzayhkZXZfcHJpdikpOwo+IMKgCj4gwqDCoMKgwqDCoMKg
wqDCoC8qIFVubWFzayB0aGUgaW50ZXJydXB0cyB0aGF0IHdlIGFsd2F5cyB3YW50IG9uLiAqLwo+
IMKgwqDCoMKgwqDCoMKgwqBkZXZfcHJpdi0+aXJxX21hc2sgPQo+IEBAIC0zNzU1LDI2ICszNzU3
LDI4IEBAIHN0YXRpYyB2b2lkIGk5NjVfaXJxX3Jlc2V0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdikKPiDCoMKgwqDCoMKgwqDCoMKgZGV2X3ByaXYtPmlycV9tYXNrID0gfjB1Owo+
IMKgfQo+IMKgCj4gLXN0YXRpYyB2b2lkIGk5NjVfaXJxX3Bvc3RpbnN0YWxsKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiArc3RhdGljIHUzMiBpOTY1X2Vycm9yX21hc2soc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gwqB7Cj4gLcKgwqDCoMKgwqDCoMKgc3RydWN0
IGludGVsX3VuY29yZSAqdW5jb3JlID0gJmRldl9wcml2LT51bmNvcmU7Cj4gLcKgwqDCoMKgwqDC
oMKgdTMyIGVuYWJsZV9tYXNrOwo+IC3CoMKgwqDCoMKgwqDCoHUzMiBlcnJvcl9tYXNrOwo+IC0K
PiDCoMKgwqDCoMKgwqDCoMKgLyoKPiDCoMKgwqDCoMKgwqDCoMKgICogRW5hYmxlIHNvbWUgZXJy
b3IgZGV0ZWN0aW9uLCBub3RlIHRoZSBpbnN0cnVjdGlvbiBlcnJvciBtYXNrCj4gwqDCoMKgwqDC
oMKgwqDCoCAqIGJpdCBpcyByZXNlcnZlZCwgc28gd2UgbGVhdmUgaXQgbWFza2VkLgo+IMKgwqDC
oMKgwqDCoMKgwqAgKi8KPiAtwqDCoMKgwqDCoMKgwqBpZiAoSVNfRzRYKGRldl9wcml2KSkgewo+
IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBlcnJvcl9tYXNrID0gfihHTTQ1X0VSUk9S
X1BBR0VfVEFCTEUgfAo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIEdNNDVfRVJST1JfTUVNX1BSSVYgfAo+IC3CoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIEdNNDVfRVJST1Jf
Q1BfUFJJViB8Cj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgSTkxNV9FUlJPUl9NRU1PUllfUkVGUkVTSCk7Cj4gLcKgwqDCoMKgwqDC
oMKgfSBlbHNlIHsKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZXJyb3JfbWFzayA9
IH4oSTkxNV9FUlJPUl9QQUdFX1RBQkxFIHwKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBJOTE1X0VSUk9SX01FTU9SWV9SRUZSRVNI
KTsKPiAtwqDCoMKgwqDCoMKgwqB9Cj4gLcKgwqDCoMKgwqDCoMKgaW50ZWxfdW5jb3JlX3dyaXRl
KHVuY29yZSwgRU1SLCBlcnJvcl9tYXNrKTsKPiArwqDCoMKgwqDCoMKgwqBpZiAoSVNfRzRYKGk5
MTUpKQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gfihHTTQ1X0VSUk9S
X1BBR0VfVEFCTEUgfAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIEdNNDVfRVJST1JfTUVNX1BSSVYgfAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIEdNNDVfRVJST1JfQ1BfUFJJViB8Cj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgSTkxNV9FUlJPUl9NRU1PUllfUkVG
UkVTSCk7Cj4gK8KgwqDCoMKgwqDCoMKgZWxzZQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqByZXR1cm4gfihJOTE1X0VSUk9SX1BBR0VfVEFCTEUgfAo+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIEk5MTVfRVJST1JfTUVNT1JZX1JFRlJFU0gp
OwoKTWF5IGJlIHRoaXMgY291bGQgYmUgb3B0aW1pemVkIHRvIC0+IHJldHVybiBpOXh4X2Vycm9y
X21hc2soaTkxNSkgdG9vPwoKSW4gYW55IGNhc2UsIAoKUmV2aWV3ZWQtYnk6IFZpbm9kIEdvdmlu
ZGFwaWxsYWkgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPgoKPiArfQo+ICsKPiArc3Rh
dGljIHZvaWQgaTk2NV9pcnFfcG9zdGluc3RhbGwoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2KQo+ICt7Cj4gK8KgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3Jl
ID0gJmRldl9wcml2LT51bmNvcmU7Cj4gK8KgwqDCoMKgwqDCoMKgdTMyIGVuYWJsZV9tYXNrOwo+
ICsKPiArwqDCoMKgwqDCoMKgwqBpbnRlbF91bmNvcmVfd3JpdGUodW5jb3JlLCBFTVIsIGk5NjVf
ZXJyb3JfbWFzayhkZXZfcHJpdikpOwo+IMKgCj4gwqDCoMKgwqDCoMKgwqDCoC8qIFVubWFzayB0
aGUgaW50ZXJydXB0cyB0aGF0IHdlIGFsd2F5cyB3YW50IG9uLiAqLwo+IMKgwqDCoMKgwqDCoMKg
wqBkZXZfcHJpdi0+aXJxX21hc2sgPQoK
