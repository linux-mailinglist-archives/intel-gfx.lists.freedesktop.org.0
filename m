Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1pnSOV6cIWrOJwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Jun 2026 17:40:14 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48FEC64185E
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Jun 2026 17:40:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="WBz/yr9+";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8C06112875;
	Thu,  4 Jun 2026 15:40:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7173112874;
 Thu,  4 Jun 2026 15:40:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780587612; x=1812123612;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=GnUPm29pOu0pKCj2yGh7t7op9YUPN3ZvXRfEut1kKEY=;
 b=WBz/yr9+4jpuYHOVT88jjonhKmUaoLWCG1ZswJstbNWlkr8i6wgMvkbA
 JQNmm5Ek9IzPtGn/bUrdYGy8HWXsJXMgrQ/PCFwxwtfsMXVLrtR9tDBeW
 Q8cKLrj77Gqd0kkvzS+2RygolfzZ4e2tPoWbC0CsqXr5RrRm9qiRI43VY
 hvDfj49nwi1Skka/wLbHBFgkXFPUCsM4itchBIHrUVCuY1WFK73otSUeu
 hjrMUDGHEb/eJoM5udmD0iO6WhP1GFvF/De1XIDJzSyfRzbpUxMjow2UE
 9TJqJ1UuyZwmZO+yT2NA5MSdFvmchFWhknC5AsFbQTcGaCaGht9tKhixB A==;
X-CSE-ConnectionGUID: U/n+24N4RXixEPH7QdQ4eQ==
X-CSE-MsgGUID: dGgoiS4aQNCgnFs4VEb/yQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11807"; a="81158776"
X-IronPort-AV: E=Sophos;i="6.24,187,1774335600"; d="scan'208";a="81158776"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2026 08:40:11 -0700
X-CSE-ConnectionGUID: 7GTT3n/QSPil5umpR87RQQ==
X-CSE-MsgGUID: +rNkhDuRQMeUfeK9+6vWiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,187,1774335600"; d="scan'208";a="244687148"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2026 08:40:11 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 4 Jun 2026 08:40:10 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 4 Jun 2026 08:40:10 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.68) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 4 Jun 2026 08:40:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zTjZCtspRA6KcW5BTo31quNrChszKU9wWO0youGe553IEuKksJaBMu35NlRuc8A4aB/ioUV1oHvvYdpQ4Qn4IQqwPwNW3DT9Ut368kr3ZwdumAsXVKelwcymcgIJ1jLJGj9RbV9uHWUChQimhFbt45FFGVkE65b4mnQAcR9+AfoV9O7wPdyKtkiKgvNXqr/94j8BQPPe/NEH1G9VZEgoWfL6lHVufcSfVmL7WORzV6LzVadc5gpJR4ptYUhvClZyPz8gKAvLMnHjAoW65KnRaC6CLxrEq5N60sm95twOWRyaDagPBR/MfHNupX+yghwvFUSIhiOyxeqFGvg3YpuTQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GnUPm29pOu0pKCj2yGh7t7op9YUPN3ZvXRfEut1kKEY=;
 b=ykRRIykOX2iCKgq8/oo3lyVu7tPZDbzc5m33L9EWKsCi3pd/i6v0LcJeTH9iPDkRocIDFKHZSdIMBUjHVP2M7F2ukHvAH5aF3rNMW7NV5XokbW6fexHjBl0i79W+5LNOv48O6Fm3XuIwysYhkDsMGyhhgODpSLr5RuPvn8/V0TWgI55FJ4411gmPZv6nueSJ1EY+LL/eE6JLlokP5fZ5Lz/kfKw2fvzOxJkoGBFU/2LZf1r5ji3Yad3VpdVUqGgpoff9G8Vc4tVZ3GD4i8M+MUx1OWVDGOq+VFoMhk3Ys3+bcDPE5cx/d7BnnJM5lRqDwsucGiKwjZHNoJ+zlrOLwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7785.namprd11.prod.outlook.com (2603:10b6:8:f1::8) by
 SJ0PR11MB5040.namprd11.prod.outlook.com (2603:10b6:a03:2d6::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.8; Thu, 4 Jun 2026
 15:40:06 +0000
Received: from DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::4f63:3b06:4e10:3a9a]) by DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::4f63:3b06:4e10:3a9a%4]) with mapi id 15.21.0092.006; Thu, 4 Jun 2026
 15:40:06 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 10/11] drm/i915/bw: Use icl_qgv_bw()
