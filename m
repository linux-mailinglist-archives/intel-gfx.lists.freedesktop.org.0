Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45032838860
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jan 2024 08:57:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2E8710E160;
	Tue, 23 Jan 2024 07:57:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E729410E119
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jan 2024 07:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705996626; x=1737532626;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=FXGEgrX76HhA4yU4pBn8u4o3r+3KFeImkxWCnH3sbpY=;
 b=X2Zg+umlH+5FJy9LchhQDoOHxrtFPoX5SgJ+gw6USJMGxiUwRPmGehvF
 BKXrn6lAufe+EeBAIBQS2yvCrVcG4U/zP7s0CWatrKDRJd2CJMX0Mnoyv
 7FDfyi/8MbOCBO6JV/3RNobv3h443iGwBp6dA4A2Z0rodCFea7znSvPsH
 adZfTOhM/wnRrFnqf3a9bwHs7sVdGLK3aHvVVaxSc2smaW++noln1Mfue
 IcrpisSoKLxzaW/BpO2PwVLuLmecXOdD/UuSR37C4jwUxjT5kdzIsPbrm
 HsZKrvrrVTh5Y9Y6Zhe2yIfcmGWe1J4EADw8Hn6Ek+8UwCKNNOk8Zau8p g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="14796786"
X-IronPort-AV: E=Sophos;i="6.05,213,1701158400"; d="scan'208";a="14796786"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2024 23:57:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="876262327"
X-IronPort-AV: E=Sophos;i="6.05,213,1701158400"; d="scan'208";a="876262327"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Jan 2024 23:57:04 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 22 Jan 2024 23:57:04 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 22 Jan 2024 23:57:02 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 22 Jan 2024 23:57:02 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 22 Jan 2024 23:57:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jO456j5sr7HRTAJxi7883ukGhpLvns6x5IRdMR8nC7LmDl90jbxCHCYDnFnEq6OwrmeQ+A4PtCtD6Ml98aASPdgsCTSXXspT7EqL+jBq0ZUiJggJ0HW34ae+h3rnAQnSWuEfA6p3hH/7A0uGbPG0PS0wBdvhzrDeRyL/mRYb4Tdnu+25pZSLLEvJ9Qks73xINMyVNLIDVq+blQxiqBFFnc/OENOJhSRbo6kElKk5kyxU3/q4dzeX6U4fvevi1x8AhBYFBe7zbKUUwOv+FH6QvDeuP+yZSa3+rOFQHdzHXLCyo2K1mpiKwm25zXrG6aIF5FwH1slboKyG3kIsodu1NQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FXGEgrX76HhA4yU4pBn8u4o3r+3KFeImkxWCnH3sbpY=;
 b=bxF9XTERB013HMCf3qhO6UEb1SJxtT+CNKFI0TrC1UPDq/oYee57g5qEn7pzTsRGqIaLSZEmuYzIIsjc8Qbc/mPvHg/NN+xw3BgVzK2a05icHNhr/teIbeInzY58M8KLRYq4NHns1DVgbvItoBn5JKag0knyraWlyScKTEaSBauyZZrtzuWcu269dFMiGSQXTbssuNcFEAswHz8MiGNk/smjZJT4KaTANnuB1I1Hgw2uTQPw48RKa4YKI3RBd5CnnTUN/Za5RZjvTDZn5CcAvaLxaoHTno0mzXobr0NpEp3XL+aEU7U+ZoWl89+NJOWpGhd0qSngADBl2ALrSVVEnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 BN9PR11MB5387.namprd11.prod.outlook.com (2603:10b6:408:11c::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.32; Tue, 23 Jan
 2024 07:57:00 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737%7]) with mapi id 15.20.7202.031; Tue, 23 Jan 2024
 07:57:00 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH] drm/i915/psr: Request modeset on initial commit to
 compute PSR state
Thread-Topic: [PATCH] drm/i915/psr: Request modeset on initial commit to
 compute PSR state
Thread-Index: AQHaTctiyfWjVarGx0OullqjlacorLDnA42AgAAEV4A=
Date: Tue, 23 Jan 2024 07:57:00 +0000
Message-ID: <83b0e2b52e2bc8ab1f1ba7f296d7d3b08a0be249.camel@intel.com>
References: <20240123071103.2147760-1-jouni.hogander@intel.com>
 <Za9tpxLhbrexGEDG@intel.com>
