Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 940484AE513
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 23:55:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D24F410E1E6;
	Tue,  8 Feb 2022 22:55:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16C4B10E1E6
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Feb 2022 22:55:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644360930; x=1675896930;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=dvWSCztKszR9IDTUuUVCF0gvRsm/FfGkGcBf0jxyHWw=;
 b=X5rjPyH0LyPhDgs5RUtr2VP3OwVe2uzSQbhwbdmVIeXAtTPAJLKOCNnt
 loRPtztqjvGtjoxV9JaC2sm9qpPuAA0pK/fNAMl110T3+GqZlUMp6q/yJ
 btjzT+fb+7KDnuWl75Jqd2JgNCJw8f+ITWI/zzTJWHUCPTVp6aX2dbyP/
 r1gbX1iJ2MPK947RDDrgxGJKw5g6aztRo7ltxso+95dNKK3SNiH7rt8uV
 1AHrVCMf+rFIaqUBXNkSFmAZUxR9Lmh7/sM3mSzOZkM+VqDLtFrm1Evoz
 P8mkA1IOKby2hjmfupaEJdhntvPOIYjX0KKenexk5O3lFCxiSpThGg7ts w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10252"; a="249018324"
X-IronPort-AV: E=Sophos;i="5.88,354,1635231600"; d="scan'208";a="249018324"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 14:55:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,354,1635231600"; d="scan'208";a="773281357"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP; 08 Feb 2022 14:55:09 -0800
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 8 Feb 2022 14:55:09 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 8 Feb 2022 14:55:09 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 8 Feb 2022 14:55:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nh8uFOCsEcXTQTX5FE6AsVNB0cxANjz7Cf2l9X30t7oWz8bcPw1wQ9Q027OaAQBdoQwe8EPbaZ474zbGX/FEUF95DdqTq8CzHb6O/l3QRAKrV6fnRdvLPEE+XeFo6uDybm50dDOQSttijBWZtJ/VOjpGIqN8piQW+t4vjN1sjxh77VJuc5OSreFnN2xjXw4xRGiVmGeYreUrxIGNYAF73mz6SWIMjtwboDGu81wA2pAE1QhKgBgavIf/ZSB7cmCZS0a9E8WJu/gJ+cBOhL7wuAwMxptv099Ue6IcGVwRMAPuzBBkhDy3Rn8wOtIhEe8HK2WJRJ6nXpi1WPEinBfK1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dvWSCztKszR9IDTUuUVCF0gvRsm/FfGkGcBf0jxyHWw=;
 b=dU9fEJIH/cQv0LMlLygRQQwP388L2HcsmBC/5O7koAWjnSNVA7Qbo+eMhE4Mal8tD3JL4MlVrfZk9hdcaLoE5Hd6P+HYg/pWG9Uq7+K1jfE0UeU8Oa/lL6hW9FqFkn57q3JPFx2iv7jyPRC8mQ7uyvyO9a0My03Tuj0NaDkw8CPaHFfnXfYPx7b7+Wv13tTMzp1E8/XEgGCww0TmYu0fymDP57QGO0amimg13ith5LTiflH4EII3NhzTYV5HUGODF+RqOwwVZc0Y1paemJP1k8kfTAOvbsA3S75f3AVbqrWNi46S7vkyMsLK35FcrfzIGoyaAyYj6iLbj6bro0msvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from BYAPR11MB3784.namprd11.prod.outlook.com (2603:10b6:a03:fe::10)
 by DM6PR11MB3548.namprd11.prod.outlook.com (2603:10b6:5:143::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.12; Tue, 8 Feb
 2022 22:55:07 +0000
Received: from BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::a048:b2cb:5446:6b13]) by BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::a048:b2cb:5446:6b13%7]) with mapi id 15.20.4951.019; Tue, 8 Feb 2022
 22:55:07 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Brost, Matthew" <matthew.brost@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v5 06/10] drm/i915/guc: Update GuC's
 log-buffer-state access for error capture.
Thread-Index: AQHYEqH5/+h2jkBMckGW0JGoCGdjO6yDwjUAgAZf6ICAACwmAIAACt4A
Date: Tue, 8 Feb 2022 22:55:07 +0000
Message-ID: <f3cdc0a3a56eb452216b74bf0a12b112896b47f7.camel@intel.com>
References: <20220126104822.3653079-1-alan.previn.teres.alexis@intel.com>
 <20220126104822.3653079-7-alan.previn.teres.alexis@intel.com>
 <20220204181924.GA18242@jons-linux-dev-box>
 <86faa4f1dd88a52b0ddf13a1e6804d01732b14ea.camel@intel.com>
 <20220208221814.GA24152@jons-linux-dev-box>
