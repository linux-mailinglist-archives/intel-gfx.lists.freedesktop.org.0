Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F42F84F535
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Feb 2024 13:33:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9001510F38A;
	Fri,  9 Feb 2024 12:33:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Yx+l2hPN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 273BA10F38B
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Feb 2024 12:33:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707482008; x=1739018008;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=eyX+B1wUgFCARNhiaDyWWzWbMULU/sRFaVAsR8/ESzY=;
 b=Yx+l2hPNb5z7+w+7YxQujwEe//6hl9kPxrP5WhBgaOihx0uCgxKJfX7l
 NKt+udSukQWgI5ghzSXpJr0Gn2UUd5qh7Tf9wpdpG21YG3dZzwkhjTKMf
 XR5BLkQc9a/W45lN/KEY+mKHR5wPE5JzABE2aEqa2vWbIiKLwsIS1fdgf
 tWmuLxhq1L9bZOMNnt5yaB4WMIN4NLFWh3Ir4uSRTQ8Twc+zjRJjCK+zj
 VB6DGpQd6Z/YThqpKUxdcAQQU1Yqn+e1d5KVmvV7jWk5kzeym455/QFDf
 q9C4XI3aygEkPQLQuYxnPdUvHwH0ZUOP20jJAXZSZ6ZpXGiPFM1TsFY00 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="1311125"
X-IronPort-AV: E=Sophos;i="6.05,256,1701158400"; 
   d="scan'208";a="1311125"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2024 04:33:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,256,1701158400"; 
   d="scan'208";a="6697520"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Feb 2024 04:33:26 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 9 Feb 2024 04:33:25 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 9 Feb 2024 04:33:24 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 9 Feb 2024 04:33:24 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 9 Feb 2024 04:33:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z+Kae+DaVV+bP4Y1Rr80LHJoyOOCSU3ixT11cyIg/L39m0aQkndFdOPF4i9u/pzxcfV3u2scKUrsrOn10aVZlpSnJ1a01WCh/k7y2djDrxuP2f7hPgWmLHKV0d6c4RuBFRvzqDztxxaMR8sPv1X81VnAVW3D0q7XCaB0PBUw6pia8vf6mTTtYaPz6XVKNAj7Kn4BusOV9KXp4bqpOdjUoHE6a9j4FRjrGh/sUn7haP8GW/qYVI+jZJsflREMLzSK8XxjKAX7fNKrC0r/14RNlnbW8wwaCl0xpvZ+GxSvbXL45lPBDMUH54FUfTkBQ8AyAmEmNum4LxT8kbJbyA8GOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eyX+B1wUgFCARNhiaDyWWzWbMULU/sRFaVAsR8/ESzY=;
 b=N8abeNQ9WIqSLHq7mPpmA11wScpU/Ui5VlZUVxbzB5hDbOlRADUphuTdBSFp8xpdYy7yS4Bic1duE+vxipXivAFT78RVgWfgy1VOL8M9aV10TVV+OhoD7vXFywxzU2KiFIabcij6riFYxVbx1htUfW2wbBgBc6TXJQ2S3gPvTjJWqRo/gm7yaYAEA7eSM6A5Vvu+bIBEzCjXppuUn6Olp0emNwe680Wty2ct0BfT6vWD38mnqJq6nkAhJkQMny39NrTi7NjUgrOnjWdpoDCx3IhdAoIhaBfpb2mX/io8gnziy+I8vxSj+5Hl3zY1wSeSvLV+AKwJ2MuHn19tfHTvqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by IA0PR11MB7840.namprd11.prod.outlook.com (2603:10b6:208:403::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.27; Fri, 9 Feb
 2024 12:33:21 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::ca1a:739f:f7d4:866d]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::ca1a:739f:f7d4:866d%3]) with mapi id 15.20.7249.038; Fri, 9 Feb 2024
 12:33:21 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 2/2] drm/i915/display: Force full modeset for eDP
