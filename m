Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 92D177F266C
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Nov 2023 08:35:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0220110E27D;
	Tue, 21 Nov 2023 07:35:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7BA410E27D
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Nov 2023 07:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700552108; x=1732088108;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=l7OA47sYM6PXMW23O5f6ggfWHUeDsbqkX5KtnOOQ3ok=;
 b=graK4ldev3XAPPm+C/RscC8UuGS1OUjyGG72DPPn7ZZVM64JJntTNsSc
 Wvf6j6baJTLdkJ/23tRxBOIm9Sf0qyJ+42ZDA4dqXGdBrFMGxoARmlFpq
 HnoEYZW+F+V4JglcYCQJQGiGikrR2a+NrVbAmT3EBSbRq0QrPF7pklLHQ
 Cme3drUdTMSPbaYe9wCtzQrzIODB44W4Shl5eQCizTlhKOO4nwrz2thYD
 8cvFX3e1R7I71LlzDEYelthfH2x1iHKeNFGchEZBf5QDWR0gnM3+oNVJI
 umY+fNR4a9UStAm1t2agb6h2fBCEHkudoOe3joKA/SALoz+o+/L1o19UF g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="371957208"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="371957208"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2023 23:35:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="940016447"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="940016447"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Nov 2023 23:35:07 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 20 Nov 2023 23:35:07 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Mon, 20 Nov 2023 23:35:07 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 20 Nov 2023 23:35:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b20HYt50H18ifYD3f79H9hUbir/ND1XZiLBe3SXHZh5JcpcRTCUfrnmRPjnsN5d0Hi8DcI9KpwyfjkU5edImQgnRv3QHhYWPyQFRywCOWNC6SjxbIeMJ9PTRoFAR2JYWXCmZBwi9BCccNmqkot+lj8FMiAk3t4Lk+4JPMCSkuoqBuZ9ONWA1hi4h0KjQS35EIlo15MXYHeFw29Oi+mm4o1VNWr666qQT0g8444JrewJcSLYL1DSZ9W57FpQyX1POc2aP543qYdZSQg7n1qk+02lsFsdyOs5n8K8QGeXvOfHqc6z5og3bWeXBp6u86VifUavF+nHmnSmcfZHu7RG0yA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l7OA47sYM6PXMW23O5f6ggfWHUeDsbqkX5KtnOOQ3ok=;
 b=fqSQyf8ck1AL8GDkXR+z7bK7g33er4XNnTzfE3pBCYE4BlCD1F6EQhwXR940439jMUtY9ODXwxLvWX1JL8ySYVqnO/rZbqzfjZcOX9AwWjz8Nh/UmNtJTK6Yj+QVJF+xDr3X1Ap6Wpc6t+6FBiSMB4LYoJFf733fUkuM2tVSqtDA/+oE8O/2pLvVgTv0Yq/gxKoy7Tup+giVdF+eJ7/K9apRZ2wAZNPMgXn44fljAWzUPCzoam0AlgB+lsg4lznRZrxjwZDJ9OhFxVmn8kJGr0YzD64lvuFbrzhEHh8wVsoMavoEZ7S6klfMgFwIGAHSVrErM6aIFDscO2X6ZeeiAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH8PR11MB8286.namprd11.prod.outlook.com (2603:10b6:510:1c6::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.27; Tue, 21 Nov
 2023 07:35:03 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::ea97:f0a2:fffc:b892]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::ea97:f0a2:fffc:b892%3]) with mapi id 15.20.7002.027; Tue, 21 Nov 2023
 07:35:03 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v4 2/3] drm/i915/display: Convert
 intel_fb_modifier_to_tiling as non-static
Thread-Index: AQHaG5maOtTPhnbZRUS9yNyuOxaF77CDQhAAgAEhNYA=
Date: Tue, 21 Nov 2023 07:35:03 +0000
Message-ID: <8c19dbcf8b70eb5e1bdb929229310e741c690878.camel@intel.com>
References: <20231120100833.3221946-1-jouni.hogander@intel.com>
 <20231120100833.3221946-3-jouni.hogander@intel.com>
 <ZVtrCn49e9lxvOf9@intel.com>
