Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C17A57E971D
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Nov 2023 08:41:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA70010E072;
	Mon, 13 Nov 2023 07:41:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7829710E072
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Nov 2023 07:41:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699861306; x=1731397306;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7HHyfT2PiiyeHgxuQH3uqtONkA23yNaiXsGlM1JuCnA=;
 b=BsdkRwV6gGle3iS2NuisXnq4my6gDG7SDhFIrULDMHkPPbruwNahHGUN
 CHSC9aph45RfO/G5WLW+qbXMUoOVXm6wzvEwfZVjDIPhkhtb6kfdwXYh+
 uYvsHBWB+ieMkVH5Xv5rTpLfYAiTaxQEZXeHxYCghy7SA9rcAFa7wNwvR
 hiIOXazQ/fA3S03MrMMMiUaLOfdm0BUtHpC52o/KxJnklPJsh3NP0Mxz/
 JLl1fCJSaWlLsmKE3maXAXBfEoOI8febHzEuFFFYjb8SG1bsN0iulih26
 BQoqlVQV9ZvDO+UG6flar7TfhfOD5orSSfNiHPsABnVo+fREest+abx0s w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10892"; a="394289400"
X-IronPort-AV: E=Sophos;i="6.03,298,1694761200"; d="scan'208";a="394289400"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2023 23:41:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10892"; a="830166960"
X-IronPort-AV: E=Sophos;i="6.03,298,1694761200"; d="scan'208";a="830166960"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Nov 2023 23:41:44 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Sun, 12 Nov 2023 23:41:44 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Sun, 12 Nov 2023 23:41:44 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Sun, 12 Nov 2023 23:41:44 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Sun, 12 Nov 2023 23:41:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IoPavYUan6TC76T9IpZaOC7WY0POTTry5Jcodce1DfdDTkWc8MMUFbA4OOZKkGkr3iqRV7O3NJW4XSH/oehW4f3dSO2kQXIFjTSQU5JXrh8FEpoUKrbeTwiHGQp+E16lAygWsLmnrwZsfWxNei41phTn1j8RfTTDJ6cv1junrX3zaiTuUjQ4W9NJ63LCPntOLbAmy7RFVPQxByH4/uGMoe4ghVZ6jybvxLspRRJmIYJIb7ExrWYHxOyxRN3oxDAs8qfbY7Aj91usgGugOzGgU+R9agxr8N9GjT4iUoOVcbIUTz2dNTKaob74UICQ2kwltjnMDPkwZNPq/taS113Zbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7HHyfT2PiiyeHgxuQH3uqtONkA23yNaiXsGlM1JuCnA=;
 b=QGxiMJEtPIYL6S/mm5czdUFtFtjlBHZNHqZEVNndkt/GdrrIfuudq1NmUDoZt/Rcu7gaRgQ3tZ1rcIqjZI63zrIKwZI4hdGVAbHzRta93yxiji2maE2xAEdpiaEdvyyl6y3Sw9fXQCBbu3Tv7w6tMFeP2DWKjCIoD4y127FHgHxDvjGwHpNpfbPxq2rfzuMeklg0qbskJPW/ZmwIdWIf4y9L3dYP35x8Cxf+yHqDs1upjzGklHLMbXvE2m8dYdTR2SiWeKE+nj2+jGgkKpIf2LuQRftu9sv9VnxE6ltd48UYHkKDoy2cicgunOt05FHnQTmik902IcNR2ON+GeVU9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by MW4PR11MB5889.namprd11.prod.outlook.com (2603:10b6:303:168::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6977.29; Mon, 13 Nov
 2023 07:41:41 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::8b04:7396:7a40:f00d]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::8b04:7396:7a40:f00d%7]) with mapi id 15.20.6977.029; Mon, 13 Nov 2023
 07:41:41 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v4 1/1] drm/i915/xe2lpd: implement WA for underruns while
 enabling FBC
Thread-Index: AQHaFJRScxx7hsxvtUi7+TPFeNekdbB34EQg
Date: Mon, 13 Nov 2023 07:41:41 +0000
Message-ID: <MW4PR11MB70549E19E8D3D1DFB17296B4EFB3A@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20231111114320.87277-1-vinod.govindapillai@intel.com>
 <20231111114320.87277-2-vinod.govindapillai@intel.com>
