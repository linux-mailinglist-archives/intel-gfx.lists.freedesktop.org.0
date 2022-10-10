Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 969645FA186
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Oct 2022 18:03:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3635210E274;
	Mon, 10 Oct 2022 16:03:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53F3610E274
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Oct 2022 16:03:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665417809; x=1696953809;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8xtB6Sea4ulDsmytDFdo0qUFm6XlbxOyL3b+pD990N0=;
 b=HfrjY/2hIpmiQn2sVuwQ7ApiqPmLKnXLuuYuIqn6k68/RIyxR0/I97mZ
 yk8P7j2iCXr4z36F5iq+WGDw/LL5cmvYP/OPktr+WfoBXO+zbdQWsn1Fb
 MK+miMkFif2YHZn7r4plgoJ2QQQ/RF4oKgzQo2KI6xdoNz/pKsYP+k6JN
 DgstwXo/A7EmTbeUBoJewREuGksPQ913JtdmgTaUTYMJLms8IWidXk1oo
 hq8cVgqHZt3Xmz3Vh06n7uyLI3Gu5U4v9cXOw+5momenuCFkBtyehe9KR
 CFZ3sZskCGFKYFke5Feq5Sp37QyYvL0Mf2LsQLq7U4s3EVsDg2PvZJXZu w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="287503220"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; d="scan'208";a="287503220"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 09:03:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="751398769"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; d="scan'208";a="751398769"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga004.jf.intel.com with ESMTP; 10 Oct 2022 09:03:28 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 10 Oct 2022 09:03:28 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 10 Oct 2022 09:03:28 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 10 Oct 2022 09:03:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cPHSrfe6slu3MhXJW0CoY1ty3AocRFq6N1Q387nk2cPw30En1ZXFZfP3X2Yzn5usLIjaH5EXJKjD6lDGe8aDshDNQLIuwFfICg5FD6xu93uDPFcsEShCdsYn4YOA8T9eMMb93iam9hIzXmA4EDVv6M0RY/lN7M+wKakaD6DpxS7vZfesyM6x/DjWmyKwLZyGRZvTfMC67xlShaNapDSPJ7dgEDfvc8L3IOwPBFI/3qCgLtVqzAh49tl7GIlUABZj3qgS7Kgty9EShrxctMRBKEfMjXNvi+lZl9MVIEcBZrV5Rn0MpqgZUrybUXy6NAaOUlQaSaKjGEzuwBjCLxaxzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8xtB6Sea4ulDsmytDFdo0qUFm6XlbxOyL3b+pD990N0=;
 b=ViDnLANq/j5Ms3NbKe5MScBql8jvr1JLTW+kTcITOKvFyBJF/RdHoQqzTkgoebKh5gQ/PYeRVq9WbLDBqnacIQS2ljrFfA6l1lriN9rWxNAOn8IHgQJbvrMRdSqOSMVHoXjoXReMyudzY+EZszhZWB3K6GQ4ongh+3cyAh73BnKtnQzyHaYHoKsxI751eQtkH6BFVBBhhzsNaZ/mO5LvuSTIcrrOXwVgeXPovnvmJO9lP1ALkxtzN0y6lLEbitI/1PcC5AKxurOlbunZ81t6moQBB/P6/jDvswlaokuPIzPR+1gWCEPTAk8xg8lv2cx3OP0Xu0x/cnu6NIX6J7Jtzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by BN9PR11MB5244.namprd11.prod.outlook.com (2603:10b6:408:135::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.23; Mon, 10 Oct
 2022 16:03:23 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::4b94:7187:5dcf:24b3]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::4b94:7187:5dcf:24b3%7]) with mapi id 15.20.5709.015; Mon, 10 Oct 2022
 16:03:23 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 2/2] drm/i915/pps: Enable 2nd pps for dual EDP scenario
