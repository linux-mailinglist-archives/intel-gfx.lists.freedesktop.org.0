Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id IG2sH2WkIWoCKgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Jun 2026 18:14:29 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 750A4641BCE
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Jun 2026 18:14:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="FWbq5+W/";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0571F11A187;
	Thu,  4 Jun 2026 16:14:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D62711A186;
 Thu,  4 Jun 2026 16:14:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780589665; x=1812125665;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=xK7z6/vwzUGoKQ59N8yiP27Jyo4NaDX98RJFHVV5JQs=;
 b=FWbq5+W/bYoUESjzfCkYHzEg14rdDD4wDqpE3PnLApTut4doHwOS4Fh6
 BwhwnSzS2qwHWVL0YnYndIPGx+j725umuHUTlX2F936cbwrFgixDX7B/r
 rIbPFQyZXvporCGAL8HTKU+9A5qebjFvY0VKj9CaO1D468Iq6T3zBoSxr
 2MHuuXnvfIWILshM+sXYJzY9NzQC1on4D1BS9y9dKz3ks67PIFM89+I69
 /xcFls/X+J5iXe+RrGJHWnuh638kym3FCcqybvIVwIT5SzS9nE1GjPwxi
 EKY6W2pEjqVmaUJCkaeoCgf2uqZAsSD+IvsiNUMRiN1vHQFxAUJtbdxR5 g==;
X-CSE-ConnectionGUID: A686pStyTq+CMYLpWCRVug==
X-CSE-MsgGUID: 7+DQhBRhSCa1J30Q70T2YA==
X-IronPort-AV: E=McAfee;i="6800,10657,11807"; a="98991211"
X-IronPort-AV: E=Sophos;i="6.24,187,1774335600"; d="scan'208";a="98991211"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2026 09:14:24 -0700
X-CSE-ConnectionGUID: XV/ZsnSMTA2RuUFmzGF7mQ==
X-CSE-MsgGUID: 6grtEwdTQV6mR1cnmQZVxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,187,1774335600"; d="scan'208";a="282684002"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2026 09:14:25 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 4 Jun 2026 09:14:23 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 4 Jun 2026 09:14:23 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.70) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 4 Jun 2026 09:14:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SRN29u91SBTOpyuCxcDVmkQD3FZaOSdXLCid1A8PbMpkY2hlZK97lUBIpLd0q+mcowB3QI3OmVFVkBUTkHKmW20e+T5PCBZDG8lGk/XLfBkTpVm8L8Irmp1PoJgZ4IQoVLxGWH7VhUI4BQewIkycB9qqJGLb9eR9ZMz0IqVq62W9c7lFF7X+S83mzGMDc3MwRXcZbVQocTr4au5d72+VF1njQtJJCmcPEMdB40TMSus5bAcYpD4MNcyS5dI8anFA8roUFYrYzIMAVwYstl+hEg3EppLlWJeS6xLYi2VcWJ5tUSrmqSlEZ8DDuG6RUCVXp/SZ30JSpBdUsvn5de6i9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xK7z6/vwzUGoKQ59N8yiP27Jyo4NaDX98RJFHVV5JQs=;
 b=tTgdX8PZqjusDykQj35PaXES5+DgKE0iZvduLddchDzDc/UbOVgXAqah3+Li7uDuL/vBrsC/sAQ+srKAdzzvebikGvp1XMUiywKPzLP8aDNK90tDU5SkV4ETxAvTc8CwYPi6sgsJDLCxbTWnUKKVwO/UvCHkfiEvmaLwHootYXo6mT70wYuzCNH5ifeLSlgwTr3YJPrOw+wSPzlT16WmOEikm8J/i6xMvkjEDCqjjM3l4rEBoQVgtThzbBP4P81DszMCFDAygP8oWuJwviUBh0uDhcn7DpvoZgi+BRsTN2aIMGspREMtcNvEfFCRGNpbRDRW1xIrkhnIeTcfXU2eAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7785.namprd11.prod.outlook.com (2603:10b6:8:f1::8) by
 SA2PR11MB5099.namprd11.prod.outlook.com (2603:10b6:806:f9::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.92.8; Thu, 4 Jun 2026 16:14:15 +0000
Received: from DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::4f63:3b06:4e10:3a9a]) by DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::4f63:3b06:4e10:3a9a%4]) with mapi id 15.21.0092.006; Thu, 4 Jun 2026
 16:14:15 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 11/11] drm/i915/bw: Simplify the best max_data_rate search