In-Reply-To: <ZVtrCn49e9lxvOf9@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH8PR11MB8286:EE_
x-ms-office365-filtering-correlation-id: afd2fac2-2d89-4ff6-86c8-08dbea646001
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JArS24MSIwmtqMfww7j+9Xc6PmOCUoJdjFVY33VoW60SfJyRlWPkB111SiGGd2y28g5ASEzfhPhAKJEEWW1+JQmNPSP6BiDZ1mDO9QjkE2CJbargxfVBCA20EqefQwsubwJcFKmqyLbdEBdJHXsg+uacCjY/jA3Balw4Ys0O/jR7vsNZ/4pSqqWa0F69wtZOx0G5bkWO3y9GJstjigaCOOFYfgf90ZLGmCefd9hDa4SDqRxAxZ53GueCX8tXpPQFoz49/7KShmDWU97v3Hi7enkARY0tBQM6ue9M+1x8ADB8XuDLqL+CBm7seDS1+R1w2s9505+VKkzY8KA5LH2O/4FZAFZaLtT49V/TKbMXgn74H+q8wBEkLrSR3LB5+TrTgAa6CQXz0uKaQ3d+Pg2ep7mXMvg1KwnlJC9UOUnA2ljn43LBo6vBZGByxsX8df5FCwxNxEZiI9+vdwSE3xcpND9NqbYrwHnjErz+Hbf3ZsoqlPx2XCns/YPCzrygep9Xgggj4dwP8D1e4tfQd60OR2Q72urN9i/hh1SyfjzkGdQk+wvhlLMC8q04ITb/Cy8+/L6CK0V9UGFmhtJmeSdBsbt7Ln40xLufJqP6qO46BxtnEluu2x4IWAoDDUpeO4Hz
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(346002)(136003)(376002)(39860400002)(396003)(230922051799003)(451199024)(186009)(64100799003)(1800799012)(83380400001)(38100700002)(36756003)(82960400001)(86362001)(38070700009)(122000001)(6916009)(76116006)(66946007)(91956017)(66556008)(66476007)(66446008)(64756008)(316002)(4326008)(8676002)(8936002)(41300700001)(5660300002)(4001150100001)(2906002)(6512007)(26005)(2616005)(6486002)(71200400001)(478600001)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?R0dNMlNrbWEvRTNmL05EZ1JreWQ4aEZTNS9Rd3ZVL2hpSG5DRzVlM1VCRHBm?=
 =?utf-8?B?WElhc0duWnFZQVdySENZalArRVBOeTRDcjM5OUpUazdCaG5vUVZmd2pwZ1pH?=
 =?utf-8?B?MGIxYkFmVXFPUjVGRzVKaGM2YUx1Qm9NWlRreWFRSUFOTHVmdFlzbm5JcGNM?=
 =?utf-8?B?SjF5Q0J4cXFMa3VNT3RDZE4zUGZoZllISExYbll1NmloaW52TFZFdkNiL3Bm?=
 =?utf-8?B?N29SYlZYS3hrd2IzTGJNM3pSbU9tL0N5SmJCSlR5SXpidEZseGM2OU5BdFdM?=
 =?utf-8?B?Z0hxbG9ld2FYRGFDQzdzM0I2U09YSTVhb01VWFd4Y2QxaDFrN3NXNHQyNmg3?=
 =?utf-8?B?VmpVMFpHc3dvTnpNSFdVOGowTTVwam1zaFlxN2VIbzRpTEl0YjNIaHpIQnE0?=
 =?utf-8?B?OXBEd0lsQ00rSTlDUUhrcGQ5OFFjOVdoQVgrRjBBY0JRS09zRXpVMjdUUUFn?=
 =?utf-8?B?eHRUSlQ5TzdvOHZvOUkzWDhaKzAzMENUMkRlWXljSURWZm5QS29iNlI4Mks4?=
 =?utf-8?B?T21pcmQ0UFpCRXNKWGRsK0pWZW4zeENkSnE4Si8wWHhYUzFQbnF5TTlsTThN?=
 =?utf-8?B?ZjVDZDFFcDZUaEROZEJpcm80MmpuU1NrNjRHMS9hNE1DTElQM1NlMmZuMEg2?=
 =?utf-8?B?RUYrbkxybWZlSkJGQXpkSlFRWURjRjlMWnE0Y2FOSnpwRnNFNHorWVFrMjJI?=
 =?utf-8?B?c1lUUnN6T0lMcWZlZjZGKzFoSmtnNEdCRWhhK0VSNURkdWJMay8vME41UXdu?=
 =?utf-8?B?azZxVlJmRjgxUlRiOXdrSHpibEZWZGZkMmozUDVySEhvYnJRQU9EajIrRHZC?=
 =?utf-8?B?a1R4Z3FySnBsM1BIQjQ3Z1Buc1p1cmxKV0swbXQ3ZXNsLzZXbDNDZFIrc2F6?=
 =?utf-8?B?M0ptZHFxcGNHaTlDb0hSVzVvNXhQSzAyQXFkdThnRHFtbGpiVWhUSytTdWo0?=
 =?utf-8?B?RFZsaHNHK3R0UXRCYmkyVUxhSDEyVHlhTTZmeFA2OGQySVdLdkdFdm4xa2U5?=
 =?utf-8?B?a3JoRWFxVXFwR2hWb3hJTVF2OUxQTzZLbkhxc0VWdk0rMk9NeDJLZTNzQmZy?=
 =?utf-8?B?dnFDUWZ5aGUxbjFhMDdrNDJRL2xrdWovSm9TZHkzZUVRR2R2YkU3RzYyek96?=
 =?utf-8?B?elVzSFFwcW5kaWl3RUUxWVJHdDc2eW55SjdJSFNWd2ZVWm43endkVFMyRk44?=
 =?utf-8?B?cEsvVzRJZFNmM0EyQU9Bc3FxV1FzR0EwOXNPVk4vTTFiWFRmaU85MUMrSmF6?=
 =?utf-8?B?VVFwR1BNbjQ2VEZCZ1huOEhtakZVanZWbi9mVTR0Snd3Q2srVWh2M1R6aDBw?=
 =?utf-8?B?MEJFWktzQ2oyMUJOYWhOaU9hVVRmWDZ0cnhMYXRRS2FacndhZThCNlZhTkRE?=
 =?utf-8?B?UHVuamNvQzA1aDc0UTdjeHhFMENVWE5Kbk8zNGtFdlJvV2c3TFRWZVY4R3l2?=
 =?utf-8?B?VnIzUmY5SGw0TVo3aWQ2VnkxanphQkxsejE3bHZVM0ZpOWhlb0Q3OCtvS2hp?=
 =?utf-8?B?dENDM0hQd0ZBc1AyaXZzSTFxK3IzN2dsZnB6eEJmTEdnTVdYS1ZraExRQ3No?=
 =?utf-8?B?a2F5andkc3lxbFZmMVA3cm9WYjlQeUtMZkFaR3RRVVdXVVJNZ0FMYjUzM2R2?=
 =?utf-8?B?N2E1dFJGVDFSVERVOFlqNW9CeTRWM0p0R0RyMTZiblRSSTlITkluZ1dUS0dU?=
 =?utf-8?B?WmVMN2FQaVNBd2k4aHBWR3A0RnRHVVhVUDMvWVRzYUpVSEYxYktiTUlWREVG?=
 =?utf-8?B?cURmaDFWaFgyVnQyWlNqSGk1L1B5YkRnSFhOTDlqSmFCckpHVTRVc2F0WWZa?=
 =?utf-8?B?RmlaSHNPdUJDL3VNWVpiSTJwVTBEZnhTTWdQN2Z6d0Znc2VqUHRoNVdGQS9O?=
 =?utf-8?B?V3hNZVRaM0MyMm5IWVJZam1TbU1Yb1krUk1VZ2E1aUEzVGdVZFhFM3FGdC9i?=
 =?utf-8?B?RFJENU8zcEFMTzVkcDkrSEZMVE1xcmhIZkxRcmRGbndVQStkcmwrZWFXOG1o?=
 =?utf-8?B?anhTS2lKSC9wTUdYNTRHTDNCRWV5NENhelZJVjRhb210d055MWxkRms0bGpJ?=
 =?utf-8?B?MmxMOStWUEdOUFJ3UVRucnVoeHEveFQ1T2JSOXNUNzVoaWlGTTJhckxvRURP?=
 =?utf-8?B?L3ZneWpzOTVweHBUZVA5d2swU01DUVcvekU5ZmZ2ZDRESHhXQ3V5SjlNSG5P?=
 =?utf-8?B?a3c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <5C0653FCFF641A4BADE17631763B86BA@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: afd2fac2-2d89-4ff6-86c8-08dbea646001
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Nov 2023 07:35:03.1332 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Eq+lVtJzo8gCsFvcNIb88lyXWXq3tJvHoOUzPwTzVo5twNQAXFsung7+R7OYSNwoRg7z6BBex8Qn7UORhI0JwjfAOKYZluMTRkW1Zxw5kXQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8286
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 2/3] drm/i915/display: Convert
 intel_fb_modifier_to_tiling as non-static
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

