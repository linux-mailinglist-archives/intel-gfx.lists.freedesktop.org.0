Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 095A96460EC
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 19:15:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 487AE10E412;
	Wed,  7 Dec 2022 18:15:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4B4810E412
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Dec 2022 18:15:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670436926; x=1701972926;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=Tu8CHAyq1YMncesc4w7wVPHys7dezVwfbuF7xOMuVdo=;
 b=M4bD4cPhwhbbwTuxl1nGlJJEJogCj/8sdN8Wn/oCdUmx+Vb5L8MXXCNr
 +83cUsmfBOxhjDGqBr4zSjWFfEeMOcaNilFCm9NrJfqBXtGoudnYfjd1f
 b+nhtIXDhkGaehlBzZpVPKC8NagfcAqn1IEG2rmo0A1QvG85K6z0wpor1
 I/bb3fWPA4B3JrL1F9BhbOcVlRBJ9MJM6bgsPTce9ct2A83Z2KwPArzHJ
 yOdyBbRKBONPZFpT4OpPD/BYm88sH90EG0y6tJ73FpwbKozjDHRgvTJ2S
 YkSNFzdrfe7lIr8Y6AoR8E3du9M9X71f7ZaaxbZzh34dQ72K2GyERi6BE g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="316978374"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="316978374"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 10:15:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="677457129"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="677457129"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga008.jf.intel.com with ESMTP; 07 Dec 2022 10:15:19 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 7 Dec 2022 10:15:19 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 7 Dec 2022 10:15:18 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 7 Dec 2022 10:15:18 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.45) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 7 Dec 2022 10:15:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Np7pFADHUouDjUQH5pdZPyw2y5NC3WgvoIcKUxBZZyZtn/4kDKEfSK6z801tUJp8fBx46epAd89qPAgGBRc56lilD71ztYTUOcrVjJ4AYweGlGcw8eN0CT4hYbeBjVc59fal2VwiSyePHCNhW2QnVapC6vc/BDtcFNaD2DVAD+b/t6VCGbHkIsEE73GQ3GwENJsnTsH+hSme9adgUM+D3HjqdDpuMlUBYeOOfEkhZpfksmZCeMrikbBvWhq11HVmuMU8hG+vd6IN+pzK0GoPDdjUf2DzQdedKq4rdrEb5w31WVAbgWWpjZYUehp8yr4/crvwL8FgTkI76CgicDcLIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Tu8CHAyq1YMncesc4w7wVPHys7dezVwfbuF7xOMuVdo=;
 b=d1Oj5R/MmH+uxHQZ29A7YrUmjeqlV7MpPrFG/uIlEVwgsfRgrrNvgco0i3XDQJIgOhYcjVK3ZIWk3xZhh27VnlXr2SFYt1UWTfHF+uAc2dUI4DFMm4+kpXr8uQCxE8Ey3TJBq0BdLisYI1ecowuou0x8zbFEbl+jhbt8IWDNiA8deZ090QElf+LSeX/cVYXG2Nx38Qqde3FpyNSlZ/K9Ti3FFkvWtp01mTObAeTXinnDQJ3G+bm+WXwu7GxlPtLbe7fyjboF/oR8i2PCtE2W8MXHX1N2hneIo2/CF9E3jExa3c+GAM3Gk78krQajySomeLlC4/NBAgfxdzORz0Ecsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 PH8PR11MB7118.namprd11.prod.outlook.com (2603:10b6:510:216::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5880.14; Wed, 7 Dec 2022 18:15:16 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6894:1dbc:4681:66b6]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6894:1dbc:4681:66b6%4]) with mapi id 15.20.5880.014; Wed, 7 Dec 2022
 18:15:16 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "tvrtko.ursulin@linux.intel.com" <tvrtko.ursulin@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 2/5] drm/i915/guc: Add unaligned wc memcpy
 for copying GuC Log
