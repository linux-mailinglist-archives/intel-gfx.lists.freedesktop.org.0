Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 592F180E8F7
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Dec 2023 11:20:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70A9B10E5B2;
	Tue, 12 Dec 2023 10:20:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B61B10E5B2
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Dec 2023 10:20:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702376442; x=1733912442;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FlxGyfeKjL0YXsW609CrichjV709QqKjYn9dwsMRc74=;
 b=iG1jKgE+XMwaSe4aO6YZLr7Xq5vs4F2siZSTDugNk4vphJA1Ud3Ej4m5
 +hvFZtxJRByxjetWF0fIt900itqYasieFZUkM/OImahFUd2lt5r0CEt7k
 r/azdI2FfBZ8QPz4MYJ86kRJPUXtaEksJQnH+YCCX7ytSNZFwCE3E6LQ1
 WjcD8qu6ZrnNXMWsuRWb/TzdjGqbh2+BaTA7RPphfvh9Lu5QpCCVlzUwQ
 kbDMenDlLuGNThnoUS2asy7KzS0xkBMxW2pwQLhbj+OOH75+A+GRBtNap
 sLOYQRx2O9asfPq8YAN3Te93uMnBDQnDkjacb4+p+FfFNt/5Ig/QQ1sHs A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="374290617"
X-IronPort-AV: E=Sophos;i="6.04,269,1695711600"; d="scan'208";a="374290617"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 02:20:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="749663094"
X-IronPort-AV: E=Sophos;i="6.04,269,1695711600"; d="scan'208";a="749663094"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Dec 2023 02:20:41 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 12 Dec 2023 02:20:40 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 12 Dec 2023 02:20:40 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 12 Dec 2023 02:20:40 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 12 Dec 2023 02:20:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fxYWWNG3wmcR9aM0+XU2jjJkq5XiwoHh9s2ZP1Y5ehsywA5iIxlJWIu0qstuh24oFE7VFEl/fbr5/gL1nVgFhKDf9zgEP0l3Bpib7Bch8hC+U3ucidOKKUSjipUf13rNwstTemAD/YZdw7t8s7AYmY4P6YcoAU5oTQciKpSL76UPdvS3u8AK6azWJFp1a7GrhGNEXCKukqSktrz35NM9Pahi4vNX+5vGfWCqqVNR/WV2Phwgzzu7HjF/+LtMSLR5v2MRBNjQZDuFdwNfWjzNQyAySqXsYJFIAJe1IAeVUZWF7OszK7ekcEFX+vgg52liq6AIg/FJ6YNLj/z+bst2Lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FlxGyfeKjL0YXsW609CrichjV709QqKjYn9dwsMRc74=;
 b=JFBdMLdRgKF7bAkGwJUKEb5WgK39aoIVwNKGxsAmkkwTaOH7eOrSCxnxyH62fuH44cKjGbV1dVD8FW3ojyIG7hjau0T0H9xEQvyBiSINJ+Ja/1gJA1X8FzwbaAiqBGak8soz7JgqQ045wj3hIBuDNlo15C/rLpT8fpcJHQFQRdugK85yplDJjESNoQXr2gwV/OLJzMsHsivp+3cYsvpqfyHJ5zTieK550pU4kMD/mKuxwDKHzC6VOjBwAoOmurLXp+RDXK5l07TN9HC1IDwsyWaIm6sleWPqxCD16Upkbfo2piJG+qtfDUcSQ16EOZj2TM0yCAKMMf/kEXNNKFRWxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by DS7PR11MB6271.namprd11.prod.outlook.com (2603:10b6:8:95::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7068.25; Tue, 12 Dec 2023 10:20:38 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::8b04:7396:7a40:f00d]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::8b04:7396:7a40:f00d%7]) with mapi id 15.20.7068.033; Tue, 12 Dec 2023
 10:20:38 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
Subject: RE: [PATCH] drm/i915/display: Wait for PHY readiness not needed for
 disabling sequence
Thread-Topic: [PATCH] drm/i915/display: Wait for PHY readiness not needed for
 disabling sequence
Thread-Index: AQHaLOI6tIhFDZsOf0GL6Oi1H7fMKbClbIWAgAAC8oA=
Date: Tue, 12 Dec 2023 10:20:37 +0000
Message-ID: <MW4PR11MB7054171C13EA07C18ABDC0E3EF8EA@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20231212095520.452363-1-mika.kahola@intel.com>
 <ZXgxGVDZewhnY+mU@ideak-desk.fi.intel.com>
