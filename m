Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7D3065EFDB
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Jan 2023 16:20:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C61110E04E;
	Thu,  5 Jan 2023 15:20:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B9A210E0FD
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Jan 2023 15:20:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672932038; x=1704468038;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=NREtHlRsUyaxfevSaZm500FNRY/aFiXwEHiJVYQl1oo=;
 b=laMBjkFuvHClKDxQiwwWT5MVTp4eJCXPMsim3yUiyTxdRAFuyTPvMjFA
 e3r2BNbKXNPCxBVcTDoag8+BdfZgY6bQEDWWra+FRsWZE9IoUePp6iLZC
 dQ6w2wKgwgehrWuvSJwubKXl88xOt5xN6fR7gcTlenDhSr2ROM0Qxk/ms
 jqTwIe1lWEgvg6/cWpp9+OEKaTXnxHYVxiB82aPJaJwwgPY5KNKoND5hw
 6cTjMI3LZCzafNWY6FgHATs7SZht/Ld0BiYF7jLCke6MceQ9w3Z6hHdZv
 atAhJG8fDrS/3XZimzvAiON55IHv5lfRfsYwtMIvwR51ImxT4QsekRht/ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="408481728"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="408481728"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 07:19:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="655614626"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="655614626"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 05 Jan 2023 07:19:47 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 5 Jan 2023 07:19:46 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 5 Jan 2023 07:19:46 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.43) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 5 Jan 2023 07:19:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Lxl/HWbSm7bVUeb7ukhfmpCTMjmuKykB8v82vd32nsA1AhZXmE7A5c24UoshuHzRM6YUM9QrQsxhlhc2T7vbOFKk0lsg0jUutVUUsQfIpuW/LQIyxdldduz+bfd3lkgUM7rxG0zcQO0Uh8KICk8DiFxr4e/roSEkkmVYqJZHCe0s8Dj3psxuCzCbHED9VuimBcnJuLI5ZgrJe3N9RcGkTzY12pJebeIuHeq0vxZ1QGVprqbz1gg3VhnPGPFOfFDqryHxgy6aQ+iu88uTITz07xvdJguLVNV3hCdpL4pMfQHFI/ejU3RHzTmaM1wLkjULRuCVQPRKLRUASKJ8vEU62g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NREtHlRsUyaxfevSaZm500FNRY/aFiXwEHiJVYQl1oo=;
 b=lTR8gK2HrrFBfAiqdfpR05H669A5enNTSnynSe2J3+WiV8XcqB32BMzlt6anA3pGNiXlRsM8U9Zy9c/bblZlvmjt0O6Tnh0JJBZoh6LTXQeBM/Vd/rerdn6z0BSNpF9Lr9/17dwoOlZm+Z9wFUBcf/Va+33KLZb2Zv6IeBK8AEVRrf/fActpyR1Q14qhAtI62PofUR48hvvKshWmmV1eOvc0NOdJnI0JAUCaWdwfJk3wgX7bJiRXR0o7GECL0FjLx70WXjvvsCgI9jU4RgHRzdcKFguBgGzNfaxS60X+Xlym+NPKkLbXC/Hm45G5AC7MSi33R9YdUHn/fohwX0IqnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SA1PR11MB5779.namprd11.prod.outlook.com (2603:10b6:806:232::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Thu, 5 Jan
 2023 15:19:44 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::f0a1:f049:98db:6cb2]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::f0a1:f049:98db:6cb2%3]) with mapi id 15.20.5944.019; Thu, 5 Jan 2023
 15:19:43 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 10/13] drm/i915/dsb: Allow the caller to pass
 in the DSB buffer size
Thread-Index: AQHZEObVJxChJozqe0GVE24KvFxKW66QD/Yw
Date: Thu, 5 Jan 2023 15:19:43 +0000
Message-ID: <PH7PR11MB59811BBBBA74570D23F10BBFF9FA9@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20221216003810.13338-1-ville.syrjala@linux.intel.com>
 <20221216003810.13338-11-ville.syrjala@linux.intel.com>