Thread-Index: AQHZCVO9DZInYrxis0OeofdpS6HJDa5gpGIAgAC/EgCAAMTxgIAADxMAgACGXwA=
Date: Wed, 7 Dec 2022 18:15:16 +0000
Message-ID: <6e2d28eea470116305825e2fff61961890776ca5.camel@intel.com>
References: <20221206092100.274195-1-alan.previn.teres.alexis@intel.com>
 <20221206092100.274195-3-alan.previn.teres.alexis@intel.com>
 <1f453b64-3444-9d0e-bf9b-668229e763ef@linux.intel.com>
 <53fb72c915990cb4c5bf0fe8ebd976203f5556ea.camel@intel.com>
 <bf11bfe51f218f8104af21d1a93535281eb92abc.camel@intel.com>
 <b42fdf70-6c5c-54e3-49aa-dd615e5c69a1@linux.intel.com>
In-Reply-To: <b42fdf70-6c5c-54e3-49aa-dd615e5c69a1@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|PH8PR11MB7118:EE_
x-ms-office365-filtering-correlation-id: fadd385c-5070-4b6b-35c4-08dad87efe02
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yqtME8B7XmHQzbDeg/aiMft5YBeOtA+Fphu3Fds9Ilu7tFUKov3JSGdXHQIS6rhj8uJwGSYQXS+XO+esDfK4AjJuHToq8MFfAIaZ0juk6ILKjm9cmbf06NOk5H/YUZcmUwftdPiMvegtLWi7TZiINT+PgBSyOsi3P/tJfogp4eq0JqcKWNEqQZd49F8DPbv4bia7JmmbCKg3mo/mpqm3NQcbPCMlfWbQprP/T9zIPbUT68UUdiDvFbwEldLET0CJiBrtrpOm39j6qe0gJv5pvsrvAV9r/lWj+YQvz3bNs0UPx1PvhxBnGkcXg5YXDwiBobwYOc/8gBybacVoEcjV5Wk8MyozRfYMz+XGRmgnzUiZD3VW4XBAcksl93DCK+xP1RveUZe+VTVZ3ljZrzTk9UQm0QnZ2yXbhstKEygS3kPH03+IMywK1m4tiu7z8NrBe3TwefJWksQ8QsqaH67zhggKUegZT5mIy2d6X5wbwgWDVo/Jr2vhz3dR9tEONQGdvejQlqvicxvqs4q0OJP06AjJ+V2NLcQhSkWCR12ZJRxarrLoe3Bb742m8UIRwLDjZSFxxjSIeLmMXt85XIfB2ZzZRZlM179pglIFjXUMEInpmqGkdtcqxTWh5qjXAwFs1RwbmmTKHlHICTFC8BWZ5llbQEbUopCfj/yvuRYdA7/qyVM22QmYvUyoRgsa5MrP6jH6gSGvoaImGzOwlh5rMg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(376002)(39860400002)(396003)(136003)(346002)(451199015)(64756008)(66476007)(66446008)(91956017)(66556008)(122000001)(66946007)(8676002)(38100700002)(478600001)(6486002)(82960400001)(2906002)(71200400001)(186003)(26005)(6512007)(110136005)(86362001)(38070700005)(76116006)(6506007)(8936002)(5660300002)(316002)(36756003)(41300700001)(2616005)(4744005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eU93bWhmWkg3YXg4NE5WajFZbmxBV2VDKzlOL1piRkVFcjZReWcrNEYxcm5u?=
 =?utf-8?B?TGlJQThiNGRnZmFmdTI4RTh4ZmdqeE5nMEI5ak9iWjJqdlJkWmQ5cDNXNlg0?=
 =?utf-8?B?anRVQlRNZEZvU3Q1SlF4QzRvc2tWV3ZNTTFhV3RhRXJlcm1FMEZJWkh1OThv?=
 =?utf-8?B?S01pM1NBbnQ3YmRNOGR2UnRucjVqNkR1K3VBTk45TUxsQy9IOEpCS0V1WnFE?=
 =?utf-8?B?SUpHYnRNY0J1a0dpYm1yYlFOYWZKTkVBUzRpNXdNOXJUNkJXR1V1MXk5eVVX?=
 =?utf-8?B?YzF0WFlYTGpsNjlVTFhaRHl6WnJualRRYkJzYzNNZmVRaEh0T1lOcE1lQXMx?=
 =?utf-8?B?dUNsQTRNNnIrYVZJUTEwakZDZXBJd2VhZ0dZYjJyK2h0WGxYb1NHcVEyUEhl?=
 =?utf-8?B?cGFtNDFlU21CaDF6YUJRVzJJNEhITy9TMmprUG1Oa3A0MXJsZnZvSHFXYlhR?=
 =?utf-8?B?YXRKYmpRYkdxTGY2YmQ5YlhVckhPczR5MnVBSHNzUUJtVWxUNHUrL2FsWXl0?=
 =?utf-8?B?RGtnU0ZjYWttTzR4NFlkdHVrY0JqN2FTV2lzdVlqU3NNREVrT3BWQmZmMmxQ?=
 =?utf-8?B?NUROZ0xtbFdDWDMyblZzakZoTG50a1pPY2hSaCszYTQwZEdTM05GMVJoTmNM?=
 =?utf-8?B?b3Z1dFc2NmJnVWVzMHRwRnRadWFmMEdqMkd6RlpuelF6M1lrb3QrRURtZGJY?=
 =?utf-8?B?a0NDdnJxNGRQVlhaakdLaXRhMDgrcGpFZ3pGYzRHaDArNllHM3JSQXkyUEhv?=
 =?utf-8?B?TEMzdDNqVXA4YnBCNUI3YnRIZ1lQVnF4Y3NOU0dtQ2JHVytOa1dyNlVOTzRR?=
 =?utf-8?B?MHpFMzE2M3E0bzRublV0bkF3NXJ5Uk5ldkNPUWcrZDJ0QWw0RU5DNVNOUjRN?=
 =?utf-8?B?UnhPRnZiS2I4R0JDMWxKcWRYeVdNVGU2NXhqeWloZGJYcmRYQlRlMi81eXN3?=
 =?utf-8?B?dDhrUlpxckZCdG00QncvNDNRYS9uNk9UbXlSbjhCVi9XOXNDSCtLUkN5SEox?=
 =?utf-8?B?bjc2bmJVT3k0TkRRVjd2OERKREw4T2VaSGpjdzFxTjAycFVLd0NySEVRK3Rx?=
 =?utf-8?B?Vms4TER6ci9VMnUwdzQzSkRiTHFWSGZwckpMRWc2OEdmL1ROWWlTaGlsQnA1?=
 =?utf-8?B?U0orL0NFVzZOOTlwYVJITWlWVk10L1E0ZjBRbUJXSTlNQmQ4UmRheUdsRSs4?=
 =?utf-8?B?YkZNbjJDNGxUWWhuTWhUMUdHb2kwUnZ0QXhYUC83WWVuOVJYdm1NTGhWaEEx?=
 =?utf-8?B?dk1tUENvYXdOWEZIWXB4Q2lZN1AzVTg4dFpoSmc1SmQ1THE5MjR4YVNieStw?=
 =?utf-8?B?UjVEUDFYSmtNR2pHTFFiNjNGYTdjVUFLUHU1OWlUSkpVWEZPK3U0REg3NGpR?=
 =?utf-8?B?RzZmeVh1NGZvNlNmaElWYzlKdDRFY2tkZGoxcnNGSzFOWGkrd0Q5WnNXZTJI?=
 =?utf-8?B?bHEzZXFXNW9Yd3Y4dnRQOGVralJUWEw1V3FnY3o1RllzQTZsTXVTZ3R5UU11?=
 =?utf-8?B?VVBiN2xkNzBkeFYxOFBQMWg4ZGd1R3orR2dwY3VxT1dQMk9ObEV5WDJHbnQ5?=
 =?utf-8?B?T1Uzc3UrUEthSGk0MkRVeWwzTmFld0V3ZzNESEJKTUpkc1NDQmFYbWxCUWhG?=
 =?utf-8?B?b1RiL21iMkxIcWJrYTZFY2V1VHlnSlJUSXBQZDlEZ3RtTkg2ZTVGU1I3dWV0?=
 =?utf-8?B?cHhPTklSRGRrME1vc05SN1ZKdjhQWThRODB5M2JveWFNdkptZWxWTmoxZk9V?=
 =?utf-8?B?Q3I1ZlJJeVV3RjZjN0pBY0tVR0dmM1lkb2E5amZHMGJKVjZScHNNS0N4aEwy?=
 =?utf-8?B?VHZzTHVkQk9FK3JGblJQWi93WjlGZ2JuckNMZDExc2JuRDk1aU0rM1hNaDVz?=
 =?utf-8?B?TXFHekcrWWJlT2VZNmEwUkllZ2llaUhhQ1BLWTJPb2VTTksrYXM2Mzc4NXVI?=
 =?utf-8?B?dDU1K3dNazdoWGNGT0FWaXlHT0RjOERZTExHOW42bUdsSk9OeWpCMVZmZUdE?=
 =?utf-8?B?Um8xQk9VQmhjY29NS3lpOGQvNUF0VHRIQU1UWDdnSHpHYXQ4NThlZ3IrWFZn?=
 =?utf-8?B?WVJINnBTV24veFdRK0VLcVNpR0pOUzNLeTFta01KV1BwYm5tSXBLUGRLSlhw?=
 =?utf-8?B?eWhVakpTQ1h4bVFKZjBPbHhsM29Jd2w4V2hVQzRqVnVVMEZzd0pZd0F1UjE3?=
 =?utf-8?Q?dNBVthuRgqF/zoWqDyxkh9k=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D85348542229A746B26D58F92FAF8E5D@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fadd385c-5070-4b6b-35c4-08dad87efe02
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Dec 2022 18:15:16.5071 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZUKR3Fp8yeku7Q4zivZeQLpYLSCBdBIM6WC9AHU42jfsbaQZqcF/wfiWMg47eR1Esh+S7rfthQ1nhmV5FVXeX7MnHOAJ2J91dLLLxwh96q+GTpYDvPkkNMhWogqVEi0k
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7118
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 2/5] drm/i915/guc: Add unaligned wc
 memcpy for copying GuC Log
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

DQoNCk9uIFdlZCwgMjAyMi0xMi0wNyBhdCAxMDoxNyArMDAwMCwgVHZydGtvIFVyc3VsaW4gd3Jv
dGU6DQo+IFJpZ2h0LCBGaXhlczogYW5kIGNjIHN0YWJsZSA1LjE4KyB0aGVuIChmb3IgQURMLVAp
LCAqaWYqIHRoZSB1cHN0cmVhbSANCj4gbG9nZ2VyIHRvb2wgYWN0dWFsbHkgd29ya3MgYW5kIHdl
IGV4cGVjdCB0byBhc2tzIHVzZXJzIHRvIHVzZSBpdC4NClJpZ2gsIGluIHRoYXQgY2FzZSwgd2ls
bCBza2lwIHRoZSBmaXhlcyB0YWcgc2luY2UgdGhlIGxvZ2dlciBpcyBjb21wbGV0ZWx5IGJyb2tl
biB0b2RheSB1cHN0cmVhbSBhbnl3YXkgYW5kIGNhbid0IGJlIGZpeGVkIHByb3Blcmx5IHdpdGgg
dGhlIG90aGVyIHBhdGNoZXMgaW4gdGhpcyBzZXJpZXMuDQo=
