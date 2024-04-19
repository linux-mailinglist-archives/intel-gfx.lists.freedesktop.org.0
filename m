Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A0A38AA887
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Apr 2024 08:42:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E679910FDA5;
	Fri, 19 Apr 2024 06:42:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KoNj7pmF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D77610FDA5
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Apr 2024 06:42:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713508930; x=1745044930;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=9SO0I3/B8EoYwd/WLnzQE2CTxBwQwhCxBAhPjaDqe9M=;
 b=KoNj7pmF42UNMSsGqJekuTwUutNN6y7maLeRiCueYMCl075b4ZzU0e87
 TZNbrAevkQ4DbLicKjcVdFtyWOwN15/mgAKwHOEq28KZ3RsPff7fQI4V2
 pLXfJHMWW3dhfIObT12DvYCn/jAexPvW5WIYFXqLT+cFOmdJSVsiXkbfg
 X4PrnP+gdprS4QvvCuHUs8tkxBhPTdElBnA9fWcTQsecCrPV9xNYqe682
 htXyrox19XBQr1z39QTsjrqeqWENLaMVmhUbHS4rEcdSwh/b2tV9/o5ed
 zrLQ1+aziSwdo+CgKIehBDf6whNxMPWn553mlcHvfL03E9lIW2CtK16EL A==;
X-CSE-ConnectionGUID: 9Lj/j5AnQxmNZvFtFiaQrA==
X-CSE-MsgGUID: s8Z0UvehTPGmPTFf9VYxyA==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="34493188"
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="34493188"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 23:42:09 -0700
X-CSE-ConnectionGUID: irP1YbsOSVaIMclskDgcPg==
X-CSE-MsgGUID: mUHsa+/YTMCQqpCnfAub2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="54154976"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Apr 2024 23:42:08 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 18 Apr 2024 23:42:07 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 18 Apr 2024 23:42:06 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 18 Apr 2024 23:42:06 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 18 Apr 2024 23:42:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BcWLmzKdsSMtG6s4M/NrSh2oCSpT53dvP7685Dc92TXFf38UV9Aw6KBGKwTi9UzV8w4oJo/fggkBjZjIlRzA6agGFPfZubvoZJRp7I3taDQONnUXWWcQDJHk7m+LgBUsDMZxqEcHhFdpi+6qWf4dOiHNp3nmy1mOXN+8D9tfl8d3NZr4CR8V0fuu6rMrXNjIOKivIoLY+wl1rtxFnesbMaUyCzjdoWWG/wm/Po/vG3FrmUmctm/hkLgnXGt+wjmo4YvNPs+l62BVDSH+44U2BoWoxmTRPcLTYywIaXuPY9pdCmsjMIwWlTeonfCm9BbSWr9hLkyEfhql2/yqky3m3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9SO0I3/B8EoYwd/WLnzQE2CTxBwQwhCxBAhPjaDqe9M=;
 b=fAb0Ikn03zp1DGUFbfaJ9UhiykgaYo9LTCBHYARTd6eVLbPQCaq+7urBKjdovUTYYaozqcq7alO9d69TSyTlsdhp1Azwm22+0nttAkACD4SvrQYmrLGJpve+9zfe8zIZirX2iJN6yGkXix/tHu+m5ICZPgBb8/I7XDnNBEi/h+30mhzKrviCGkzW+lBPogG3mzqlB5TX/QJkNJXHnezoHc6pAfnpUkE7hj3WX0xT9uIIrFFGqbC1oGPklQAL9pqQqklNekTEmOzv05Ltlf8RVcdVP3JqZVt8HSphnObQnBmNnqFt5KNCXh5DbU+UnCCWuAmwdA/PlyZKu/NI5loQoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by IA1PR11MB6324.namprd11.prod.outlook.com (2603:10b6:208:388::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.14; Fri, 19 Apr
 2024 06:41:58 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a%5]) with mapi id 15.20.7472.037; Fri, 19 Apr 2024
 06:41:58 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 5/6] drm/i915:
 s/need_async_flip_disable_wa/need_async_flip_toggle_wa/
Thread-Topic: [PATCH 5/6] drm/i915:
 s/need_async_flip_disable_wa/need_async_flip_toggle_wa/
