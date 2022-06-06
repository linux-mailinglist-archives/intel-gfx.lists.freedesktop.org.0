Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D44653E17C
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jun 2022 10:03:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A62B1129AD;
	Mon,  6 Jun 2022 08:03:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6F2B1129AD
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jun 2022 08:03:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654502587; x=1686038587;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=Bw7HfF02AL6Q3h3wsSdI+sfRaIpTMi7Z2xqbEMmMbDw=;
 b=mIjCLlrP4akDaJB59RJ+KQuOYJH3d/UH10eFnL9K3v2TKvFzZlVccBkA
 H2nUOT4EH0wSikX+AjOjt4dl3PyRsqMFUzC+emO/ZozTF2+wqSH6HOZol
 7DZQX5UMTtT8ogrp7m49rAI0vGjQ+LXNKQjjbHRdyYd3OZY1D/IrS1f5T
 dA48ELaObSBP2CMtavErcnshaaI8aLRmdYgTChKhJIo5I/sDHOwA6b4s4
 JDitkIne+mT8uGQ0mRDfBIGckTcZ3hO0IG5ojY+suXE9AcFioRx1qmQ50
 ry7VcYrFJVVl0fSPdyGABooYdspUTfWieFmZD4/8FUdnAmG3SBqh1h2A2 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10369"; a="256473494"
X-IronPort-AV: E=Sophos;i="5.91,280,1647327600"; d="scan'208";a="256473494"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2022 01:03:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,280,1647327600"; d="scan'208";a="682147775"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga002.fm.intel.com with ESMTP; 06 Jun 2022 01:03:07 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 6 Jun 2022 01:03:06 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 6 Jun 2022 01:03:06 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 6 Jun 2022 01:03:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Bxdhb2BtkienwM6kjNhy/y3axP5bQxvtyIZ1C/UDbqELymOCLLLILbXlZ53BMgdanOac5WvjslhQ2dTzL9h4BDmj9Hp1TqT5hFX2RC7SC6CHKJ6gtncl/UU/cAysoCGZszfINQNEkjdbtAd2xeCe9dRIlQ9mFMwMs+vbjm9IrIZCh4IZbQWEMwYSKa9h/+5Z+wcNn0i9k9J4e12bQ9jOLH+5SLrQ35mW+Z3EB+djPoIfNPAm5U+iLYNROm8vMEwsUczfdpI39XK7N5euWceJ1Mgb1s/lTT20kGddd0DK6KkEzggf/5WtoZzI4QUXrQH2+ABKUy0TjOFpYGOpOGJn7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Bw7HfF02AL6Q3h3wsSdI+sfRaIpTMi7Z2xqbEMmMbDw=;
 b=oEl2lKUju2m95fXJiQUf7FUNOp26a1E0WWg9Q7XHW5G1ewirKJ0IG3lE1PEe0NtTlL1NgJTZTKMX+MIUVg8rz6cSIswBIS+gr/MFcuXktN4sVdxiqgLmHbG7ciXpNccUX9pl2Os/0cajIWhsjIaiHJwyVcL0OYaZu37sRQRm5K1ozvOxtcPGfAa7ua/hFcv1iyRCSvLWJhLkjB1f2bm4xXz3kcXGTYaC6yMPfwLAt9x+/7UWbWjVxdVL+SgqrgznGHvgcXX7n1aly/luc2mOAPiFbM8eRFb9IRg4rb2ICM3K/kD2eHiYS/YDCxKeoeoAhUDf4f8Xcqp2t7dRbieWfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DS7PR11MB6126.namprd11.prod.outlook.com (2603:10b6:8:9e::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5314.19; Mon, 6 Jun 2022 08:03:04 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::a4a2:3569:ce75:fd0f]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::a4a2:3569:ce75:fd0f%3]) with mapi id 15.20.5314.019; Mon, 6 Jun 2022
 08:03:04 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>, "Souza, Jose"
 <jose.souza@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915/opregion: add function to check
 if headless sku
