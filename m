Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD22487A700
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Mar 2024 12:18:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE32410E180;
	Wed, 13 Mar 2024 11:18:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cEYPefih";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6272B10E180
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Mar 2024 11:18:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710328699; x=1741864699;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HDnKc+xd/JW3Z9IPKdfm5wuL5qWAjw4pb4DBFPHYw08=;
 b=cEYPefihBFu6WfygwtdpzBqEaJuWCuu5/IMygF2KZxd8jtGI0piUcZ1x
 EhD3VoGOe4OnzYSz0KsU458BrQjnUgvyEnOIVqKYOmB3EZ6wUpSVJMTFK
 PF489RTgQ1Yq1fg0dWGqH5DBQ+nbNPY2jpb9LzfvvepREeEW7ew9M1D4z
 IheO7cfolBFXiicCRXagZdL1TSiUopfcCrCwOeN+tsKB2N7poXIqf5gU1
 IqBoSLIuREButVigQOFOTrDBqrkjLXUgNCoCvvyBPUkpy6Bxh+GNLFIgi
 cKQyChAlCOXlaOMG8umJzoECavCyzX0CRumMbALfs/qXs2SiAXLmjYYWT g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="5015881"
X-IronPort-AV: E=Sophos;i="6.07,122,1708416000"; 
   d="scan'208";a="5015881"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2024 04:18:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,122,1708416000"; d="scan'208";a="42883397"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Mar 2024 04:18:19 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 13 Mar 2024 04:18:18 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 13 Mar 2024 04:18:18 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 13 Mar 2024 04:18:18 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 13 Mar 2024 04:18:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cb4wRg0tPwyZ3+YG8FCKXI/uOV5m3wB2CWYFcTB6H14bttcLuHwE7oKSuR40D+9hdLOVmWZSNNOmJfq/kQZpH34R1xzA/8pV4qUKkdyrhUdMSu/WgW8OCBI1zzi1QI8cwT+8HNV2vGrRi/9c6c82d7aJIobhASulAmEsB1/pXdOwLAR0anNsf80H6XmTU80LLfRTchUQOjJAyf/EwoQ/vyqVRXdkoNq5qDgeS+BE8EwN8jf0XncO/WQC0k5M4/f9BdhxAXGpss9DOYoYJBZW2WsM4oLWhM3zLCBE4wpP2NTlDl/76z9NZxmWdjJcHj98eV42WUMoD6x7sk7eO3yOUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HDnKc+xd/JW3Z9IPKdfm5wuL5qWAjw4pb4DBFPHYw08=;
 b=d42UHqOjd9eBEjdiQn7QZ3bPVQzWz5CRt4kmehKXx53qlV1M3sQ4s1+AAPNZ63JgZs42CugjWsu9tsuI8ECcFFNSyWzBYKE9hlebiOUt7bufk+GIa9ocD2gsJnY1xcc1gTEypucuhnsYdEdHR02TDN+JVcHMiDlLnlzHD4EN+VfJktKndXxXp22udjeLeJDJdmECmHuEQtldroOhPuCziDjijeq46M/s5EC7+faf6sosauPmb1nrZawTGfCz8mhfkDhgousP3ZGOSNAMuM9FhEBtxoX0inCDsAmVJddIy3YajhKd5nupQoEledvuwZoGQNe/pGPLSY1pWbv7SlDfbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by CH3PR11MB8363.namprd11.prod.outlook.com (2603:10b6:610:177::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.17; Wed, 13 Mar
 2024 11:18:15 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::8970:61a2:f00d:b23f]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::8970:61a2:f00d:b23f%4]) with mapi id 15.20.7386.017; Wed, 13 Mar 2024
 11:18:15 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, "Murthy, 
 Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCH v3 6/6] drm/i915/psr: Do not write ALPM configuration for
 PSR1 or DP2.0 Panel Replay
Thread-Topic: [PATCH v3 6/6] drm/i915/psr: Do not write ALPM configuration for
 PSR1 or DP2.0 Panel Replay
