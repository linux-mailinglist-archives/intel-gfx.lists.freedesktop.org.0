Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D078A7E7BFC
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Nov 2023 12:50:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0448D10E99B;
	Fri, 10 Nov 2023 11:50:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E9CD10E9A3
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Nov 2023 11:50:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699617009; x=1731153009;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lt3jEiGL0dByIQz8KIbJdefAVxVQoJnpPEXggTVfqPc=;
 b=iWa3bXzgiT7EUVlibozFC9xMS/+ka98RixEWr6Pxpfmt0eXJFsk01S6N
 zq45+nWFNeSRrNCAKtwhEqCN2vakfkkTKBglvWzEoOWp+hnckqPsd8kl1
 as+itUItQbZUdOxnQiNX5W5SnGFXxh8CKJ0J9fbF8UbaHKoWxNqeLMyut
 FswbmpnsulIfQzH5iryxWC5QlatCvxzKLT8pDhoJe32ZmjezDb+OJzeIF
 sFhg/BfIhh0pXZ917TeHsx3O8awZsDeCCKaRUTdrq3bHCFaJN9M6NaXv2
 nC544VG2yc69aFVzxl9iMJq2F6v8B7m9NRkWX0m/wQnIY2QPmDr+h48wa w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10889"; a="387336260"
X-IronPort-AV: E=Sophos;i="6.03,291,1694761200"; d="scan'208";a="387336260"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2023 03:50:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10889"; a="767326722"
X-IronPort-AV: E=Sophos;i="6.03,291,1694761200"; d="scan'208";a="767326722"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Nov 2023 03:50:08 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 10 Nov 2023 03:50:08 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 10 Nov 2023 03:50:08 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 10 Nov 2023 03:50:08 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 10 Nov 2023 03:50:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E1JiQP57sDLdfcfxdFomOwLHhTgYyZpRmQop65sbCHp3tef5l5eBO87ClTkt9bWMDgtoGZtGI1XdxnY2dHw1lqOE1RD6lkxTcQ/zkGmgQF1Fj+4zTvD1L4A+2BhV7AGVQz5ksgTycJOrYnQOv89NMTa2RL3r6551yjQQDT2KY6kb5nNPfgmsI0ryRaL244H9r31MJd1yN6i90QXDR06fvZvJPOQLxgU7kfyi19cQ4wdKpNrg+uD49795fAiF22Gdd2YYR6jfYgtZNHSL5+2x6PrpIxYmAIb3Dz/ZTv/0fhh6BDFCNAKDQmTU9DvN0jJAgZWFmWsQwXsDoMKGWpgD/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lt3jEiGL0dByIQz8KIbJdefAVxVQoJnpPEXggTVfqPc=;
 b=W39MhwhdpBWdQfmNiUrgTtTs8kAGgdWRYqG3e+jPorzbBG9UxWzjGJmSZAaPvC9+Dp8hBSboAxJjy7X8cvJuhizsuM4LoVc1UwFHTmzRhVOZqaTVchjg+LuPNxLF7HPuCwP51v1h7K5KKZ3nNa+NkqNfstUd/l5mpHAAlfVhHydebYT1mRSmJDUAusfthOy2BoaX0TNlm063DZHL2QTin/88oTdhAV+c5YziPNJYWiLoFppVQ3pSZ1jwE+gEtmoNx3/I1LIiJbLEf4nQ2C/djTjTQzBwWgzMDZ3xNSGgHzF0d3fGCgZlLZugIqT2CxM0JPf6aYue3O51pUAxBHRWgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by DS0PR11MB7901.namprd11.prod.outlook.com (2603:10b6:8:f4::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6977.21; Fri, 10 Nov
 2023 11:50:00 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::8b04:7396:7a40:f00d]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::8b04:7396:7a40:f00d%6]) with mapi id 15.20.6954.028; Fri, 10 Nov 2023
 11:50:00 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 1/1] drm/i915/xe2lpd: implement WA for
 underruns while enabling FBC
Thread-Index: AQHaEpKsGpkZLTeoaUKNQchI5X+lObBzcpSw
Date: Fri, 10 Nov 2023 11:50:00 +0000
Message-ID: <MW4PR11MB70546FEBC4674A2999296DCBEFAEA@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20231108222514.26297-1-vinod.govindapillai@intel.com>
 <20231108222514.26297-2-vinod.govindapillai@intel.com>
