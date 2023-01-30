Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 306EA680666
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jan 2023 08:19:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54D9D10E0CF;
	Mon, 30 Jan 2023 07:19:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6381B10E0CF
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Jan 2023 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675063193; x=1706599193;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=9MR3BJ7fP+CkKAoIl2faITLR9HUS9a3ySi85XsoQeOU=;
 b=juGpty1xLX9p/uI1LPmphT498MDVy8eeVtZ3F2W/YTtvw/FaJfQfmFFQ
 kNOc5MHktuoRS7ayqvFPABiY4Rt79GYgC/A1gq6hnNcCUQLrfP7svj8nV
 iSOPJ+lb7moRYlVtGIceyfCOOGeNeagL7PZw/ky1PcSMPli1Ffhgcg2OI
 xVV/BQHMxQnPKgB0rdNUYA33XFPneWSx/elF1jRBfkV/2QaLmwEe5YHSu
 q02OINg6sELDe5jQRvIwf85iiuTjTYWfL2T6/GM3yWwgqREWc07ZuetsF
 yzU6+HTcwza2YrCr56gt4u6HWXWENjirucjnsrumfJOpejmbd4nM3IhF7 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10605"; a="307838111"
X-IronPort-AV: E=Sophos;i="5.97,257,1669104000"; d="scan'208";a="307838111"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2023 23:16:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10605"; a="992789411"
X-IronPort-AV: E=Sophos;i="5.97,257,1669104000"; d="scan'208";a="992789411"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga005.fm.intel.com with ESMTP; 29 Jan 2023 23:16:00 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Sun, 29 Jan 2023 23:16:00 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Sun, 29 Jan 2023 23:16:00 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Sun, 29 Jan 2023 23:16:00 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Sun, 29 Jan 2023 23:15:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K92kQ1Pk2OvzEGu2+l2GOssZU6tbIBsbUgnO/HPYjst5Ic9Z/zZfJ5EjAq1kX8DPEDtaGOVX62c8YbjaOHa+0FKHuDt7C2fi1xP0jqQNcl2LFCdvbAYuaJXdOxtGwwk/ZdcZE2LZnAR3aVEz0bY4TRa1wgtcOU+iOtPTJA1vtoMJw5uBhHlqCzb/vCdmlOzoDhfvdSSRN7VS1Fyp3omY/c+VzzvtPPThGW2K8PiJ+iGaPeajqF7Z4u3FZFDEZ+k4BG0HqINg0gxobn8kFX0Tc6phsblVPdLKFhZW7BlONYHkIWBSDVE681XA+YouQ6i0X4SjwxjEP+04eNRgnITDDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9MR3BJ7fP+CkKAoIl2faITLR9HUS9a3ySi85XsoQeOU=;
 b=Etm59VTMrVf/t8VBi4c9x1xPsZ6/WyzrTPEWRZgik8uoSraj8U0AJbgAGJ2Efis9x97B35G/JvU/wcy9lsqY9AXHH5OKcbkuh9ioQ2S2g7sdYd2BXIynQj8rVNwCFWlxe/2WApE9p0LFayTl5JGs0gUnjwle1DDcXoJtUjoKD3pZn2QWErkDbRKs72LdGnzRCaZcgwUFDzPB60HIwYCFq9sDSjvd4T5omo02aK9hm6PzHUSUcxe8FFa38/r/6bO1Jg/nXOQ+B9yAldbrbqSViZBLx86vkre+ZJvrVKyEdMowTItQO2rOT8u4P5Pr0dXQPV3Huz1GYF5mPc1P5oXc5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 IA0PR11MB7838.namprd11.prod.outlook.com (2603:10b6:208:402::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.36; Mon, 30 Jan
 2023 07:15:56 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::6723:483:53a2:5569]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::6723:483:53a2:5569%5]) with mapi id 15.20.6043.036; Mon, 30 Jan 2023
 07:15:56 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/5] drm/i915/psr: Fix the delayed vblank w/a
Thread-Index: AQHZFf0gVEQ+DnTBLEmx5SOLsajFH662yWAA
Date: Mon, 30 Jan 2023 07:15:55 +0000
Message-ID: <2d4b16df3fe7a2d369887c8e7b919716c838b09e.camel@intel.com>
References: <20221222120048.8740-1-ville.syrjala@linux.intel.com>
 <20221222120048.8740-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20221222120048.8740-3-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|IA0PR11MB7838:EE_