Thread-Topic: [PATCH 10/11] drm/i915/bw: Use icl_qgv_bw()
Thread-Index: AQHc7o8AdTy+QK3EfkGJRRzTmWKRHLYuiEUAgAADvgCAAALngIAAAnqAgAACUoA=
Date: Thu, 4 Jun 2026 15:40:06 +0000
Message-ID: <16843f79b85e729999e4b1fa6225a52c2330ec71.camel@intel.com>
References: <20260528103458.18069-1-ville.syrjala@linux.intel.com>
 <20260528103458.18069-11-ville.syrjala@linux.intel.com>
 <8c3c70565faba998122b8092b3f3d3783328e53f.camel@intel.com>
 <aiGV4NpQtyhCN4ct@intel.com>
 <e8a8f7d3773212fea0af63c878d856c08eb2ad51.camel@intel.com>
 <aiGaYxgQED_fS6uV@intel.com>
In-Reply-To: <aiGaYxgQED_fS6uV@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7785:EE_|SJ0PR11MB5040:EE_
x-ms-office365-filtering-correlation-id: f9bf5ccb-b922-45ff-81bc-08dec24f8d6b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|10070799003|1800799024|38070700021|22082099003|18002099003|56012099006|4143699003|5023799004|11063799006;
x-microsoft-antispam-message-info: CX8aw71aTJXdvEV4cI6YiyylVUBlbjwfDixwj90FSgAeDQuE+5q99t70CkSIA3U5WzjwdX7VgPq9698nxKntR63i97ubAurEHhDsuQ43IlD596PLgcK8DQk9ZotHUpmGk5MUma8o/3QHkFI4osl7ALQXKZBYxcPeTgvfiEt42LuyoFjYreaLZsiElkUU+RUPDSKAiFVQ0t8sb6NYOsZHsxJFDxj4DL7k1hiEgYf0hx3+9xXybtkIjSYMYFVW+59JhWAW40LWkChQ62EExSbOFt2nxL+B91G2GV3n5AfhrC6vNaVt4OLDFihJ6qR9+YEl+JQtbttcLj+q7SNgDKVpTlz4NjB6UJoZ+7Pdu3UAJcNOWR0ZCA1KD4BEJGGP1I4JLR3PSBnt4tSvmqZNT0ZU16AYMzqeht7DiCTUVim6snXoSDkCI6xmSbS+wKugcOtplHJ7btYKJnkvjEQXr6Sp3y0cRYEr3U662UT/qvebGgVryTQmw4a9kfVUKUAViAMcG0njnpaHCkWAHSdGF6g0bFjN/ojk8knF187OojcbSlfBh+uC4Y8ERzFzHTX1CoHe743Yo7asqojHTqOp/vYHVe1TP8U40jXlhejrxUlwLu/JXOk1dLJMee7gf33Oo3bhNZLn/kgQEMuquCO3/nRaOHtK7T53hW805D+dORIDedJBy1deXcKPZdYuVKDJ6aHkmf15GvyYPpBhs3obc5ScWVcueHO1uHwTTKJBk2Kq71AWo4ze3T4aQtMvwrQ/0bEj
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7785.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(10070799003)(1800799024)(38070700021)(22082099003)(18002099003)(56012099006)(4143699003)(5023799004)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?R0FNZzJsOVpFOENiblhEblBkb2FYdk5NSWN4Ty9RZ3pVVU82VGNnNXNmYlpT?=
 =?utf-8?B?REZjcExrZVpHdVF6K01IT3l4VFdhZUpRVDh3cDZwYnZDMkZuK2JCckFBYytH?=
 =?utf-8?B?aHoxVk8xNjlwSWM5bG9Ka00zMmJXYU9HOFlvUVgwYUN2QnA3STlwVDVYeXZK?=
 =?utf-8?B?VzNLVkNiNVd0Z1pTR2Z1VFM4Ujg3bUtna0crNm8xZ1VpQ21EaVNiM3ByTGdF?=
 =?utf-8?B?R2dTMnFoNFh1S2FSWFZxWHQ3My9ZeUR4SndKcGMyZWd6bXpDZk5ISHMrc1VN?=
 =?utf-8?B?MnNYZWZFUWNRQ3dMdWloZUJSeTBpSzI5bW5rZmRqRjc2d295aUpsRjVIVmFO?=
 =?utf-8?B?REFWSlZzc0M5VVpvNGZ6cVdxc0FHTXZVamJ2MnVZblJQbS9OcU4weEV3TXhN?=
 =?utf-8?B?TjA1dmFHZ3VhRHV6L0RoSDQ5YVRSNzRvbXdrekZQdDdzMTJSbW5JL1pKZmNG?=
 =?utf-8?B?eWZsKytSbmJqdGxiZ2wxVGdsL1JHM1prbVEvY3JFa2p6L3Rxd1pYUzgwc0N5?=
 =?utf-8?B?SGQ4YUNjZmFRUEdkV2VUeVZLeVNRR1pPeVZPWHhyRmR2L0RtOEwvYm1Vdk1D?=
 =?utf-8?B?b2p4a1g1SXZCaGhvbDdIM0wxV09HVWQ3QU5aUHhxcm5Fdmx0NWprTDlpaW44?=
 =?utf-8?B?Sk4rRnRSZ1VCamNiYnRGNTkrVm1XZGxGdnF3aTNydjQ3L0MwQXh3UVB1bHlX?=
 =?utf-8?B?SmN1QzN5cGxnUDdreExQR2d0aitEUHVVQ0hQdlczd0tyVkhEeno2NmsvaXVN?=
 =?utf-8?B?dytud0tFK0xzbzAvb3JiYjloVjlCUTVDK05WUzNUKzJ2enBkVlhxRVYwT0Nv?=
 =?utf-8?B?Q0JpdnE4SjNjVW56MS83b3lRekwwMXZJczRRanpWbVJaV0dxbkIxSkpTLzlj?=
 =?utf-8?B?bWFNUkhMYXJGUDczeVlBTjJETEFpc1VzNmZWZDkvaU5WLy8zSW02TXJZeUwv?=
 =?utf-8?B?UkRIaG1JR3RtY0NCeVZCVUFnM3JIZytDUktDYUgwNHJhbDZ6OWZZeHMraHZn?=
 =?utf-8?B?SmhXSEV4bitlNGJvYllEQnBHbmQ5MXg0UXhXRlN1L2VBbEtvZVBMVG94OVI0?=
 =?utf-8?B?YnUyV3BVTUJDOCtORThSVmJHTUF2ZzZydXRoRnEvbzBmbUg0MkxKN015ZVc0?=
 =?utf-8?B?OGFucjA5d0RLbUpFUHpxOEtLV1hzd1ZPZzE1MWxtL0loWUNobWxHeVB5L1dh?=
 =?utf-8?B?MWdselRPdEl3VU9YWkppOGsxZlhIRWptbWU3VFYrbFY5ODRub1JMdWtBYVlK?=
 =?utf-8?B?bEE3UWFtMHN3aXY5eFprYndGdFM1TmI5MStnT2tNbUs5cXhJT0ZqNWRSTmZ3?=
 =?utf-8?B?blpYOHRObWxJL0labEUvTXZZV1F4RXdmMk9ZMjh0czlTQzZDREhsQ3pJdUo2?=
 =?utf-8?B?Q09uV2Y5U0g4NG5NdXBqMGpFRllpUTgyZS9vN3owVU12OGR2R2FJOHYzVzFV?=
 =?utf-8?B?YkJENEFLUTF2ZlpIVFowVXRTdlZ0aC9KeUFqTU1JYkR4UEE1QlhNQmc4YjY2?=
 =?utf-8?B?dHdKWTJ3eThZVStFOVhORWo2NHoyT0pmOHlNbTQySkNBZHZ0OU1tWXhScGlC?=
 =?utf-8?B?aTZhOWtVK3NIQ1g5RlZzanQzRXFPSVo2MHpHNDY1V3hyNVZ1UjZ2Nkw4ZTRX?=
 =?utf-8?B?elArUHZ3Z2hlcHN2UnI2ejdpRVp2aDRCTUNmVUZsSmZxaG1nVEwwWlFQNUlH?=
 =?utf-8?B?RkdwTnJNcEw4d1hNV1FSQ2NsTnd1RzhWVzdHSkNUbEVBRWNPYUNRQ2lJRnJ1?=
 =?utf-8?B?WUkvUy9uOTJqKzVzbnVWbE05RzZ0RWx2OVFQZEtoVURLUExoUjJqbW4yNVZC?=
 =?utf-8?B?b2RoZVVDK1ZsMlJMWWM2VE0vcXJkM1dqZ3ltdmUvK2dlNi9VVnJUZHFPaFA0?=
 =?utf-8?B?OWxJZ2lQZytWMHJ6WVRNK0ZvOHN2aTcyWTJhUmdnUFk2bVRkQUdNLzcreFpw?=
 =?utf-8?B?Y2Q1TzA3b2I0WHdIWVg5MzVnZEhUN3pnRGJ2bThOc05BUnkvelVYbVhHZnRM?=
 =?utf-8?B?Z2c2dnNUd29wR1pwcy92SktTMG8vU1lUZVdid3VjMkJaSndjNjVyWG9EOHIr?=
 =?utf-8?B?QXNyMUZZSUR0NFloeFpDRFZqMDM2Y1hzMHB4TGgrS0dWM3RERlpZMmp2YTB4?=
 =?utf-8?B?bENjTEVraGxIZ0pNb0ZKOXYrelJHRjU1Tkl3c2RxMHVLbTZzWG8vaGNOMXRp?=
 =?utf-8?B?bGI0eW9mZVdPcnZ4alYxeFlTeERUL0Z4MWMxLzdCTUI0MzdMbVNvaCt4b21X?=
 =?utf-8?B?czdxQUZZbE05UUNNOVBsdWt6TFFPYWpyNDJobmhVSFNPQkxsaDZHQzN3YThD?=
 =?utf-8?B?c1Q0d2pzQmtMa3NwQVRtU3VpSlByLzdRMDB6a1JpSDdyOVd0Sit6cmdTUWdO?=
 =?utf-8?Q?uyLOc+9dcjAcxACaXT80AhrXrB1Zo4sfnTZYsovXyVdzP?=
