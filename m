Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD05819E65
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Dec 2023 12:46:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3CAC10E320;
	Wed, 20 Dec 2023 11:45:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEA0210E320
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Dec 2023 11:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703072754; x=1734608754;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=yTyamC58zvgH0gJset0HXW3Y7xOxbicKG9rt5U+dKZE=;
 b=VRBIeDjF6hOY6GxQ9m2+rOonZ7mCn5iV8WBCpol/ZMocTV/lA7PyXvBF
 JFTj9Xv9b5rIFn4Okdr0lH+l6wY1MdSGKlAfeVRPGPkZ94+rXRnzB1uuT
 I6+R4uHICcoXzgmzoz8OkqNSIMD6a2PlM6vvc+vcVgv54P/YjBTeRYDLq
 BtnAgPcGWgTPyIFhEaCITGYVaiG68MsXNWkQpHczEWAEkU0fGNn7Z30x6
 tuB9V4uslxbOTLK1NHXAP6wnHL0OMcM1pkKWWBP8qSXpUIcGXpkMUVRmE
 TaLvjTtk1nnTzNcRzRqLtHuMxMndGC/ZYB7i/QLl542EUhu+jjU50XQmo g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="375291238"
X-IronPort-AV: E=Sophos;i="6.04,291,1695711600"; d="scan'208";a="375291238"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2023 03:45:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="769556316"
X-IronPort-AV: E=Sophos;i="6.04,291,1695711600"; d="scan'208";a="769556316"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Dec 2023 03:45:53 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 20 Dec 2023 03:45:53 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 20 Dec 2023 03:45:53 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 20 Dec 2023 03:45:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T/83Gqb4VLmZe4ofUTqtca9p7lZwrEO1YA0pXt0z3kI3nTS2CAyZeDFoYXktpji/XnqXcFLeK9ZmB9SKvfFiKitn8fqWCQxVWe1WKQjYRuVIFWX8lrgvivuZgz2VUYlnvOwHoyFESyZe8B6b9t6qXpGFL/Oo79UAZFeddxqGK54lXUFCELQAGsGXT26gMmAiH+x/Q0J45wqj5FLwfuoPrMfDl13J/XHPUCSeAwY/MWXDobXPPb3VewETw5KBCqgCDpQqZC2amGsFX8jvfyNsxjJ+XY02F17/PxjGREFlrABhEhUiiXIpRDGFbgxYacpBvGFq5F49pkafokMJBYSkaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yTyamC58zvgH0gJset0HXW3Y7xOxbicKG9rt5U+dKZE=;
 b=TQm+JUvrhaj5kd1nj38DnoLXkC6oDFkZPaFwyqirA4KV+9zYrBQsyUIGjkGwxs1dz4llJvqmo3TrfR3wEryUmhBIxCaCE86ohVrHePk10vtLJel7svH/GTj5+2LkL+rAakvBiEPivsIE1U54FB4r80lkd5aexed2lsCZzNLxGO2zbbCDj4CSirgAYI+mpx0v9j1jYiBI46ivWhgOVYOF6ebapWNTKeBTEe1V9jQq2Uuq8wgB751j6bGQ9dogB8XhAL3Flak5dbTY0lzvYGh2ikJX57RTijRQDFZARp7wp5w9Ut46QlTZd7FIwk+28HAJo+2KXazINUKKqWkTMi9Y3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6344.namprd11.prod.outlook.com (2603:10b6:930:3b::6)
 by DM6PR11MB4530.namprd11.prod.outlook.com (2603:10b6:5:2a4::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7113.18; Wed, 20 Dec
 2023 11:45:44 +0000
Received: from CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::d720:57b4:c6ef:ddd8]) by CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::d720:57b4:c6ef:ddd8%4]) with mapi id 15.20.7113.016; Wed, 20 Dec 2023
 11:45:44 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 8/9] drm/i915: Perform vblank evasion around legacy cursor
 updates
Thread-Topic: [PATCH 8/9] drm/i915: Perform vblank evasion around legacy
 cursor updates
