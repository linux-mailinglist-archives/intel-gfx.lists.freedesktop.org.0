Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UMG9JuVgsmlmMAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 07:44:53 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CAB126E042
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 07:44:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91A8710E97F;
	Thu, 12 Mar 2026 06:44:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GRtp30mp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A41C10E186;
 Thu, 12 Mar 2026 06:44:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773297889; x=1804833889;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=EqEbHVOv5bzDd5NSOIwTR8Mv6zoACz382pC+8gaVBIE=;
 b=GRtp30mp67lHF6wpbtwe48BmH3HcUIaySPE0POjgN0g6Le7OtATUTaii
 J3H5chVT1QyT4sWZcpPJr+Osr6WQ0a8Dsyg6wzJgmkj3Kq5BIgpap83JM
 ZO2v9HkVkjJUohcuMzHWopbXgDxOivwSifuRexeVnIdxGDTntOfh1/9i8
 mqdWIY+s7XF784AsBFX9Bgwx/qF9FoXZB56jQlW2VFwh+0tpzuj7DYO1u
 /VTCvgg6DK2g6a4jHHXCWPf3g1rAEEjUEQc4rwao74RqiAuhPm8Ui41te
 uJHnUB0lrilGAeQ84RmTmVOPIbNvxY9EDim1SRqFA+s2fbHZujJfB+yIR w==;
