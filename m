Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 51BF46A422D
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Feb 2023 14:04:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE8E010E008;
	Mon, 27 Feb 2023 13:03:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D45B10E008
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Feb 2023 13:03:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677503037; x=1709039037;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yekGg9c0pI4ZvCFW0irHlVgwop447Iq1Tod6lK6vsNc=;
 b=iGcPLCLW7h3dYf5h8Qf6rgYLYAsn99RMFK8mi4dG6p8IOYUCpSUYRJKf
 FBsGGeaXYhEEVawQd+t4bgcMlHdHHlfbAukmaMYz77hnMdPtPXXX1scXE
 zgXehdr5TgTzqRLhhkAEVlbSpVYJU1oWXUQ8quPPWD3hWeFJItqUt8kex
 H9MnejdHVpWVFQjNdCIfpF8hTQN+EUGwz9/lH1jYo7y2EGdUyzgkUbi37
 4zkM4nKhdpNaDx9h9khayO753614GcHuaAHxu7sax4DiTPHBZkJjStvvR
 PNrqFhtR5JuELGYPiADTPqq/046mSEPN12KR7zJLVGn3U+bFK3fjzua/1 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10633"; a="331325716"
X-IronPort-AV: E=Sophos;i="5.97,332,1669104000"; d="scan'208";a="331325716"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 05:03:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10633"; a="797623518"
X-IronPort-AV: E=Sophos;i="5.97,332,1669104000"; d="scan'208";a="797623518"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 27 Feb 2023 05:03:56 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 27 Feb 2023 05:03:55 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 27 Feb 2023 05:03:55 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 27 Feb 2023 05:03:55 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 27 Feb 2023 05:03:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hL62IOFzJx6gXj4YC69sW1TVhvzKB1f3uouET0MHTH5frfIV1THuZQZAT8nIcDCZtqLRkhYg14IeotwLyOkL4hSzcrInorIXetwYs7pb4vv/HxGV/dqht8W0inoRCYxX5KQwHEtC6UafbBVIQzVVCPYGpjD4LEdzVSpYo9C29VK0iRW9YoxaZHraDVUp/7mkn2dl+xM+r/Z6ydMMcDIGBrqPICI9QWWRT+39pxApva+yaQV23J0mSmvGsRXwKO5qWtknyx8fWk63YlZTTXA3Tg1ikyaEwnzqifpTkV6ibYa0gTUQXUwXCZBF9WNuS8FUe4aC5ngIQ40Li8HeK5tBzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yekGg9c0pI4ZvCFW0irHlVgwop447Iq1Tod6lK6vsNc=;
 b=jPceRsPP1LE9vOWY7iDps46gsODEpezOPbZtSkpxFsM1RdsQHIT3bLr9NBbyldzj52j0furS3MKjUusql3Ufa5GLfMBrMulSSU6O14vAV7gSCScYSQ3XfgjH+PVg2p+XT9wlIwxFXEiuVEFxm/L2T0WbBqzeVUzegwP23eVlKHiWp40VhNUoHsnULtAu0fWrRMKUe5veavm6gl2y7w1H0FIRRxoV3zqD0sM5IcG7MMuOhkdRV8xpFmo12dN4Dc515Cl1quahF3/ZhegBnW/x6nnoUrcNoruW5oxBtaEnFc/r96uLVNRFHkzSnm4MgqHbLxqzVJyyqiB3U4Yb/nlRQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CH0PR11MB5298.namprd11.prod.outlook.com (2603:10b6:610:bd::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6134.29; Mon, 27 Feb 2023 13:03:51 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::1b38:222d:6496:fdd1]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::1b38:222d:6496:fdd1%6]) with mapi id 15.20.6134.029; Mon, 27 Feb 2023
 13:03:51 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915: Fix audio ELD handling for DP
 MST
