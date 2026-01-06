Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 637DBCF881F
	for <lists+intel-gfx@lfdr.de>; Tue, 06 Jan 2026 14:28:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C49910E0A3;
	Tue,  6 Jan 2026 13:28:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nugbCLBB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 116E910E0A3;
 Tue,  6 Jan 2026 13:28:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767706116; x=1799242116;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=h+0SjouBKRqEzbYiI9w6eCyGNsBQEtnmPLf17WuhA+Q=;
 b=nugbCLBBHZyDCfxvJilDDEuRff1tSjIlTSy9f/R+rlhE3Ucku5Z1rTSN
 B848+PnjsnRfbfuHVUV9rwq8W5KKObsYWxoGiVFM6p/nAA1n+UDrPgK9V
 1lbTummWhtmJw03zo/9xFcGmcY0BTo+0fJY9YAvXoRPdxJ1WbIFVx0EOx
 JnPZVnMb4LRvtH5tau6nz+y8sTEFjI+e3Luo7ijZwfqaog/qQ+1GbFZq8
 K4DzYSM8lakMwb0i7gHqcrM7UfokqYMgeEr0Z8F6UzmVY3f4dv4y0OLQI
 tnvauCAx9m0WSY1mSUmsnbR+kSpA9MN7IXnnr3OZ6JEVMvUBHUVi8IyrI A==;
X-CSE-ConnectionGUID: jSs6G4GMQRqJzuOwdeQFnQ==
X-CSE-MsgGUID: hatBdh5aRVqDl+CI9T5g7g==
X-IronPort-AV: E=McAfee;i="6800,10657,11663"; a="68974497"
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208,217";a="68974497"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2026 05:28:29 -0800
X-CSE-ConnectionGUID: x2HxecFcQkSlpXyLQkCpWw==
X-CSE-MsgGUID: dgc/9LK3SwK/8qvvP5AN7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; 
 d="scan'208,217";a="233351028"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2026 05:28:29 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 6 Jan 2026 05:28:27 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 6 Jan 2026 05:28:27 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.20)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 6 Jan 2026 05:28:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qpEfYydNX4P6gvqUaF8nVZ2bguoCC0AQEOi+sljOp4FQDjzvJbKn61eT+xxvYmOo79qM3r4NqPBOQQAgmSfGlGaL9r9+3NRf3IYz0X11EI6Xu/woghALIfG2PuO32tXnyMynkk98REU3HhZ+GvMKonVkWN/lN7UlSQRB6nfUGHmxnp6XJ3fkiBCGEopNH51Hz72/GjmDW04uv4MOauKg6hRA9w8Lz2fZcll4ZN40ip4vNhFv7bHQaaV0wV9OL7PBe0fcR/6z8wrFnei56ABuo9QfHtANnNkSDoo7yiwmWD3uNY1g4QSnfhEIyff6vv9nmELMDX6ONwYdQV3V3anIaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dtLxrHjwtIKU1PrRCZYREd5PSHgIMm90GnIuiET8cS8=;
 b=b/vp3Kl9kQ63qQ/7AvE0RiBDC2ge7uiujk8RjZ6HBfUJWdE1qCGOYxT0v1rU9SJHr5eWl96B49OyPgH0jbyFJds3qwBajfrYIiencJXQ9R7MvpRdkCUA/aRqx1J417ULf5h+rYKCPKbXfHqt+svGwWl//7S7k+t26sKxWcJLtJP1vZwAWQcfWrx38g1PE8k5HJX45hdPZlxQUSGqVXojv1YLPGjZi6o/c6QGREEEbqIZx+y0eSNKxfWHQPKWmWX+Hf99TlpInAAPfHDhAkJwoUZy+hseFeuj0ti8+X4bmtZAnTWPMD6jM/BIGCT8Nopc/hDwhpQoMUotpiVW3JnUwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA1PR11MB7175.namprd11.prod.outlook.com (2603:10b6:208:419::5)
 by PH7PR11MB7027.namprd11.prod.outlook.com (2603:10b6:510:20a::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.2; Tue, 6 Jan
 2026 13:28:25 +0000
Received: from IA1PR11MB7175.namprd11.prod.outlook.com
 ([fe80::cc3a:1f73:430f:472]) by IA1PR11MB7175.namprd11.prod.outlook.com
 ([fe80::cc3a:1f73:430f:472%5]) with mapi id 15.20.9478.004; Tue, 6 Jan 2026
 13:28:25 +0000
Content-Type: multipart/alternative;
 boundary="------------Iy6W7q0vUkLsgJBZacDAC0en"
Message-ID: <8246016e-3d68-47f1-96ba-02121cfffe80@intel.com>
Date: Tue, 6 Jan 2026 18:58:17 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 9/9] drm/i915/display: Add DC3CO disable handling for psr2
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <animesh.manna@intel.com>, <uma.shankar@intel.com>, <imre.deak@intel.com>, 
 <jouni.hogander@intel.com>