Thread-Topic: [PATCH 11/11] drm/i915/bw: Simplify the best max_data_rate search
Thread-Index: AQHc7o8CtDdY7ulKzEWfFt7qsu6ds7YunUAA
Date: Thu, 4 Jun 2026 16:14:15 +0000
Message-ID: <12acc37f2f18d583ffe49fd576265e0afa4f9f53.camel@intel.com>
References: <20260528103458.18069-1-ville.syrjala@linux.intel.com>
 <20260528103458.18069-12-ville.syrjala@linux.intel.com>
In-Reply-To: <20260528103458.18069-12-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7785:EE_|SA2PR11MB5099:EE_
x-ms-office365-filtering-correlation-id: 14c77ad0-6293-4f8d-adbe-08dec25452a8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|10070799003|1800799024|366016|38070700021|18002099003|22082099003|4143699003|11063799006|56012099006;
x-microsoft-antispam-message-info: 8Zve3a1FF+MsaBUvL+X64kn42GtrswNKkEaHHmFM3FTABDGRMA0jOeVGjZcUhfw+vrC7SMifOYHNlyaPJM1XFawfslxR+6vkx/gwVpoFqgB9IT8kKqcI+gAZ3XgKUfpqvTOea/e57ZX7GT8xy0Lv/fXycyhORo3sEZ4FjZCJIBMg2/hA7wvLhI5KUkk/fiSy/ZGJQW8PJ44pYXZmvEfydb9lMKMPz4XcVoKzBmaLER/L3GP6hU8vCqFDzzSJ/ckO/VCTZmUa2/lONBb+86ahgmVFV0M5Xpn8pjeICZPKJBJFgAxyCWQcpsmmZldLba9jB8z83rBADl1PQqlcAl+e4QGzGhZORG1ugQWKIIpJ+LCPskfvzzW7OdQNq4pTQfkNtNpOEFshWXkJyY5hh9XpoX4fprv0Bo910OjmaPU6KAT1iGoVccajgA6VZ/0z69QFpiMNwkpw15w4flaB4fo3h7HIfr2B9/RrbWdwjx9GjUzKpp6k36cYw+J6HOMIGEbmxDz4ccVRHivd75oQR6vRehGq1Q46xWWpbYQGUbmlNEfZqC3ito8UYzs6DDi9xnKkPH7At+W8p3omsCwk+ki0FJeu3+qMjLwgkvGl54q5epbrd8BB67UzYXaCyfLXd+2BuAuZCS7FQXAsnzpOEAVamEa+x5nQO3Gx6DJghkN21QsufiMjGJTCSVQXW9QBnqm2GR+on8bXldV1eEOTrXgxeJ1iLCe7FIQ6XbXGCNlwPi4WMGCSL54f5xeLxb5HqXM8
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7785.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(1800799024)(366016)(38070700021)(18002099003)(22082099003)(4143699003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UWVoS0g1NTU4cnpVR1dkNlRXVitOdmdxZnpESTVmNGdEdlgwNnNHV0FGVzJG?=
 =?utf-8?B?N3ZaUWxpQ1ZKTWxUR2dHd2drYnJTaVZnTy9aYTBZcEhSeUpudEhKV1dXRXNI?=
 =?utf-8?B?dkVzL296cUFiK2w1MGNKOHBxQTMxYkNpTk53dE12MHdqZElIMTM1SEtHQXNt?=
 =?utf-8?B?cGZFeTVzZ2JKS1kxdUg5L3diUmRzS0ZKUFp1T0lpYk8xUkNPbmQxUHNtWmxP?=
 =?utf-8?B?dDFOL1k2Q3JIMExnL0dDNVVJbkZlUEFuV2lScEZUeHBoR1hGSnUvRmZQL09J?=
 =?utf-8?B?cEdBVjViK2Nla1d6V09nSUFsRGd5UXpxMXVNYVpyemdiYlhZeXhLQ1Vqc1RL?=
 =?utf-8?B?cjJBVzRLNW1SYUJuVUZISDY0cjc5ejNuZDlwTzd1YXhwSUpNaTVDZnV4YWRC?=
 =?utf-8?B?UHBSTUJPNjV3TFB5RG9MWThmaGl2RXl0aFA4cG8rMzJzelBBSjRuR0RLNFlF?=
 =?utf-8?B?UWdLekdveXU0dkdGWGFsRm8vTFBvRVZyT3dVSTliVEQybit2MXZSa0JPWnhM?=
 =?utf-8?B?ci92MjlUbWdoYVhlOWtHNU1jSnQvbWFOOWRvQmtTR3FiUGxuYXpjT21aRVA4?=
 =?utf-8?B?ZW9IMXE3MHJYK2xqRitHUWRyMVB0U3NVMDNKQktWWmVpVSs3TEthQ2prUXdL?=
 =?utf-8?B?bEpJSGNlemRGd1lzZ0xXMG9kd1BlVDBvTnduUGhDQTdFeXFSS0Q5UjhhUTRE?=
 =?utf-8?B?YlJEREUvTkVoYUU1d2FjTTk2cmlZazg3eVpZSGJIbnpTWUtpaUFibnlsQVIx?=
 =?utf-8?B?WUJ6ZEVDWVliNE1Zam11RzVybE1GeVdsR2dhZDVOZkkyamlDVG9ONC9sL3l3?=
 =?utf-8?B?UkQwYU5GZVRVNWs0QTBiMm5ScHpOUjB3TXJHUjJyeEZSeDVhZ0NkSWZTNFY4?=
 =?utf-8?B?MjIyL0pZWXN0NlFOR0VnWWF6TGRJSk5jMTRLcG1PTEw2TTB1NGxpZUpoZzBw?=
 =?utf-8?B?bm5SUEY5Uzk3NHNqQnBMSlZraHB1b2pZN2dtRW5QRWcxVFhWT1NseWpjM0po?=
 =?utf-8?B?aHZrcmVqWjlsQXBzcE1zNEtTb3NaWHptQU9HTW1Kb2RpZVl0TVFpWktWY3NL?=
 =?utf-8?B?TEprbG5yTDFNTy9aN0gyVlhRaWN3elkraWxKVWNhcFVXYVI3ZmFrVy9hZWFL?=
 =?utf-8?B?K0ZSck5YMFhuN1M3N2ROakxsTXl3S0hCYmRQdVhHc1JxbGcvWnJPVk1IZlUy?=
 =?utf-8?B?bnQyQUFQNGR5QWFzKzJFclN3NjlBUEFCWEZ3RTA5aUZMUmlKb2hnMXhnMFFV?=
 =?utf-8?B?ZUp6NitRaEN3d0JvSnZ3RzVIRHVBeGE1cCtGNWNiWStJb2FKVkVoVEpaUXBl?=
 =?utf-8?B?K1F5SXVzbmlxVG1ralZmRHZoRVkwY0hocFpFNGRHaWxTd2N3Zit5VkVsQlh5?=
 =?utf-8?B?N2JTVU5ab1F2QnpTK3F2MmZ5b1Y3Y21kTmZwbWcvTnNoeG1kK3daQkhBNEFt?=
 =?utf-8?B?NEtQTG8rZGFiQ1hyTVJ5STVOQUdCWC9RbUpzQ0FDM1RXUENwU051c1lTVG5M?=
 =?utf-8?B?UXRKcnRINVNNcUgzV0I5clYveS8xaHB4RGRyZi9lZDFNTjN4azQ1RmYycDFu?=
 =?utf-8?B?ek44K2o5VGlNTENVVS9OeHRPb1EzcExQbXNCZ09YVERFWjNXajhqcjJMRTBH?=
 =?utf-8?B?U2JZYjRUUytZaUV3S2QrZVIrTW4ydlBZUkdwSmNiZmc2Vk9taTlTQU5xWEpU?=
 =?utf-8?B?K3R0aEpXbWpKNTl5dHNDQWkrbXgvdzlMR3YxNzBIZ0g4ZDhwKzE1MGZxQVpr?=
 =?utf-8?B?WVVpWFRqQ3dDNmJURzdxcXpZK0pBd2lzSzhFeGw4N1dmU0VxVFN6WERja0ha?=
 =?utf-8?B?bHJBMldUZmtpMjh3RHc2UjAzeENTa1NOZnkyUm5PWm9HVFBuMUU3eXpYWkx0?=
 =?utf-8?B?MGpZVVVsZmlmTmxOUG1uMFVoSDZxOHdYNGtrd1RWTWNTSHVUdGtRcERFdjZv?=
 =?utf-8?B?dmxKQ280bVFSMmViSlhodEJ0S1pUdFdDZVgva2ROVzB6TWhPSWZpZ3l4MCtM?=
 =?utf-8?B?bTcveTN2c0NSbEYyRHptVHF4UVgwM0l3QkhkdlFtZysyeFc4aTV1SWhOU3Zi?=
 =?utf-8?B?dkFsSjlvYURZZ2RVWHZ4UmYwK3g1MkRRc0pBdWJHdWxETUVhTnFGVG1PNDdi?=
 =?utf-8?B?Vk1kbmlIVVFOQUV5MUdEdldhWExtNkZra2RMNlNuZTZHbHdTRFZoTU0vWDhn?=
 =?utf-8?B?aytuNFBtODdxS2t5czZQNlpGOEdmc21FcWZ6WkRrZkpQQlJPL2lJcUc5cXFR?=
 =?utf-8?B?L2JlclFpN0c0R3pkL09pb0hHcURWazNBQnhnZjd1N2NzbVRWZEozUEp5MjJI?=
 =?utf-8?B?dkI5ODhGa1dQWlYvZWN2OFMzczBOT0k0MmNhaHI1b0YzYWtDbG5qbkIzb0dR?=
 =?utf-8?Q?VxdFNulGIyTAFRQvFAfHb68TEXHm0Shw8nTPkQ7+3vBV/?=
x-ms-exchange-antispam-messagedata-1: Z0kje2iIjw7Bt0O8GTQ7+cJu5LY1EqhkGpAYl95UQPAJuJEEdxRcD9Yr
Content-Type: text/plain; charset="utf-8"
Content-ID: <B1E111F97239AC46A1E81872785EAA18@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: MylBWSiZTG6YnWP7sFHDtDHpdgOTbxPpaprZp1ymECFnYi/suFFPEiawGtf5NXhWIPeTx+tj2tv0tqcAUO3ZCshMMS7ExmokcH/CI+CCEnB6NpueexOomqPcFWDDYCzObT5DA3BdUjPdFoy2wYL5/DyshYzZFvoqINBMr6MQyR7W4T5db7nPjeGnhKeKBn1iEDpn6aYkFUUaLAcglaxPooobABpfofqLEH+2CqN2W3KwF1S53G8K58Y5s41gjCsN6blsDuQ6YPvhpgY+axj9unOMuLvU/3GOvtrZEek9vDHpzzzX2lSYNLdXYH9zrSEgyE5MYCWy7fIq+3AHQrDjbA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7785.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 14c77ad0-6293-4f8d-adbe-08dec25452a8
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2026 16:14:15.2489 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2+tasiUTqGeq4LrrVUbn7fMY+UL6zMr5tLYhoTEYl2NPunO/v9xbIolHbwW3qIALyS+kkFgdqrhH0dH+oS0JqnG4OOxoKIfRsV6kh3RnZws=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5099
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vinod.govindapillai@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 750A4641BCE

T24gVGh1LCAyMDI2LTA1LTI4IGF0IDEzOjM0ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gRm9yIHNvbWUgcmVhc29uIHdlJ3JlIHRyYWNraW5nIHRoZSBiZXN0IG1heF9kYXRhX3Jh
dGUNCj4gYXMgdGhlIGRpZmZlcmVuY2UgYmV0d2VlbiB0aGUgcmVxdWlyZWQgZGF0YV9yYXRlIGFu
ZA0KPiBtYXhfZGF0YV9yYXRlLiBUaGF0J3MgcG9pbnRsZXNzbHkgY29tcGxpY2F0ZWQgYXMgd2Un
cmUNCj4ganVzdCBsb29raW5nIGZvciB0aGUgbWluaW11bSBtYXhfZGF0YV9yYXRlIHRoYXQgaXMN
Cj4gZ3JlYXRlciBvciBlcXVhbCB0byBkYXRhX3JhdGUuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBW
aWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4g
wqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMgfCA0ICsrLS0NCj4gwqAx
IGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYw0KPiBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYw0KPiBpbmRleCA0MjNjYWUyZmYy
MDguLjQxNTM5ZmRmZWFjNSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9idy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYncuYw0KPiBAQCAtMTExMiw4ICsxMTEyLDggQEAgc3RhdGljIGludCBtdGxfZmluZF9xZ3Zf
cG9pbnRzKHN0cnVjdA0KPiBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LA0KPiDCoAkJaWYgKG1heF9k
YXRhX3JhdGUgPCBkYXRhX3JhdGUpDQo+IMKgCQkJY29udGludWU7DQo+IMKgDQo+IC0JCWlmICht
YXhfZGF0YV9yYXRlIC0gZGF0YV9yYXRlIDwgYmVzdF9yYXRlKSB7DQo+IC0JCQliZXN0X3JhdGUg
PSBtYXhfZGF0YV9yYXRlIC0gZGF0YV9yYXRlOw0KPiArCQlpZiAobWF4X2RhdGFfcmF0ZSA8IGJl
c3RfcmF0ZSkgew0KPiArCQkJYmVzdF9yYXRlID0gbWF4X2RhdGFfcmF0ZTsNCj4gwqAJCQlxZ3Zf
cGVha19idyA9IGRpc3BsYXktPmJ3LnBlYWtid1tpXTsNCj4gwqAJCX0NCj4gwqANCg0KUmV2aWV3
ZWQtYnk6IFZpbm9kIEdvdmluZGFwaWxsYWkgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29t
Pg0KDQo=