In-Reply-To: <20220208221814.GA24152@jons-linux-dev-box>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 83ce206f-4d2e-4c2c-4b38-08d9eb560d72
x-ms-traffictypediagnostic: DM6PR11MB3548:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <DM6PR11MB35487DB900EE441EC343F2ED8A2D9@DM6PR11MB3548.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XEnWQ3Umes1BNxBN1H10b2+7pAunfkidti6Xw+dvL4ZuzE086ckMp/+1OZB0H5i3yUQ5qnQz66OlCAOIwhTU3C90F/whw6G3d8Rp98Bfseraw0gciXYCT1pF0qFdiHtmqqghGOpBMktgeDnoC02EkoCkWAQkEnO6pXiWaTIG1Mi6rVSb2I9YKss3fH2ZlZlE4EfK0a/uJNLmj5OMKPqLaKUslhE6gNRKXCtB7jBAfnf9+pDdLsj7Qle8j1iDBmkAh64ozAFSssYssC8SVh/iB55dOImGiWAC9oCcu4rpqyCi1tw0C8Tg+i7ZBLIx4jF6m92jk7zdaYm3mhuzQjvHB+vjoUEirJopNVlVzpg4Iq0UvblFvqsCqLNtkJvHoiWBV7BJ16rN5C5hFe708T2YlprdtKsNiL5Zbnj6123feIs/fP1OJlUL+uMIHUq9Po7rpwhJkI/7gFzkdytCEbtNc1uWaNdrZoH/Ul2wYYsW7Yo9bezYb/sruqeuXRlrLPC1qORgQvUNmR4QeMYzKwEaWu1ak/9+jS+RG8lcjItBk/wovnEYnxJuI1I/f5zE1zHO8lC775c5uXKe0M7HNo8lpLpxiOZHuhXcurKYKOk2rEelQSHR7qHxBwyhSZIuxm7I4ILQkBwH45ZO/YQcQ2j4OSFrEcEkT9yWqk5SkBW1JP8eNuwvDbNPGTMNw6knPoEPh2X9wYsSzpu3/WvKvyhUUg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3784.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(38070700005)(76116006)(5660300002)(186003)(6862004)(37006003)(6636002)(8936002)(66556008)(66446008)(66476007)(15650500001)(6506007)(8676002)(64756008)(86362001)(71200400001)(66946007)(4326008)(6512007)(316002)(26005)(36756003)(6486002)(83380400001)(2616005)(122000001)(508600001)(2906002)(82960400001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dVBGT1pIVkhlSEtOWlUzNGVxcUZEN1pHajFOWEhyOS9Wa1NhMWRlaXNOcFFI?=
 =?utf-8?B?RDZMQTloOU56bVRMUVhqMFVJUjg2THRReFMwUkR5enVPN0x0ZEFTa2VvbWRW?=
 =?utf-8?B?cnEyMmt0OEJkay9DcTRWekdEVmxHcWxVRFUvY2tjNDhINURDaUUwMmd6NmFC?=
 =?utf-8?B?Rkg0NWZPZ1lKd2FGbHMwSm1sR2FtTS9wSVgzUEVoQkJUd1YwYTVZZyt4UW0x?=
 =?utf-8?B?UzNtbkptWDE2YXk3QkRoUmttZkRxT3kzbERkNmd1Q0Q5Tmk5WnRGRVZ2NUd1?=
 =?utf-8?B?dHZ3WG0yTXFJczB1aHorU3NNdGp3cG5hKyttTTlFQlJqandTd1hPR0ZZUnlU?=
 =?utf-8?B?cVBrZDFVMVpLWVhPYWNDY0ljM3l4QmlYajJGVjdreWd4T3I5VDRhSnVJRm5Z?=
 =?utf-8?B?MlhPWWtNNHQwb1FldGdKRFRrekZ0NVY5N2lpdmU5bTBSUEVTR1hUZ0NXRnhW?=
 =?utf-8?B?WWIzdllVL2JvelVLN0s0NTlQL0lDdGtTblBRQlV2cU9UNG9JUmZnMVlTa29l?=
 =?utf-8?B?Q2ZuN01SUlZsdVl6UjQwRjduTURIby95RlcxaDZSS1h5YWUxbmZzaUZWTDNH?=
 =?utf-8?B?VlhPdHpKZmRKWDVuaDJSSDRGLzlRTnFVTzJwNHp5NnRiVUlXVXBCQk03TUQ2?=
 =?utf-8?B?clk1d1VvNDNKcFZjbTdWOFR6Q0dQTUc3eFFIUDZhcUZ0bmtiU0REYXYxZ2Yv?=
 =?utf-8?B?T3VjVHovZFUwT09sMjk2Y1RyMkw3K0RnZXRtTTdoMGxsaVhxQkxwdEZoaFBu?=
 =?utf-8?B?b2tJclIzNWVGY0NYeURKTW5vSFRnQUMvamFPRXZXY2p1VDR1d3A2aXpubFI0?=
 =?utf-8?B?bThIM2NmOHdwWmZFN3dWM1FpT0JvdHUrV2pkM29WV011b1I0QnBsdE9sdWsz?=
 =?utf-8?B?VlR5dU9vV3RWSGY0dmlpV253RC9VTENQNkg0UTREdkF1OHIwdUgvR1VtOHpu?=
 =?utf-8?B?dVl6YkF6Kzc4Vmd6dmxPSjVxS0k0T2c5QmY5TUJ0M0NSdkxjb09JZFRFcFFw?=
 =?utf-8?B?aTJEQ0pMd2Z6dDd0QXpTR2NTR0lrdzVWWWJSY2puVFAxUlZvR3R6RXpTeHpv?=
 =?utf-8?B?Znk3a2NDRTlPSGhJaEU2T2s3SDVUNWlIa3NUbU1ncE5kcHliNTd0SDVGOTJn?=
 =?utf-8?B?T3hvNXpmNE5DV0VNdEZWSFJNWU1xYkV5MHVQNWFab3J6aEl1N3RUS2YxZmYz?=
 =?utf-8?B?VUFMSnZFeFc3TExjbnp4WGNCdzlyM0I1V1hTcjNpU1hrTHVLVlkrMmhNWGVp?=
 =?utf-8?B?U05uRzZQNGNWRGsxSi9UTFJqVEpRaFgzd0hRMVA1R3FLeldidzdmODFDNEI1?=
 =?utf-8?B?SGx1YzRpclRKZlRTanNNRzN1NzZ6U0RzaEZ3M0VaZ1ZvQ1dpWGZkbnVOamJK?=
 =?utf-8?B?VHg1aXN4ZEJtcDFiVjJHemJGTmQ2TFJ1N0IxeWNhK2hKbUl1QjExaWFqMEpQ?=
 =?utf-8?B?NUthcnFkTTM2cWYzWm9OakxhQjF0NlV0WDhnZWRLelF6Ni80SHlaV3pFTUlV?=
 =?utf-8?B?bGdPTkV5SzBvU3VPZXVraUxNanVqeUp1V2dRcW1wNDFEWWRaS2JsZXNuNEo3?=
 =?utf-8?B?aXVXdnNuWGVNbTBiRkxKYUtCRnpIcm9qZnNxclJNbFkrUFRCZ0N6L2VrbGpD?=
 =?utf-8?B?b0o5SWlhSGdnR01WT1E5K3FIME96WHAvWUxsMHNhcEJjcit1eGJwVW1nV1do?=
 =?utf-8?B?NHBBZ2lyUGJwV1grZTh3UEhjUHVXZzlnY2NRRW0wcVpKbzhhb0IxdHhYN3V4?=
 =?utf-8?B?WUc2cndLYUw1dHZYT2MrdndHdHE3bmYrVzNpRVpzOEZBcllkb2JZOHFobW9Q?=
 =?utf-8?B?UFcrY1FvZTduaVZwUWlEVE4xeHpoSHRubkhpa21WdUZJaTJMTnZEUEZPelhF?=
 =?utf-8?B?VmJ1ZkJTS0RUY1hma3dPdUczVEMzSiswRnl0T3hJeFAyVElhclI4a0dkb2lh?=
 =?utf-8?B?NEx3b3lydi9pMlFLUEtXYXgzd2hRT29JbVZxZGNES3BxS3VFdjExTlRmRFdP?=
 =?utf-8?B?ZDdsWkgxUWF1V0Vpa1dZaC9UMFlmdkU3QUQwZFRveEpGcDhCMU9QdEs4ZXhM?=
 =?utf-8?B?RHFTY0lPM0VXQXFWaFVPNFAxcFE0MjZBTThIb0MyakpweE0wTVdWZHpQZkYr?=
 =?utf-8?B?QnVRV1dJV3lLemhqbzQ5TXZNbGZud1R1UXpuQlBNY2x5RUdrNC9NVWxvMyti?=
 =?utf-8?B?OHBvSUFscDhmZmFzazFNV2RhMktuQm5KbFdEV1kzUmx6ajdncm96NjduWExl?=
 =?utf-8?B?ME9Vc1A0QUZwOHNKb0R3NG42YVhqMFhyS3lKSzNVNXBoYmFmbjBMUVJkLzA1?=
 =?utf-8?B?M0VGcStLRVRpZWl1WFNiY3p6WWIraldTSXBWcG40cFIyNFROa0FJUT09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <6E301DC067602F4FA58F9068B8F227D7@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3784.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 83ce206f-4d2e-4c2c-4b38-08d9eb560d72
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Feb 2022 22:55:07.4319 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eknMorRVWYKfDLW8Br8FB415t4CayCTeh4ae2QQ3bzgonXHFbphD4Gm9WKMHmqutrnH7Cb2CrlcOFUBhMfA6rJzDYIQGZsTmJgE0LVhFbCIqWyLjj0QDnOcGCrhYpRVR
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3548
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 06/10] drm/i915/guc: Update GuC's
 log-buffer-state access for error capture.
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