In-Reply-To: <20231108222514.26297-2-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|DS0PR11MB7901:EE_
x-ms-office365-filtering-correlation-id: f497b4bb-506c-4cb9-a374-08dbe1e32b25
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /eExhXO8OkwGWddPm1OOkNy5wykoGR9D1wC+YnZoJuyR3oPWDJvH2vXWMJ7/dhV8lSfrzZMcf+Y3WzZ/zCJduNAPvdbG8vz9zLUEd6Fd4KVdOjBQsxc/0Qnsy4/tiTcefte7eNGGQYXEMalM6+S43fvIqzEUL+F3vdz8/GB5izwUy6a2MUwH0FzldGTWqng0fzZRxVKr6h/jkJIZe7cv5CVy2+ax+NyoDan7uWGNK5sSO8FcQsu1ie8R/DDuKNdXlzL4JXPqF3zeLsKTtJcriZo4r3dshQ6taWnciiiholY64AIMB3N37l+Oy2gkCnsGoNYqZjwdk1lPVxHqSJGiWE3MP0NP3ire4c5JVT1qS5XfS0QbnEtxk4eyHllcC7nlTFLuZBDGfrR9OcDIILcDbrv9qmXAs5aoAW+esIWSyX/Y7r3FJYBOsqxKwNpZ6S2bgWAgf8TK19GgAdxWrFEKHg7zXgv7/F5tc2CuDW0a4LaGS87kO9c1yGLOhhqbvQMBQH4PGRMHFjBh/dpuytg9T/AmetHfom4NgaLgzmqTotr9hsF8UrG9Q+VP14WhcNa6Vl8x0EVCKMwOAGmuwxhsPXZ3neRnQLnzPfkUQfrmPtHyOq+mq4qQG1LnIcWo0Zw1
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(346002)(376002)(39860400002)(366004)(230922051799003)(451199024)(1800799009)(186009)(64100799003)(71200400001)(478600001)(38100700002)(2906002)(122000001)(82960400001)(41300700001)(86362001)(316002)(76116006)(64756008)(66446008)(66476007)(66556008)(66946007)(110136005)(38070700009)(33656002)(8676002)(4326008)(8936002)(83380400001)(5660300002)(52536014)(6506007)(7696005)(53546011)(107886003)(9686003)(55016003)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZURwVjk3V21VTlpVQWhKNTB5cnpDcXJvbk5TNGcxUXk0aWVZTE5sREM0TlFH?=
 =?utf-8?B?RlcyUDEzaUhvS2o0V1d0cTZHdjBpR284b1FyUXVDazZyOGNhMDYybktUN0kw?=
 =?utf-8?B?Wmd5eUdYU3E5dms3RWpJTm5VQjZDNy9RaVBCVWhwa2dwbFozcHB2Q0FyQ3g1?=
 =?utf-8?B?L2thbkp0b2RyUi9WNEQrZ3BQMU1zbElDSmN2N2dZN2Iwdkc2REhzWUdMYXE5?=
 =?utf-8?B?UXYzL09Kc2h2aHV1UXdEbmFHVHRvd3J0aFViQk44by9BNUx1V0Q2WWJaUU56?=
 =?utf-8?B?TVljcytvSGdaU1h6R1hxa2ZScUE4NVdoUUFLYktQNkNGQ1p0d05BNXZBTDUx?=
 =?utf-8?B?em15S2RvV0I4ZWxEMUJqQlpWdGQyWlc5dUNpQWhYMURBa3VlNXhmMXBCS280?=
 =?utf-8?B?WkV0WGF3YlZ2ejRtNXlUSEU3eFdPM2xCeC9iVlRxVXBrRkx2eTYyNEs1WHB5?=
 =?utf-8?B?RjlxZjFNdTdlTldiYmpmeW5JYjdQMGdBcjczaUJNMWM2Zmd5OEF6L1lrc09u?=
 =?utf-8?B?ejlyKzJQOEZRcEZpRGxndEVpVTRkVC9OaXpTSEdKZU9NRGZmaUg2ejFjcytN?=
 =?utf-8?B?ZHFhUUFvdVMvV1dsaWFwZEtWTyt2bVp1Vkh5OHdhaXl5RG80NGJOdTJrZDhl?=
 =?utf-8?B?TEFwU3BtNUxQT3VtMDYrdVlnNXFVeGcxUFFmeDVaOE9jUWpDWjBmMmlrampW?=
 =?utf-8?B?MFJUUW9WdFpGNmNGWFNqUnVtcW03MHlIN2VWVkdOcXY5T3VsSmJZSXMxb0ty?=
 =?utf-8?B?eFc4NENDRGZHd29wNGtOOEp4ZFRHTkRCdENKZVJXbUFZdWNvRVdldzNOdVVJ?=
 =?utf-8?B?c3d5MUVyc1cycm9UaEd4ekRTcGJlYmxZcTB2SmV3dGh0OEpyZUszTld0OG1y?=
 =?utf-8?B?N01NQUdIVnRGenNPVkxsaUJuQ1pGNjlRbkMrbTlEdmIzTFZSbjdEUkZCQXJj?=
 =?utf-8?B?VG5LV080MHFlU0J1cGRTbGxJZUlNZ2FsUWZuK3U1cFpaWU14UE5ZZy9EdGJx?=
 =?utf-8?B?N0xXKzhuTUdxYnJrdGc4NElxTTNidkxlTlp2RjBaTGtyTEhBTU9Dd0RKQkp6?=
 =?utf-8?B?Rldwc1pNaTRaTW10SmRURTAyQ3I0UkZlZFd1Vlh5bllMY2d1blArbkM2dm9T?=
 =?utf-8?B?T2pzamx1OUJ4RjJvQzVLbU1zNU1ucGRaclNBN2Q0cmlIcWY5a05PYWljckl6?=
 =?utf-8?B?TWhqYTNoTmxIZDFmbVB2YVoyam03SU9zSDdvU1lrM3dHMldmaGE4M3RkaVpS?=
 =?utf-8?B?Mzg1Yk1MMmJPZnMxT3hKSGJRUlFycTdLclY5QXcrcC9Vblg5bGlDK3JndUta?=
 =?utf-8?B?WGF4UllvWnQ5MmQ2eWppZXdtdlU4cXRsY2lPZGJBSWlBTThmcXh6cFNSOG5P?=
 =?utf-8?B?QTVSTkdYcXhFajUzcVloY1VScTFGSTBQSE5WOGFBUlZaclBjQVdGbWJaTVd6?=
 =?utf-8?B?c24zSSthTkczSkNBU0FhQW1pL1I5cGVvYXBLeW9iNlZKbjFIMzIwdGNRUjRX?=
 =?utf-8?B?bmFuWTE1bWwvUXJzWHZWdno0R1lmb0FIQ3g4VWkyUUptWEt2VEY2WnEzRkMr?=
 =?utf-8?B?Rm5WMitXT1VGT1JpODMrSHN5UWc1aGVwM3BRaldlWU5uSkcwQjBiVE45L05u?=
 =?utf-8?B?bzhqQWVncmo1WlBEdnRoZ2tNYkhnRXpkcXdaREE5dzJOQ2lqV1BxTDZnQUMw?=
 =?utf-8?B?TEF6RnBacWQ0OHhjMDhMOHp1eXFaQU5US2xCcHpuWlNCSjV2UUM3WTBWY0xr?=
 =?utf-8?B?WFNLZGpVRnd6bDk5NTNUNHd5QXgvbjBsNVlXRlZKM3ZBL2tWYkFCUDFObStm?=
 =?utf-8?B?SjV6OE82Q3V0aXVqRHN4SjVZWklla3czT0VNYmF1ZVc5WkhGTzNIeVB0bVQv?=
 =?utf-8?B?alpRNUZwUHFlQnkxaE9PZU9BV0h5L0Y4YUUwdm43UWNNOHYwaWdZeDl0ZDJ1?=
 =?utf-8?B?TjA1VTR1TUllQ0N2QkJkZ0RtcldESU5mWkc4aE5XL2RZcnhpbVY5Mi9CcU9k?=
 =?utf-8?B?ZVJlZDF6WWxUTjM5WVpnMVpkYWZlQjR2OXc1Y3VHR21rNEVNcHUrcGZFOXNE?=
 =?utf-8?B?ME5WTGR4ZS84VTlJcnkreEsvbFZRSEdjRzlHL2tJODJrQ2ljczdWWTBBa2k3?=
 =?utf-8?Q?13l+eSWXQTTVIJ0XNx/dyC0w/?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f497b4bb-506c-4cb9-a374-08dbe1e32b25
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Nov 2023 11:50:00.0517 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NBh5Aq6EihRqG4KqzqqUgnCk/qXjvpIFqcNqCgpd0pBkkcM4u+aHILltXYncF7NLOWYQ0yAqdZvelqbHhVLEGA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7901
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 1/1] drm/i915/xe2lpd: implement WA for
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFZpbm9kIEdvdmlu
ZGFwaWxsYWkNCj4gU2VudDogVGh1cnNkYXksIE5vdmVtYmVyIDksIDIwMjMgMTI6MjUgQU0NCj4g
VG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IFN5cmphbGEsIFZpbGxl
IDx2aWxsZS5zeXJqYWxhQGludGVsLmNvbT4NCj4gU3ViamVjdDogW0ludGVsLWdmeF0gW1BBVENI
IHYzIDEvMV0gZHJtL2k5MTUveGUybHBkOiBpbXBsZW1lbnQgV0EgZm9yIHVuZGVycnVucyB3aGls
ZSBlbmFibGluZyBGQkMNCj4gDQo+IEZJRk8gdW5kZXJydW5zIGFyZSBvYnNlcnZlZCB3aGVuIEZC
QyBpcyBlbmFibGVkIG9uIHBsYW5lIDIgb3IgMy4NCj4gVGhpcyBpcyByb290IGNhdXNlZCB0byBh
IEhXIGJ1ZyBhbmQgdGhlIHJlY29tbWVuZGVkIFdBIGlzIHRvIHVwZGF0ZSB0aGUgRkJDIGVuYWJs
aW5nIHNlcXVlbmNlLiBUaGUgcGxhbmUgYmluZGluZyByZWdpc3RlciBiaXRzDQo+IG5lZWQgdG8g
YmUgdXBkYXRlZCBzZXBhcmF0ZWx5IGJlZm9yZSBwcm9ncmFtbWluZyB0aGUgRkJDIGVuYWJsZSBi
aXQuDQo+IA0KPiBIU0Q6IDE2MDIxMjMyMDQ3DQo+IFNpZ25lZC1vZmYtYnk6IFZpbm9kIEdvdmlu
ZGFwaWxsYWkgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPg0KDQpUbyBtZSB0aGUgcGF0
Y2ggc2VlbXMgdG8gZG8gd2hhdCBXQSBzdWdnZXN0cy4NCg0KUmV2aWV3ZWQtYnk6IE1pa2EgS2Fo
b2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQoNCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jIHwgMTMgKysrKysrKysrKysrLQ0KPiAgMSBmaWxlIGNo
YW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiBpbmRleCBiZGUxMmZlNjIyNzUuLjhhMzU5
NGU0ZDk5MiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9mYmMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5j
DQo+IEBAIC02MDgsNiArNjA4LDcgQEAgc3RhdGljIHUzMiBpdmJfZHBmY19jdGwoc3RydWN0IGlu
dGVsX2ZiYyAqZmJjKSAgc3RhdGljIHZvaWQgaXZiX2ZiY19hY3RpdmF0ZShzdHJ1Y3QgaW50ZWxf
ZmJjICpmYmMpICB7DQo+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBmYmMtPmk5
MTU7DQo+ICsJdTMyIGRwZmNfY3RsOw0KPiANCj4gIAlpZiAoRElTUExBWV9WRVIoaTkxNSkgPj0g
MTApDQo+ICAJCWdsa19mYmNfcHJvZ3JhbV9jZmJfc3RyaWRlKGZiYyk7DQo+IEBAIC02MTcsOCAr
NjE4LDE4IEBAIHN0YXRpYyB2b2lkIGl2Yl9mYmNfYWN0aXZhdGUoc3RydWN0IGludGVsX2ZiYyAq
ZmJjKQ0KPiAgCWlmIChpbnRlbF9ndF9zdXBwb3J0X2xlZ2FjeV9mZW5jaW5nKHRvX2d0KGk5MTUp
KSkNCj4gIAkJc25iX2ZiY19wcm9ncmFtX2ZlbmNlKGZiYyk7DQo+IA0KPiArCS8qDQo+ICsJICog
eGUybHBkOiBXQSBmb3IgRklGTyB1bmRlcnJ1bnMgd2hpbGUgZW5hYmxpbmcgRkJDIG9uIHBsYW5l
cyAyIG9yIDMNCj4gKwkgKiAxLldyaXRlIEZCQ19DVEwgd2l0aCBQbGFuZSBiaW5kaW5nIHNldCBj
b3JyZWN0bHkgd2l0aCBGQkMgZW5hYmxlID0gMA0KPiArCSAqIDIuV3JpdGUgRkJDX0NUTCB3aXRo
IFBsYW5lIGJpbmRpbmcgc2V0IGNvcnJlY3RseSB3aXRoIEZCQyBlbmFibGUgPSAxDQo+ICsJICog
SFNEOiAxNjAyMTIzMjA0Nw0KPiArCSAqLw0KPiArCWRwZmNfY3RsID0gaXZiX2RwZmNfY3RsKGZi
Yyk7DQo+ICsJaWYgKERJU1BMQVlfVkVSKGk5MTUpID49IDIwKQ0KPiArCQlpbnRlbF9kZV93cml0
ZShpOTE1LCBJTEtfRFBGQ19DT05UUk9MKGZiYy0+aWQpLCBkcGZjX2N0bCk7DQo+ICsNCj4gIAlp
bnRlbF9kZV93cml0ZShpOTE1LCBJTEtfRFBGQ19DT05UUk9MKGZiYy0+aWQpLA0KPiAtCQkgICAg
ICAgRFBGQ19DVExfRU4gfCBpdmJfZHBmY19jdGwoZmJjKSk7DQo+ICsJCSAgICAgICBEUEZDX0NU
TF9FTiB8IGRwZmNfY3RsKTsNCj4gIH0NCj4gDQo+ICBzdGF0aWMgYm9vbCBpdmJfZmJjX2lzX2Nv
bXByZXNzaW5nKHN0cnVjdCBpbnRlbF9mYmMgKmZiYykNCj4gLS0NCj4gMi4zNC4xDQoNCg==
