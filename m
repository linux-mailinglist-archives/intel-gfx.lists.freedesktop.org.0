Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C66D825513
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jan 2024 15:18:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D77010E61D;
	Fri,  5 Jan 2024 14:18:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1D7B10E61D
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jan 2024 14:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704464279; x=1736000279;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=NTllUY+mqhFGJ6tiBa4Ti2K1tMaaC77vaP3pTWSEpq8=;
 b=Ro0wqz8CN5RNl3r3QsHBWzBlwfKF4n/jt5jiCGinmbVHiXa0He4GqxPt
 ENBoNm1BHpeLV7axyk0gDNMrHV1rRwjt6qAaQB8Km2fefnr+7tLB06TC1
 XcFXeiKGvK17gatoMGbZYn7SkxpOTHakZqoRbvNDf1r1njrGnUS+7JozP
 ZBYL3NgGatAZwv8w2YQB3G9x6Cwk7pwLWh6scuv0+bNyem3tMcZbEJE09
 s2fG+X12UcRwy+puouLo0CmjrqByeH7FRxPc2di7c+XLQw14A+wdW/EY8
 T/GUVelz/yFDfxSj0/NymXZzm9YPsZ4xQ9S6DW6bDhtQRc918ZGXuU9kW g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10944"; a="397232885"
X-IronPort-AV: E=Sophos;i="6.04,334,1695711600"; d="scan'208";a="397232885"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2024 06:17:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,334,1695711600"; d="scan'208";a="15248034"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Jan 2024 06:17:58 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 5 Jan 2024 06:17:58 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 5 Jan 2024 06:17:57 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 5 Jan 2024 06:17:57 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 5 Jan 2024 06:17:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R7urjsN0H9VsS0SkjJTVLbj71ibuEM3BlGoqmaIGQa4iYDXolPphO+e76i632DJhMEcLMgCdeRM78tDz5W6ZEHZplzzsnYuZSFIbktlriWqjd+e2woO5Eqq8+ZSSJyiTOj6059O39W0bQPVze1HzNvMonvnL4CKyGFb5oGtQXwG5vGGlqcsA4wOKZb2Rdu0CXlisdIo6i19IwL2hHY7eP8BHDM25Iqf/rKH/R+GzVfMYqBwHMV9sIwEF+eRwrONqBmV7BoeGkCMc0yq6qZG3yTO9G5z5+zpwpR/0gAM4viyhmQi1xNs8DmrMRrIOCOSSSsKLd5R711skXtbHTDbkOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NTllUY+mqhFGJ6tiBa4Ti2K1tMaaC77vaP3pTWSEpq8=;
 b=EjnPUm55ZI/hDgVFt5WcHveSP1PwZAOrpbiur7nOVt7LhZNpiIruLkYI02H6/aBaHWnylUbEJSo+ruUruGTeRo3ZQAREu+SBC+oyNRGPOKKnEWJgXNEPi2o12np6KdYWTIxkSH0zBHVoGoq89II90z4jWTkjcRMJtGbMTEp6nlmOITFCy6AK2po2RqyEZMXB5JNZICgUTHmwuMchbCTtPVwkR+mbhuX+MkVEUR9fisEn2vGOZ3c5iD/lgSP3bG8D5xmrrgMAFaV3Lul4fqZDaoO2JK3qwjnp3QuRr8QRSOuZfmo8/u105yAHQTKLa6txd2sJ41z2RTzDCIreZRm5vQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by LV2PR11MB5975.namprd11.prod.outlook.com (2603:10b6:408:17d::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.17; Fri, 5 Jan
 2024 14:17:54 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::8b04:7396:7a40:f00d]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::8b04:7396:7a40:f00d%7]) with mapi id 15.20.7159.015; Fri, 5 Jan 2024
 14:17:53 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 3/7] drm/i915/psr: Carry su area in crtc_state
Thread-Topic: [PATCH 3/7] drm/i915/psr: Carry su area in crtc_state
Thread-Index: AQHaMeBfqbun5YGL+UOuie1zUdoRg7DLYA5A
Date: Fri, 5 Jan 2024 14:17:53 +0000
Message-ID: <MW4PR11MB70545C7A272F25EE7FFEC5A6EF662@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20231218175004.52875-1-jouni.hogander@intel.com>
 <20231218175004.52875-4-jouni.hogander@intel.com>
