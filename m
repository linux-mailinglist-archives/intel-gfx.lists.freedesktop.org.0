Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4Ag1FOAVnWkGMwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 04:07:12 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B013C1814B9
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 04:07:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4227210E490;
	Tue, 24 Feb 2026 03:07:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HvvCQ1xg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5659910E144;
 Tue, 24 Feb 2026 03:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771902428; x=1803438428;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=P4zKnRiAIzfJGIGKbu72e8Q2vi1y3umD18nRbWuPUMk=;
 b=HvvCQ1xgwKAtek7QRTTLjpBAo62wIIpuCgdMhWHwUkbv13yN+WUgw+Ac
 CDMdilcYEHbRBscTevTVqcJxdW3QOuiYdB7hv95OM+E0wyQ13wgX5+ba8
 gcEiss/tmE1cuPSRTydq82NRD4iWXjc4cO21GEAetKUH1ibdFOy5mv5bX
 K2AyYupbEVZp9yBaT0IYm4xdjcLQ+AhbSgGdV0+vhju+3F04wpCK0P/P6
 1A6seh3KQH1GUmdH3VH2Y5/bmnV9oo6KZOcyQqbcqjvh88AQIs1sJXSd5
 n7PoMuxsEqZ1B9bx8JAZBIeu9GmcRw4c5x3D9NGNSwmuFAwXFU2P3zSsE g==;
X-CSE-ConnectionGUID: 6FN/XzmLTR+5pWGZz60nTg==
X-CSE-MsgGUID: o8KdQPoXQZSgg1aCsca2aw==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="76741555"
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="76741555"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 19:07:08 -0800
X-CSE-ConnectionGUID: 9ek6/g/3Q1WWReonR53ciQ==
X-CSE-MsgGUID: oUrvBekxR5y0AyDqLNagDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="214138589"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 19:07:08 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 19:07:07 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 23 Feb 2026 19:07:07 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.34) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 19:07:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XqK4OH+YKGdMJKJdhfKfpsSfxoFCJ5FH8TQoIKP9RZ9mODs2EJgDpkxBtjWk57CeSLijRzOIrMEW/+bnEJtRXi1E3Wfe+bMRk3KY5yZpT5nRsqkDCDoD5mV8Mb7dIszF7jYVruUr1ZZFJ17a/RDUZ7BPVMn181c188sNCMXRNgYU4878jpT0cUaV/2livwCIWgmoMTD0j09iEvEqUPijFUksgS7tXP/xCZY+0ib+BjL7/57BG7fD5LQ2XanuSiwweTfHUZBnMI+vfY3d97C7nfPQWEyXIkizyVrEFge+8D7aWiFZjM+WNziuBPRceFbr9tSbIqOEjn8yB78UR662fQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GNh9VV8B8hoLbvkb0RdhNS9OKhMXzXrZfdtsFfyEhcA=;
 b=rx52k59QaGQFyfgsIATtcU6z9Lp4BxX7X9qoDUZm0JHoAJmkQIa/3QYg4DBUFHa5mfDlNfLesX7rX9G+QJZD/KoqyfDAwdkWybfvui3bFSIm3hPyXtk0RylXUbuuA3azSbQk4SZa2VANynh/qECjbP7VurPA27pnMYMeqvJzIhVndFfj8R/Dd5LrCpJ4fWV5x0i/yKuYd2VAtyXH4ho4ho/UqsQWfkNjqh9j+NgZYCWF3EAsoe7aLwZDBS1JPwWT0GUfo1lDnHinqIzBGQX72GeSdH0ymjNQEM3ZkYvgbJz3hTnUoQFTh+yT70S1LNrMN4Q/DVbOaSohC6cCeMAJlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by PH8PR11MB7966.namprd11.prod.outlook.com (2603:10b6:510:25d::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Tue, 24 Feb
 2026 03:07:00 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7%6]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 03:06:59 +0000