x-ms-exchange-antispam-messagedata-1: 4XkQ/mUAwkdVd2P1Jfy9DYfqYgcOyr5hn9k=
Content-Type: text/plain; charset="utf-8"
Content-ID: <3606C4FD659FB74A865F1971DB19905B@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: ETS9K5dd672/BnsDVET68bA+EJUu6RN0nOvt4XF308OkHP8+TacgTigGrylLYWChepZpFEzf0R50l5M0sMvfDJvBt9yqyLS3ytw6akq+Ggb5MfRebJToo4xp3UhG9oxMhzw5EaxSFlFvbxITejpqDX0f8cLWx9GFjAiGQcWD6kjnaPpEpYXgZV92h9eRsCLtujRbFG1ouPIYzQLVZav0NJ/24Sb2JPmxpwIH1zunsXYoeidKcDCHqyBA03S3FtrhBScpNgQ90EchL3CGU5Mhi8w3SaSBz2Ad3oKYgSzCMqqwtwUbGL1500CqUHwkOkF59u4U0MVV25njOlj5ILAjzA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7785.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f9bf5ccb-b922-45ff-81bc-08dec24f8d6b
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2026 15:40:06.3631 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6irBOKnYAe6mz/4aJwnqgWb+F9hNP5Z5gOs9swk3+D7+2ILemfjPMmJtKUKWGdL2KO9Zqqg3HrhWMFuMrWSdRlujtHikFL0omcoVsUudwEM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5040
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vinod.govindapillai@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 48FEC64185E

