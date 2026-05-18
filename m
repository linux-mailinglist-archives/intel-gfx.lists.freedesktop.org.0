Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eEleDa6wCmog5wQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 08:24:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27D43566A8F
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 08:24:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7756F89130;
	Mon, 18 May 2026 06:24:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DvIBrsqy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DBAD89130;
 Mon, 18 May 2026 06:24:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779085482; x=1810621482;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=y8wZCkwV8jNP1vCF2PIlsF+IEaD3LI2XVKyRNCtlgmk=;
 b=DvIBrsqyLFrnNN92juhsxJw0e9BIqlNh+9mmywh7QJ1AOB9fJ2CKUQ5v
 0vX2i8lC+dNdwuUYWNqi2bUB8RGNDVSRQxZCgzCjkizcF1h7BN9Cw8/bA
 2Rdwvh1PIq0d5im9k7D1C+sKCPKexJdATR1/up+4zCyyXsUTkrgIYl0Ns
 O1sbpfDUTDZWf7JY5WnyQ1mJMMNUhHiHiftHH+lS3u4ihYAXq3BwVt5zs
 NCyqLuswQcd8tS6+BqkxzPLRsk5dmNrIB79oi+SeFJ0f03xrfhHcb527L
 V/A8IxH4/DLc82sgZaX/78mKvYJVJnzPt76QIVoraygKmRco1yIuou6vk w==;
X-CSE-ConnectionGUID: U2+8JXsBTAacWWVG176xWA==
X-CSE-MsgGUID: JOOkm+mNQSKdy7uZzSc1vA==
X-IronPort-AV: E=McAfee;i="6800,10657,11789"; a="80104362"
X-IronPort-AV: E=Sophos;i="6.23,241,1770624000"; d="scan'208";a="80104362"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2026 23:24:41 -0700
X-CSE-ConnectionGUID: jcrfoECZQ9OALgaeIin7sQ==
X-CSE-MsgGUID: 9paCWYg1TjWiV12Nqi+FPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,241,1770624000"; d="scan'208";a="263108147"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2026 23:24:41 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 17 May 2026 23:24:40 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 17 May 2026 23:24:40 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.14) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 17 May 2026 23:24:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SXGLE6837At3femru0k5/uP6BAQ5I5Cy3eitjH9v6A1ddHXmyr6JPdcjjang/zCh+62XxWUuqFhs7yYjPY521F3ZO6akBSIJILaxFdQsDFqfGmjBgEaeNPF+4Xdu53ewm3gX7knkD01GIhDx0KmvWTsFlSFvVVDp7SjSQRW254xYxcW+rJzd5A33CN3F5mEfw0NBfKCcZSSnxuEXt1UqPObBiWmMqLW2vdsDlfizBLE4sxIt/FFK1ZtBfhybIYCbhF+QzpL3obBUlebgsTkgiwhB4LAoNaVOSHAupse0X1jNrf/G6joJQ7zyajh4ZBoiZhce7sYzorlDEmWU2MWyZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y8wZCkwV8jNP1vCF2PIlsF+IEaD3LI2XVKyRNCtlgmk=;
 b=A1mRRveaioLIQSnIMATA3C3XSv+B/Bga9RjdIb5Qa8Kt52jf9x6hQWbD2pvWq9Q9sqSpMCXkNkuGdTVbCfTgb8KFkyEYoiQWeD0nbmlttqQvC2bBqSAXURK1TveRIW+tHF5FoL7mH6J8+nv4uCnMxsG1w/RtmXaaEjABZ0ZUWd8Z0jHhrwVe8uagE90jBqFRDzZ7KUJGfiPmHZTbMDpq7CC0m5K35ghot7IyKzO24OEg5EqYwGf9xE60AAcGImwJVbsvepGkSLP74egD9Q9d6lx5IqCJnBwB6cBROdkpVrqoUTJfqBJBuIbtLQP/SGQlt9B+KvfzKuJHZR2Uvl0tkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SA1PR11MB6942.namprd11.prod.outlook.com (2603:10b6:806:2bf::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.11; Mon, 18 May
 2026 06:24:36 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.21.0025.020; Mon, 18 May 2026
 06:24:36 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 4/4] drm/i915/psr: Apply SDP on prior scanline
 workaround for Xe3p