Thread-Index: AQHaeuBoY2n8Wl+SpEe7UNpAafCMT7FvUzgg
Date: Fri, 19 Apr 2024 06:41:58 +0000
Message-ID: <IA0PR11MB730729D1FA9E1BB74C69C66EBA0D2@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240320160424.700-1-ville.syrjala@linux.intel.com>
 <20240320160424.700-6-ville.syrjala@linux.intel.com>
In-Reply-To: <20240320160424.700-6-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|IA1PR11MB6324:EE_
x-ms-office365-filtering-correlation-id: 668753a6-c574-4660-7a20-08dc603bcf95
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|376005|1800799015|38070700009;
x-microsoft-antispam-message-info: 7SKpMAgXd25a7MSCcy3m2A4mb140FZ/gOv+t5WEALG1QhHYRUBTj/1lsgVAFjnWCxTXIFvItMFcMQtKayyVrroi5CrqEjK/1PcBGmK597wtQPYGfSk8rVjw5u74HoLsXWf0LbSTYrzqfxnhV/LbEQevNFDiNM3yqtjo+4Ne9ICGEQ9JVt+TbFrpe9n9vxnYJFOvbnhFz4hRQfTDvPRa7UslRtEGdPwdbo6pBuyiOnQY8KLaxt96EniNr0o0UEz3R8aKi91GRWDOpXBfOlBUaY6NQ07UHF6B8eHR9rtysvmlBM3J+Kyay99i11D/n0ejkhhIwj4paXBZTrVnxEL2ZOf/2Z3CW1Ajn3AI8WRJR1Hap51xHtT2UC3UnRa8j72ebnSU4U7fKquG2QQ6Cj7SQYGi6odiNz313os/dmTArGwETe8B52IXbf0XjjX8vLKyjHDDPo3VvB4mMnZCXK3azkTci3PZGyLwk0VSfRHAcJYqjb+Uk7CvjAwg5fYbKfY3dg3xt+ILI6zCIZDCl0JsC7BPACEzh8yd91nkTJpkW0wdMoAxYJ/MHsN+Co1XhBchFQBmxc8UJ/pnxmuSVDlczW2pUutv6TZnSIryUulJWSMWOp2Sx0SUbpz/LDhmoooUzF/6q8e6x1WCt4so12KmggOXUtpYjIGO/e3jeS2LseYLbK2pJuj4AEeOQ1W7VQdLoK9S469ZKr+eYSXehyS2OTA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VHNQMEdFL2hsSm90OHpDZ0pSQ1FuUzJBckZjSGd4bzRqYlVVbytkbW1ZNlpI?=
 =?utf-8?B?THpGRCs5VlBnVTNRVFlpMHp0UGVReEdTMzlnSGhSRHZWL0Q3RnBwRGg2dDRx?=
 =?utf-8?B?a0tPMFJMTlNoNElIT2JtbmZUKzNrSThGTDNHdGgwMmRPZkZjVlYvaHRmVzdV?=
 =?utf-8?B?NlJGNk9xcUV0TkhTc2FveDdlalN0eE52dFRicTQzMENlSFgzNmF4ditsZnZ4?=
 =?utf-8?B?cm9lNjZnZ1ZKMXkzNjc2RmpLZDVsT2hqT1F6bmtxV20vRGRpclFRZjRYVjh3?=
 =?utf-8?B?RkE4Tk9FNjU2ZU5yeWxvSFc3bVljMEVsZm56RjBLR2d4cSsxUFRZSkhLVllF?=
 =?utf-8?B?S0RuYVRqeEw4K1dhd0YxNEwybnNpblhOMzI5cStVVTY3L0Z6Z25kcE1GWm9t?=
 =?utf-8?B?NWJpU1NTTzZ5MUhFTkZuTjZmQ2orWjVFYlpEWE11SEdUN1NtT3dJOWQ2cHlU?=
 =?utf-8?B?NVFBYmw2TkY1SVJ3amRQb3pkWmg2ZXlRbnJNMFoyVkxHR21uYk1kN3VkWnM0?=
 =?utf-8?B?ZkdzMm9RUGRlY1pVSjR6dk5rQU9jczA1cFJ2bi9ubW8vZ0wraytIeXNVb3Ro?=
 =?utf-8?B?ei9rMEFpZWw5OVk2YWtNWjJHSThrNmRaMUhKNTZHL211VzlHYXlta2FnN1p3?=
 =?utf-8?B?cGYzVGtMVnFKN1NOdk4vOXkrMm0zaFpVT25rSlRrcTlYcGdPNXN5c2I1OW5D?=
 =?utf-8?B?U0F2TWdTc2pjZ3psZHV4YXY4dkQrcTJFVU5OR1hZeGZ1b2VhVDNLSFlqZEJ4?=
 =?utf-8?B?STRidStkTElMWE5uNFQyU05lMnRIdzZtSVBSZGVBR01lamQyRGFyMEpWaEFi?=
 =?utf-8?B?YmdFeGJrTWNmc3JBZ0t0QVYwb25lZ255VFUxbEY0K3ROKzN1TVRsNXZYVVd0?=
 =?utf-8?B?NUZWZ3NUUWgwVlNvZ0prTXQ3WXByS1lRRFFXZXBKRDQwa1F0bVNWYURQZWRF?=
 =?utf-8?B?alJWMEJNOWpzWXpESU0yZkVmY2VYVW1JMkdpeFczS3pSdlNhY0NIbjMvNUxG?=
 =?utf-8?B?MHRGaXU3TDhmRUJXMEFSaWtTM2U0cUtscUFYRERTNHRObERiMGEzaTRnRlBZ?=
 =?utf-8?B?bUVIa3pWcEt1WEY0bWQwbnBZQzNrUHByMVY3V3lQblZ6WTF5SzlTcWZtYzR2?=
 =?utf-8?B?UzI3VzVZZmhGT01uejVWaFBkL0JZU29SbFNDUkN6a3JnV2hKN1U5NnVvbk5Q?=
 =?utf-8?B?YUdkRm1DM21JbWczWFhIVGd5OEFMckhQaUxOc2w5VW1pNW0vRHdobVRHVzhj?=
 =?utf-8?B?UEN6V1RndmdNUmRnMTNKVGRkUDBURzBjQXhyNXk0YTZuWlhqUUhSMFB0bXJ1?=
 =?utf-8?B?STB2WkVCT3hqbjRFejFFM2xGQjhkakx0N05mRHphVk5zd090THZWQ1NqSmpo?=
 =?utf-8?B?b3pSYkNRcVZyUVo3MmpBc3MwYUNPM0c0aHBjQUVGMXlxbE8zSkYzK2dPaGtz?=
 =?utf-8?B?K3M5b2NLcFlIV0xpSlFiTkJTWVJwZVF1ZVVOdWNrKy91SEJEcVNoV2Y5SGZG?=
 =?utf-8?B?Zy83RHk5SC8yM0ZPdjNMSG9vRURaeUNkRDR4b09NMmhVVHlLT0dGN05LSXhT?=
 =?utf-8?B?VVV0N2V6Rkx2K2RRYVFaNzNhRllqZ0U5dFprSVVQTnQ5YnZOa2ZhMisrRmR2?=
 =?utf-8?B?SWltbE5KdjR3algyMy9tMzUvSzIrRk9DZ2RWYjNEWS9SM0JNTUYySDJIeHN0?=
 =?utf-8?B?TnF3cWpjaFRLMTJWM0FOWVdWeVlrQkJCaU1yZng1YTM3Q2F4Sjh5QlIzeHB3?=
 =?utf-8?B?dkhGbDFXUnhqbjcxeG1LZktjZTMzTnE2YWFtZGZKSTdKS05EN3FKTVlyQnBO?=
 =?utf-8?B?S2IxK1VrZVNpd2JNNzE3NFFFdWtoWHJvU3RvK1B0WEF4VXVPRWhWS29IT09k?=
 =?utf-8?B?V3hjMUZwMk4wZnlQQzkyL3I3b3U4a0k2TlFJaGZTU2xGUU5GSkkweE5UekZy?=
 =?utf-8?B?VmZETnJFcStpS0dESXJvdnpMdG1CZFFKRUVlOWJPL2QzeGxzUEVPQU9XWGFU?=
 =?utf-8?B?N0UvREdzMldWWW9OZEJQWGVnYVJYNkVKTTRxMVZBNERPZXFTTDNvRitCZllF?=
 =?utf-8?B?dklMOTBYSjhra3BMUC9WU1V3YWxlMWE2YkpvYnZtTE5jUTN4NCtQYnNPMW9z?=
 =?utf-8?B?RUdRYWxZdTRlNXZFUjNNL3c4UzlzWlBycnVOeWR1RktYeTV0bnVsaEhMdkM3?=
 =?utf-8?Q?I9O6kzwda9X4WwVPkbxVjag18F3zhLZfazRVIRB3Qmel?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 668753a6-c574-4660-7a20-08dc603bcf95
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Apr 2024 06:41:58.1250 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fklwnm3g3ULZFpiNrSJNOjC51EJdOalq/6jDgy7qZS75KsX0s9XzuxFogrVQASL0Qw6V4U7yK/8a+VpMdw2ulw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6324
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

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEludGVsLWdmeCA8aW50ZWwt
Z2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgVmlsbGUNCj4g
U3lyamFsYQ0KPiBTZW50OiBXZWRuZXNkYXksIE1hcmNoIDIwLCAyMDI0IDk6MzQgUE0NCj4gVG86
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDUvNl0g
ZHJtL2k5MTU6DQo+IHMvbmVlZF9hc3luY19mbGlwX2Rpc2FibGVfd2EvbmVlZF9hc3luY19mbGlw
X3RvZ2dsZV93YS8NCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+DQo+IA0KPiBSZW5hbWUgbmVlZF9hc3luY19mbGlwX2Rpc2FibGVfd2Eg
dG8gbmVlZF9hc3luY19mbGlwX3RvZ2dsZV93YSB0byBiZXR0ZXINCj4gcmVmbGVjdCB0aGUgZmFj
dCB0aGF0IHdlIG5lZWQgdG8gZGVhbCB3aXRoIHRoZSBiYWQgUExBTkVfQ1RMX0FTWU5DX0ZMSVAN
Cj4gZG91YmxlIGJ1ZmZlcmluZyBiZWhhdmlvdXIgZ29pbmcgYm90aCB3YXlzLg0KPiANCj4gU2ln
bmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4NClJldmlld2VkLWJ5OiBBcnVuIFIgTXVydGh5IDxhcnVuLnIubXVydGh5QGludGVsLmNvbT4N
Cg0KVGhhbmtzIGFuZCBSZWdhcmRzLA0KQXJ1biBSIE11cnRoeQ0KLS0tLS0tLS0tLS0tLS0tLS0t
LS0NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2k5eHhfcGxhbmUuYyAg
ICAgICAgICB8IDQgKystLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9h
dG9taWNfcGxhbmUuYyAgfCAyICstDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYyAgICAgICB8IDIgKy0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheV90eXBlcy5oIHwgMiArLQ0KPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYyB8IDUgKystLS0NCj4gIDUgZmlsZXMgY2hhbmdl
ZCwgNyBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaTl4eF9wbGFuZS5jDQo+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pOXh4X3BsYW5lLmMNCj4gaW5kZXggNzZmYzc2MjYwNTFiLi4zNDQy
MjY0NDQzZTUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaTl4
eF9wbGFuZS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaTl4eF9wbGFu
ZS5jDQo+IEBAIC00NTYsNyArNDU2LDcgQEAgc3RhdGljIHZvaWQgaTl4eF9wbGFuZV91cGRhdGVf
YXJtKHN0cnVjdCBpbnRlbF9wbGFuZQ0KPiAqcGxhbmUsDQo+ICAJZHNwY250ciA9IHBsYW5lX3N0
YXRlLT5jdGwgfCBpOXh4X3BsYW5lX2N0bF9jcnRjKGNydGNfc3RhdGUpOw0KPiANCj4gIAkvKiBz
ZWUgaW50ZWxfcGxhbmVfYXRvbWljX2NhbGNfY2hhbmdlcygpICovDQo+IC0JaWYgKHBsYW5lLT5u
ZWVkX2FzeW5jX2ZsaXBfZGlzYWJsZV93YSAmJg0KPiArCWlmIChwbGFuZS0+bmVlZF9hc3luY19m
bGlwX3RvZ2dsZV93YSAmJg0KPiAgCSAgICBjcnRjX3N0YXRlLT5hc3luY19mbGlwX3BsYW5lcyAm
IEJJVChwbGFuZS0+aWQpKQ0KPiAgCQlkc3BjbnRyIHw9IERJU1BfQVNZTkNfRkxJUDsNCj4gDQo+
IEBAIC04NzgsNyArODc4LDcgQEAgaW50ZWxfcHJpbWFyeV9wbGFuZV9jcmVhdGUoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUNCj4gKmRldl9wcml2LCBlbnVtIHBpcGUgcGlwZSkNCj4gIAkJcGxhbmUt
PmVuYWJsZV9mbGlwX2RvbmUgPSB2bHZfcHJpbWFyeV9lbmFibGVfZmxpcF9kb25lOw0KPiAgCQlw
bGFuZS0+ZGlzYWJsZV9mbGlwX2RvbmUgPSB2bHZfcHJpbWFyeV9kaXNhYmxlX2ZsaXBfZG9uZTsN
Cj4gIAl9IGVsc2UgaWYgKElTX0JST0FEV0VMTChkZXZfcHJpdikpIHsNCj4gLQkJcGxhbmUtPm5l
ZWRfYXN5bmNfZmxpcF9kaXNhYmxlX3dhID0gdHJ1ZTsNCj4gKwkJcGxhbmUtPm5lZWRfYXN5bmNf
ZmxpcF90b2dnbGVfd2EgPSB0cnVlOw0KPiAgCQlwbGFuZS0+YXN5bmNfZmxpcCA9IGc0eF9wcmlt
YXJ5X2FzeW5jX2ZsaXA7DQo+ICAJCXBsYW5lLT5lbmFibGVfZmxpcF9kb25lID0gYmR3X3ByaW1h
cnlfZW5hYmxlX2ZsaXBfZG9uZTsNCj4gIAkJcGxhbmUtPmRpc2FibGVfZmxpcF9kb25lID0gYmR3
X3ByaW1hcnlfZGlzYWJsZV9mbGlwX2RvbmU7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5jDQo+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYw0KPiBpbmRleCA3MDk4YTM0YTE3Yzgu
LmIwODNiOTg1ZDE3MCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9hdG9taWNfcGxhbmUuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2F0b21pY19wbGFuZS5jDQo+IEBAIC02MDAsNyArNjAwLDcgQEAgc3RhdGljIGlu
dCBpbnRlbF9wbGFuZV9hdG9taWNfY2FsY19jaGFuZ2VzKGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9j
cnRjX3N0YXRlICpvbGRfY3INCj4gIAlpZiAoaW50ZWxfcGxhbmVfZG9fYXN5bmNfZmxpcChwbGFu
ZSwgb2xkX2NydGNfc3RhdGUsIG5ld19jcnRjX3N0YXRlKSkgew0KPiAgCQluZXdfY3J0Y19zdGF0
ZS0+ZG9fYXN5bmNfZmxpcCA9IHRydWU7DQo+ICAJCW5ld19jcnRjX3N0YXRlLT5hc3luY19mbGlw
X3BsYW5lcyB8PSBCSVQocGxhbmUtPmlkKTsNCj4gLQl9IGVsc2UgaWYgKHBsYW5lLT5uZWVkX2Fz
eW5jX2ZsaXBfZGlzYWJsZV93YSAmJg0KPiArCX0gZWxzZSBpZiAocGxhbmUtPm5lZWRfYXN5bmNf
ZmxpcF90b2dnbGVfd2EgJiYNCj4gIAkJICAgbmV3X2NydGNfc3RhdGUtPnVhcGkuYXN5bmNfZmxp
cCkgew0KPiAgCQkvKg0KPiAgCQkgKiBPbiBwbGF0Zm9ybXMgd2l0aCBkb3VibGUgYnVmZmVyZWQg
YXN5bmMgZmxpcCBiaXQgd2UgZGlmZiAtLWdpdA0KPiBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMNCj4gaW5kZXggZGJjZGE3OWNmNTNjLi44YTEwMTMwYzZmMzcgMTAwNjQ0
DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IEBA
IC0xMTA5LDcgKzExMDksNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9jcnRjX2FzeW5jX2ZsaXBfZGlz
YWJsZV93YShzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gIAlpbnQgaTsN
Cj4gDQo+ICAJZm9yX2VhY2hfb2xkX2ludGVsX3BsYW5lX2luX3N0YXRlKHN0YXRlLCBwbGFuZSwg
b2xkX3BsYW5lX3N0YXRlLCBpKSB7DQo+IC0JCWlmIChwbGFuZS0+bmVlZF9hc3luY19mbGlwX2Rp
c2FibGVfd2EgJiYNCj4gKwkJaWYgKHBsYW5lLT5uZWVkX2FzeW5jX2ZsaXBfdG9nZ2xlX3dhICYm
DQo+ICAJCSAgICBwbGFuZS0+cGlwZSA9PSBjcnRjLT5waXBlICYmDQo+ICAJCSAgICBkaXNhYmxl
X2FzeW5jX2ZsaXBfcGxhbmVzICYgQklUKHBsYW5lLT5pZCkpIHsNCj4gIAkJCS8qDQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMu
aA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5o
DQo+IGluZGV4IDhiOTg2MGNlZmFhZS4uNGNiYjZiZTVmZjQ4IDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiBAQCAt
MTU1Nyw3ICsxNTU3LDcgQEAgc3RydWN0IGludGVsX3BsYW5lIHsNCj4gIAllbnVtIGk5eHhfcGxh
bmVfaWQgaTl4eF9wbGFuZTsNCj4gIAllbnVtIHBsYW5lX2lkIGlkOw0KPiAgCWVudW0gcGlwZSBw
aXBlOw0KPiAtCWJvb2wgbmVlZF9hc3luY19mbGlwX2Rpc2FibGVfd2E7DQo+ICsJYm9vbCBuZWVk
X2FzeW5jX2ZsaXBfdG9nZ2xlX3dhOw0KPiAgCXUzMiBmcm9udGJ1ZmZlcl9iaXQ7DQo+IA0KPiAg
CXN0cnVjdCB7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3Nr
bF91bml2ZXJzYWxfcGxhbmUuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2ts
X3VuaXZlcnNhbF9wbGFuZS5jDQo+IGluZGV4IGFkNGM5MDM0NGY2OC4uMGE4ZTc4MWEzNjQ4IDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF91bml2ZXJzYWxf
cGxhbmUuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF91bml2ZXJz
YWxfcGxhbmUuYw0KPiBAQCAtMTE3NSw3ICsxMTc1LDcgQEAgc2tsX3BsYW5lX3VwZGF0ZV9hcm0o
c3RydWN0IGludGVsX3BsYW5lICpwbGFuZSwNCj4gIAkJc2tsX3BsYW5lX2N0bF9jcnRjKGNydGNf
c3RhdGUpOw0KPiANCj4gIAkvKiBzZWUgaW50ZWxfcGxhbmVfYXRvbWljX2NhbGNfY2hhbmdlcygp
ICovDQo+IC0JaWYgKHBsYW5lLT5uZWVkX2FzeW5jX2ZsaXBfZGlzYWJsZV93YSAmJg0KPiArCWlm
IChwbGFuZS0+bmVlZF9hc3luY19mbGlwX3RvZ2dsZV93YSAmJg0KPiAgCSAgICBjcnRjX3N0YXRl
LT5hc3luY19mbGlwX3BsYW5lcyAmIEJJVChwbGFuZS0+aWQpKQ0KPiAgCQlwbGFuZV9jdGwgfD0g
UExBTkVfQ1RMX0FTWU5DX0ZMSVA7DQo+IA0KPiBAQCAtMjM3MSw4ICsyMzcxLDcgQEAgc2tsX3Vu
aXZlcnNhbF9wbGFuZV9jcmVhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUNCj4gKmRldl9wcml2
LA0KPiAgCXBsYW5lLT5jaGVja19wbGFuZSA9IHNrbF9wbGFuZV9jaGVjazsNCj4gDQo+ICAJaWYg
KHBsYW5lX2lkID09IFBMQU5FX1BSSU1BUlkpIHsNCj4gLQkJcGxhbmUtPm5lZWRfYXN5bmNfZmxp
cF9kaXNhYmxlX3dhID0NCj4gSVNfRElTUExBWV9WRVIoZGV2X3ByaXYsDQo+IC0JCQkJCQkJCSAg
IDksIDEwKTsNCj4gKwkJcGxhbmUtPm5lZWRfYXN5bmNfZmxpcF90b2dnbGVfd2EgPSBJU19ESVNQ
TEFZX1ZFUihkZXZfcHJpdiwNCj4gOSwgMTApOw0KPiAgCQlwbGFuZS0+YXN5bmNfZmxpcCA9IHNr
bF9wbGFuZV9hc3luY19mbGlwOw0KPiAgCQlwbGFuZS0+ZW5hYmxlX2ZsaXBfZG9uZSA9IHNrbF9w
bGFuZV9lbmFibGVfZmxpcF9kb25lOw0KPiAgCQlwbGFuZS0+ZGlzYWJsZV9mbGlwX2RvbmUgPSBz
a2xfcGxhbmVfZGlzYWJsZV9mbGlwX2RvbmU7DQo+IC0tDQo+IDIuNDMuMg0KDQo=