Message-ID: <a2d2cb93-4e59-49d1-a4a2-1e719330e038@intel.com>
Date: Tue, 24 Feb 2026 08:36:52 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 8/8] drm/i915/backlight: Avoid 0 brightness for INTEL AUX
 HDR backlight by default
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <ankit.k.nautiyal@intel.com>
References: <20260220050217.2453681-1-suraj.kandpal@intel.com>
 <20260220050217.2453681-9-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <20260220050217.2453681-9-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0173.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1af::9) To IA0PR11MB7307.namprd11.prod.outlook.com
 (2603:10b6:208:437::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7307:EE_|PH8PR11MB7966:EE_
X-MS-Office365-Filtering-Correlation-Id: 3c70705a-b08f-49bd-285b-08de7351c6b4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aG0rTENydGFOb1J2ZjZCMlJUZ2Q3RnFPbXBCd1ZnWGYzMHlOemV4V1NTRTZy?=
 =?utf-8?B?YWxTYzA3YitubGIvS213b25BMU1mS2ZTM0FqeFRSWERuVW0zSjdUY0dpdUdK?=
 =?utf-8?B?Um9JemNsQlNrVjJjUSs2c0lRcVprSndyRlpXNXM2VDZkYmtzU2dvYlBiNjRZ?=
 =?utf-8?B?YlFzTkRvaVJQeGY3cUFWRDlKN1JrMStpUTFicHltTU90b3hrUWVTS2N4bFdP?=
 =?utf-8?B?Qmw4ZkhpZXk2ZzBVYmtUbHg3bk41aFB3TTJNNkxoSUtJS2hhdUJxNFBZTW5B?=
 =?utf-8?B?bVpCeVRzZzJvRVl4NEpTZVFScjllNHN2VjNkTk1sRDR0enQ0Y2ZkK2g4SEg1?=
 =?utf-8?B?Zk90Slc3ejF2ZkJFRjNUcWk2ODM0VlVLaDVEMncvcnA4Q2ZKOTRUb2w0aVRG?=
 =?utf-8?B?N25pLzlscEFGK0FzcWtaWWFBa01DeXMxZGVVSTJEWHNheVMrSlUyK0JucUdV?=
 =?utf-8?B?ZU9DTmNOc2g1aHYzbWZOVUlja29BbFpxV3BsU3lTOXh4Y3VSK2c0NjlBUVJl?=
 =?utf-8?B?OVNBb2xoc1ZVQXYya2t6NVh2RldHVUhnYlVLU0dQRkU5QjFNN3NwUDQ3SFYr?=
 =?utf-8?B?WXlYR2t4Q1N3SWMweE43bVJXQ1UwY2svMCtDZUxhdUlkQmZaQm9GL05DeWdG?=
 =?utf-8?B?RUVhRVRCN1hVQXpWRXBFRFE2MmRvV1V5MHJ6eVFMQzlLa1RUSWZQRmxieUY2?=
 =?utf-8?B?SWY4OEF5UnBJWGhwMXY4dE8ydWxpQy9FanBPSE5lL05JQ25DeXdUb3VFU1lz?=
 =?utf-8?B?YzFsWnRKNmRjSzBNSE9oZTRmRC8wejYzSWYrZFVkYzVvTksyYlNQSzdESGJh?=
 =?utf-8?B?c2dOMU53cUM3MmMwNERUN2pLbmc2NzBXdzdxRSticVAvRUJETHo4K2h2Y0xN?=
 =?utf-8?B?angzSGhubkNwS2l0ejhEZm0xa2U4YTllUjU4cUFYZDJyR3VvOGs2WFphYTV3?=
 =?utf-8?B?MHR6TCtxaUhKazVvTVQ5WkoyZElNTzN3NTdLeXZnV0lwdzRZemhWd1Zrb2hS?=
 =?utf-8?B?WWZBRURzYzdkUnA1OUJEd0Jmd1Q5VFQreWRlY3BpNklOT21yWCt2RDVON1V6?=
 =?utf-8?B?QkM3d1l3cXNKTXIyVHpZZUd0QzVhd3RXT0F6N2pXbWxsWFRtQmtSNlBFbGRz?=
 =?utf-8?B?L2NSemdwQUEvSDMzNWRrSStiRDN4ZmdZL1lyM0kvanRydnU3Ym9ZL1RwZGZY?=
 =?utf-8?B?emFqc3p2cVE1REZkdzkza0h1WWpyU1VVVTY1U1l4VmM4NWpqRVFtdll3Vkpm?=
 =?utf-8?B?bTlIY3IwSWRBckFBMitvcURQbnp0bmRTcTJaS3ZTMjd5cVRwdWcwQ0swSHlu?=
 =?utf-8?B?bTVpUnZsVElGa2x3UTRLRVBMamVrU003TW1pdjNiWDIrWnVSYW9GcW1WVWI5?=
 =?utf-8?B?a2lydW9MR1BZY3kyTHJZeEYyQktTRldvdXl1RDFhWHFBMWd2cnZ3YitEQkl5?=
 =?utf-8?B?bG5LakFCazVvN3QrQmlFTFErVkpIZXZ3V3RHVVRWaVVweHNDWjdTaFVHa2do?=
 =?utf-8?B?VnF2Ukd6ZlBMZU4yeFVleC9sa3hHQjlTdGdpZ2RFRXB6TXhIbVhzMzZRcFVR?=
 =?utf-8?B?SmlHNFI5QzZCNXFBSTRGMjVaajU3Wi9vM3FOTmxqMTF3Zk1kR1V3bFlxTWs2?=
 =?utf-8?B?cndyMHFCSU9jcjJHKysvUVQ3QTRLVkpTNThrVzRBQTRrWThVMkJRUkJBMkta?=
 =?utf-8?B?TERzSHlkWW9mZHBZbzFhS2RzUUxlMHZmYUZLVGR6L2RBRU41UU51RlJwd21v?=
 =?utf-8?B?bXkvZEl6VzlsTlFMVDVOM3d4WkdBa1pTdWViS3VXUUU4OFYzR2NYMDlqa2lW?=
 =?utf-8?B?WmFpV0ErZ21kOWJPUzIxSGZPWGIxNE1BN0kzNndYZXlwUlYwRCtjYzZzdE5M?=
 =?utf-8?B?MUlyakk5b0JNN2RWd1RvY0ZpbGlocVppQUYxRlROUC84eGdiK09DVVY5aUdB?=
 =?utf-8?B?MEFuYXBHcHFZV1k5S1lnU0hNczIzc0ZVc05TUUI3R2Q0bWRkbWlYVVNlMWZV?=
 =?utf-8?B?RDAwZkRhak8ybjl4eW5tN09CcUhXVXVOYTNPMjhSc3lEblhvNzhRZ2NxSHBn?=
 =?utf-8?B?MFNQMVM4WjJKTUdjMTZYT2JRUTBvWnllblBTRVJqSnZpVVpGNG8yenlJaCto?=
 =?utf-8?Q?gh3k=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZzJxaTlnVTFjc0RoWVBQeDVJd1VvUFRwc0ttV0xWdGVoa29waDF5VXgxSDR3?=
 =?utf-8?B?SWxuN3ZxRHA5YzNaMmc5QzJMa1hmeER2KzJXZFZ4T3NPb2hjL2xxZHBLU0dE?=
 =?utf-8?B?UVcwSHB4VUJkUGlCWEl5L1hKNU1wTWlzRC9FSjdGdWJsNkhRSHd0Qkh1SkJL?=
 =?utf-8?B?QXR2d0ZOaUN1MmM4R2FLbFNsYnJvSHJ0RHRDWnM5ZE9sN3F6clBXVHByY1JZ?=
 =?utf-8?B?OVlXUWRjc2FtRVNoeEpnQWZnb3Nkc1RXN1ZYenIySG5sVzZtL21NQUlFTWZr?=
 =?utf-8?B?emxoejFIZXJoWk1Rbko1N1BUb3E1VUg1anpyditlZS9PZTI3Z3NWaDQyQjMv?=
 =?utf-8?B?bWFEUGVmMmdqb3NJMENsK3AxeGdLSzkxVCtIUmwzMFAzNndVblhGRW1IVGlI?=
 =?utf-8?B?WmVjZ3dGUG1DTnZTYWhtRWEwbTBoQ1oxamozK0ozcHJBN2wzVnpseDVweUwr?=
 =?utf-8?B?SGQrTWlGTnkxVEVaYWIxMkw5MEZ0aWc1ajRjMVBSS1J0eGJ3SGRGMGJGZjVr?=
 =?utf-8?B?czUvU3Y5V05maXBJZjZseTQrc3Z4ZjdmNURoQW5KTWlTU0pWQ2tTcHByZTh6?=
 =?utf-8?B?clBtYm00VlRsWUhWZ1hLQjIxMGN6ZnF0U3M5QVc3Tk5tbXRSVzVUankva0Ry?=
 =?utf-8?B?VXdhOVkzUmdtN1Y3UWYvaDdHWHhxVTNPcEhFLzU1aXBZN0V5WXdkZ0sxN0Zz?=
 =?utf-8?B?WHN2bUFjQnNuOG1kUnQyalZEcUhsSFZGcFdWWjRMZ2NtQkp5NHd5NUlzVG9Q?=
 =?utf-8?B?bS9Rc3RxS0s0MFl4RjlSQUFOYWQ2enRRdlZmT3B4T0c3RnBUQ3Z4MEZWL1Bt?=
 =?utf-8?B?emEyU2FiUnZPL0huR3Fkb2k4a3Z5dzg0bUJheVduY1B4MUVWU3lTMlM1SXpD?=
 =?utf-8?B?Y3hFdGxLRkVEUmZLdHVpYUFsY2tKcFFsSHdodHhiSlA4SEtrWHNtaVNpa04v?=
 =?utf-8?B?SENyOXVMSlpVU3oyM05IaUQvMC9UeXVmaUF4RzlrS0tPVHE0MzdIUnl1WGZB?=
 =?utf-8?B?b2NyQVczQitoZ2Nla3UrVG5meU9QbFRaclIva1VVNHNqeG1SMDc3QlBudzlN?=
 =?utf-8?B?TW5NNE00eXgzNkRXMStIR2ZQbkdkd2R6YW9TY2Y4cUZlNTArUFFscEZiMWhM?=
 =?utf-8?B?QXd0NjI5Zm83NFdPSVZqNnJpRkU2YUg1c0hCc2Vla0o2bXMxbDIweGJDK3Fa?=
 =?utf-8?B?REVvZDdJNTl0Z0xSbjQrUC9kOEVWQXNmR0tpQS95R0c1czM0WHZFS2tuN2VK?=
 =?utf-8?B?OTkwb3BPdWgvemNDcGc0WC8xcnYxNEY4QWNPZ0FuK1lDVWZtdVhNSVhMZGdx?=
 =?utf-8?B?YW1rQzBpbVRpZUp6a3BxRmtRMTFURW9paEJoTWcxbkpDWjhFaWd1d1N4N01K?=
 =?utf-8?B?REFmNWtiZlBVQkcyc1lBV3lUTmx6ZFVBRFlQT0V4VHBDem05NEJicnIrYWYv?=
 =?utf-8?B?ODZycG5aV1hTclNLTURzbjlIaWhJOElMYUlwemxUM09mSmZBdzRLajNaZkhy?=
 =?utf-8?B?L2RhaEZuSEpCZ1lYSytJbmc1KzNaZXhwUzlGTkpVd0dLU2JuSzNVQVM3dlhQ?=
 =?utf-8?B?czBSekMzMWRmeThvNUxVNk9odmZERDRWVnA4elBxaUJybTM5TGthakFRZ2JE?=
 =?utf-8?B?amEvejhlTUFFR2swQXFGaldjYWU1UGRwb0FkYXlSRGJhdEwzbjRtVHpCOENI?=
 =?utf-8?B?MmRiOFE0akhZMHJvTzJ6MmduNjlJbUNZWnlLMElWVjl1VFJaWWYrM1l3VE5l?=
 =?utf-8?B?cXltSks0RzJRaXpqTXNEUExWQW13NG8xc0FZNC9McXR4WjU2Y0lpSkJyaHNQ?=
 =?utf-8?B?aHpQbExyKzBVbGpsNHNFQXdzdCtPTCtreENObmxlWnBnKzdFODVSay9yU3Ry?=
 =?utf-8?B?dHVSQWxJSzExUW4rV005RVdxU09xNUMwVjhsRlIvb2Z1eU9TQ0x5TmhrNDA5?=
 =?utf-8?B?dGlIcXpKcWRIZERBRGpZM1pmMm9FOEZva3N2KzJKL0EvV2g3ZkhWZ3QwRjRD?=
 =?utf-8?B?dVpzdmJYVSthYjA3bzVqMjV4bis3RFVEK05CUnhqQlJIUkNic2lOb2ovZkRM?=
 =?utf-8?B?Y1Q2Q2VmYlF6aU1zSWhuSkg2V2llZlh0WWIwb284SGlCa0ZwclowTjEwbkVx?=
 =?utf-8?B?WnE2aFdrcUwzUWoyczFlR0tWRmpVdlA1Rjc4NS9LQmdpWCtRTlA4Y0lOVEVC?=
 =?utf-8?B?ZkxZT0hseGRiT3BNTGRFV2o4RExIcVNlLzdkV1NzNTdNTHh0MGtWT1pkY2RV?=
 =?utf-8?B?amhXZnNQNVlxTFRXZVNYK1lxejFKaVU3S01DcVZvT2hwcEgyZFU5UlBuV2xx?=
 =?utf-8?B?Z3V6MUtnQU92OWF0L3NuRUlreGUxMkROK3lScjhkVHNhMTRuTHZpYTcxVldv?=
 =?utf-8?Q?WQ5aAtQ7We75P/qk=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c70705a-b08f-49bd-285b-08de7351c6b4
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2026 03:06:59.9311 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DhYFWxH0RgUMq5uWpN8kf5VnOgpgMzEVCnRm37g7E6E21iHvRAGyHVtfy2GaxUOHNV+M2YoYMpF4EWKb3NbxCA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7966
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: B013C1814B9
X-Rspamd-Action: no action

On 20-02-2026 10:32, Suraj Kandpal wrote:
> Whenever the minimum brightness is reported as 0 there are chances
> we maybe sometimes end up with blank screen. This confuses the user
> into thinking the display is acting weird. This occurs in eDP 1.4b
> when we use proprietary INTEL AUX HDR DPCD registers to manipulate
> brightness via luminance values. Make sure if minimum luminance
> range is 0 we program the default luminance value to max, if
> brightness level is reported as 0.

The comments for patch 1 holds here as well.

Thanks and Regards,
Arun R Murthy
--------------------

>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
> v1 -> v2:
> - Let users set brightness to 0, make it so that it's just not
> done by default (Arun)
>
>   drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 2 ++
>   1 file changed, 2 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index aac6cdb5b69b..725370bcfa3b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> @@ -442,6 +442,8 @@ intel_dp_aux_hdr_setup_backlight(struct intel_connector *connector, enum pipe pi
>   
>   	panel->backlight.level = intel_dp_aux_hdr_get_backlight(connector, pipe);
>   	panel->backlight.enabled = panel->backlight.level != 0;
> +	if (!panel->backlight.level)
> +		panel->backlight.level = panel->backlight.max;
>   
>   	return 0;
>   }