x-ms-office365-filtering-correlation-id: 0af14de1-8776-4d57-85ee-08db0291d458
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: luIktHkVfY2w+VvdUz3OINeA72cjgW8eIH/C2ADo3a9hMHuOlDuXmvGpoEtMxzr4F4bEUpQfb8LQSs0jmxXfirDxno00bHX1H4KT+ff65Tek+O0tjgXj27Z8Qm8/QKHqbh7I5f4U2XCSBoLe5OWMoelruxFyS2dLMYSXexnKPzKuAZFfJKvwWkdgp4MyFenD38Jk/MTMe9EqcWYw/+Ibnrbs3YszE+lo3/QauOWbHDe2x9p0T/KjYLr/qlm+iTVlUaDs4Wa0aHN6S9mXq+Gk1dPnw17F5+hRurIefo5uN6QL35j2y/eJXTJAAxDzq4hnB6oJhQ6vtUwnkP6clt27v3tayMdwxMZEBoOvemYCYLi+nmA0NrO9Yapyzt2LsZQXE6yZ+EJLQ6Np1Xy785PC6XSqWjlYx6i8L4ae2bxNKMHy52v5qVILWL2WnyTF+2bWM/QjvQ13jy2TB18O8Tl/Pl1owbjv/vPns4P0+JTHRdExDKhWdFmzhB87t4pDoO562zY8DrhGP86cXEMdovMDCNfyG6eLZtJrkRR7P2jkv9dZtN11Mgp/2TD+wOxtnNXp0Nj9fmU4qPdBrH1BAjl+4Foquy5s6bpDZBJzVOvtsXVAUMt4uzDXV7LJSXuQjzXVZxx8fDcinPtG0ICkYn6QWk/CSSOI+xm9nllmnTHY5Ga2wd/d7K/GceNdUIYD4g/p0EKlUZ+NZdkx4Cd3jGJm1Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(39860400002)(136003)(366004)(396003)(376002)(451199018)(4001150100001)(5660300002)(8936002)(2906002)(86362001)(83380400001)(41300700001)(6506007)(91956017)(66556008)(76116006)(8676002)(110136005)(36756003)(64756008)(66446008)(66946007)(478600001)(66476007)(6512007)(26005)(6486002)(71200400001)(186003)(38100700002)(38070700005)(2616005)(316002)(82960400001)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZW5hZVRMSmUrT1BqdXh0TTJmQmhCK1BHcStrbXYvR0V5VlpZTWlCRmQwYUlo?=
 =?utf-8?B?RXZiZm00RjRyUWVWNjErZE0zL0EwaWJaTSs2VkxXS1RKN0pveU1kNmNnS3c3?=
 =?utf-8?B?RE5VQ3k5MXZhbmxxMm1xTlY5TFl0eGowQlR5YXI5Z1Y1MnE3c3pEVkpTVkJr?=
 =?utf-8?B?Q01hWjZrOHlpSmhkRFFPNW9ubXRNZWpuakk3VmhKV3haOVRqaGk5eC9ONVZK?=
 =?utf-8?B?RHdSN3ZFaUIzUFFCQTg1cVB4U3g3Q0VwNVpxNWNHdjcwRGpQTmtsTXR5aDJI?=
 =?utf-8?B?MEJYdWtnbDgwU28vUVdPVlNMK0lscmU4SG5neW5JWEVTMzlzZUNBT1lxNnh3?=
 =?utf-8?B?Q09XV2NqSDlrVUlEcWF3cTFsdDkveC91V3JaZmJGQmZaRGpHNzJkcS9qbFZQ?=
 =?utf-8?B?WnRHYVhaNzZ4aVVINjZlNERDREVzc2FNNTVvM2owV1FTT0lkZCtnakJMdGhU?=
 =?utf-8?B?eXZyUFdiZUsvWEZNekRoaTArVDRITitOUWVLdEQxcDVhOUhQeStUblpRK2xQ?=
 =?utf-8?B?cmRnYTVWYmlPbUxyOEg5MW9nN3VuSmVrYi9nV1dZQzZnaGJodG44UC92K0lV?=
 =?utf-8?B?RzY0aUF2cE9zQ2paazExeEJHb2svd2kwQjRaYW9MUUhzTUFKLzlpcFBiOTJP?=
 =?utf-8?B?cmRuRXp0c1J2eEFKSVBrWFdiSXV3dUlITmVRK1JGKzZuZEhhN0NBRmpjSm55?=
 =?utf-8?B?QW1lNVlBdk5yWVhWYkNDSzhIb05lN0FYcDV4dGxmbTUzM1VTYWRFU1hZdkFt?=
 =?utf-8?B?ZTkvL2RkbWRRQlVsa1BEL29SQmtSUXJMRmQrMDdhUEJ2ZG15NUVwWDFGeHVs?=
 =?utf-8?B?YzVHNEVVMXY4N0JoVmpCYnJCY3FwUko1MTlPalF2Z2MvS21CQkhXZC91UFJ3?=
 =?utf-8?B?cjNQUDZHWndvNzNXL21oM2MraFV2SWdJNUo4dlhDODVYem5WZHZJMzdmM0xQ?=
 =?utf-8?B?bEhBZW5pZFNYcWhkQmFKYzlmNWFJNEdIa2x6Ti83VTJZRVBrNTRvTmsxSko0?=
 =?utf-8?B?SHROWCtmWHRmVnFDenE0djJ6ZjVkdEVKeEI5UEZxbkxPd2d5Q3NoWXUwL2lk?=
 =?utf-8?B?VDl3RmIvQ2ppV2toU0ErR0pqanFRTkxGSXZIdUlqcVlLN3IyNFZ0VlhPdTBY?=
 =?utf-8?B?QWx3U1ZOamgvanQyMEdIZm1SbXJEbGFhZ2dGZEVKdWovdnc4dzBvNHFxYWV3?=
 =?utf-8?B?Qmw2NDdpd2w5REViOGhOaG5Ia21pOHNoUktldmQ5SW82ZXlxdG5WTFNNVFUw?=
 =?utf-8?B?L09QazFMcEZFa0JpYU1XY1B3b2pjaURXQ2tVTlZhNmt2T2syRUc1d2IwTFV4?=
 =?utf-8?B?N0IwL3FjcUN2Z09ZVFpRK29FdWpTVFlrOGJWVlJaMURmQmhYQVZIdjhMeXV0?=
 =?utf-8?B?eDJoMGFTUlBXRVBCcTJvdGFGUmdBbE80MGp1RUdxV0JDcjlyb0JxWFVXdjAw?=
 =?utf-8?B?ZEV4TW1lRzBVY0VyTzAwMFUzd0IxaEt1d0VhOUY2TXNyWWt6YXJiWnhOcEpz?=
 =?utf-8?B?Q3NzcVFiaFdXcDB5TkIvendzUmtqMHRrR1p6YVpVQklXejArNVoyK0xTdGFi?=
 =?utf-8?B?RXA4QWtPM29oWEd4Tk5aOUR1UkVaWWV4T3pmNkd5VjBpQTRPZ1lZdWppQlBM?=
 =?utf-8?B?VU1EaVVRMjVOQ3ZLcDVUQ3VjOVlHUW1yVEJNL3QySGF5QXgraTZQVEpqQzBa?=
 =?utf-8?B?bmZhNEU4enhMeGdhVFVQdDdpUFp4L2svOU5DMlNlS2F5MW5WQ1FDWGRXRVZS?=
 =?utf-8?B?clo4TlBIOGgwbEdVaWJoSTFFY1Y2V050cXpBbXFvaDVGbWlWTE1aRU9UWith?=
 =?utf-8?B?UzFXR0hySTBHRThteUExSUhsSW9uMXVab3BZTjNnRjhYU3RnREVZcG1rTU1J?=
 =?utf-8?B?bUVFK2p2UHd2SzR1KzFzZjYxbHNPMUtQcmpmU1NPNlBHT2RkSm5PbXhRek5C?=
 =?utf-8?B?RERFblF1aU0xalppMVVOc2NtSFVuMmxDWkYyQVNhY1FidEJWenIwelVMcDVH?=
 =?utf-8?B?dW1OUXJOMjYwekxuRXUzYXFFUzRjbTJOcVJXdlZTRGhmMDlnQVlhNmphK1BF?=
 =?utf-8?B?Qm1hZzkwNzhKcEtuK1g0T21MSS93R0l0djJ4alZoMm8wVG9acFBpYm1GaFl3?=
 =?utf-8?B?aEtwMmVCb25mZ3hOcHo1RDJrV3drakhIK0l4bFB6R1dDQ1ZRU0pEd0MxZCsx?=
 =?utf-8?B?WUE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <0679FF177249AF4CAC9FF8B180130C90@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0af14de1-8776-4d57-85ee-08db0291d458
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jan 2023 07:15:55.8829 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EBh4AOAaaFyYkJLerIe0q3WPmw1g4aEa3dyiXT04hLpjkSdOY7zLOEeL30QogyLGzH/rhfjjMd1lvJBihdS8SNT+91WQXXm2Q+g/eTUUl9k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7838
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915/psr: Fix the delayed vblank w/a
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