Thread-Index: AQHab7N0MeHaHz0sJ0OzP9dRF3XZMLE1jgHg
Date: Wed, 13 Mar 2024 11:18:15 +0000
Message-ID: <PH7PR11MB598180CC32E2370CAB74055BF92A2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240306104513.2129442-1-jouni.hogander@intel.com>
 <20240306104513.2129442-7-jouni.hogander@intel.com>
In-Reply-To: <20240306104513.2129442-7-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|CH3PR11MB8363:EE_
x-ms-office365-filtering-correlation-id: c6235ed5-052b-4c16-b7a4-08dc434f474d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oi5mcvEGXBGpjICDF3jXYwA3MWLQ216kf4W/cdDnDr78uI5/cUCmi+fWwYYEs2nw9FEi10/GiP8EGwzxS7ZATBKIUQn5a4/YgprXYMne+zZ2+GecdeKwNVjEy4DSDAumRiaurLDN09Xjok/gp8fAe3uEe9B1/u85kwdumkPAJ1zx+0R/4ru17KPo/mkURqiCpGu17XnSlorT1UHSsvDhTGX5DIXRGe8wyw/dEOp0+qVD3dg/NvaXLX2uDnFreoq11Syo/iTw0rGbUxgl4+rHwA0LvKxp4BEPnLAP4JkxbdPgQadZRm3BQ0AtqoxcvPTMCpJuMc46jgnJbCF1LClaPT4ZyjVP8nktEQjNnQztEzNw2NmG/F/vJlfZ/lObPZXo6+7tLd8UttrqFcF6Sko1+JzmwRnA4fKjN9lZL+btHvmLIw7bEzzjmdDtPRSnoWRY/aMkGdlaUZ9vytG6F4Vu/2Sh1ToOwt1kGLlMAevTa3yOz7/MvqwEUSys9n03UHJ/A4vISCtvriCXduN+ni4GKk/BnIfDo9NUGRuq3Tm2l/JmvAE1qXBFCQxcNRDyFFjmN7PDWXS1U6JrhUzJW37R/2TeMI3GHHnkO7UgUGTdcgvvYd/m3WpeeAeiIM/BNcQOxAu3/M+opkyqH/eXojVeGvo86TWlA62CV1aOv2XbXFtoTj61dRSIbCK5cYvWLuN7GawrifRgmNiMIzCxXBZtNDKB13cgt/x2vfqACP0suDE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VHZvVjRvUXRXeTVxZGFVV08xYWFiaXlHeHdGeDZqOE92cllvVGgzcXV6WEFl?=
 =?utf-8?B?ZFAya3ErMS9yMnlqYnljb2JjM2ZRR1VrdGlKNDVVWGMxMDZDbE9xYXoyblZq?=
 =?utf-8?B?S2dUMHJrdnlabDRYM0RpWkpOdTFjNkxBRXRGdW01dUJML2o3VDFzYVFJU09B?=
 =?utf-8?B?YW9TTU51RjdWNVJwY1d5RjNNbjc1cVFxWjRPV1loOVhoVGVVUXoyR3NDNDUx?=
 =?utf-8?B?QlpDNE9QNFpjWWIvWm9CV0o0L3BvV3NFb3p4MEFha1Q3cnpXNHpiME1HTzY3?=
 =?utf-8?B?ZDJHQXVhZHNtNEJtd0NMMXMrZ1NLZ3JhWHZ6bTJibjh1clJGQmJhc0RGUFV1?=
 =?utf-8?B?QmZUcUJRM2NEVzNXM0ZPVkFXalZFTmMvaG9qUjkxV1Jmc0tQZVpUSHIxQ1NG?=
 =?utf-8?B?T2lWcG51TVlta0R4a3NONlRCMnpGMmsvQjE0eThabzl4QkViQm16V2VjOWlP?=
 =?utf-8?B?dXJmamNJSldPdkRhVFZRQXo0aHU4bjdxU2ZEQ21jZjFQNllZN0RYWDEzVG5I?=
 =?utf-8?B?WHJXSVlUQk1wVEFwY1k2OG03RWVRbSt2dUlkbm5GZE9zNW1xczhyeW5Qb1NS?=
 =?utf-8?B?Rk5vdzEyRlF6OEw0UjNUNjZZb3VUMU5ReVRwRHVUZDFKc2RhRWFMcjNvYVVh?=
 =?utf-8?B?bEd1clZXWHZVbVB6SEdMU25EY1JqaE5hQmJjc3pYN2tyTGdWakxLOWhHYkFs?=
 =?utf-8?B?YTNMd216Yk1yTDZPaVJ4bi83dm9yMW1LOG1FcldVaGxkMUxJdmVpUmVXYlhZ?=
 =?utf-8?B?ZXNVbjdHbm5sTW9xVGxmM2R4S1FGYTBKNURTNEpZWm5WakkydVVkaUpwaktI?=
 =?utf-8?B?KzlSR25BUFYxbHlhSkJVNDdqTGNEL2FCNWNnQWZLZldpVzhvei9nMWNBY2l5?=
 =?utf-8?B?L3FOT0hKeTlPRWFhQTJaMTdRU0I3UjdISWFUT3c3YUpVV25iSng3RU94dVg5?=
 =?utf-8?B?SnhiUXVseHVGYTU4elRiMTRxUGg2NXY5d3lNLzJqU0dMYytPVFpHbmtpdHJr?=
 =?utf-8?B?WnQwWXczVUQyYy93ekRXdVk0enp5QVpjN1BNZDBlcEdyYlJBVmZUMVdnZE1D?=
 =?utf-8?B?Y1lRbmNreUF3aHR1c1BOLzA0KzkxSTl0cjhnU3JyOEdVRzRKZExSZXdkZ3hR?=
 =?utf-8?B?L1hBa0hwa1QxWHNOUzBianorTHpjUnFvTHc1SmNScGxadjd0a0pWeE5pMGFh?=
 =?utf-8?B?NllTeUpUTWlic09DTFRINTExeWl6eXdUMVBpN2s5T1FkSUFySThhTTkramlL?=
 =?utf-8?B?VXZkSHdMeGM0eUZWcUZLTmlXVzlUb3gvdHBtMUNlam03ejZuRjB3djFSVHZB?=
 =?utf-8?B?L3ZxUU1tdHhaYXUvYk9tL0lXQ1RFaVBQWnVISUxQTTlmYWtlc2lBc3JvWFJY?=
 =?utf-8?B?cGFGa2wxNEhaQUd3Zk8veWFOV014Y1d6M0wrbFlOMjRnOWJXVlVwa2trUDl0?=
 =?utf-8?B?Q2NzSWxNWGpxU1U3bkF5ejEwYnhtcVVlL3FnRWFZNXNWV0p0cDhaOHc3eTh4?=
 =?utf-8?B?Z0RncjJoM0VCNUdhZXFkeWoxT0dqMXVWTnBzTlk0VmNxczlUcCt3ZXU1NEtk?=
 =?utf-8?B?QTBwTWpNdzhnS3lscHRRQ29Hd29UZmVDbEFEMzErVjc0U2tpejlLZCtOYi8w?=
 =?utf-8?B?V2dIcSsrWGZmREw1UVVBTHEwWGNFeEZySGhXYWpSbXpyY3VzZ0R2WUVtQXJY?=
 =?utf-8?B?ZXVpRVMzalBTaEpvTWdSc3paK0lJS1pVVEtmTzgwRHdXQVMyRmhoYkNSNVQr?=
 =?utf-8?B?MUt3cmp5cHN1a09KV2ZpMWRhQnBuV0ZVaHFzOGQ3cG1oMnNHcGVGZWgyeDlB?=
 =?utf-8?B?dTJKZUJ1ZHNva2tpbzB5YzNJYWoxTGdveEEvS3lQWnczVitrM0ttN255T3VC?=
 =?utf-8?B?bXg4QjlIQkFtWkVkZThONzRrSHFXSDVOWEVFL3FXOVc1Rzd3RUMxNHZzYUt2?=
 =?utf-8?B?N1JtYXhMajE2TGNwdldSYmk1b095QkJwYjJzUVFXQUdxcC9WYXprTGxHRFpa?=
 =?utf-8?B?RXlJcmtpc1c3eU05YnZwSzB3U0FwNnpYcE5IT3BISDZDU3RxcW90YURJK2Fh?=
 =?utf-8?B?SnlubENzQjBRbDVaOHF4T2tjRkpNOUkrSWwwS25ZaTE4UWtqQ082QlZaa3Ux?=
 =?utf-8?Q?J3iYMHXowsCeWVTBXlEncEOOn?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c6235ed5-052b-4c16-b7a4-08dc434f474d
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2024 11:18:15.7024 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yBt4r78KW+U5/RRME1wq+I9sOa/YO8PXt078x6DqYmbcrpm6jQAGf6dGwe6cnju1MqtVt5y3HquBW7zCXNmVng==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8363
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFdlZG5lc2RheSwgTWFyY2ggNiwg
MjAyNCA0OjE1IFBNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENj
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPjsgTWFubmEs
IEFuaW1lc2gNCj4gPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPjsgTXVydGh5LCBBcnVuIFIgPGFy
dW4uci5tdXJ0aHlAaW50ZWwuY29tPjsNCj4gSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRl
ckBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCB2MyA2LzZdIGRybS9pOTE1L3BzcjogRG8g
bm90IHdyaXRlIEFMUE0gY29uZmlndXJhdGlvbiBmb3INCj4gUFNSMSBvciBEUDIuMCBQYW5lbCBS
ZXBsYXkNCj4gDQo+IE5vIG5lZWQgdG8gd3JpdGUgQUxQTSBjb25maWd1cmF0aW9uIGZvciBEUDIu
MCBQYW5lbCBSZXBsYXkgb3IgUFNSMS4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdh
bmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAzICsrLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDIg
aW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGluZGV4IDRjZDJiYWQ1MjQxZi4uYzdiZGEzNzQ0NGYw
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
DQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAg
LTE2OTksNyArMTY5OSw4IEBAIHN0YXRpYyB2b2lkIGxubF9hbHBtX2NvbmZpZ3VyZShzdHJ1Y3Qg
aW50ZWxfZHANCj4gKmludGVsX2RwKQ0KPiAgCXN0cnVjdCBpbnRlbF9wc3IgKnBzciA9ICZpbnRl
bF9kcC0+cHNyOw0KPiAgCXUzMiBhbHBtX2N0bDsNCj4gDQo+IC0JaWYgKERJU1BMQVlfVkVSKGRl
dl9wcml2KSA8IDIwKQ0KPiArCWlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPCAyMCB8fCAoIWlu
dGVsX2RwLT5wc3IucHNyMl9lbmFibGVkICYmDQo+ICsJCQkJCSAgICFpbnRlbF9kcF9pc19lZHAo
aW50ZWxfZHApKSkNCg0KVGhpcyBwYXRjaCBtYXliZSBnb29kIHRvIHNxdWFzaCB3aXRoIHByZXZp
b3VzIHBhdGNoLCBub3Qgc3VyZSB3aWxsIHRoZXJlIGJlIGFueSBuZWdhdGl2ZSBpbXBhY3QgaWYg
cGFuZWwgZG9lcyBub3Qgc3VwcG9ydCBhdXgtbGVzcyBhbHBtIGFuZCBmcm9tIHNvdXJjZSBzaWRl
IGl0IGlzIGVuYWJsZWQuDQoNClJlZ2FyZHMsDQpBbmltZXNoDQoNCj4gIAkJcmV0dXJuOw0KPiAN
Cj4gIAlpZiAoaW50ZWxfZHAtPnBzci5wYW5lbF9yZXBsYXlfZW5hYmxlZCAmJg0KPiBpbnRlbF9k
cF9pc19lZHAoaW50ZWxfZHApKSB7DQo+IC0tDQo+IDIuMzQuMQ0KDQo=
