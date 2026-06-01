Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KEJRA5d4HWrKbAkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 14:18:31 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E34E61F234
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 14:18:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D04181132A5;
	Mon,  1 Jun 2026 12:18:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Cwuk5mQ7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7A721132A5;
 Mon,  1 Jun 2026 12:18:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780316306; x=1811852306;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8e/3huENSa36BntuoVcdcSnr9s6YTJgI36Dr4zltExE=;
 b=Cwuk5mQ7sKM0ERAqUazRqhJfjc9+YHigvnw5COpyvw2684WLTd1/jjr+
 4/sEw+sA7qirix/Fd2hy4KLfc/0UCRyH6UD1eViy8uONX0md+wSg6/p5p
 XctMFT0NISYsxhK55ojx/vxVG7ZpUrh7+enN1jgeTNFBT31eIcvMpVk6h
 dZu8+BKSwYBCVYkayLtJDL5/WD9hYz88OS23IZVVEaQLZV4JXeScNXjPg
 xAjubNzv2WG2eYOTH5MLT/LZt6RQCcR95PaWy8ogmmmpB2F7di7RJ/wsl
 1y0XbESZCg9ZrXtYheTl04GPEv7FgFWu/JbN9+FfDMBX3U2PkQtQK/nzG Q==;
X-CSE-ConnectionGUID: l0zmD0h5R1WR5uTuOZ8ZSQ==
X-CSE-MsgGUID: f+WVLJ19TDmfon/qmUU/jA==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="103741605"
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="103741605"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 05:18:25 -0700
X-CSE-ConnectionGUID: 36W+LFNFSSWcMzswHT3dsA==
X-CSE-MsgGUID: LZKXULgAR9OOmlnqAo5HBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="245387890"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 05:18:25 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 05:18:24 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 1 Jun 2026 05:18:24 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.30) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 05:18:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KfRRSjQZb1F+yX9FPo7V9NPAV2jc7NyvV9s1zdjqs3s8VPo1zWCC0DfzY4QrNMeQ+81avH+yHeFkbs//fqjUjwv0HnXgt2P7j2rUGCjeWb22JQ29r0hRYqHn8fC4qgtVatrYiSqwDaApnKXqume4UIVS6L4gji/HZCr4bdk2NOXo7XBBvvE/xrx1LU1osdkkpzgS8ji951TvGU9Lbk8TZXLys4DOy6cK0Y20LtfOhEhEgdDvUBJiPVeUO01BpLLzOlcMb7FFW3Efyg07Mnj9e+wN1xNyB/OE726r3pIW4+f8JTshjp699c71G15JFRQmMZpbNGBrf+CnnnyyrSmWPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T1KcTNRIgJ0p3aVQSkNccWXbJOYY4H4ZeMqrwHRZtfw=;
 b=HHFzfM1LKeks8fMJK01XC4l1E+YAYV+gOUoqW9YKF2v3fQFUjeusHYN2yMDOqjcAym7sgnxodNbuOGS6WlwrdHCxI7Rcng4l4JUd8GpyMsaHh0vmRwYQWMnnHcGFx0O4XbLGfPCDM3Fgu3lWyChgVsaBSI0vIudiV17zg91N6KlUm1bNORmJjJrsZ+BCKbeYLTkkoojp85KFK/B2m641/8/65tEwWfgHFByjxaRupvBNMgaCUxLbFs//dKQSKPyxl/MkjVWIJg1Bczb422FdbPn6woymHZ7aWI9bMbQv5EyNp69fDuGQa70niCTH20K6aV3XNL1PGn4g0khdb+G+qg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by PH0PR11MB7521.namprd11.prod.outlook.com (2603:10b6:510:283::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.14; Mon, 1 Jun 2026
 12:18:22 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1%5]) with mapi id 15.21.0071.014; Mon, 1 Jun 2026
 12:18:22 +0000
Message-ID: <3bfd06ff-d868-419b-b0a7-b6f47511aac3@intel.com>
Date: Mon, 1 Jun 2026 17:48:16 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 02/13] drm/i915/display: Switch DC3CO enable from
 standalone bit to DC level encoding
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>
References: <20260526191826.3786009-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260526191826.3786009-3-dibin.moolakadan.subrahmanian@intel.com>
 <DS0PR11MB8049279A2DCA01D74EA8A11FF9152@DS0PR11MB8049.namprd11.prod.outlook.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <DS0PR11MB8049279A2DCA01D74EA8A11FF9152@DS0PR11MB8049.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW3PR05CA0025.namprd05.prod.outlook.com
 (2603:10b6:303:2b::30) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|PH0PR11MB7521:EE_
X-MS-Office365-Filtering-Correlation-Id: 51416862-3976-41b0-439a-08debfd7df4f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|11063799006|3023799007|56012099006|22082099003|18002099003|4143699003;
X-Microsoft-Antispam-Message-Info: 2zKtTbzFWmfT0j8zMEPlL+LGJpJuPj8K+YG5m4bCo/bNY9niBiJ56+9RQYP62+mQB+D1DqDk8OrRxl+AvMN4dd97Qr94BuR7S1N9hNw+/QoGLTqjQC1judw+zq4nVJ5AEBwOaoDlQHSsHBOSNwnTnItwpNLZAGenwK6Bo6dHut9YwZ5cCBo0V7X4bx8VQrXTYTJEf77YW831nftkXOWkY5ubdkkgEGwTts8r6lxhs3YBSt8u1ZSx4i7Cg4mTi0JqZj1tyOxKIrT2sqhoXWdRDCmJoI/iUgdRtRI+tOHt3x9LjnOZvOPy668XR5fiupusm3XUxL9p/4aWv6h4vWKOUIU/iXNKY8J/kwCxKwQwJgTgo+8aT21ZjOtJGHXjBK4UM9an/a0qCKuCXs8+3pQjPwxV2OTb0THmY6UMzKQ5MMjt8jbb13T3d6BJWFFDRn6mNztFx5B3dcYiirgyXE1w0WTu5lDGePOMrgqOrVPdiBdt25CKMmANnsQ+0YJauSpPVhGF1SRac8vzs7tWlBRAZgCfAvYr/rg1vFVN2aB159UsFRZ3VdQSYgVmjCnjUkhYoQgqjYgh69J+MGL9osTVIKAXuTjUyoFi9hpNr8IlA+CQmpU6I9BUs0PwPGT7+i1gjPAY74o/K8kdBFTUf3XO8tOVSo9Gc0OhnEl5s9a8LWFdCfmsZib/Dkki3lVLHl5d2E1sBAzBFayXyUVvd0hjtQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(11063799006)(3023799007)(56012099006)(22082099003)(18002099003)(4143699003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SS94UjMrK0k3UEVYT1VTb0tHN2w2TksvbFhMZzZXT3lGM2hnM2RCRkQwRkRh?=
 =?utf-8?B?UFVJK2xsRDhXN2l3Z0p4TmwvYlU3MklabEpZUW9HajZQTGpkbGpVS2Z6OGVk?=
 =?utf-8?B?dm1oYm0rVGVQSFR6M044Z0dEVTRsRmloSGJTUi9nYy9jaVpOM0dCdi9hbUg1?=
 =?utf-8?B?eC82ZHUzNUNXOGoybXBjSVFlekZTMXUzWEUwQnh0WkZOZHZtb0hZZG1BQ1M2?=
 =?utf-8?B?ZUNodjM2WWxZTEs0Y1lTQ3diK1R1a2x5S255YkRpdENnbzRyWDIrenphdVJK?=
 =?utf-8?B?MUUyWjRZNk12NlZJT1NpRXhsWlNhaDdqbVhEeXFQZ1ZweHB5QjVIMkVyY01q?=
 =?utf-8?B?SDZXUWQzN3pweXRBUkZlYVJXbDc2cHFUQzBueHJxbjh4S0NpR1M0TlpvZ0Vh?=
 =?utf-8?B?M01Ed0xZazBQaENyVWIvdGp1MnBRdElTd0FYcTVkc2l3c3NxcU9vL3VvV2xn?=
 =?utf-8?B?Q1RQT2dBUCtvZ24vcWxsMG9kN0pNbGFEWXdRcEgvelgxRXNQTFBYUFJLQUZj?=
 =?utf-8?B?eEh3NFVjVmNqY2pab2E4MTREOFR1R3IrZzFVdHV1U2I1V3FpSnEvR1JiY0s5?=
 =?utf-8?B?SXJjUTB0a3cra3VkYUYxcm42SE9wT0NFd1R5cWFMZzRaZzhWUyt1a0gyZDlx?=
 =?utf-8?B?OWJZSlVnNDhrMFZmdkFETmtzU1hnODI1cFV0TExtbnY3ZjRyVWJUSC9td1VX?=
 =?utf-8?B?NExrMVN1V2orc29KbXdDZENGTzAzWkFXMjdkclJ5b2EvNU1KZFAzM2QvTlJR?=
 =?utf-8?B?ZHF6NnBXTVhvU3REbkphNENKRDZzOXdDMjY1cEEya1hTSHZOcWpzRkYxTGlk?=
 =?utf-8?B?Q0I2Q2pXYkZSdEFYOUd3Nk9kT1psbnByT3c5UUM0TW9ZL0RKOVZXTldaL3hm?=
 =?utf-8?B?Y01qQk5kQTYrSnQ3QjhZcnJ4enVjRXdtK3c5S0V0My9DTnhoamd4M3hTdXNY?=
 =?utf-8?B?YjNNbUtXSHZVTzB4bG5xLzI2cFlPRDRhSUpQNSt4aDlFclBDWlVCRDYyK2sz?=
 =?utf-8?B?WXY2NTQwTVJuU2U5NjEvb1hWcmdQdTl3SHFDQzNNaUtzMFpyV1hjYTdrZ05w?=
 =?utf-8?B?QzdUbU5BYVIxK3pSck9pWHZYVTI0S210VWY4ekxKQWFnOThhcWNKaU1lVmRj?=
 =?utf-8?B?USt0WnB0WFlSbEFGVm8xc3lsV0xVNjNkcTVuaVJxTlJZd0dXWENIWWhwYzNF?=
 =?utf-8?B?SVZPTS9QeUxnSjlmUVFnSXBITEU2bVRwZUNoRzF0Rklkd2ltSHQ5N1dkeFpI?=
 =?utf-8?B?T3Y5VjE2eEc2Umk2U2NkMnJ0WkJ3TE9MYkxtbTNUTUx2R2NPMnR0bi9FUGg1?=
 =?utf-8?B?NmxpSUFDYXI4ZDBkYnA1VnM3R05uaHdwOVJQSUV5TURNTFNrNEFWc2RQelNP?=
 =?utf-8?B?R0piamx0VUVSVko1R2ROWERDMHVNbWloUVhoYnVzeDVubURUSy90dU96bFpw?=
 =?utf-8?B?MXBUUHVIUXZsWHY5cGJmdTE3cndKM2dGM2J6NDNEc1daVlJiRDdWOWYwTkFB?=
 =?utf-8?B?WHc5SkpFc3FrYUpLTVRtN3VyMU5ub3BFYnRRSTZURlNINnY3VFg0SEJrM3RE?=
 =?utf-8?B?VVNMNXRmc2FrNm1PeFhqbENFSjBUZlNwNmZhMndiVjl6V2NXNFVUMDR1OWR1?=
 =?utf-8?B?L0RSUUlxZEYvallxeVN3TXd4UVZlOGpIVFJVWVo1YUtNbDRaSzdDamlIaDR0?=
 =?utf-8?B?RGhBYU0rdjVyWjBnOFdYY25rTWwwRDU2aStjQVRQYmpycFkyWmhVV1dVTlhN?=
 =?utf-8?B?WXZvSE9UMmFncFVaRU81cDVVeHZ6NHVxdXZja285anpvL1BtTWNQa3hraEJ1?=
 =?utf-8?B?UTNoUkdXOEhGQW5jT2VRK0NnSTFiendSbHJzdzdIS2trUHUyQUl0WGxtcDBz?=
 =?utf-8?B?QVZOWjFwL0FXV0I4WnJxMm04S3BXMDRuZ0k0dHRkM3JPV1hYYjJ4TW9IcG85?=
 =?utf-8?B?V3JJdFcvN3JzdEFtQ0F1YWFFQTBlVUxUcWdnZTZhbDlWVGVpclFJZFhjZ1Zu?=
 =?utf-8?B?TFFOSVRoNElobjZVSUwzSTgwVGFsY1NzU3U3b0NVbVZhMjQwNitBQWFJNURo?=
 =?utf-8?B?TUp1UlBkb0FPSFQ3eDdybUFBeTVWVDZrV2pDbUFiY0FmeUlmUEdaSmNYdFVj?=
 =?utf-8?B?ZlB1UU1Wd1FUVURoMFRJUVp2NWdjVDViTUVLLzZhS2lTZHNYRFhoZWRXYVdn?=
 =?utf-8?B?eGd2enVWZzJIREhXTDRNSzBKNmNESG5NN0paZzFoSktHUTF5S0FIL2xLRS9U?=
 =?utf-8?B?YzUyeUFNLzlkV1FXSmhmbjlwZWhaMUpGY0J6ckN1VXdsRU1EbmFudHRhMjBn?=
 =?utf-8?B?M0QrYm5jUUtZZ1B2VEw0M2VsWGRlTFpLMlE5Zk92MzZDN1JHQnZmQ3BhdXA4?=
 =?utf-8?Q?AJJJBWFbhZGmCnKUfrvRvge53vLTMorryN29lx8orvGqv?=
X-MS-Exchange-AntiSpam-MessageData-1: y7RnQ4gouXmR6A==
X-Exchange-RoutingPolicyChecked: Ah5qP0lVfbIF1Wjdby+DuBM5u0wUbriu6J2XQhKtOKVQIo8LE76MVV+F7mUOpKfJcZQmVAlPTKhktKLo7yRgJEwjFJUg5sbIlQueEZgwJ7xQ7Ur5v9ryiJwICvQZyQTM29XZDYcSCTYIGCbbtuBq+luuoK4FPheS3GWF4Blw8w30LJaRYcoxFR5K0C9mhJuthCaA9cw+BDM7RA0BRSlzT1vifBPXyYoUV1LW94Q6GhWT5JL4RY8fgyTP608qaReZiHggq9Yw8DKQ4jps1+oSyjKd92WMNWTjHfT+nyFDDmojjXDNIPzufZ2aYzAkFMRBMK0Cpa9py1MIMSSZXRmEnA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 51416862-3976-41b0-439a-08debfd7df4f
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2026 12:18:22.0388 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0UxqpX5nUGyGZ+DzlCKnVIMm978dK+yNkLpO3MXgprBOp6PVNoj0X6CyJwUyG18u52/H7fdB4e0Fjh+KB3yaqq5EnbqjCu0juXsDF5PYJN5mesOZrDnrl34OenAqJSvs
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7521
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,lists.freedesktop.org:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 5E34E61F234
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 01-06-2026 10:55, Manna, Animesh wrote:
>
>> -----Original Message-----
>> From: Dibin Moolakadan Subrahmanian
>> <dibin.moolakadan.subrahmanian@intel.com>
>> Sent: Wednesday, May 27, 2026 12:48 AM
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Manna, Animesh <animesh.manna@intel.com>; Shankar, Uma
>> <uma.shankar@intel.com>
>> Subject: [PATCH v4 02/13] drm/i915/display: Switch DC3CO enable from
>> standalone bit to DC level encoding
>>
>> On platforms prior to xe3, DC3CO was controlled via a standalone enable bit.
>> Starting with xe3, DC3CO is encoded as part of the existing
>> DC_STATE_EN_UPTO_DC* field.
>>
>> No functional change, as DC3CO is not enabled on platforms prior to xe3.
>>
>> Changes in v2:
>> - Update commit header (Uma Shankar)
>>
>> Signed-off-by: Dibin Moolakadan Subrahmanian
>> <dibin.moolakadan.subrahmanian@intel.com>
>> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display_power.c      | 6 +++---
>>   drivers/gpu/drm/i915/display/intel_display_power_well.c | 4 ++--
>>   drivers/gpu/drm/i915/display/intel_display_regs.h       | 2 +-
>>   drivers/gpu/drm/i915/display/intel_dmc_wl.c             | 2 +-
>>   4 files changed, 7 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
>> b/drivers/gpu/drm/i915/display/intel_display_power.c
>> index 751e6b7d4a29..c70971ffd9f0 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>> @@ -267,7 +267,7 @@ sanitize_target_dc_state(struct intel_display *display,
>>   	static const u32 states[] = {
>>   		DC_STATE_EN_UPTO_DC6,
>>   		DC_STATE_EN_UPTO_DC5,
>> -		DC_STATE_EN_DC3CO,
>> +		DC_STATE_EN_UPTO_DC3CO,
>>   		DC_STATE_DISABLE,
>>   	};
>>   	int i;
>> @@ -999,10 +999,10 @@ static u32 get_allowed_dc_mask(struct
>> intel_display *display, int enable_dc)
>>
>>   	switch (requested_dc) {
>>   	case 4:
>> -		mask |= DC_STATE_EN_DC3CO | DC_STATE_EN_UPTO_DC6;
>> +		mask |= DC_STATE_EN_UPTO_DC3CO |
>> DC_STATE_EN_UPTO_DC6;
>>   		break;
>>   	case 3:
>> -		mask |= DC_STATE_EN_DC3CO | DC_STATE_EN_UPTO_DC5;
>> +		mask |= DC_STATE_EN_UPTO_DC3CO |
>> DC_STATE_EN_UPTO_DC5;
>>   		break;
>>   	case 2:
>>   		mask |= DC_STATE_EN_UPTO_DC6;
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> b/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> index 2f0d0a77c1a2..611f784d8a7a 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> @@ -772,7 +772,7 @@ static u32 gen9_dc_mask(struct intel_display
>> *display)
>>   	mask = DC_STATE_EN_UPTO_DC5;
>>
>>   	if (DISPLAY_VER(display) >= 12)
>> -		mask |= DC_STATE_EN_DC3CO | DC_STATE_EN_UPTO_DC6
>> +		mask |= DC_STATE_EN_UPTO_DC3CO |
>> DC_STATE_EN_UPTO_DC6
>>   					  | DC_STATE_EN_DC9;
>>   	else if (DISPLAY_VER(display) == 11)
>>   		mask |= DC_STATE_EN_UPTO_DC6 | DC_STATE_EN_DC9;
>> @@ -1022,7 +1022,7 @@ static void
>> bxt_verify_dpio_phy_power_wells(struct intel_display *display)  static bool
>> gen9_dc_off_power_well_enabled(struct intel_display *display,
>>   					   struct i915_power_well
>> *power_well)  {
>> -	return ((intel_de_read(display, DC_STATE_EN) &
>> DC_STATE_EN_DC3CO) == 0 &&
>> +	return ((intel_de_read(display, DC_STATE_EN) &
>> DC_STATE_EN_UPTO_DC3CO)
>> +== 0 &&
>>   		(intel_de_read(display, DC_STATE_EN) &
>> DC_STATE_EN_UPTO_DC5_DC6_MASK) == 0);  }
> Both DC_STATE_EN_UPTO_DC5_DC6_MASK and DC_STATE_EN_UPTO_DC3CO value is matching which will impact fine granularity to control DC3co.
> Only enabling Dc3co or enabling with DC5/DC6 may be an issue.

Thanks for the review.
Since the DC3CO enable value is 0x3,
DC_STATE_EN_UPTO_DC3CO and DC_STATE_EN_UPTO_DC5_DC6_MASK evaluate to the same value.

That said, DC_STATE_EN_UPTO_DC5_DC6_MASK can be renamed
to DC_STATE_EN_UPTO_DC3CO_DC5_DC6_MASK to better reflect the bits covered by the mask.

I assumed DC3CO-only enablement would be mainly for validation purposes.
Would it be okay to handle that in a follow-up?

>
> Regards,
> Animesh
>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h
>> b/drivers/gpu/drm/i915/display/intel_display_regs.h
>> index 4321f8b529da..680e7dfdcf1b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
>> @@ -3070,13 +3070,13 @@ enum skl_power_gate {
>>   /* GEN9 DC */
>>   #define DC_STATE_EN			_MMIO(0x45504)
>>   #define  DC_STATE_DISABLE		0
>> -#define  DC_STATE_EN_DC3CO		REG_BIT(30)
>>   #define  DC_STATE_DC3CO_STATUS		REG_BIT(29)
>>   #define  HOLD_PHY_CLKREQ_PG1_LATCH	REG_BIT(21)
>>   #define  HOLD_PHY_PG1_LATCH		REG_BIT(20)
>>   #define  DC_STATE_EN_UPTO_DC5		(1 << 0)
>>   #define  DC_STATE_EN_DC9		(1 << 3)
>>   #define  DC_STATE_EN_UPTO_DC6		(2 << 0)
>> +#define  DC_STATE_EN_UPTO_DC3CO		(3 << 0)
>>   #define  DC_STATE_EN_UPTO_DC5_DC6_MASK   0x3
>>
>>   #define  DC_STATE_DEBUG                  _MMIO(0x45520)
>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
>> b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
>> index b007343721e1..ab4e0e9573df 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
>> @@ -267,7 +267,7 @@ static bool intel_dmc_wl_check_range(struct
>> intel_display *display,
>>   	 * the DMC and requires a DC exit for proper access.
>>   	 */
>>   	switch (dc_state) {
>> -	case DC_STATE_EN_DC3CO:
>> +	case DC_STATE_EN_UPTO_DC3CO:
>>   		ranges = xe3lpd_dc3co_dmc_ranges;
>>   		break;
>>   	case DC_STATE_EN_UPTO_DC5:
>> --
>> 2.43.0
