Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C4E59B2B13
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 10:12:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73D3C10E43B;
	Mon, 28 Oct 2024 09:12:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n7qcan45";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D7F610E43A;
 Mon, 28 Oct 2024 09:12:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730106725; x=1761642725;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=B2i2kHkn6aRXmxGzrafoDD8ExLymLncz/OUbToeCgLo=;
 b=n7qcan45VB7Tt3ebJv+dCneijtczZpKXY4HndhfF0r3suwQqSFPDZYiv
 v5k9r3eJCuJFrCi128Hy1wyJSahz8yUEW/HtjEQTph7ZIHMryTytPuqMO
 8QCNJtX7pghSMuPWIqRpgou2bY1LruDTkYPTTBxHcwWleXGm5cpZIyTa/
 UiX1kJnXkV4vo/gHjFrrBdudu2rxE45FQKRJ6WN6F6G+eFf51ktfURVYM
 vAwoiG5Wd9WSlrvuuQrWMGXtESEsdo65ocQArGOobg++N9p33i+ezR7AB
 NcYOxp5nHfFAm+P9jT9zikWt5mXgDhdVV7igMsqn/v2JtslnI8lH0TAtq A==;
X-CSE-ConnectionGUID: rE+cFXm8QO2JYCqjsarevg==
X-CSE-MsgGUID: FLMD/Su2S4iXZ8yyU53y0w==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="40232643"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="40232643"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 02:12:04 -0700
X-CSE-ConnectionGUID: 5LmKISm0Rka28mEl1FbGnQ==
X-CSE-MsgGUID: n8jbfNRLThmsTfHpRCN1QA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,238,1725346800"; d="scan'208";a="81463689"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Oct 2024 02:12:02 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 28 Oct 2024 02:12:03 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 28 Oct 2024 02:12:03 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.175)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 28 Oct 2024 02:12:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WW40bLiIGyDejA/IzhuokCvmlhoS+T7iGxjDllUo90WbYej13gwIr1EQBzR98YMQmVyXfDhAr6Sgr78/hwGPbrlndxvEqBTDjR93KE7AfEDHl7zlE/k19cX7IDqhca98yh69TIctSRCQdWZfscKWRAOlQfT1Ih3CuqruHLTBFBQvEEiXhbUan8KGdqzUZB21WQnvXrVXsNR8eq/lW5zJAW/jEhDv8EgkDDd1RjSvWuwfWKqZYx3VHh+Op4SM4Tg2rAqsDC8+s++4sPvlEwKeF1xOcXMKUFlPf9cVOH4pbcVLTMQT8PFSfnkth8dO8J55HPykTGFmQMMzDjw5ZCJ9NQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B2i2kHkn6aRXmxGzrafoDD8ExLymLncz/OUbToeCgLo=;
 b=hUggzX0nh4bXMpfExgn3TUKQsNd7yKLFVQd5yKkHFFVO2Xbuv9NRCXGI2uMdF+yyCz7ICvbaCaQOZNTO/PeFb/5RCVbqfMO9NpwKlifSPP7tto6mwnxp6exsgdCKmf634xhEYgqnNMqXX0MtEDYc+PKnsq/Bc5L0Oja9r/0m6Bns+Oci6vuR+mU27VbGjSn5m5PSDzHDQczP4PS2N+WY8GgPfTefpv1zDjkwDEMYYuc5X5tdICQVJVM4Gr6MN8YO34nXQ0KGJx/FjivnLj6FFIz9JX//g2Bb8jXjta1ELyzH6BjpZpg7eIHwKJL/bxmvNlhRftjQMIe8QTyZbqnklQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by LV3PR11MB8676.namprd11.prod.outlook.com (2603:10b6:408:20f::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.23; Mon, 28 Oct
 2024 09:11:59 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%5]) with mapi id 15.20.8093.018; Mon, 28 Oct 2024
 09:11:59 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>, "Atwood, Matthew S"
 <matthew.s.atwood@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Atwood, Matthew S" <matthew.s.atwood@intel.com>, "Taylor, Clinton A"
 <clinton.a.taylor@intel.com>
Subject: RE: [PATCH 12/12] drm/i915/xe3lpd: Power request asserting/deasserting
Thread-Topic: [PATCH 12/12] drm/i915/xe3lpd: Power request
 asserting/deasserting
Thread-Index: AQHbIZ9QYzX+Xss3cEWQ5FilpBiyxLKU1CSAgAcYBMA=
Date: Mon, 28 Oct 2024 09:11:59 +0000
Message-ID: <MW4PR11MB70548D81C1A8AB2F33F4CF7DEF4A2@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20241018204941.73473-1-matthew.s.atwood@intel.com>
 <20241018204941.73473-13-matthew.s.atwood@intel.com>
 <172971598550.4179.5229191852079806030@gjsousa-mobl2>
