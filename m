Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C277C841EF7
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jan 2024 10:13:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5589A112E5F;
	Tue, 30 Jan 2024 09:13:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FF5A112E5F
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jan 2024 09:13:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706606026; x=1738142026;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=m3ucQWmgrqYIzRhmDGSnnTncVqwOnF1YhvglS4IRZuY=;
 b=k1zfDOUjX4ThilH/uKtgRYGb+BIgncbVQLLp1/5zNATKjtcBVKoZPL4f
 5Wr0cpm3SNEm/m0/5N2UelLju9xf1A887vkWQdd3qzXbFF1hfyFY6kqQD
 8tnK2JIyPZMqRZJ1uGP5bkm/nJJ27/AUmaFJWEMnZP8d94SCdd9cUySAL
 lV28ZT8UhWikXiZDOGF6d4SysmKZhJR52pTT61T+6O5wB9ItcSjUJhuEz
 adbO7ZQO2Rs/tG4MwUVxppWajsuant3L/Dr1FVgL45mLIXewKjBt46gMq
 4MmwBW3oePHxh1KEhpDUfCf6lTl8r9AMJXfIDRhqTdHbZDl+V+I+HZgjE g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="21737810"
X-IronPort-AV: E=Sophos;i="6.05,707,1701158400"; d="scan'208";a="21737810"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2024 01:13:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,707,1701158400"; d="scan'208";a="22379338"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jan 2024 01:13:45 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Jan 2024 01:13:44 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Jan 2024 01:13:43 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 30 Jan 2024 01:13:43 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 30 Jan 2024 01:13:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gWZgKn6RcwUbmeMLHvDTgyByRS1VoRspTuiM4zrxpNN4K+g8iy2fDQccrVSYi/q2rZeFM7jWk3uqIRd1I41joj0n/bb821h4MuT0WEYPR0CUJJqlFyBEcmPoh3r/4HiCk4HIN+siAnalpeubj4FcC/IvjhZWs3rGGVmEXDIiP33kqxpp1T8PY2F7AI1ztOoJ2p1vexLDJlLmob5akfGdwBkWPPi3Dc9b+iPfEudcftYMZCAoI+gr8Rj9JJnhdUUDctPVOO1XDei+qIttN5Fhk3kbSfYm1d/Dd8QUPwNnOcxJZhSNVQaYdrmCh3EXdxNnHR1Enb+NE6pnUMyHpY8aBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m3ucQWmgrqYIzRhmDGSnnTncVqwOnF1YhvglS4IRZuY=;
 b=lVgO4atY2sGC+Pa6FS2RBu9WjzVlPAQdCcf+nm0XV+zFCyUzXVKT/oAthz8OC99N7GIfl1LIPbSzU+1OeD7GDIHrbc5doQQl3/jdJgPxBB1BygIfCiuzBuYBmBHMJABz0hKsor5UJ47Eik/RS2QUzxduIApiasvgnDCrlQa3cjeAmRKBE+O+H3c5wz6xJelEGehcJpo7OupnwC8pGiNpvq07IWDuVLTDUsFM9KxYQpZ+/t38P+y0gfG6KTFg6CMsILia9taZMgWe0NhcujGEwLijQdh76yxWUdN+b66G9hby/PyVHJp2TZ41spXTN/+okx0V5ZZS8Uzkn485mRYFsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7228.34; Tue, 30 Jan 2024 09:13:42 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737%7]) with mapi id 15.20.7228.029; Tue, 30 Jan 2024
 09:13:42 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 4/4] drm/i915/alpm: Alpm aux wake configuration for lnl