T24gVGh1LCAyMDIyLTEyLTIyIGF0IDE0OjAwICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOgo+
IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4g
Cj4gRml4IHRoZSBjb2RlIHRvIGNvcnJlY3RseSBkZXRlcm1pbmUgd2hldGhlciBkZWxheWVkIHZi
bGFuawo+IGlzIHVzZWQgb3Igbm90LgoKUmV2aWV3ZWQtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91
bmkuaG9nYW5kZXJAaW50ZWwuY29tPgoKPiAKPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rs
w6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IC0tLQo+IMKgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDkgKystLS0tLS0tCj4gwqAxIGZpbGUgY2hh
bmdlZCwgMiBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCj4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCj4gaW5kZXggOTgyMGU1ZmRkMDg3Li43MGJkNGU2
OTgzNGMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPiBA
QCAtMTIwMCwxMyArMTIwMCw4IEBAIHN0YXRpYyB2b2lkIGludGVsX3Bzcl9lbmFibGVfc291cmNl
KHN0cnVjdAo+IGludGVsX2RwICppbnRlbF9kcCwKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoC8qIFdhXzE2MDEzODM1NDY4OnRnbFtiMCtdLCBkZzEgKi8KPiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoGlmIChJU19UR0xfRElTUExBWV9TVEVQKGRldl9wcml2LCBTVEVQ
X0IwLAo+IFNURVBfRk9SRVZFUikgfHwKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBJU19ERzEoZGV2X3ByaXYpKSB7Cj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqB1MTYgdnRvdGFsLCB2Ymxhbms7Cj4gLQo+IC3CoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdnRvdGFsID0gY3J0Y19zdGF0ZS0K
PiA+dWFwaS5hZGp1c3RlZF9tb2RlLmNydGNfdnRvdGFsIC0KPiAtwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY3J0Y19zdGF0ZS0K
PiA+dWFwaS5hZGp1c3RlZF9tb2RlLmNydGNfdmRpc3BsYXk7Cj4gLcKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB2YmxhbmsgPSBjcnRjX3N0YXRlLQo+ID51YXBp
LmFkanVzdGVkX21vZGUuY3J0Y192YmxhbmtfZW5kIC0KPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY3J0Y19zdGF0ZS0KPiA+
dWFwaS5hZGp1c3RlZF9tb2RlLmNydGNfdmJsYW5rX3N0YXJ0Owo+IC3CoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKHZibGFuayA+IHZ0b3RhbCkKPiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlmIChjcnRjX3N0YXRl
LQo+ID5ody5hZGp1c3RlZF9tb2RlLmNydGNfdmJsYW5rX3N0YXJ0ICE9Cj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY3J0Y19zdGF0ZS0KPiA+
aHcuYWRqdXN0ZWRfbW9kZS5jcnRjX3ZkaXNwbGF5KQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9kZV9ybXcoZGV2
X3ByaXYsCj4gR0VOOF9DSElDS0VOX0RDUFJfMSwgMCwKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgCj4gd2FfMTYwMTM4MzU0NjhfYml0X2dldChpbnRlbF9kcCkpOwo+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgfQoK
