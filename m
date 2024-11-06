Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A18059BEEF7
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 14:24:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96ED110E6E5;
	Wed,  6 Nov 2024 13:24:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MYHDI4ye";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17FE910E6E5;
 Wed,  6 Nov 2024 13:24:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730899492; x=1762435492;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=u8adyd2opcxPYpqx/XbGTaqUNfrD3HoZxBrsoqKn71A=;
 b=MYHDI4yeg5xm9YyWrMqwxEmTu2O72/7G4wwUcAqJIEKTOrYKhIJQYHoA
 /TFO8PY/6NiaQhWucNDW1w+dZxH91BfpdDDKDBKVN9jMC1+OO9EM/QegD
 dN7kJaZ2aw4zPjypzPYdJOYInhguWKZnE4P4/YrbBxeKBX4zC7XvW7tZt
 9yu+XO9E+MLPfMFe4uVt5IYVWvw2Ckvu9RJleHNlpUOI3aRmp+csZiFDg
 K7erLsAf2Lf7dTxkoHEPpjBsJsKc7ormV/D7ILTjVUGAvy/YepfD7gCO0
 /Fo1ltMns7/bvTO1pcHheIPIrDXgUfcLRQCmiN62ScgKFgbqW/qIa2/2P Q==;
X-CSE-ConnectionGUID: Zno7tRr9TIWUPAiVRgO4Tg==
X-CSE-MsgGUID: F8evVslOSli6rX1TehvI3w==
X-IronPort-AV: E=McAfee;i="6700,10204,11248"; a="56091059"
X-IronPort-AV: E=Sophos;i="6.11,262,1725346800"; d="scan'208";a="56091059"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 05:24:52 -0800
X-CSE-ConnectionGUID: H/3D9dsKQPW4IGY4QmMUQg==
X-CSE-MsgGUID: t8yXlogJTjmBL0CLU6/b2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,262,1725346800"; d="scan'208";a="84455298"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Nov 2024 05:24:52 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 6 Nov 2024 05:24:51 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 6 Nov 2024 05:24:51 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 6 Nov 2024 05:24:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rrHeej1MSFKWlzlEIz2Hzq+RQHk1aFJA+RQb10NH8rHNk/Rf0+s94in0aB2IdFJIsOJBVd6lW6/KIX1zeWtYCBJxyBjaiP59o9Tibac53HkrUhqpsqq4075JfANZma5q43LepfEyjYyd1mt2jJCUbTgLSjacPZoQNbAZtv8fD2g+Pf5jUiSrHew0i9jHg5qxgKW406r7r1TNLk9o46+9mV3HIr7MfsZ/M+ppn6X5EKZpRIY34QRXdEBGOtjSmKryr0iod+LM4MJStJj1sdOVq04sYhD4wwxeJdKrdHQxs6BFsqm0ORneH+ozzEgtYSy5bTUsDX8rt9KPdSzXXPdksw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oXrPiDBwus3twVuXlMXtnFz39OGWReFwh+Enz+3dBAo=;
 b=KF40nOjSGbBFfPnjZYMm7MFzST8uG9yJmgLCZLrSUb7wHCGh0irJAlfGn3gKffQHPnvKkcreJPcO9El/8/hKhHteV6fvuvfdppC5GW6AsDPMo30v/eneod0sUinma4wYb2RFXucByqkn32MKXJ4qnngGVta3EJJzal/5ToeZ4nHdz6PZhsu9W9udwDIQWFHYXK+cM8xRUDeDT5cJTB3OVKCV7X25BVgR0ur9mVUdqmmXdrfaY42pAWnvKZbfEnnN0c+wL3bZECsC1moBttj4jazRCh0H6T6Ky7y2p+cDjVUzG4DuSeCzRIUcOBNTfu1vi/O97DQucnIASmSSN+sS6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SJ2PR11MB7669.namprd11.prod.outlook.com (2603:10b6:a03:4c3::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.30; Wed, 6 Nov
 2024 13:24:34 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%5]) with mapi id 15.20.8114.028; Wed, 6 Nov 2024
 13:24:33 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <874j4khfxb.fsf@intel.com>
References: <20241021222744.294371-1-gustavo.sousa@intel.com>
 <20241021222744.294371-12-gustavo.sousa@intel.com> <87ttd4v5ow.fsf@intel.com>
 <172959501916.3700.2271511841896515028@gjsousa-mobl2>
 <173081498652.2525.11002030128754340512@intel.com> <874j4khfxb.fsf@intel.com>
Subject: Re: [PATCH 11/13] drm/i915/dmc_wl: Add and use HAS_DMC_WAKELOCK()
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Luca Coelho <luciano.coelho@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Wed, 6 Nov 2024 10:24:29 -0300
Message-ID: <173089946959.5449.12903643787422418788@intel.com>
User-Agent: alot/0.10
X-ClientProxiedBy: MW2PR2101CA0018.namprd21.prod.outlook.com
 (2603:10b6:302:1::31) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SJ2PR11MB7669:EE_
X-MS-Office365-Filtering-Correlation-Id: 8c22f64e-864d-4902-699d-08dcfe665a70
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OGFFMk5ueHBpcWFZdzRNSVNPRUFZeHduMnpyNk9zaXdJc0ttc2pBcmo1STFj?=
 =?utf-8?B?UHF3eFBOVmR5UHptR05PazZVdmM0NnY5d3BHaExoUWszZ0JCdGFDM005emM0?=
 =?utf-8?B?bUdsRjIxSStWWFlOdHdldUZNcWgwSHZNQlhjZjlsbTU3Z21WdXVrQjdRT3VC?=
 =?utf-8?B?ZU1EclZBTTJVSEdFekRXUXo0Q09HM3l5V1g5MW5vODFOQjNybEE1M2JuNDhW?=
 =?utf-8?B?TjEydyt3V1RSTzBKK2M0MHJOQ2ZieFRZUzJISHVveEpGSXp3VjZYWEdraUFI?=
 =?utf-8?B?SFowcEFHaXgwcUxpbjRrZk1UY20xRGJTSklvcndvWWdYNms0SStXTnVQTDhz?=
 =?utf-8?B?d0tLdS9kZUc5Ym9GTHI4TFJ0RjlJMXVCbjFyeE9PdXJlMVprcHZDWlUydjh3?=
 =?utf-8?B?azN5QWtRRFIxQVExa3hWNVdKMmh4d09TejBURk44K05NellUYnNSSGI3eFYv?=
 =?utf-8?B?UU1US1Z6emY4SVRMUUtwdzNUazBMcStnd2x3cW1ZdlJqaUdvazF3NGZUMTZP?=
 =?utf-8?B?WGRxaDZTc1MwYU9nbnZmZ2NENU00d3U0VW4vT3ZpVVRvbWRLZDNvcHVjaHpj?=
 =?utf-8?B?Y3ZRMjJuWEkwVm4ySzdGR0ZkTjRYNXE2UXpnOFJqRExJVjc1bWFTUVdYaXZP?=
 =?utf-8?B?K0diK0RMSG9UdnZMVVFXTzRTNHlyeGNxOW5UeDA5TlRiVnFKZmNLaHR0NGx1?=
 =?utf-8?B?bnduYlprc1RhdHVuUGkvbG1jNmUvTDBVWjB2RFJ2SDFrcERkWXFQTzJVcEFD?=
 =?utf-8?B?dEtFZlBPTnhub2pwRkxRUFo2K1dmRmlPcXdtd0FoeUNyelZyRVpoV1AxdDli?=
 =?utf-8?B?Z3dRZDBaengrSGIyQWhZbEdlUjd0NHFuaUJ4KzZNZUN5S1NwSnJ4YW9sZFZh?=
 =?utf-8?B?Y2VhNlBjV08ybWtqODlUcHJuOHRjUEd1eFovUGxva01IcnFMbFlaUDN4My9V?=
 =?utf-8?B?WThvbWZPOEEvYjBwOGJERkJ0MGNNQ2JaTVVicG45MkVqWnpNNGE1bVFZWHFp?=
 =?utf-8?B?eDJ5UWhLcXBRVEt3S29XS0thcDYwcGwzY2ZHZ1k5bDVaSEE1YlNpN1NkU1pU?=
 =?utf-8?B?TlQvSWFkT3pEQ2hXbW1JQW9kTFhoYVZ6RjJrdHNFd1ZsNndVaWtuRnNXK2lx?=
 =?utf-8?B?ckJBZkR2SXBiMUx4bnZnWHdSa2ZLbVVsQXJaZ2k5VXVZMGV2Z3RNQWs4Qk1H?=
 =?utf-8?B?RkNNN3hkUGdMTkFrRlhOeGlOUkpmSlRiV2h4Yy9rZWwra3J5THVtMUVSV0lM?=
 =?utf-8?B?STJhREY2amZHZ0NOWlFkMGJWNVppRmpDRVZyaHltdG5vQTNjMUMwdm5tdzV6?=
 =?utf-8?B?anVTQ3lyc1V4amt3cytOeDhQUVBIamJKR2pVZHdBQVMzbkFXNkQvZmd4NU50?=
 =?utf-8?B?QzBTUjVOQTQwYnQzaG1uY2ViYUx6MGNWQ2JmTVJJdmZkRjZRSU5qNW03ckxR?=
 =?utf-8?B?bzNPbHk4NC9samxKb25ielFaUDgyQllsR1VzSUVHNE90akRKU1BPS25haFhW?=
 =?utf-8?B?dUxpbmt3azF4NkNzeXJCcldNNXJpREp1eHhzQ0oxMkxlakljd1hPY3gwMFov?=
 =?utf-8?B?Y0o0RzJqc1c3Q2FPM09vUURWS2Z3YzV5QnhLWnRZaFFuejhqbUdzUXRkdkd1?=
 =?utf-8?B?Z0lJTDZGTzBXaENqdjdFTjVSaVBIYW9pc3h0L1RBSG94YnV5QzZ5cjBPeGE3?=
 =?utf-8?B?aFhjOElvbVB0YTRybC9jL1dxcW1pZ0JwMVFxUWU1VlhXTE5MMktBRVdJWVFs?=
 =?utf-8?Q?kJvAb5DEvIKIjrVAMYq6MrRQtbkkO0QBSpqR7pV?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M0JEcGVjRTBZcXFIQ2NvRE5sQU5oRkgrVWhTUzlvTTFhQkhxWU55dkw1a0Jz?=
 =?utf-8?B?VDhUclpsemltN0I4aFZkNWIyY2lFTEVqT3ZWdzlSOE9rZm5LU29kN3QzYkMv?=
 =?utf-8?B?QTJhLzd3aHRORG9yZG5WSllpMi9PLzY3Q1hwYk1GNXNGVDdFVVhRbnEyVURu?=
 =?utf-8?B?d1lQYk95N0Nrd2gwYWVJS2k4T3pLK3NJUlVXZm9LZUM1amVtQlMwVVh1VlR6?=
 =?utf-8?B?Z09IdDYvYU14L250MmY4cEx3YmFRWDJHWlFleVBVRUdjRnZZVkFURFFPUUdK?=
 =?utf-8?B?VlNlQ0F2dVErMmVMVE14ZzQ0UURQdGk1NmQvdTVXUVZtQjVLN0xxbHhtbzl6?=
 =?utf-8?B?R0IrS0Q3WkNKS1liR0JCT0E4cCtwT2l1Ni9sZ3NyeFRnakwxYUNrWG0wckJP?=
 =?utf-8?B?MDEwcjVQek9HZG1kdXNwWGI3WmRVQXRUcmRsMFh1MGJvb3B4K05lR0dDR0ln?=
 =?utf-8?B?dFZIa1RyUk4yb0F6ZkxCVXpabUpxaE9QSWpudEszYzB1MkNYdEpYbllIUzJz?=
 =?utf-8?B?c01uaVUvSlhDQ3BQOXpCRXFiYWk2a2oyekxQMDhrMWVHRG04Ymo4Z0tWeFFl?=
 =?utf-8?B?eFpOYmVNeGpCcHZRdndXUWRYcFJZaDhRckxZcVRwbzluQmlrVHUwQW4zSEw2?=
 =?utf-8?B?VG16Z1FCa1FDQmJvNGpoK0hOL1JWSTZaMXhJSU0wSklZb09PRkpvVXkxYlg2?=
 =?utf-8?B?RGk3aVgvaE9VdzdKYzdvRTgzeFhYVFBNNVNweTl1Ti9vWmtRczBqVW1pakdW?=
 =?utf-8?B?WkxwbXA3NVplT2QrUTZ3N0FoREYrSWdWSUE5S3Z3ZU1oMHNPbjJpOURrdGhh?=
 =?utf-8?B?QzIwQ0tFQ05XeXBZNXM4Y1ZZOTlqUVV5T2V5aEhIOXVyUkpKLzlNdm9NWDIz?=
 =?utf-8?B?ZVdHbzQ3Y2tVNDgwbW1oVFpEamtiQ0lWUVZubkVuWE1hMStndFFuOCtpenhJ?=
 =?utf-8?B?TktZS0E5TWtmTk5UZTA3MTFtNXBLQjhCYzdhYnNaZmJqaHl2c3RVYU9ZaG0w?=
 =?utf-8?B?RXdhZHNZdHA2SUdzVzcwWXplMG54Q2M4Sm5Wakh1Q2JKcnJ6azhYMGN6NGda?=
 =?utf-8?B?Y0o2NUhqbnNmYnR2ZmYvV2dkb0tXbmN1aUJuS2h1QWVpYjdXc2c0VVNGbm9r?=
 =?utf-8?B?VHpSOVl3WkVEOUtUd2tyZHdnQjFabzQvYjM5U0hWVURrQWZHUDAzK1UzR3Bs?=
 =?utf-8?B?TEJwa1BvNHN6OHQyOGNTOHM5bEVqMTZicmhiZTlhTVZmdlVwbjlTZmlpN1lI?=
 =?utf-8?B?d0cyYXNlQUt3ZE1DcVZITzFiRm9iYmxLZkJrR01tTVhTTjhUMFpMRzA1UExL?=
 =?utf-8?B?djJERTYzampveXc5Q2x0S0o3RlBoUURjNWYrbzVLdi9Td0pHRlB3MWlTUVdH?=
 =?utf-8?B?MlpON1lodmt3NU5OZDRMc2JLRHBwQ1BZTmsyU0JvVk1XcWlaRVJPamVrWUpC?=
 =?utf-8?B?MGdCaHRESTBrOW5XNncybmltdWh2QjJNNng2MDVCOVVlRjBsdTZyV1V3dDN3?=
 =?utf-8?B?R2FRaDZWY0lIVmt3eUpsd3JTdzVUTnJRYmt4SzNQNzZRZnRvUHRyUUZDK21o?=
 =?utf-8?B?T2xCVG9SaStBUUx1azhlYVcrOExVcGdXbnpSYmJRMld6V3lYQUwvVm1yU2Fs?=
 =?utf-8?B?N3pNWlk1MWVsWVByMzQ5elNqYVpwNDdyVWxrSFFzeHpnR0pwbVFhTE9halN6?=
 =?utf-8?B?OUJaQnFJbmc2N3M0eWNEY1NJOW5JM2RSdm5XQ1lzd2RwbDMveWRVZnFSeUVI?=
 =?utf-8?B?R1lyaTFYdCtGQ3BXWWFGUWNYRVdTQUd1cVZxTUhJemVBWjZCV1JkcWVtNndR?=
 =?utf-8?B?am13UFVYUktxSXJZOTFmeDVRUHBlMkRwSE1WdXRXZmNsREgvbU9IVlFJRDFJ?=
 =?utf-8?B?aXhBNlM1UGtxS0JLRk9IU2gwWkVwWDRIQk1uZ2lFQktwYk9kaE9udUJRL2Jj?=
 =?utf-8?B?d0N4T1U5dU9QcUdrL0hjdnl2RWc5RE5tM2tQd2ZWSytDclNZa2RrSFlaRzB2?=
 =?utf-8?B?eDk0aXYyY3lrckthek1NcHdwTUUzc0R5bU9YOVNtVHQzQjZyYjJ1WDIwaXJo?=
 =?utf-8?B?a0NWeFlEanJmTmlKL1N2c2E5Y3hiU2ZzZG9mM0R3aG43WkF6NXhEaUdmMjIw?=
 =?utf-8?B?S3NnNjJXN2J6RkdWMUdHd3kya0dMS0drRHFFK0VXWS9BNGNBdVZoaVRJSnZW?=
 =?utf-8?B?THc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c22f64e-864d-4902-699d-08dcfe665a70
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Nov 2024 13:24:33.8604 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5e0uMxRp5qITNM1aJjxKe5kgB6wkwlEY8d8JdtcdMjINpCgtP79wpMNkcNvcXL9B7iTYxcUwsTzgF7xpve61Jw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7669
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

Quoting Jani Nikula (2024-11-06 06:25:52-03:00)
>On Tue, 05 Nov 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> Quoting Gustavo Sousa (2024-10-22 08:03:39-03:00)
>>>Quoting Jani Nikula (2024-10-22 06:37:51-03:00)
>>>>On Mon, 21 Oct 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>>>>> In order to be able to use the DMC wakelock, we also need to know tha=
t
>>>>> the display hardware has support for DMC, which is a runtime info.
>>>>> Define HAS_DMC_WAKELOCK(), which checks for both DMC availability and=
 IP
>>>>> version, and use it in place of directly checking the display version=
.
>>>>>
>>>>> Since we depend on runtime info, also make sure to call
>>>>> intel_dmc_wl_init() only after we have probed the hardware for such i=
nfo
>>>>> (i.e. after intel_display_device_info_runtime_init()).
>>>>
>>>>Non-functional changes combined with functional changes. Please split.
>>>
>>>Do you mean changing the call site of intel_dmc_wl_init() as being
>>>non-functional? Or is it something else?
>>
>> Jani, I'll send a v2 soon-ish. I'll go ahead and assume the anwser for
>> the above is the former. Please stop me if otherwise :-)
>
>Sorry, inbox overflowing. I think I meant that adding HAS_DMC_WAKELOCK()
>is a non-functional change.