Thread-Topic: [PATCH v2 4/4] drm/i915/psr: Apply SDP on prior scanline
 workaround for Xe3p
Thread-Index: AQHc5FFgfNpxgxYh80akTTUxI5X/J7YTSx8AgAAKO4A=
Date: Mon, 18 May 2026 06:24:36 +0000
Message-ID: <77d170c3d53d7bff12f1369369026102ce87b23a.camel@intel.com>
References: <20260515095756.2799483-1-jouni.hogander@intel.com>
 <20260515095756.2799483-5-jouni.hogander@intel.com>
 <DM3PPF208195D8D43D52DB8C35393883F76E3032@DM3PPF208195D8D.namprd11.prod.outlook.com>
In-Reply-To: <DM3PPF208195D8D43D52DB8C35393883F76E3032@DM3PPF208195D8D.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SA1PR11MB6942:EE_
x-ms-office365-filtering-correlation-id: 8a5bca20-e4bf-48f3-fadb-08deb4a6221c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|10070799003|38070700021|11063799003|22082099003|56012099003|18002099003|4143699003;
x-microsoft-antispam-message-info: d3YAr6BgjJtua6KypBlJfJqteJGgTTY68z0faFo9oV7bsYfvNpAH4eeNK3f5e6DTxwwYFJalUqwEtX6TOpebJQ+dWeZv3HXqcLrPHpzfF0+EFAszMf4wIefggBnKCDPZbH3l4BNDu2bbz0rYvmLdYaeQa0APHHgXTrzHpXZQkRXx6/8DQ6FXLtJKEHKFZ3zg6O8Yydlx+OoZJ6khomQmzigJQzAgakhrB+WKTSC5tjpI8pvWBVtwKNkNPdb9EQt8IG6xTurdqG7ueN+6SoZegYitrss4uVQoadZwOazfep1Si48mkOYPF39q1+oHVVKdB49nlW3C1VgczsiwIjeGJuvS6nWTtgSwqIoMy/YtzkghPkFdWzJxP3fzWAHuAWxkfgpJ+oi+wwTeAgCGXSJrErpTW9UNoqax2cpQZ7Sr5lA7pq8dsJXhL0cBaN26o7bzzz2S5r0iU6qSBYeUq9YZiyDc5j4c2uLg0mhx7IdYJylo5G8lXXIRfsjnkhzFqJ8tLBJWzBqcJq6BtvnVAS01VSXCfDp4KFdDkZddWg7dtYwmz/YHdXjNmPHbn1aEOX6yKBbByvvidWmSYsKAqC7UkPKQWHDr8ofSLr0GAeC1CTy83TMHa/eTSTJjSdzHSBMK0cgeC4OaXBPxNO3UrgiS9Dnfp0hkEuXdtnD9FfVJZ9JUuTAIiCADq6LZya3C/wjOEzBL/8llHRLDD2DR9/HQ3dYgWI0MXl326J7u2/VJPKFDEL0avomD8ij9Yu6aJRRL
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(10070799003)(38070700021)(11063799003)(22082099003)(56012099003)(18002099003)(4143699003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?d01Ra3JZclh5eG5Ia1N4cFVKSm5sLzdOcDBYSGhTL0pNOEY0Z1cxb1pOcDVR?=
 =?utf-8?B?ZGR4K3pENmRXS1J1dlV1YllRS0xsVmt4L0pDai9KTkl4TVg1SksyazQ1VzBl?=
 =?utf-8?B?NDd4UkNoa1Iwb0E3VzZPZEl6bWhweEk3K0Zad2Y1bVlmekJGQlhXWE9mcUo0?=
 =?utf-8?B?bXBmSmNzN1ZlWjFHNmNUdTNDUFBjbUZDU09tZlJPNU1qRWRMWnlvdHh6MjdK?=
 =?utf-8?B?bldHWTRkY3FybEJUUG9uVFVQTjlxRXZUaTFJcDVCdC9MTXVxT01EYnk3RVFm?=
 =?utf-8?B?SzZBMW50SXgyRDVZbG9hY0lQRDN5QUdTYkNrMUV3L0QyQkh0ZmxZLzdKRjNU?=
 =?utf-8?B?azBpYUU2U0xkVTh1STVncTVybXlyU3NCR08wYmo0dmprNHFsNXgwOFRaWVNP?=
 =?utf-8?B?RkVjbUltTTREdzZDSC9iOTliaWVQZnk4TS9MOFZCQ2htcTVHNlgxaG9Fclp0?=
 =?utf-8?B?U0ZUbXlLR3ZKM0czMVNjWHZMZ0kvV1pjWW8ybTJ2cFJ3Q2pwYTFVM0VWVTUz?=
 =?utf-8?B?ZjQ5ekwzMTl0dFhSYkx5VjVZT3lPdkdibUVUUDVvaSt4YjBxVk94OE93NUh0?=
 =?utf-8?B?Wk5oL0p2a1JSbTk1eUttNitVYW5PekVYSG0rNGhuS0VqTUdFOU44TTg5NXV1?=
 =?utf-8?B?YXhjb1hvR1QrejlNd3NyZkpWMWJrbkw2cDhYQXpjYi9EMUxvN0FPS3lTa2py?=
 =?utf-8?B?T1BPQjhpMmxIOXd0ZjAxY1Z3OFR4RVhwK0NjWVJHbWRLNzViSFVON3ZDYkdL?=
 =?utf-8?B?QlZYNG5BWXd5blZnMGZhYTBXT1k2UkMvRkdveml1Y1VsUURJWnAyOUwzM3hj?=
 =?utf-8?B?U2YvRi9KZHpVT0JLcEszeThUZXpzcDRrWlczZ09YV1UzVlJpYm5POGlrSjl4?=
 =?utf-8?B?K3lHcnAyeE1xMDROYzlEMkwwam8yeGdISStJL2Nsa2NDVkpoWXVRcDcxUDUx?=
 =?utf-8?B?ODJVdlpZNUpCaTNNblF2amNOcE1EcGdRRTNQZ0pGNXZQUm9NRzVQN0RvSkU0?=
 =?utf-8?B?emJEbVl2TWdrNVV1Z0ZGNHE2ZHBGTUxsTjU1QkVZNEtYUjVwdEdJTjdtek9n?=
 =?utf-8?B?VDlxcWJIUDFTd0tCazRGR0wvRDNuYVdKZUxCd2dpdWFWMkVzZjA1WURRc2Q1?=
 =?utf-8?B?NGlnbC9vNHpsVGd2eHpsSlJDQXBxOGYwMFUyMWdDTU9MRTViOTEzTTF2QjRM?=
 =?utf-8?B?MFdTRnFyYXRBY0lTT0dxRVliVElPWEVscVFJMXoyNC9INDZEdWc1RGRnM0Jl?=
 =?utf-8?B?d2FLdHFxVnp1WGF0ZFFqVFphWUhDMmRkbE05bVZZbEtoN3huaVdZWVZEL3Yx?=
 =?utf-8?B?eGMwdFdRQlJzQUdVandPMVE0a05nMkNLWnd3eitsMlcwQzBnNC9HODd0WmVD?=
 =?utf-8?B?YlVOQ2YwQ0M5clViNHc4VVkyU1A2UjVjQm9zTmJYaXJyUmpUb0drUzJYdFdo?=
 =?utf-8?B?L0FrUkZpVjZkZFoxTkhjV3FhYlM0czFGS2pSKzlzN2JNb1lOZUQrUnNCdDdZ?=
 =?utf-8?B?ZEs0Vm9wTmhjTlFPRVQ2bGNuN0ZkeXdob1hNNDdOdEpKdTVCaEhjZDZib2lT?=
 =?utf-8?B?cDFBTjQ5enA3ZWFjaTlrQWhKaUNtejlnTFBycUVLVC92QmhOV2x0SGQ1Mnox?=
 =?utf-8?B?WWZNaG9YSUhkeENWWlMxaEROeUJ6SldSZmpPaURnQzVxbGthUkp5QVNVdTQr?=
 =?utf-8?B?RDdEVVJyOUtabDBTM0Z6MFF6MmhKQnJFWDZtZGZsSmp1VnZTQjAvK0c1R2ZT?=
 =?utf-8?B?MVVoRkc3aEVOTzVjSEZJc2xZWFdRRW4vZS9UdklFRTUxekp5QjdSTGZ0ODJX?=
 =?utf-8?B?Q2hENFJTZWt2cUVUbjVYdXF2QmhpRVZ4NmRRRUNkMkkxYmUvcEJIejgycy85?=
 =?utf-8?B?ZEhGblpWQ1QwcHNCektvVGFnSHNQWUY2R05adjV3UkR2enB0ektCNVJDTnY0?=
 =?utf-8?B?M2QwY0ZWSTd1cXI3elpqT29zYURkY3R5MGhoc0hRYXZzMTMxcDV0NlpPaExr?=
 =?utf-8?B?aFM2T29peTlyRGVMbzI2d2RqTlR3cm4xYkVxUGZaQ21FdExaVE1UaXFjSHp0?=
 =?utf-8?B?dFBBTEpVREdtcGR0RENCRFFTcWdwQXdIU0FLTW5uVC9mc3haYzEraEtIenlk?=
 =?utf-8?B?eVBTcGRkNnBZVW5CTi9xT2tKY24rTFRYK04xWFE4SUVEM0w3dTNWczlwUTNt?=
 =?utf-8?B?WVlmMVlVaDVFb1JVeGtuZmVVY3VwNk5EWllZRGVMR0hTZGErdXBoSVZMbVNj?=
 =?utf-8?B?eHlRbHZqbzJNLzc5NC8ydXNmTkNTUktKUlliZHFMTExVWEJhMFpyY2tvOEcr?=
 =?utf-8?B?akJGam9vVUpodEFnWFRyM1R0dFBCZFpheVI4Z2J5S1RLYmNjd2F4Q2JSdXNL?=
 =?utf-8?Q?22GFs0aLex0m+UNvqwRfYXcWjDyQ8NoSicEWr2RumPwKJ?=
x-ms-exchange-antispam-messagedata-1: WPnxJsR7cSSuUvKr/1JDymcZ5siWOdsaGcc=
Content-Type: text/plain; charset="utf-8"
Content-ID: <999C5C425B829D4E8FA8E7D26B5D550E@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Q13eLHYib8N5mF0No/bSxCbnKNSilunP26yCwMRTeym1H2o8978Z4QtAmLrmAxjAXUJNkbcoq5XkJn+Ib9uF+AyiCh2wJIEqE01UarBVxndj5k0D27TptzSZmamuKeRZqjQQoGk+uRRWSnJiyu0IJw2fdooHD0Jim3V8YhzapHx57WoMrXZPvLgbTDg+/Frem6vVYdmeWCnFhQUHxfkkPHbPOJtORMv2334X4V2RmjlCfUHssf/tSYgYxP65MTzrJFV+dk2JbEAHxlTWHw/WY9XjQ6u5rp3zVNJ6EuwLXtlLsLQQluxvg5CMXIOrwM9/fo1E+cdnMx8NXq38ApAuhA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a5bca20-e4bf-48f3-fadb-08deb4a6221c
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 May 2026 06:24:36.2789 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ysf4rHyz/n8G5h/i3d3TaJ9Avd2iLJqok2JFYsrJ/vffRtf0+plcjQrEqq9umuAqH8rNlfVmoqOMNZGUl8SM7XrFKgyulqtPhMHxM4VGk7E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6942
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
X-Rspamd-Queue-Id: 27D43566A8F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

T24gTW9uLCAyMDI2LTA1LTE4IGF0IDA1OjQ3ICswMDAwLCBLYW5kcGFsLCBTdXJhaiB3cm90ZToN
Cj4gPiBTdWJqZWN0OiBbUEFUQ0ggdjIgNC80XSBkcm0vaTkxNS9wc3I6IEFwcGx5IFNEUCBvbiBw
cmlvciBzY2FubGluZQ0KPiA+IHdvcmthcm91bmQNCj4gPiBmb3IgWGUzcA0KPiA+IA0KPiA+IElu
IFhlM3AgdGhlcmUgaXMgYW4gSFcgb3B0aW1pemF0aW9uIGRvbmUuIFdoZW4gdGhlcmUgaXMgYW4g
U1UNCj4gPiB0cmlnZ2VyZWQgaW4NCj4gPiBDYXB0dXJlIHN0YXRlLCBMaW5rIHdpbGwgYmUga2Vw
dCBPTiBwb3N0IENhcHR1cmUgQ1JDIFNEUC4gQmVmb3JlDQo+ID4gdmFsaWQgU1UgcGl4ZWxzDQo+
ID4gSW50ZWwgc291cmNlIHdpbGwgdHJhbnNtaXQgZHVtbXkgcGl4ZWxzLiBTb21lIFRDT05TIGFy
ZSBpbXByb3Blcmx5DQo+ID4gY29uc2lkZXJpbmcgdGhlc2UgZHVtbXkgcGl4ZWxzIGFzIGEgdmFs
aWQgcGl4ZWwgZGF0YS4gUHJpb3IgWGUzcA0KPiA+IGxpbmsgd2FzIHdhcw0KPiA+IHR1cm5lZCBv
ZmYgZXZlbiBpZiB0aGVyZSB3YXMgU1UgdHJpZ2dlcmVkIGluIGNhcHR1cmUgc3RhdGUgYW5kIG5v
DQo+ID4gZHVtbXkgcGl4ZWxzDQo+ID4gd2VyZSB0cmFuc21pdHRlZC4gVGhlc2UgZHVtbXkgcGl4
ZWxzIGFyZSBwcm9ibGVtIG9ubHkgaWYgU0RQIG9uDQo+ID4gcHJpb3INCj4gPiBzY2FubGluZSBp
cyB1c2VkIGFuZCBFYXJseSBUcmFuc3BvcnQgaXMgbm90IGluIHVzZS4gVGhlIHdvcmthcm91bmQN
Cj4gPiBpcyB0byBzdGFydCBTVQ0KPiA+IGFyZWEgYWx3YXlzIGF0IHNjYW5saW5lIDAuDQo+ID4g
DQo+ID4gdjI6IHVzZSBpbnRlbF9kaXNwbGF5X3dhDQo+ID4gDQo+ID4gQnNwZWM6IDc0NzQxLCA3
OTQ4Mg0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJA
aW50ZWwuY29tPg0KPiANCj4gTEdUTSwNCj4gUmV2aWV3ZWQtYnk6IFN1cmFqIEthbmRwYWwgPHN1
cmFqLmthbmRwYWxAaW50ZWwuY29tPg0KDQpUaGFuayB5b3UgU3VyYWogZm9yIHlvdXIgcmV2aWV3
LiBUaGVzZSBwYXRjaGVzIGFyZSBub3cgcHVzaGVkIHRvIGRybS0NCmludGVsLW5leHQuDQoNCkJS
LA0KSm91bmkgSMO2Z2FuZGVyDQoNCj4gDQo+ID4gLS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfd2EuYyB8IDIgKysNCj4gPiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfd2EuaCB8IDEgKw0KPiA+IMKgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuY8KgwqDCoMKgwqDCoMKgIHwgNSArKysrKw0K
PiA+IMKgMyBmaWxlcyBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKykNCj4gPiANCj4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3dhLmMNCj4g
PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV93YS5jDQo+ID4g
aW5kZXggN2QzZDYzYTU5ODgyLi4yMDk0ZWRhMDljOTEgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3dhLmMNCj4gPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfd2EuYw0KPiA+IEBAIC0xMzYs
NiArMTM2LDggQEAgYm9vbCBfX2ludGVsX2Rpc3BsYXlfd2Eoc3RydWN0IGludGVsX2Rpc3BsYXkN
Cj4gPiAqZGlzcGxheSwNCj4gPiBlbnVtIGludGVsX2Rpc3BsYXlfd2Egd2EsDQo+ID4gwqAJCXJl
dHVybiBESVNQTEFZX1ZFUihkaXNwbGF5KSA9PSAyMCAmJg0KPiA+IMKgCQkJSVNfRElTUExBWV9W
RVJ4MTAwX1NURVAoZGlzcGxheSwgMzAwMCwNCj4gPiDCoAkJCQkJCVNURVBfQTAsIFNURVBfQjAp
Ow0KPiA+ICsJY2FzZSBJTlRFTF9ESVNQTEFZX1dBXzE2MDI5MDI0MDg4Og0KPiA+ICsJCXJldHVy
biBESVNQTEFZX1ZFUihkaXNwbGF5KSA+PSAzNTsNCj4gPiDCoAljYXNlIElOVEVMX0RJU1BMQVlf
V0FfMTgwMzQzNDM3NTg6DQo+ID4gwqAJCXJldHVybiBESVNQTEFZX1ZFUihkaXNwbGF5KSA9PSAy
MCB8fA0KPiA+IMKgCQkJKGRpc3BsYXktPnBsYXRmb3JtLnBhbnRoZXJsYWtlICYmDQo+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV93YS5o
DQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfd2EuaA0K
PiA+IGluZGV4IDE1ZmVjODQzZjE1ZS4uOWNkZDE0OGVhNGZhIDEwMDY0NA0KPiA+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV93YS5oDQo+ID4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3dhLmgNCj4gPiBAQCAt
NTIsNiArNTIsNyBAQCBlbnVtIGludGVsX2Rpc3BsYXlfd2Egew0KPiA+IMKgCUlOVEVMX0RJU1BM
QVlfV0FfMTYwMjM1ODgzNDAsDQo+ID4gwqAJSU5URUxfRElTUExBWV9XQV8xNjAyNTU3MzU3NSwN
Cj4gPiDCoAlJTlRFTF9ESVNQTEFZX1dBXzE2MDI1NTk2NjQ3LA0KPiA+ICsJSU5URUxfRElTUExB
WV9XQV8xNjAyOTAyNDA4OCwNCj4gPiDCoAlJTlRFTF9ESVNQTEFZX1dBXzE4MDM0MzQzNzU4LA0K
PiA+IMKgCUlOVEVMX0RJU1BMQVlfV0FfMjIwMTAxNzgyNTksDQo+ID4gwqAJSU5URUxfRElTUExB
WV9XQV8yMjAxMDk0NzM1OCwNCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYw0KPiA+IGluZGV4IDJmNzhkNzZjNGVlMS4uOGQ4YTlmZjMxNzE4IDEwMDY0NA0K
PiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gQEAgLTI5
MTMsNiArMjkxMywxMSBAQCBpbnRlbF9wc3JfYXBwbHlfc3VfYXJlYV93b3JrYXJvdW5kcyhzdHJ1
Y3QNCj4gPiBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiA+IMKgCcKgwqDCoCBjcnRj
X3N0YXRlLT5zcGxpdHRlci5lbmFibGUpDQo+ID4gwqAJCWNydGNfc3RhdGUtPnBzcjJfc3VfYXJl
YS55MSA9IDA7DQo+ID4gDQo+ID4gKwlpZiAoaW50ZWxfZGlzcGxheV93YShkaXNwbGF5LA0KPiA+
IElOVEVMX0RJU1BMQVlfV0FfMTYwMjkwMjQwODgpICYmDQo+ID4gKwnCoMKgwqAgY3J0Y19zdGF0
ZS0+cmVxX3BzcjJfc2RwX3ByaW9yX3NjYW5saW5lICYmDQo+ID4gKwnCoMKgwqAgIWNydGNfc3Rh
dGUtPmVuYWJsZV9wc3IyX3N1X3JlZ2lvbl9ldCkNCj4gPiArCQljcnRjX3N0YXRlLT5wc3IyX3N1
X2FyZWEueTEgPSAwOw0KPiA+ICsNCj4gPiDCoAkvKiBXYSAxNDAxOTgzNDgzNiAqLw0KPiA+IMKg
CWlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA9PSAzMCkNCj4gPiDCoAkJaW50ZWxfcHNyX2FwcGx5
X3ByX2xpbmtfb25fc3Vfd2EoY3J0Y19zdGF0ZSk7DQo+ID4gLS0NCj4gPiAyLjQzLjANCj4gDQoN
Cg==