In-Reply-To: <ZXgxGVDZewhnY+mU@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|DS7PR11MB6271:EE_
x-ms-office365-filtering-correlation-id: 6bfa5faa-8aef-4c16-89f5-08dbfafbfc26
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mGI4sjDwr/aWEnAMU8XyJ2obQQTy2SuFzFGUhpCvFs2puIcGZxqbWmAznxWyLGWFESN7U2GGt0gv1XtNIh1ijoNuqGvQjTZJqLLvxhWsG7VtcyACSFg8z8wp1igx9n7DN170lox5r9mCgNQ+cL/StnoeMg9H/X8jwKeUv7BjMweuUjBu1+uYTus6ePNLbyk1/VtdGGr6zAqf/MzEgRX5lZPtFC8PoPvyDHxhVfOBDBLPzZQFbu2i7V24fAg7SGOeo6rGuqWJSKccctCyDX+MwAC/r3pOqfkrwN18LZLneF4n6Id6bX/Hhhp5PkyeGa6Azoevs+ci+YE3mAV0oIo4FJ1g2LyIPVIV5kBuEDHtHJLoZvJCmN2vR52Rez8tzazzw9wU46rC7rgxQyYWE6tPWBNqq0docACUo2QLhCpZHQw6+3NCRUE0ax5/qMJBFSCxtkF0hCmRP02UxjQn5yE77rOo8WqBwmzPL6faZQJykCj8gQdQuRzx3GTl+LVLTZVZ+QASnyy3tv/HIJYPT8i3RWqhC76h8HoQvUoboDhDFes6zwH8ABY91GkcFz8qWljJRKTQ6Leh+fWOiXDhoVFXJ0D6tELP2a5k1wr4AZwGUvazTofTa+45Aq6ym1B5/OzR
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(136003)(396003)(366004)(39860400002)(346002)(230922051799003)(451199024)(1800799012)(186009)(64100799003)(53546011)(82960400001)(8676002)(71200400001)(5660300002)(7696005)(83380400001)(122000001)(6506007)(8936002)(66556008)(9686003)(76116006)(66446008)(6862004)(64756008)(86362001)(4326008)(316002)(478600001)(55016003)(66476007)(66946007)(52536014)(6636002)(26005)(38100700002)(41300700001)(33656002)(38070700009)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TmltS2VUUlRMSTdiN2oraDVKSWNxVktSUDNjL2JYUU1HT0dBSzR6aXFTcVUx?=
 =?utf-8?B?QUJQVU9uQzNYSnNIUlo4MzJRT1R2RFc4R21HNXpnc0phNUJlU2FwMnUycHp1?=
 =?utf-8?B?MFBEb0JLekl1d2l0dWdFWDNyd2tqaERRYlljOERCOFo2eEFjcmMrS0o0T1dx?=
 =?utf-8?B?R1FiZ2tHL3ZKZGwzckNmV2JXRUI5dHZPRHhnWDB1cmREM2RRVnVucW9qK1BR?=
 =?utf-8?B?d00yZlFoVTM1Ulg5ZDhhd1NXc243eEJXaEVMMXI3QUdwRXVGWTVzdTZEaTlC?=
 =?utf-8?B?ZnJMZnZpVjVvR1JPME54aG13RWZYeXU0azRUa3JXYkltbzhabjZLU2pzQ2E3?=
 =?utf-8?B?cFFLSlY2ZDJYSTdlL0NqZERFZG1OdlNqQzU1NnNSUjRVQnZKTm9KUE16anBv?=
 =?utf-8?B?Ull5SVNTeVYwVVBoQnR1Vk93dkJ4NGtNUUY5dEpqdXdBRzZsQlpjVkhDSzJC?=
 =?utf-8?B?dXgzWDJnSllCekxvaUZoRGc5QzMxM1gzQmQwZ2FzSGg5ODd6QThTQTdQMWhY?=
 =?utf-8?B?R25memFNTEN5S2xBczVzNlFDM0VESWZBZENFWk9hRDgySUVnOGVaMWM3SFQr?=
 =?utf-8?B?ekZIQUlyVWk5elYvWFI3cGlJRVZsL0F1ZlRadThTczNqTk4xd3IzK1hFTGsw?=
 =?utf-8?B?emJycTFXZzd0bWpYZVlWOGQrdG5yZ0RUNFBsNVRjbE5oVmRsZmJHYmNETlgw?=
 =?utf-8?B?NkpZYVNNaytXT090U3BlOE56RENKc2ZZQVc5cTJycGVKanNLY1pnYnRMUFFP?=
 =?utf-8?B?S2dNZ1ZXRFArMUlLWWNTOGdOcjlnODdKNkRrcmdoWXJVbEhTdWpvWFJJcGFi?=
 =?utf-8?B?anp6aVFjd1FrZlpLTnMvZDRVU3FuWXVobkVIY01qRC9xamlSbzVuNFdEc2Nq?=
 =?utf-8?B?ZWV0T2ErelFaZ0ZqditaZmhDM2hMOWhnbWNVdUIwNU5PNDZnRjY2Q0lTcThv?=
 =?utf-8?B?SlRsS2d3THhFYzBsQktQZTVxYkRBa0VzOTY5WCt3VWlpWkVYelh6VTZzT0Fm?=
 =?utf-8?B?RlJZYzlpajhqSXdlK0FwR1ZrOGNQenFoVG1YVWtNZllweXBnR1Y2NlcxdDJk?=
 =?utf-8?B?dlNzRHBLaE5QUUtlclFmeDFXYWlYOTZjZFVaekdwTk1ZOGRLSnJqdkVnNHIr?=
 =?utf-8?B?eUNvWUVCUlNhTlN1VTNEakg2eCtPeXkwRWJJU0VYS1VzM0JKWklBVmRTY1Qx?=
 =?utf-8?B?ZUp0R1JNN2NCVWxTVDJRQjNnUitEUjRONnBFSEI1Z3I0UWtDVzVhUmNIeUVM?=
 =?utf-8?B?ek5RMkNmOE15OG4wWlVNeHRWcFBqVFNpc3lveGhVQkpxVzR0ZS9XYzEycFFB?=
 =?utf-8?B?clFhVy9wb2M1N3Qza2ZVVk03eWNIWE9iUlIrcm10ODE2dTNxNUUzcUxPT1ZP?=
 =?utf-8?B?NWFxV0xMTTI4Y0l4dG9Ga3psTXhzbXVaUjRZRWN1MWNwaERsRVd6RDZtNDc5?=
 =?utf-8?B?Zis4dkd5YWkyNEZHSlQ1cU5GUndVenZjalpFdy9GaXNqSzh2b2ZkNjRaMlFH?=
 =?utf-8?B?eFhyU0JyaEhPTkZSYnU2WTBZcVhJbmRyRytiWXhzWXZIK0NUZjZJY1hQVEsr?=
 =?utf-8?B?cGJ2Z2dkaFhoeXozdlRKWmlvc0lnV3hxdnhSYjdwbnlLRW93aFpzMUkzT1Fo?=
 =?utf-8?B?QVNRS2UvVitPRmZkYVpVMmsxeGY0UEtuU2lLb3piOXUrSXdxRWtTL0dseEhD?=
 =?utf-8?B?amlidHFXVDQxemdIbnpwY3lCV2l4ellXeFFYTlZmalVsWVlYbi80c1NQeVhq?=
 =?utf-8?B?WUVHNFdURll2emhMKzVFSTl0dVdHQktJTVNXWUpHMnJJbFhUYXVXbmpBQ25X?=
 =?utf-8?B?VnRzQmJJUHYrZkwyVFV2QlFGdjJHRVNrZElxekIra3Q4WjhrRUQwZC9hV0dM?=
 =?utf-8?B?amtqcUZycjkwMjNtT0MvWk5MZWUwcmVsQjc0cjA2Z2pFT3lkMjFqaHdRTFRK?=
 =?utf-8?B?aHphUUpWQkdLdEZEV0gyVlV6eGRHU0llMGJ0MnZtYXRiMnM5WXMrMkZtdGtq?=
 =?utf-8?B?cVFkRXAzRHpvSDArYzhMeU5pRFI0WDNVczFmR1J5ZTlDc2dvMjg2NVQ3VmNG?=
 =?utf-8?B?RDh2ei9pd1Z2SjBhTHFDbkowem5TbmVvY2xGOHA2VEh4bWpPS2N0c1QwcXVH?=
 =?utf-8?Q?49cvmRa8RVAVKiLJ6G3ppoOlg?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6bfa5faa-8aef-4c16-89f5-08dbfafbfc26
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2023 10:20:37.6665 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5MUhoRAuJdctIMm8vTsjBCtpsSM6NChZqQPsK/yuWYRMUUHxYq2YjPFHdrl+OzUWM1+3WgakZirYW1RBhC4XoA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6271
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBEZWFrLCBJbXJlIDxpbXJlLmRl
YWtAaW50ZWwuY29tPg0KPiBTZW50OiBUdWVzZGF5LCBEZWNlbWJlciAxMiwgMjAyMyAxMjowOCBQ
TQ0KPiBUbzogS2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+IENjOiBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0hdIGRybS9p
OTE1L2Rpc3BsYXk6IFdhaXQgZm9yIFBIWSByZWFkaW5lc3Mgbm90IG5lZWRlZCBmb3IgZGlzYWJs
aW5nIHNlcXVlbmNlDQo+IA0KPiBPbiBUdWUsIERlYyAxMiwgMjAyMyBhdCAxMTo1NToyMEFNICsw
MjAwLCBNaWthIEthaG9sYSB3cm90ZToNCj4gPiBXaGVuIGdvaW5nIHRocm91Z2ggdGhlIGRpc2Nv
bm5lY3Rpb24gZmxvdyB3ZSBkb24ndCBuZWVkIHRvIHdhaXQgZm9yDQo+ID4gUEhZIHJlYWRpbmVz
cyBhbmQgaGVuY2Ugd2UgY2FuIHNraXAgdGhlIHdhaXQgcGFydC4gRm9yIGRpc2FibGluZyB0aGUN
Cj4gPiBmdW5jdGlvbiByZXR1cm5zIGZhbHNlIGFzIGFuIGluZGljYXRvciB0aGF0IHRoZSBwb3dl
ciBpcyBub3QgZW5hYmxlZC4NCj4gPiBBZnRlciBhbGwsIHdlIGFyZSBub3QgZXZlbiB1c2luZyB0
aGUgcmV0dXJuIHZhbHVlIHdoZW4gVHlwZS1DIGlzIGRpc2Nvbm5lY3RpbmcuDQo+ID4NCj4gPiBC
U3BlYzogNjUzODANCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmth
aG9sYUBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfdGMuYyB8IDMgKysrDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMo
KykNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3RjLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0K
PiA+IGluZGV4IGY2NGQzNDhhOTY5ZS4uNzllYzE3ZmEzZWRkIDEwMDY0NA0KPiA+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiA+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiA+IEBAIC0xMDMwLDYgKzEwMzAsOSBA
QCBzdGF0aWMgYm9vbA0KPiA+IHhlbHBkcF90Y19waHlfZW5hYmxlX3Rjc3NfcG93ZXIoc3RydWN0
IGludGVsX3RjX3BvcnQgKnRjLCBib29sIGVuYWJsDQo+ID4NCj4gPiAgCV9feGVscGRwX3RjX3Bo
eV9lbmFibGVfdGNzc19wb3dlcih0YywgZW5hYmxlKTsNCj4gPg0KPiA+ICsJaWYgKCFlbmFibGUp
DQo+ID4gKwkJcmV0dXJuIGZhbHNlOw0KPiANCj4gV2FpdGluZyBmb3IgeGVscGRwX3RjX3BoeV93
YWl0X2Zvcl90Y3NzX3Bvd2VyKHRjLCBmYWxzZSk7IGlzIGFsc28gbmVlZGVkIGluIHRoZSBhYm92
ZSBjYXNlLg0KDQpPay4gSSB3b3VsZCBzdGlsbCBrZWVwIHRoaXMgZGlzYWJsaW5nIHBhcnQgc2Vw
YXJhdGUgYXMgaWYgSSBjb21iaW5lIHRoaXMgd2l0aCBleGlzdGluZyBpZigpIHRoZSBjb2RlIGxv
b2tzIGEgYml0IGJ1c3kgZm9yIG1lLiANCg0KVGhhbmtzIQ0KTWlrYQ0KDQo+IA0KPiA+ICsNCj4g
PiAgCWlmICgoIXRjX3BoeV93YWl0X2Zvcl9yZWFkeSh0YykgfHwNCj4gPiAgCSAgICAgIXhlbHBk
cF90Y19waHlfd2FpdF9mb3JfdGNzc19wb3dlcih0YywgZW5hYmxlKSkgJiYNCj4gPiAgCSAgICAh
ZHJtX1dBUk5fT04oJmk5MTUtPmRybSwgdGMtPm1vZGUgPT0gVENfUE9SVF9MRUdBQ1kpKSB7DQo+
ID4gLS0NCj4gPiAyLjM0LjENCj4gPg0K