Thread-Topic: [PATCH 2/2] drm/i915/display: Force full modeset for eDP
Thread-Index: AQHaWMxp9m04XFnFyU2whKA1SeZXRrEBvO2AgAAtrDCAAASrgIAAALqAgAACooCAAAOcUA==
Date: Fri, 9 Feb 2024 12:33:20 +0000
Message-ID: <MW4PR11MB70543D7803720609215D5A5AEF4B2@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20240206070937.197986-1-mika.kahola@intel.com>
 <20240206070937.197986-3-mika.kahola@intel.com> <87a5oaatws.fsf@intel.com>
 <MW4PR11MB7054254B4B9C319878D99FCBEF4B2@MW4PR11MB7054.namprd11.prod.outlook.com>
 <ZcYVTcvE4Z3mo88U@intel.com>
 <MW4PR11MB7054E5C5391F47516CA1B31BEF4B2@MW4PR11MB7054.namprd11.prod.outlook.com>
 <ZcYYHw85Kasgr48A@intel.com>
In-Reply-To: <ZcYYHw85Kasgr48A@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|IA0PR11MB7840:EE_
x-ms-office365-filtering-correlation-id: 479d7ae8-67b2-4905-8fb1-08dc296b4d04
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3wqS9vDHd6oW0lFAxDAijI5o0ZiYiZEjlc0874Er52vY1oDg3+SCACQ9n7icc0aq624ojiabUqM4/JpY+V3uPSq+vmvoua35ZjY+nA6ei4zysIflEL12VzBz0OeB6k7i8npxNLyMEhl5UXiYAPHd19zoPUrmNffrjHUhaYeHYXd1ERk6Qjp6YaauIJu2vq3zwizaVnxsgayeCXwHqph+gmJX/bOA2fKjTJsxzManAVemf+eJL/9F4jpfJITS6NMBCKaFI2GhCDOyDxY4KG3sm33zYzPsOa0PJg9sPzkT3dBq/Jk/oK890lFgJxYmLEKFqDpAZA59yR9QEj8GTiochM9nv61BzsKPAqmYmP9rKvDqn85ggZ42ehi72kpE1HKnLhY3UfVGTCf6QsMoesMG7dhJB3z7mn1WpNg2NGUbeoDfUOaioJSouOWz0E3zumMX9QR18dBni6axqnqvkOIB533V1ZiB5xbElERi/AA5R4S3j3iVbnyW4vRAhmCwnY0jHWf1ozyqD9KhWgY8NdppkFruOkWLE5c/NR4yGodLNwTeKNSw2gozLXWIw0Nt6ZWIsoGafHuXfrWbsbORJ5gR6h7esfY3ROeLtho7LWziL6gRASS6xwrdYhxwrwIVgL7W
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(39860400002)(376002)(366004)(346002)(230922051799003)(64100799003)(451199024)(1800799012)(186009)(9686003)(7696005)(53546011)(41300700001)(6506007)(478600001)(55016003)(2906002)(5660300002)(52536014)(66446008)(66556008)(4326008)(6916009)(66946007)(8676002)(66476007)(8936002)(64756008)(76116006)(54906003)(316002)(71200400001)(38070700009)(66574015)(26005)(83380400001)(38100700002)(86362001)(122000001)(33656002)(82960400001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?LzVOeWprUEhGOVJPalFDWGp4bWNCaGtSUnJNemxjclRJTWdMWlBQYVZSSndD?=
 =?utf-8?B?eG00QzFIODJLY0hsSXlCUEo4emR4eFdIc2paeEQwWnJPWGFhbm9FTnM1cm1L?=
 =?utf-8?B?alhpZWE1QXZtYnhRU3d5WHhhS0grSVI5SlptUzd4NFNLVzUwdFhvWEFOTEpx?=
 =?utf-8?B?YU9ueGlIMk4wNVBjTVRkNSt0SGhFQmcvUTFHaVZmemc5NzhIYTdmZ2lqL2NZ?=
 =?utf-8?B?STRPL0RtL2lTNnY4ekR0MlNBTlowY3lUSFFKU2Z6NStxNnpxdDZEdERWWTdT?=
 =?utf-8?B?S21qYlgyRmRUb2lTUG5YajBYRXBtYk9ycm9oR095c3QzTEwyWi93WEZ6Y3ZG?=
 =?utf-8?B?TjB3K25XWmtjNmtweHB0SHZXR0NCR3lCMkFFSEs4WGJ0K0xVTVdmYkU5WEFW?=
 =?utf-8?B?OUtiSUcydXEwd0VKaEhncjNyczlteW0zSEt3R3pCQjAyZDE2aWdOekcxbDNH?=
 =?utf-8?B?V2lwWFJRZHQ1bmtpZFdnbC9BaXQxZnloZi93M2xKaGF0RlUyTVRMTHZsSlJq?=
 =?utf-8?B?UFhHdWlGVVlVQTdWdzZMOUdocnI1eEo2QmErNHcxZUdoNlg4QjI3NG9rbGx2?=
 =?utf-8?B?MWpaOUE4WlVUaWE4RmpndHZCbS9PTVlwY1FXNkUvQU8vZUwrRDFSM3JKejEv?=
 =?utf-8?B?UFlTRFhSRnJkVlV6SjNwN25VVG5zMjlPWVBZQmhYMnFac1drQ0gyMEtXRHBO?=
 =?utf-8?B?T3RTOVZURHN3SzdqczMvVnMxQjVVeGNva2cxRTBkOVVrUXJtRmczbHFCYzZ0?=
 =?utf-8?B?N0lQZXY2ME5uektXeDIzZmtYK3IrVjJiRnBKRzl0UFdyVHFPUUR0cmt3ZlZZ?=
 =?utf-8?B?eHU2dVllTFdZMWViNU9TVjU4OWZHVlloa0hQYU5zK1lWVmlVMUtqTWRPdXBr?=
 =?utf-8?B?UVFlRW5QdVZiSTBFRFE1TXd1QVN2cy9hZ3BmSjRmSDVleTI5eXN3WTdHek5H?=
 =?utf-8?B?U0V5N2pNL3ViQUNRZUZiRlBYMS9ON2prcWV1MHMzd1A2K283N1MzV2srdE5O?=
 =?utf-8?B?YStxK3QxZkRrTTJ2aWxsTVdFektNaWdpc0g1Rzh1Z3FYR1pyUG9FWlc2OWZj?=
 =?utf-8?B?Yk5NZHlpQ3FYUUgxQzF0REhybkZ1b1ZBRlRFVjhXbjJlejdQVlVyNU8xUDNu?=
 =?utf-8?B?R0JzUDJ3REVUVmN6bWwvU3lKdVo1U0lOY2VFejJuSHQ0ZmtFTTNqTnBoYUZy?=
 =?utf-8?B?bkJwN09oaE5Odnptek1rRW80OWtSdGhnT043L2tLazNuN0JoZEU4VnZ2THJE?=
 =?utf-8?B?NThoQzhBcTRxMXdKVzBJdzZVZDZSeUg0dHlVeFRNVE1wOFIvN2JSdTJ3OW8w?=
 =?utf-8?B?dzVINXJLN1ZKbm9rd0VWU2VGQTIxb01QTUNJTHR5enV4RFNrZ2ovbFZGUWlF?=
 =?utf-8?B?eWt5cmZGa25PNGhpTWRWR3VZVllvNkV1cGVCaVpDcUF4SEprMkowWGNwREd4?=
 =?utf-8?B?NFpleTUrV3g2RW45ZTRnbE1ENGxBWjZMV1hzakorYWN5N242aVJMRXc2elgv?=
 =?utf-8?B?bWEweDJrMG81bmtXM1Y1R2EvQm1CVDZENGg0enYrcTdhSDJjcmRDLzNzSkEr?=
 =?utf-8?B?SGRoQmN6ZmNWNXd6c0JQLzViSi9PM3hMREdaUlo1aTNkcFhVdU5SSG1ZTmhY?=
 =?utf-8?B?a0RUVzdxZm5QUjBFUEtsZEtZUFU3aS9MaXJ1dkJkaVlFYVlTWjlMVXMwekw3?=
 =?utf-8?B?ZlowR2dvblV3Q3dRTGg2dENGV3FmVUxPL0lmOFhzVGJXVTVQYmZob29rSDhn?=
 =?utf-8?B?eHk4UmdPSGFEeko1T21OMEdWSXJtaGZnaXB2bG9VUTMyZ3ppZXE3STZ0RUZZ?=
 =?utf-8?B?SDJ5VEhQWFN3OGFEWHNXVlZjMVhrVVNZaHgwQldsQmwzaWQ0NlVrM0YxZ2pv?=
 =?utf-8?B?OVBBSTgwQ1ZLWWNXWmpjNlZqcVF0aUtTZWdsUFlaR0kyMVdmbFVxeTR2bEZz?=
 =?utf-8?B?NXcvNFFxeGJ2L3phMnVzK096blBYS291ckRXa2pLRXlPVEdVNFovYlhlRWlM?=
 =?utf-8?B?QnE2WEhvQStLZnhwNzVjV0lFLzdtY2FMd3UxMUUxQkVuUjAxSDcrVTRQc1dx?=
 =?utf-8?B?UjN3bW9URjRpMHM3UEZrMngrR1g5UFRaLzMweVJtTWVUeUdkUmRYenA1WGxY?=
 =?utf-8?Q?uS7y0Mpv2fU+SO2e5MIGZoLpc?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 479d7ae8-67b2-4905-8fb1-08dc296b4d04
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Feb 2024 12:33:20.9589 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cq/pczqR1gUplnC5N68kVXvRdQyjIjMVXp/MYfH2jUwavZ0hcySb74CINAxO9MB65b/tC1zalJprz/KAhWy64A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7840
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiBTZW50OiBGcmlkYXksIEZlYnJ1YXJ5IDks
IDIwMjQgMjoxOSBQTQ0KPiBUbzogS2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+
DQo+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAbGludXguaW50ZWwuY29tPjsgaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBSZTogW1BBVENIIDIvMl0gZHJt
L2k5MTUvZGlzcGxheTogRm9yY2UgZnVsbCBtb2Rlc2V0IGZvciBlRFANCj4gDQo+IE9uIEZyaSwg
RmViIDA5LCAyMDI0IGF0IDEyOjEzOjAyUE0gKzAwMDAsIEthaG9sYSwgTWlrYSB3cm90ZToNCj4g
PiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gPiBGcm9tOiBWaWxsZSBTeXJqw6Rs
w6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiA+ID4gU2VudDogRnJpZGF5LCBG
ZWJydWFyeSA5LCAyMDI0IDI6MDcgUE0NCj4gPiA+IFRvOiBLYWhvbGEsIE1pa2EgPG1pa2Eua2Fo
b2xhQGludGVsLmNvbT4NCj4gPiA+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAbGludXgu
aW50ZWwuY29tPjsNCj4gPiA+IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiA+
IFN1YmplY3Q6IFJlOiBbUEFUQ0ggMi8yXSBkcm0vaTkxNS9kaXNwbGF5OiBGb3JjZSBmdWxsIG1v
ZGVzZXQgZm9yDQo+ID4gPiBlRFANCj4gPiA+DQo+ID4gPiBPbiBGcmksIEZlYiAwOSwgMjAyNCBh
dCAxMTo1NTo1OEFNICswMDAwLCBLYWhvbGEsIE1pa2Egd3JvdGU6DQo+ID4gPiA+ID4gLS0tLS1P
cmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiA+ID4gPiBGcm9tOiBKYW5pIE5pa3VsYSA8amFuaS5u
aWt1bGFAbGludXguaW50ZWwuY29tPg0KPiA+ID4gPiA+IFNlbnQ6IEZyaWRheSwgRmVicnVhcnkg
OSwgMjAyNCAxMTowNiBBTQ0KPiA+ID4gPiA+IFRvOiBLYWhvbGEsIE1pa2EgPG1pa2Eua2Fob2xh
QGludGVsLmNvbT47DQo+ID4gPiA+ID4gaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0K
PiA+ID4gPiA+IENjOiBLYWhvbGEsIE1pa2EgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCj4gPiA+
ID4gPiBTdWJqZWN0OiBSZTogW1BBVENIIDIvMl0gZHJtL2k5MTUvZGlzcGxheTogRm9yY2UgZnVs
bCBtb2Rlc2V0DQo+ID4gPiA+ID4gZm9yIGVEUA0KPiA+ID4gPiA+DQo+ID4gPiA+ID4gT24gVHVl
LCAwNiBGZWIgMjAyNCwgTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4gd3JvdGU6
DQo+ID4gPiA+ID4gPiBGb3JjZSBmdWxsIG1vZGVzZXQgZm9yIGVEUCB3aGVuIGJvb3RpbmcgdXAu
IEdPUCBwcm9ncmFtcyBQTEwNCj4gPiA+ID4gPiA+IHBhcmFtZXRlcnMgYW5kIGhlbmNlLCB3ZSB3
b3VsZCBiZSBhYmxlIHRvIHVzZSBmYXN0c2V0IGZvciBlRFAuDQo+ID4gPiA+ID4gPiBIb3dldmVy
LCB3aXRoIGZhc3RzZXQgd2UgYXJlIG5vdCBzZXR0aW5nIFBMTCB2YWx1ZXMgZnJvbSB0aGUNCj4g
PiA+ID4gPiA+IGRyaXZlciBhbmQgcmVseSB0aGF0IEdPUCBhbmQgZHJpdmVyIFBMTCB2YWx1ZXMg
bWF0Y2guDQo+ID4gPiA+ID4gPiBXZSBoYXZlIGRpc2NvdmVyZWQgdGhhdCB3aXRoIHNvbWUgb2Yg
dGhlIHBhbmVscyB0aGlzIGlzIG5vdA0KPiA+ID4gPiA+ID4gdHJ1ZSBhbmQgaGVuY2Ugd2Ugd291
bGQgbmVlZCB0byBwcm9ncmFtIFBMTCB2YWx1ZXMgYnkgdGhlDQo+ID4gPiA+ID4gPiBkcml2ZXIu
IFRoZSBwYXRjaCBzdWdnZXN0cyBhIHdvcmthcm91bmQgYXMgZW5hYmxpbmcgZnVsbA0KPiA+ID4g
PiA+ID4gbW9kZXNldCB3aGVuIGJvb3RpbmcgdXAuIFRoaXMgd2F5IHdlIGZvcmNlIHRoZSBkcml2
ZXIgdG8gd3JpdGUgdGhlIFBMTCB2YWx1ZXMgdG8gdGhlIGh3Lg0KPiA+ID4gPiA+DQo+ID4gPiA+
ID4gTm8uIFdlIHdhbnQgdG8gYXZvaWQgZnVsbCBtb2Rlc2V0cyBpZiBwb3NzaWJsZSwgYm90aCBp
biBnZW5lcmFsIGFuZCBhdCBwcm9iZS4NCj4gPiA+ID4gPg0KPiA+ID4gPiA+IEFuZCB3aGVuIHdl
IGRvIGVuZCB1cCB3aXRoIG1vZGVzZXRzLCB0aGUgZGVjaXNpb24gbmVlZHMgdG8gYmUNCj4gPiA+
ID4gPiBiYXNlZCBvbiBjaGFuZ2VzIGluIHRoZSBzdGF0ZSB0aGF0IHdlIGNhbid0IHdyaXRlIHRv
IHRoZSBoYXJkd2FyZSB3aXRob3V0IGEgbW9kZXNldC4NCj4gPiA+ID4gPg0KPiA+ID4gPiA+IFdl
IGNhbid0IHVuY29uZGl0aW9uYWxseSBmb3JjZSBhIG1vZGVzZXQgb24gZURQIHBhbmVscyBhdCBw
cm9iZS4NCj4gPiA+ID4NCj4gPiA+ID4gVGhhbmtzISBKdXN0IHdvbmRlcmluZyB3aGF0IHRoZSBv
cHRpb25zIGhlcmUgbWlnaHQgYmU/IFdpdGgNCj4gPiA+ID4gZmFzdGVzdCB3ZSBlbmQgdXAgaGF2
aW5nIGEgbWlzbWF0Y2ggd2l0aCBvbmUgUExMIHZhbHVlIHdpdGggYQ0KPiA+ID4gZmV3IHBhbmVs
cy4NCj4gPiA+DQo+ID4gPiBZb3Ugc2VlbSB0byBiZSBzdHVjayBpbiBzb21lIGluZmluaXRlIGxv
b3AuIElmIHlvdXIgUExMIHBhcmFtZXRlcnMNCj4gPiA+IGFyZSBtaXNtYXRjaGluZyB0aGF0IHNo
b3VsZCBwcmV2ZW50IHRoZSBmYXN0c2V0LCBidXQgdGhlbiBJIGd1ZXNzDQo+ID4gPiB5b3UgYWRk
ZWQgc29tZSBoYWNrIHRvIGFsbG93IHRoZSBmYXN0c2V0IGRlc3BpdGUgdGhlIG1pc21hdGNoLCBh
bmQgbm93IHlvdSdyZSB0cnlpbmcgdG8gdW5kbyB0aGF0IGhhY2sgYnkgYmxpbmRseSBmb3JjaW5n
IGENCj4gZnVsbCBtb2Rlc2V0Pw0KPiA+DQo+ID4gVGhhdCdzIHJpZ2h0LCBJIGZvdW5kIG15c2Vs
ZiB0byBiZSBiZXR3ZWVuIGEgcm9jayBhbmQgYSBoYXJkIHBsYWNlLiBJIGRpZCBkaXNjYXJkIHRo
ZSBmYXN0ZXN0IGJ1dCBmb3VuZCBvdXQgdGhhdCB3ZSBjYW5ub3QgZG8gdGhhdC4NCj4gDQo+IElm
IHlvdSBkaXNjYXJkZWQgaXQgdGhlbiB3aHkgYXJlIHlvdSBub3QgYWxyZWFkeSBnZXR0aW5nIHRo
ZSBmdWxsIG1vZGVzZXQgeW91IHdhbnQ/DQo+IA0KUG9vciBjaG9pY2Ugb2Ygd29yZHMsIEkgZ3Vl
c3MuIFdoYXQgSSBtZWFudCB0aGF0IEkgZGlzY2FyZGVkIHRoZSBzdGF0ZSB2ZXJpZmljYXRpb24g
aW4gY2FzZSBvZiBmYXN0ZXN0LiBUaGlzIHdheSB0aGUgbWlzbWF0Y2ggaXMgaGlkZGVuIHVuZGVy
IHRoZSBjYXJwZXQuDQoNCg0KPiA+IEhlcmUsIGFub3RoZXIgaGFjayBpcyBpbnRyb2R1Y2VkIHRv
IGZvcmNlIHRoZSBmdWxsIG1vZGVzZXQgdG8gZW5zdXJlIHRoYXQgdGhlIGRyaXZlciBwcm9ncmFt
cyB0aGVzZSBQTEwgdmFsdWVzLiBBcyBKYW5pIGFscmVhZHkNCj4gbWVudGlvbmVkLCAgdGhpcyBp
cyBhIG5vIGdvIG9wdGlvbiBhcyB3ZWxsLg0KPiA+DQo+ID4gPg0KPiA+ID4gPg0KPiA+ID4gPiBT
aG91bGQgd2UgdHJ5IGlkZW50aWZ5IHRoZSBwYW5lbHMgYW5kIHNldHVwIHNvbWUgc29ydCBvZiBx
dWlya3MgZm9yIHRoZXNlIHByb2JsZW1hdGljIHBhbmVscyBvciB3aGF0IHdvdWxkIGJlIHRoZSBi
ZXN0DQo+IHNvbHV0aW9uPw0KPiA+ID4gPg0KPiA+ID4gPiAtTWlrYS0NCj4gPiA+ID4NCj4gPiA+
ID4gPg0KPiA+ID4gPiA+DQo+ID4gPiA+ID4gQlIsDQo+ID4gPiA+ID4gSmFuaS4NCj4gPiA+ID4g
Pg0KPiA+ID4gPiA+ID4NCj4gPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IE1pa2EgS2Fob2xhIDxt
aWthLmthaG9sYUBpbnRlbC5jb20+DQo+ID4gPiA+ID4gPiAtLS0NCj4gPiA+ID4gPiA+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgfCAxMyArKysrKysrKysrKysrDQo+
ID4gPiA+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKykNCj4gPiA+ID4gPiA+
DQo+ID4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcC5jDQo+ID4gPiA+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHAuYw0KPiA+ID4gPiA+ID4gaW5kZXggYWI0MTVmNDE5MjRkLi45Njk5ZGVkMWViNWYgMTAw
NjQ0DQo+ID4gPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwLmMNCj4gPiA+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHAuYw0KPiA+ID4gPiA+ID4gQEAgLTMzMTksNiArMzMxOSw3IEBAIGJvb2wgaW50ZWxfZHBf
aW5pdGlhbF9mYXN0c2V0X2NoZWNrKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiA+
ID4gPiA+ID4gIAkgKiBvZiBjcnRjX3N0YXRlLT5kc2MsIHdlIGhhdmUgbm8gd2F5IHRvIGVuc3Vy
ZSByZWxpYWJsZSBmYXN0c2V0Lg0KPiA+ID4gPiA+ID4gIAkgKiBSZW1vdmUgb25jZSB3ZSBoYXZl
IHJlYWRvdXQgZm9yIERTQy4NCj4gPiA+ID4gPiA+ICAJICovDQo+ID4gPiA+ID4gPiArDQo+ID4g
PiA+ID4gPiAgCWlmIChjcnRjX3N0YXRlLT5kc2MuY29tcHJlc3Npb25fZW5hYmxlKSB7DQo+ID4g
PiA+ID4gPiAgCQlkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLCAiW0VOQ09ERVI6JWQ6JXNdIEZvcmNp
bmcgZnVsbCBtb2Rlc2V0IGR1ZSB0byBEU0MgYmVpbmcgZW5hYmxlZFxuIiwNCj4gPiA+ID4gPiA+
ICAJCQkgICAgZW5jb2Rlci0+YmFzZS5iYXNlLmlkLCBlbmNvZGVyLT5iYXNlLm5hbWUpOyBAQCAt
MzMyNiw2DQo+ID4gPiA+ID4gPiArMzMyNywxOCBAQCBib29sIGludGVsX2RwX2luaXRpYWxfZmFz
dHNldF9jaGVjayhzdHJ1Y3QNCj4gPiA+ID4gPiA+ICtpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0K
PiA+ID4gPiA+ID4gIAkJZmFzdHNldCA9IGZhbHNlOw0KPiA+ID4gPiA+ID4gIAl9DQo+ID4gPiA+
ID4gPg0KPiA+ID4gPiA+ID4gKwkvKg0KPiA+ID4gPiA+ID4gKwkgKiBGSVhNRSBoYWNrIHRvIGZv
cmNlIGZ1bGwgbW9kZXNldCBmb3IgZURQIGFzIG5vdCBhbHdheXMgQklPUyB3cml0dGVuIFBMTA0K
PiA+ID4gPiA+ID4gKwkgKiB2YWx1ZXMgZG9lcyBub3QgbWF0Y2ggd2l0aCB0aGUgb25lcyBkZWZp
bmVkIGluIHRoZSBkcml2ZXIgY29kZQ0KPiA+ID4gPiA+ID4gKwkgKi8NCj4gPiA+ID4gPiA+ICsJ
aWYgKCFjcnRjX3N0YXRlLT51YXBpLm1vZGVfY2hhbmdlZCAmJg0KPiA+ID4gPiA+ID4gKwkgICAg
aW50ZWxfZHBfaXNfZWRwKGludGVsX2RwKSkgew0KPiA+ID4gPiA+ID4gKwkJZHJtX2RiZ19rbXMo
Jmk5MTUtPmRybSwgIkZvcmNpbmcgZnVsbCBtb2Rlc2V0IGZvciBlRFBcbiIpOw0KPiA+ID4gPiA+
ID4gKwkJY3J0Y19zdGF0ZS0+dWFwaS5tb2RlX2NoYW5nZWQgPSB0cnVlOw0KPiA+ID4gPiA+ID4g
KwkJZmFzdHNldCA9IGZhbHNlOw0KPiA+ID4gPiA+ID4gKwl9DQo+ID4gPiA+ID4gPiArDQo+ID4g
PiA+ID4gPiArDQo+ID4gPiA+ID4gPiAgCXJldHVybiBmYXN0c2V0Ow0KPiA+ID4gPiA+ID4gIH0N
Cj4gPiA+ID4gPg0KPiA+ID4gPiA+IC0tDQo+ID4gPiA+ID4gSmFuaSBOaWt1bGEsIEludGVsDQo+
ID4gPg0KPiA+ID4gLS0NCj4gPiA+IFZpbGxlIFN5cmrDpGzDpA0KPiA+ID4gSW50ZWwNCj4gDQo+
IC0tDQo+IFZpbGxlIFN5cmrDpGzDpA0KPiBJbnRlbA0K