In-Reply-To: <Za9tpxLhbrexGEDG@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|BN9PR11MB5387:EE_
x-ms-office365-filtering-correlation-id: 512cb548-c7e2-4a24-4c91-08dc1be8e152
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OaJG2wvMn9z8ErHCICKAiHf1/OwlGswzaqt7dmMMFztYAHIh0XpJEFqSf1fxp1oapWq9/AjUTuZLABZzqhyHlI0rcY9IbgivlVpd2QmeGZoDlZTRsKoLmI5Wenga4xmMOg9dpw0/FXezkKH/nxJTPePQPcQO741XKnec7hgk/HSTId/XXDR31Yqaim8fH2dwH+2305ftqPkcpyqhMBpJnvmtSnXPUiqBUPXZaLX2njJxo2KeKGojSvlddA9g3vlj2QxW8AarT69y7woLoCBY//pt7v2/MnET6pVDSl2ZEb3hjcI/5peunuhzYmPGtJgkirUtnwk3l/bcjuh64mt1O7yWcx0ysJSjBiyrgWrPryvE1Px7cCnsnk4FbA5fh9aQpFjx9Xqg87GSw7I58g/t+gS+aMBau3qfJR+3y6KfHuhumaJ3knz9si3ZvZaQjt2wqCCB0gP2zatTF9G2Ttz1BzKP2W/LXC2GcIHIaPWM8eBWiIcTCNrESRYolaib/ioh2dB/Ux4NHFA3PkOkRnGkVIqjCDL44zH2jb2Jl38NgDKi+9/sEvpywBfCcW3Ajm5jxXDhzJxuQ4oOrkW9i9ehM9cjIV725KjZ+aWbGgObK2E=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(39860400002)(366004)(376002)(136003)(396003)(230922051799003)(1800799012)(186009)(451199024)(64100799003)(66899024)(122000001)(41300700001)(36756003)(86362001)(82960400001)(38100700002)(83380400001)(91956017)(8676002)(478600001)(966005)(71200400001)(6506007)(8936002)(316002)(4326008)(66556008)(64756008)(6916009)(76116006)(66574015)(6486002)(66946007)(26005)(66446008)(66476007)(5660300002)(2906002)(6512007)(2616005)(38070700009);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZU5VNTNSRjNXNm9sWEswVytLa3FKczdJd3BZY0drb2poeUJtNEVDL1pQYzR0?=
 =?utf-8?B?aGlMUGdablpSZkNyY1hSS2l2S1huYzVmVDVta3BKSUttQ2VNVkd2Sm9qdjV5?=
 =?utf-8?B?c0krKytvUTJJRzFRZ3JERUw3RjNuUFNhWXd6TVVhZVdEa2dQaFYzZ3NPUC8x?=
 =?utf-8?B?NkZqM1AvbW5IME0yazhQR2NpemZMNnczeUI4b3d2aTZpVTloeVdVR0t6WGVa?=
 =?utf-8?B?cVE2M1BLTzFMSGcxSEtmNXZmSGNmYU1ONXI2dFF3S3ByeUFGTFhia3MzKzdQ?=
 =?utf-8?B?VjM2VWRIMHJsL3BoWHR5VjBSSkZvbnJLUFZXNUZjMkF6U0gxWFRrU2FmdFgz?=
 =?utf-8?B?cjJwaEc4SGZCL1gxNFB6eFM4K0VnMjBhSHZQS1NVYTlXaVcwb01FZFdnbG5P?=
 =?utf-8?B?OXhmK1UzYkJoRTYrc2w4Qzc1NCtVQzhKMk5XVTJYVTZYNUFGQndzcFRucjdH?=
 =?utf-8?B?ajQ2eW4weGFsUmc4WlY2QWhrcXpIZEJ4bUEyMkU2T212SWd3QVd0MmIvTXVz?=
 =?utf-8?B?UldqaDVmRGJRWmdNSkMwRmRXRnl5TVJ2Nkk5dml4S0VSMjd2bWczcHZkOHdo?=
 =?utf-8?B?ektweEtoK3hrblUrKzdvMXFHYi9Wazl4TG5NOE5jSmlNVTdpajFqSUJMUCtR?=
 =?utf-8?B?dzNlNFZFOHFrRFJnMThmWkY3MzNZdVJUMTVRaG1meHV3d01FSEJDRXk2ZGU1?=
 =?utf-8?B?dGdCcWdOemN3NlhMNjB6bXdRTS9tb1hrMm94RnltS2ZuWHQwZ2RHL0NMN2hr?=
 =?utf-8?B?d0J5Qmc2aFRKZW5MSEVwVUd1Zm8rK3lxa2Zhc0RwL2ZMNlJNUlVRcTdsbDZa?=
 =?utf-8?B?WThpVUVSaTIrOFNLVFpTdm43NVZCOGJnY1hMMFcvbkVzWE9KNWtYNjZIK0pM?=
 =?utf-8?B?R1BNbWt3dE9KT0dzZ2xiYVFTQXQ1S2NBcXZ5OUxrdFVvenBCY0xWSjZxQmFP?=
 =?utf-8?B?aktjU0EwVGNQUGI0bGYzcllScGMreXVXK3hVcm0wUU9iRWxyV0VFbEhSQ25v?=
 =?utf-8?B?bFJmSlNhTUowYUp5bjh0d05IY0VmdFBvU0kwR1drc0hLRUlkRG1Mb2s4WS9H?=
 =?utf-8?B?NEQ0aC93Snc4emQrakdrSitnTFB0dXlBVFlJTU1GN3BSa2pGMURqc012T1RI?=
 =?utf-8?B?OTlEa29WVDBCcUd6eCt1a1VPcVFPbEVlSWdlWGhBbTNUZm43bHMrbkhVSzBY?=
 =?utf-8?B?aGFoR1g0bzU0cXZoM2hVMndZSWRDVmgycEtkYmp2VitMdkJqSWxyZFYrSkZn?=
 =?utf-8?B?ZExWMkdsQjNMVnVPdS9kemMxREh0MGFQLzdEaU9NN0dxOEJpdlpwbkRYSm16?=
 =?utf-8?B?Z1BDSHk5MHRWZ2NHS3NZWlhBL0gwdjlsWHVlUmNCVUcxZVJLNFlTWmxYZXZO?=
 =?utf-8?B?eWhQVDBzNUdDTmpDRHJMb3pqd3RmMGh6SkRyeVlCK3FBdGc2QkUvSjB4aHV0?=
 =?utf-8?B?Z25JbkxyQlVBeHFFUmttTnRINXVHaERIeEd1c2FuekhBMU8rQlRIWmlPQTd5?=
 =?utf-8?B?VXM2S2ViRUJQdEZxTWFMRjVVRGgzMUx6NVlVditUM09PNFQwTTlnL2RESWhL?=
 =?utf-8?B?SEhrTWFLcmVqVG9RYWZNeGE5SDhqay93QmQ4TnZ2aVd5SXBuRWNXZ3phUXdS?=
 =?utf-8?B?T2ZJNi9aSGZFRmNDS1NxWHdybW9sOEhBV2dnMWF3c0dDV3poUkxTcEpQWG9P?=
 =?utf-8?B?alVEMTlnZkJrdVBreTJSRlNGdHlnbS8xQW5BZ0RnUFRwb29jRG9WbWU0dVBI?=
 =?utf-8?B?bDU0cmtFU2Y5NUVacGZxSEc5Wm9HUm9PbTVnWnBGTjJuZ202Z1ErS1kzSWpp?=
 =?utf-8?B?ZlFBRU41eSt5MVBkWnEvY2ZIWDVMWnhuRUZoVjFtM1ZoUS9YY3lBNHVlUEZL?=
 =?utf-8?B?Q1ZVWklWRXRaQXVTQWlEZWhWN1Z4SDlnQysxdWFnTUJNZDBmYXExc2V3d1ph?=
 =?utf-8?B?VGlMMnQzbEZobVdHUmIrQnpncnNJMVR5b25GcTk2MHJDMHFQV3h1VlluZ085?=
 =?utf-8?B?QXRBRU94SGZXTDFNaTFVQkZtd3EvTHFkclBJdTE5azltS29PbGpTRmJMeEtr?=
 =?utf-8?B?azFTUkpndy9ibjRXbFB2UitmMXRvY3VnU1hvSG5uL2d3SzlMemNINzBoNkhL?=
 =?utf-8?B?cXkrN3BwL240NTAzZFBWWEFQZi9iUEZ6dW9yWkpKakVCWmdCRVVQQ09mLzlw?=
 =?utf-8?B?SVE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <8F55C96A730468449087BB6C555BE8DC@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 512cb548-c7e2-4a24-4c91-08dc1be8e152
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2024 07:57:00.6328 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YIrk/cZ849dHPo0FzD1vwEsGEr92J8Rq4qESHYINb32zTFLqbsZOvEhSh1KNcsi9HwHNVf5elrfTgcDoNEH0eadzP0Zm4qFwyiDx+ENUV68=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5387
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDI0LTAxLTIzIGF0IDA5OjQxICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFR1ZSwgSmFuIDIzLCAyMDI0IGF0IDA5OjExOjAzQU0gKzAyMDAsIEpvdW5pIEjDtmdh
bmRlciB3cm90ZToNCj4gPiBXZSB3YW50IHRvIHJlcXVlc3QgZnVsbCBtb2Rlc2V0IGluIGluaXRp
YWwgZmFzdCBjaGVjayB0byBmb3JjZSBQU1INCj4gPiBzdGF0ZQ0KPiA+IGNvbXB1dGF0aW9uLiBP
dGhlcndpc2UgUFNSIGlzIG5vdCBlbmFibGVkIG9uIGluaXRpYWwgY29tbWl0IGJ1dCBvbg0KPiA+
IGZpcnN0DQo+ID4gY29tbWl0IHdpdGggbW9kZXNldCBvciBmYXN0c2V0LiBXaXRoIHRoaXMgY2hh
bmdlIEluaXRpYWwgY29tbWl0DQo+ID4gd2lsbCBzdGlsbA0KPiA+IGVuZCB1cCB1c2luZyBmYXN0
c2V0ICh1bmxlc3Mgc29tZXRoaW5nIGVsc2UgcmVxdWlyZXMgZnVsbCBtb2Rlc2V0KQ0KPiA+IGFz
IFBTUg0KPiA+IHBhcmFtZXRlcnMgYXJlIG5vdCBhbnltb3JlIHBhcnQgb2YgaW50ZWxfcGlwZV9j
b25maWdfY29tcGFyZS4NCj4gDQo+IEkgdGhpbmsgSSdkIHByZWZlciB0byBnbyB0aGUgb3Bwb3N0
aWUgZGlyZWN0aW9uIGFuZCB0cnkgdG8gZ2V0IGFsbA0KPiB0aGUgZnVsbCBtb2Rlc2V0IHN0dWZm
IG91dCBmcm9tIHRoZSBpbml0aWFsIGNvbW1pdC4gVGhlIG9ubHkgcmVhc29uDQo+IHRoZSBpbml0
aWFsIGNvbW1pdCB3YXMgaW50cm9kdWNlZCB3YXMgdG8gY29tcHV0ZSB0aGUgcGxhbmUgc3RhdGVz
DQo+IGR1ZSB0byBsYWNrIG9mIHJlYWRvdXQsIGFuZCB0aGVuIGl0IGdvdCBleHRlbmRlZCBkdWUg
dG8gdmFyaW91cyBvdGhlcg0KPiBoYWNrcy4gT3VyIGdvYWwgaXMgdG8gaW5oZXJpdCB0aGUgc3Rh
dGUgZnJvbSB0aGUgQklPUyBzbyBpZGVhbGx5DQo+IHRoZSB3aG9sZSBpbml0aWFsX2NvbW1pdCB0
aGluZyB3b3VsZG4ndCBldmVuIGV4aXN0Lg0KDQpCaW9zIGRvZXNuJ3QgZW5hYmxlIFBTUi4gRG8g
eW91IHRoaW5rIHRoaXMgd291bGQgYmUgYmV0dGVyIGFwcHJvYWNoID86DQoNCmh0dHBzOi8vcGF0
Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC81NzUzNjgvP3Nlcmllcz0xMjkwMjMmcmV2PTEN
Cg0KV2hhdCB3ZSBqdXN0IG5lZWQgaXMgc29tZXRoaW5nIHRyaWdnZXJpbmcgaW50ZWxfcHNyX2Nv
bXB1dGVfY29uZmlnICsNCnBzciBlbmFibGUuIE1heWJlIHRoYXQgY291bGQgYmUgc2VwYXJhdGUg
ZnVuY3Rpb24gZG9pbmcgYm90aCBhbmQgY2FsbA0KdGhhdCBmcm9tIGludGVsX2luaXRpYWxfY29t
bWl0LiBJZi93aGVuIHdlIGdldCByaWQgb2YgdGhhdA0KaW50ZWxfaW5pdGlhbF9jb21taXQ6IHRo
aXMgZnVuY3Rpb24gd291bGQgYmUgY2FsbGVkIGJ5IHRoYXQgbmV3IHRoaW5nLg0KDQpCUiwNCg0K
Sm91bmkgSMO2Z2FuZGVyDQoNCj4gDQo+ID4gDQo+ID4gQ2M6IFN0YW5pc2xhdiBMaXNvdnNraXkg
PHN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29tPg0KPiA+IA0KPiA+IEZpeGVzOiBhNDgwZGQ1
OWZlMjUgKCJkcm0vaTkxNS9kaXNwbGF5OiBObyBuZWVkIGZvciBmdWxsIG1vZGVzZXQNCj4gPiBk
dWUgdG8gcHNyIikNCj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhv
Z2FuZGVyQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHAuY8KgIHwgOCArKysrKysrKw0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDMgLS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5oIHwgMyArKysNCj4gPiDCoDMgZmlsZXMgY2hhbmdlZCwgMTEg
aW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gPiBpbmRleCBhYjQxNWY0MTkyNGQuLjE0Mzk4
MWI5MWU4YiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
LmMNCj4gPiBAQCAtMzMyNiw2ICszMzI2LDE0IEBAIGJvb2wgaW50ZWxfZHBfaW5pdGlhbF9mYXN0
c2V0X2NoZWNrKHN0cnVjdA0KPiA+IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ID4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBmYXN0c2V0ID0gZmFsc2U7DQo+ID4gwqDCoMKgwqDC
oMKgwqDCoH0NCj4gPiDCoA0KPiA+ICvCoMKgwqDCoMKgwqDCoGlmIChDQU5fUFNSKGludGVsX2Rw
KSkgew0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkcm1fZGJnX2ttcygmaTkx
NS0+ZHJtLCAiW0VOQ09ERVI6JWQ6JXNdIEZvcmNpbmcNCj4gPiBmdWxsIG1vZGVzZXQgdG8gY29t
cHV0ZSBQU1Igc3RhdGVcDQo+ID4gK24iLA0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGVuY29kZXItPmJhc2UuYmFzZS5pZCwgZW5jb2Rl
ci0NCj4gPiA+YmFzZS5uYW1lKTsNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
Y3J0Y19zdGF0ZS0+dWFwaS5tb2RlX2NoYW5nZWQgPSB0cnVlOw0KPiA+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBmYXN0c2V0ID0gZmFsc2U7DQo+ID4gK8KgwqDCoMKgwqDCoMKgfQ0K
PiA+ICsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIGZhc3RzZXQ7DQo+ID4gwqB9DQo+ID4g
wqANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+
IGluZGV4IDEwMTBiOGM0MDVkZi4uYjZkYjdkYmZhZjFhIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gQEAgLTE3Myw5ICsxNzMsNiBAQA0K
PiA+IMKgICogaXJyZWxldmFudCBmb3Igbm9ybWFsIG9wZXJhdGlvbi4NCj4gPiDCoCAqLw0KPiA+
IMKgDQo+ID4gLSNkZWZpbmUgQ0FOX1BTUihpbnRlbF9kcCkgKChpbnRlbF9kcCktPnBzci5zaW5r
X3N1cHBvcnQgJiYgXA0KPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCAoaW50ZWxfZHApLT5wc3Iuc291cmNlX3N1cHBvcnQpDQo+ID4gLQ0KPiA+
IMKgI2RlZmluZSBDQU5fUEFORUxfUkVQTEFZKGludGVsX2RwKSAoKGludGVsX2RwKS0NCj4gPiA+
cHNyLnNpbmtfcGFuZWxfcmVwbGF5X3N1cHBvcnQgJiYgXA0KPiA+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKGlu
dGVsX2RwKS0NCj4gPiA+cHNyLnNvdXJjZV9wYW5lbF9yZXBsYXlfc3VwcG9ydCkNCj4gPiDCoA0K
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5o
DQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5oDQo+ID4gaW5k
ZXggY2RlNzgxZGY4NGQ1Li4zZDk5MjBlYmFmYWIgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuaA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmgNCj4gPiBAQCAtMjEsNiArMjEsOSBAQCBzdHJ1Y3Qg
aW50ZWxfZW5jb2RlcjsNCj4gPiDCoHN0cnVjdCBpbnRlbF9wbGFuZTsNCj4gPiDCoHN0cnVjdCBp
bnRlbF9wbGFuZV9zdGF0ZTsNCj4gPiDCoA0KPiA+ICsjZGVmaW5lIENBTl9QU1IoaW50ZWxfZHAp
ICgoaW50ZWxfZHApLT5wc3Iuc2lua19zdXBwb3J0ICYmIFwNCj4gPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKGludGVsX2RwKS0+cHNyLnNvdXJj
ZV9zdXBwb3J0KQ0KPiA+ICsNCj4gPiDCoGJvb2wgaW50ZWxfZW5jb2Rlcl9jYW5fcHNyKHN0cnVj
dCBpbnRlbF9lbmNvZGVyICplbmNvZGVyKTsNCj4gPiDCoHZvaWQgaW50ZWxfcHNyX2luaXRfZHBj
ZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTsNCj4gPiDCoHZvaWQgaW50ZWxfcHNyX3ByZV9w
bGFuZV91cGRhdGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ID4gLS0gDQo+
ID4gMi4zNC4xDQo+IA0KDQo=