Ah, okay.

Well, I think the use of HAS_DMC() in the definition of
HAS_DMC_WAKELOCK() makes it a functional change when intel_dmc_wl.c uses
it (because we were not checking HAS_DMC() before). So, for an earlier
"non-functional" patch, maybe the way to go is something like the
following then?

- A patch defining HAS_DMC_WAKELOCK() with only DISPLAY_VER(i915) >=3D
  20 and use that macro in the DMC wakelock code.
- A modified version of this patch discarding stuff already done in the
  patch above.

Is that what you meant?

--
Gustavo Sousa

>
>BR,
>Jani.
>
>>
>> --
>> Gustavo Sousa
>>
>>>
>>>If this is about the former, I would argue that's not really
>>>non-functional, because we are changing the order of how things are
>>>done... But if making that a standalone patch is preferred, I can do
>>>that.
>>>
>>>--
>>>Gustavo Sousa
>>>
>>>>
>>>>BR,
>>>>Jani.
>>>>
>>>>>
>>>>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>>>>> ---
>>>>>  drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
>>>>>  drivers/gpu/drm/i915/display/intel_display_driver.c | 2 +-
>>>>>  drivers/gpu/drm/i915/display/intel_dmc_wl.c         | 4 ++--
>>>>>  3 files changed, 4 insertions(+), 3 deletions(-)
>>>>>
>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/dr=
ivers/gpu/drm/i915/display/intel_display_device.h
>>>>> index 071a36b51f79..5f78fd127fe0 100644
>>>>> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
>>>>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>>>>> @@ -128,6 +128,7 @@ enum intel_display_subplatform {
>>>>>  #define HAS_DDI(i915)                        (DISPLAY_INFO(i915)->ha=
s_ddi)
>>>>>  #define HAS_DISPLAY(i915)                (DISPLAY_RUNTIME_INFO(i915)=
->pipe_mask !=3D 0)
>>>>>  #define HAS_DMC(i915)                        (DISPLAY_RUNTIME_INFO(i=
915)->has_dmc)
>>>>> +#define HAS_DMC_WAKELOCK(i915)                (HAS_DMC(i915) && DISP=
LAY_VER(i915) >=3D 20)
>>>>>  #define HAS_DOUBLE_BUFFERED_M_N(i915)        (DISPLAY_VER(i915) >=3D=
 9 || IS_BROADWELL(i915))