X-CSE-ConnectionGUID: 2Wk33uJSTXe/YkQmqnlWJA==
X-CSE-MsgGUID: Jkk9hjUhQNmjsAUk5pry8w==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="73572719"
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="73572719"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 23:44:49 -0700
X-CSE-ConnectionGUID: iOe3ENtMQHWuFLV1ohH98g==
X-CSE-MsgGUID: qWJ2qzL9THqhdAyUD//EOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="218154311"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 23:44:48 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 23:44:48 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 11 Mar 2026 23:44:48 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.30) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 23:44:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CZTDKbbQseG87JFmkxt8ajSL3ucjw3ET65lWdFnSiUCuD3Bly590FYwZU4WAy80SEf5bpyv//4DeCjZCQ4WEYMrAM8NfuIXkm+W738GkCTwnDFSESgakTsjxQNWYQtRQPubXhbbCiqStsiikXqN7JgkMk6G/MRSK9RlLaAsTIniQYCOMDFsKuVUngIrGR1YI08gAFrAD3TMddrvsx1OTOR2e8mVfGijK+1wg3JWoUgRYeVmZyWRO96ZmXcnjCI3PH8GhexIMwTAOP42hg2aFKB2cTSaMt2rGfuK0Vp/u6Og3Bo2Q7NLrqAYCVNxxzVHVJJja2synLPL1O2yXQ7q4Og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EqEbHVOv5bzDd5NSOIwTR8Mv6zoACz382pC+8gaVBIE=;
 b=hojD9xdrYDbASVkwDGlyAN650Xqu0RKgcRVz8VwgiYHvCN5gEJqxW56N/4TgTKiUUuc/0kKoBGCmgeNdYWw9XslXhh7pTKLjKv5embB8XX/kTiEbqQsryEM8s88DmXqePMRRLCtsUJqs+A2PxzAmyyu5v6nkjELGm8zQOeUzMLMqTzJv4VPfeBEnlvL25FdFfkHSnYuVQESg1cjQR4dD7ZX/Vxia2AlsHtTVQNTexILMoFCPocIfhpFcSYztONafY8c4821EAFVn+knHOaXA0oPBcWZoPKB+UwXLvcM8s+ZtPMGJ+GT++Zh7IR6Cio09FuWm9plBGbYvkBXjMV57EA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ0PR11MB5895.namprd11.prod.outlook.com (2603:10b6:a03:42b::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.3; Thu, 12 Mar
 2026 06:44:45 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.20.9723.004; Thu, 12 Mar 2026
 06:44:45 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "Manna,
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "Deak, Imre" <imre.deak@intel.com>
Subject: Re: [PATCH v7 2/3] drm/i915/display: Panel Replay BW optimization for
 DP2.0 tunneling
Thread-Topic: [PATCH v7 2/3] drm/i915/display: Panel Replay BW optimization
 for DP2.0 tunneling
Thread-Index: AQHcseFvdI5ikJhslk6eQLd3TLJu07Wqc6gA
Date: Thu, 12 Mar 2026 06:44:45 +0000
Message-ID: <a6defae2a9121438e66c47a0a277172f2342bc11.camel@intel.com>
References: <20260312050035.3493690-1-animesh.manna@intel.com>
 <20260312050035.3493690-3-animesh.manna@intel.com>
In-Reply-To: <20260312050035.3493690-3-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SJ0PR11MB5895:EE_
x-ms-office365-filtering-correlation-id: 7faefb86-6feb-4a20-2041-08de8002d923
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|10070799003|38070700021|18002099003|56012099003|22082099003;
x-microsoft-antispam-message-info: 3HQRmq1Pmp13HfdDPvzc6I91LrdyHmj4kSVQK0TSGZvxGgghLMzzMB96R1JXQx3QORFbJqFnXDAsr2z1O59WIxlSFNM85lWcZq5bUV0WYx6mDfkVb90+BPa9TvSJVZ4oc1GDCL8SWis5ywX+y4w2kIswuY9Krw9HDGSOCza6c8rI4vGeR0PNp2M13y28da/h4yvohj9PTakWKfHTtJ5ZsSJ/HOASixP204m+i0EVt2mYogp1Bw1zyTG3lXaOHTvD7oQj7fEZTV3uItWgXvYT+VMzC90LQgHBdZcN//l8wQc402R4b6ZQZBKRogutTp0FYpmgjGzrmyArN/it+ug2xPjseAXgnFtrnEHCbnJW4+10f5yIsVmYCBxKGejnqso2JWRbzBb13dpnbOYGScZPOs5Vsm+58bhIyMUKff+JCFbKSfN8VrRPkkFpkzJWn77neKAbW5/OHCH9ElXJ3GALOsX2kVCYyS39PBPNRyUYwhGdGzTAbhpu7RBStJ6uFi+y4ai2es3iYJoQW0vCZkI9MivroiB2dyfWhXH1reuPg9uQZ7S2eC4aRUjmG+C+ismL7ZTkQHgNeEferjGTB99sycgoVRGeII5V/p9Za2kJUmJuxy3cHUuUmxw3F3LoszxT3CKiJ/6W/ufS+2Jlc3u+tUBthn1KkFR6OsbSXGSXNydKDx8jJ/4z00OzHwWD1rpi72jN2jQbtykCpOj9jIBcwoRc6UuoZYmziI+C4lGtn5bsY3+j9wGuIaVHjMpzbALkCO2w8SNbLfPecH0Qt9kqsz5+7WquSyZw93SknLkWndU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(10070799003)(38070700021)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MU0xazNZZDZOeTRvbnczR1BnWVZ4S0VSd1ZQeitGUnhBZ0lMSzZSTS8yTlZX?=
 =?utf-8?B?NHVHS0U2bS9ENmNSakRYNzdaSVBNQ0YzL0ZrNGZVTXIvSld3R3FNdStSYmNr?=
 =?utf-8?B?ZERDaGNQZ2VQTndRZkMwNFpYdGpwSzJZTnptWEIrTVBDWkc0cVlnb08yZ0dj?=
 =?utf-8?B?WUhhSzM1NDMxVHpPM25ZSjdVcWxQZ0xWWG1hNlNQR0IyenY0MUxZRGpGWU82?=
 =?utf-8?B?Wkg3V1F3bjZOZGZlUU1qSW5odjZSMmNxOXlhQVpER01maGViYnM4Z25pSnRk?=
 =?utf-8?B?SjVoZHkrWVZ0ay9Yb3JCeXowUjkwNUF1bFRVZFNKVUFONmZCRUhRWUxMR24r?=
 =?utf-8?B?MHhzOVlXUDdPSTZlczFXYlMvVEZzWVY4UGpNWitFdVRyNXJRVnoxbnBZcXJP?=
 =?utf-8?B?d01DT1NEQTgzYWc4ZUJRM3NEK0huSTlRWnlMNGRBbmMwOW43VVo2Vk9xNUoy?=
 =?utf-8?B?QzJZTnB4YzhWdDFRZ2JlT0x4RHNmYUo0VE1CTmVWT2pKT1ZQMDJqcnExcHFR?=
 =?utf-8?B?a1Nyb1pqcXphaVJDeDlLWjFjLy9XeXIxWmhUeHBZUTRIcUlRemZ1SXBKVS9H?=
 =?utf-8?B?VjA5UmJ1RkZXKzdIOFIySDVzOUYvMEZFUlV1Z0s1a28yZW1MVkJSWk5rZGdO?=
 =?utf-8?B?ejZoS0VtVGJ2ZDhQWndqbGJIb2k2VEEwK1U5ZUwxR1kvZ1VwRENEWFRMSFFw?=
 =?utf-8?B?SU5BUkdiTUFxWVhqdlpPZW9xdjNHbDE2UmpHYVAzNC94aGFQd3JpZGNyaUFB?=
 =?utf-8?B?UWNoTVQ2RkFvY2pzKzl2QTdibG44cVpZR0NFZTdER2hBUTM2YUQ0MHVPenJu?=
 =?utf-8?B?TkdLNVE5L2IvWVBzSVhHQjZxT2ticmM5RDZYaXlua1p4bzVWbytxeFd1VHJ6?=
 =?utf-8?B?VUlYNUc2VHpLWlh5MnBNV0hTdURJZEtkYkxIN1ptSWZJYWpLNzl6SS9ZRHlV?=
 =?utf-8?B?ZEJCREZDdVN5cVEvWlVrbEJuTkVhSTZoZXJSeTJPeVcrWXZ1cXpUcFZLajlQ?=
 =?utf-8?B?cExoZmtHWGp3TlVYUllWRVdEY1J3aVlqb3pFMUdQQWsycTdjVGd6UndZUEFK?=
 =?utf-8?B?T1Y3ZVpRVXQ3YVp3ZnpmQUI4MThKc1ZQUkNGT2pYdTBwNEVIM2RORWUyd3hx?=
 =?utf-8?B?RUl3L3ZYaG9lTzJ4Y1BDZ3paZzUxL1h6dnk5YlJEVk5xdUdTeUlaY3Jua3hE?=
 =?utf-8?B?M3NTdDA4TEUrNmtDRlo2Rzk2QVhQRDRvSWNEc0N1amJzY05LZmtqL2ZnZHBs?=
 =?utf-8?B?eG9pOEF5YWdmRHhDeExJUEYybXlkM2hRNlgxeWZLa1NpZUdVU0tIZW84UlZz?=
 =?utf-8?B?c0lvNW0wUy9DSktUVWZRanVHRGI2d08vc0NudVZDUjczYm5VdG9jVEZPWVM5?=
 =?utf-8?B?OTlJNWkxQTVSdGsxTkUyMFp2eUJTSUllVWJNdU82NFRYbTNFQTR5WHh3NUtB?=
 =?utf-8?B?eldQR2lTZ2prM0swaGx5S2ZTa0x5VFpLUlNVaGtRdnc1SjZUbXlwZy9YYUZL?=
 =?utf-8?B?MUpyb3doNTk2ai9nOUdMTUFCUXRPSXJ1VVFtU2FVeVV4ZmJSckFWTm9WQ3Fi?=
 =?utf-8?B?aERLek1veVRWSmtLTjF2YVJlaVRhTTZrdFNJN0xZbTl0NCtJSUFEQmR5b0xK?=
 =?utf-8?B?L1hiVVBrbzRvTnhBNk54R2RERjRuQTZicE5FZUlqd1JNaHZsdnk5TkN6cW84?=
 =?utf-8?B?QXF6YnFrNDJqMXVXWmZGSVRhMklDRkkveERteUM3ZVh0RXI4Q0lGZ3ZPUHYx?=
 =?utf-8?B?RWFSUzlXZnZxVVJucUM0dzVoS2RlVFM2K3BtSmZVdlkyK2tEUkRjd2R6a0JI?=
 =?utf-8?B?aVJ5Ti9CZ0poaWd3THVVY0hnUklsYk16THBoQ2p0WldSKzJYaE1weDVYNi8y?=
 =?utf-8?B?NkFQSmoybVZvZnNKVlptcmpHZ0FjQUFtcUhMSnJnNFJ6THF6UTV3czRqRDBK?=
 =?utf-8?B?QTlHNVlCZHVSQ0QwNmNtNGV1bmZtU3lVcDJkOFFNS0VyTmJjVFhRcFI1Mnlo?=
 =?utf-8?B?aUNJT1dmR1IzMjhNZTYxSDIwMEhpOVg4RDZBQWpKZWY4V2VlY2tNTWwyZk9C?=
 =?utf-8?B?NTZuM2ZUVWpFd2V5cG1LcDdzNUJRaGR2TTdKK1BnTTRqQ1AzMWRNM0t1WU1P?=
 =?utf-8?B?RFhUdDBvK1Jwc09SSys1SzRUdndCZHpkTmk3aHhteG5HcGdCUTdZOVJxTUFD?=
 =?utf-8?B?Z1hLMk9kcEprNjNLMEVlQzdLc2lLdUxnMkFGNmVCRG9rVXRQRFkzSWVvM1hC?=
 =?utf-8?B?OXRoMlh2dWFhcGMyZVBuV3Z0VXBxUktSczBFbEhXWmJ4SHdzV0tReU12TkJi?=
 =?utf-8?B?VzlmN21POGdYamhXZFU2NEdzWHFzMDFKN3RkUmtGczdKcXE3Nlo4MGJYL1k0?=
 =?utf-8?Q?odE6RYHpmoL7uQOU+dsSzMLo9kaaHTsnySTnO5tPq3toa?=
x-ms-exchange-antispam-messagedata-1: 3n54rTlZq7BB17S2cCnFa12wuwh81XVaGEA=
Content-Type: text/plain; charset="utf-8"
Content-ID: <5859A4E17F49724F84955F5323410FBD@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: LTPSXoVW1jtYPEhEV7MTbFpWZQ0yvyZbQITQWA6Cgr2EZGiKS/YO7sajJF1lLm6PQd/YKBiQq7vAE/t7hR48EpWf+qw+tuHb8TT0qE//MsIKSWZCwCMqI/BDI4xshv00ke/FMaLN9SzVLdLiY0OTmwbhOkNBstnLdMinZ2VX/ZlDZCrvq8PebmnJZ591vQNrN00at4rR/s9glffs7HCJTOtuUs6G2v/vIejhoNtjZq98V0S5GtAIoo/JNkIItqJxd/zmB0nA6Y/72yrME5Vh7LAGTKMLRpUuELzQ6dYLf1cKjM0gWXIY5Pc18oR/XVrwUi6kBRQkgWc/bBc02l/2cw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7faefb86-6feb-4a20-2041-08de8002d923
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2026 06:44:45.3789 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: COfcO/UXvt2P9LzxokkJ78tUsFNKztHwbZUmjUD1k4DJ0ANa31KFCrYOOrfiD4DtBu6W7GlF4/5mxCRlIpsJwau/x6TJtjH4D/ttpGf8ZGQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5895
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 0CAB126E042
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVGh1LCAyMDI2LTAzLTEyIGF0IDEwOjMwICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOg0K
PiBVbnVzZWQgYmFuZHdpZHRoIGNhbiBiZSB1c2VkIGJ5IGV4dGVybmFsIGRpc3BsYXkgYWdlbnRz
IGZvciBQYW5lbA0KPiBSZXBsYXkNCj4gZW5hYmxlZCBEUCBwYW5lbCBkdXJpbmcgaWRsZW5lc3Mg
d2l0aCBsaW5rIG9uLiBFbmFibGUgc291cmNlIHRvDQo+IHJlcGxhY2UNCj4gZHVtbXkgZGF0YSBm
cm9tIHRoZSBkaXNwbGF5IHdpdGggZGF0YSBmcm9tIGFub3RoZXIgYWdlbnQgYnkNCj4gcHJvZ3Jh
bW1pbmcNCj4gVFJBTlNfRFAyX0NUTCBbUGFuZWwgUmVwbGF5IFR1bm5lbGluZyBFbmFibGVdLg0K
PiANCj4gdjI6DQo+IC0gRW5hYmxlIHByIGJ3IG9wdGltaXphdGlvbiBhbG9uZyB3aXRoIHBhbmVs
IHJlcGxheSBlbmFibGUuIFtKYW5pXQ0KPiANCj4gdjM6DQo+IC0gV3JpdGUgVFJBTlNfRFAyX0NU
TCBvbmNlIGZvciBib3RoIGJ3IG9wdGltaXphdGlvbiBhbmQgcGFuZWwgcmVwbGF5DQo+IGVuYWJs
ZS4gW0phbmldDQo+IA0KPiB2NDoNCj4gLSBSZWFkIERQQ0Qgb25jZSBpbiBpbml0KCkgYW5kIHN0
b3JlIGluIHBhbmVsX3JlcGxheV9jYXBzLiBbSm91bmldDQo+IA0KPiB2NToNCj4gLSBBdm9pZCBy
ZWFkaW5nIERQQ0QgZm9yIGVkcC4gW0pvdW5pXQ0KPiAtIFVzZSBkcm1fZHBfZHBjZF9yZWFkX2J5
dGUoKSBhbmQgc29tZSBjb3NtZXRpYyBjaGFuZ2VzLiBbSmFuaV0NCj4gDQo+IHY2Og0KPiAtIEV4
dGVuZCB0aGUgY29ycmVzcG9uZGluZyBpbnRlcmZhY2UgZGVmaW5lZCBpbiBkcm1fZHBfdHVubmVs
LmMNCj4gdG8gcXVlcnkgdGhlIFBhbmVsIFJlcGxheSBvcHRpbWl6YXRpb24gY2FwYWJpbGl0eS4g
W0ltcmVdDQo+IA0KPiBCc3BlYzogNjg5MjANCj4gUmV2aWV3ZWQtYnk6IEFydW4gUiBNdXJ0aHkg
PGFydW4uci5tdXJ0aHlAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBBbmltZXNoIE1hbm5h
IDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCj4gLS0tDQo+IMKgLi4uL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfcmVncy5oIHzCoCAxICsNCj4gwqBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jwqDCoMKgwqDCoCB8IDI0DQo+ICsrKysrKysrKysrKysr
KysrLS0NCj4gwqAyIGZpbGVzIGNoYW5nZWQsIDIzIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25z
KC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5X3JlZ3MuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV9yZWdzLmgNCj4gaW5kZXggNDc0NmU5ZWJkOTIwLi5kYWRhOGRjMjdlYTQgMTAwNjQ0
DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9yZWdz
LmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Jl
Z3MuaA0KPiBAQCAtMjI2Myw2ICsyMjYzLDcgQEANCj4gwqAjZGVmaW5lIFRSQU5TX0RQMl9DVEwo
dHJhbnMpCQkJX01NSU9fVFJBTlModHJhbnMsDQo+IF9UUkFOU19EUDJfQ1RMX0EsIF9UUkFOU19E
UDJfQ1RMX0IpDQo+IMKgI2RlZmluZcKgIFRSQU5TX0RQMl8xMjhCMTMyQl9DSEFOTkVMX0NPRElO
RwlSRUdfQklUKDMxKQ0KPiDCoCNkZWZpbmXCoCBUUkFOU19EUDJfUEFORUxfUkVQTEFZX0VOQUJM
RQkJUkVHX0JJVCgzMCkNCj4gKyNkZWZpbmXCoCBUUkFOU19EUDJfUFJfVFVOTkVMSU5HX0VOQUJM
RQkJUkVHX0JJVCgyNikNCj4gwqAjZGVmaW5lwqAgVFJBTlNfRFAyX0RFQlVHX0VOQUJMRQkJCVJF
R19CSVQoMjMpDQo+IMKgDQo+IMKgI2RlZmluZSBfVFJBTlNfRFAyX1ZGUkVRSElHSF9BCQkJMHg2
MDBhNA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5k
ZXggNTA0MWE1YTEzOGQxLi42MzI1MjdlZGUyOWYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBAQCAtNDQsNiArNDQsNyBAQA0KPiDCoCNpbmNsdWRl
ICJpbnRlbF9kbWMuaCINCj4gwqAjaW5jbHVkZSAiaW50ZWxfZHAuaCINCj4gwqAjaW5jbHVkZSAi
aW50ZWxfZHBfYXV4LmgiDQo+ICsjaW5jbHVkZSAiaW50ZWxfZHBfdHVubmVsLmgiDQo+IMKgI2lu
Y2x1ZGUgImludGVsX2RzYi5oIg0KPiDCoCNpbmNsdWRlICJpbnRlbF9mcm9udGJ1ZmZlci5oIg0K
PiDCoCNpbmNsdWRlICJpbnRlbF9oZG1pLmgiDQo+IEBAIC0xMDIzLDExICsxMDI0LDI4IEBAIHN0
YXRpYyB1OCBmcmFtZXNfYmVmb3JlX3N1X2VudHJ5KHN0cnVjdA0KPiBpbnRlbF9kcCAqaW50ZWxf
ZHApDQo+IMKgCXJldHVybiBmcmFtZXNfYmVmb3JlX3N1X2VudHJ5Ow0KPiDCoH0NCj4gwqANCj4g
K3N0YXRpYyBib29sIGludGVsX3Bzcl9hbGxvd19wcl9id19vcHRpbWl6YXRpb24oc3RydWN0IGlu
dGVsX2RwDQo+ICppbnRlbF9kcCkNCj4gK3sNCj4gKwlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlz
cGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoaW50ZWxfZHApOw0KPiArDQo+ICsJaWYgKERJU1BMQVlf
VkVSKGRpc3BsYXkpIDwgMzUpDQo+ICsJCXJldHVybiBmYWxzZTsNCg0KVGhpcyBpcyBub3QgbmVj
ZXNzYXJ5IGlmIHlvdSBjaGVjayBpdCBhbHJlYWR5IGF0IGNvbXB1dGUgY29uZmlnLg0KDQo+ICsN
Cj4gKwlpZiAoIWludGVsX2RwX3R1bm5lbF9id19hbGxvY19pc19lbmFibGVkKGludGVsX2RwKSkN
Cj4gKwkJcmV0dXJuIGZhbHNlOw0KPiArDQo+ICsJaWYgKCFpbnRlbF9kcF90dW5uZWxfcHJfb3B0
aW1pemF0aW9uX3N1cHBvcnRlZChpbnRlbF9kcCkpDQo+ICsJCXJldHVybiBmYWxzZTsNCg0KWW91
IHNob3VsZCBtb3ZlIHRoaXMgcGF0Y2ggYWZ0ZXIgcGF0Y2ggMy4gVGhlbiB5b3UgY2FuIGRyb3Ag
dGhpcyBjaGVjay4NCg0KPiArDQo+ICsJcmV0dXJuIHRydWU7DQo+ICt9DQo+ICsNCj4gwqBzdGF0
aWMgdm9pZCBkZzJfYWN0aXZhdGVfcGFuZWxfcmVwbGF5KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxf
ZHApDQo+IMKgew0KPiDCoAlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVs
X2Rpc3BsYXkoaW50ZWxfZHApOw0KPiDCoAlzdHJ1Y3QgaW50ZWxfcHNyICpwc3IgPSAmaW50ZWxf
ZHAtPnBzcjsNCj4gwqAJZW51bSB0cmFuc2NvZGVyIGNwdV90cmFuc2NvZGVyID0gaW50ZWxfZHAt
PnBzci50cmFuc2NvZGVyOw0KPiArCXUzMiBkcDJfY3RsX3ZhbCA9IFRSQU5TX0RQMl9QQU5FTF9S
RVBMQVlfRU5BQkxFOw0KPiDCoA0KPiDCoAlpZiAoaW50ZWxfZHBfaXNfZWRwKGludGVsX2RwKSAm
JiBwc3ItPnNlbF91cGRhdGVfZW5hYmxlZCkgew0KPiDCoAkJdTMyIHZhbCA9IHBzci0+c3VfcmVn
aW9uX2V0X2VuYWJsZWQgPw0KPiBAQCAtMTA0MCwxMiArMTA1OCwxNCBAQCBzdGF0aWMgdm9pZCBk
ZzJfYWN0aXZhdGVfcGFuZWxfcmVwbGF5KHN0cnVjdA0KPiBpbnRlbF9kcCAqaW50ZWxfZHApDQo+
IMKgCQkJwqDCoMKgwqDCoMKgIHZhbCk7DQo+IMKgCX0NCj4gwqANCj4gKwlpZiAoIWludGVsX2Rw
X2lzX2VkcChpbnRlbF9kcCkgJiYNCj4gaW50ZWxfcHNyX2FsbG93X3ByX2J3X29wdGltaXphdGlv
bihpbnRlbF9kcCkpDQo+ICsJCWRwMl9jdGxfdmFsIHw9IFRSQU5TX0RQMl9QUl9UVU5ORUxJTkdf
RU5BQkxFOw0KDQpJZiB5b3UgZG8gbW9kaWZpY2F0aW9uIEkgY29tbWVudGVkIGFib3ZlIHlvdSBj
b3VsZCBqdXN0IGNoZWNrDQppbnRlbF9kcF90dW5uZWxfYndfYWxsb2NfaXNfZW5hYmxlZCBoZXJl
LiBObyBuZWVkIHRvIGFkZA0KaW50ZWxfcHNyX2FsbG93X3ByX2J3X29wdGltaXphdGlvbiBoZWxw
ZXIuDQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXINCg0KPiDCoAkJwqDCoMKgwqAgUFNSMl9NQU5f
VFJLX0NUTChkaXNwbGF5LCBpbnRlbF9kcC0NCj4gPnBzci50cmFuc2NvZGVyKSwNCj4gwqAJCcKg
wqDCoMKgIDAsDQo+IEFETFBfUFNSMl9NQU5fVFJLX0NUTF9TRl9DT05USU5VT1NfRlVMTF9GUkFN
RSk7DQo+IMKgDQo+IC0JaW50ZWxfZGVfcm13KGRpc3BsYXksIFRSQU5TX0RQMl9DVEwoaW50ZWxf
ZHAtDQo+ID5wc3IudHJhbnNjb2RlciksIDAsDQo+IC0JCcKgwqDCoMKgIFRSQU5TX0RQMl9QQU5F
TF9SRVBMQVlfRU5BQkxFKTsNCj4gKwlpbnRlbF9kZV9ybXcoZGlzcGxheSwgVFJBTlNfRFAyX0NU
TChpbnRlbF9kcC0NCj4gPnBzci50cmFuc2NvZGVyKSwgMCwgZHAyX2N0bF92YWwpOw0KPiDCoH0N
Cj4gwqANCj4gwqBzdGF0aWMgdm9pZCBoc3dfYWN0aXZhdGVfcHNyMihzdHJ1Y3QgaW50ZWxfZHAg
KmludGVsX2RwKQ0KDQo=