Thread-Index: AQHYdzK5I5Fh8Y/l3EawA39lhGFtWq09oLGAgAAIngCAADdkgIAEKJiA
Date: Mon, 6 Jun 2022 08:03:04 +0000
Message-ID: <f69cf635fc2da871baee0bbbbf946addf9a35ddf.camel@intel.com>
References: <20220603101411.3087789-1-jouni.hogander@intel.com>
 <20220603101411.3087789-2-jouni.hogander@intel.com>
 <87k09xor2e.fsf@intel.com>
 <eeac0a25543a75cbeb39eaa61a1abbfdcfb94a6f.camel@intel.com>
 <0069e1028bfccf5f1c3f7b8d8a129c202f4cf764.camel@intel.com>
In-Reply-To: <0069e1028bfccf5f1c3f7b8d8a129c202f4cf764.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a5fed550-ae7f-4a3c-7fda-08da4792fbf0
x-ms-traffictypediagnostic: DS7PR11MB6126:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <DS7PR11MB612617BEAAE741552EB55F2B8AA29@DS7PR11MB6126.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: O8kTCm5+4/RTvr4D7MtL152Pf40S7vmwK6tA120Zo5qVGrJzHHHuMW79VyjPRGwTSGph7OuudLGvtcS6cL8+8MkvtZ/K1rgCgz2LmVUPkg2d9irKK64Jw9wS+fFL/e8MOXGkrFVVWWddRxY4l+C7Y4j3+PXW8lr7ib2vo1O0D8nbNg4ndLU4rNlQSWDqVswmehdXGqlbxfmlp7eaeddp+0cPLnRu6UJEe4D94rztTqkuJDM1heI3rC8Q0ig8QZLgbWtPZALxDwy1o7DlAuM3ah+KY2Ph32/H1cLnj3C30Oe5u4e/MK6gohWhhF1Unb6VnmRx/mLtT5xs0a1Cz9dpAyLwE8fdQkyM/PvAmUeHLVKeFSYDRO3fgUiHVPv1AyE0ZzsY/rJ4RoMdGWHN/AqEtRVcZ36qtSHQTkdgJygE4FhssN26adpEnnv1SZFG5Fe0kI4DmkUlzxb2c89lUTsnN+0R0vSKyAFbbj+rI7Akx0d4apUZou98hgaeDXBQVXQ+Dvzv7COwHdQjsZChy5UmsvzwV6KQbP44VDJLuDWcMJ77bCj01141+nJP7n2QWl4wbgVvngf9Fqm0wh8mwHFPT5DNsMZaVj0ElcpiPeAr3mE/ee+yXekz/i9SiUvJWVIyvWiTy2m0Vife1bh6ZRNU7FWW1F9C6Fjkn7DAcFMKVSgCvuRFHKwtwtLZgErMDPfhSFoOt16iFlOLyyRGIZGN6A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(83380400001)(6506007)(2906002)(508600001)(8936002)(86362001)(6486002)(186003)(2616005)(8676002)(66946007)(38100700002)(64756008)(91956017)(66574015)(110136005)(71200400001)(6636002)(36756003)(82960400001)(76116006)(66446008)(66476007)(26005)(38070700005)(6512007)(122000001)(316002)(5660300002)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?azUzOVlDRmp2WmwvU2FvQjBwUUtydGQ3L3F1M3pvYlNsTFVqcXV1RTJXNHd4?=
 =?utf-8?B?anM4OW1Gc1crbGFjNS8wOC9rOWtxM0RpT2Y0Vmc2elc3bWFyQndOdFp6SUVo?=
 =?utf-8?B?MzVlclJTeHY4Y3lmWDJqVVB6a0crd205NWUvZlhCdWJFQ29GV0NkN1l2a3hO?=
 =?utf-8?B?UGEvckU4Q2RyZUhja2xKdlJiTnFEcXRWNmZETDZtdGZLUy9KLytlVFFKRzc1?=
 =?utf-8?B?dDgyVE11dlNJZE5uYm80UjRzNERSWnhYdk53ekttWnJiZ3Rlc2luREVyYkFz?=
 =?utf-8?B?R1Y0MHZkbkpSakJtRWdyTFVGQVE3YVc1OTRZZGh3bzExUnphMzBDSGFqMW9h?=
 =?utf-8?B?VVplaWdmOGljaEV1eEgxQm8vMC9KdmwzWkUxdEs4UkNOWVlKaVo0aU9GTEVH?=
 =?utf-8?B?Q3JSVklpRlJCeUkxb3pkYWduMmhWa1hNOXpGNExKYWRsL01SZFFBeHg1d0Q3?=
 =?utf-8?B?Q2NwSy9nNzFGTVEwS0d2Y0tiMGk4Uy9ZV0xvLzBpa3JWbFhnNlk0c3Zsb3No?=
 =?utf-8?B?d2I3a0pQdW1BRW9sdFpqdmFpM1B6U3IrVW9UYlBlajBSdHZLZ2xNQlRNUS9H?=
 =?utf-8?B?WVZjVEFIOFI0SUVoSWswdmkyN1kyeldUMlBueDdNbEZKSFkxU3BiSUxLK0FD?=
 =?utf-8?B?ZVNFSUxwUVZYRWljWWh1aGErcXhtUEJOZ20xUWhoNFJDQWJaN1NiV2VhZVh6?=
 =?utf-8?B?WllEeEM4ck8yajREUkJkU0lQZ1ZYWTE2NEpSeTZnY0dmbTRTaTZxUXhwVWhL?=
 =?utf-8?B?QlZmaFBwNGJUazcyV1dOSmU1WGwwOHZQSFI4QU1PUGZvSUFSeTRCQzltYkNU?=
 =?utf-8?B?SXd2QVp1YjRwTFVOejlMNnRqeEl6TTN5VTVnbTUraUdMRGhGK1ZDa1NydVNs?=
 =?utf-8?B?RnNGbzlkUVNHd254RGY1b050b2tmeTRGT0FybHBoUEd6S2NPNmtwQWhmSmIw?=
 =?utf-8?B?SXpnSWxySXRzd1BoTTN6YS9ka2hFeXJTMHAxVlovc3l4MDZYbmMraEpXa21l?=
 =?utf-8?B?RjV1NFdHYi9ObHIycUUwUmhodTR0eFdaMkZ4MUo4TnFxcy92b0dXelJ1Yld2?=
 =?utf-8?B?dk5WVjJMVGM1cVpFVklvRTB3NVRrRFB6a08vMld3QjJURFBzMXV5VEs5VjNC?=
 =?utf-8?B?TzNQOFZLQUNxcTZnckoxalJ1L1pzdWZIWTJiLzVHbGx2eGp5bmQxS1lVQ3Ju?=
 =?utf-8?B?c2d2MVZZR1hIY004Sm9PTXYxWUIwQ1ZZcnhYOEtTaDVoOHBjVzRNOWJZL0ZR?=
 =?utf-8?B?MWVMeW9sSWFZdUV2ajJWNElYUlBXZVZZVm5WYUtYdDUyYlNSSmdLb3QxUmRz?=
 =?utf-8?B?UHpWNklYNXRhRkJnMWZVSUFweXNIRXA3eXVxdWhQSEhPd0pHckU0QUlCMmRK?=
 =?utf-8?B?UEtBMVppY2ZvUkxHVXRuSVdMYXNKdi9Jdlp1enRpQ1lBLzAvdjN5cVpXRG1B?=
 =?utf-8?B?dUVoV3ZQbTZ6MVQ5L2tMZ0JMV2RqamNabE9oWGpEc1hwUkVTQk9xTXRKbGtV?=
 =?utf-8?B?R09OenhnQ1hXbnlDM0Iwck5YQ2hzNEpTZ1pqL0JrTFczS00wdXNxd2Zyb1pp?=
 =?utf-8?B?dFNnRWszQ2dwV3Nob3dJVmVFM0pGV21YYmU4NDBKeGtsb2ZxL3A5Qk9BYTdK?=
 =?utf-8?B?MUVGNytmRGZoQ0p4YjJPLzI0cUZDUDlrbFVXMHhhZzR4OGNXNUJ3STliNm0r?=
 =?utf-8?B?NjNhTC9RYjlaTkVOS2dST1NUZFFNRFovQVdSejdEV0Q0b3QvVTZYYUcyWGVx?=
 =?utf-8?B?Q2lXYnV1SFBtMFp6V2hBakxrVDlxU3B3TEQ5T2dVekV3U0EzMTI1TW5ybG52?=
 =?utf-8?B?WFNDaXpLcjlTN1R1L1ZkSHAyZjVVRGpaMU1HTmRudEhtem5IZUxFVWxFR0cz?=
 =?utf-8?B?ak41L3ZjeVJFeHE4S1JpQ0E3VXBmTUI3Z3lJalFKZHV6YmFHWXROdUFpNGps?=
 =?utf-8?B?RWQ1bjZzcitpNnZvRUM2NkpOVXFENlNtcCtDaWNVZVFtVkdOU1liRjZaS1Q2?=
 =?utf-8?B?ZmlJVGZsN01aK0lQWVIxMzgyd0habWU2ZHdSaC85RGY4V2J5aDFCL1Bvdzl5?=
 =?utf-8?B?YkgzOW8yVnlVckI0L1V0S2xHL295d01FejBXbi8wMVdscGpmSkxyR3JyZXg3?=
 =?utf-8?B?V0RuMmsrTW1JYk91aVJtQ0dHNW1xY3p0aDNLaldKTTdxR0VLSVcxSFUzSWxH?=
 =?utf-8?B?RkNVbGV2S2cwRlJaL0gzanhKSDA4M28wbHBJeWo3WTh4UVJld2pwSXpaUC9I?=
 =?utf-8?B?OGM5QXR2c1FWK2JXMmJlZ1QrR0ZTTklOV3JZU2RIWStYaWhoY3E1cGhCYUdL?=
 =?utf-8?B?UTJSbzBCRkRRUkpVZ1FTdzhKVG94VlJDcGNtekV4SzFVd1VlS0tlU1RvU2Nk?=
 =?utf-8?Q?/QMnK8vQfpcKNaebUKZPFaJpAbqTVCekTjSW2?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F8E256F10C1B114881EDAB773628745D@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a5fed550-ae7f-4a3c-7fda-08da4792fbf0
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2022 08:03:04.3517 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IoMv7ZCjb7BUl1yDtIO9Lf+YNRghxtLCLhdY2zIiHFBhPy371kUUQc+S0jo/CGvDyM3Znk5rVr9Q4/yzYA0pNaJzMxzf2DoHxRdHjMP9RAk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6126
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/opregion: add function to
 check if headless sku
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