In-Reply-To: <20231218175004.52875-4-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|LV2PR11MB5975:EE_
x-ms-office365-filtering-correlation-id: f22683a0-6661-410c-7071-08dc0df91b5b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GmMIZduGFAa1HJBdvcavbvhc+wCsqq+PhqTFbYYmNMV7xt7P4v6qnN76FLdNdiiC4ecGUyfD0q2JjMJQ3WJLSJa95+dHMiIRPbX5NaDJ74+Y2OG0RPiNNQbjjpp3w5K6WVqUMP3OLVPOK+IdE9t1lKRao603ml22xllZpfchXbx1SnbpGUrMXODX6/pyDpnXqa5hlHatessV7EOFmQVHtFYSx0w1SE+jxua5ukybjgeHVM1DVN8hUM5k4jhZk1z9UDEO6xBvtO6sH90b/QP5dzVBtkUEAUCccknYnvWi5mk/oC/4rL/vXOPxfFV017nbvB4uOx3mEeYAQFVw0/j+EUkkL3LO8p0NOmpEphGsmOvoh0/8MZgs8V6Te7Nizcs+kCOIYgqWGQd3U8LM0MKDQ7uDa1HsHSDRGX14f6Aql5eCIoQllzjmmYot62Vsf+56ZE40xY1lTNw05V9Omj3Ui84JiH02dC9KZ1AmePLdvrjUkWfDlVlg9StrJ7vNrFvPB9psfNmZ7cJvKMeZZ+5Rji/BlJ/3jd4c6jbuyzj++prRhJBUXTi7UMXgBIDy3HfChIddWxPPawvRKwkFQN3F/q0dh/OepCmpNizAFT3Ab6S2fE3zWaJnUYX56IUNmv9F
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(376002)(346002)(396003)(39860400002)(136003)(230922051799003)(451199024)(1800799012)(64100799003)(186009)(66574015)(83380400001)(5660300002)(9686003)(53546011)(26005)(66556008)(122000001)(38100700002)(316002)(8676002)(8936002)(52536014)(2906002)(478600001)(66446008)(6506007)(7696005)(71200400001)(64756008)(66476007)(110136005)(41300700001)(76116006)(66946007)(82960400001)(33656002)(86362001)(38070700009)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Z3pwZ0RZVXZsNDRBZEVlMVVsUS93aXpSQWxJZW5rMWNXSDFBQlQ2MkRMUHZQ?=
 =?utf-8?B?MXowZFNlRVlaMENJSWlDM0IreWttTWZ1VmgwSlVQUUhEWVd2SnNuWVB6Y2xQ?=
 =?utf-8?B?eG1Xd20rcCtnQ1Q1OVk3UWFhZEVPdkdnVTZNYzVIb0RHSzNHSTcxQVJNRng2?=
 =?utf-8?B?NXdOV1VFeEVDWjZyNkc2OEZVUG1tMTlnREJiUHZuUStTZW11TTVGZmFDMkVH?=
 =?utf-8?B?Sy9adXpDN2lJRE51ZDhXVncxU1RlVjNzdUlIdFR3VkhNM1p3R2lCVUtnUTkx?=
 =?utf-8?B?dkhTRnRrcVI5dEhudXk0NVFlVjgyWGlxbTBobGpoSnI2N2JiakVuZ3NEREJ1?=
 =?utf-8?B?ZkhmWjFDcWRWZGRkYlR5VElOV1hqbnJxY0k0ZXd1bDZFZCtYeXg4VVVSU3R4?=
 =?utf-8?B?cStvb1Iwa0VLRENnTGp0cEdZVDBpSFovTHZMMnUyOE8xd1c2cHFRU0paMzZs?=
 =?utf-8?B?SkhlUzhxd1B2QjlucVdDMFRNSEpPeTlBbkR2b2d3SUpMa2JESU92eWp2Uk9p?=
 =?utf-8?B?VWE4alJSZnBIblRjTGFyS2huTzYrN2srOUROL1d2WEV5MVM0YjlUb2kyZEll?=
 =?utf-8?B?aHFNdTRNK2NnYVlIcHEvY1JuSE5PbnNYZmV2bGlvY3gxbEE2dGlDNHhXQ0R1?=
 =?utf-8?B?MDJnSWtWRUxrTnZqb1gyYTJRUWdxaUVCSkViRkthNmRSZStFVngvL2szVkpR?=
 =?utf-8?B?dFNNRHpwdEx1eUZPWEUyc2JSUXdjOFJmTXdYb1dhS09rY1RzVjdhVTh0K2xM?=
 =?utf-8?B?WG1QaXg1cWJ1VCtDUzRDTGNTbUtIYlNBMGwya2YwL1Axd093WWtsaVJsTlFN?=
 =?utf-8?B?aENueEI2bkU1S0pVbEJ5aHRVZG5pV1NGbWgzNnJOSEtkN1NCYkhwUkVZdloz?=
 =?utf-8?B?dEpBY0FDVEt6QTVpZTlDZ3d5VmhOU1VmcFE5MWpPOEVTM2VaOHJJVVlGcXlv?=
 =?utf-8?B?czZDUEF5TFdxeUJtdUhkV1RUdHp1VmpmZTBuZms2dTNtaE9DZ1BZdGFxcU9o?=
 =?utf-8?B?S2hoVko3eVplYnZySFNvR1BaMHNmNSt3MSt3b2JVbW1INkcraXFhUEdQU1RW?=
 =?utf-8?B?ZVphWmNYbE5xYUM1c2oybHFHcE44bWg2eE1tT3NhKzlaME1uenFrWFlFN3R4?=
 =?utf-8?B?QUVZaFJnMVpUYjNTWERSSW9ud0pzOGRZK1ZRWWJSN3k3K3pKL0k0TkxNc1NF?=
 =?utf-8?B?Sk9xcjgrR0FrcEQ3TWg1WWwxZkh0cWNNZnJCYmM3OC90aU0xNlFQRm92aDJh?=
 =?utf-8?B?NzNDaWx1a1RCNEx6dHhLMG91Njd1M3dOMyszV05aS1I5T0R5M1lybUxnMzlQ?=
 =?utf-8?B?UURsZEk3eWpKQ2xJOWYvVThOd0sxK1NWWGhNWTE4TXZnZEh4TVFlSXpDQXpn?=
 =?utf-8?B?cERyU00zY0d3Q3hhTk1rM29PT1pnYjgybEpyKzhvZVRrL2IyZWNnR204dldn?=
 =?utf-8?B?OEd6VC9YR3g4Um9VQ1craFFnMlR5Um9oZkZTd2V6R1VIMlZuNER1cEV1dHVu?=
 =?utf-8?B?VmJTdjJJTld5ZG10SDVHLzdKKzVBY2d0bnlHbmxZUTZiRkltL3EzVm1oRUVV?=
 =?utf-8?B?a3EzUnBWam5qb21Ba0F6MVBUVFZIb09UNXRkQUtNOW5sNjRWTG5aUGpsNDFu?=
 =?utf-8?B?Qm5veEllWHdBVkFYamFKUWo1RDhNSEM5dkZpakI0dGErdHRWeTRUUkZDMmxU?=
 =?utf-8?B?TVQxMzFaOUczOWRPZ2ZtMU5jTURvNit5SFQ3UXRrN1NKZll5WmVkOU9mby9V?=
 =?utf-8?B?dGRWSHFsVjIrcjN1Tjh1ZTZRb0RsSWRlMkRnaWk3YnBWemZtekE5YVF2M2Fv?=
 =?utf-8?B?RzQrSkdBZjRrVUp0UndWZlR1ckJxVmdDMFBOWmU2RHVSMnJQSWtDUnZLYWNz?=
 =?utf-8?B?WFQ3VjY3QWptbllPNFcwWTVoMkN0M2pnOGdoYm5aSGtXYmV3R0RQVW9kWERz?=
 =?utf-8?B?NUxBckZkaGNadG9wbTJqNkUrZU9yOTRTNzFGMlNUdVl4Zk50Z2dwbHk3a2hN?=
 =?utf-8?B?V256ZlBMYUtOUTE0VGNsdmdQaHZDWWZlMlBLVkpaSUY3Uk5qeFJwZDUwdTM0?=
 =?utf-8?B?Rm1KeGJ2RWxOZTYweC85Sk8xcm9HL0VRQjBQdWlpTk5Sam9VQ1VLV1k4L1hY?=
 =?utf-8?Q?euvGCAKKnfxTw9CCU7EMU8O2B?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f22683a0-6661-410c-7071-08dc0df91b5b
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jan 2024 14:17:53.6646 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: th21t08VG2+csstV5OnvmqhpYj9fY8plYN/Kw25cpSc9E9KZU2RSDmi1hiDz2KEmqZ+gecht8hoXQ5O69dLxpQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB5975
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEpvdW5pIEjDtmdh
bmRlcg0KPiBTZW50OiBNb25kYXksIERlY2VtYmVyIDE4LCAyMDIzIDc6NTAgUE0NCj4gVG86IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDMvN10gZHJt
L2k5MTUvcHNyOiBDYXJyeSBzdSBhcmVhIGluIGNydGNfc3RhdGUNCj4gDQo+IFN1X2FyZWEgaXMg
bmVlZGVkIHdoZW4gY29uZmlndXJpbmcgQ1VSX1BPU19FUkxZX1RQVCBhbmQgUElQRV9TUkNfU1pf
RVJMWV9UUFQuIFN0b3JlIGl0IGludG8gaW50ZWxfY3J0Y19zdGF0ZS0NCj4gPnBzcjJfc3VfYXJl
YS4NCj4gDQoNClJldmlld2VkLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29t
Pg0KDQo+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50
ZWwuY29tPg0KPiAtLS0NCj4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlw
ZXMuaCAgICB8ICAyICsNCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmMgICAgICB8IDYyICsrKysrKysrKystLS0tLS0tLS0NCj4gIDIgZmlsZXMgY2hhbmdlZCwgMzYg
aW5zZXJ0aW9ucygrKSwgMjggZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiBpbmRleCAzNDFkODBj
MmI5ZGUuLjA1ZGQ4ZGVjZDYxMCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gQEAgLTE0MDQsNiArMTQwNCw4IEBA
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlIHsNCj4gDQo+ICAJdTMyIHBzcjJfbWFuX3RyYWNrX2N0
bDsNCj4gDQo+ICsJc3RydWN0IGRybV9yZWN0IHBzcjJfc3VfYXJlYTsNCj4gKw0KPiAgCS8qIFZh
cmlhYmxlIFJlZnJlc2ggUmF0ZSBzdGF0ZSAqLw0KPiAgCXN0cnVjdCB7DQo+ICAJCWJvb2wgZW5h
YmxlLCBpbl9yYW5nZTsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
DQo+IGluZGV4IDhhMzUwYjllMzNjZC4uNjdmNjhjMjZhMzEyIDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAgLTE5NDEsNyArMTk0MSw3IEBAIHZv
aWQgaW50ZWxfcHNyMl9wcm9ncmFtX3RyYW5zX21hbl90cmtfY3RsKGNvbnN0IHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0ICB9DQo+IA0KPiAgc3RhdGljIHZvaWQgcHNyMl9tYW5fdHJr
X2N0bF9jYWxjKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLA0KPiAtCQkJCSAg
c3RydWN0IGRybV9yZWN0ICpjbGlwLCBib29sIGZ1bGxfdXBkYXRlKQ0KPiArCQkJCSAgYm9vbCBm
dWxsX3VwZGF0ZSkNCj4gIHsNCj4gIAlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVs
X2NydGMoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjKTsNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsgQEAgLTE5NTYsMTcgKzE5NTYs
MjEgQEAgc3RhdGljIHZvaWQNCj4gcHNyMl9tYW5fdHJrX2N0bF9jYWxjKHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpjcnRjX3N0YXRlLA0KPiAgCQlnb3RvIGV4aXQ7DQo+ICAJfQ0KPiANCj4gLQlp
ZiAoY2xpcC0+eTEgPT0gLTEpDQo+ICsJaWYgKGNydGNfc3RhdGUtPnBzcjJfc3VfYXJlYS55MSA9
PSAtMSkNCj4gIAkJZ290byBleGl0Ow0KPiANCj4gIAlpZiAoSVNfQUxERVJMQUtFX1AoZGV2X3By
aXYpIHx8IERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSAxNCkgew0KPiAtCQl2YWwgfD0gQURMUF9Q
U1IyX01BTl9UUktfQ1RMX1NVX1JFR0lPTl9TVEFSVF9BRERSKGNsaXAtPnkxKTsNCj4gLQkJdmFs
IHw9IEFETFBfUFNSMl9NQU5fVFJLX0NUTF9TVV9SRUdJT05fRU5EX0FERFIoY2xpcC0+eTIgLSAx
KTsNCj4gKwkJdmFsIHw9IEFETFBfUFNSMl9NQU5fVFJLX0NUTF9TVV9SRUdJT05fU1RBUlRfQURE
UihjcnRjX3N0YXRlLT5wc3IyX3N1X2FyZWEueTEpOw0KPiArCQl2YWwgfD0NCj4gK0FETFBfUFNS
Ml9NQU5fVFJLX0NUTF9TVV9SRUdJT05fRU5EX0FERFIoY3J0Y19zdGF0ZS0+cHNyMl9zdV9hcmVh
LnkyIC0NCj4gKzEpOw0KPiAgCX0gZWxzZSB7DQo+IC0JCWRybV9XQVJOX09OKGNydGNfc3RhdGUt
PnVhcGkuY3J0Yy0+ZGV2LCBjbGlwLT55MSAlIDQgfHwgY2xpcC0+eTIgJSA0KTsNCj4gKwkJZHJt
X1dBUk5fT04oY3J0Y19zdGF0ZS0+dWFwaS5jcnRjLT5kZXYsDQo+ICsJCQkgICAgY3J0Y19zdGF0
ZS0+cHNyMl9zdV9hcmVhLnkxICUgNCB8fA0KPiArCQkJICAgIGNydGNfc3RhdGUtPnBzcjJfc3Vf
YXJlYS55MiAlIDQpOw0KPiANCj4gLQkJdmFsIHw9IFBTUjJfTUFOX1RSS19DVExfU1VfUkVHSU9O
X1NUQVJUX0FERFIoY2xpcC0+eTEgLyA0ICsgMSk7DQo+IC0JCXZhbCB8PSBQU1IyX01BTl9UUktf
Q1RMX1NVX1JFR0lPTl9FTkRfQUREUihjbGlwLT55MiAvIDQgKyAxKTsNCj4gKwkJdmFsIHw9IFBT
UjJfTUFOX1RSS19DVExfU1VfUkVHSU9OX1NUQVJUX0FERFIoDQo+ICsJCQljcnRjX3N0YXRlLT5w
c3IyX3N1X2FyZWEueTEgLyA0ICsgMSk7DQo+ICsJCXZhbCB8PSBQU1IyX01BTl9UUktfQ1RMX1NV
X1JFR0lPTl9FTkRfQUREUigNCj4gKwkJCWNydGNfc3RhdGUtPnBzcjJfc3VfYXJlYS55MiAvIDQg
KyAxKTsNCj4gIAl9DQo+ICBleGl0Og0KPiAgCWNydGNfc3RhdGUtPnBzcjJfbWFuX3RyYWNrX2N0
bCA9IHZhbDsNCj4gQEAgLTE5OTIsOCArMTk5Niw3IEBAIHN0YXRpYyB2b2lkIGNsaXBfYXJlYV91
cGRhdGUoc3RydWN0IGRybV9yZWN0ICpvdmVybGFwX2RhbWFnZV9hcmVhLA0KPiAgCQlvdmVybGFw
X2RhbWFnZV9hcmVhLT55MiA9IGRhbWFnZV9hcmVhLT55MjsgIH0NCj4gDQo+IC1zdGF0aWMgdm9p
ZCBpbnRlbF9wc3IyX3NlbF9mZXRjaF9waXBlX2FsaWdubWVudChjb25zdCBzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gLQkJCQkJCXN0cnVjdCBkcm1fcmVjdCAqcGlwZV9j
bGlwKQ0KPiArc3RhdGljIHZvaWQgaW50ZWxfcHNyMl9zZWxfZmV0Y2hfcGlwZV9hbGlnbm1lbnQo
c3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gKypjcnRjX3N0YXRlKQ0KPiAgew0KPiAgCXN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Y19zdGF0ZS0+dWFwaS5j
cnRjLT5kZXYpOw0KPiAgCWNvbnN0IHN0cnVjdCBkcm1fZHNjX2NvbmZpZyAqdmRzY19jZmcgPSAm
Y3J0Y19zdGF0ZS0+ZHNjLmNvbmZpZzsgQEAgLTIwMDYsOSArMjAwOSwxMCBAQCBzdGF0aWMgdm9p
ZA0KPiBpbnRlbF9wc3IyX3NlbF9mZXRjaF9waXBlX2FsaWdubWVudChjb25zdCBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqYw0KPiAgCWVsc2UNCj4gIAkJeV9hbGlnbm1lbnQgPSBjcnRjX3N0YXRl
LT5zdV95X2dyYW51bGFyaXR5Ow0KPiANCj4gLQlwaXBlX2NsaXAtPnkxIC09IHBpcGVfY2xpcC0+
eTEgJSB5X2FsaWdubWVudDsNCj4gLQlpZiAocGlwZV9jbGlwLT55MiAlIHlfYWxpZ25tZW50KQ0K
PiAtCQlwaXBlX2NsaXAtPnkyID0gKChwaXBlX2NsaXAtPnkyIC8geV9hbGlnbm1lbnQpICsgMSkg
KiB5X2FsaWdubWVudDsNCj4gKwljcnRjX3N0YXRlLT5wc3IyX3N1X2FyZWEueTEgLT0gY3J0Y19z
dGF0ZS0+cHNyMl9zdV9hcmVhLnkxICUgeV9hbGlnbm1lbnQ7DQo+ICsJaWYgKGNydGNfc3RhdGUt
PnBzcjJfc3VfYXJlYS55MiAlIHlfYWxpZ25tZW50KQ0KPiArCQljcnRjX3N0YXRlLT5wc3IyX3N1
X2FyZWEueTIgPSAoKGNydGNfc3RhdGUtPnBzcjJfc3VfYXJlYS55MiAvDQo+ICsJCQkJCQl5X2Fs
aWdubWVudCkgKyAxKSAqIHlfYWxpZ25tZW50Ow0KPiAgfQ0KPiANCj4gIC8qDQo+IEBAIC0yMDE3
LDggKzIwMjEsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9wc3IyX3NlbF9mZXRjaF9waXBlX2FsaWdu
bWVudChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqYw0KPiAgICovDQo+ICBzdGF0aWMg
dm9pZA0KPiAgaW50ZWxfcHNyMl9zZWxfZmV0Y2hfZXRfYWxpZ25tZW50KHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpjcnRjX3N0YXRlLA0KPiAtCQkJCSAgc3RydWN0IGludGVsX3BsYW5lX3N0YXRl
ICpjdXJzb3Jfc3RhdGUsDQo+IC0JCQkJICBzdHJ1Y3QgZHJtX3JlY3QgKnBpcGVfY2xpcCkNCj4g
KwkJCQkgIHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqY3Vyc29yX3N0YXRlKQ0KPiAgew0KPiAg
CXN0cnVjdCBkcm1fcmVjdCBpbnRlcjsNCj4gDQo+IEBAIC0yMDI2LDExICsyMDI5LDExIEBAIGlu
dGVsX3BzcjJfc2VsX2ZldGNoX2V0X2FsaWdubWVudChzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
Y3J0Y19zdGF0ZSwNCj4gIAkgICAgIWN1cnNvcl9zdGF0ZS0+dWFwaS52aXNpYmxlKQ0KPiAgCQly
ZXR1cm47DQo+IA0KPiAtCWludGVyID0gKnBpcGVfY2xpcDsNCj4gKwlpbnRlciA9IGNydGNfc3Rh
dGUtPnBzcjJfc3VfYXJlYTsNCj4gIAlpZiAoIWRybV9yZWN0X2ludGVyc2VjdCgmaW50ZXIsICZj
dXJzb3Jfc3RhdGUtPnVhcGkuZHN0KSkNCj4gIAkJcmV0dXJuOw0KPiANCj4gLQljbGlwX2FyZWFf
dXBkYXRlKHBpcGVfY2xpcCwgJmN1cnNvcl9zdGF0ZS0+dWFwaS5kc3QsDQo+ICsJY2xpcF9hcmVh
X3VwZGF0ZSgmY3J0Y19zdGF0ZS0+cHNyMl9zdV9hcmVhLCAmY3Vyc29yX3N0YXRlLT51YXBpLmRz
dCwNCj4gIAkJCSAmY3J0Y19zdGF0ZS0+cGlwZV9zcmMpOw0KPiAgfQ0KPiANCj4gQEAgLTIwNzQs
NyArMjA3Nyw2IEBAIGludCBpbnRlbF9wc3IyX3NlbF9mZXRjaF91cGRhdGUoc3RydWN0IGludGVs
X2F0b21pY19zdGF0ZSAqc3RhdGUsICB7DQo+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2ID0gdG9faTkxNShzdGF0ZS0+YmFzZS5kZXYpOw0KPiAgCXN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpjcnRjX3N0YXRlID0gaW50ZWxfYXRvbWljX2dldF9uZXdfY3J0Y19zdGF0ZShzdGF0
ZSwgY3J0Yyk7DQo+IC0Jc3RydWN0IGRybV9yZWN0IHBpcGVfY2xpcCA9IHsgLngxID0gMCwgLnkx
ID0gLTEsIC54MiA9IElOVF9NQVgsIC55MiA9IC0xIH07DQo+ICAJc3RydWN0IGludGVsX3BsYW5l
X3N0YXRlICpuZXdfcGxhbmVfc3RhdGUsICpvbGRfcGxhbmVfc3RhdGUsDQo+ICAJCSpjdXJzb3Jf
cGxhbmVfc3RhdGUgPSBOVUxMOw0KPiAgCXN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmU7DQo+IEBA
IC0yMDg5LDYgKzIwOTEsMTEgQEAgaW50IGludGVsX3BzcjJfc2VsX2ZldGNoX3VwZGF0ZShzdHJ1
Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gIAkJZ290byBza2lwX3NlbF9mZXRjaF9z
ZXRfbG9vcDsNCj4gIAl9DQo+IA0KPiArCWNydGNfc3RhdGUtPnBzcjJfc3VfYXJlYS54MSA9IDA7
DQo+ICsJY3J0Y19zdGF0ZS0+cHNyMl9zdV9hcmVhLnkxID0gLTE7DQo+ICsJY3J0Y19zdGF0ZS0+
cHNyMl9zdV9hcmVhLngyID0gSU5UX01BWDsNCj4gKwljcnRjX3N0YXRlLT5wc3IyX3N1X2FyZWEu
eTIgPSAtMTsNCj4gKw0KPiAgCS8qDQo+ICAJICogQ2FsY3VsYXRlIG1pbmltYWwgc2VsZWN0aXZl
IGZldGNoIGFyZWEgb2YgZWFjaCBwbGFuZSBhbmQgY2FsY3VsYXRlDQo+ICAJICogdGhlIHBpcGUg
ZGFtYWdlZCBhcmVhLg0KPiBAQCAtMjEyMywxNCArMjEzMCwxNCBAQCBpbnQgaW50ZWxfcHNyMl9z
ZWxfZmV0Y2hfdXBkYXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCQkJ
aWYgKG9sZF9wbGFuZV9zdGF0ZS0+dWFwaS52aXNpYmxlKSB7DQo+ICAJCQkJZGFtYWdlZF9hcmVh
LnkxID0gb2xkX3BsYW5lX3N0YXRlLT51YXBpLmRzdC55MTsNCj4gIAkJCQlkYW1hZ2VkX2FyZWEu
eTIgPSBvbGRfcGxhbmVfc3RhdGUtPnVhcGkuZHN0LnkyOw0KPiAtCQkJCWNsaXBfYXJlYV91cGRh
dGUoJnBpcGVfY2xpcCwgJmRhbWFnZWRfYXJlYSwNCj4gKwkJCQljbGlwX2FyZWFfdXBkYXRlKCZj
cnRjX3N0YXRlLT5wc3IyX3N1X2FyZWEsICZkYW1hZ2VkX2FyZWEsDQo+ICAJCQkJCQkgJmNydGNf
c3RhdGUtPnBpcGVfc3JjKTsNCj4gIAkJCX0NCj4gDQo+ICAJCQlpZiAobmV3X3BsYW5lX3N0YXRl
LT51YXBpLnZpc2libGUpIHsNCj4gIAkJCQlkYW1hZ2VkX2FyZWEueTEgPSBuZXdfcGxhbmVfc3Rh
dGUtPnVhcGkuZHN0LnkxOw0KPiAgCQkJCWRhbWFnZWRfYXJlYS55MiA9IG5ld19wbGFuZV9zdGF0
ZS0+dWFwaS5kc3QueTI7DQo+IC0JCQkJY2xpcF9hcmVhX3VwZGF0ZSgmcGlwZV9jbGlwLCAmZGFt
YWdlZF9hcmVhLA0KPiArCQkJCWNsaXBfYXJlYV91cGRhdGUoJmNydGNfc3RhdGUtPnBzcjJfc3Vf
YXJlYSwgJmRhbWFnZWRfYXJlYSwNCj4gIAkJCQkJCSAmY3J0Y19zdGF0ZS0+cGlwZV9zcmMpOw0K
PiAgCQkJfQ0KPiAgCQkJY29udGludWU7DQo+IEBAIC0yMTM4LDcgKzIxNDUsNyBAQCBpbnQgaW50
ZWxfcHNyMl9zZWxfZmV0Y2hfdXBkYXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRl
LA0KPiAgCQkJLyogSWYgYWxwaGEgY2hhbmdlZCBtYXJrIHRoZSB3aG9sZSBwbGFuZSBhcmVhIGFz
IGRhbWFnZWQgKi8NCj4gIAkJCWRhbWFnZWRfYXJlYS55MSA9IG5ld19wbGFuZV9zdGF0ZS0+dWFw
aS5kc3QueTE7DQo+ICAJCQlkYW1hZ2VkX2FyZWEueTIgPSBuZXdfcGxhbmVfc3RhdGUtPnVhcGku
ZHN0LnkyOw0KPiAtCQkJY2xpcF9hcmVhX3VwZGF0ZSgmcGlwZV9jbGlwLCAmZGFtYWdlZF9hcmVh
LA0KPiArCQkJY2xpcF9hcmVhX3VwZGF0ZSgmY3J0Y19zdGF0ZS0+cHNyMl9zdV9hcmVhLCAmZGFt
YWdlZF9hcmVhLA0KPiAgCQkJCQkgJmNydGNfc3RhdGUtPnBpcGVfc3JjKTsNCj4gIAkJCWNvbnRp
bnVlOw0KPiAgCQl9DQo+IEBAIC0yMTU1LDcgKzIxNjIsNyBAQCBpbnQgaW50ZWxfcHNyMl9zZWxf
ZmV0Y2hfdXBkYXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCQlkYW1h
Z2VkX2FyZWEueDEgKz0gbmV3X3BsYW5lX3N0YXRlLT51YXBpLmRzdC54MSAtIHNyYy54MTsNCj4g
IAkJZGFtYWdlZF9hcmVhLngyICs9IG5ld19wbGFuZV9zdGF0ZS0+dWFwaS5kc3QueDEgLSBzcmMu
eDE7DQo+IA0KPiAtCQljbGlwX2FyZWFfdXBkYXRlKCZwaXBlX2NsaXAsICZkYW1hZ2VkX2FyZWEs
ICZjcnRjX3N0YXRlLT5waXBlX3NyYyk7DQo+ICsJCWNsaXBfYXJlYV91cGRhdGUoJmNydGNfc3Rh
dGUtPnBzcjJfc3VfYXJlYSwgJmRhbWFnZWRfYXJlYSwNCj4gKyZjcnRjX3N0YXRlLT5waXBlX3Ny
Yyk7DQo+IA0KPiAgCQkvKg0KPiAgCQkgKiBDdXJzb3IgcGxhbmUgbmV3IHN0YXRlIGlzIHN0b3Jl
ZCB0byBhZGp1c3Qgc3UgYXJlYSB0byBjb3ZlciBAQCAtMjE3MSw3ICsyMTc4LDcgQEAgaW50DQo+
IGludGVsX3BzcjJfc2VsX2ZldGNoX3VwZGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpz
dGF0ZSwNCj4gIAkgKiBzaG91bGQgaWRlbnRpZnkgY2FzZXMgd2hlcmUgdGhpcyBoYXBwZW5zIGFu
ZCBmaXggdGhlIGFyZWENCj4gIAkgKiBjYWxjdWxhdGlvbiBmb3IgdGhvc2UuDQo+ICAJICovDQo+
IC0JaWYgKHBpcGVfY2xpcC55MSA9PSAtMSkgew0KPiArCWlmIChjcnRjX3N0YXRlLT5wc3IyX3N1
X2FyZWEueTEgPT0gLTEpIHsNCj4gIAkJZHJtX2luZm9fb25jZSgmZGV2X3ByaXYtPmRybSwNCj4g
IAkJCSAgICAgICJTZWxlY3RpdmUgZmV0Y2ggYXJlYSBjYWxjdWxhdGlvbiBmYWlsZWQgaW4gcGlw
ZSAlY1xuIiwNCj4gIAkJCSAgICAgIHBpcGVfbmFtZShjcnRjLT5waXBlKSk7DQo+IEBAIC0yMTg1
LDcgKzIxOTIsNyBAQCBpbnQgaW50ZWxfcHNyMl9zZWxfZmV0Y2hfdXBkYXRlKHN0cnVjdCBpbnRl
bF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCWlmICgoSVNfRElTUExBWV9JUF9TVEVQKGRldl9w
cml2LCBJUF9WRVIoMTQsIDApLCBTVEVQX0EwLCBTVEVQX0IwKSB8fA0KPiAgCSAgICAgSVNfQUxE
RVJMQUtFX1AoZGV2X3ByaXYpIHx8IElTX1RJR0VSTEFLRShkZXZfcHJpdikpICYmDQo+ICAJICAg
IGNydGNfc3RhdGUtPnNwbGl0dGVyLmVuYWJsZSkNCj4gLQkJcGlwZV9jbGlwLnkxID0gMDsNCj4g
KwkJY3J0Y19zdGF0ZS0+cHNyMl9zdV9hcmVhLnkxID0gMDsNCj4gDQo+ICAJcmV0ID0gZHJtX2F0
b21pY19hZGRfYWZmZWN0ZWRfcGxhbmVzKCZzdGF0ZS0+YmFzZSwgJmNydGMtPmJhc2UpOw0KPiAg
CWlmIChyZXQpDQo+IEBAIC0yMTkzLDEwICsyMjAwLDkgQEAgaW50IGludGVsX3BzcjJfc2VsX2Zl
dGNoX3VwZGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gDQo+ICAJLyog
QWRqdXN0IHN1IGFyZWEgdG8gY292ZXIgY3Vyc29yIGZ1bGx5IGFzIG5lY2Vzc2FyeSAqLw0KPiAg
CWlmIChjdXJzb3JfcGxhbmVfc3RhdGUpDQo+IC0JCWludGVsX3BzcjJfc2VsX2ZldGNoX2V0X2Fs
aWdubWVudChjcnRjX3N0YXRlLCBjdXJzb3JfcGxhbmVfc3RhdGUsDQo+IC0JCQkJCQkgICZwaXBl
X2NsaXApOw0KPiArCQlpbnRlbF9wc3IyX3NlbF9mZXRjaF9ldF9hbGlnbm1lbnQoY3J0Y19zdGF0
ZSwgY3Vyc29yX3BsYW5lX3N0YXRlKTsNCj4gDQo+IC0JaW50ZWxfcHNyMl9zZWxfZmV0Y2hfcGlw
ZV9hbGlnbm1lbnQoY3J0Y19zdGF0ZSwgJnBpcGVfY2xpcCk7DQo+ICsJaW50ZWxfcHNyMl9zZWxf
ZmV0Y2hfcGlwZV9hbGlnbm1lbnQoY3J0Y19zdGF0ZSk7DQo+IA0KPiAgCS8qDQo+ICAJICogTm93
IHRoYXQgd2UgaGF2ZSB0aGUgcGlwZSBkYW1hZ2VkIGFyZWEgY2hlY2sgaWYgaXQgaW50ZXJzZWN0
IHdpdGggQEAgLTIyMTEsNyArMjIxNyw3IEBAIGludA0KPiBpbnRlbF9wc3IyX3NlbF9mZXRjaF91
cGRhdGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJCSAgICAhbmV3X3Bs
YW5lX3N0YXRlLT51YXBpLnZpc2libGUpDQo+ICAJCQljb250aW51ZTsNCj4gDQo+IC0JCWludGVy
ID0gcGlwZV9jbGlwOw0KPiArCQlpbnRlciA9IGNydGNfc3RhdGUtPnBzcjJfc3VfYXJlYTsNCj4g
IAkJc2VsX2ZldGNoX2FyZWEgPSAmbmV3X3BsYW5lX3N0YXRlLT5wc3IyX3NlbF9mZXRjaF9hcmVh
Ow0KPiAgCQlpZiAoIWRybV9yZWN0X2ludGVyc2VjdCgmaW50ZXIsICZuZXdfcGxhbmVfc3RhdGUt
PnVhcGkuZHN0KSkgew0KPiAgCQkJc2VsX2ZldGNoX2FyZWEtPnkxID0gLTE7DQo+IEBAIC0yMjU2
LDcgKzIyNjIsNyBAQCBpbnQgaW50ZWxfcHNyMl9zZWxfZmV0Y2hfdXBkYXRlKHN0cnVjdCBpbnRl
bF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCX0NCj4gDQo+ICBza2lwX3NlbF9mZXRjaF9zZXRf
bG9vcDoNCj4gLQlwc3IyX21hbl90cmtfY3RsX2NhbGMoY3J0Y19zdGF0ZSwgJnBpcGVfY2xpcCwg
ZnVsbF91cGRhdGUpOw0KPiArCXBzcjJfbWFuX3Rya19jdGxfY2FsYyhjcnRjX3N0YXRlLCBmdWxs
X3VwZGF0ZSk7DQo+ICAJcmV0dXJuIDA7DQo+ICB9DQo+IA0KPiAtLQ0KPiAyLjM0LjENCg0K