In-Reply-To: <20221216003810.13338-11-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SA1PR11MB5779:EE_
x-ms-office365-filtering-correlation-id: b932f5dc-7625-408e-42c1-08daef304612
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iB16vKKoczp5MnDccXadF4EZFw7lY5k0Zmud/R+URfqrIdw3wz6ulkWeUg0oMHi++TWZyUe9WaTaDuOCeMz/Yz0WoYvqA6RJKTlq5Gjxr4wJjjY40Mod5ylittZVqkusvZ36F1e/JES6zwC+ErHC+BGK6nYblSpU1wqEzALeoDEd1y0oIMqmcehbhdAl2pvw90rM+lv9pRruvn+mE12OZzWdCcAQgeyDKt47j3xyipfW+jan59ePM9ps18JNxLBGox0sCNrC2oyxWtTWruoTRlOOOJbcGrVWy4KUZr3QdJV1CQIyDN8hTJECU1/F53RHXaeLzK+ODIxTHaC29cLQXLbeoITrf6Hndcwhw146TVh4IOb2uRw75QQ7cLTN7TB31KXvYre4dHVQki3FqWgYtMWqyTeghZAwo6hMlUHfWIeJTCzZT71WTKUKhlsk8k3si+xc4qsYvV6Gi9Ig3e1YaMzx93PKCQSGYz6uEioYb+yludyO6ILWfVtyd67gsS9kvjVMe087AjsfPNwOEDGn9iAUOl+YAEQxRacdXEMEDR7/HKtBSDxd4KDMvlAKSqY0U8eW0e8V537Yq1eW3iccf8SPzN1KI6umm9vOppPgkT5KeEs/O3Oa21NDV1ODSDFHSM1OeObraQNZWSOF/F8MvWW8QhqpaV13156nGPuba0MoFVrJVTBv6KweO+yT8VWgmbD8EUQmJJ7olC76iwmeFw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(376002)(39860400002)(346002)(396003)(136003)(451199015)(83380400001)(66574015)(86362001)(38100700002)(122000001)(5660300002)(38070700005)(8936002)(52536014)(41300700001)(66476007)(26005)(64756008)(7696005)(316002)(55016003)(55236004)(53546011)(186003)(478600001)(8676002)(66446008)(9686003)(66556008)(71200400001)(66946007)(110136005)(2906002)(82960400001)(6506007)(76116006)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Rk9kTUIzTGJtS05TMTdObFRqUUVGRmFGTDRUbFVnTTZaTzUzcEpobStEWkVy?=
 =?utf-8?B?bTUraW5rU08zNnhSNHphdUgwMDZVWnlncUEyMnV3REJrMW52T2I5SUVIaEZK?=
 =?utf-8?B?eEowVmJLZlhVbml0c2NCbVRlR200SW5CTW1yZ2Iwdnl1cUtpb2UxYmZMbkw3?=
 =?utf-8?B?RklQZzhFeVdhekY0bXlIdkVNMktVV0JDcDhLb3pqWndBNnFjeWtTR3kwQVJk?=
 =?utf-8?B?akdyeWxsL1gwczJ1cjh3ZmdkSmZDQm5TSjIyRHhCSEdTcVFBeU1rZ1hvWkZF?=
 =?utf-8?B?MFRLUXAzRTVKVHpvT21NbzBiaVYzVWJYSStWM3FyWjJMU0Q2MlRESFcraFEy?=
 =?utf-8?B?ZExKV2Vtc2RDclRRTWxaWW9kNDVkSXRHQ0VKbENYZGg1cDVRR0NUa00zRStn?=
 =?utf-8?B?YkhhNkh2S2gyaGhGK1hzR0ZmOVRnWVNncFBCV0pXRzBjTWt3UXF5NDZKT0cv?=
 =?utf-8?B?ZnpMQ0pFQlh6TUV1ajRWU1ZMTWJnanpSNm5RQjlrc1czeFlwN0FjRjFmdmN1?=
 =?utf-8?B?VVFNS1JhUXc2azZwMDFnT01mdXQ4TmQrUThQZmQ2M25OakJicldpMWxicGRW?=
 =?utf-8?B?cHUzeW8xVG5aMjkxZUlOVjg1eVJxRzlwaXdEWHo2ZzMxWk45NGdBWncxTFNv?=
 =?utf-8?B?UFJRZXppMkVqVDk2ZVBWYWFXaXFoUTZBa0o3QWRMNFJQanNiZkFjZnNyVzAz?=
 =?utf-8?B?dkl3cGNpZmxFa05SeFVDNVN4cTQ5NHBRbUFWZ1hHcmRrUUREYk11Yk1YWEFR?=
 =?utf-8?B?M1hKOWcvY3JocWd6ZGwzcDQ2UWFJN3pZRjhnb01FTDRKaEpTU3daaVlXN0ow?=
 =?utf-8?B?MDBtd29Obkc1MXYxMWxjYjVhSWtIU1lOUzR4R2Z6WG1tVm10SDNnL1IrTUN2?=
 =?utf-8?B?cTU2bTBGSnNGWmREUmdRNk95ZmZlL3NKRU5mU29vZWFFM0wxQzd1aUg5RHNp?=
 =?utf-8?B?dTBwb3ptMXZmZ1QxdW1Nb1VVUENIVlB0aHErVm44T3pNNDM0R1RRTWRYZjQz?=
 =?utf-8?B?dG00T1ZoaDVDUm9DNFliK3A4bVJ2VHVnUnBKQlEzRHRtZmpSc05PeDUvalVP?=
 =?utf-8?B?SC8wNFp3NzlNb1NWeHlpNExpYVRyQmtzc2ZFREVLTVJadjNLU3I1WlpTOS95?=
 =?utf-8?B?WkRzMHJtZUVRdEdtb2g0bm05ellPSmwrdUFGeUR5bzM5SEhJYjBROTRCbXJC?=
 =?utf-8?B?N2I1dlVNSHFFeE1FSE9hRzNTU2o2S05Sdmdya2VXVzN1WSt2VmZUUWRRVlhX?=
 =?utf-8?B?dzJSZ0xRM284UnhXNjI2VmgzdmtoYkE5a0RqVG1yemh3OXprQW95ZjB0bStv?=
 =?utf-8?B?ZkhndjJjZ0IzQkJtM0MzOXEzdWE4dnZYS3hnVjFIZWtlTGVPWTRWOEd2dVFF?=
 =?utf-8?B?YjRlcWs5MUhQZWlHaFpBS0RrSURwZHZGbDZZVjJBY3JRTDZ1M0hzT21oUkdp?=
 =?utf-8?B?ZEFMbGthYTd2Ky9CZjdJTHZGekxPY29HVTRBYS9CdU82STlPM0lENXJ6U3lS?=
 =?utf-8?B?K1JFUmordXdkYURMT1YxUzhpbCtmaGtKWTZvT3FUanRvU1VneDNPRkIyRWZM?=
 =?utf-8?B?NWNtcjhkN0JWMFpwK1ZjeHhrTGJ4WGVUaHZHeXB4UFdteGROWm10RnNkODJU?=
 =?utf-8?B?RXJPZ24xZ0JhY01WOEZ5eXJEeit1cWtXSmhmbXU3ek1nUnNNNkNGQ2xuTkdr?=
 =?utf-8?B?cjU5TWlINTVlYkJCNUFKZ0VzZHBTZXdMOVV0ZElhUGNpaklJWU9tcjdINDMz?=
 =?utf-8?B?Q0dSZnZwWExqYzlYeXRET3JkQnZDOXQzSENGc0hwNDRuU3NkVGdTa0VTdFln?=
 =?utf-8?B?RndvdHNoR200eDdPd1lDZFJkbUNuMm9raFNtUldRcjRPUHd5SWdxb1NLNlhs?=
 =?utf-8?B?d0taTkxwYngwQTluK3plRXY0RENxWmM3Vlo2SUcxdFFxelN2dDB1NWQrcHZK?=
 =?utf-8?B?b0R6WS9yVmhBTHNrMEFob0NrMXh1L0tSVHZBeHg4ajF5UXNRaHd6OFV1MjFn?=
 =?utf-8?B?V2Z5UFdDa1IvU1gxWHcxOTRNUC9xZ08xdHlXTG5UQjZLZUc1N1VEZXVYL0lq?=
 =?utf-8?B?Zk5IVmtpaFZzOU9jUGx0YkREU1o0TVhxZnNhS29MWlJUemgwc082dkd5MmdY?=
 =?utf-8?Q?NrIXnR8bDZqOx8BmhOfObSIze?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b932f5dc-7625-408e-42c1-08daef304612
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jan 2023 15:19:43.9260 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2vKZ9XD7daNfbzmGlGk7UtrqGLB8PY1wA5fKPk6rsZb2Oec4FTQFC9zr5/6323sUZfg8GgIQCBg0a85ooNNVZQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5779
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 10/13] drm/i915/dsb: Allow the caller to
 pass in the DSB buffer size
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
PiBTeXJqYWxhDQo+IFNlbnQ6IEZyaWRheSwgRGVjZW1iZXIgMTYsIDIwMjIgNjowOCBBTQ0KPiBU
bzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4
XSBbUEFUQ0ggMTAvMTNdIGRybS9pOTE1L2RzYjogQWxsb3cgdGhlIGNhbGxlciB0byBwYXNzIGlu
DQo+IHRoZSBEU0IgYnVmZmVyIHNpemUNCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBUaGUgY2FsbGVyIHNob3VsZCBtb3Jl
IG9yIGxlc3Mga25vdyBob3cgbWFueSBEU0IgY29tbWFuZHMgaXQgd2FudHMgdG8NCj4gZW1pdCBp
bnRvIHRoZSBjb21tYW5kIGJ1ZmZlciwgc28gYWxsb3cgaXQgdG8gc3BlY2lmeSB0aGUgc2l6ZSBv
ZiB0aGUgY29tbWFuZA0KPiBidWZmZXIgcmF0aGVyIHRoYW4gaGF2aW5nIHRoZSBsb3cgbGV2ZWwg
RFNCIGNvZGUgZ3Vlc3MgaXQuDQo+IA0KPiBUZWNobmljYWxseSB3ZSBjYW4gZW1pdCBhcyBtYW55
IGFzIDEzNCsxMDMzIChmb3IgYWRsKyBkZWdhbW1hICsgMTBiaXQNCj4gZ2FtbWEpIHJlZ2lzdGVy
IHdyaXRlcyBidXQgdGhhbmtzIHRvIHRoZSBEU0IgaW5kZXhlZCByZWdpc3RlciB3cml0ZQ0KPiBj
b21tYW5kIHdlIGdldCBzaWduaWZpY2FudCBzcGFjZSBzYXZpbmdzIHNvIHRoZSBjdXJyZW50IHNp
emUgZXN0aW1hdGUgb2YNCj4gOEtpQiAofjEwMjQgRFNCIGNvbW1hbmRzKSBpcyBzdWZmaWNpZW50
IGZvciBub3cuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPg0KDQpMR1RNLg0KUmV2aWV3ZWQtYnk6IEFuaW1lc2ggTWFu
bmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPg0KDQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jIHwgIDIgKy0NCj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMgICB8IDQyICsrKysrKysrKysrKystLS0tLS0tLS0NCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmggICB8ICAzICstDQo+ICAz
IGZpbGVzIGNoYW5nZWQsIDI5IGluc2VydGlvbnMoKyksIDE4IGRlbGV0aW9ucygtKQ0KPiANCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYw0K
PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYw0KPiBpbmRleCA3
NjYwMzM1NzI1MmQuLjhkOTdjMjk5ZTY1NyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfY29sb3IuYw0KPiBAQCAtMTM4MCw3ICsxMzgwLDcgQEAgdm9pZCBpbnRl
bF9jb2xvcl9wcmVwYXJlX2NvbW1pdChzdHJ1Y3QNCj4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19z
dGF0ZSkNCj4gIAkvKiBGSVhNRSBEU0IgaGFzIGlzc3VlcyBsb2FkaW5nIExVVHMsIGRpc2FibGUg
aXQgZm9yIG5vdyAqLw0KPiAgCXJldHVybjsNCj4gDQo+IC0JY3J0Y19zdGF0ZS0+ZHNiID0gaW50
ZWxfZHNiX3ByZXBhcmUoY3J0Yyk7DQo+ICsJY3J0Y19zdGF0ZS0+ZHNiID0gaW50ZWxfZHNiX3By
ZXBhcmUoY3J0YywgMTAyNCk7DQo+ICB9DQo+IA0KPiAgdm9pZCBpbnRlbF9jb2xvcl9jbGVhbnVw
X2NvbW1pdChzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkgZGlmZiAtLWdpdA0K
PiBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+IGluZGV4IDYzNmM1Nzc2N2Y5Ny4u
N2M1OTNlYzg0ZDQxIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RzYi5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHNiLmMNCj4gQEAgLTMwLDIxICszMCwyNCBAQCBzdHJ1Y3QgaW50ZWxfZHNiIHsNCj4gIAlzdHJ1
Y3QgaW50ZWxfY3J0YyAqY3J0YzsNCj4gDQo+ICAJLyoNCj4gLQkgKiBmcmVlX3BvcyB3aWxsIHBv
aW50IHRoZSBmaXJzdCBmcmVlIGVudHJ5IHBvc2l0aW9uDQo+IC0JICogYW5kIGhlbHAgaW4gY2Fs
Y3VsYXRpbmcgdGFpbCBvZiBjb21tYW5kIGJ1ZmZlci4NCj4gKwkgKiBtYXhpbXVtIG51bWJlciBv
ZiBkd29yZHMgdGhlIGJ1ZmZlciB3aWxsIGhvbGQuDQo+ICAJICovDQo+IC0JaW50IGZyZWVfcG9z
Ow0KPiArCXVuc2lnbmVkIGludCBzaXplOw0KPiANCj4gIAkvKg0KPiAtCSAqIGluc19zdGFydF9v
ZmZzZXQgd2lsbCBoZWxwIHRvIHN0b3JlIHN0YXJ0IGFkZHJlc3Mgb2YgdGhlIGRzYg0KPiArCSAq
IGZyZWVfcG9zIHdpbGwgcG9pbnQgdGhlIGZpcnN0IGZyZWUgZHdvcmQgYW5kDQo+ICsJICogaGVs
cCBpbiBjYWxjdWxhdGluZyB0YWlsIG9mIGNvbW1hbmQgYnVmZmVyLg0KPiArCSAqLw0KPiArCXVu
c2lnbmVkIGludCBmcmVlX3BvczsNCj4gKw0KPiArCS8qDQo+ICsJICogaW5zX3N0YXJ0X29mZnNl
dCB3aWxsIGhlbHAgdG8gc3RvcmUgc3RhcnQgZHdvcmQgb2YgdGhlIGRzYg0KPiAgCSAqIGluc3R1
Y3Rpb24gYW5kIGhlbHAgaW4gaWRlbnRpZnlpbmcgdGhlIGJhdGNoIG9mIGF1dG8taW5jcmVtZW50
DQo+ICAJICogcmVnaXN0ZXIuDQo+ICAJICovDQo+IC0JdTMyIGluc19zdGFydF9vZmZzZXQ7DQo+
ICsJdW5zaWduZWQgaW50IGluc19zdGFydF9vZmZzZXQ7DQo+ICB9Ow0KPiANCj4gLSNkZWZpbmUg
RFNCX0JVRl9TSVpFICAgICgyICogUEFHRV9TSVpFKQ0KPiAtDQo+ICAvKioNCj4gICAqIERPQzog
RFNCDQo+ICAgKg0KPiBAQCAtNzYsNyArNzksNyBAQCBzdGF0aWMgYm9vbCBhc3NlcnRfZHNiX2hh
c19yb29tKHN0cnVjdCBpbnRlbF9kc2IgKmRzYikNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOw0KPiANCj4gIAkvKiBlYWNoIGluc3Ry
dWN0aW9uIGlzIDIgZHdvcmRzICovDQo+IC0JcmV0dXJuICFkcm1fV0FSTigmaTkxNS0+ZHJtLCBB
TElHTihkc2ItPmZyZWVfcG9zLCAyKSA+DQo+IERTQl9CVUZfU0laRSAvIDQgLSAyLA0KPiArCXJl
dHVybiAhZHJtX1dBUk4oJmk5MTUtPmRybSwgZHNiLT5mcmVlX3BvcyA+IGRzYi0+c2l6ZSAtIDIs
DQo+ICAJCQkgIkRTQiBidWZmZXIgb3ZlcmZsb3dcbiIpOw0KPiAgfQ0KPiANCj4gQEAgLTE2OCw3
ICsxNzEsNyBAQCB2b2lkIGludGVsX2RzYl9yZWdfd3JpdGUoc3RydWN0IGludGVsX2RzYiAqZHNi
LA0KPiAgCQlpZiAoaW50ZWxfZHNiX3ByZXZfaW5zX2lzX21taW9fd3JpdGUoZHNiLCByZWcpKSB7
DQo+ICAJCQl1MzIgcHJldl92YWwgPSBidWZbZHNiLT5pbnNfc3RhcnRfb2Zmc2V0ICsgMF07DQo+
IA0KPiAtCQkJYnVmW2RzYi0+aW5zX3N0YXJ0X29mZnNldCArIDBdID0gMTsgLyogc2l6ZSAqLw0K
PiArCQkJYnVmW2RzYi0+aW5zX3N0YXJ0X29mZnNldCArIDBdID0gMTsgLyogY291bnQgKi8NCj4g
IAkJCWJ1Zltkc2ItPmluc19zdGFydF9vZmZzZXQgKyAxXSA9DQo+ICAJCQkJKERTQl9PUENPREVf
SU5ERVhFRF9XUklURSA8PA0KPiBEU0JfT1BDT0RFX1NISUZUKSB8DQo+ICAJCQkJaTkxNV9tbWlv
X3JlZ19vZmZzZXQocmVnKTsNCj4gQEAgLTE3OCw3ICsxODEsNyBAQCB2b2lkIGludGVsX2RzYl9y
ZWdfd3JpdGUoc3RydWN0IGludGVsX2RzYiAqZHNiLA0KPiAgCQl9DQo+IA0KPiAgCQlidWZbZHNi
LT5mcmVlX3BvcysrXSA9IHZhbDsNCj4gLQkJLyogVXBkYXRlIHRoZSBzaXplLiAqLw0KPiArCQkv
KiBVcGRhdGUgdGhlIGNvdW50ICovDQo+ICAJCWJ1Zltkc2ItPmluc19zdGFydF9vZmZzZXRdKys7
DQo+IA0KPiAgCQkvKiBpZiBudW1iZXIgb2YgZGF0YSB3b3JkcyBpcyBvZGQsIHRoZW4gdGhlIGxh
c3QgZHdvcmQNCj4gc2hvdWxkIGJlIDAuKi8gQEAgLTI1MCw2ICsyNTMsNyBAQCB2b2lkIGludGVs
X2RzYl9jb21taXQoc3RydWN0DQo+IGludGVsX2RzYiAqZHNiKQ0KPiAgLyoqDQo+ICAgKiBpbnRl
bF9kc2JfcHJlcGFyZSgpIC0gQWxsb2NhdGUsIHBpbiBhbmQgbWFwIHRoZSBEU0IgY29tbWFuZCBi
dWZmZXIuDQo+ICAgKiBAY3J0YzogdGhlIENSVEMNCj4gKyAqIEBtYXhfY21kczogbnVtYmVyIG9m
IGNvbW1hbmRzIHdlIG5lZWQgdG8gZml0IGludG8gY29tbWFuZCBidWZmZXINCj4gICAqDQo+ICAg
KiBUaGlzIGZ1bmN0aW9uIHByZXBhcmUgdGhlIGNvbW1hbmQgYnVmZmVyIHdoaWNoIGlzIHVzZWQg
dG8gc3RvcmUgZHNiDQo+ICAgKiBpbnN0cnVjdGlvbnMgd2l0aCBkYXRhLg0KPiBAQCAtMjU3LDI1
ICsyNjEsMzAgQEAgdm9pZCBpbnRlbF9kc2JfY29tbWl0KHN0cnVjdCBpbnRlbF9kc2IgKmRzYikN
Cj4gICAqIFJldHVybnM6DQo+ICAgKiBEU0IgY29udGV4dCwgTlVMTCBvbiBmYWlsdXJlDQo+ICAg
Ki8NCj4gLXN0cnVjdCBpbnRlbF9kc2IgKmludGVsX2RzYl9wcmVwYXJlKHN0cnVjdCBpbnRlbF9j
cnRjICpjcnRjKQ0KPiArc3RydWN0IGludGVsX2RzYiAqaW50ZWxfZHNiX3ByZXBhcmUoc3RydWN0
IGludGVsX2NydGMgKmNydGMsDQo+ICsJCQkJICAgIHVuc2lnbmVkIGludCBtYXhfY21kcykNCj4g
IHsNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoY3J0Yy0+YmFz
ZS5kZXYpOw0KPiAtCXN0cnVjdCBpbnRlbF9kc2IgKmRzYjsNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVf
Z2VtX29iamVjdCAqb2JqOw0KPiAtCXN0cnVjdCBpOTE1X3ZtYSAqdm1hOw0KPiAtCXUzMiAqYnVm
Ow0KPiAgCWludGVsX3dha2VyZWZfdCB3YWtlcmVmOw0KPiArCXN0cnVjdCBpbnRlbF9kc2IgKmRz
YjsNCj4gKwlzdHJ1Y3QgaTkxNV92bWEgKnZtYTsNCj4gKwl1bnNpZ25lZCBpbnQgc2l6ZTsNCj4g
Kwl1MzIgKmJ1ZjsNCj4gDQo+ICAJaWYgKCFIQVNfRFNCKGk5MTUpKQ0KPiAgCQlyZXR1cm4gTlVM
TDsNCj4gDQo+IC0JZHNiID0ga21hbGxvYyhzaXplb2YoKmRzYiksIEdGUF9LRVJORUwpOw0KPiAr
CWRzYiA9IGt6YWxsb2Moc2l6ZW9mKCpkc2IpLCBHRlBfS0VSTkVMKTsNCj4gIAlpZiAoIWRzYikN
Cj4gIAkJZ290byBvdXQ7DQo+IA0KPiAgCXdha2VyZWYgPSBpbnRlbF9ydW50aW1lX3BtX2dldCgm
aTkxNS0+cnVudGltZV9wbSk7DQo+IA0KPiAtCW9iaiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVf
aW50ZXJuYWwoaTkxNSwgRFNCX0JVRl9TSVpFKTsNCj4gKwkvKiB+MSBxd29yZCBwZXIgaW5zdHJ1
Y3Rpb24sIGZ1bGwgY2FjaGVsaW5lcyAqLw0KPiArCXNpemUgPSBBTElHTihtYXhfY21kcyAqIDgs
IENBQ0hFTElORV9CWVRFUyk7DQo+ICsNCj4gKwlvYmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRl
X2ludGVybmFsKGk5MTUsIFBBR0VfQUxJR04oc2l6ZSkpOw0KPiAgCWlmIChJU19FUlIob2JqKSkN
Cj4gIAkJZ290byBvdXRfcHV0X3JwbTsNCj4gDQo+IEBAIC0yOTcsNiArMzA2LDcgQEAgc3RydWN0
IGludGVsX2RzYiAqaW50ZWxfZHNiX3ByZXBhcmUoc3RydWN0IGludGVsX2NydGMNCj4gKmNydGMp
DQo+ICAJZHNiLT52bWEgPSB2bWE7DQo+ICAJZHNiLT5jcnRjID0gY3J0YzsNCj4gIAlkc2ItPmNt
ZF9idWYgPSBidWY7DQo+ICsJZHNiLT5zaXplID0gc2l6ZSAvIDQ7IC8qIGluIGR3b3JkcyAqLw0K
PiAgCWRzYi0+ZnJlZV9wb3MgPSAwOw0KPiAgCWRzYi0+aW5zX3N0YXJ0X29mZnNldCA9IDA7DQo+
IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2Iu
aA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmgNCj4gaW5kZXgg
MjVkNzc0MDQ5Y2MyLi4wNWMyMjFiNmQwYTQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kc2IuaA0KPiBAQCAtMTMsNyArMTMsOCBAQA0KPiAgc3RydWN0IGludGVs
X2NydGM7DQo+ICBzdHJ1Y3QgaW50ZWxfZHNiOw0KPiANCj4gLXN0cnVjdCBpbnRlbF9kc2IgKmlu
dGVsX2RzYl9wcmVwYXJlKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKTsNCj4gK3N0cnVjdCBpbnRl
bF9kc2IgKmludGVsX2RzYl9wcmVwYXJlKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLA0KPiArCQkJ
CSAgICB1bnNpZ25lZCBpbnQgbWF4X2NtZHMpOw0KPiAgdm9pZCBpbnRlbF9kc2JfY2xlYW51cChz
dHJ1Y3QgaW50ZWxfZHNiICpkc2IpOyAgdm9pZA0KPiBpbnRlbF9kc2JfcmVnX3dyaXRlKHN0cnVj
dCBpbnRlbF9kc2IgKmRzYiwNCj4gIAkJCSBpOTE1X3JlZ190IHJlZywgdTMyIHZhbCk7DQo+IC0t
DQo+IDIuMzcuNA0KDQo=