Thread-Index: AQHY0pmB5YPiU1Khy06n19KUxs/RGq395k8AgAn3vuA=
Date: Mon, 10 Oct 2022 16:03:23 +0000
Message-ID: <PH7PR11MB5981F698EC392653D5018963F9209@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20220927174518.30230-1-animesh.manna@intel.com>
 <20220927174518.30230-2-animesh.manna@intel.com> <87edvouizb.fsf@intel.com>
In-Reply-To: <87edvouizb.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|BN9PR11MB5244:EE_
x-ms-office365-filtering-correlation-id: 01758a0e-7f8b-45b1-4deb-08daaad8f564
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MFnxA75PbkLo8IoU79e7KFKjjlEzOVChn3PKX3LLq8kOyAqi+QR87wVq0pl1zglZV8JMmCsXdURfg9s8gaSiY3aGqFR9gpaUrjnXq19X/0POoNGsODk2XT+C0Et+fqF/Xod4oUDh7rAzA0BcwPy7E3kDd3T5QgpvQT3K7ejJqiTGDkIWg4cNe66AEPolmiGCBnUvuXL49sIJrjXlL3z+EHQIj0Q2GKRb8AhBPKI1Nw+zlsKJmUYfXRers+c22mjuqPC/qfdWlK2WW++4RK0DT2283cEXryPy2H8/zSzZTIh59qqnnWfcvRg2XMIOed6i6JHDWsFVhOKbtPRpA1TtOHEg+ZejSu6zkU7PPph0IPHYTp483GU1YJZDQkTxuGKCrCj6ocSY7aeB9K3HW+e7o0I7awDp0Xes6FJD9tSlfwtpNZXueHXQ5/st2LFpnyIUot1AjRxVoFn+HdaCHEPtZ3vc5j+pW63P/H0VFdjQbJxW0vKIb0FD97hH36extR6NPGXfYlxq16rGXWvsLxtOr6vVoDEvKKHJemnO8tliUadx+uC0iD4fGd2IHllpKb0rZ3aFWLDE/5iEmXT53kLZ1prM7bGJJ03Q+4/i3ZVYiNlkcO3VBnM58iI7sDfEpjkEEAWgKL3ZearEdBApxGIZRdO7MMwtDsH9KG114BqecEmPc3UTen7WsFuj0J8+Ci7AdF4SyOttksocCHsobJPaeDPQgh+vGM+NqdM3dyIstN8FpLgWbi1Nr2PcC9LD+Bxm2/fblNdiwS/Qqc31wGTz9w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(366004)(136003)(39860400002)(346002)(396003)(451199015)(86362001)(38100700002)(2906002)(64756008)(83380400001)(186003)(55016003)(38070700005)(122000001)(82960400001)(52536014)(54906003)(66946007)(316002)(76116006)(66476007)(41300700001)(66446008)(4326008)(71200400001)(7696005)(5660300002)(9686003)(8676002)(6506007)(110136005)(53546011)(66556008)(8936002)(478600001)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?a25PNWdSaldQNE50TkNGSUZOS0dleEJNSVppMVY2MjlNbUM1RHpvTHc0bGVN?=
 =?utf-8?B?TmlDZ3pjNWNoblhxVnZBWG1pYlFab0FDL0FvUUVORjNHdlp5NElBK0JTdy9N?=
 =?utf-8?B?QTJKa3BPc0NhY1FEMVFRQnZ1Q1UweFJRMVpRWThFbk9YcHZiSHZQR2FMTVpU?=
 =?utf-8?B?SjEvYWpLY0FWb2xWYzlKK3g4bmtMcXZCQkdaemErcVAzZzFkaGs5blQ5d09Y?=
 =?utf-8?B?THk1Q3lMa2s2cktOT2NMTit6TUc1MFJEazRRbEJocFVpZ3ZOQlI2QUlIT3VJ?=
 =?utf-8?B?eTFtcWlZcXJlS1BlNWZ6RldTb2UwOVUrUkEyZVBtaHBVZUJnd0RmUzY5U25q?=
 =?utf-8?B?eG5IM3FOeDdRYU9JNFcvcWcvQW5uS3pzVndhTkF0SWFMZ2NZaWk0dm1HMWxr?=
 =?utf-8?B?OXo5TVM3SkY5VGRDN1lzWXV1eGRZdEFBcHhsSUhvTnRBV0hwWHkvSXcvL0w3?=
 =?utf-8?B?dVZ3MERsWUdjTkovWUhWWms4VkxuaFZnd25WUUl2QVE0R0s2VEhBelJYWWFx?=
 =?utf-8?B?cEZ1VHV0cFNialNCUUVZRlFQS3RRUEJaR2JhanRabGtqS1lKQmJuQzVCSjlq?=
 =?utf-8?B?UVozTWoxdlRWb3ZjdDkrejROQ1lzVkJrVG0xalZUZjBFbm5WaFAzd2FydXVy?=
 =?utf-8?B?dFNVZGpoaG1IcU4wRzdpU0h0UTVLcmgwNFhMQjZWVTdRWVZwSWpTVEhmOFFq?=
 =?utf-8?B?V3NEY3JBR2grZ2VVdkJsT0pJV2lqV3p4Zi8rRWswSUY3UWo4ZFlmWUQ0YWdy?=
 =?utf-8?B?cUV4cHlTUnkxWUg2QjhNRGdjdWtBaGhITE44V04wL3Q5WHlQeEdKWmMvRUNI?=
 =?utf-8?B?cmU0MWdhUXZYaHM0MkJiazFjdGJyMUNUWWdLVnBGTzZVTUNId3d5RnNmNW5u?=
 =?utf-8?B?YSt4ZUN1TzhOQnZqMGJES3VpRHBDbjBGRnBDYkVvNy81Vy90S3JXN2Y3MFFO?=
 =?utf-8?B?U3E4WmNoR1NrNWlubnBIQ3hPQ01Ycm9BYjVmWHdyRGVlN1RuUWdpNERQYW04?=
 =?utf-8?B?dCt4b1EwUXdIVjNjRm1VclJ5UVRhSkVCT0NmS3pmZlZHNVhwdFVzYWc0ZWNN?=
 =?utf-8?B?Ums1NlNtNXBJSVZlOXRwWC9RTDF5Qmg3cTRKQXpEY0JLc0pxUG50U3FIYW9n?=
 =?utf-8?B?S3JpNTJUQkZGcm5zZ2Q5aDB5aU1STUQwR1M0ejdjZXRDbGZBUHFLQnYxZlYx?=
 =?utf-8?B?UGcxbklZTFFSS1UyZ1NrM01JblV4dDlrOW84NjVTK0VCNlBkN1ZETW8ySS9F?=
 =?utf-8?B?ZHZIZGRaWk5CNTRjaVd6UGJvb0V6Z3RITWpYMGJ3TWswMnQvcElid0hPcmZt?=
 =?utf-8?B?WUp6bHBEZGpVR1U5ZnlFNHZrUmJXUlF3SzFBU253dGErVGxicVl4c3VKVTJ1?=
 =?utf-8?B?c2JDOEFXMk9rMFFhWnpFbC8xaU9kVmJyL1hwd1B4WVlVSVdMWHNVSmoydXd5?=
 =?utf-8?B?S1hHcVNyWmpFMy9LMUlqRklRMkdnMXNwVnlMK0t4bWtSbG41bElWd1VEUUlz?=
 =?utf-8?B?dFNXSUtJQTdoWWhwa2pnMEg0Z0IwMFVFY2lxOHZQTTNtRkRVWURQaTdrTE5R?=
 =?utf-8?B?VUFMWWl3RDlYNmhZWkpDZ1NBOXRkelJGZ2FWc0tGc2ZMSmF0a2YyOXBWVFJM?=
 =?utf-8?B?T2FFaVhoM3F0SXozRHdCdjFKbFRJdUI0UGZKYUhSV2xFdHArUUIraTFUdmVG?=
 =?utf-8?B?SkxPMjU1REFPcWE0b2JYN2RPcVFyVG5xQUlteTVTZ01ibVJVdFo4cU5tUWZG?=
 =?utf-8?B?OWxPNStPSG1ndm5ocXBhWGQ1Q2R1anYzcmduQzR0YzdxL1VxSjl3OHNHWWly?=
 =?utf-8?B?ZjNmVk5jLzA5NjB0MzBxMldrZGhjQ0ZkY1BVdlRickxDMTF2WmRrRWoyOGVq?=
 =?utf-8?B?K2kyZEd2V1AzUzBWeDFMTE9KTzJOdTdVRVArYmtrbnp2T0pnNUxueGIzL2tp?=
 =?utf-8?B?citKMWQ3Mnp0aFgxZUl2UU1kQUZsUmRhd0g2UHBTeENDMVlCV0ZFVDBmdmU4?=
 =?utf-8?B?Yk1SU3ZxaUJlNjZPZ0dkMUo0WWxWdmFYYWtPcGswY3lyendpdDRoL0JndUdw?=
 =?utf-8?B?TlFHRTZKVW05SkpaeDQ5OVVsbXRvdG5YcXJRVkJFZGgrRzNqMWdmU2tveGx0?=
 =?utf-8?B?S3NUSVF2Qm9EYWtTY2twSjNGWnltMzhQWXpWQzFlYmhtNGVMQVFxeVFCYm1S?=
 =?utf-8?Q?EZvcYzhbFO+jvIpxkKNgBv3NZKxti246CnQ0brVAiHGL?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 01758a0e-7f8b-45b1-4deb-08daaad8f564
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2022 16:03:23.2057 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hKxLmnZpk2RAuCrM6ZOmbCTwvRUzvXmog+uAzLEeP4GAKUfcpmG9jI2FGd9VSgn8K5ei5SfE/11NzGMz1zTxWg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5244
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/pps: Enable 2nd pps for dual
 EDP scenario
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTmlrdWxhLCBKYW5pIDxq
YW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIE9jdG9iZXIgNCwgMjAyMiAx
OjE5IFBNDQo+IFRvOiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBp
bnRlbC0NCj4gZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogTWFubmEsIEFuaW1lc2gg
PGFuaW1lc2gubWFubmFAaW50ZWwuY29tPjsgVmlsbGUgU3lyasOkbMOkDQo+IDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT47IFNoYW5rYXIsIFVtYSA8dW1hLnNoYW5rYXJAaW50ZWwuY29t
Pg0KPiBTdWJqZWN0OiBSZTogW1BBVENIIDIvMl0gZHJtL2k5MTUvcHBzOiBFbmFibGUgMm5kIHBw
cyBmb3IgZHVhbCBFRFAgc2NlbmFyaW8NCj4gDQo+IE9uIFR1ZSwgMjcgU2VwIDIwMjIsIEFuaW1l
c2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPiB3cm90ZToNCj4gPiBGcm9tIGRpc3Bs
YXkgZ2VuMTIgb253YXJkcyB0byBzdXBwb3J0IGR1YWwgRURQIHR3byBpbnN0YW5jZXMgb2YgcHBz
IGFkZGVkLg0KPiA+IEN1cnJlbnRseSBiYWNrbGlnaHQgY29udHJvbGxlciBhbmQgcHBzIGluc3Rh
bmNlIGNhbiBiZSBtYXBwZWQgdG9nZXRoZXINCj4gPiBmb3IgYSBzcGVjaWZpYyBwYW5lbC4gRXh0
ZW5kZWQgc3VwcG9ydCBmb3IgZ2VuMTIgZm9yIGR1YWwgRURQIHVzYWdlLg0KPiANCj4gRnJhbmts
eSB0aGUgZHVhbCBQUFMgc3VwcG9ydCB3YXMgdGhlcmUgYWxyZWFkeSwgYnV0IGJyb2tlbi4gVGhp
cyBmaXhlcyBpdCwgYW5kDQo+IGVuYWJsZXMgaXQgZm9yIGRpc3BsYXkgMTIrLg0KPiANCj4gPg0K
PiA+IHYxOiBJbmlpdGFsIHJldmlzaW9uLg0KPiA+IHYyOiBDYWxsZWQgaW50ZWxfYmlvc19wYW5l
bF9pbml0IHcvbyBQTlBJRCBiZWZvcmUgaW50ZWxfcHBzX2luaXQuDQo+ID4gW0phbmldDQo+ID4g
djM6IFNldCBwcHNfaWQgdG8gLTEgZm9yIHBucGlkIHR5cGUgb2YgcGFuZWwgd2hpY2ggd2lsbCBi
ZSB1c2VkIGJ5DQo+ID4gYnh0X3Bvd2VyX3NlcXVlbmNlcl9pZHgoKSB0byBzZXQgMm5kIHBwcyBp
bnN0YW5jZSBhcyBkZWZhdWx0IGZvciAybmQNCj4gPiBFRFAgcGFuZWwuIFtKYW5pXQ0KPiA+DQo+
ID4gQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+ID4gQ2M6IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+ID4gQ2M6IFVtYSBT
aGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogQW5pbWVz
aCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jICAgICAgICAgIHwgMTMgKysrKysrKysr
KystLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuaCAgICAg
ICAgICB8ICAyICstDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV90eXBlcy5oIHwgIDEgKw0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwLmMgICAgICAgICAgICB8IDEwICsrKysrKystLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wcHMuYyAgICAgICAgICAgfCAxMiArKysrKysrKysrKy0NCj4g
PiAgNSBmaWxlcyBjaGFuZ2VkLCAzMSBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQ0KPiA+
DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlv
cy5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0KPiA+
IGluZGV4IDI4YmRiOTM2Y2QxZi4uMjAxNWI2NTkyNzU0IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+ID4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMNCj4gPiBAQCAtMzE3NSwxMyArMzE3NSwx
NCBAQCB2b2lkIGludGVsX2Jpb3NfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZQ0KPiAqaTkx
NSkNCj4gPiAgCWtmcmVlKG9wcm9tX3ZidCk7DQo+ID4gIH0NCj4gPg0KPiA+IC12b2lkIGludGVs
X2Jpb3NfaW5pdF9wYW5lbChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwNCj4gPiArYm9v
bCBpbnRlbF9iaW9zX2luaXRfcGFuZWwoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsDQo+
ID4gIAkJCSAgIHN0cnVjdCBpbnRlbF9wYW5lbCAqcGFuZWwsDQo+ID4gIAkJCSAgIGNvbnN0IHN0
cnVjdCBpbnRlbF9iaW9zX2VuY29kZXJfZGF0YSAqZGV2ZGF0YSwNCj4gPiAgCQkJICAgY29uc3Qg
c3RydWN0IGVkaWQgKmVkaWQpDQo+ID4gIHsNCj4gPiAtCWluaXRfdmJ0X3BhbmVsX2RlZmF1bHRz
KHBhbmVsKTsNCj4gPiArCWJvb2wgcmV0cnkgPSBmYWxzZTsNCj4gPg0KPiA+ICsJaW5pdF92YnRf
cGFuZWxfZGVmYXVsdHMocGFuZWwpOw0KPiA+ICAJcGFuZWwtPnZidC5wYW5lbF90eXBlID0gZ2V0
X3BhbmVsX3R5cGUoaTkxNSwgZGV2ZGF0YSwgZWRpZCk7DQo+ID4NCj4gPiAgCXBhcnNlX3BhbmVs
X29wdGlvbnMoaTkxNSwgcGFuZWwpOw0KPiA+IEBAIC0zMTk1LDYgKzMxOTYsMTQgQEAgdm9pZCBp
bnRlbF9iaW9zX2luaXRfcGFuZWwoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUNCj4gKmk5MTUsDQo+
ID4gIAlwYXJzZV9wc3IoaTkxNSwgcGFuZWwpOw0KPiA+ICAJcGFyc2VfbWlwaV9jb25maWcoaTkx
NSwgcGFuZWwpOw0KPiA+ICAJcGFyc2VfbWlwaV9zZXF1ZW5jZShpOTE1LCBwYW5lbCk7DQo+ID4g
Kw0KPiA+ICsJaWYgKHBhbmVsLT52YnQucGFuZWxfdHlwZSA9PSBQQU5FTF9UWVBFX1BOUElEIHx8
DQo+ID4gKwkgICAgcGFuZWwtPnZidC5wYW5lbF90eXBlID09IFBBTkVMX1RZUEVfRkFMTEJBQ0sp
IHsNCj4gPiArCQlwYW5lbC0+dmJ0LmVkcC5wcHNfaWQgPSAtMTsNCj4gPiArCQlyZXRyeSA9IHRy
dWU7DQo+ID4gKwl9DQo+IA0KPiBXaHkgZG8geW91IGluaXRpYWxpemUgZXZlcnl0aGluZyBhYm92
ZSBpZiB5b3Uga25vdyB0aGUgcGFuZWwgdHlwZSBpcyBnYXJiYWdlIGFuZA0KPiB3ZSBuZWVkIHRv
IHJldHJ5PyBJIGRvbid0IHRoaW5rIHRoZSBhYm92ZSBmdW5jdGlvbnMgd2VyZSBkZXNpZ25lZCB3
aXRoIHRoZSBpZGVhDQo+IHRoZXkgY291bGQgYmUgY2FsbGVkIG11bHRpcGxlIHRpbWVzIGZvciB0
aGUgc2FtZSBwYW5lbC4NCj4gDQo+IFJldHVybiBlYXJseSBpZiB5b3Uga25vdyBpdCdzIHdyb25n
LiBBbHNvLCBkb24ndCByZXR1cm4gdHJ1ZSBpZiB0aGUgRURJRCBpcw0KPiBwcm92aWRlZC4NCg0K
VGhhbmtzIEphbmkgZm9yIHJldmlldywgaGF2ZSBzZW50IHRoZSB2NCBhZnRlciBhZGRyZXNzaW5n
IHRoZSBhYm92ZSBjb21tZW50cy4NCg0KUmVnYXJkcywNCkFuaW1lc2gNCg0KPiANCj4gQlIsDQo+
IEphbmkuDQo+IA0KPiA+ICsNCj4gPiArCXJldHVybiByZXRyeTsNCj4gPiAgfQ0KPiA+DQo+ID4g
IC8qKg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Jpb3MuaA0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmgN
Cj4gPiBpbmRleCBlMzc1NDA1YTc4MjguLmY4ZWYwMjc0ZjNlZSAxMDA2NDQNCj4gPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuaA0KPiA+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5oDQo+ID4gQEAgLTIzMiw3ICsyMzIs
NyBAQCBzdHJ1Y3QgbWlwaV9wcHNfZGF0YSB7ICB9IF9fcGFja2VkOw0KPiA+DQo+ID4gIHZvaWQg
aW50ZWxfYmlvc19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7IC12b2lk
DQo+ID4gaW50ZWxfYmlvc19pbml0X3BhbmVsKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiwNCj4gPiArYm9vbCBpbnRlbF9iaW9zX2luaXRfcGFuZWwoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2LA0KPiA+ICAJCQkgICBzdHJ1Y3QgaW50ZWxfcGFuZWwgKnBhbmVsLA0K
PiA+ICAJCQkgICBjb25zdCBzdHJ1Y3QgaW50ZWxfYmlvc19lbmNvZGVyX2RhdGEgKmRldmRhdGEs
DQo+ID4gIAkJCSAgIGNvbnN0IHN0cnVjdCBlZGlkICplZGlkKTsNCj4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gPiBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+ID4g
aW5kZXggYjc4YjI5OTUxMjQxLi4wZWRjMGI4ZjM3NDMgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiA+IEBA
IC0zMDcsNiArMzA3LDcgQEAgc3RydWN0IGludGVsX3ZidF9wYW5lbF9kYXRhIHsNCj4gPiAgCQlp
bnQgcHJlZW1waGFzaXM7DQo+ID4gIAkJaW50IHZzd2luZzsNCj4gPiAgCQlpbnQgYnBwOw0KPiA+
ICsJCWludCBwcHNfaWQ7DQo+ID4gIAkJc3RydWN0IGVkcF9wb3dlcl9zZXEgcHBzOw0KPiA+ICAJ
CXU4IGRycnNfbXNhX3RpbWluZ19kZWxheTsNCj4gPiAgCQlib29sIGxvd192c3dpbmc7DQo+ID4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gaW5kZXggYzE5
ZTk5ZWUwNmI2Li5hOTRmYzk0N2NkYjMgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gQEAgLTUyMDMsNiArNTIwMyw3IEBAIHN0YXRpYyBib29s
IGludGVsX2VkcF9pbml0X2Nvbm5lY3RvcihzdHJ1Y3QgaW50ZWxfZHANCj4gKmludGVsX2RwLA0K
PiA+ICAJYm9vbCBoYXNfZHBjZDsNCj4gPiAgCWVudW0gcGlwZSBwaXBlID0gSU5WQUxJRF9QSVBF
Ow0KPiA+ICAJc3RydWN0IGVkaWQgKmVkaWQ7DQo+ID4gKwlib29sIHJldHJ5Ow0KPiA+DQo+ID4g
IAlpZiAoIWludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkpDQo+ID4gIAkJcmV0dXJuIHRydWU7DQo+
ID4gQEAgLTUyMjIsNiArNTIyMyw5IEBAIHN0YXRpYyBib29sIGludGVsX2VkcF9pbml0X2Nvbm5l
Y3RvcihzdHJ1Y3QgaW50ZWxfZHANCj4gKmludGVsX2RwLA0KPiA+ICAJCXJldHVybiBmYWxzZTsN
Cj4gPiAgCX0NCj4gPg0KPiA+ICsJcmV0cnkgPSBpbnRlbF9iaW9zX2luaXRfcGFuZWwoZGV2X3By
aXYsICZpbnRlbF9jb25uZWN0b3ItPnBhbmVsLA0KPiA+ICsJCQkJICAgICAgZW5jb2Rlci0+ZGV2
ZGF0YSwgTlVMTCk7DQo+ID4gKw0KPiA+ICAJaW50ZWxfcHBzX2luaXQoaW50ZWxfZHApOw0KPiA+
DQo+ID4gIAkvKiBDYWNoZSBEUENEIGFuZCBFRElEIGZvciBlZHAuICovDQo+ID4gQEAgLTUyNTUs
OSArNTI1OSw5IEBAIHN0YXRpYyBib29sIGludGVsX2VkcF9pbml0X2Nvbm5lY3RvcihzdHJ1Y3Qg
aW50ZWxfZHANCj4gKmludGVsX2RwLA0KPiA+ICAJCWVkaWQgPSBFUlJfUFRSKC1FTk9FTlQpOw0K
PiA+ICAJfQ0KPiA+ICAJaW50ZWxfY29ubmVjdG9yLT5lZGlkID0gZWRpZDsNCj4gPiAtDQo+ID4g
LQlpbnRlbF9iaW9zX2luaXRfcGFuZWwoZGV2X3ByaXYsICZpbnRlbF9jb25uZWN0b3ItPnBhbmVs
LA0KPiA+IC0JCQkgICAgICBlbmNvZGVyLT5kZXZkYXRhLCBJU19FUlIoZWRpZCkgPyBOVUxMIDog
ZWRpZCk7DQo+ID4gKwlpZiAocmV0cnkpDQo+ID4gKwkJaW50ZWxfYmlvc19pbml0X3BhbmVsKGRl
dl9wcml2LCAmaW50ZWxfY29ubmVjdG9yLT5wYW5lbCwNCj4gPiArCQkJCSAgICAgIGVuY29kZXIt
PmRldmRhdGEsIElTX0VSUihlZGlkKSA/IE5VTEwgOg0KPiBlZGlkKTsNCj4gPg0KPiA+ICAJaW50
ZWxfcGFuZWxfYWRkX2VkaWRfZml4ZWRfbW9kZXMoaW50ZWxfY29ubmVjdG9yLA0KPiA+ICAJCQkJ
CSBpbnRlbF9jb25uZWN0b3ItPnBhbmVsLnZidC5kcnJzX3R5cGUNCj4gIT0gRFJSU19UWVBFX05P
TkUsIGRpZmYNCj4gPiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHBzLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHBzLmMNCj4g
PiBpbmRleCBiOTcyZmE2ZWMwMGQuLmRhOThiMTgwNjM5YSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bwcy5jDQo+ID4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wcHMuYw0KPiA+IEBAIC0yMTgsNiArMjE4LDE2IEBA
IGJ4dF9wb3dlcl9zZXF1ZW5jZXJfaWR4KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ID4g
IAkvKiBXZSBzaG91bGQgbmV2ZXIgbGFuZCBoZXJlIHdpdGggcmVndWxhciBEUCBwb3J0cyAqLw0K
PiA+ICAJZHJtX1dBUk5fT04oJmRldl9wcml2LT5kcm0sICFpbnRlbF9kcF9pc19lZHAoaW50ZWxf
ZHApKTsNCj4gPg0KPiA+ICsJaWYgKGNvbm5lY3Rvci0+cGFuZWwudmJ0LmVkcC5wcHNfaWQgPT0g
LTEpIHsNCj4gPiArCQkvKg0KPiA+ICsJCSAqIFVzZSAybmQgUFBTIGluc3RhbmNlIGFzIGRlZmF1
bHQgZm9yIDJuZCBFRFAgcGFuZWwuDQo+ID4gKwkJICovDQo+ID4gKwkJaWYgKGNvbm5lY3Rvci0+
ZW5jb2Rlci0+cG9ydCA9PSBQT1JUX0EpDQo+ID4gKwkJCXJldHVybiAwOw0KPiA+ICsJCWVsc2UN
Cj4gPiArCQkJcmV0dXJuIDE7DQo+ID4gKwl9DQo+ID4gKw0KPiA+ICAJaWYgKCFpbnRlbF9kcC0+
cHBzLnBwc19yZXNldCkNCj4gPiAgCQlyZXR1cm4gYmFja2xpZ2h0X2NvbnRyb2xsZXI7DQo+ID4N
Cj4gPiBAQCAtMTQzMCw3ICsxNDQwLDcgQEAgdm9pZCBpbnRlbF9wcHNfaW5pdChzdHJ1Y3QgaW50
ZWxfZHAgKmludGVsX2RwKQ0KPiA+ICAJaW50ZWxfZHAtPnBwcy5pbml0aWFsaXppbmcgPSB0cnVl
Ow0KPiA+ICAJSU5JVF9ERUxBWUVEX1dPUksoJmludGVsX2RwLT5wcHMucGFuZWxfdmRkX3dvcmss
DQo+ID4gZWRwX3BhbmVsX3ZkZF93b3JrKTsNCj4gPg0KPiA+IC0JaWYgKElTX0dFTUlOSUxBS0Uo
aTkxNSkgfHwgSVNfQlJPWFRPTihpOTE1KSkNCj4gPiArCWlmIChJU19HRU1JTklMQUtFKGk5MTUp
IHx8IElTX0JST1hUT04oaTkxNSkgfHwgRElTUExBWV9WRVIoaTkxNSkgPj0NCj4gPiArMTIpDQo+
ID4gIAkJaW50ZWxfZHAtPmdldF9wcHNfaWR4ID0gYnh0X3Bvd2VyX3NlcXVlbmNlcl9pZHg7DQo+
ID4gIAllbHNlIGlmIChJU19WQUxMRVlWSUVXKGk5MTUpIHx8IElTX0NIRVJSWVZJRVcoaTkxNSkp
DQo+ID4gIAkJaW50ZWxfZHAtPmdldF9wcHNfaWR4ID0gdmx2X3Bvd2VyX3NlcXVlbmNlcl9waXBl
Ow0KPiANCj4gLS0NCj4gSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENl
bnRlcg0K