In-Reply-To: <20231111114320.87277-2-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|MW4PR11MB5889:EE_
x-ms-office365-filtering-correlation-id: aa261c54-7431-40d5-f03e-08dbe41bfa4d
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ixoL0tlkZ8kp83epugVnD/2bK0ot/t9nufbksUvcXFHBR4DZ+dWtcNNl7lZ5EIYV/LMrI0V4cqTa60m+LRux8mM/AhNjpZuyTuuPyytAtqQvkqsSlgkn4wnot0Ci8U9nIliBzkv5jlrr37WfluMDRjZMiczL2daK0LnnSVQallA/MXkwgVxJ06yjJWT0QEnsjSC76NQBwp/9+wwoCaIBvsWR85hyeW4DZ952aZ/CWtu8Ai5qttgTKYkL40uxOdLHVx5nmDZgq+wBE6j1jl5J/r4WhjsW56Lh5X0xB+ktIQPw/bQCGHqK5Z7Avm9CIf4pBrXT2/AnOXN7tPTGRpmfBCtCMcTCDJILhClR9NVzG/7aw6jb6oynE5k2IANdFFUV/1FRRItgZLlZMBs/YLURq2n0cWT5GZ7R7t1rGphrWzC7iVKVjo7JFjtbTjNNr8u15+gjHT93Z8Z5VDmYTwuf5qN2El0XxfzNNLNVo+n1OOeJjJxif1KBqpsliIEE9IJNtniPSLHswidAu2v0ifDVS0rH0sSol0xouyj8+95Wze2dvF7DqC5CDOp28VWx/cMyO5iUTSCDTzgy9v6oo8JLBwlT7T2iPmXLF6lguaJ4c1ScjPiRA5N/PzFn9QCEihuD
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(346002)(136003)(39860400002)(366004)(396003)(230922051799003)(1800799009)(64100799003)(186009)(451199024)(26005)(107886003)(6506007)(7696005)(53546011)(71200400001)(9686003)(83380400001)(5660300002)(4326008)(8676002)(8936002)(52536014)(41300700001)(2906002)(478600001)(316002)(110136005)(76116006)(54906003)(64756008)(66446008)(66476007)(66556008)(66946007)(82960400001)(33656002)(86362001)(38100700002)(122000001)(38070700009)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bXpzZUxJNEUyY2p3MW0xbUJOYWcybFdlQlpQdWV2b3M5akp4NWxZLzl3cWN4?=
 =?utf-8?B?U0czcEVJRk9vRmd1VS9oeEhiRVFJdE5VZ2dRZFRibVFKcGJEYzJnaGZIN1dw?=
 =?utf-8?B?akRmYnhzUTVESy91U0lsci9Bb2tHL0tqSm9QWldrS0ZVTEhRMnNPN2F0LzhJ?=
 =?utf-8?B?VXVicm5qcHo2S1E4RzVGTWU5WFFUNUtyNlpSVjc0a25jTjRMUHloRlBSejhE?=
 =?utf-8?B?aUwwei9Cd0NOcUJVcDNOTm1VbWl5d3RGd2x6MnJBNDlucmNBSnJCcmRTT3g1?=
 =?utf-8?B?UkRlOHo1K3p5Y0hsc29RN3Y5TDR5dTNZUytPMDJ4Z0k0YkY0SDNLTmdjNUtY?=
 =?utf-8?B?NjNWYTVVR0tsVU1GYnFFWUJsQnNkYmxTSWNNalVkbTRZYmZuaStQNmRBbjB0?=
 =?utf-8?B?eXRlaW52djEyeHhCa1F6S1BGclZ1RTdKT29RZWJ6TXkwdndkZzZuam1QNEl1?=
 =?utf-8?B?Ri9sOEtFM0lwVDlkYWM3R1ZxUlRZMHlZemZxak9wSER1eTBGVStuTE5kUXVE?=
 =?utf-8?B?V2hLUk5qcm5paWNSYzUwQjVQYmhBMGZLQWU1YkMxeWFXZWxOT2x3WU9KSGNk?=
 =?utf-8?B?Y2h4RnV1dWphUlE4Um0vakRXQ1NaMjNRN2R2bVNhY1ZsbnMvbWtaOU90blZV?=
 =?utf-8?B?TXV5WEl0MzgvaXJxOE15R0hJdnlYNi9mQUVpOW03VlRvTlp6cnBiM1p5RnRn?=
 =?utf-8?B?VnZLak9zTUZrY0ZycngxcktEV1V0YXFSUVFEYmt3KzJxb0FUb093aTN4cEVI?=
 =?utf-8?B?UFJtK01qakR0Z25KV1JsOW5qWWcrV1NqVmoweVVqM2hxQ21PYng2N1FZWkp4?=
 =?utf-8?B?L20xWFpSL1l2d1pmeVZybFJyQ3UzVEFSZXE2L20xWEZaMUlPMWtxaE95NUZ4?=
 =?utf-8?B?RTZVbVh5Sy9HRVBlUEFuWVlBZHJ4eU5LeUxaVDdyZVhQNEhhSzlweldXTVR1?=
 =?utf-8?B?SUFrTWQzZ2NzQVUrUjhRWThULzJiMmI2TWZwRG83L2x6NmdoTXY5VU5rNUQz?=
 =?utf-8?B?eXhMdGQraXdvV1Vsc2RzRk04WXQ2RVNEZjYwOUFuTXhuTk84UEdaNUMralhq?=
 =?utf-8?B?N2RON1hVOHU1TTdheHNabDhnWVROc1V3azhaNk9oRXVlYVhTYWdEeVp5UHFj?=
 =?utf-8?B?elhWcnNReWNIbjdpSGF5WDVvQWVodGQ4byttaWx2MXdlZ0pGRHhpSWp3TjRK?=
 =?utf-8?B?TXpkUEkrOFhHRU5MckRRYmJWeGl3WEFUckl6WmlVQTFtK2ZxRlhDYWJKKzA5?=
 =?utf-8?B?VHBXNDRjSXY2QjR0am4vZlJoYUxlWWZGM2FYOW9VeTFFN3ZIVXFWU1pKc1Jm?=
 =?utf-8?B?TGV1bEVQTy8xMHRiNkZJTktaQ2ZWRU1XK3dDcWwzNkd1Z0d2eDMvcGwyZVl0?=
 =?utf-8?B?cmhGU2dBS3drdkhoSTVoY2h1R3JWSWRaQ1hqWlpLL20wMGFFNCtNdlUrN29k?=
 =?utf-8?B?c1UxbzFFWjdMYjU3MGR5bTVGNmszakpKZFdZWWxlNmpoMXVLaENPYTFJWE5Z?=
 =?utf-8?B?R2ZZVUpGMVpuQkVJa0ZlRENZb2VlWnRmbHM5cms4VUV3Y0V5WC9uU0JNMkM1?=
 =?utf-8?B?L2xWYTlCbW1xZ0NGMFVYYmM5b0NqTTA0aWVnTVNxS1F4SE5iM3pTbzYrQjAx?=
 =?utf-8?B?ODdHYUk0TFRnbWxXNUVhdWdSbGNXRDlWUlQ3dm9nVTk2YUhrQVBqU3dHSXkr?=
 =?utf-8?B?L2lQcFNpeFJTMHJFaDYycktYRy95WHpLRFdXYStRWkVYdUNxMzRzQ2ZNZ0dx?=
 =?utf-8?B?d2dCb1ZudWJIME9SYVdvKzZxTDA4SUNySEV5N3FlR0RjM1UxTDQwNnFuUHBr?=
 =?utf-8?B?NjVlQWhjdGJIelFEdlZGTEhwVWpDRDN4aXB1dTRWd3pSMTJtTmhBWkVIcTI5?=
 =?utf-8?B?TGlNVVhGb21LQThCMk1DQzRRUG9hcXVVQTJyR21HaGlyQk8vN0crQmQvY1dy?=
 =?utf-8?B?T3ZQM05pS1FiUmtMZnVva1Y3amZUREl2MzBKWFYycGRzUE85TExjZTc0c0xn?=
 =?utf-8?B?azNpdWMrMnBJaENtclVuWnRQY2J1TVlHaERIVzZ1V2FjeXpDRXh6bEZKTWVB?=
 =?utf-8?B?QXFoRGNrNFVrTk4zRDlVSU9ZNjh1aFV4ekMzWDE2R2NJZytlK2IvU3hDVXFL?=
 =?utf-8?Q?dzkh5Y8X3BGCbbUr5K2lSBI50?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aa261c54-7431-40d5-f03e-08dbe41bfa4d
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2023 07:41:41.7177 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: n2Mm91JUsWI2EQ6gulnYcJWlt96T+T8FG5l3GDWSCZDP7MUPrhi1njbJrnb5sNBMOWUHfyVuqvM3fY+rkO8HLA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5889
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 1/1] drm/i915/xe2lpd: implement WA for
 underruns while enabling FBC
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
Cc: "Syrjala, Ville" <ville.syrjala@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBHb3ZpbmRhcGlsbGFpLCBWaW5v
ZCA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+DQo+IFNlbnQ6IFNhdHVyZGF5LCBOb3Zl
bWJlciAxMSwgMjAyMyAxOjQzIFBNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnDQo+IENjOiBHb3ZpbmRhcGlsbGFpLCBWaW5vZCA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRl
bC5jb20+OyBTeXJqYWxhLCBWaWxsZSA8dmlsbGUuc3lyamFsYUBpbnRlbC5jb20+OyBTYWFyaW5l
biwgSmFuaQ0KPiA8amFuaS5zYWFyaW5lbkBpbnRlbC5jb20+OyBMaXNvdnNraXksIFN0YW5pc2xh
diA8c3RhbmlzbGF2Lmxpc292c2tpeUBpbnRlbC5jb20+OyBLYWhvbGEsIE1pa2EgPG1pa2Eua2Fo
b2xhQGludGVsLmNvbT4NCj4gU3ViamVjdDogW1BBVENIIHY0IDEvMV0gZHJtL2k5MTUveGUybHBk
OiBpbXBsZW1lbnQgV0EgZm9yIHVuZGVycnVucyB3aGlsZSBlbmFibGluZyBGQkMNCj4gDQo+IEZJ
Rk8gdW5kZXJydW5zIGFyZSBvYnNlcnZlZCB3aGVuIEZCQyBpcyBlbmFibGVkIG9uIHBsYW5lIDIg
b3IgcGxhbmUgMy4gUmVjb21tZW5kZWQgV0EgaXMgdG8gdXBkYXRlIHRoZSBGQkMgZW5hYmxpbmcN
Cj4gc2VxdWVuY2UuDQo+IFRoZSBwbGFuZSBiaW5kaW5nIHJlZ2lzdGVyIGJpdHMgbmVlZCB0byBi
ZSB1cGRhdGVkIHNlcGFyYXRlbHkgYmVmb3JlIHByb2dyYW1taW5nIHRoZSBGQkMgZW5hYmxlIGJp
dC4NCj4gDQo+IEJzcGVjOiA3NDE1MQ0KPiBSZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eu
a2Fob2xhQGludGVsLmNvbT4gI3YzDQoNClJldmlld2VkLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5r
YWhvbGFAaW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IFZpbm9kIEdvdmluZGFwaWxsYWkg
PHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgfCA4ICsrKysrKystDQo+ICAxIGZpbGUgY2hhbmdl
ZCwgNyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gaW5kZXggYmRlMTJmZTYyMjc1Li5iNzNjZjFjNWJh
MzMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJj
LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiBA
QCAtNjA4LDYgKzYwOCw3IEBAIHN0YXRpYyB1MzIgaXZiX2RwZmNfY3RsKHN0cnVjdCBpbnRlbF9m
YmMgKmZiYykgIHN0YXRpYyB2b2lkIGl2Yl9mYmNfYWN0aXZhdGUoc3RydWN0IGludGVsX2ZiYyAq
ZmJjKSAgew0KPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZmJjLT5pOTE1Ow0K
PiArCXUzMiBkcGZjX2N0bDsNCj4gDQo+ICAJaWYgKERJU1BMQVlfVkVSKGk5MTUpID49IDEwKQ0K
PiAgCQlnbGtfZmJjX3Byb2dyYW1fY2ZiX3N0cmlkZShmYmMpOw0KPiBAQCAtNjE3LDggKzYxOCwx
MyBAQCBzdGF0aWMgdm9pZCBpdmJfZmJjX2FjdGl2YXRlKHN0cnVjdCBpbnRlbF9mYmMgKmZiYykN
Cj4gIAlpZiAoaW50ZWxfZ3Rfc3VwcG9ydF9sZWdhY3lfZmVuY2luZyh0b19ndChpOTE1KSkpDQo+
ICAJCXNuYl9mYmNfcHJvZ3JhbV9mZW5jZShmYmMpOw0KPiANCj4gKwkvKiB3YV8xNDAxOTQxNzA4
OCBBbHRlcm5hdGl2ZSBXQSovDQo+ICsJZHBmY19jdGwgPSBpdmJfZHBmY19jdGwoZmJjKTsNCj4g
KwlpZiAoRElTUExBWV9WRVIoaTkxNSkgPj0gMjApDQo+ICsJCWludGVsX2RlX3dyaXRlKGk5MTUs
IElMS19EUEZDX0NPTlRST0woZmJjLT5pZCksIGRwZmNfY3RsKTsNCj4gKw0KPiAgCWludGVsX2Rl
X3dyaXRlKGk5MTUsIElMS19EUEZDX0NPTlRST0woZmJjLT5pZCksDQo+IC0JCSAgICAgICBEUEZD
X0NUTF9FTiB8IGl2Yl9kcGZjX2N0bChmYmMpKTsNCj4gKwkJICAgICAgIERQRkNfQ1RMX0VOIHwg
ZHBmY19jdGwpOw0KPiAgfQ0KPiANCj4gIHN0YXRpYyBib29sIGl2Yl9mYmNfaXNfY29tcHJlc3Np
bmcoc3RydWN0IGludGVsX2ZiYyAqZmJjKQ0KPiAtLQ0KPiAyLjM0LjENCg0K