T24gRnJpLCAyMDIyLTA2LTAzIGF0IDE2OjMyICswMDAwLCBTb3V6YSwgSm9zZSB3cm90ZToNCj4g
T24gRnJpLCAyMDIyLTA2LTAzIGF0IDEzOjE0ICswMDAwLCBIb2dhbmRlciwgSm91bmkgd3JvdGU6
DQo+ID4gT24gRnJpLCAyMDIyLTA2LTAzIGF0IDE1OjQzICswMzAwLCBKYW5pIE5pa3VsYSB3cm90
ZToNCj4gPiA+IE9uIEZyaSwgMDMgSnVuIDIwMjIsIEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9n
YW5kZXJAaW50ZWwuY29tPg0KPiA+ID4gd3JvdGU6DQo+ID4gPiA+IEV4cG9ydCBoZWFkbGVzcyBz
a3UgYml0IChiaXQgMTMpIGZyb20gb3ByZWdpb24tPmhlYWRlci0+cGNvbiBhcw0KPiA+ID4gPiBh
bg0KPiA+ID4gPiBpbnRlcmZhY2UgdG8gY2hlY2sgaWYgb3VyIGRldmljZSBpcyBoZWFkbGVzcyBj
b25maWd1cmF0aW9uLg0KPiA+ID4gPiANCj4gPiA+ID4gQnNwZWM6IDUzNDQxDQo+ID4gPiA+IFNp
Z25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0K
PiA+ID4gPiAtLS0NCj4gPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
b3ByZWdpb24uYyB8IDEyDQo+ID4gPiA+ICsrKysrKysrKysrKw0KPiA+ID4gPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9vcHJlZ2lvbi5oIHwgIDcgKysrKysrKw0KPiA+ID4g
PiAgMiBmaWxlcyBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspDQo+ID4gPiA+IA0KPiA+ID4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9vcHJlZ2lvbi5j
DQo+ID4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9vcHJlZ2lvbi5j
DQo+ID4gPiA+IGluZGV4IGYzMWU4YzNmOGNlMC4uZWFiM2YyZTZiNzg2IDEwMDY0NA0KPiA+ID4g
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX29wcmVnaW9uLmMNCj4g
PiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9vcHJlZ2lvbi5j
DQo+ID4gPiA+IEBAIC01Myw2ICs1Myw4IEBADQo+ID4gPiA+ICAjZGVmaW5lIE1CT1hfQVNMRV9F
WFRCSVQoNCkvKiBNYWlsYm94ICM1ICovDQo+ID4gPiA+ICAjZGVmaW5lIE1CT1hfQkFDS0xJR0hU
QklUKDUpLyogTWFpbGJveCAjMg0KPiA+ID4gPiAodmFsaWQgZnJvbSB2My54KSAqLw0KPiA+ID4g
PiANCj4gPiA+ID4gKyNkZWZpbmUgUENPTl9IRUFETEVTU19TS1VCSVQoMTMpDQo+ID4gPiANCj4g
PiA+IEhlcmUgd2UgZ28gYWdhaW4uDQo+ID4gPiANCj4gPiA+IFdoYXQgZG9lcyBoZWFkbGVzcyBt
ZWFuIGhlcmU/IFRoZSBzcGVjIGRvZXMgbm90IHNheS4gRG9lcyBpdCBoYXZlDQo+ID4gPiBkaXNw
bGF5IGhhcmR3YXJlPyBBcHBhcmVudGx5IHllcywgc2luY2Ugb3RoZXJ3aXNlIHdlIHdvdWxkbid0
IGJlDQo+ID4gPiBoZXJlLg0KPiA+IA0KPiA+IFRoaXMgaXMgZm9yIGh5YnJpZCBzZXR1cCB3aXRo
IHNldmVyYWwgZGlzcGxheSBodyBhbmQgdGhlIHBhbmVsIHdvbnQNCj4gPiBiZQ0KPiA+IGNvbm5l
Y3RlZCBpbnRvIGRldmljZSBkcml2ZW4gYnkgaTkxNSBkcml2ZXIuDQo+ID4gDQo+ID4gPiBXZSBo
YXZlIElOVEVMX0RJU1BMQVlfRU5BQkxFRCgpIHdoaWNoIHNob3VsZCBkbyB0aGUgcmlnaHQgdGhp
bmcNCj4gPiA+IHdoZW4NCj4gPiA+IHlvdQ0KPiA+ID4gZG8gaGF2ZSBkaXNwbGF5IGhhcmR3YXJl
IGFuZCBoYXZlIGRvbmUgb3V0cHV0IHNldHVwIGV0Yy4gYnV0IHdhbnQNCj4gPiA+IHRvDQo+ID4g
PiBmb3JjZSB0aGVtIGRpc2Nvbm5lY3RlZCwgaS5lLiB5b3UgdGFrZSB0aGUgaGFyZHdhcmUgb3Zl
cg0KPiA+ID4gcHJvcGVybHksDQo+ID4gPiBidXQNCj4gPiA+IHB1dCBpdCB0byBzbGVlcCBmb3Ig
cG93ZXIgc2F2aW5ncy4NCj4gPiA+IA0KPiA+ID4gTWF5YmUgd2Ugc2hvdWxkIGJvbHQgdGhpcyBv
cHJlZ2lvbiBjaGVjayBpbiB0aGF0IG1hY3JvPw0KPiA+ID4gDQo+ID4gPiBNYXliZSB3ZSBuZWVk
IHRvIHVzZSBJTlRFTF9ESVNQTEFZX0VOQUJMRUQoKSBhbHNvIHRvIHByZXZlbnQNCj4gPiA+IHBv
bGxpbmcuDQo+ID4gDQo+ID4gVGhhbmsgeW91IGZvciBwb2ludGluZyB0aGlzIG91dC4gSEFTX0RJ
U1BMQVkgSSBhbHJlYWR5IG5vdGljZSBhbmQNCj4gPiBpdCdzDQo+ID4gbm90IHN1aXRhYmxlIGZv
ciB3aGF0IHdlIHdhbnQgaGVyZS4gSSB0aGluayBib2x0aW5nIHRoaXMgY2hlY2sgaW50bw0KPiA+
IElOVEVMX0RJU1BMQVlfRU5BQkxFRCBhcyB5b3Ugc3VnZ2VzdGVkIGlzIGVub3VnaC4gVGhhdCB3
aWxsIHByZXZlbnQNCj4gPiB3YWtpbmcgdXAgdGhlIGh3IGludG8gRDAgc3RhdGUgZm9yIHBvbGxp
bmcuDQo+IA0KPiBBIGhlYWRsZXNzIHNrdSBzaG91bGQgbm90IGhhdmUgYW55IERESSBwb3J0cyBl
bmFibGVkLCBtdWNoIGVhc2llcg0KPiBjaGVjayBmb3IgdGhhdC4NCg0KQ291bGQgeW91IHBsZWFz
ZSBjbGFyaWZ5IHRoaXMgYSBiaXQ/IFdoYXQgZXhhY3RseSB5b3UgYXJlIHRoaW5raW5nDQpzaG91
bGQgYmUgY2hlY2tlZD8gQXJlbid0IERESSBwb3J0IGFsc28gZGlzYWJsZWQgd2hlbiBub24taGVh
ZGxlc3MNCnNldHVwIGlzIGluIHJ1bnRpbWUgc3VzcGVuZD8NCiANCj4gDQo+ID4gPiBJIGNlcnRh
aW5seSB3b3VsZCBub3Qgd2FudCB0byBhZGQgYW5vdGhlciBtb2RlIHRoYXQncyBzZXBhcmF0ZQ0K
PiA+ID4gZnJvbQ0KPiA+ID4gSEFTX0RJU1BMQVkoKSBhbmQgSU5URUxfRElTUExBWV9FTkFCTEVE
KCkuDQo+ID4gDQo+ID4gTm8gbmVlZCBmb3IgdGhpcy4gSSB0aGluayB3ZSBjYW4gZ28gd2l0aCBJ
TlRFTF9ESVNQTEFZX0VOQUJMRUQuDQo+ID4gPiA+ICsNCj4gPiA+ID4gIHN0cnVjdCBvcHJlZ2lv
bl9oZWFkZXIgew0KPiA+ID4gPiAgdTggc2lnbmF0dXJlWzE2XTsNCj4gPiA+ID4gIHUzMiBzaXpl
Ow0KPiA+ID4gPiBAQCAtMTEzNSw2ICsxMTM3LDE2IEBAIHN0cnVjdCBlZGlkDQo+ID4gPiA+ICpp
bnRlbF9vcHJlZ2lvbl9nZXRfZWRpZChzdHJ1Y3QNCj4gPiA+ID4gaW50ZWxfY29ubmVjdG9yICpp
bnRlbF9jb25uZWN0b3IpDQo+ID4gPiA+ICByZXR1cm4gbmV3X2VkaWQ7DQo+ID4gPiA+ICB9DQo+
ID4gPiA+IA0KPiA+ID4gPiArYm9vbCBpbnRlbF9vcHJlZ2lvbl9oZWFkbGVzc19za3Uoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUNCj4gPiA+ID4gKmk5MTUpDQo+ID4gPiA+ICt7DQo+ID4gPiA+ICtz
dHJ1Y3QgaW50ZWxfb3ByZWdpb24gKm9wcmVnaW9uID0gJmk5MTUtPm9wcmVnaW9uOw0KPiA+ID4g
PiArDQo+ID4gPiA+ICtpZiAoIW9wcmVnaW9uLT5oZWFkZXIpDQo+ID4gPiA+ICtyZXR1cm4gZmFs
c2U7DQo+ID4gPiA+ICsNCj4gPiA+ID4gK3JldHVybiBvcHJlZ2lvbi0+aGVhZGVyLT5wY29uICYg
UENPTl9IRUFETEVTU19TS1U7DQo+ID4gPiANCj4gPiA+IFdlIHNob3VsZCBwcm9iYWJseSBzdGFy
dCBjaGVja2luZyBmb3Igb3ByZWdpb24gdmVyc2lvbiBmb3IgdGhpcw0KPiA+ID4gc3R1ZmYNCj4g
PiA+IHRvby4NCj4gPiA+IA0KPiA+IA0KPiA+IFllcywgSSB3aWxsIGRvIHRoaXMgY2hhbmdlLg0K
PiA+IA0KPiA+ID4gQlIsDQo+ID4gPiBKYW5pLg0KPiA+ID4gDQo+ID4gPiA+ICt9DQo+ID4gPiA+
ICsNCj4gPiA+ID4gIHZvaWQgaW50ZWxfb3ByZWdpb25fcmVnaXN0ZXIoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmk5MTUpDQo+ID4gPiA+ICB7DQo+ID4gPiA+ICBzdHJ1Y3QgaW50ZWxfb3ByZWdp
b24gKm9wcmVnaW9uID0gJmk5MTUtPm9wcmVnaW9uOw0KPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9vcHJlZ2lvbi5oDQo+ID4gPiA+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9vcHJlZ2lvbi5oDQo+ID4gPiA+IGluZGV4
IDgyY2MwYmEzNGFmNy4uNWFkOTZlMWQ4Mjc4IDEwMDY0NA0KPiA+ID4gPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX29wcmVnaW9uLmgNCj4gPiA+ID4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9vcHJlZ2lvbi5oDQo+ID4gPiA+IEBAIC03
Niw2ICs3Niw4IEBAIGludCBpbnRlbF9vcHJlZ2lvbl9ub3RpZnlfYWRhcHRlcihzdHJ1Y3QNCj4g
PiA+ID4gZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+ID4gPiA+ICBpbnQgaW50ZWxfb3By
ZWdpb25fZ2V0X3BhbmVsX3R5cGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUNCj4gPiA+ID4gKmRl
dl9wcml2KTsNCj4gPiA+ID4gIHN0cnVjdCBlZGlkICppbnRlbF9vcHJlZ2lvbl9nZXRfZWRpZChz
dHJ1Y3QgaW50ZWxfY29ubmVjdG9yDQo+ID4gPiA+ICpjb25uZWN0b3IpOw0KPiA+ID4gPiANCj4g
PiA+ID4gK2Jvb2wgaW50ZWxfb3ByZWdpb25faGVhZGxlc3Nfc2t1KHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlDQo+ID4gPiA+ICppOTE1KTsNCj4gPiA+ID4gKw0KPiA+ID4gPiAgI2Vsc2UgLyogQ09O
RklHX0FDUEkqLw0KPiA+ID4gPiANCj4gPiA+ID4gIHN0YXRpYyBpbmxpbmUgaW50IGludGVsX29w
cmVnaW9uX3NldHVwKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlDQo+ID4gPiA+ICpkZXZfcHJpdikN
Cj4gPiA+ID4gQEAgLTEyNyw2ICsxMjksMTEgQEAgaW50ZWxfb3ByZWdpb25fZ2V0X2VkaWQoc3Ry
dWN0DQo+ID4gPiA+IGludGVsX2Nvbm5lY3Rvcg0KPiA+ID4gPiAqY29ubmVjdG9yKQ0KPiA+ID4g
PiAgcmV0dXJuIE5VTEw7DQo+ID4gPiA+ICB9DQo+ID4gPiA+IA0KPiA+ID4gPiArYm9vbCBpbnRl
bF9vcHJlZ2lvbl9oZWFkbGVzc19za3Uoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUNCj4gPiA+ID4g
Kmk5MTUpDQo+ID4gPiA+ICt7DQo+ID4gPiA+ICtyZXR1cm4gZmFsc2U7DQo+ID4gPiA+ICt9DQo+
ID4gPiA+ICsNCj4gPiA+ID4gICNlbmRpZiAvKiBDT05GSUdfQUNQSSAqLw0KPiA+ID4gPiANCj4g
PiA+ID4gICNlbmRpZg0KDQo=