T24gVGh1LCAyMDI2LTA2LTA0IGF0IDE4OjMxICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFRodSwgSnVuIDA0LCAyMDI2IGF0IDAzOjIyOjU3UE0gKzAwMDAsIEdvdmluZGFwaWxs
YWksIFZpbm9kIHdyb3RlOg0KPiA+IE9uIFRodSwgMjAyNi0wNi0wNCBhdCAxODoxMiArMDMwMCwg
VmlsbGUgU3lyasOkbMOkIHdyb3RlOg0KPiA+ID4gT24gVGh1LCBKdW4gMDQsIDIwMjYgYXQgMDI6
NTk6MDlQTSArMDAwMCwgR292aW5kYXBpbGxhaSwgVmlub2QNCj4gPiA+IHdyb3RlOg0KPiA+ID4g
PiBPbiBUaHUsIDIwMjYtMDUtMjggYXQgMTM6MzQgKzAzMDAsIFZpbGxlIFN5cmphbGEgd3JvdGU6
DQo+ID4gPiA+ID4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4NCj4gPiA+ID4gPiANCj4gPiA+ID4gPiBSZXBsYWNlIGEgaGFuZCByb2xsZWQgY29w
eSBvZiBpY2xfcWd2X2J3KCkgd2l0aCB0aGUgcmVhbA0KPiA+ID4gPiA+IHRoaW5nLg0KPiA+ID4g
PiA+IA0KPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+DQo+ID4gPiA+ID4gLS0tDQo+ID4gPiA+ID4gwqBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMgfCAxMCArKy0tLS0tLS0tDQo+ID4gPiA+
ID4gwqAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQ0KPiA+
ID4gPiA+IA0KPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2J3LmMNCj4gPiA+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfYncuYw0KPiA+ID4gPiA+IGluZGV4IGY0MTIxMjIzYTU4Yi4uNDIzY2FlMmZmMjA4IDEw
MDY0NA0KPiA+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
YncuYw0KPiA+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
YncuYw0KPiA+ID4gPiA+IEBAIC0xMTA2LDE0ICsxMTA2LDggQEAgc3RhdGljIGludCBtdGxfZmlu
ZF9xZ3ZfcG9pbnRzKHN0cnVjdA0KPiA+ID4gPiA+IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksDQo+
ID4gPiA+ID4gwqAJICogb2ZmZXJlZCBwZXIgcGxhbmUgZ3JvdXANCj4gPiA+ID4gPiDCoAkgKi8N
Cj4gPiA+ID4gPiDCoAlmb3IgKGkgPSAwOyBpIDwgbnVtX3Fndl9wb2ludHM7IGkrKykgew0KPiA+
ID4gPiA+IC0JCXVuc2lnbmVkIGludCBid19pbmRleCA9DQo+ID4gPiA+ID4gLQkJCXRnbF9tYXhf
YndfaW5kZXgoZGlzcGxheSwNCj4gPiA+ID4gPiBudW1fYWN0aXZlX3BsYW5lcywNCj4gPiA+ID4g
PiBpKTsNCj4gPiA+ID4gPiAtCQl1bnNpZ25lZCBpbnQgbWF4X2RhdGFfcmF0ZTsNCj4gPiA+ID4g
PiAtDQo+ID4gPiA+ID4gLQkJaWYgKGJ3X2luZGV4ID49IEFSUkFZX1NJWkUoZGlzcGxheS0+Yncu
bWF4KSkNCj4gPiA+ID4gPiAtCQkJY29udGludWU7DQo+ID4gPiA+ID4gLQ0KPiA+ID4gPiA+IC0J
CW1heF9kYXRhX3JhdGUgPSBkaXNwbGF5LQ0KPiA+ID4gPiA+ID4gYncubWF4W2J3X2luZGV4XS5k
ZXJhdGVkYndbaV07DQo+ID4gPiA+ID4gKwkJdW5zaWduZWQgaW50IG1heF9kYXRhX3JhdGUgPQ0K
PiA+ID4gPiA+ICsJCQlpY2xfcWd2X2J3KGRpc3BsYXksDQo+ID4gPiA+ID4gbnVtX2FjdGl2ZV9w
bGFuZXMsDQo+ID4gPiA+ID4gaSk7DQo+ID4gPiA+ID4gwqANCj4gPiA+ID4gPiDCoAkJaWYgKG1h
eF9kYXRhX3JhdGUgPCBkYXRhX3JhdGUpDQo+ID4gPiA+ID4gwqAJCQljb250aW51ZTsNCj4gPiA+
ID4gDQo+ID4gPiA+IFdvbmRlciBpZiB0aGlzIGNvdWxkIGJlIHNxdWFzaGVkIHRvIHBhdGNoIDMg
aW4gdGhlIHNlcmllcyBmb3INCj4gPiA+ID4gY29tcGxldGVuZXNzLg0KPiA+ID4gDQo+ID4gPiBU
aGlzIGhhcyBub3RoaW5nIHRvIGRvIHdpdGggdGhhdCBvdGhlciBwYXRjaC4NCj4gPiANCj4gPiBC
ZXR3ZWVuIHBhdGNoIDMgYW5kIFBhdGNoIDEwLCBiZWNhdXNlIHRnbF9tYXhfYndfaW5kZXgoKSBy
ZXR1cm5zDQo+ID4gVUlOVF9NQVggaW4gcGF0Y2ggMywgbXRsX2ZpbmRfcWd2X3BvaW50cygpIHdp
bGwgbmV2ZXIgZmluZCBhIHFndg0KPiA+IHBvaW50DQo+ID4gKGluIHJlY2VudCBwbGF0Zm9ybXMg
bnVtX3BsYW5lcyBpcyAwIGZvciBhbGwgdGhlIHBsYW5lIGdyb3Vwcy4uKS4NCj4gPiBUaGUNCj4g
PiBmdW5jdGlvbmFsaXR5IGJyZWFrcyBiZXR3ZWVuIHBhdGNoIDMgYW5kIHBhdGNoIDEwLiBUaGF0
cyB3aGF0IEkNCj4gPiBtZWFudC4NCj4gDQo+IHRnbF9tYXhfYndfaW5kZXgoKSB3aWxsIG5ldmVy
IHJldHVybiBVSU5UX01BWC4gVGhlIGxvb3Agd2lsbCBhbHdheXMNCj4gdGVybWluYXRlIGF0IGk9
PTAgKGlmIG5vdCBiZWZvcmUpIGJlY2F1c2UgbWF4WzBdLm51bV9wbGFuZXM9PGJpZw0KPiBudW1i
ZXI+Lg0KPiANCg0KT2guIHllcy4gU29ycnkuLiBJIGZvcmdvdCBhYm91dCB0aGUgY2hhbmdlIHlv
dSBhZGRlZCB0byBpbml0aWFsaXplDQptYXhbMF0ubnVtX3BsYW5lcyA9IFVJTlRfTUFYDQoNCkJS
DQpWaW5vZA0KDQo=