In-Reply-To: <172971598550.4179.5229191852079806030@gjsousa-mobl2>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|LV3PR11MB8676:EE_
x-ms-office365-filtering-correlation-id: f21d155f-aca7-4d54-9a6d-08dcf7309419
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?NStCbWI3SENCMWxkRlZZb25TdTJteDV6Uk9senZrbnpPV0pSKzlQMEVFL2RS?=
 =?utf-8?B?YmJIa25mRGViUGhuK2RTMTRieFQvQ3BRUHZMNTVWeUdQYks5MUVrcWUwT00z?=
 =?utf-8?B?VVVvd1pUbm5TZi9kVFBuTkFFczAzMTRjek1ETHhkMjZ1UHluZjNsTHdBSXVJ?=
 =?utf-8?B?UXhTelc4QWpUa0lpZlJHb1ZQMFQ5Sjk3c2V0TjdhUHRtc0I4U2x6dVVIWDho?=
 =?utf-8?B?eGEyS21CMGUzR0t2YVZPUlpGaExyNk4rMFJFamJCOWNqTUVaWjFkR0p4Q3RF?=
 =?utf-8?B?cjRBREFEak00VDVDTjdtQ0Znd0VGbTZwUS9MWHRiQ3lxRFhZZXArTHd2T1Zp?=
 =?utf-8?B?bWYxWitMN3psVEs2U2F3Z2N2aHNwa3JWbDlwamhoYjdtYklCMVhpU3VSbUtL?=
 =?utf-8?B?WDl1NDVBSHNyMDJhQ1V3cllReThkM2IxVldXZ2lJdHNtaXhnTFRUbUsrVFFM?=
 =?utf-8?B?d1IrMFd4MWtsRDVyS0xPQ01CVUdhd1E4Z0dXRUl4VDBuei9FeTl4ZFNzcW9X?=
 =?utf-8?B?ZUtJUThsekVRZVlsdy9uaVlpRmpaNHFXekNLNjVMSDVFWTFCaElDU0luT1hw?=
 =?utf-8?B?SVRhUWwxVkJNR2pBeERJRXVjQXJxcXBFR0NWeDdTZjQ1NFBBbmhrRFNqd1pB?=
 =?utf-8?B?Skp2Skg2Zmx0a3R5eFFtNFFTVzJkZUdlWkZEL2YxUjBTSEg1a253VlJHNGh5?=
 =?utf-8?B?ai9NL1k5dFByZEFkdnhXVE1NQTZ0d0tUUzNpUlRNQmJTdjlJSkN3bjcvdlVt?=
 =?utf-8?B?YTdGRjlzNTA3ZCswQmhHOXRZMFZKNFRuOG8rMXJjY3VQM3hTWFhFMlJPdTVT?=
 =?utf-8?B?RFM0em5SWndRUGRqL1ZoWXQwZ21CL3dWSkpSTlhJd3lGT0Irb09zT0FlOVlZ?=
 =?utf-8?B?YVZpb012Umd0SUxDWDRhUWI1djQyb0pNZDJhUE13bmJMTkVCUGhhNWJJUWVy?=
 =?utf-8?B?eXNwYWZSeGZBaEJYalc1ZWp6L1V5UEJyYzV5Ry9YLzh6RTBCRzFPODV3RVNO?=
 =?utf-8?B?Q09wOVVHZEt5K2VMdFNUa2NjZW9jUWRudDZ6UzFZT2ZGSTd6MFRhREowbHRk?=
 =?utf-8?B?VFlLTm9kN0ZSR2FINE00cHZnaXNVMzJJaFEvMk1NamZXNGFXNFlNdUNWNG1Y?=
 =?utf-8?B?K3BWaUJidGlDWkdMZHZ6WkhkeC9KL1V3WUtBdHduMmcyWDVxOWsvMGVwSXJz?=
 =?utf-8?B?ODZpZmhXWWtsU0RzWEF0dldXcTErQnpuYWRabVRnRzYvQWYzMXczOWp0NytQ?=
 =?utf-8?B?NS9wdGN6Ym1jSjUxY21vN2VRK3pPdlNURkxIMFNITG5EbGowZEJrdzN0MEo0?=
 =?utf-8?B?T2M0VFk2N2NjMWVmU2l4Z1Z5NDZwWnZTd29ETGRmMjBKOUtFM0M3Q3J5STJs?=
 =?utf-8?B?R2FYZnhvNVhJcVhLajdoVlM5S2ZsM0x3dlhDdHphMk1SanovUDdGakpGRmY4?=
 =?utf-8?B?ZVJwZGVBN3dTdm1GdmVIWERRR3luWUt2dkltTTM4RzNROENQOFFLODA1VGFQ?=
 =?utf-8?B?WkVpdzlFT09WdVFJU1V5OC9GNTgzckhmTnRjcERQLzhQR0FIV2ZsL3lsTVpz?=
 =?utf-8?B?aFA5bGRUVnk4SExwdys3eC9WNEt0WlZZYUtwS2xja0pwNHdWZndPbEFtdDF3?=
 =?utf-8?B?Nlo4MHBYK0xSYjViVTRIWEs5ZE5mbWN6NThUeWcrOVZYTE0rRFpVT3VKRDlX?=
 =?utf-8?B?NmJobDl6aG1PdzFKYmZnMXRsL2dtbjdLMTBKdTNYMHN1cXpVL1REWHFPWEhH?=
 =?utf-8?B?OW91V3A0aUwvdWdpWEM2ZGpaK1czOTBoaFdLd1Zwek82QnY1SEMwQStYam0y?=
 =?utf-8?Q?Fn6CnN0BlLU5nruJAu4xUeRbZzs7FK82XIqHg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WEx1YTVzb040bkRZUmREUHdUSEovbjd1OU9TUy9OazBIbGJQNkg0MFdFUEVq?=
 =?utf-8?B?WW1EbGRXa3lwYkpkSldod2tLcWk1NlExczR2YVJKdFBBM2haU0huQmZRVFk0?=
 =?utf-8?B?NmNIV1IvV01OYUNBM1hhaDlwRGFvYzh0K0UvTzBRS2VkdTZrZFFUb2dzN2xx?=
 =?utf-8?B?VjBoa2pDZ0YyTUREOWFiVGp3bE02RjZZcXhCVUFLU3E2aEdpbVBVSXpCZStI?=
 =?utf-8?B?eWlnRmcweHNiY2x5czE0RGJJZlFrQjE1Zk4rUloydjNlQitGMkNtcDFXbUhR?=
 =?utf-8?B?cDdwRDl6a2VnVDVGNjF5SmIwRmxyMjJHVWgrS2ZBc25sWnY3Rjl1YWEzQWo0?=
 =?utf-8?B?cFZwQVk2a1gxOXlZMk9HMG9IMkxCZ3pxeEM5bzhIM2RNVjN1MFFCOWttZExz?=
 =?utf-8?B?V0pXUmhoM1F6OTI0dFFPc2p2ZFBlV2lINVdROW81RFVaVzExRmxhd0J6cVNp?=
 =?utf-8?B?d2NtSXdvZE1XSDQ3OE5pajk0ZUlHZ2Z3eStBUHoyWVNWT1hMOVE1NldIRHd3?=
 =?utf-8?B?OGwvRG9yOXpLc3NOajJoYk9BNFYzanBrbzlLbk5SR3hrNmhxb1JLVkdJam5H?=
 =?utf-8?B?UWF1Y2k1OWJTbWdaY0o1Y3JOWWVsTUx5ajhyS2NKZlU5Yy9aR0hqUXcvSERE?=
 =?utf-8?B?MDFoSE9KUGRoUUxjalNGdDJLQXNsWjZrVUlpZDFLS1YzTXZsN0dzVlg3S1Jt?=
 =?utf-8?B?Nk5Bb1Fub3Z6MlFZRGp4aDF1Rk9teVhlVEoyZXZiSWNJWW5DUmQyYkNTanR5?=
 =?utf-8?B?ZmFXOFNteG16bkJmOFRLUE91VnFGUWdNRVJVMm1Qc1Fpc2NHZGkwekw1b0xC?=
 =?utf-8?B?QlZSVU9DMGcwc2NDRFJPSE53MVNlN3BSVDgwdXlWSVc4cW1wMUEyQmxaZHBJ?=
 =?utf-8?B?dkxWOGhtVmJWbkFSNlFiQ0hSczRmdlNnN3Z0bHRSRkg4Uzg4bU5nS0tyS0Er?=
 =?utf-8?B?dW1IVlRJeTBCcDdKMXgraXJrcmg2ckRmc05iaVRVTXdScUFmelYxSVZYdVhC?=
 =?utf-8?B?NWJPS0NXclJzaXp4QjhTazNzd0ZTV040MkhFOTFXblFrY1g5OC80RWp3Z21H?=
 =?utf-8?B?WCtTSjJidUVzTjh5Znd3MHQ3emVSNEo3bU9DdDlIT0pCZ1FYZVh1UkdXazVr?=
 =?utf-8?B?bk50WDFWdEtYOTZDbDU1WmtGVjdJd3diTHhEZjl4S0d2UEJMQUxIZlhZV3pX?=
 =?utf-8?B?ZHFTSmtLSVB2YWNqV1U5V3JialBwQkhDdjZZZzFyekFmeDlYa2FYekVmQ2lW?=
 =?utf-8?B?Tk9PaHI5cjZwdTBuRDFrY3BtaHVwRmE0ZWxITjBhenZMZlhuMUF6ZGFhMTha?=
 =?utf-8?B?NXhBdkl2dDJyaFI4Ulo5Y1ovMUtXQmhibTJYUnBoR0FXbGgvSzRQTkxZcWdh?=
 =?utf-8?B?WGxWSHJBc0t3aE5ScWVnL0lyZ1lkQXJ4UENtODJrN0VsaldtL29aLytReUlY?=
 =?utf-8?B?SC8zY2NUVTAyQVI1dVNhbUR3QmpNY3YrUVlCeUpjZFhWY3ZCcktiaWdhTWhF?=
 =?utf-8?B?SGlXdGkxS3F2Q0ZJUDRjTFRKaTZDSHNleG1oUnNxMUM4bVE3NkkvOTB4Y2Fa?=
 =?utf-8?B?T0w4SUNaeXlYNHMyQkRQWjZNMTdLMkRkajZFa2wza0pXN09kUDVKMUd3c3ln?=
 =?utf-8?B?NmhMdFpseTE3eWEwMWNDZGRvMlpicElLaWxEQ04zbEs5M3Z3QmJBclJKano3?=
 =?utf-8?B?b25nOGdDbzZseDZqMG8rS2RMN0xUeTNtYXhYd00yNm53WXJuZ3RScllNbTNJ?=
 =?utf-8?B?ZC9jckYwMjkwK2V4bTBXN1lSbzJkb2YxWEhVUmw1S3ZjM2cvbDYwTHp4blhX?=
 =?utf-8?B?U2pUL0JPN0c5MWUrK25hT09ibWduTG9DaDVsZjJIU1NOL29zeG5zQ21GVHlD?=
 =?utf-8?B?ZFgvSUF2aUdnenEwbVNxeG0vTzB5d29SeEErK2dhMTJKODZoWllKdjdaY1Ju?=
 =?utf-8?B?cWtIdUMyYXhkWGdwUFhvT0JreW9nMW1DTy9hSWY3bHFqd01ya1Z3RDVpclhB?=
 =?utf-8?B?M2JISERpbC8wWkVCc1NFcTBkM056M3llZ2pRVzJYSU1aTGtVaGxKZDRwRWJV?=
 =?utf-8?B?NWUvS3ZHOVhOaUxGZVlXREtjeXJ5M1RLVDZjV0dibzQwSXlhT1NoOHkrVlZz?=
 =?utf-8?Q?vwr3e34IfE7hKuTqcze5XGWXb?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f21d155f-aca7-4d54-9a6d-08dcf7309419
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Oct 2024 09:11:59.4766 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +8vfCNl0OpwZGnGS0XQ+AcMrSUh/oRid7sLbnqIzNi+oCjZVP/mQCe+k7cahzIPlGtpqXBUrG3cwtyQ/vAflLA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8676
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBTb3VzYSwgR3VzdGF2byA8Z3Vz
dGF2by5zb3VzYUBpbnRlbC5jb20+DQo+IFNlbnQ6IFdlZG5lc2RheSwgMjMgT2N0b2JlciAyMDI0
IDIzLjQwDQo+IFRvOiBBdHdvb2QsIE1hdHRoZXcgUyA8bWF0dGhldy5zLmF0d29vZEBpbnRlbC5j
b20+OyBpbnRlbC0NCj4gZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBLYWhvbGEsIE1pa2EgPG1pa2Eua2Fob2xhQGludGVsLmNv
bT47IEF0d29vZCwgTWF0dGhldyBTDQo+IDxtYXR0aGV3LnMuYXR3b29kQGludGVsLmNvbT47IFRh
eWxvciwgQ2xpbnRvbiBBIDxjbGludG9uLmEudGF5bG9yQGludGVsLmNvbT4NCj4gU3ViamVjdDog
UmU6IFtQQVRDSCAxMi8xMl0gZHJtL2k5MTUveGUzbHBkOiBQb3dlciByZXF1ZXN0DQo+IGFzc2Vy
dGluZy9kZWFzc2VydGluZw0KPiANCj4gUXVvdGluZyBNYXR0IEF0d29vZCAoMjAyNC0xMC0xOCAx
Nzo0OTo0MS0wMzowMCkNCj4gPkZyb206IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5j
b20+DQo+ID4NCj4gPlRoZXJlIGlzIGEgSFcgaXNzdWUgdGhhdCBhcmlzZXMgd2hlbiB0aGVyZSBh
cmUgcmFjZSBjb25kaXRpb25zIGJldHdlZW4NCj4gPlRDU1MgZW50ZXJpbmcvZXhpdGluZyBUQzcg
b3IgVEMxMCBzdGF0ZXMgd2hpbGUgdGhlIGRyaXZlciBpcw0KPiA+YXNzZXJ0aW5nL2RlYXNzZXJ0
aW5nIFRDU1MgcG93ZXIgcmVxdWVzdC4gQXMgYSB3b3JrYXJvdW5kLCBEaXNwbGF5DQo+ID5kcml2
ZXIgd2lsbCBpbXBsZW1lbnQgYSBtYWlsYm94IHNlcXVlbmNlIHRvIGVuc3VyZSB0aGF0IHRoZSBU
Q1NTIGlzIGluDQo+ID5UQzAgd2hlbiBUQ1NTIHBvd2VyIHJlcXVlc3QgaXMgYXNzZXJ0ZWQvZGVh
c3NlcnRlZC4NCj4gPg0KPiA+VGhlIHNlcXVlbmNlIGlzIHRoZSBmb2xsb3dpbmcNCj4gPg0KPiA+
MS4gUmVhZCBtYWlsYm94IGNvbW1hbmQgc3RhdHVzIGFuZCB3YWl0IHVudGlsIHJ1bi9idXN5IGJp
dCBpcw0KPiA+ICAgY2xlYXINCj4gPjIuIFdyaXRlIG1haWxib3ggZGF0YSB2YWx1ZSAnMScgZm9y
IHBvd2VyIHJlcXVlc3QgYXNzZXJ0aW5nDQo+ID4gICBhbmQgJzAnIGZvciBwb3dlciByZXF1ZXN0
IGRlYXNzZXJ0aW5nIDMuIFdyaXRlIG1haWxib3ggY29tbWFuZA0KPiA+cnVuL2J1c3kgYml0IGFu
ZCBjb21tYW5kIHZhbHVlIHdpdGggMHgxIDQuIFJlYWQgbWFpbGJveCBjb21tYW5kIGFuZA0KPiA+
d2FpdCB1bnRpbCBydW4vYnVzeSBiaXQgaXMgY2xlYXINCj4gPiAgIGJlZm9yZSBjb250aW51aW5n
IHBvd2VyIHJlcXVlc3QuDQo+ID4NCj4gPlNpZ25lZC1vZmYtYnk6IE1pa2EgS2Fob2xhIDxtaWth
LmthaG9sYUBpbnRlbC5jb20+DQo+ID5TaWduZWQtb2ZmLWJ5OiBNYXR0IEF0d29vZCA8bWF0dGhl
dy5zLmF0d29vZEBpbnRlbC5jb20+DQo+ID4tLS0NCj4gPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3RjLmMgfCA0MCArKysrKysrKysrKysrKysrKysrKysrKysrDQo+ID4gZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgIHwgIDcgKysrKysNCj4gPiAyIGZp
bGVzIGNoYW5nZWQsIDQ3IGluc2VydGlvbnMoKykNCj4gPg0KPiA+ZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiA+Yi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3RjLmMNCj4gPmluZGV4IDZmMmVlN2RiYzQzYi4uN2Q5Zjg3ZGIz
ODFjIDEwMDY0NA0KPiA+LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90
Yy5jDQo+ID4rKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMNCj4g
PkBAIC0xMDEzLDYgKzEwMTMsMzkgQEAgeGVscGRwX3RjX3BoeV93YWl0X2Zvcl90Y3NzX3Bvd2Vy
KHN0cnVjdA0KPiBpbnRlbF90Y19wb3J0ICp0YywgYm9vbCBlbmFibGVkKQ0KPiA+ICAgICAgICAg
cmV0dXJuIHRydWU7DQo+ID4gfQ0KPiA+DQo+ID4rc3RhdGljIGJvb2wgeGVscGRwX3RjX3BoeV93
YWl0X2Zvcl90Y3NzX3JlYWR5KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlDQo+ID4rKmk5MTUsDQo+
IA0KPiBJIHRoaW5rIHhlbHBkcF8gaXMgbm90IHJpZ2h0IGhlcmUgYXMgdGhpcyBkb2VzIG5vdCBh
cHBseSB0byBYZV9MUEQrLiBJIHRoaW5rIHdlDQo+IGNvdWxkIHNpbXBseSB1c2UgdGhlIHdvcmth
cm91bmQgbGluZWFnZSBudW1iZXIgZm9yIHRoZSBuYW1lIG9mIHRoaXMgZnVuY3Rpb24uDQo+IFNv
bWV0aGluZyBsaWtlIHdhXzE0MDIwOTA4NTkwKCkuDQoNCkkgY291bGRuJ3QgZmluZCBhbnkgd29y
a2Fyb3VuZHMgd2l0aCB0aGlzIDE0MDIwOTA4NTkwIG51bWJlci4gTWF5YmUgd2UgY291bGQgcmVu
YW1lIHRoZSBmdW5jdGlvbiB3YV90Y3NzX3Bvd2VyX2Fzc2VydCgpPw0KDQo+IA0KPiA+KyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBib29sIGVuYWJsZSkgew0K
PiA+KyAgICAgICAgaWYgKERJU1BMQVlfVkVSKGk5MTUpIDwgMzApDQo+IA0KPiBUaGUgZGVzY3Jp
cHRpb24gb2YgdGhlIGludGVybmFsIHRpY2tldCB0aGF0IHJlc3VsdGVkIGluIHRoaXMgd29ya2Fy
b3VuZCBtYWtlcyBtZQ0KPiB3b25kZXIgaWYgdGhpcyBpcyBhY3R1YWxseSBhbiBpc3N1ZSBhc3Nv
Y2lhdGVkIHRvIHRoZSBTb0MgaW5zdGVhZCBvZiBkaXNwbGF5IG9yIFBJQ0ENCj4gSVAuIEhvd2V2
ZXIgdGhlIHRpY2tldCBtZXRhZGF0YSBpbmRpY2F0ZXMgdGhlIFBJQ0EgSVAgYXMgdGhlIG9uZSBh
ZmZlY3RlZC4gSXQNCj4gd291bGQgYmUgZ29vZCB0byBjb25maXJtIHRoZSBjb3JyZWN0IGFzc29j
aWF0aW9uIGhlcmUuDQo+IA0KPiBJbiBhbnkgY2FzZSwgdGhpcyBzZWVtcyBub3QgcmVhbGx5IHJl
bGF0ZWQgdG8gdGhlIGRpc3BsYXkgSVAsIHNvIGNoZWNraW5nDQo+IERJU1BMQVlfVkVSKGk5MTUp
IHNlZW1zIG5vdCB2ZXJ5IHByZWNpc2UgaGVyZS4NCj4gDQo+IElmIGl0IHR1cm5zIG91dCB0aGF0
IHRoaXMgaXMgYSBTb0MtcmVsYXRlZCBpc3N1ZSwgaXQgd291bGQgYmUgYmV0dGVyIHRvIGNoZWNr
IGlmIHRoZQ0KPiBwbGF0Zm9ybSBpcyBQVEwuDQo+IA0KPiBOb3csIGlmIHRoaXMgaXMgaW5kZWVk
IGFuIGlzc3VlIGFzc29jaWF0ZWQgdG8gdGhlIFBJQ0EgSVAsIHRoZW4gSSBzZWUgdGhlIGZvbGxv
d2luZw0KPiBhbHRlcm5hdGl2ZXM6DQo+IA0KPiAgLSBhZGQgYW4gZWFybGllciBwYXRjaCB0byBk
ZXRlY3QgdGhlIFBJQ0EgSVAgYW5kIGFkZCB0aGF0IGluZm8gdG8NCj4gICAgaW50ZWxfZGlzcGxh
eV9ydW50aW1lX2luZm8uIFRoZW4sIGhlcmUgd2UgdXNlIHRoYXQgaW5mbyBpbiB0aGUNCj4gICAg
Y29uZGl0aW9uIGZvciB0aGlzIHdvcmthcm91bmQ7DQo+IA0KPiAgLSBhdCBsZWFzdCBhZGQgYSBj
b21tZW50IGhlcmUgdGhhdCB3ZSBhcmUgY2hlY2tpbmcgdGhlIGRpc3BsYXkgdmVyc2lvbg0KPiAg
ICBiZWNhdXNlIHdlIGRvIG5vdCBoYXZlIFBJQ0EgSVAgZGV0ZWN0aW9uIGluIHRoZSBkcml2ZXIg
eWV0LiBJbiB0aGlzDQo+ICAgIGNhc2UuDQo+IA0KPiBJIHRlbmQgdG8gdGhpbmsgdGhhdCBjaGVj
a2luZyB2ZXJzaW9uIGVxdWFsaXR5IHdvdWxkIG1ha2UgbW9yZSBzZW5zZSAoYXNzdW1pbmcNCj4g
dGhlIGlzc3VlIHdvdWxkIG5vdCBiZSBzZWVuIGluIGEgZnV0dXJlIHBsYXRmb3JtKS4NCg0KSSdt
IGFzc3VtaW5nIHRoaXMgaXMgbW9yZSByZWxhdGVkIHRvIFBJQ0EgSVAgdGhhbiBwbGF0Zm9ybSBi
dXQgSSBjYW5ub3QgY29uZmlybSB0aGF0IHlldC4gSW4gdGhlIG1lYW50aW1lLCBJIGNvdWxkIGFk
ZCBhIGNvbW1lbnQgYW5kIGNoZWNrIGRpc3BsYXkgdmVyc2lvbiBvbmx5IGZvciB0aGUgUFRMIHBs
YXRmb3JtLg0KDQo+IA0KPiA+KyAgICAgICAgICAgICAgICByZXR1cm4gdHJ1ZTsNCj4gPisNCj4g
PisgICAgICAgIC8qIGNoZWNrIGlmIG1haWxib3ggaXMgcnVubmluZyBidXN5ICovDQo+ID4rICAg
ICAgICBpZiAoaW50ZWxfZGVfd2FpdF9mb3JfY2xlYXIoaTkxNSwgVENTU19ESVNQX01BSUxCT1hf
SU5fQ01ELA0KPiA+KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFRDU1NfRElT
UF9NQUlMQk9YX0lOX0NNRF9SVU5fQlVTWSwgMTApKSB7DQo+ID4rICAgICAgICAgICAgICAgIGRy
bV9kYmdfa21zKCZpOTE1LT5kcm0sDQo+ID4rICAgICAgICAgICAgICAgICAgICAgICAgICAgICJ0
aW1lb3V0IHdhaXRpbmcgZm9yIFRDU1MgbWFpbGJveCBydW4vYnVzeSBiaXQgdG8gY2xlYXJcbiIp
Ow0KPiA+KyAgICAgICAgICAgICAgICByZXR1cm4gZmFsc2U7DQo+ID4rICAgICAgICB9DQo+ID4r
DQo+ID4rICAgICAgICBpZiAoZW5hYmxlKQ0KPiA+KyAgICAgICAgICAgICAgICBpbnRlbF9kZV93
cml0ZShpOTE1LCBUQ1NTX0RJU1BfTUFJTEJPWF9JTl9EQVRBLCAxKTsNCj4gPisgICAgICAgIGVs
c2UNCj4gPisgICAgICAgICAgICAgICAgaW50ZWxfZGVfd3JpdGUoaTkxNSwgVENTU19ESVNQX01B
SUxCT1hfSU5fREFUQSwgMCk7DQo+ID4rDQo+ID4rICAgICAgICBpbnRlbF9kZV93cml0ZShpOTE1
LCBUQ1NTX0RJU1BfTUFJTEJPWF9JTl9DTUQsDQo+ID4rICAgICAgICAgICAgICAgICAgICAgICBU
Q1NTX0RJU1BfTUFJTEJPWF9JTl9DTURfREFUQSgxKSk7DQo+IA0KPiBOaXRwaWNrOiBJIHdvdWxk
IHByZWZlciBhIG1vcmUgZXhwbGljaXQgdmVyc2lvbiBvZiB0aGlzLiBTb21ldGhpbmcgbGlrZToN
Cj4gDQo+ICAgICBpbnRlbF9kZV93cml0ZShpOTE1LCBUQ1NTX0RJU1BfTUFJTEJPWF9JTl9DTUQs
DQo+ICAgICAgICAgICAgICAgICAgICBUQ1NTX0RJU1BfTUFJTEJPWF9JTl9DTURfUlVOX0JVU1kg
fA0KPiAgICAgICAgICAgICAgICAgICAgVENTU19ESVNQX01BSUxCT1hfSU5fQ01EX0NNRCgweDEp
KTsNCj4gDQo+IFdpdGggdGhlIGN1cnJlbnQgdmVyc2lvbiwgSSBoYWQgdG8gZ28gYW5kIGNoZWNr
IHRoYXQNCj4gVENTU19ESVNQX01BSUxCT1hfSU5fQ01EX0RBVEEoKSBhbHNvIGluY2x1ZGVzIHRo
ZSBydW4vYnVzeSBiaXQuDQo+IA0KPiA+Kw0KPiA+KyAgICAgICAgLyogd2FpdCB0byBjbGVhciBt
YWlsYm94IHJ1bm5pbmcgYnVzeSBiaXQgYmVmb3JlIGNvbnRpbnVpbmcgKi8NCj4gPisgICAgICAg
IGlmIChpbnRlbF9kZV93YWl0X2Zvcl9jbGVhcihpOTE1LCBUQ1NTX0RJU1BfTUFJTEJPWF9JTl9D
TUQsDQo+ID4rICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgVENTU19ESVNQX01B
SUxCT1hfSU5fQ01EX1JVTl9CVVNZLCAxMCkpIHsNCj4gPisgICAgICAgICAgICAgICAgZHJtX2Ri
Z19rbXMoJmk5MTUtPmRybSwNCj4gPisgICAgICAgICAgICAgICAgICAgICAgICAgICAgInRpbWVv
dXQgd2FpdGluZyBmb3IgVENTUyBtYWlsYm94IHJ1bi9idXN5DQo+ID4rIGJpdCB0byBjbGVhclxu
Iik7DQo+IA0KPiBJIHRoaW5rIHdvdWxkIGJlIGdvb2QgdG8gaGF2ZSBkaWZmZXJlbnQgdGltZW91
dCBtZXNzYWdlcyBzbyB0aGF0IGl0IGlzIGVhc3kgdG8NCj4gZGlmZmVyZW50aWF0ZSB3aGV0aGVy
IHdlIHRpbWVkIG91dCB3aGlsZSB3YWl0aW5nIGZvciBvdXIgdHVybiB0byB1c2UgdGhlIG1haWxi
b3gNCj4gb3Igd2hpbGUgd2FpdGluZyBmb3Igb3VyIGNvbW1hbmQgdG8gYmUgaGFuZGxlZC4NCg0K
SSdsbCByZXBocmFzZSB0aGUgd29yZGluZyBoZXJlLg0KDQo+IA0KPiA+KyAgICAgICAgICAgICAg
ICByZXR1cm4gZmFsc2U7DQo+ID4rICAgICAgICB9DQo+ID4rDQo+ID4rICAgICAgICByZXR1cm4g
dHJ1ZTsNCj4gPit9DQo+ID4rDQo+ID4gc3RhdGljIHZvaWQgX194ZWxwZHBfdGNfcGh5X2VuYWJs
ZV90Y3NzX3Bvd2VyKHN0cnVjdCBpbnRlbF90Y19wb3J0DQo+ID4qdGMsIGJvb2wgZW5hYmxlKSAg
ew0KPiA+ICAgICAgICAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0Y190b19pOTE1
KHRjKTsgQEAgLTEwMjIsNg0KPiA+KzEwNTUsMTMgQEAgc3RhdGljIHZvaWQgX194ZWxwZHBfdGNf
cGh5X2VuYWJsZV90Y3NzX3Bvd2VyKHN0cnVjdA0KPiA+aW50ZWxfdGNfcG9ydCAqdGMsIGJvb2wg
ZW5hDQo+ID4NCj4gPiAgICAgICAgIGFzc2VydF90Y19jb2xkX2Jsb2NrZWQodGMpOw0KPiA+DQo+
ID4rICAgICAgICAvKg0KPiA+KyAgICAgICAgICogR2Z4IGRyaXZlciB3b3JrYXJvdW5kIGZvciBQ
VEwgdGNzc19yeGRldGVjdF9jbGtzd2JfcmVxL2FjayBoYW5kc2hha2UNCj4gPisgICAgICAgICAq
IHZpb2xhdGlvbiB3aGVuIHB3d3JlcT0gMC0+MSBkdXJpbmcgVEM3LzEwIGVudHJ5DQo+ID4rICAg
ICAgICAgKi8NCj4gPisgICAgICAgIGRybV9XQVJOX09OKCZpOTE1LT5kcm0sDQo+ID4rICAgICAg
ICAgICAgICAgICAgICAheGVscGRwX3RjX3BoeV93YWl0X2Zvcl90Y3NzX3JlYWR5KGk5MTUsIGVu
YWJsZSkpOw0KPiA+Kw0KPiA+ICAgICAgICAgdmFsID0gaW50ZWxfZGVfcmVhZChpOTE1LCByZWcp
Ow0KPiA+ICAgICAgICAgaWYgKGVuYWJsZSkNCj4gPiAgICAgICAgICAgICAgICAgdmFsIHw9IFhF
TFBEUF9UQ1NTX1BPV0VSX1JFUVVFU1Q7IGRpZmYgLS1naXQNCj4gPmEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gPmlu
ZGV4IDI3NDNhMmRkMGEzZC4uZDI3NzVhMzJiZjE4IDEwMDY0NA0KPiA+LS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiA+KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9yZWcuaA0KPiANCj4gTWF5YmUgaW50ZWxfY3gwX3BoeV9yZWdzLmggd291bGQgYmUgYSBiZXR0
ZXIgaG9tZSBmb3IgdGhlIG1haWxib3ggcmVnaXN0ZXJzLA0KPiBzaW5jZSBpdCBpcyB3aGVyZSBY
RUxQRFBfUE9SVF9CVUZfQ1RMMSBhbmQNCj4gWEVMUERQX1RDU1NfUE9XRVJfe1JFUVVFU1QsU1RB
VEV9IGFyZSBkZWZpbmVkPw0KPiANCj4gTm90IHRoZSBwZXJmZWN0IHBsYWNlLCBidXQgYXQgbGVh
c3Qgd2Ugd291bGQgbm90IGFkZCBuZXcgZGVmaW5pdGlvbnMgdG8NCj4gaTkxNV9yZWcuaCBhbmQg
YWRkIHRvIHRoZSB3b3JrIG9mIHNlcGFyYXRpbmcgZGlzcGxheSBjb2RlIGZyb20gaTkxNS4NCg0K
T2ssIEkgd2lsbCBtb3ZlIHRoZXNlIGRlZnMgdG8gaW50ZWxfY3gwX3BoeV9yZWdzLmgNCg0KPiAN
Cj4gPkBAIC00NTM5LDYgKzQ1MzksMTMgQEAgZW51bSBza2xfcG93ZXJfZ2F0ZSB7DQo+ID4gI2Rl
ZmluZSAgVENTU19ERElfU1RBVFVTX0hQRF9MSVZFX1NUQVRVU19UQlQgICAgICAgIFJFR19CSVQo
MSkNCj4gPiAjZGVmaW5lICBUQ1NTX0RESV9TVEFUVVNfSFBEX0xJVkVfU1RBVFVTX0FMVCAgICAg
ICAgUkVHX0JJVCgwKQ0KPiA+DQo+ID4rI2RlZmluZSBUQ1NTX0RJU1BfTUFJTEJPWF9JTl9DTUQg
ICAgICAgICAgICAgICAgX01NSU8oMHgxNjEzMDApDQo+ID4rI2RlZmluZSAgIFRDU1NfRElTUF9N
QUlMQk9YX0lOX0NNRF9SVU5fQlVTWSAgICAgICAgUkVHX0JJVCgzMSkNCj4gPisjZGVmaW5lICAg
VENTU19ESVNQX01BSUxCT1hfSU5fQ01EX0NNRF9NQVNLICAgICAgICBSRUdfR0VOTUFTSyg3LCAw
KQ0KPiA+KyNkZWZpbmUgICBUQ1NTX0RJU1BfTUFJTEJPWF9JTl9DTURfREFUQSh4KQ0KPiBUQ1NT
X0RJU1BfTUFJTEJPWF9JTl9DTURfUlVOX0JVU1kgfCBcDQo+ID4rDQo+ID4rUkVHX0ZJRUxEX1BS
RVAoVENTU19ESVNQX01BSUxCT1hfSU5fQ01EX0NNRF9NQVNLLCAoeCkpDQo+IA0KPiBNaXNzaW5n
IGEgYmxhbmsgbGluZSBoZXJlLg0KT2sNCg0KSSB3aWxsIG1ha2UgZmV3IGFkanVzdG1lbnRzIHRv
IHRoZSBwYXRjaC4gVGhhbmtzIGZvciB0aGUgY29tbWVudHMgYW5kIGEgcmV2aWV3IQ0KDQotTWlr
YS0NCg0KPiANCj4gLS0NCj4gR3VzdGF2byBTb3VzYQ0KPiANCj4gPisjZGVmaW5lIFRDU1NfRElT
UF9NQUlMQk9YX0lOX0RBVEEgICAgICAgICAgICAgICAgX01NSU8oMHgxNjEzMDQpDQo+ID4rDQo+
ID4gI2RlZmluZSBQUklNQVJZX1NQSV9UUklHR0VSICAgICAgICAgICAgICAgICAgICAgICAgX01N
SU8oMHgxMDIwNDApDQo+ID4gI2RlZmluZSBQUklNQVJZX1NQSV9BRERSRVNTICAgICAgICAgICAg
ICAgICAgICAgICAgX01NSU8oMHgxMDIwODApDQo+ID4gI2RlZmluZSBQUklNQVJZX1NQSV9SRUdJ
T05JRCAgICAgICAgICAgICAgICAgICAgICAgIF9NTUlPKDB4MTAyMDg0KQ0KPiA+LS0NCj4gPjIu
NDUuMA0KPiA+DQo=