>>>>>  #define HAS_DP_MST(i915)                (DISPLAY_INFO(i915)->has_dp_=
mst)
>>>>>  #define HAS_DP20(i915)                        (IS_DG2(i915) || DISPL=
AY_VER(i915) >=3D 14)
>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/dr=
ivers/gpu/drm/i915/display/intel_display_driver.c
>>>>> index 673f9b965494..8afaa9cb89d2 100644
>>>>> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
>>>>> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
>>>>> @@ -200,7 +200,6 @@ void intel_display_driver_early_probe(struct drm_=
i915_private *i915)
>>>>>          intel_dpll_init_clock_hook(i915);
>>>>>          intel_init_display_hooks(i915);
>>>>>          intel_fdi_init_hook(i915);
>>>>> -        intel_dmc_wl_init(&i915->display);
>>>>>  }
>>>>> =20
>>>>>  /* part #1: call before irq install */
>>>>> @@ -238,6 +237,7 @@ int intel_display_driver_probe_noirq(struct drm_i=
915_private *i915)
>>>>>                  return 0;
>>>>> =20
>>>>>          intel_dmc_init(display);
>>>>> +        intel_dmc_wl_init(display);
>>>>> =20
>>>>>          i915->display.wq.modeset =3D alloc_ordered_workqueue("i915_m=
odeset", 0);
>>>>>          i915->display.wq.flip =3D alloc_workqueue("i915_flip", WQ_HI=
GHPRI |
>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gp=
u/drm/i915/display/intel_dmc_wl.c
>>>>> index 8283b607aac4..f6ec79b0e39d 100644
>>>>> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
>>>>> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
>>>>> @@ -250,7 +250,7 @@ static bool intel_dmc_wl_check_range(struct intel=
_display *display, u32 address)
>>>>> =20
>>>>>  static bool __intel_dmc_wl_supported(struct intel_display *display)
>>>>>  {
>>>>> -        if (DISPLAY_VER(display) < 20 ||
>>>>> +        if (!HAS_DMC_WAKELOCK(display) ||
>>>>>              !intel_dmc_has_payload(display) ||
>>>>>              !display->params.enable_dmc_wl)
>>>>>                  return false;
>>>>> @@ -263,7 +263,7 @@ void intel_dmc_wl_init(struct intel_display *disp=
lay)
>>>>>          struct intel_dmc_wl *wl =3D &display->wl;
>>>>> =20
>>>>>          /* don't call __intel_dmc_wl_supported(), DMC is not loaded =
yet */
>>>>> -        if (DISPLAY_VER(display) < 20 || !display->params.enable_dmc=
_wl)
>>>>> +        if (!HAS_DMC_WAKELOCK(display) || !display->params.enable_dm=
c_wl)
>>>>>                  return;
>>>>> =20
>>>>>          INIT_DELAYED_WORK(&wl->work, intel_dmc_wl_work);
>>>>
>>>>--=20
>>>>Jani Nikula, Intel
>
>--=20
>Jani Nikula, Intel