References: <20251209113332.2770263-1-dibin.moolakadan.subrahmanian@intel.com>
 <20251209113332.2770263-10-dibin.moolakadan.subrahmanian@intel.com>
 <fdefc5412bfc1c29e7a7a0e704f1dc86c9edabdd@intel.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <fdefc5412bfc1c29e7a7a0e704f1dc86c9edabdd@intel.com>
X-ClientProxiedBy: MA0PR01CA0110.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:11d::7) To IA1PR11MB7175.namprd11.prod.outlook.com
 (2603:10b6:208:419::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR11MB7175:EE_|PH7PR11MB7027:EE_
X-MS-Office365-Filtering-Correlation-Id: 070ee7a8-5f68-46a9-53da-08de4d27784f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|8096899003;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cUJLTGtqUkxtYzNBa1dHVnlwK0hBc3p0L3pCSlFmTHYvNEM0Q2VUWHVoWEsv?=
 =?utf-8?B?Q29LdlVZWFVJV01oeDRxNmg3TDc0YmtodHBJNEkxai9waXg4RFU0bzVaMHRV?=
 =?utf-8?B?OFJxZ2NEY01ZUjY1WVQ4VUtWai9hMUlZK0tRYm45eGUvQVlCSDdTN0prZGtK?=
 =?utf-8?B?aVNVb0xSMFI0cjdHV2xqb1ZtNHhZelpsZ1RnSUg1QVRJd3lRNVNzd0U0MVAr?=
 =?utf-8?B?blpaNklKcDZiRkpKc0JaNHU4b3VTRnFnaC82WUJ3REpmZnV3eDNVT1ovL1pJ?=
 =?utf-8?B?Ny94djcwNjN5TU9WTm42YXpiNUYzcG9wMXU5Q05Dcnl1YXhBTjVPeGpXWVF2?=
 =?utf-8?B?K3RYWnBKR1hYR0hqZ1cyK2VYK2huR20xZHFnM2cwRnNEVUtHRCtiUm9qZ0pK?=
 =?utf-8?B?L280V0swejVhQWlYNFBxRk55cVZGdzYwTWYzVjRPV1JXZUlBNTdtalRkMjdI?=
 =?utf-8?B?Y2ZSZk5qaDlwUEFqdTVDVkwxaEt4U3kwQnpHc0ZsRGNUVTY0STFuTEt2bFdo?=
 =?utf-8?B?TEsrTSt5UkdYbWk3WmgrbzlLTmE5N2FrQ3JkZzlSZGgyY0tuQ1BUWW9ITlJX?=
 =?utf-8?B?QU9RbWIzL29CWHVncFFTZlh6Q2YwVHFxUUhYd3ZuOG02WXI1eisvT3J6cTJo?=
 =?utf-8?B?Z2NubEZ3OElvMlBYVTdlaG9SazcxdS9RQWt2MTJDSks3WWJMTGFpNnhnWm9i?=
 =?utf-8?B?eVM0M3pwcHJkeXp3MnBXNjdVaCt5Tjc0U3hkSElWMWdWbGNOTFZzWmxmakN5?=
 =?utf-8?B?QWU1NzZNQU5Dd1VJekZ0UTEyTGNQQXdDRW5iRkYvVnp6RnlnSVFiSCtuMmxz?=
 =?utf-8?B?RHJsWHZrQXIwNVpJeXFzSG9XRjg4Q09FY0dzZTJ6aXczUDQxQTNid214M2da?=
 =?utf-8?B?QUdiQ09XaDQydWpIVWh3bzJKWk11VTA1dHFxaUU0eUQzZjFxM1YvSjNQeVFO?=
 =?utf-8?B?eVc3ZTNYek41cHg0S05kNlg1bS9RNVpXV0N1K2hzUnRJcVhMZDZta3F4cWh4?=
 =?utf-8?B?eFVpdlB4c1hJLzBpS1MzNU5EbG5oL05mZWZEakZVaHZMSVhyRUNXc1JoY3BV?=
 =?utf-8?B?QitxUllHdWhmZWdQbUxBVFlSNnI1YzAyWHlTVkpIUUFJdXphOElTdHB3TjU3?=
 =?utf-8?B?eGtIQmlidHVuUmxmOU0zSUQya0xLL01mdFRYK2MyS2dMWkNNaTNkeTRJL2Ft?=
 =?utf-8?B?b3RyUngxZmJEc2p1VURFWUtSUWxxZm1TTDZDSnI3MXJxNTJZZm5rcmpHRlJa?=
 =?utf-8?B?YVJUbjV1UGE3SW1QZ0xCQmx6aHhnRVZ0angzcXNDQkM5NmhyYlBMTlNSQm5m?=
 =?utf-8?B?b0NZRlB1cnRtU1FZZDlDZiswR1Axd3hUeDZXYjJoUjVvTy8zcEs2TTErbWZl?=
 =?utf-8?B?bjBmYjBheFIrdmlxYXZXdmdncDVJUytUVngrVXAxSU91SFh2a1hMTXJmRk1l?=
 =?utf-8?B?Wk9wb0sxUGpjZGRjQng1WHhjaU9XQ09IZmpTb2FYVTNzVmNGYVh5QUUzUWdz?=
 =?utf-8?B?eEdWU2tIRnIzcVYvRzNQV1Z0ejQwZlUzcmFYYmkzZVV5YWpnZTlZUitoTzJs?=
 =?utf-8?B?UjdKVkNCdk9DNCsvUC81K3cvOHplV0p2b0pwNDBWUFdudWpkaUJLY0Y2Tm0x?=
 =?utf-8?B?MS8zTStEOGxZNVZmNnJHc2VJNXFCL3JjcFZwcE1DSEdOYjZxdG13TWltOWor?=
 =?utf-8?B?MlA1eWprMkVvbWF2MTJNRHprWUdoTzVmVFp1UDR2UUwxSlhRR2hKRU9LdlZU?=
 =?utf-8?B?ZkEwRnpFY2lqNWJSOEN3LzNuM3g1VHNxZzRRTnNCanNZc0xkejFwbjdyRVRt?=
 =?utf-8?B?dFhNRTVSdG53dWNyaDBFL2RBV3djdEtDY21aS1Y1R1RIYWV1MnBTNWJJU3Yv?=
 =?utf-8?B?Q2YvdGRINEdVWXVxeUxQNFR2ZFFIelB3cjYyVm5FMjdWdHRrUXBLTzgyL0tu?=
 =?utf-8?Q?j+vE5CaplaLISj65uDBVQFFWDV8+04mt?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB7175.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(8096899003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M3Jtdi9OZ0U3Vy95bnhOZE41U0tDZExMR1VWRHpVUWs2UzdvZFBWMXdZZUtp?=
 =?utf-8?B?bG5ERGhrM2g0a2JqN0V3OUVvQ2JOMU5CWlJpRXoxaVlzUXRFaXFmdWRhd3ZZ?=
 =?utf-8?B?QmorWmg2ckhna0tKMXBNOFZXWnFOaUtsZ1VHeHZCdnZVV3RpTHYrZnEvU0FL?=
 =?utf-8?B?ODFrSkFnVTFPVy9iNm43aUZPTE9kR3lCWUZVYk9OUDR2WGxCemVGQWs3VlBF?=
 =?utf-8?B?SnZYaUdBNTBhcE5rZ1ZVR3diZHFpTzhzZE5mUFFyWHlyL1VZQW1CQ1JSL0JW?=
 =?utf-8?B?V0JiZ0R5YXUyZUF2WUxwdVF5QXVCcExYUUpZRGNQZ3A0alAza0lybUNmRjU1?=
 =?utf-8?B?NW1kOFhxZjd6dG9VQkdrZFMyay9ybEpxYW9BbDAyYXoxclRSUG01TE5MeWFw?=
 =?utf-8?B?R2xlVldHUVpBaDRCVjA1V0xQOVFxMnBwMEVDTEUzaWVlWGJNeEpkQTdjWjNT?=
 =?utf-8?B?dDVNb2kyWWNVL3VURVlpSGkxSlZDMk9JaXNOOENQekp5a2Y2TTFER0tzYVI5?=
 =?utf-8?B?SVBtUmVWbHJyQ3Yxd0lCMDFaaFVkU295b2p3M0NNd0ZWOXhZOHl2RTFCVHNJ?=
 =?utf-8?B?aFNWeWtoOHRWNzNkSU1UMENoNS9OSnhndlhib1VYVkovY3FIWXBacE9xZWtN?=
 =?utf-8?B?MFJZR04ramoyRDEwSzNPb2FneXF5SUhpQXVmeldYN1hQQ1FPLzlUUUU1eDZh?=
 =?utf-8?B?Mk1qSWxWU3ZLWWMwZzg1SnFPZ016R2R5NnIrM29oTnlyOWwxU0JrR1F5eUIx?=
 =?utf-8?B?WkZCWFhrd0FDRFA2Wm1ISlY5WW0wWG4vU3FUMkNmQ3hqSFV1bDFpZXFjZC9N?=
 =?utf-8?B?cmVBMzA0bHZOYmVSZnowQ1lRbGU4Ty9mdG1QdnNXTUMvc09ESTg4U2xFY1R5?=
 =?utf-8?B?Zmduc0ZlN3FvWHd2dkZGclpIbHcvUVJnak1xYjVRemcyVm9EZWhEY0RXVlhl?=
 =?utf-8?B?UWJnZW1Qa09oYTBxZXNXQUl0d3hid21NVFpFMzJhUmlsZzFVTFV2eVJXQ2Rp?=
 =?utf-8?B?ME0rRlB3TnhoNzdzNE9ISDhqbnhMQ25QRS9WMmc0VC90YU5EK2FKYXBQeUNR?=
 =?utf-8?B?RGl0cTFLN0hYb2xtZEpsckZYN2lDN0VDakZpN29ZYlRaNXMxVjFMeS9ORDdO?=
 =?utf-8?B?WFZVNmEwR3JZQk9GRjhOaHNhb2xnR0VvR1cvQXBLY0FTRm1tSE9iMXBDb3Bj?=
 =?utf-8?B?VDhjZUdRbzN0YlBTOVZYTmNwNG9uamg0WExzSFFnZUs3NzlmNkZUYWNWSjhY?=
 =?utf-8?B?ZG1ic1RqQnI3NVZRREdvVGxMSkNzWnZQcEF6ZXZSMHlTU0F4T3ErY2VISjFl?=
 =?utf-8?B?UXV1a3JKNTlOcWs4NTFuRkpXTEF5b09CbmcwOVlOTnZkeFhrMFhROHVkbklv?=
 =?utf-8?B?c0l6WStvWkdhRDB4REhHUVYwU0ZrY0dPQW4rSUhYZm91RUduUmhIVmFqTG93?=
 =?utf-8?B?TGhnNS9RZFdoYmFqOVQrditrK2hxWUxEbjM4M05hYitBTlRtbWlrVHoxeGZz?=
 =?utf-8?B?cFJ1Uy9Bb1JiTG0xNi9BOGNvbHZoa0hhRmRBT1paTkVPMVlRUG9jTkhPWjhD?=
 =?utf-8?B?akNJRUx3ZFpLVGNUMVphNkRJcnJ6eFJxQnZ3eXpEWm1LeVpKQVJwanJtbUMv?=
 =?utf-8?B?RGhVczEwcHpjWmRieXlMU2Vsd1BJallpSE9WaTRLdWQwMHVPaFVQcDhsOHpv?=
 =?utf-8?B?MkQzL0FFei9XTTNFcTdldjZqVFdrQUdBL25Sem0xdnRiSzJORnRoaUhWaW1h?=
 =?utf-8?B?ZDMzcllodXJESjdCRGRkNXk5UTNWVW55MkJEYXFwYkpCc2tLKzkzcy9KMnpz?=
 =?utf-8?B?WS92c1JTaS83dU5NUmMweDgzcWdwQlNWejhjUGMxdnJ3ZGJmeWxvZW9iQVFB?=
 =?utf-8?B?RUdic0VBUU9qakNkdHRIdzNRK1llZXBHelRvb0Z3OXVDNGYrNTdhSmErYWla?=
 =?utf-8?B?YW1SWWErSnZvVk1Fc3Z5cnBXWlVTSlZyNXVZem1GVFBkaG95aGdNTStjVGhU?=
 =?utf-8?B?UklodVBxbHVYb0w2MWlLSlo2QUlnK0p6b2FIVkdSQjB2R01DajI3RkRjQ2NB?=
 =?utf-8?B?enFWRURFNHk1ekpLanJzYWtqeW5rL0dCalEyTU5HWjloLzJXUHVwNUtPa2Ev?=
 =?utf-8?B?cjNqakhuVktVZ2YzaTBzWjh4d0N4QjZXTHZmeVl3T3U5bjhlSlFtNml1TC81?=
 =?utf-8?B?TU5VcnB5VjNIOFZ4TVFLdHpyNlB1SEtKOXNlbW5pQ0lockpWMndJWUE0Q0li?=
 =?utf-8?B?dTRCTUUvQnRTR2k4RjFwOUxYMkpOc1EvYkprTzFPUUNwM2hZUFo5TW92NjVq?=
 =?utf-8?B?Q3o2eDBHbXFERlF4eXFQLzJCT2p5MTYvdU4yZGdYWTFhRkNsVkZSTUJlandh?=
 =?utf-8?Q?hyR6NfV3odb7/94RUG4fBYyPgO268ldCzSQ/2nso52EHK?=
X-MS-Exchange-AntiSpam-MessageData-1: xsD65LC/n54TVw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 070ee7a8-5f68-46a9-53da-08de4d27784f
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB7175.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jan 2026 13:28:25.4220 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rvoREv0if9yawnSAwq4GtTv3dhLsKpaVKOfaXPRWSnvwzeOt2K7jH5MMptITVO4fbbwKMbru9TePQrdhcANT7smaAGpC85XQKt1sdDz4kOCwCFygqQYq9BlZ7L9H8rvb
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7027
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

--------------Iy6W7q0vUkLsgJBZacDAC0en
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit


On 05-01-2026 18:31, Jani Nikula wrote:
> On Tue, 09 Dec 2025, Dibin Moolakadan Subrahmanian<dibin.moolakadan.subrahmanian@intel.com> wrote:
>> dc6 should be enabled instead of dc3co after  6 idle frames
>> while in psr2.(re enable part of tgl dc3co handling)
> Please write proper commit messages. I don't understand what this patch
> is supposed to do based on this.

I will add more details to commit message .
On TGL, original code disabled DC3CO after 6 consecutive idle frames and
re-enabled DC6. That logic was removed for the new DC3CO design. This patch
restores the behavior in PSR2, switching from DC3CO to DC6 after 6 idle
frames to maintain correct power management.

>
>> Signed-off-by: Dibin Moolakadan Subrahmanian<dibin.moolakadan.subrahmanian@intel.com>
>> ---
>>   .../drm/i915/display/intel_display_types.h    |  1 +
>>   drivers/gpu/drm/i915/display/intel_psr.c      | 78 ++++++++++++++++++-
>>   2 files changed, 78 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
>> index 27f69df7ee9c..6ff53cd58052 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -1759,6 +1759,7 @@ struct intel_psr {
>>   	bool panel_replay_enabled;
>>   	u32 dc3co_exitline;
>>   	u32 dc3co_exit_delay;
>> +	struct delayed_work dc3co_work;
>>   	u8 entry_setup_frames;
>>   
>>   	u8 io_wake_lines;
>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
>> index 18bf45455ea2..4be709d1d324 100644
>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> @@ -1157,6 +1157,78 @@ static void psr2_program_idle_frames(struct intel_dp *intel_dp,
>>   		     EDP_PSR2_IDLE_FRAMES(idle_frames));
>>   }
>>   
>> +static void psr2_dc3co_disable(struct intel_dp *intel_dp)
>> +{
>> +	struct intel_display *display = to_intel_display(intel_dp);
>> +	struct i915_power_domains *power_domains = &display->power.domains;
> There's currently one place in intel_psr.c that checks
> power_domains->allowed_dc_mask, and I think even that is too much.
>
> display->power belongs to intel_display_power*.c, and nobody else.
>
> I think you probably need a helper function to ask for this stuff from
> power modules.

Thanks for pointing this out.
I will add a helper function in intel_display_power.c to query this
instead of accessing display->power directly.

>> +
>> +	if ((power_domains->allowed_dc_mask & DC_STATE_EN_UPTO_DC3CO) != DC_STATE_EN_UPTO_DC3CO)
>> +		return;
>> +
>> +	intel_display_power_set_target_dc_state(display, DC_STATE_EN_UPTO_DC6);
>> +	/* Todo restore PSR2 idle frames , ALPM control*/
> 	/* TODO: restore PSR2 idle frames, ALPM control */
>
>> +}
>> +
>> +static void psr2_dc3co_disable_on_exit(struct intel_dp *intel_dp)
>> +{
>> +	struct intel_display *display = to_intel_display(intel_dp);
>> +	struct i915_power_domains *power_domains = &display->power.domains;
>> +
>> +	if ((power_domains->allowed_dc_mask & DC_STATE_EN_UPTO_DC3CO) != DC_STATE_EN_UPTO_DC3CO)
>> +		return;
>> +
>> +	cancel_delayed_work(&intel_dp->psr.dc3co_work);
>> +	intel_dc3co_source_unset(display, DC3CO_SOURCE_PSR2);
>> +}
>> +
>> +static void psr2_dc3co_disable_work(struct work_struct *work)
>> +{
>> +	struct intel_dp *intel_dp =
>> +		container_of(work, typeof(*intel_dp), psr.dc3co_work.work);
>> +
>> +	mutex_lock(&intel_dp->psr.lock);
>> +	/* If delayed work is pending, it is not idle */
>> +	if (delayed_work_pending(&intel_dp->psr.dc3co_work))
>> +		goto unlock;
>> +	/* enable DC6 after idle frames*/
>> +	psr2_dc3co_disable(intel_dp);
>> +
>> +unlock:
>> +	mutex_unlock(&intel_dp->psr.lock);
>> +}
>> +
>> +/*
>> + * When we will be completely rely on PSR2 S/W tracking in future,
>> + * intel_psr_flush() will invalidate and flush the PSR for ORIGIN_FLIP
>> + * event also therefore psr2_dc3co_flush_locked() require to be changed
>> + * accordingly in future.
>> + */
>> +
>> +static void
>> +psr2_dc3co_flush_locked(struct intel_dp *intel_dp, unsigned int frontbuffer_bits,
>> +			enum fb_op_origin origin)
>> +{
>> +	struct intel_display *display = to_intel_display(intel_dp);
>> +	struct i915_power_domains *power_domains = &display->power.domains;
>> +
>> +	if (!(power_domains->allowed_dc_mask & DC_STATE_EN_UPTO_DC3CO))
>> +		return;
>> +
>> +	if (!intel_dp->psr.sel_update_enabled ||
>> +	    !intel_dp->psr.active)
>> +		return;
>> +	/*
>> +	 * At every frontbuffer flush flip event modified delay of delayed work,
>> +	 * when delayed work schedules that means display has been idle.
>> +	 */
>> +	if (!(frontbuffer_bits &
>> +	    INTEL_FRONTBUFFER_ALL_MASK(intel_dp->psr.pipe)))
>> +		return;
>> +
>> +	mod_delayed_work(display->wq.unordered, &intel_dp->psr.dc3co_work,
>> +			 intel_dp->psr.dc3co_exit_delay);
>> +}
>> +
>>   static bool intel_psr2_sel_fetch_config_valid(struct intel_dp *intel_dp,
>>   					      struct intel_crtc_state *crtc_state)
>>   {
>> @@ -2117,7 +2189,7 @@ static void intel_psr_exit(struct intel_dp *intel_dp)
>>   		intel_de_rmw(display, TRANS_DP2_CTL(intel_dp->psr.transcoder),
>>   			     TRANS_DP2_PANEL_REPLAY_ENABLE, 0);
>>   	} else if (intel_dp->psr.sel_update_enabled) {
>> -
>> +		psr2_dc3co_disable_on_exit(intel_dp);
>>   		val = intel_de_rmw(display,
>>   				   EDP_PSR2_CTL(display, cpu_transcoder),
>>   				   EDP_PSR2_ENABLE, 0);
>> @@ -2259,6 +2331,7 @@ void intel_psr_disable(struct intel_dp *intel_dp,
>>   
>>   	mutex_unlock(&intel_dp->psr.lock);
>>   	cancel_work_sync(&intel_dp->psr.work);
>> +	cancel_delayed_work_sync(&intel_dp->psr.dc3co_work);
>>   }
>>   
>>   /**
>> @@ -2289,6 +2362,7 @@ void intel_psr_pause(struct intel_dp *intel_dp)
>>   	mutex_unlock(&psr->lock);
>>   
>>   	cancel_work_sync(&psr->work);
>> +	cancel_delayed_work_sync(&psr->dc3co_work);
>>   }
>>   
>>   /**
>> @@ -3475,6 +3549,7 @@ void intel_psr_flush(struct intel_display *display,
>>   		if (origin == ORIGIN_FLIP ||
>>   		    (origin == ORIGIN_CURSOR_UPDATE &&
>>   		     !intel_dp->psr.psr2_sel_fetch_enabled)) {
>> +			psr2_dc3co_flush_locked(intel_dp, frontbuffer_bits, origin);
>>   			goto unlock;
>>   		}
>>   
>> @@ -3533,6 +3608,7 @@ void intel_psr_init(struct intel_dp *intel_dp)
>>   		intel_dp->psr.link_standby = connector->panel.vbt.psr.full_link;
>>   
>>   	INIT_WORK(&intel_dp->psr.work, intel_psr_work);
>> +	INIT_DELAYED_WORK(&intel_dp->psr.dc3co_work, psr2_dc3co_disable_work);
>>   	mutex_init(&intel_dp->psr.lock);
>>   }
--------------Iy6W7q0vUkLsgJBZacDAC0en
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 05-01-2026 18:31, Jani Nikula wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:fdefc5412bfc1c29e7a7a0e704f1dc86c9edabdd@intel.com">
      <pre wrap="" class="moz-quote-pre">On Tue, 09 Dec 2025, Dibin Moolakadan Subrahmanian <a class="moz-txt-link-rfc2396E" href="mailto:dibin.moolakadan.subrahmanian@intel.com">&lt;dibin.moolakadan.subrahmanian@intel.com&gt;</a> wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">dc6 should be enabled instead of dc3co after  6 idle frames
while in psr2.(re enable part of tgl dc3co handling)
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
Please write proper commit messages. I don't understand what this patch
is supposed to do based on this.</pre>
    </blockquote>
    <pre>I will add more details to commit message .
On TGL, original code disabled DC3CO after 6 consecutive idle frames and
re-enabled DC6. That logic was removed for the new DC3CO design. This patch
restores the behavior in PSR2, switching from DC3CO to DC6 after 6 idle
frames to maintain correct power management.

</pre>
    <blockquote type="cite" cite="mid:fdefc5412bfc1c29e7a7a0e704f1dc86c9edabdd@intel.com">
      <pre wrap="" class="moz-quote-pre">

</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">Signed-off-by: Dibin Moolakadan Subrahmanian <a class="moz-txt-link-rfc2396E" href="mailto:dibin.moolakadan.subrahmanian@intel.com">&lt;dibin.moolakadan.subrahmanian@intel.com&gt;</a>
---
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 78 ++++++++++++++++++-
 2 files changed, 78 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 27f69df7ee9c..6ff53cd58052 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1759,6 +1759,7 @@ struct intel_psr {
 	bool panel_replay_enabled;
 	u32 dc3co_exitline;
 	u32 dc3co_exit_delay;
+	struct delayed_work dc3co_work;
 	u8 entry_setup_frames;
 
 	u8 io_wake_lines;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 18bf45455ea2..4be709d1d324 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1157,6 +1157,78 @@ static void psr2_program_idle_frames(struct intel_dp *intel_dp,
 		     EDP_PSR2_IDLE_FRAMES(idle_frames));
 }
 
+static void psr2_dc3co_disable(struct intel_dp *intel_dp)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct i915_power_domains *power_domains = &amp;display-&gt;power.domains;
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
There's currently one place in intel_psr.c that checks
power_domains-&gt;allowed_dc_mask, and I think even that is too much.

display-&gt;power belongs to intel_display_power*.c, and nobody else.

I think you probably need a helper function to ask for this stuff from
power modules.
</pre>
    </blockquote>
    <pre>Thanks for pointing this out.
I will add a helper function in intel_display_power.c to query this
instead of accessing display-&gt;power directly.</pre>
    <blockquote type="cite" cite="mid:fdefc5412bfc1c29e7a7a0e704f1dc86c9edabdd@intel.com">
      <pre wrap="" class="moz-quote-pre">
</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">+
+	if ((power_domains-&gt;allowed_dc_mask &amp; DC_STATE_EN_UPTO_DC3CO) != DC_STATE_EN_UPTO_DC3CO)
+		return;
+
+	intel_display_power_set_target_dc_state(display, DC_STATE_EN_UPTO_DC6);
+	/* Todo restore PSR2 idle frames , ALPM control*/
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
	/* TODO: restore PSR2 idle frames, ALPM control */

</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">+}
+
+static void psr2_dc3co_disable_on_exit(struct intel_dp *intel_dp)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct i915_power_domains *power_domains = &amp;display-&gt;power.domains;
+
+	if ((power_domains-&gt;allowed_dc_mask &amp; DC_STATE_EN_UPTO_DC3CO) != DC_STATE_EN_UPTO_DC3CO)
+		return;
+
+	cancel_delayed_work(&amp;intel_dp-&gt;psr.dc3co_work);
+	intel_dc3co_source_unset(display, DC3CO_SOURCE_PSR2);
+}
+
+static void psr2_dc3co_disable_work(struct work_struct *work)
+{
+	struct intel_dp *intel_dp =
+		container_of(work, typeof(*intel_dp), psr.dc3co_work.work);
+
+	mutex_lock(&amp;intel_dp-&gt;psr.lock);
+	/* If delayed work is pending, it is not idle */
+	if (delayed_work_pending(&amp;intel_dp-&gt;psr.dc3co_work))
+		goto unlock;
+	/* enable DC6 after idle frames*/
+	psr2_dc3co_disable(intel_dp);
+
+unlock:
+	mutex_unlock(&amp;intel_dp-&gt;psr.lock);
+}
+
+/*
+ * When we will be completely rely on PSR2 S/W tracking in future,
+ * intel_psr_flush() will invalidate and flush the PSR for ORIGIN_FLIP
+ * event also therefore psr2_dc3co_flush_locked() require to be changed
+ * accordingly in future.
+ */
+
+static void
+psr2_dc3co_flush_locked(struct intel_dp *intel_dp, unsigned int frontbuffer_bits,
+			enum fb_op_origin origin)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct i915_power_domains *power_domains = &amp;display-&gt;power.domains;
+
+	if (!(power_domains-&gt;allowed_dc_mask &amp; DC_STATE_EN_UPTO_DC3CO))
+		return;
+
+	if (!intel_dp-&gt;psr.sel_update_enabled ||
+	    !intel_dp-&gt;psr.active)
+		return;
+	/*
+	 * At every frontbuffer flush flip event modified delay of delayed work,
+	 * when delayed work schedules that means display has been idle.
+	 */
+	if (!(frontbuffer_bits &amp;
+	    INTEL_FRONTBUFFER_ALL_MASK(intel_dp-&gt;psr.pipe)))
+		return;
+
+	mod_delayed_work(display-&gt;wq.unordered, &amp;intel_dp-&gt;psr.dc3co_work,
+			 intel_dp-&gt;psr.dc3co_exit_delay);
+}
+
 static bool intel_psr2_sel_fetch_config_valid(struct intel_dp *intel_dp,
 					      struct intel_crtc_state *crtc_state)
 {
@@ -2117,7 +2189,7 @@ static void intel_psr_exit(struct intel_dp *intel_dp)
 		intel_de_rmw(display, TRANS_DP2_CTL(intel_dp-&gt;psr.transcoder),
 			     TRANS_DP2_PANEL_REPLAY_ENABLE, 0);
 	} else if (intel_dp-&gt;psr.sel_update_enabled) {
-
+		psr2_dc3co_disable_on_exit(intel_dp);
 		val = intel_de_rmw(display,
 				   EDP_PSR2_CTL(display, cpu_transcoder),
 				   EDP_PSR2_ENABLE, 0);
@@ -2259,6 +2331,7 @@ void intel_psr_disable(struct intel_dp *intel_dp,
 
 	mutex_unlock(&amp;intel_dp-&gt;psr.lock);
 	cancel_work_sync(&amp;intel_dp-&gt;psr.work);
+	cancel_delayed_work_sync(&amp;intel_dp-&gt;psr.dc3co_work);
 }
 
 /**
@@ -2289,6 +2362,7 @@ void intel_psr_pause(struct intel_dp *intel_dp)
 	mutex_unlock(&amp;psr-&gt;lock);
 
 	cancel_work_sync(&amp;psr-&gt;work);
+	cancel_delayed_work_sync(&amp;psr-&gt;dc3co_work);
 }
 
 /**
@@ -3475,6 +3549,7 @@ void intel_psr_flush(struct intel_display *display,
 		if (origin == ORIGIN_FLIP ||
 		    (origin == ORIGIN_CURSOR_UPDATE &amp;&amp;
 		     !intel_dp-&gt;psr.psr2_sel_fetch_enabled)) {
+			psr2_dc3co_flush_locked(intel_dp, frontbuffer_bits, origin);
 			goto unlock;
 		}
 
@@ -3533,6 +3608,7 @@ void intel_psr_init(struct intel_dp *intel_dp)
 		intel_dp-&gt;psr.link_standby = connector-&gt;panel.vbt.psr.full_link;
 
 	INIT_WORK(&amp;intel_dp-&gt;psr.work, intel_psr_work);
+	INIT_DELAYED_WORK(&amp;intel_dp-&gt;psr.dc3co_work, psr2_dc3co_disable_work);
 	mutex_init(&amp;intel_dp-&gt;psr.lock);
 }
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
</pre>
    </blockquote>
  </body>
</html>

--------------Iy6W7q0vUkLsgJBZacDAC0en--