DQpPbiBUdWUsIDIwMjItMDItMDggYXQgMTQ6MTggLTA4MDAsIE1hdHRoZXcgQnJvc3Qgd3JvdGU6
DQo+IE9uIFR1ZSwgRmViIDA4LCAyMDIyIGF0IDExOjM4OjEzQU0gLTA4MDAsIFRlcmVzIEFsZXhp
cywgQWxhbiBQcmV2aW4gd3JvdGU6DQo+ID4gSGkgTWF0dCwgdGhhbmsgeW91IGZvciB0YWtpbmcg
dGhlIHRpbWUgdG8gcmV2aWV3IHRoZSBjb2Rlcy4NCj4gPiBBbnN3ZXJpbmcgeW91ciBxdWVzdGlv
biBpbmxpbmUgYmVsb3cuDQo+ID4gDQo+ID4gDQo+ID4gT24gRnJpLCAyMDIyLTAyLTA0IGF0IDEw
OjE5IC0wODAwLCBNYXR0aGV3IEJyb3N0IHdyb3RlOg0KPiA+ID4gT24gV2VkLCBKYW4gMjYsIDIw
MjIgYXQgMDI6NDg6MThBTSAtMDgwMCwgQWxhbiBQcmV2aW4gd3JvdGU6DQo+ID4gPiA+IEd1QyBs
b2cgYnVmZmVyIHJlZ2lvbnMgZm9yIGRlYnVnLWxvZy1ldmVudHMsIGNyYXNoLWR1bXBzIGFuZA0K
PiA+ID4gPiBlcnJvci1zdGF0ZS1jYXB0dXJlIGFyZSBhbGwgYSBzaW5nbGUgYm8gYWxsb2NhdGlv
biB0aGF0IGluY2x1ZGVzDQo+ID4gPiA+IHRoZSBndWNfbG9nX2J1ZmZlcl9zdGF0ZSBzdHJ1Y3R1
cmVzLg0KPiA+ID4gPiANCj4gPiA+ID4gU2luY2UgdGhlIGVycm9yLWNhcHR1cmUgcmVnaW9uIGlz
IGFjY2Vzc2VkIHdpdGggaGlnaCBwcmlvcml0eSBhdCBub24tDQo+ID4gPiA+IGRldGVybWluaXN0
aWMgdGltZXMgKGFzIHBhcnQgb2YgZ3B1IGNvcmVkdW1wKSB3aGlsZSB0aGUgZGVidWctbG9nLWV2
ZW50DQo+ID4gPiA+IHJlZ2lvbiBpcyBwb3B1bGF0ZWQgYW5kIGFjY2Vzc2VkIHdpdGggZGlmZmVy
ZW50IHByaW9yaXRpZXMsIHRpbWluZ3MgYW5kDQo+ID4gPiA+IGNvbnN1bWVycywgbGV0J3Mgc3Bs
aXQgb3V0IHNlcGFyYXRlIGxvY2tzIGZvciBidWZmZXItc3RhdGUgYWNjZXNzZXMNCj4gPiA+ID4g
b2YgZWFjaCByZWdpb24uDQo+ID4gPiA+IA0KPiA+ID4gPiBBbHNvLCBlbnN1cmUgYSBnbG9iYWwg
bWFwcGluZyBpcyBtYWRlIHVwIGZyb250IGZvciB0aGUgZW50aXJlIGJvDQo+ID4gPiA+IHRocm91
Z2hvdXQgR3VDIG9wZXJhdGlvbiBzbyB0aGF0IGR5bmFtaWMgbWFwcGluZyBhbmQgdW5tYXBwaW5n
IGlzbid0DQo+ID4gPiA+IHJlcXVpcmVkIGZvciBlcnJvciBjYXB0dXJlIGxvZyBhY2Nlc3MgaWYg
cmVsYXktbG9nZ2luZyBpc24ndCBydW5uaW5nLg0KPiA+ID4gPiANCj4gPiA+ID4gQWRkaXRpb25h
bGx5LCB3aGlsZSBoZXJlLCBtYWtlIHNvbWUgcmVhZGliaWxpdHkgaW1wcm92ZW1lbnRzOg0KPiA+
ID4gPiAxLiBjaGFuZ2UgcHJldmlvdXMgZnVuY3Rpb24gbmFtZXMgd2l0aCAiY2FwdHVyZV9sb2dz
IiB0bw0KPiA+ID4gPiAgICAiY29weV9kZWJ1Z19sb2dzIiB0byBoZWxwIG1ha2UgdGhlIGRpc3Rp
bmN0aW9uIGNsZWFyZXIuDQo+ID4gPiA+IDIuIFVwZGF0ZSB0aGUgZ3VjIGxvZyByZWdpb24gbWFw
cGluZyBjb21tZW50cyB0byBvcmRlciB0aGVtDQo+ID4gPiA+ICAgIGFjY29yZGluZyB0byB0aGUg
ZW51bSBkZWZpbml0aW9uIGFzIHBlciB0aGUgR3VDIGludGVyZmFjZS4NCj4gPiA+ID4gDQo+ID4g
PiA+IFNpZ25lZC1vZmYtYnk6IEFsYW4gUHJldmluIDxhbGFuLnByZXZpbi50ZXJlcy5hbGV4aXNA
aW50ZWwuY29tPg0KPiA+ID4gPiAtLS0NCj4gPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3VjL2ludGVsX2d1Yy5oICAgICAgICB8ICAgMiArDQo+ID4gPiA+ICAuLi4vZ3B1L2RybS9pOTE1
L2d0L3VjL2ludGVsX2d1Y19jYXB0dXJlLmMgICAgfCAgNDcgKysrKysrDQo+ID4gPiA+ICAuLi4v
Z3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19jYXB0dXJlLmggICAgfCAgIDEgKw0KPiA+ID4g
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2xvZy5jICAgIHwgMTM1ICsr
KysrKysrKysrLS0tLS0tLQ0KPiA+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50
ZWxfZ3VjX2xvZy5oICAgIHwgIDE2ICsrLQ0KPiA+ID4gPiAgNSBmaWxlcyBjaGFuZ2VkLCAxNDEg
aW5zZXJ0aW9ucygrKSwgNjAgZGVsZXRpb25zKC0pDQo+ID4gPiA+IA0KPiA+ID4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmggYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuaA0KPiA+ID4gPiBpbmRleCA0ZTgxOTg1M2VjMmUu
LmJlMWFkN2ZhMmJmOCAxMDA2NDQNCj4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvdWMvaW50ZWxfZ3VjLmgNCj4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
dWMvaW50ZWxfZ3VjLmgNCj4gPiA+ID4gQEAgLTM0LDYgKzM0LDggQEAgc3RydWN0IGludGVsX2d1
YyB7DQo+ID4gPiA+ICAgICBzdHJ1Y3QgaW50ZWxfdWNfZncgZnc7DQo+ID4gPiA+ICAgICAvKiog
QGxvZzogc3ViLXN0cnVjdHVyZSBjb250YWluaW5nIEd1QyBsb2cgcmVsYXRlZCBkYXRhIGFuZCBv
YmplY3RzICovDQo+ID4gPiA+ICAgICBzdHJ1Y3QgaW50ZWxfZ3VjX2xvZyBsb2c7DQo+ID4gPiA+
ICsgICAvKiogQGxvZ19zdGF0ZTogc3RhdGVzIGFuZCBsb2NrcyBmb3IgZWFjaCBzdWJyZWdpb24g
b2YgR3VDJ3MgbG9nIGJ1ZmZlciAqLw0KPiA+ID4gPiArICAgc3RydWN0IGludGVsX2d1Y19sb2df
c3RhdHMgbG9nX3N0YXRlW0dVQ19NQVhfTE9HX0JVRkZFUl07DQo+ID4gPiANCj4gPiA+IFdoeSBt
b3ZlIHRoaXM/IFRoaXMgc3RpbGwgcHJvYmFibHkgc2hvdWxkIGJlIHN1Yi1zdHJ1Y3R1cmUgb2YN
Cj4gPiA+IGludGVsX2d1Y19sb2cuIE1vc3Qgb2YgdGhlIGFjY2VzcyBpcyBmcm9tIGZ1bmN0aW9u
cyB0aGF0IHBhc3MgaW4NCj4gPiA+IGludGVsX2d1Y19sb2csIHRoZW4gcmV0cmlldmUgdGhlIEd1
QyBvYmplY3QsIG9ubHkgdG8gYWNjZXNzIHRoaXMgbmV3DQo+ID4gPiBpbnRlbF9ndWNfbG9nX3N0
YXRzIG9iamVjdC4gVGhhdCBsYXllcmluZyBzZWVtcyB3cm9uZywgaWYgdGhlIGFyZ3VtZW50DQo+
ID4gPiB0byBhIGZ1bmN0aW9uIGlzIGludGVsX2d1Y19sb2cgaXQgc2hvdWxkIHJlYWxseSB0cnkg
dG8gYWNjZXNzIG1lbWJlcnMNCj4gPiA+IHdpdGhpbiB0aGF0IG9iamVjdCBvciBiZWxvdy4gT2J2
IHNvbWUgZXhjZXB0aW9ucyBleGlzdCBidXQgaGVyZSBpdCBzZWVtcw0KPiA+ID4gY2xlYXIgdG8g
bWUgdGhpcyBpcyBpbiB0aGUgd3JvbmcgcGxhY2UuDQo+ID4gPiANCj4gPiBTbyB0aGUgcmVhc29u
aW5nIGkgaGFkIHdhcyBiZWNhdXNlIGJlY2F1c2UgaW50ZWxfZ3VjX2xvZyBtb2R1bGUgb25seSBt
YW5hZ2VkDQo+ID4gZ3VjLXJlbGF5LWxvZ2dpbmcgYW5kIGd1Yy1sb2ctZHVtcGluZyBmb3IgbG9n
LWV2ZW50cyBidXQgYWxsb2NhdGVzIHRoZSBidWZmZXINCj4gPiBmb3IgMyBzZXBhcmF0ZSBzdWJy
ZWdpb24vdXNhZ2VzIChpLmUuIGxvZy1ldmVudHMsIGNyYXNoLWR1bXAgYW5kIGVycm9yLWNhcHR1
cmUpLg0KPiA+IFRoYXQgc2FpZCwgSSBkaWQgbm90IHdhbnQgaW50ZWxfZ3VjX2NhcHR1cmUgYW5k
IHJlbGF5LWxvZ2dpbmcgKG9yIGxvZy1kdW1waW5nKQ0KPiA+IHRvIGhhdmUgdG8gY29udGVuZCB3
aXRoIHRoZSBzYW1lIGxvY2sgYmVjYXVzZSB0aGVzZSB0d28gc3VicmVnaW9ucyBhcmUgY29tcGxl
dGVseQ0KPiA+IGluZGVwZW5kYW50IG9mIGVhY2ggb3RoZXIgaW4gdGVybXMgb2Ygd2hlbiB0aGV5
IGFyZSBiZWluZyBhY2Nlc3NlZCBhbmQgd2h5Lg0KPiA+IA0KPiANCj4gQWxsIHRoYXQgaXMgZmlu
ZSwgSSBqdXN0IHRoaW5rIHRoZSAnc3RydWN0IGludGVsX2d1Y19sb2dfc3RhdHMnIHNob3VsZA0K
PiBiZSBzdWItc3Vic3R1cmUgb2Ygc3RydWN0IGludGVsX2d1Y19sb2cuDQo+IA0KPiA+IEhvd2V2
ZXIsIGFmdGVyIHRoZSByZWRlc2lnbiBvZiByZXY1ICh0aGlzIHJldiksIEkgbm93IGJlbGlldmUg
dGhlIGludGVsX2d1Y19jYXB0dXJlDQo+ID4gbW9kdWxlIGRvZXMgbm90IHJlcXVpcmUgYSBsb2Nr
IGJlY2F1c2UgaXRzIG9ubHkgZXZlciBhY2Nlc3NpbmcgaXRzIGxvZw0KPiA+IHN1YnJlZ2lvbiBp
biByZXNwb25zZSB0byB0aGUgY3RiIGhhbmRsZXIgZnVuY3Rpb25zIHRoYXQgcnVuIG91dCBvZiB0
aGUgc2FtZSBxdWV1ZS4NCj4gPiBBcyB3ZSBrbm93IGludGVsX2d1Y19jYXB0dXJlIHJlYWN0cyB0
byBHMkgtZXJyb3ItY2FwdHVyZS1ub3RpZmljYXRpb24gYW5kIEcySC1jb250ZXh0LXJlc2V0DQo+
ID4gKHRoYXQgdHJpY2tsZXMgaW50byBpOTE1X2dwdV9jb3JlZHVtcCkuIEF0IHRoZSBwb2ludCBv
ZiBpOTE1X2Vycm9yX3N0YXRlIGR1bXAsDQo+ID4gaW50ZWxfZ3VjX2NhcHR1cmUgbW9kdWxlIGRv
ZXMgbm90IGFjY2VzcyB0aGUgYnVmZmVyIC0gaXQgbWVyZWx5IGR1bXBzIHRoZSBhbHJlYWR5LXBh
cnNlZA0KPiA+IGFuZCBlbmdpbmUtZHVtcC1ub2RlICh0aGF0IHdhcyBkZXRhY2hlZCBmcm9tIGVy
cm9yLWNhcHR1cmUncyBpbnRlcm5hbCBsaW5rZWQtbGlzdA0KPiA+IGFuZCBhdHRhY2hlZCB0byB0
aGUgZ3B1X2NvcmVkdW1wIHN0cnVjdHVyZSBpbiB0aGUgc2Vjb25kIEcySCBhYm92ZSkuDQo+ID4g
DQo+ID4gQW5kIG9mIGNvdXJzZSwgaW50ZWxfZ3VjX2xvZyBvbmx5IGV2ZXIgYWNjZXNzZXMgdGhl
IGxvZy1ldmVudHMgc3VicmVnaW9uDQo+ID4gYW5kIG5ldmVyIHRoZSBlcnJvci1jYXB0dXJlIHJl
Z2lvbnMuDQo+ID4gDQo+ID4gVGhhdCBzYWlkLCBpIGNvdWxkIHJldmVydCB0aGUgbG9jayBzdHJ1
Y3R1cmUgdG8gdGhlIG9yaWdpbmFsIGFuZCBub3QgaGF2ZQ0KPiA+IGludGVsX2d1Y19jYXB0dXJl
IHVzaW5nIGxvY2tzLiBXaGF0IGRvIHlvdSB0aGluaz8NCj4gPiANCj4gDQo+IEFnYWluIG15IGNv
bW1lbnQgaGFzIG5vdGhpbmcgdG8gZG8gd2l0aCBsb2NraW5nLCBpdCBpcyB3aGVyZSB0aGUNCj4g
c3RydWN0dXJlIGxpdmVzLg0KPiANCj4gDQpJTUhPLCBiYXNlZCBvbiBteSB1bmRlcnN0YW5kaW5n
IG9mIHRoZSBjb2RlcyBhbmQgdGhlIEd1QyBpbnRlcmZhY2UsDQppIHNlZSBpbnRlbF9ndWNfbG9n
IGFuZCBpbnRlbF9ndWNfY2FwdHVyZSBhcyAyIHN1YnN5c3RlbXMgYXQgZXF1YWwgbGV2ZWwNCnVu
ZGVyIHRoZSBpbnRlbF9ndWMgZnJhbWV3b3JrLiBCb3RoIHRoZXNlIHN1YnN5c3RlbXMgaGF2ZSBj
b21wbGV0ZWx5IGluZGVwZW5kZW50DQpmdW5jdGlvbnMgd2l0aCBjb21wbGV0ZWx5IHNlcGFyYXRl
IGlucHV0IHN0cmVhbXMgd2l0aCBjb21wbGV0ZWx5IHNlcGFyYXRlDQpjb250ZW50IGFuZCB1c2Fn
ZS4gVGhleSBkbyBoYXBwZW4gdG8gc2hhcmUgdGhlIHNhbWUgYm8gYnV0IGhhdmUgaW5kZXBlbmRl
bnQNCnJlZ2lvbnMuIFRoYXQgc2FpZCwgSSBiZWxpZXZlIHRoZSBzdGF0cyBhcnJheS1zdHJ1Y3R1
cmUgYW5kIGV2ZW4gdGhlIHZtYQ0KcHRyIHNob3VsZCBnbyBpbnRvIHRoZSBwYXJlbnQgLSBpLmUu
IGludGVsX2d1YywgdGhlIHBhcmVudCBvZiBib3RoIGludGVsX2d1Y19sb2cgYW5kDQppbnRlbF9n
dWNfY2FwdHVyZS4gQWxlcm5hdGl2ZWx5LCBlYWNoIHN1YnN5c3RlbSB0aGF0IGhhcyBpdHMgb3du
IHN0YXRzIHN0cnVjdHVyZS4NCg0KSG93ZXZlciwgd2l0aG91dCB0aGUgbmVlZCBmb3IgdGhlIGxv
Y2tzLCBpIGd1ZXNzIGkgZG9udCBuZWVkIHRvIGNoYW5nZSBhbnl0aGluZw0Kb3RoZXIgdGhhbiBo
YXZlIGludGVsX2d1Y19sb2cgc2tpcCBvdmVyIHRoZSBjYXB0dXJlIHJlZ2lvbiBhbmQgbGV0IGlu
dGVsX2d1Y19jYXB0dXJlDQpkZWFsIHdpdGggaXRzIHJlZ2lvbiBpbmRlcGVuZGFudGx5IHdpdGhv
dXQgc2hhcmluZyBhbnkgbWVtYmVyIHZhcmlhYmxlDQpmcm9tIGludGVsX2d1Y19sb2cuDQoNCkkg
YW0gYWRtaXR0ZWRseSBuZXcgdG8gdGhlIEd1QyBpbmZyYXN0cnVjdHVyZSBzbyBwbGVhc2UgZG8g
bGV0IG1lIGtub3cgaWYgSSBhbSBtaXN0YWtlbg0KYW5kIGlmIGludGVsX2d1Y19jYXB0dXJlIGlz
IHN1cHBvc2VkIHRvIGJlIGEgc3Vic3lzdGVtIG9mIGludGVsX2d1Y19sb2cuDQoNCj4gTWF0dA0K
PiANCj4gPiAuLi5hbGFuDQo+ID4gDQo+ID4gPiBBbm90aGVyIG5pdCwgSSdkIHBlcnNvbmFsbHkg
YnJlYWsgdGhpcyBvdXQgaW50byBtdWx0aXBsZSBwYXRjaGVzLg0KPiA+ID4gDQo+ID4gPiBlLmcu
IDEgdG8gcmVuYW1lIHJlbGF5IGxvZyBmdW5jdGlvbnMsIDEgaW50cm9kdWNpbmcgaW50ZWxfZ3Vj
X2xvZ19zdGF0cw0KPiA+ID4gKyBsb2NrLCBhbmQgMSBhZGRpbmcgaW50ZWxfZ3VjX2NhcHR1cmVf
b3V0cHV0X21pbl9zaXplX2VzdC4gTWF5YmUgSSdtDQo+ID4gPiBtaXNzaW5nIGFub3RoZXIgcGF0
Y2ggb3IgdHdvIGluIHRoZXJlLg0KPiA+ID4gDQo+ID4gPiBOb3QgYSBibG9ja2VyIGJ1dCBpdCBk
b2VzIG1ha2UgcmV2aWV3cyBlYXNpZXIuDQo+ID4gPiANCj4gPiBXaWxsIGRvLg0KPiA+IA0KPiA+
ID4gTWF0dA0KPiA+ID4gDQo+ID4gPiA+ICAgICAvKiogQGN0OiB0aGUgY29tbWFuZCB0cmFuc3Bv
cnQgY29tbXVuaWNhdGlvbiBjaGFubmVsICovDQo+ID4gPiA+ICAgICBzdHJ1Y3QgaW50ZWxfZ3Vj
X2N0IGN0Ow0KPiA+ID4gPiAgICAgLyoqIEBzbHBjOiBzdWItc3RydWN0dXJlIGNvbnRhaW5pbmcg
U0xQQyByZWxhdGVkIGRhdGEgYW5kIG9iamVjdHMgKi8NCj4gPiA+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19jYXB0dXJlLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfY2FwdHVyZS5jDQo+ID4gPiA+IGluZGV4IDcwZDJl
ZTg0MTI4OS4uZTdmOTlkMDUxNjM2IDEwMDY0NA0KPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfY2FwdHVyZS5jDQo+ID4gPiA+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19jYXB0dXJlLmMNCj4gPiA+ID4gQEAgLTY1MSw2
ICs2NTEsNTMgQEAgaW50IGludGVsX2d1Y19jYXB0dXJlX3ByZXBfbGlzdHMoc3RydWN0IGludGVs
X2d1YyAqZ3VjLCBzdHJ1Y3QgZ3VjX2FkcyAqYmxvYiwgdTMNCj4gPiA+ID4gICAgIHJldHVybiBQ
QUdFX0FMSUdOKGFsbG9jX3NpemUpOw0KPiA+ID4gPiAgfQ0KPiA+ID4gPiANCj4gPiA+ID4gMi4y
NS4xDQo+ID4gPiA+IA0KDQo=