T24gTW9uLCAyMDIzLTExLTIwIGF0IDE2OjE5ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
Cj4gT24gTW9uLCBOb3YgMjAsIDIwMjMgYXQgMTI6MDg6MzJQTSArMDIwMCwgSm91bmkgSMO2Z2Fu
ZGVyIHdyb3RlOgo+ID4gV2UgYXJlIGFib3V0IHRvIHNwbGl0IGk5MTUgc3BlY2lmaWMgY29kZSBm
cm9tIGludGVsX2ZiLmMuIENvbnZlcnQKPiA+IGludGVsX2ZiX21vZGlmaWVyX3RvX3RpbGluZyBh
cyBub24tc3RhdGljIHRvIGFsbG93IGNhbGxpbmcgaXQgZnJvbQo+ID4gc3BsaXQKPiA+IGNvZGUu
Cj4gCj4gV2Ugc2hvdWxkIG9ubHkgbmVlZCB0aGlzIGluIHRoZSBpOTE1IHBhdGguCgpJZiBJIG1v
dmUgaXQgaW50byBpOTE1IHNwZWNpZmljIHNvdXJjZSBmaWxlIEkgbmVlZCB0byBjb252ZXJ0IAps
b29rdXBfbW9kaWZpZXIgYXMgbm9uLXN0YXRpYy4gV291bGQgeW91IHByZWZlciB0aGF0IG9yIGRv
IHlvdSBoYXZlCnNvbWUgb3RoZXIgc3VnZ2VzdGlvbj8KCkJSLAoKSm91bmkgSMO2Z2FuZGVyCj4g
Cj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJA
aW50ZWwuY29tPgo+ID4gLS0tCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZmIuYyB8IDQwICsrKysrKysrKysrKy0tLS0tLS0tLQo+ID4gLS0tLQo+ID4gwqBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiLmggfMKgIDIgKysKPiA+IMKgMiBmaWxlcyBj
aGFuZ2VkLCAyMiBpbnNlcnRpb25zKCspLCAyMCBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmIuYwo+ID4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiLmMKPiA+IGluZGV4IDdjMmRmNmMxZjM3
Ny4uYTIzNWVjMGYxOTJkIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9mYi5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2ZiLmMKPiA+IEBAIC0zMDEsNiArMzAxLDI2IEBAIGxvb2t1cF9mb3JtYXRfaW5mbyhjb25z
dCBzdHJ1Y3QKPiA+IGRybV9mb3JtYXRfaW5mbyBmb3JtYXRzW10sCj4gPiDCoMKgwqDCoMKgwqDC
oMKgcmV0dXJuIE5VTEw7Cj4gPiDCoH0KPiA+IMKgCj4gPiArdW5zaWduZWQgaW50IGludGVsX2Zi
X21vZGlmaWVyX3RvX3RpbGluZyh1NjQgZmJfbW9kaWZpZXIpCj4gPiArewo+ID4gK8KgwqDCoMKg
wqDCoMKgdTggdGlsaW5nX2NhcHMgPSBsb29rdXBfbW9kaWZpZXIoZmJfbW9kaWZpZXIpLT5wbGFu
ZV9jYXBzICYKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIElOVEVMX1BMQU5FX0NBUF9USUxJTkdfTUFTSzsKPiA+ICsKPiA+ICvCoMKgwqDCoMKgwqDC
oHN3aXRjaCAodGlsaW5nX2NhcHMpIHsKPiA+ICvCoMKgwqDCoMKgwqDCoGNhc2UgSU5URUxfUExB
TkVfQ0FQX1RJTElOR19ZOgo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVy
biBJOTE1X1RJTElOR19ZOwo+ID4gK8KgwqDCoMKgwqDCoMKgY2FzZSBJTlRFTF9QTEFORV9DQVBf
VElMSU5HX1g6Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIEk5MTVf
VElMSU5HX1g7Cj4gPiArwqDCoMKgwqDCoMKgwqBjYXNlIElOVEVMX1BMQU5FX0NBUF9USUxJTkdf
NDoKPiA+ICvCoMKgwqDCoMKgwqDCoGNhc2UgSU5URUxfUExBTkVfQ0FQX1RJTElOR19ZZjoKPiA+
ICvCoMKgwqDCoMKgwqDCoGNhc2UgSU5URUxfUExBTkVfQ0FQX1RJTElOR19OT05FOgo+ID4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiBJOTE1X1RJTElOR19OT05FOwo+ID4g
K8KgwqDCoMKgwqDCoMKgZGVmYXVsdDoKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBNSVNTSU5HX0NBU0UodGlsaW5nX2NhcHMpOwo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoHJldHVybiBJOTE1X1RJTElOR19OT05FOwo+ID4gK8KgwqDCoMKgwqDCoMKgfQo+ID4g
K30KPiA+ICsKPiA+IMKgLyoqCj4gPiDCoCAqIGludGVsX2ZiX2dldF9mb3JtYXRfaW5mbzogR2V0
IGEgbW9kaWZpZXIgc3BlY2lmaWMgZm9ybWF0Cj4gPiBpbmZvcm1hdGlvbgo+ID4gwqAgKiBAY21k
OiBGQiBhZGQgY29tbWFuZCBzdHJ1Y3R1cmUKPiA+IEBAIC03MzcsMjYgKzc1Nyw2IEBAIGludGVs
X2ZiX2FsaWduX2hlaWdodChjb25zdCBzdHJ1Y3QKPiA+IGRybV9mcmFtZWJ1ZmZlciAqZmIsCj4g
PiDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIEFMSUdOKGhlaWdodCwgdGlsZV9oZWlnaHQpOwo+ID4g
wqB9Cj4gPiDCoAo+ID4gLXN0YXRpYyB1bnNpZ25lZCBpbnQgaW50ZWxfZmJfbW9kaWZpZXJfdG9f
dGlsaW5nKHU2NCBmYl9tb2RpZmllcikKPiA+IC17Cj4gPiAtwqDCoMKgwqDCoMKgwqB1OCB0aWxp
bmdfY2FwcyA9IGxvb2t1cF9tb2RpZmllcihmYl9tb2RpZmllciktPnBsYW5lX2NhcHMgJgo+ID4g
LcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgSU5URUxfUExB
TkVfQ0FQX1RJTElOR19NQVNLOwo+ID4gLQo+ID4gLcKgwqDCoMKgwqDCoMKgc3dpdGNoICh0aWxp
bmdfY2Fwcykgewo+ID4gLcKgwqDCoMKgwqDCoMKgY2FzZSBJTlRFTF9QTEFORV9DQVBfVElMSU5H
X1k6Cj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIEk5MTVfVElMSU5H
X1k7Cj4gPiAtwqDCoMKgwqDCoMKgwqBjYXNlIElOVEVMX1BMQU5FX0NBUF9USUxJTkdfWDoKPiA+
IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gSTkxNV9USUxJTkdfWDsKPiA+
IC3CoMKgwqDCoMKgwqDCoGNhc2UgSU5URUxfUExBTkVfQ0FQX1RJTElOR180Ogo+ID4gLcKgwqDC
oMKgwqDCoMKgY2FzZSBJTlRFTF9QTEFORV9DQVBfVElMSU5HX1lmOgo+ID4gLcKgwqDCoMKgwqDC
oMKgY2FzZSBJTlRFTF9QTEFORV9DQVBfVElMSU5HX05PTkU6Cj4gPiAtwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgcmV0dXJuIEk5MTVfVElMSU5HX05PTkU7Cj4gPiAtwqDCoMKgwqDCoMKg
wqBkZWZhdWx0Ogo+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoE1JU1NJTkdfQ0FT
RSh0aWxpbmdfY2Fwcyk7Cj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJu
IEk5MTVfVElMSU5HX05PTkU7Cj4gPiAtwqDCoMKgwqDCoMKgwqB9Cj4gPiAtfQo+ID4gLQo+ID4g
wqBib29sIGludGVsX2ZiX21vZGlmaWVyX3VzZXNfZHB0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1LCB1NjQKPiA+IG1vZGlmaWVyKQo+ID4gwqB7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgcmV0
dXJuIEhBU19EUFQoaTkxNSkgJiYgbW9kaWZpZXIgIT0gRFJNX0ZPUk1BVF9NT0RfTElORUFSOwo+
ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmIuaAo+
ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiLmgKPiA+IGluZGV4IGU4
NTE2N2Q2YmMzNC4uMjNkYjY2MjhmNTNlIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9mYi5oCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2ZiLmgKPiA+IEBAIC05NSw0ICs5NSw2IEBAIGludGVsX3VzZXJfZnJhbWVi
dWZmZXJfY3JlYXRlKHN0cnVjdCBkcm1fZGV2aWNlCj4gPiAqZGV2LAo+ID4gwqBib29sIGludGVs
X2ZiX21vZGlmaWVyX3VzZXNfZHB0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCB1NjQK
PiA+IG1vZGlmaWVyKTsKPiA+IMKgYm9vbCBpbnRlbF9mYl91c2VzX2RwdChjb25zdCBzdHJ1Y3Qg
ZHJtX2ZyYW1lYnVmZmVyICpmYik7Cj4gPiDCoAo+ID4gK3Vuc2lnbmVkIGludCBpbnRlbF9mYl9t
b2RpZmllcl90b190aWxpbmcodTY0IGZiX21vZGlmaWVyKTsKPiA+ICsKPiA+IMKgI2VuZGlmIC8q
IF9fSU5URUxfRkJfSF9fICovCj4gPiAtLSAKPiA+IDIuMzQuMQo+IAoK