Thread-Index: AQHZRT6GmpVcIpIFDUmPF89t9jCyGa7bRADQgAFiiACAAB6mUIAAEuWAgAXtxQCAAAdUsA==
Date: Mon, 27 Feb 2023 13:03:51 +0000
Message-ID: <DM4PR11MB63602DD7712FDBC4CA1D8663F4AF9@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230220151731.6852-1-ville.syrjala@linux.intel.com>
 <DM4PR11MB636060CF5C30347EF0EBE755F4AA9@DM4PR11MB6360.namprd11.prod.outlook.com>
 <Y/eBIshF4EiSS4rT@intel.com>
 <DM4PR11MB6360910F45E5832C8DDAAA47F4AB9@DM4PR11MB6360.namprd11.prod.outlook.com>
 <Y/eqsW7f5EGGNX5c@intel.com> <87mt4z1dzv.fsf@intel.com>
In-Reply-To: <87mt4z1dzv.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CH0PR11MB5298:EE_
x-ms-office365-filtering-correlation-id: a3ee3cab-10d5-4aa1-b503-08db18c31276
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: r6oGLoS/mcAehNrMbneY4seILuSK8ENELYlWIuqJ7+IxQP68Z/BeikvsYCovnLkewNCXnMrLVXkLUiPW2MfcKItUsdw1ljdUzeCmbo1manGRGsdb+jOV60+OKcfvjT3X/S0meXpbpnxf7eBT/LxPNvssPPDjQdhBh5rSB5fsN2qIgtH9vk0MVwl5UcpgLlVdumYFT1VcHekfZWw4JEmkXBR1joh0HEokqgccoKT6HCZzVd9nGA+kboFgoxLD8ET98umAlfEFnMAFIcgWKIW/Oqg4s0UsQxW1G6tul8rGIahdzjPfVwS6JHZ3iMhNrKlRUknkEnOWAph4J0Q54e4oSxw/ZwER+Fb43j+N2QW5wJrcr41QJ1RYX8oJZQezYuH7PeZpALlTl28WRPKU6BwOA03CwKtSQ4tMVJcAbQSfgO2ATm+0jReWwE5QepG9sFh8FHnvoVUeVyY0m3+bhUEK6VI6L8k/ByzaONHbCHK79Tp6yCv8K78RzyeFp6K7H/YbNBFGzKGINRlGvcl6IaeLHH4fKHF+EjydmhNOomg0ADgSbVfGC1hvoSYqIqPQTFXoXC4rhVwgZN/n25hj4WzPC6oGB5WrOOHt8QKvGUbZTDcHDNtDz1xjJQ0BwElkQacwAXrPO3EP3/FuU9KjSjkP+4fApJ1y7Eg6qA1q/ewVe8OK9a3AOQDWDMuuP2M6RtJN/R6NCa2IVmHfoK//rkP+YQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(366004)(39860400002)(396003)(136003)(376002)(451199018)(2906002)(5660300002)(8936002)(52536014)(66476007)(41300700001)(66946007)(76116006)(86362001)(55016003)(33656002)(38070700005)(64756008)(66446008)(66556008)(4326008)(8676002)(478600001)(110136005)(7696005)(71200400001)(82960400001)(122000001)(38100700002)(316002)(6506007)(53546011)(9686003)(26005)(186003)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NXpKSXp0Q205Rk8xTnZUWXBKeW5XUURzZEgxbWp3b0tmcVpab3hoOVFPN1p5?=
 =?utf-8?B?c2FmVUpEbEd5K2Vmb09xRmRSRDdOaTVqQ1BIRzVEejh5OVN2VklIOFlYT0ZC?=
 =?utf-8?B?TisrWWczYmtrQ1BQNHoyRzhJREptVFV4T3o5ZTB2VUpxMjl3ekhKWi93aXow?=
 =?utf-8?B?TUhtbzF6QUI3eEFCL3VaZ0VsemJWYk1qRkJoVkprb09LR3J0NVlJOC95UjVr?=
 =?utf-8?B?UkZ2VG1RSHluZXlWV0dBeEJaSE11VjIwS3YrTTNUam5SeXNydThNTUUrZG10?=
 =?utf-8?B?bjVxMC9YZDZ0TXF5MmNvZ25oRWlMRE80Uk9XU09nV3FDRGlCSUdsaGJVWWo0?=
 =?utf-8?B?QnErbU5oWUdFQzNQL0ZTN0ZvNmVuTTdXaXBlTUR6bisxbjY0cEVoMFN0V1Jz?=
 =?utf-8?B?WWtCdXdFUzdNaGc2WDY5eXpuUUVFZzVqbnJLMmZQcnMxSnhzMkZpbXBnTWxM?=
 =?utf-8?B?cW45OU41RVhwVmgxZ3J6OGdyV0NVODh4angzZGdBUHg4UG9lYWZMeVlvYmlI?=
 =?utf-8?B?b28vOU55bk5MYTFTOXp4WldXN1N6SDJSaUxZZ1I1aFVzditvb1BTRkxSa0Q0?=
 =?utf-8?B?cVJXV2hUbmhUcGVpdVQ3UkJkYXBhaEh2cWhuK2pxcEtVN0MxTWpkY3pFM2FL?=
 =?utf-8?B?Rjdsb1creGtHWkNFS092QWNoeEhVOXJROFdZem83VkNWS1NiUkRXWXBlOS9m?=
 =?utf-8?B?K2htOU9XY2xGRC9XSnN0dHppdnhsSmtjbzZ1NWFFRVJ4Vy9XNnVYMVdBS3JT?=
 =?utf-8?B?b25XcTcrYXRwbUI2MitDdGhzSlkwMGV4czRnUmFNcnlzdXhFRUpjRjZ6R2Ry?=
 =?utf-8?B?QXY1NFV4czFLZ0FLdzFxNlcrSlBaTXFwMFEvK2pvdVRWQjQxSUltY0hpbGdL?=
 =?utf-8?B?Y1lOSkp1MjNBNG4wbjg4bUt2RGlGU1lVN1piaG5qdDdCZWtSdXRHRGNJV3g5?=
 =?utf-8?B?YWJzWlM5ck9Vdkg0MS9wbnBiSVQ1dHlCWEJTeG1tUnBIRkhFYXRtcVV0Z2Qw?=
 =?utf-8?B?MGIvZnVmZW15Sy8wV1I5cGFZcjZtQXF6eHczZ0trVXFEZG5MSlBYZUVHN0dq?=
 =?utf-8?B?aVpKcGVMRDZrWkFkM25acHg5QWNJS0x2SHlWOGJjS042b0dBYWVtNkdjNXZq?=
 =?utf-8?B?Rzg2QWZpQ1IxNG9SbHJvZWFodi9RdDdTZXVQYU5hbHA4RkptdUtodDBiMk5F?=
 =?utf-8?B?ZDd1YnVnRFJPME1rQVdIMWQ3Ky96TjNaRUFwRlMrWndUellsQlhoWTAzQm0w?=
 =?utf-8?B?UkRYWDl5SGxnMTFiTzNEeGwzN1NMeEJCZzl5NzFhRWVXOXZYbzBaajJVS1VP?=
 =?utf-8?B?c1pHS2M4Sm91aGdOb3drTmFTeWFIK3F3VVlPWGJNeWN5YjI5WmQ1VHZYVWV6?=
 =?utf-8?B?Y0NXWmdvTUhwMStuVC9TaWx6bHc4d3piMGZLUXBkYTNHNFJQZ20ya1Jjalpn?=
 =?utf-8?B?Wit4QVhudldBb0dpRWZ4OFB2VFJweUNhM0tBcE5nTm90NkF2N1lkU2JGd09y?=
 =?utf-8?B?Z0dPVjlaZ0cydWsyWVpzUVFFT0lvaGFsRnY2MndvaldaL2RZd2Y2c25NWjZU?=
 =?utf-8?B?bGZwOUcrN3haSkdFNm9PRzVtTkFlYkZCY3R2S2JLdTg0MjFJTkdOdXpPNXNZ?=
 =?utf-8?B?KzFiS2lIeC9iNjJhMkRZbEVmcUphZWJHaFRpVTA4T3BJL1dQc2xBZURSc1pC?=
 =?utf-8?B?N0FaTElRN296cFI0eVR2Z2ZZeGZwcWttb21OV0FkMC9OMFV2VHBNaUl5d3JR?=
 =?utf-8?B?TFAvUDRlUXRmZFYvOWFCdFlYMVpONHNSTlZVdlRIeVJDaVMyWDh5Z1lWaklo?=
 =?utf-8?B?SzdtQWFLL21Nek4xK1luY0YyWnpiOTB0OXZUSkFCK3czcDl0S05NeGxzZllH?=
 =?utf-8?B?ZU56ZXdKZnRyOXp3QTFjQlRhZzBNNDkvYmljR3hLS0tjd2NvdkJaQUgxOWJx?=
 =?utf-8?B?MTdVbVNWaWNRYWNIRkhubWZZdkJ4NlNnT0tsTWNHWklSci9WY1AwNVY1eU1P?=
 =?utf-8?B?Rmt0ekExbzNkSEs4dEc1ajVHdXZZRVlHeGZ4d0QzT2RtNjBxQzJEdGxidmNv?=
 =?utf-8?B?aWk1TkErNDZQdWdGN25rTkxrTUVsQnBNMFBFK1NQNWRLeHlnOE95NDRwSTZp?=
 =?utf-8?Q?wG09RxMURz4zGEiI59PTj6szL?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a3ee3cab-10d5-4aa1-b503-08db18c31276
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Feb 2023 13:03:51.0203 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: T1J/Niy6BsuVDDs4NON3p3fb9VEzawY1hrX9SXFuIkSvg/YxoqS87i2fXYoWpJ0VIXZSiVl8UBDDtRJdwtSpvQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5298
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Fix audio ELD handling for DP
 MST
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4NCj4gU2VudDogTW9uZGF5LCBGZWJydWFyeSAyNywg
MjAyMyA2OjA3IFBNDQo+IFRvOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPjsgU2hhbmthciwgVW1hDQo+IDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQo+IENj
OiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFJlOiBbSW50ZWwt
Z2Z4XSBbUEFUQ0ggMS8yXSBkcm0vaTkxNTogRml4IGF1ZGlvIEVMRCBoYW5kbGluZyBmb3IgRFAg
TVNUDQo+IA0KPiBPbiBUaHUsIDIzIEZlYiAyMDIzLCBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPiB3cm90ZToNCj4gPiBPbiBUaHUsIEZlYiAyMywgMjAyMyBh
dCAwNTowMToxMVBNICswMDAwLCBTaGFua2FyLCBVbWEgd3JvdGU6DQo+ID4+DQo+ID4+DQo+ID4+
ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPj4gPiBGcm9tOiBWaWxsZSBTeXJqw6Rs
w6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiA+PiA+IFNlbnQ6IFRodXJzZGF5
LCBGZWJydWFyeSAyMywgMjAyMyA4OjM3IFBNDQo+ID4+ID4gVG86IFNoYW5rYXIsIFVtYSA8dW1h
LnNoYW5rYXJAaW50ZWwuY29tPg0KPiA+PiA+IENjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnDQo+ID4+ID4gU3ViamVjdDogUmU6IFtJbnRlbC1nZnhdIFtQQVRDSCAxLzJdIGRybS9p
OTE1OiBGaXggYXVkaW8gRUxEDQo+ID4+ID4gaGFuZGxpbmcgZm9yIERQIE1TVA0KPiA+PiA+DQo+
ID4+ID4gT24gV2VkLCBGZWIgMjIsIDIwMjMgYXQgMDU6NTk6NDVQTSArMDAwMCwgU2hhbmthciwg
VW1hIHdyb3RlOg0KPiA+PiA+ID4NCj4gPj4gPiA+DQo+ID4+ID4gPiA+IC0tLS0tT3JpZ2luYWwg
TWVzc2FnZS0tLS0tDQo+ID4+ID4gPiA+IEZyb206IEludGVsLWdmeCA8aW50ZWwtZ2Z4LWJvdW5j
ZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbg0KPiA+PiA+ID4gPiBCZWhhbGYgT2YgVmlsbGUg
U3lyamFsYQ0KPiA+PiA+ID4gPiBTZW50OiBNb25kYXksIEZlYnJ1YXJ5IDIwLCAyMDIzIDg6NDgg
UE0NCj4gPj4gPiA+ID4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPj4g
PiA+ID4gU3ViamVjdDogW0ludGVsLWdmeF0gW1BBVENIIDEvMl0gZHJtL2k5MTU6IEZpeCBhdWRp
byBFTEQNCj4gPj4gPiA+ID4gaGFuZGxpbmcgZm9yIERQIE1TVA0KPiA+PiA+ID4NCj4gPj4gPiA+
IE5pdDogTWF5IGJlIGFwcGVuZCAiZGlzcGxheSIgdG8gZHJtL2k5MTUuDQo+ID4+ID4NCj4gPj4g
PiBEb24ndCB0aGluayBJJ3ZlIGV2ZXIgdXNlZCB0aGF0IG9uZS4gU2VlbXMgYSBiaXQgdG9vIGdl
bmVyaWMgdG8NCj4gPj4gPiBwcm92aWRlIGFueSByZWFsIGFkZGl0aW9uYWwgaW5mb3JtYXRpb24g
dG8gdGhlIHRhYmxlIHRoYXQgd291bGRuJ3QNCj4gPj4gPiB1c3VhbGx5IGJlIG9idmlvdXMgZnJv
bSB0aGUgc3ViamVjdCBhbnl3YXkuDQo+ID4+ID4gRG8gb3RoZXIgcGVvcGxlIGZpbmQgL2Rpc3Bs
YXkgdXNlZnVsPw0KPiA+PiA+DQo+ID4+ID4gSSBndWVzcyBJIGNvdWxkIGhhdmUgdXNlZCBhIG1v
cmUgc3BlY2lmaWMgL21zdCBpbiB0aGlzIGNhc2UsIGJ1dA0KPiA+PiA+IHRoZW4gYWdhaW4gSSBh
bHJlYWR5IG1lbnRpb24gTVNUIGluIHRoZSBzdWJqZWN0IGFueXdheSBzbyBzZWVtcyBhIGJpdA0K
PiByZWR1bmRhbnQuDQo+ID4+DQo+ID4+IEkgdGhpbmsgdGhlcmUgYXJlIG1peGVkIGRlY2xhcmF0
aW9ucyBpbiBvdXIgdHJlZSwgbm8gY2xlYXIgcnVsZSBhcyBzdWNoLg0KPiA+PiBXaWxsIGxlYXZl
IGl0IHlvdSwgbWF5YmUgYSBnZW5lcmFsIGd1aWRlbGluZSB3b3VsZCBiZSBnb29kIHRvIG1ha2Ug
aXQNCj4gPj4gYWxsIGNvbnNpc3RlbnQuDQo+ID4NCj4gPiBZZWFoLCBzb21lIGdlbmVyYWwgZ3Vp
ZGVsaW5lcyBtaWdodCBiZSBnb29kIHRvIGZpZ3VyZSBvdXQuDQo+ID4NCj4gPiBJbiB0aGUgbWVh
bnRpbWUgSSd2ZSBwdXNoZWQgdGhlc2UgcGF0Y2hlcyBhcyBpcyBmb3Igbm93Lg0KPiA+IFRoYW5r
cyBmb3IgdGhlIHJldmlldy4NCj4gDQo+IFBlcnNvbmFsbHkgSSBvbmx5IGV2ZXIgdXNlIGRybS9p
OTE1L2Rpc3BsYXkgd2hlbiBpdCdzIHJlYWxseSBhYm91dA0KPiAqZXZlcnl0aGluZyogcmVsYXRl
ZCB0byBkaXNwbGF5LCB0aGUgaGlnaGVzdCBsZXZlbCBkaXNwbGF5IHN0dWZmLiBOZXZlciBmb3Ig
ZGV0YWlscyBsaWtlDQo+IHRoaXMuDQoNCkdvdCBpdCBKYW5pLCB3aWxsIHJlY29tbWVuZCBzYW1l
IHRvIHRlYW0gYXMgd2VsbC4NCg0KUmVnYXJkcywNClVtYSBTaGFua2FyDQoNCj4gQlIsDQo+IEph
bmkuDQo+IA0KPiANCj4gLS0NCj4gSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBo
aWNzIENlbnRlcg0K