Thread-Topic: [PATCH v2 4/4] drm/i915/alpm: Alpm aux wake configuration for lnl
Thread-Index: AQHaP+GjK4I5TvW0l068aZqvjlc81LDyLLcAgAAMvoA=
Date: Tue, 30 Jan 2024 09:13:41 +0000
Message-ID: <ed56364f3d826918941a72220a27e711f4b01a43.camel@intel.com>
References: <20240105141504.2808991-1-jouni.hogander@intel.com>
 <20240105141504.2808991-5-jouni.hogander@intel.com>
 <IA0PR11MB7307E6C8932D0FDA618DA825BA7D2@IA0PR11MB7307.namprd11.prod.outlook.com>
In-Reply-To: <IA0PR11MB7307E6C8932D0FDA618DA825BA7D2@IA0PR11MB7307.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CO1PR11MB5057:EE_
x-ms-office365-filtering-correlation-id: 3564e87d-f965-45f9-716e-08dc2173c0c3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SkSkFqgGsuvvArk+C5swDdHcLGgxTIApWRLHmmkkFYiB4laRy8qqPeIKx2lFtsyIis35ppCAb+Q07HLVMezfhSYanjSEYopnuUIWhAe9SyYQWLPyxLE7EJIKLMameaWNQIZMQRbCmRHuNO+i8tTJDmnXfhwPhTwBA3gyMYH0AWA62pJizyLp/OiRhh1f8a+k2YzDQLHyfvUo7MrO44QlroWnLYKrpGK14X7h/3meRHREdkC3a1uw0VGgGLGmZuJjZe7SwbeCV+rD8ucsNfi78FoSN05hy6IwN7NF7JcHGy1DR4FeuSoEmOHzRtDwf8783eH0q8BWjd4nEG2W6ZLyLorRuHl7HDilY3jd2oS8MGENVnoY9r4fexFypvR+R7cn7KLutQ6+e6hQGTbsa97zFBu7qyzDnEnXLc7ROWIoiAnLLXaGt8nDf46a4EckajH7uOmamYRo+9DGsljr7pjf6VN1bcztFH1mH7/5Qw0qPYV3J9vNXLkeDt4uuAadPsgfgCDMTk4ni7RfxIU40Oi8gW5NYBHrMV5ENpB/MA7jePHWIkeWuJElNob5F13tgLwjFHEB5wyOZGafgxpDt42FOAu/GGOk2rrWwhA7+BgqwpxsmYAEtRY+h0/B5V13mPfd
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(366004)(136003)(396003)(39860400002)(346002)(230922051799003)(64100799003)(186009)(1800799012)(451199024)(6506007)(26005)(66574015)(53546011)(83380400001)(36756003)(86362001)(2616005)(6512007)(38070700009)(82960400001)(8676002)(71200400001)(5660300002)(8936002)(478600001)(122000001)(76116006)(38100700002)(66476007)(66946007)(6486002)(91956017)(110136005)(64756008)(66446008)(316002)(2906002)(41300700001)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?S01QYW1hZ2xqb2VsdzBkUGxsVXdGalQ0VG1SM3U3OUxONGdiMzZXK0RFUWY2?=
 =?utf-8?B?enRvZVR5bDk5eG1NZWwram9weTZCaE41OS8yL3BWTVFoR2hlSkRJTWM5Y2JW?=
 =?utf-8?B?aFJycHJSSlRIa3BnaTVUOG1TWEtyN2owMkF0RGhOKy9DVzJSdXNRekZWTndt?=
 =?utf-8?B?VEUxUmplT3pUdjR0VzhyL0V3djdOTEJGdXl5WjJuWDZUTE5ueG9MQk1JQVMx?=
 =?utf-8?B?dEhuS0JDOU11MmU5SHhCTWNmWU1kOVFwU1ZkSUx0VytvR3Z6Zmg0dVcrTVN2?=
 =?utf-8?B?OFdVQjdJemZqeDdsOTlJL1pydWpSSjUvRjJiVzQrSTNPSzNDVGFqOWcvN3Bl?=
 =?utf-8?B?MkFJS09XSm92MzU3T2p0ME4xb1JWSXEzL2hIRUNVZy9kMlBKSU1qWlgrQXFo?=
 =?utf-8?B?ZUtWbTNmbFRhdjMvWHNOQU5FL3FKdWM0eGNsTHZEUzNmY2hKcEpjUGZDZHpS?=
 =?utf-8?B?cFY4ZkcyT0E1ZitmSzN4c0ZWODUwRVBuazlScGdyYjRlYzRZVUtNUGFwTVBW?=
 =?utf-8?B?Uk14WWdXY1hhSUNLcUlLYmxRSzJJTXBWWWNJRjFjVUVaRnpubjhsa2JubEJq?=
 =?utf-8?B?OHE1eVlhVUxxUXVPdFFYK0JQeFAvNkFxWE1INHNzZzBzbjZwVUQvaU83bEty?=
 =?utf-8?B?VnFwaUtuZHRmbWVtK08xMVpNZGFjV08rNmIvM1Fzd3A3MU16Tkk2UEJyYjA1?=
 =?utf-8?B?b1pLcWpxZ2xwcW1XRlplMEM0RCttVkF4V3pCUlFUbGR1RGlTYTNVZHhxc0Vs?=
 =?utf-8?B?TTRvOFJ1WkZUTTNxczJldGs0Nmh6T2g0RlpOWjgwREZDTDNoM1NEN0VqOU5h?=
 =?utf-8?B?WTlFT09YUE12M1JNWkN6R25pb2ZoeWNZQUdVWURXdUZwNTEzZm1jNGVVOUZa?=
 =?utf-8?B?bUtwZkpJS2E2Q09na29oRWpTS3hPQkd5VDVjSExXYWRraHR6S3ZLdzRkS1V6?=
 =?utf-8?B?S0N6Tkhrd3VQRUMyN3U1OUNjZDludUc4Q01qYVNybU5ZN1UyME4vYkl3d2E5?=
 =?utf-8?B?VUw2MzI3b1c4QVNZR0pJMG42LzZMMDhodG9ueEk5Q0c3OVA2amhqcnJ6bk9y?=
 =?utf-8?B?L003WGNpWGxMNiszUDNOUzJDUDdSNWxuQVJMd2FHZWZOTDVPS1VKcEt6Tlhr?=
 =?utf-8?B?d2ZzMTArS1BJdUJjaWtIT2ZtM3V4cDdyZm5VMmNnalI3cytjV3hmbDgzUEtS?=
 =?utf-8?B?VlB2M1hxNXh5MDVzWkZqcWZhbXk1aERIVUM4eENPZzRPNURqNjAzSzUvMVUr?=
 =?utf-8?B?TmhiOTFQcGpIRnZHQXZOV3YzVXl0dTNuejQrSWJZemFkT2FrRGlxOFRkT1U5?=
 =?utf-8?B?dk9VOGdVSVhqS2IxT29pMDR2ZWFwRWdEZ29HemtTNWFoemtYeC93TDloSE51?=
 =?utf-8?B?WTJqYnltR05QdkVkRnhkdUV0TU5odGxTSlJxR0FuQVdRTlhvSmtFY1RjZjRy?=
 =?utf-8?B?ZWdxU1o4eUJmYU1iSEtETnRYYUZLK0FlRkVDUlpiQm1GYWdqZnYzRGdtQWFO?=
 =?utf-8?B?OFVtNklmeURoOUdQTXh4ZXFpT0kwcndORWpzUEFVQjNURXdJb0JxcTBlUU8y?=
 =?utf-8?B?aXg5elNIamcyWENFek9RT0hPMjRNK3pjTUE4S0F3THkxR21BcTB0RVJRbDNJ?=
 =?utf-8?B?bCs3QUlxRnV3QkNkYWdqYkJ4UzNKS0treUo2TnJNTUJMWVRLaExnaC92Wm44?=
 =?utf-8?B?UzdTWjlqMGdHVVlxVkNUTFJKc21nRkI0WjV4bk1SZDI1V0NYUFZnbVhHcWVP?=
 =?utf-8?B?QkE2YmdQYk5JSm5tVnlMTWxKMnN4bVd6a3FvTDlBcSt4TlVGTm96d2NLczdK?=
 =?utf-8?B?cXBkcG00dm15ZVVnVnVyVC9PU1FKVUNyLy9jVU1uQnZtN056bERIa1V4OW1w?=
 =?utf-8?B?QXhaS09HWlZSRExtREV3cXRHL0hUakZZU2tKRTZzc0VVa0FzcGp4WkhiaGJU?=
 =?utf-8?B?MW9kRGpXZFdoTHFrbWtCQjJ0cytPa2VpbVZrNkx3bTlEVkVlRDV6Y1FJeEhU?=
 =?utf-8?B?dDB1cjNtOStyM29GNkZ2YzRiRmNQQmpJMmhiUGdsa2JHUWFVL1ZzZzBJWkR5?=
 =?utf-8?B?eGR1eGdVdWtPdHFRRy9xWXM0OGhTcWh4dUptWHNaSHZ0V0tpMDdmTDFrSkVT?=
 =?utf-8?B?MUxqd3ZiSlNaSkRTbzZjTG1DR0h4NkRENUpiTmR0SG14MkQ2ZUIxNlFKUE9X?=
 =?utf-8?B?akE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <342BB1CB1AB0CD4B8C2A26A8EB6F3D90@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3564e87d-f965-45f9-716e-08dc2173c0c3
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jan 2024 09:13:41.8315 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mHH65nmsRwMD9IM50FCvJ9slCtRiSNPB+ufiddcFRGZ+tfJ7Prz4cSGiSwcE2kFcZ6+xJTbMlUInZGVBV6RUtiXMUPTOVdO9eoUKdfLbax4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5057
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