Thread-Index: AQHaLa7EuYvc8C70fEuorcQtx9WAKLCyFRmggAACpvA=
Date: Wed, 20 Dec 2023 11:45:44 +0000
Message-ID: <CY5PR11MB6344EA05F9B4796CCEDE704DF496A@CY5PR11MB6344.namprd11.prod.outlook.com>
References: <20231213102519.13500-1-ville.syrjala@linux.intel.com>
 <20231213102519.13500-9-ville.syrjala@linux.intel.com>
 <CY5PR11MB63440EB2396C4C24EE0C1A1DF496A@CY5PR11MB6344.namprd11.prod.outlook.com>
In-Reply-To: <CY5PR11MB63440EB2396C4C24EE0C1A1DF496A@CY5PR11MB6344.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6344:EE_|DM6PR11MB4530:EE_
x-ms-office365-filtering-correlation-id: 61f709b4-99ec-4c30-d211-08dc01513316
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zq8vh1URWgZxwn5f2TpJBGJrkEZN79PM3++soSWjjG6c3pZDri0yZVVhbhBeBo84wPM2FLA0uaY+wOUPVOdJgWQab4onXI5w6ItNBmtnlTytwPRi4el+m+8Q+Yv7YxXBrllS5Hf5rNbpZgbOoeCgfIZd478ZG3fICC6ftcalbZlWyqz9nGA+pCb0KHFKlsJ4T6rTsQjNI5KU5SxrdONi6WHXJtkSvGUbIKj/v5XRkXFh4NQmkk4sq71CUY8T1bgtreKWXAo1/fsSo9lzGr0VShVtt48Mla7Fi7vAWe5/8+4QWaF243RMmfdptmrK5lfef9HfU5tm7ulwKfT7fhB+7Wu2nkSN5/HsKwNmV4GsnVSMt+DRQq3LXtU4LViGxAaxOQHUq8v5NjYnQaVZV7Rp+N9xPlZLioCmazVUVtiX3Bf8rC8cOdWhRP8RtZRNYTzTjl/oc8hw5Jj72h39FeIbpwObL0tmSA9zNdc+tl8wQyX0kpEULNqHRig5hvqwfXQ27wFN2djylDJZAFhBuq3fNLdMm4F1SwgAIQ1sFG4jYtYZS1GfeBlxJPHYYYs26uxj2ST5pFwavYvc/R4n2oZT+N7bcaStfs57zwQMnn2/AcIfue/iaOvr45D78+h6bOqq
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6344.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(39860400002)(376002)(396003)(136003)(366004)(230922051799003)(1800799012)(186009)(451199024)(64100799003)(55016003)(52536014)(478600001)(83380400001)(122000001)(5660300002)(15650500001)(26005)(66574015)(2906002)(8676002)(8936002)(66446008)(66476007)(66556008)(316002)(64756008)(76116006)(66946007)(110136005)(86362001)(41300700001)(33656002)(6506007)(9686003)(53546011)(7696005)(82960400001)(71200400001)(2940100002)(38100700002)(38070700009);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SkhpdEhiQWY1VUl0TWJpcnJlYkYyT1M0UXZZdy9sL2VPUmxONWRFYlE1LzM3?=
 =?utf-8?B?RGYyY0pWWVNKeXVXQXBYaWtoanE5V241ekR6dzJhL1o0RlR0QjR2MlllZ01X?=
 =?utf-8?B?UWw4allhQWNhMTNkSk5oTGlTTXNnWXFVOW1FYmo4c2ZXeXdIckFuWjhWMi8z?=
 =?utf-8?B?dlhiOTJNTGtYeml0MjF0NG94eU5aNlRkeUd2NUhXbk51eGFoRFk1RCtBN3BE?=
 =?utf-8?B?SjJUZktib0VoUmIzamkvUEVUYU1ZRGZ1UHdXUURKTDFZUlNvcTFwZDhwUW9Z?=
 =?utf-8?B?RXRnSmUvalNPQUFHNisyWEliUEk2NjY4VGpoemJtWmNNY0FySVdmbCs0VGpk?=
 =?utf-8?B?RXJ6RVBzUklMbEZuWGhlTFY3WlpkTzNKdnNydnEzODlRekltbWhqaFNCMzlk?=
 =?utf-8?B?aGFZeWdiTEc0bWQvQzZPcHU2VU8zUVM4Sjk3dlhlb0xZUjVQYXlSWlR4RGtu?=
 =?utf-8?B?V3VQbGdsRHhieE92RTJmY2hub1dzSzZ6TDhmMzdvSWMyemx6T0dvdnNLTHo4?=
 =?utf-8?B?NmJEaWNBTFVpQ3RSVHZxa3NuRzVTekhBdGV3dVZOMk5YeCtPTXJKL1VydjBI?=
 =?utf-8?B?RzRkRmZ2ek9JRFJyMU5lUmlteEV0ZWwzT3FXbmJaMUVvb2J6SHFpK2ZYOTU5?=
 =?utf-8?B?Qzd5ZGFlQ2pRNU5qVWZqUnpJV1BFeE9EMDFqYVJwQk1DMVo1VmROWC9QRFFv?=
 =?utf-8?B?K3pyMFRDUnloVkdhMHlvMDFJZENDZWpybHYzOXJ3UUNRR21pNU9jM1pBaGdp?=
 =?utf-8?B?b1JWeWE5TE5pRVREZ1pPRUhubjRLbE1VUEEzbnV3QjkvUlhJcWZMR1RKSmQz?=
 =?utf-8?B?QXhOMEx1c1hSQ09pR3BDRGZDRE5PcmRkSnlhNXRiZ0RWaUlFd2k5aEFpbTRC?=
 =?utf-8?B?MzNDaVhmc21NSElObkwxeHVjMU90TW5EWEdXNmxvMmNwWllmQTR6OTRET3lB?=
 =?utf-8?B?UG1EVGI1WE9IZm42RTBKUmROQ2xHenB4eFZTVkZyV0owSHFNZ0NrRlMwL2tL?=
 =?utf-8?B?UGt0Mi9OZGhyd0FFaGtaL2tUN1hPTThVQWtLUkQ3YnRieXJTYTFaWGlYeWl0?=
 =?utf-8?B?ZE9JSjlPQVZOZFlhbHgrOTR1TFloOHIyR2NERXJsbE8ySUVlY2RRblU0bCtT?=
 =?utf-8?B?S1JhUzlvOTRCL1BwcnU1R1kweFpHclNyRjloM20rTnBkcXVjc2tOTThNOFhj?=
 =?utf-8?B?aFVsN21mc3FvR3NMT0lmd05rbUk1SjcrY21Wb0NHem4yeGtZTUlQaWdKMVlz?=
 =?utf-8?B?WXNBMmd6OWl5emFjMGsxZUUyenV6Q25pSmNRV2k5aTU0K0xtYkRVd09yTVlv?=
 =?utf-8?B?cHUvNnZ2bUI5TjJxQ3VjYUg5eGRCaVNZYWJtYWxpanNpY3g2OVlMVUlValBS?=
 =?utf-8?B?bTR1Mmc4U1YrM1p1eDJEOXdGUFM3a2phNUNXQzVtZjV2aG5UeGhCRHArdXkv?=
 =?utf-8?B?NFNPQTNNS0JCd1cweFBVOENjUVM1ZnlvYzJMcE5YMGhINkpKTjFhRTB0QTFB?=
 =?utf-8?B?VjRRWGRta3hxL3IrSmVLcjBHWFd3d0VWS2JxNmQ1MHZWL0MrZm5TQTNLYnlM?=
 =?utf-8?B?eG03aFVxeFdiS053bVk2Yy9XYldoUmFNNU9maW1IMHJIOVNuc0RIMDg5SnZv?=
 =?utf-8?B?bktOQ0Y2ZktCRlkwOGhseXpjNyt5eGRLbVIvOVUvYXJEd05NUzM0Z0ovZXZE?=
 =?utf-8?B?WE9KclZERTJVNXAxNGU5UjY2WEoxUTFPNlFuWlMxMWFLOEFITkFJdWgyU3Ju?=
 =?utf-8?B?Qk9tRWNLc0crMDMzbEZpYUYzVEpUYXRwVE9EZkpEUmxVNkxYSDI4QktaR0JI?=
 =?utf-8?B?Ym5PSS8wbWVxVmlCbGhvMkV0WXBOVXhVMFp4aXJ5cmc2QlovU1NKYUI0YTFR?=
 =?utf-8?B?OXB0TFRYcjhpdVFNT2V6RFI0eE5MZmFtRkFQTi9JY2wxM1BVb0ZTRnViU054?=
 =?utf-8?B?SWd5ajV6dkN2NEF0dE53SVhpclBVV3NieUhVN0FCNzJaVHFUTGNBeVJLYmpU?=
 =?utf-8?B?ajhzOTZQVldEWnR1MGg4TEMrR3NWR3plSEx5SlhnY2xDM2tFaGJXVS9LYVV0?=
 =?utf-8?B?Z1p4MUJXM1dNeFFSeXVFS3YyeVhhamlBcFVEWnFGSGUwU1FQZU80WjVLVWZP?=
 =?utf-8?Q?2O2VCFXg+upsM+HCCpD1cNpfL?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6344.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 61f709b4-99ec-4c30-d211-08dc01513316
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Dec 2023 11:45:44.0446 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9LZ3AhHalpvleXYeyU2ue1Um/uTK62VkqxnxF+HIkArGBWvvDTilbmfx7q+n49/y60qCsL5Psdl4NwAj1s2fRQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4530
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogU2hhbmthciwgVW1hDQo+
IFNlbnQ6IFdlZG5lc2RheSwgRGVjZW1iZXIgMjAsIDIwMjMgNToxMSBQTQ0KPiBUbzogVmlsbGUg
U3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+OyBpbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFJFOiBbUEFUQ0ggOC85XSBkcm0vaTkxNTogUGVy
Zm9ybSB2YmxhbmsgZXZhc2lvbiBhcm91bmQgbGVnYWN5IGN1cnNvcg0KPiB1cGRhdGVzDQo+IA0K
PiANCj4gDQo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiBGcm9tOiBJbnRlbC1n
ZnggPGludGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9m
DQo+ID4gVmlsbGUgU3lyamFsYQ0KPiA+IFNlbnQ6IFdlZG5lc2RheSwgRGVjZW1iZXIgMTMsIDIw
MjMgMzo1NSBQTQ0KPiA+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4g
U3ViamVjdDogW1BBVENIIDgvOV0gZHJtL2k5MTU6IFBlcmZvcm0gdmJsYW5rIGV2YXNpb24gYXJv
dW5kIGxlZ2FjeQ0KPiA+IGN1cnNvciB1cGRhdGVzDQo+ID4NCj4gPiBGcm9tOiBWaWxsZSBTeXJq
w6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiA+DQo+ID4gT3VyIGxlZ2Fj
eSBjdXJzb3IgdXBkYXRlcyBhcmUgYWN0dWFsbHkgbWFpbGJveCB1cGRhdGVzLg0KPiA+IEllLiB0
aGUgaGFyZHdhcmUgbGF0Y2hlcyB0aGluZ3Mgb25jZSBwZXIgZnJhbWUgb24gc3RhcnQgb2YgdmJs
YW5rLCBidXQNCj4gPiB3ZSBpc3N1ZSBhbiBudW1iZXIgb2YgdXBkYXRlcyBwZXIgZnJhbWUsIHdp
dGhvdWdoIGFueSBhdHRlbXB0IHRvDQo+ID4gc3luY2hyb25pemUgYWdhaW5zdCB0aGUgdmJsYW5r
IGluIHNvZnR3YXJlLiBTbyBpbiB0aGVvcnkgb25seSB0aGUgbGFzdA0KPiA+IHVwZGF0ZSBpc3N1
ZWQgZHVyaW5nIHRoZSBmcmFtZSB3aWxsIGxhdGNoLCBhbmQgdGhlIHByZXZpb3VzIG9uZXMgYXJl
IGRpc2NhcmRlZC4NCj4gPg0KPiA+IEhvd2V2ZXIgdGhpcyBjYW4gbGVhZCB0byBwcm9ibGVtcyB3
aXRoIG1haW50YWluaW5nIHRoZSBnZ3R0L2lvbW11DQo+ID4gbWFwcGluZ3MgYXMgd2UgaGF2ZSBu
byBpZGVhIHdoaWNoIHVwZGF0ZXMgd2lsbCBhY3R1YWxseSBsYXRjaC4NCj4gPg0KPiA+IFRoZSBw
cm9ibGVtIGlzIGV4YWNlcmJhdGVkIGJ5IHRoZSBoYXJkd2FyZSdzIGFubm95aW5nIGRpc2FybWlu
Zw0KPiA+IGJlaGF2aW91cjsgYW55IG5vbi1hcm1pbmcgcmVnaXN0ZXIgd3JpdGUgd2lsbCBkaXNh
cm0gYW4gYWxyZWFkeSBhcm1lZA0KPiA+IHVwZGF0ZSwgb25seSB0byBiZSByZWFybWVkIGxhdGVy
IGJ5IHRoZSBhcm1pbmcgcmVnaXN0ZXIgKENVUkJBU0UgaW4NCj4gPiBjYXNlIG9mIGN1cnNvcnMp
LiBJZiBhIGRpc2FybWluZyB3cml0ZSBoYXBwZW5zIGp1c3QgYmVmb3JlIHRoZSBzdGFydA0KPiA+
IG9mIHZibGFuaywgYW5kIHRoZSBhcm1pbmcgd3JpdGUgaGFwcGVucyBhZnRlciBzdGFydCBvZiB2
Ymxhbmsgd2UgaGF2ZQ0KPiA+IGVmZmVjdGl2ZWx5IHByZXZlbnRlZCB0aGUgaGFyZHdhcmUgZnJv
bSBsYXRjaGluZyBhbnl0aGluZy4gQW5kIGlmIHdlDQo+ID4gbWFuYWdlIHRvIHN0cmFkZGxlIG11
bHRpcGxlIHNlcXVlbnRpYWwgdmJsYW5rIHN0YXJ0cyBpbiB0aGlzIG1hbm5lciB3ZQ0KPiA+IGVm
ZmVjdGl2ZWx5IHByZXZlbnQgdGhlIGhhcmR3YXJlIGZyb20gbGF0Y2hpbmcgYW55IG5ldyByZWdp
c3RlcnMgZm9yDQo+ID4gYW4gYXJiaXRyYXJ5IGFtb3VudCBvZiB0aW1lLiBUaGlzIHByb3ZpZGVz
IG1vcmUgdGltZSBmb3IgdGhlIChwb3RlbnRpYWxseSBzdGlsbCBpbg0KPiB1c2UgYnkgdGhlIGhh
cmR3YXJlKSBndHQvaW9tbXUgbWFwcGluZ3MgdG8gYmUgdG9ybiBkb3duLg0KPiA+DQo+ID4gQSBw
YXJ0aWFsIHNvbHV0aW9uLCBvZiBjb3Vyc2UsIGlzIHRvIHVzZSB2YmxhbmsgZXZhc2lvbiB0byBh
dm9pZCB0aGUNCj4gPiByZWdpc3RlciB3cml0ZXMgZnJvbSBzcHJlYWRpbmcgb24gYm90aCBzaWRl
cyBvZiB0aGUgc3RhcnQgb2YgdmJsYW5rLg0KPiA+DQo+ID4gSSd2ZSBwcmV2aW91c2x5IGhpZ2hs
aWdodGVkIHRoaXMgcHJvYmxlbSBhcyBhIGdlbmVyYWwgaXNzdWUgYWZmZWN0aW5nDQo+ID4gbWFp
bGJveCB1cGRhdGVzLiBJIGV2ZW4gYWRkZWQgc29tZSBub3RlcyB0byB0aGUNCj4gPiB7aTl4eCxz
a2x9X2NydGNfcGxhbmVzX3VwZGF0ZV9hcm0oKSB0byByZW1pbmQgdXMgdGhhdCB0aGUgbm9hcm0g
YW5kDQo+ID4gYXJtIHBoYXNlcyBib3RoIG5lZWQgdG8gcHVsbGVkIGludG8gdGhlIHZibGFuayBl
dmFzaW9uIGNyaXRpY2FsDQo+ID4gc2VjdGlvbiBpZiB3ZSBhY3R1YWxseSBkZWNpZGVkIHRvIGlt
cGxlbWVudCBtYWlsYm94IHVwZGF0ZXMgaW4NCj4gPiBnZW5lcmFsLiBCdXQgYXMgSSBuZXZlciBp
bXBlbGVtZW50ZWQgdGhlDQo+ID4gbm9hcm0rYXJtIHNwbGl0IGZvciBjdXJzb3JzIHdlIGRvbid0
IGhhdmUgdG8gd29ycnkgYWJvdXQgdGhhdCBmb3IgdGhlIG1vbWVudC4NCj4gPg0KPiA+IFdlJ3Zl
IGJlZW4gbHVja3kgZW5vdWdoIHNvIGZhciB0aGF0IHRoaXMgaGFzbid0IHJlYWxseSBjYXVzZWQN
Cj4gPiBwcm9ibGVtcy4gT25lIHRoaW5nIHRoYXQgZG9lcyBoZWxwIGlzIHRoYXQgWG9yZyBnZW5l
cmFsbHkgc3RpY2tzIHRvDQo+ID4gdGhlIHNhbWUgY3Vyc29yIEJPLiBCdXQgaWd0IHNlZW1zIHBy
ZXR0eSBnb29kIGF0IGhpdHRpbmcgdGhpcyBvbiBNVEwNCj4gPiBub3csIHNvIGFwcGFyZW50bHkg
d2UgaGF2ZSB0byBzdGFydCB0aGlua2luZyBhYm91dCB0aGlzLg0KPiANCj4gV2FzIG5vdCBhd2Fy
ZSB0aGF0IGEgZGlzYXJtaW5nIHVwZGF0ZSB3aWxsIGRpc2FybSBhbiBhcm1lZCB1cGRhdGUgYW5k
IG1ha2UNCj4gdGhlIHZibGFuayBzeW5jIGlycmVsZXZhbnQuIFRoYW5rcyBmb3IgYSBnb29kIHdy
aXRldXAgaGlnaGxpZ2h0aW5nIHRoZSBpc3N1ZSwgcmVhbGx5DQo+IGhlbHBzLg0KPiANCj4gWWVh
aCwgdGhpcyBzaG91bGQgaGVscCBtYWludGFpbiBjb25zaXN0ZW5jeSB3aXRoIGN1cnNvciB1cGRh
dGVzIGFuZCBlbnN1cmUgdGhlDQo+IHN5bmMgYXQgdmJsYW5rLiBDaGFuZ2UgbG9va3MgR29vZCB0
byBtZS4NCj4gUmV2aWV3ZWQtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+
DQo+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfY3Vyc29yLmMgfCAxNiArKysrKysrKysrLS0tLS0tDQo+ID4gIDEgZmlsZSBjaGFu
Z2VkLCAxMCBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQ0KPiA+DQo+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3Vyc29yLmMNCj4gPiBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3Vyc29yLmMNCj4gPiBpbmRleCA5MjZl
MmRlMDBlYjUuLjc3NTMxODM4MDAxZiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2N1cnNvci5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jdXJzb3IuYw0KPiA+IEBAIC0yMiw2ICsyMiw3IEBADQo+ID4gICNp
bmNsdWRlICJpbnRlbF9mcm9udGJ1ZmZlci5oIg0KPiA+ICAjaW5jbHVkZSAiaW50ZWxfcHNyLmgi
DQo+ID4gICNpbmNsdWRlICJpbnRlbF9wc3JfcmVncy5oIg0KPiA+ICsjaW5jbHVkZSAiaW50ZWxf
dmJsYW5rLmgiDQo+ID4gICNpbmNsdWRlICJza2xfd2F0ZXJtYXJrLmgiDQo+ID4NCj4gPiAgI2lu
Y2x1ZGUgImdlbS9pOTE1X2dlbV9vYmplY3QuaCINCj4gPiBAQCAtNjQ3LDEyICs2NDgsMTQgQEAg
aW50ZWxfbGVnYWN5X2N1cnNvcl91cGRhdGUoc3RydWN0IGRybV9wbGFuZQ0KPiA+ICpfcGxhbmUs
IHsNCj4gPiAgCXN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUgPSB0b19pbnRlbF9wbGFuZShfcGxh
bmUpOw0KPiA+ICAJc3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKF9jcnRj
KTsNCj4gPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShwbGFuZS0+
YmFzZS5kZXYpOw0KPiA+ICAJc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpvbGRfcGxhbmVfc3Rh
dGUgPQ0KPiA+ICAJCXRvX2ludGVsX3BsYW5lX3N0YXRlKHBsYW5lLT5iYXNlLnN0YXRlKTsNCj4g
PiAgCXN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqbmV3X3BsYW5lX3N0YXRlOw0KPiA+ICAJc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUgPQ0KPiA+ICAJCXRvX2ludGVsX2NydGNf
c3RhdGUoY3J0Yy0+YmFzZS5zdGF0ZSk7DQo+ID4gIAlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
bmV3X2NydGNfc3RhdGU7DQo+ID4gKwlzdHJ1Y3QgaW50ZWxfdmJsYW5rX2V2YWRlX2N0eCBldmFk
ZTsNCj4gPiAgCWludCByZXQ7DQo+ID4NCj4gPiAgCS8qDQo+ID4gQEAgLTc0NSwxNCArNzQ4LDE1
IEBAIGludGVsX2xlZ2FjeV9jdXJzb3JfdXBkYXRlKHN0cnVjdCBkcm1fcGxhbmUNCj4gKl9wbGFu
ZSwNCj4gPiAgCSAqLw0KPiA+ICAJY3J0Y19zdGF0ZS0+YWN0aXZlX3BsYW5lcyA9IG5ld19jcnRj
X3N0YXRlLT5hY3RpdmVfcGxhbmVzOw0KPiA+DQo+ID4gLQkvKg0KPiA+IC0JICogVGVjaG5pY2Fs
bHkgd2Ugc2hvdWxkIGRvIGEgdmJsYW5rIGV2YXNpb24gaGVyZSB0byBtYWtlDQo+ID4gLQkgKiBz
dXJlIGFsbCB0aGUgY3Vyc29yIHJlZ2lzdGVycyB1cGRhdGUgb24gdGhlIHNhbWUgZnJhbWUuDQo+
ID4gLQkgKiBGb3Igbm93IGp1c3QgbWFrZSBzdXJlIHRoZSByZWdpc3RlciB3cml0ZXMgaGFwcGVu
IGFzDQo+ID4gLQkgKiBxdWlja2x5IGFzIHBvc3NpYmxlIHRvIG1pbmltaXplIHRoZSByYWNlIHdp
bmRvdy4NCj4gPiAtCSAqLw0KPiA+ICsJaW50ZWxfdmJsYW5rX2V2YWRlX2luaXQoY3J0Y19zdGF0
ZSwgY3J0Y19zdGF0ZSwgJmV2YWRlKTsNCg0KTWlzc2VkIHRvIHVwZGF0ZTogDQpTaG91bGQgdGhl
IDJuZCBhcmd1bWVudCBub3QgYmUgbmV3X2NydGNfc3RhdGUgPw0KDQo+ID4gIAlsb2NhbF9pcnFf
ZGlzYWJsZSgpOw0KPiA+DQo+ID4gKwlpZiAoIWRybV9XQVJOX09OKCZpOTE1LT5kcm0sIGRybV9j
cnRjX3ZibGFua19nZXQoJmNydGMtPmJhc2UpKSkgew0KPiA+ICsJCWludGVsX3ZibGFua19ldmFk
ZSgmZXZhZGUpOw0KPiA+ICsJCWRybV9jcnRjX3ZibGFua19wdXQoJmNydGMtPmJhc2UpOw0KPiA+
ICsJfQ0KPiA+ICsNCj4gPiAgCWlmIChuZXdfcGxhbmVfc3RhdGUtPnVhcGkudmlzaWJsZSkgew0K
PiA+ICAJCWludGVsX3BsYW5lX3VwZGF0ZV9ub2FybShwbGFuZSwgY3J0Y19zdGF0ZSwgbmV3X3Bs
YW5lX3N0YXRlKTsNCj4gPiAgCQlpbnRlbF9wbGFuZV91cGRhdGVfYXJtKHBsYW5lLCBjcnRjX3N0
YXRlLCBuZXdfcGxhbmVfc3RhdGUpOw0KPiA+IC0tDQo+ID4gMi40MS4wDQoNCg==