T24gVHVlLCAyMDI0LTAxLTMwIGF0IDA4OjI4ICswMDAwLCBNdXJ0aHksIEFydW4gUiB3cm90ZToK
PiAKPiAKPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gPiBGcm9tOiBJbnRlbC1nZngg
PGludGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmCj4gPiBP
ZiBKb3VuaQo+ID4gSMO2Z2FuZGVyCj4gPiBTZW50OiBGcmlkYXksIEphbnVhcnkgNSwgMjAyNCA3
OjQ1IFBNCj4gPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+ID4gU3ViamVj
dDogW1BBVENIIHYyIDQvNF0gZHJtL2k5MTUvYWxwbTogQWxwbSBhdXggd2FrZSBjb25maWd1cmF0
aW9uCj4gPiBmb3IgbG5sCj4gPiAKPiA+IEx1bmFybGFrZSBoYXMgc29tZSBjb25maWd1cmF0aW9u
cyBpbiBBTFBNX0NUTCByZWdpc3RlciBmb3IgbGVnYWN5Cj4gPiBBTFBNIGFzCj4gPiB3ZWxsLiBX
cml0ZSB0aGVzZS4KPiA+IAo+ID4gQnNwZWM6IDcxNDc3Cj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6
IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPgo+ID4gLS0tCj4gPiDC
oGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAxNSArKysrKysrKysr
KysrKysKPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKykKPiA+IAo+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPiA+IGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+ID4gaW5kZXggN2ZiZDE4
ZjIxYzNiLi4wOWQ0OTZkN2RjZWUgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jCj4gPiBAQCAtMTUyNyw2ICsxNTI3LDE4IEBAIHN0YXRpYyB2b2lkIHdt
X29wdGltaXphdGlvbl93YShzdHJ1Y3QKPiA+IGludGVsX2RwCj4gPiAqaW50ZWxfZHAsCj4gPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB3
YV8xNjAxMzgzNTQ2OF9iaXRfZ2V0KGludGVsX2RwKSwgMCk7wqAKPiA+IH0KPiA+IAo+ID4gK3N0
YXRpYyB2b2lkIGxubF9hbHBtX2NvbmZpZ3VyZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKSB7
Cj4gPiArwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBk
cF90b19pOTE1KGludGVsX2RwKTsKPiA+ICvCoMKgwqDCoMKgwqDCoGVudW0gdHJhbnNjb2RlciBj
cHVfdHJhbnNjb2RlciA9IGludGVsX2RwLT5wc3IudHJhbnNjb2RlcjsKPiA+ICvCoMKgwqDCoMKg
wqDCoHN0cnVjdCBhbHBtX3BhcmFtZXRlcnMgKmFscG1fcGFyYW1zID0gJmludGVsX2RwLQo+ID4g
PnBzci5hbHBtX3BhcmFtczsKPiA+ICsKPiA+ICvCoMKgwqDCoMKgwqDCoGludGVsX2RlX3dyaXRl
KGRldl9wcml2LCBBTFBNX0NUTChjcHVfdHJhbnNjb2RlciksCj4gCj4gRG8gd2UgbmVlZCBpbnRl
bF9kZV9ybXcoKQoKSSdtIG5vdCBleHBlY3RpbmcgdGhpcyBiZWluZyB3cml0dGVuIGFueXdoZXJl
IGVsc2UuIElmIExPQkYgaXMgdXNlZAp0aGVuIFBTUi9QUiBoYXMgdG8gYmUgZGlzYWJsZWQuCgpC
UiwKCkpvdW5pIEjDtmdhbmRlcgoKPiAKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgQUxQTV9DVExfRVhURU5ERURfRkFTVF9XQUtFX0VOQUJMRSB8Cj4gPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIEFMUE1fQ1RMX0FMUE1f
RU5UUllfQ0hFQ0soYWxwbV9wYXJhbXMtCj4gPiA+IGNoZWNrX2VudHJ5X2xpbmVzKSB8Cj4gPiAr
Cj4gPiArQUxQTV9DVExfRVhURU5ERURfRkFTVF9XQUtFX1RJTUUoYWxwbV9wYXJhbXMtPmZhc3Rf
d2FrZV9saW5lcykpOwo+ID4gK30KPiA+ICsKPiA+IMKgc3RhdGljIHZvaWQgaW50ZWxfcHNyX2Vu
YWJsZV9zb3VyY2Uoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKPiA+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
Y29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUKPiA+ICpjcnRjX3N0YXRlKcKgIHsKPiA+IEBA
IC0xNTgyLDYgKzE1OTQsOSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9wc3JfZW5hYmxlX3NvdXJjZShz
dHJ1Y3QKPiA+IGludGVsX2RwCj4gPiAqaW50ZWxfZHAsCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpbnRlbF9kcC0+cHNyLnBzcjJf
c2VsX2ZldGNoX2VuYWJsZWQgPwo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgSUdOT1JFX1BTUjJfSFdfVFJBQ0tJTkcgOiAwKTsKPiA+
IAo+ID4gK8KgwqDCoMKgwqDCoMKgaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSAyMCkKPiA+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBsbmxfYWxwbV9jb25maWd1cmUoaW50ZWxf
ZHApOwo+ID4gKwo+ID4gwqDCoMKgwqDCoMKgwqDCoC8qCj4gPiDCoMKgwqDCoMKgwqDCoMKgICog
V2FfMTYwMTM4MzU0NjgKPiA+IMKgwqDCoMKgwqDCoMKgwqAgKiBXYV8xNDAxNTY0ODAwNgo+ID4g
LS0KPiA+IDIuMzQuMQo+IAo+IFRoYW5rcyBhbmQgUmVnYXJkcywKPiBBcnVuIFIgTXVydGh5Cj4g
LS0tLS0tLS0tLS0tLS0tLS0tLS0KPiAKCg==
