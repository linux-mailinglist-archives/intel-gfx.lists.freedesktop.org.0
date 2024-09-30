Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F6DB98A9BF
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2024 18:27:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B75810E545;
	Mon, 30 Sep 2024 16:27:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kD8woeF1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BECA110E545
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Sep 2024 16:27:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727713661; x=1759249661;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=bWfbE09SYi39GwAgEzSg6+K9lU+DLDZvlh/uZei8Vdc=;
 b=kD8woeF1QNJ6Q/02FTTYFY/B/WFegiZSL1Q3Wc8IC66djZLEiZferTEH
 4ebss4EBbR/Cj0Wvi+0kYU2fLNl1sw1EdehYLaMXCxVhRFBSd7KD2+hJ2
 DYGTQCfwnxWuvOVFuN4NyVhRwuu06Ti0qYuaVaE+V1FGG+g/1oG0kfjCO
 8uw4pvIy7L9vbRCY84FS4Pr/2YIfkm5MxdtGvjc4Ong/n8FSoro+gGKNL
 7ioOWCpyLtV6eI47GMiFGEuFEHuIhdyLeqMp8ahsU+Im0hsFEoOYoT7qI
 wIpkqrpLsevupUBD6Ng3KuMyD5I6jzBr4579mQz+8Zy2DweU/tUGxKbsI w==;
X-CSE-ConnectionGUID: qpVMS5zYQD6bHd4uJRkpQw==
X-CSE-MsgGUID: xyGqWUsnR0SFcr4KTCVhBA==
X-IronPort-AV: E=McAfee;i="6700,10204,11211"; a="38203293"
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="38203293"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 09:27:39 -0700
X-CSE-ConnectionGUID: K3tpElo6S4W+/9de4UM7fA==
X-CSE-MsgGUID: O8XyHSmiSoaUzPnv8JtG1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="104182742"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Sep 2024 09:27:38 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 30 Sep 2024 09:27:37 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 30 Sep 2024 09:27:37 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 30 Sep 2024 09:27:37 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.43) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 30 Sep 2024 09:27:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=e+x/jpoKiqX63X3CTMef8+NSaS/X5jPym73k5q/H58rd9o3m/LPsTqIBsjXCx+QXHzUrdFg3prH4ZU6i9/LJa/5xDYGVAhg8zKGoCd7S0pddTI+l2XsCE8dzFb3ZL0/isggUCd+I4T4/i6VG7xK1qPVT2+bxwwfG6gT8rslpwBEBkHVVl5P1j1FLGePk3vcKPDWo18wNO2tYzb5uS7acbGfM92fLcKzNHgDYMPnal5goaHXHHHSICIcYMz44dyu6H8RTeHC4C1SkOybVLUMZS6L3GfgizoM/XdQFd3NcU/RHSwnhcCgDw6EW5taLB0atjWK+RrjLZ2OQqyLrFJULAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c5NPHMYKnd2TA9xG8miI1sLyLhBVW37hpnBQdLt14LM=;
 b=wYTghRoXsCUspjiBW9JmjTTMe5UTnT/nB+6qtZg8nxLiSwGLd+vuCiqfPWIPKNu5Tsjk2drV9UFSYOTO8zrTA9yRE+mAFKTQLO79gThextxl+MGhhsX3a0YuJBhJrZrf5Putnq9tCUFKzFBZf+yJnwN5c0sVrNuMrMBTsA58c6bJiw31mVtf0B0lDpDp6Zy8zdDefkV6G8tvFoPexSCQoqWAbJmCv4fnBeyRy6G55u1vOJ5hcRWGjwVBmKCtcb9aa68TdfaqxIy1QMIKVWC1/RflA/dgdsm50AzxI/Pcuj4OrWS8kqz+urqMnqqkJAVOa0SqGN1IazxHyubaORTiAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA3PR11MB7584.namprd11.prod.outlook.com (2603:10b6:806:305::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8005.26; Mon, 30 Sep
 2024 16:27:25 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.8005.024; Mon, 30 Sep 2024
 16:27:24 +0000
Message-ID: <b8c94dec-2033-4f73-a496-b853f5356b36@intel.com>
Date: Mon, 30 Sep 2024 21:57:17 +0530
User-Agent: Mozilla Thunderbird
Subject: =?UTF-8?Q?Re=3A_=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_Ultrajoiner_?=
 =?UTF-8?Q?basic_functionality_series_=28rev13=29?=
To: <intel-gfx@lists.freedesktop.org>, Patchwork
 <patchwork@emeril.freedesktop.org>, Stanislav Lisovskiy
 <stanislav.lisovskiy@intel.com>, <tejasreex.illipilli@intel.com>
References: <20240927152241.4014909-1-ankit.k.nautiyal@intel.com>
 <172770604099.1136814.5579382544001729579@2413ebb6fbb6>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <172770604099.1136814.5579382544001729579@2413ebb6fbb6>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0034.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:81::8) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA3PR11MB7584:EE_
X-MS-Office365-Filtering-Correlation-Id: f388e4d2-d415-4018-b8ca-08dce16cc41f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Yjl2a1NRWDFBSjdZVUM1MUVkb0FMQ1YyaXVvU2JONWNseVJQTkNRZTdrdEQz?=
 =?utf-8?B?L0hlakFPMnQ3V1NtNjRmcE9HUDVmb2hVcVQwNFEwa2RaVDVzNGxxWWhRb1Va?=
 =?utf-8?B?YVQ1OGpGdW43TXc0TzBmSHo4UXYzRVM3cHJod1RQTGhFaStWWktPMnF4eHNt?=
 =?utf-8?B?MzViQkpuMUF5d1o1ZDN5OHg4eHFuRFh0L0JMZ0tIcVV6S3RBNVNZWkxhM21C?=
 =?utf-8?B?NnBzWi8zOVFhVCs5R1BmOVZDTzB5c0hxbFl0RXo5MUNPRVgwL3dLVGMyR0ZR?=
 =?utf-8?B?OC85dFh4QzNEOWQ5NDJiSGx1Rkx2a0JldFJaeGpGZE04bEFlb1pSckVwNDRl?=
 =?utf-8?B?dWl3SXk0bHhUVGFqeExpRTVKdWU1UGM5K2RTVFZ3Mmh3MitkM2htbnFXMEkw?=
 =?utf-8?B?NlBGSEJHTTlGaDJ5anpuWDQybHh4TWJqZStiQk9zK3NDb3Vud3NOTlpsVDYv?=
 =?utf-8?B?eVlLbzN2VCsyQ0JvMmFkSnlUR3ZBVkxwMDlQN0RMM3NVbnRTdDdhdUtuQUVn?=
 =?utf-8?B?cTRtblRoM3A2b0xkdEo1TnZwdWxVL3VqaENzUDY5alF2M2xrMjh6Z00vN3RE?=
 =?utf-8?B?VWR6M09zZ2lCc0ZsM0Q1NDdENzJHbnIxQUNKMXUzcGRyUkhpUm5XaUViVmJG?=
 =?utf-8?B?UlZhYkVDT3FISy8wZkdwc0dBcDluUjJXbVVxM0RwV3hCcUs4bVlVQ29jUXJP?=
 =?utf-8?B?NksySGlrOGppLzZBRmM2T1FYVzBYZ3ppUnRqS01RelprVUgzbFdyRW1XTk5U?=
 =?utf-8?B?NG92Q3gvVjk2ZUdhWEcvc2c4TkcyN3hqcDVpVjlUWmVZcndudDdUZVZEZW5V?=
 =?utf-8?B?eGlSa2xiNHFaNTBhaURWZDluQ3E0NmF2ZzJkNlRKa2U0NXFFa21VdXVSNHRW?=
 =?utf-8?B?WUl5MjN3bU5zeUVTUUc2ZGdmeittaGRnZ1c0d3BwYlJoN2lkVStaY2dkNHAy?=
 =?utf-8?B?dUdPT3FCV0hsYXBqY1loR1h0OThwVzFFQWk3bFIxbjYxaGpacFYrUkJOT1ZH?=
 =?utf-8?B?MHduOURLUGpIOHB6eTRwNzZUL1dpaU1naWpUNnIzQjU0bEZIK1Uvd2hMWlFP?=
 =?utf-8?B?R0JJeklUclQyYzFmOUVmQXNLb25nd0kxZ3g5T0RkZEs5ZkVYZ0NUbGp5c0pX?=
 =?utf-8?B?Z1FDU1BudlB4M1I5UFpoVDhMdDlRWTlxS0R0SUhoczJVWkFBSldmcWk2bHQ0?=
 =?utf-8?B?VVk5WnZTVjhoVndhemVZUVZGYlowSjRoU2ZyMXhURGlBaGNYMm5PY1JmQWNK?=
 =?utf-8?B?RTdyckpQQjBBK0g1cjRZV0ZuajlMR0ZidTh2QUVxVXJhTGRPVlhHT2dWWXd3?=
 =?utf-8?B?Q0tzZ3BuWTBRcC9ETmNUQmI0YlZhYStPWkRyMnlFZUZBcFRwUm1tUS9tWTJK?=
 =?utf-8?B?VmE3TnR6S1ZZRUxOK2sxSHd0bUNmVUpiRzVRdUFEV090N01Ray9FWHExcUtB?=
 =?utf-8?B?eFgrYkZKUDB6WHcvekxBM3BwUUNRaFA5UHI2VGpBeTNDY3g3U3dVMmlJcytq?=
 =?utf-8?B?NWh1NlVteWR1OGRpZnNvOWxaUVhqYjBJUnBCRWhYY29SUko3emxLTnFka3k0?=
 =?utf-8?B?WFc2UGhQMHM0NlYvelQ1VkNyNXFGdGxhWFBUcjBieDhSaUxHSytGTU1KWWw4?=
 =?utf-8?Q?zCg12cnGGLOXwUqh0lwe5/h3rwaGl+6HrrxQMlYxbcpg=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SWpCeS9sU1ZiWWZFb21wTVlETU1Ja2RseVRIR3QrWW5nOFI3K0kzRk9WSGZ0?=
 =?utf-8?B?TnZ5eVozQjZRZjBCdWpKOTQvZGFVRmRtWkIydEUyVkVnekE0WHFPRGF0QVZV?=
 =?utf-8?B?Vmova3ZsN0dSVmxNQWZZWDZDRUMveHBPcGpHZks3czB4cUROVzF4UE8rcGNr?=
 =?utf-8?B?WDVwcmpSeHI5TWJRSkZpUElUVHRSN1dFNjhtSmdXdXNXcGtXTzY3aU9odEs0?=
 =?utf-8?B?TS8yc2dNSmdicExBV3BqamJCbStTSjdGaHIwVnFOLzNyaldFWnNQb3dJQ0R6?=
 =?utf-8?B?UitNcnBDSTkwajYvelVpK3BUVTJLTjU3c2lHRXFhMFhjMCtSK2tZNW5GQm5D?=
 =?utf-8?B?MndsTVMrM09uMGxsanJxeklmU3ZvOElZaVI0RlFQM1BqanMydVpRUzN1UFVo?=
 =?utf-8?B?Q0o2eWZ5bWw3WHlJZWRTSmpLQ3R2dzk5N0Z0RDBJa3gyZDdzOGNmck9XWjBa?=
 =?utf-8?B?QjArQVQ2aFRrVE5maEhLV2xVRERTeW9JV01NRXRwZytIbTRjb25ndGVCYitS?=
 =?utf-8?B?bm5EQkdHNTdNUGZXKzVzV0xrZ0ZpWDZhT012aCtsWHZOdWc1bHdqd21vUXVw?=
 =?utf-8?B?di9CL0crT0x6dzl6S0xTWndrUE50Mml4VlJpSXRYUEhxRXpQSkFLRnFheXNL?=
 =?utf-8?B?ZkVlWmhvWTRxbHdlQVFJalRIRkZBNDYyLzhJcWhCYkZxUEJycG80TmhIdytx?=
 =?utf-8?B?NGhlS3NOVGVydVA3WGttaWlGM1dnOWZ0ZVViRyszbHJyeS82eDJPY0IyUU8z?=
 =?utf-8?B?WFllVE5TS2NQSFV1L0tPbTNRWXp1YWkwNTVlNXBUdTUrOC9PVGtZSnc2Uk94?=
 =?utf-8?B?MEdHTXhxOTBBTU4yWHNQdnZXalVzVFZTQnd3dG5JbzMzUGNoYmtpb1BCMStF?=
 =?utf-8?B?V1FZVCsra3YxT3FSMFphYlNiT2VNSXFYUzJXVmF0UmEreGFNRnh3bjVQWUIr?=
 =?utf-8?B?THF4a2hOVEowYllNSVlidmNKdmx0amw4L0UrWlc5R05QRlZrKzZCZ01QcDdN?=
 =?utf-8?B?b0I2SFFrSVB1aU9KaGU4SVVSbzlFMGFZQnR1cTFtaGlmMGwySjNHTm9IV2dX?=
 =?utf-8?B?NTVDVkR5eWZIVTdWVGVuZzBjQUxMem0wZDdtWDJtcG1RVnFUWFBQelZGTEdM?=
 =?utf-8?B?WGpvRU9vaW1GZXVOeDJOOHNxZ3NWcm9MeXQ4MUtaQzQwMFU0WTB0RjJabXZ2?=
 =?utf-8?B?ZzJJL0xwS0FTSGduS25kcHNUYTg2NUZmeUJTNVBOTE05bFZkSXUzOGRzSXF5?=
 =?utf-8?B?VnEzYzdZcnNzSXdtZlJobDFENEtlMVlqQWZlZGNkdWluOTNXQ0RSdGxUQXFS?=
 =?utf-8?B?cmFwK2gvQjRCWUMxWG1sUTdOQWY3M3ZtYlZ0VnIvSGJaRkxLdGcydWt6YXBk?=
 =?utf-8?B?TURwY2xTUFZyQUE0MjByem43dWxRbWpIYWtpSjBrUkdaNy9tV3FLMjUrUnNU?=
 =?utf-8?B?NVB1dHE3bzhUNDZraUQzeVlZaXRpdms5Y3EwMUFIY3FJakxkN0lYbXBEejd5?=
 =?utf-8?B?RzRDY1k1d05hUEM3MnB4b051Y09vS1pKRDcrSDQ0Q0pJZnp6aVViTmNQTFNo?=
 =?utf-8?B?SUdiUHpCS3FaL2JjMUxZWG5DNUhnRDBualRnVm9wU2p3Vm8vbWpuTFJUTXRo?=
 =?utf-8?B?NmNONG1pdkNSNXozc2VHV0tCZ3VtOFhsVmluZWk3Z2lFak1qRGV1Q09EVVg4?=
 =?utf-8?B?eThmNDN4b2x4M0NUek1TRytZR1B6cTQrV2hlNmV4UGp3b1R5aDFZR1B5ZjAy?=
 =?utf-8?B?WDRXTnNFYkpsN1ZmYzhaeCsvM2kxdFJBaFdtOUZlUTZsZmVXVjJFVDU3RVIy?=
 =?utf-8?B?QVYwdVh3NE9xcTVuc1VNdzNha28xZHBLN2NTK3pxK3VEUE1aaFFjVlVWekYv?=
 =?utf-8?B?MlhzbjBralZSUHhGaG9XY0ZrSDNYZUtHSVNHOUdQcHJqQzZnc1B4MW9neGh4?=
 =?utf-8?B?UVpnNklmVlJCc045Um4yTTNncFpkcngyczUwbXVLTFI2NEs1b2dzOUVTNlh1?=
 =?utf-8?B?WjNCWXhKUXVUM3FETmFxbXZDeWlLVUVEbVVNQW1xR2t4N1dBMDNlTmYxc3ow?=
 =?utf-8?B?VmlFVWRRVzVacjJNQ2drdGROMnp4c1pqdTZkbllvMVJnZElocmhFdFlCZ1BB?=
 =?utf-8?B?ZlEyTCtWRjdVNWNQZ09heFQ2bWVwdGJmQ1M1YnlLMGQ5NjBLb3o0aVQ2dk0z?=
 =?utf-8?B?S0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f388e4d2-d415-4018-b8ca-08dce16cc41f
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Sep 2024 16:27:24.8761 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UB79RWlWIbWmOLe3goq8yy0PZo1FxP/Te6b6IvhByvWTdem1uHKdpdIV3efovd6xMg5sjtPNfZKpxdPrmslyzHJ2sDTSjSCaJFNrGfEr4ps=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7584
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


On 9/30/2024 7:50 PM, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	Ultrajoiner basic functionality series (rev13)
> *URL:* 	https://patchwork.freedesktop.org/series/133800/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/index.html
>
>
>   CI Bug Log - changes from CI_DRM_15453_full -> Patchwork_133800v13_full
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_133800v13_full 
> absolutely need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_133800v13_full, please notify your bug team 
> (I915-ci-infra@lists.freedesktop.org) to allow them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
>
>     Participating hosts (9 -> 8)
>
> Missing (1): shard-tglu-1
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_133800v13_full:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>  *
>
>     igt@gem_exec_suspend@basic-s0:
>
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-6/igt@gem_exec_suspend@basic-s0.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-7/igt@gem_exec_suspend@basic-s0.html>
>  *
>
>     igt@i915_hangman@hangcheck-unterminated:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk7/igt@i915_hangman@hangcheck-unterminated.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-glk6/igt@i915_hangman@hangcheck-unterminated.html>
>  *
>
>     igt@i915_suspend@basic-s3-without-i915:
>
>       o shard-glk: (PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk6/igt@i915_suspend@basic-s3-without-i915.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk4/igt@i915_suspend@basic-s3-without-i915.html>)
>         -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-glk4/igt@i915_suspend@basic-s3-without-i915.html>
>

Hi Tejasree,

The below issues are not related to the patch series.


Regards,

Ankit


>  *
>
>
>         Warnings
>
>  *
>
>     igt@kms_cursor_crc@cursor-onscreen-512x512:
>
>       o shard-mtlp: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-mtlp-6/igt@kms_cursor_crc@cursor-onscreen-512x512.html>
>         ([i915#3359]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-mtlp-8/igt@kms_cursor_crc@cursor-onscreen-512x512.html>
>         +8 other tests skip
>  *
>
>     igt@kms_rotation_crc@bad-pixel-format:
>
>       o shard-mtlp: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-mtlp-1/igt@kms_rotation_crc@bad-pixel-format.html>
>         ([i915#4235]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-mtlp-2/igt@kms_rotation_crc@bad-pixel-format.html>
>         +8 other tests skip
>  *
>
>     igt@perf@non-zero-reason@0-rcs0:
>
>       o shard-dg2: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@perf@non-zero-reason@0-rcs0.html>
>         ([i915#7484]) -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-4/igt@perf@non-zero-reason@0-rcs0.html>
>         +1 other test fail
>
>
>     New tests
>
> New tests have been introduced between CI_DRM_15453_full and 
> Patchwork_133800v13_full:
>
>
>       New IGT tests (3)
>
>  *
>
>     igt@kms_hdr:
>
>       o Statuses :
>       o Exec time: [None] s
>  *
>
>     igt@kms_lease@lease-invalid-crtc@pipe-d-hdmi-a-2:
>
>       o Statuses : 1 pass(s)
>       o Exec time: [0.0] s
>  *
>
>     igt@kms_plane_alpha_blend@constant-alpha-max@pipe-b-hdmi-a-2:
>
>       o Statuses : 1 pass(s)
>       o Exec time: [0.95] s
>
>
>     Known issues
>
> Here are the changes found in Patchwork_133800v13_full that come from 
> known issues:
>
>
>       IGT changes
>
>
>         Issues hit
>
>  *
>
>     igt@drm_fdinfo@virtual-busy-hang:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg1-17/igt@drm_fdinfo@virtual-busy-hang.html>
>         ([i915#8414])
>  *
>
>     igt@gem_ccs@block-copy-compressed:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-rkl-3/igt@gem_ccs@block-copy-compressed.html>
>         ([i915#3555] / [i915#9323])
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-5/igt@gem_ccs@block-copy-compressed.html>
>         ([i915#3555] / [i915#9323])
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-mtlp-2/igt@gem_ccs@block-copy-compressed.html>
>         ([i915#3555] / [i915#9323])
>  *
>
>     igt@gem_ccs@suspend-resume:
>
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-4/igt@gem_ccs@suspend-resume.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-1/igt@gem_ccs@suspend-resume.html>
>         ([i915#7297]) +1 other test incomplete
>  *
>
>     igt@gem_create@create-ext-cpu-access-big:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-7/igt@gem_create@create-ext-cpu-access-big.html>
>         ([i915#6335])
>       o shard-dg2: NOTRUN -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-11/igt@gem_create@create-ext-cpu-access-big.html>
>         ([i915#9846])
>  *
>
>     igt@gem_ctx_engines@invalid-engines:
>
>       o shard-tglu: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@gem_ctx_engines@invalid-engines.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-7/igt@gem_ctx_engines@invalid-engines.html>
>         ([i915#12027])
>  *
>
>     igt@gem_ctx_persistence@hostile:
>
>       o shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-snb2/igt@gem_ctx_persistence@hostile.html>
>         ([i915#1099])
>  *
>
>     igt@gem_ctx_sseu@mmap-args:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-4/igt@gem_ctx_sseu@mmap-args.html>
>         ([i915#280]) +1 other test skip
>  *
>
>     igt@gem_eio@hibernate:
>
>       o shard-rkl: NOTRUN -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-rkl-6/igt@gem_eio@hibernate.html>
>         ([i915#7975] / [i915#8213])
>  *
>
>     igt@gem_exec_balancer@parallel-balancer:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-rkl-5/igt@gem_exec_balancer@parallel-balancer.html>
>         ([i915#4525])
>  *
>
>     igt@gem_exec_capture@capture-invisible@smem0:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-4/igt@gem_exec_capture@capture-invisible@smem0.html>
>         ([i915#6334]) +1 other test skip
>  *
>
>     igt@gem_exec_fair@basic-pace-share@rcs0:
>
>       o shard-tglu: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-9/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-9/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         ([i915#2842]) +1 other test fail
>  *
>
>     igt@gem_exec_fair@basic-pace-solo@rcs0:
>
>       o shard-rkl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-rkl-6/igt@gem_exec_fair@basic-pace-solo@rcs0.html>
>         ([i915#2842]) +1 other test fail
>  *
>
>     igt@gem_exec_fair@basic-throttle:
>
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-rkl-2/igt@gem_exec_fair@basic-throttle.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-rkl-3/igt@gem_exec_fair@basic-throttle.html>
>         ([i915#2842]) +1 other test fail
>  *
>
>     igt@gem_exec_fence@submit3:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-mtlp-8/igt@gem_exec_fence@submit3.html>
>         ([i915#4812])
>  *
>
>     igt@gem_exec_flush@basic-batch-kernel-default-uc:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg1-18/igt@gem_exec_flush@basic-batch-kernel-default-uc.html>
>         ([i915#3539] / [i915#4852])
>  *
>
>     igt@gem_exec_reloc@basic-gtt-wc-noreloc:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html>
>         ([i915#3281]) +12 other tests skip
>  *
>
>     igt@gem_exec_suspend@basic-s0:
>
>       o shard-snb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-snb1/igt@gem_exec_suspend@basic-s0.html>
>         -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-snb4/igt@gem_exec_suspend@basic-s0.html>
>         ([i915#8213]) +1 other test abort
>  *
>
>     igt@gem_exec_suspend@basic-s0@lmem0:
>
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-6/igt@gem_exec_suspend@basic-s0@lmem0.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-7/igt@gem_exec_suspend@basic-s0@lmem0.html>
>         ([i915#11441])
>  *
>
>     igt@gem_huc_copy@huc-copy:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-rkl-4/igt@gem_huc_copy@huc-copy.html>
>         ([i915#2190])
>  *
>
>     igt@gem_lmem_swapping@parallel-random-verify:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-rkl-5/igt@gem_lmem_swapping@parallel-random-verify.html>
>         ([i915#4613]) +5 other tests skip
>  *
>
>     igt@gem_lmem_swapping@parallel-random-verify-ccs:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-4/igt@gem_lmem_swapping@parallel-random-verify-ccs.html>
>         ([i915#4613]) +4 other tests skip
>  *
>
>     igt@gem_lmem_swapping@verify-ccs:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg1-19/igt@gem_lmem_swapping@verify-ccs.html>
>         ([i915#12193])
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-mtlp-7/igt@gem_lmem_swapping@verify-ccs.html>
>         ([i915#4613])
>  *
>
>     igt@gem_lmem_swapping@verify-ccs@lmem0:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg1-19/igt@gem_lmem_swapping@verify-ccs@lmem0.html>
>         ([i915#4565])
>  *
>
>     igt@gem_mmap_gtt@basic-read-write:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-mtlp-7/igt@gem_mmap_gtt@basic-read-write.html>
>         ([i915#4077])
>  *
>
>     igt@gem_mmap_gtt@hang:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-11/igt@gem_mmap_gtt@hang.html>
>         ([i915#4077]) +1 other test skip
>  *
>
>     igt@gem_mmap_wc@bad-offset:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-mtlp-7/igt@gem_mmap_wc@bad-offset.html>
>         ([i915#4083])
>  *
>
>     igt@gem_pread@snoop:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-rkl-4/igt@gem_pread@snoop.html>
>         ([i915#3282]) +1 other test skip
>  *
>
>     igt@gem_pxp@create-regular-context-2:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-7/igt@gem_pxp@create-regular-context-2.html>
>         ([i915#4270]) +3 other tests skip
>  *
>
>     igt@gem_pxp@protected-raw-src-copy-not-readible:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-rkl-4/igt@gem_pxp@protected-raw-src-copy-not-readible.html>
>         ([i915#4270]) +4 other tests skip
>  *
>
>     igt@gem_pxp@verify-pxp-stale-ctx-execution:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-11/igt@gem_pxp@verify-pxp-stale-ctx-execution.html>
>         ([i915#4270])
>  *
>
>     igt@gem_render_copy@yf-tiled-ccs-to-y-tiled:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-mtlp-2/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled.html>
>         ([i915#8428])
>  *
>
>     igt@gem_set_tiling_vs_blt@tiled-to-untiled:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-rkl-4/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html>
>         ([i915#8411]) +1 other test skip
>  *
>
>     igt@gem_userptr_blits@create-destroy-unsync:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-rkl-3/igt@gem_userptr_blits@create-destroy-unsync.html>
>         ([i915#3297]) +2 other tests skip
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-5/igt@gem_userptr_blits@create-destroy-unsync.html>
>         ([i915#3297]) +1 other test skip
>  *
>
>     igt@gem_userptr_blits@unsync-overlap:
>
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-glk1/igt@gem_userptr_blits@unsync-overlap.html>
>  *
>
>     igt@gem_workarounds@suspend-resume:
>
>       o shard-tglu: NOTRUN -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-7/igt@gem_workarounds@suspend-resume.html>
>         ([i915#12315])
>  *
>
>     igt@gen9_exec_parse@bb-large:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg1-17/igt@gen9_exec_parse@bb-large.html>
>         ([i915#2527]) +1 other test skip
>  *
>
>     igt@gen9_exec_parse@bb-oversize:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-rkl-3/igt@gen9_exec_parse@bb-oversize.html>
>         ([i915#2527]) +3 other tests skip
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-5/igt@gen9_exec_parse@bb-oversize.html>
>         ([i915#2527] / [i915#2856]) +4 other tests skip
>  *
>
>     igt@gen9_exec_parse@secure-batches:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-6/igt@gen9_exec_parse@secure-batches.html>
>         ([i915#2856])
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-mtlp-7/igt@gen9_exec_parse@secure-batches.html>
>         ([i915#2856])
>  *
>
>     igt@i915_pm_freq_api@freq-reset-multiple:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-7/igt@i915_pm_freq_api@freq-reset-multiple.html>
>         ([i915#8399])
>  *
>
>     igt@i915_pm_freq_api@freq-suspend:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-rkl-5/igt@i915_pm_freq_api@freq-suspend.html>
>         ([i915#8399])
>  *
>
>     igt@i915_query@hwconfig_table:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-rkl-4/igt@i915_query@hwconfig_table.html>
>         ([i915#6245])
>  *
>
>     igt@kms_addfb_basic@basic-x-tiled-legacy:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-mtlp-2/igt@kms_addfb_basic@basic-x-tiled-legacy.html>
>         ([i915#4212])
>  *
>
>     igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-1/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs.html>
>         ([i915#8709]) +11 other tests skip
>  *
>
>     igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
>
>       o shard-dg1: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg1-13/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg1-13/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html>
>         ([i915#5956]) +1 other test fail
>  *
>
>     igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-rkl-7/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html>
>         ([i915#1769] / [i915#3555])
>  *
>
>     igt@kms_big_fb@4-tiled-16bpp-rotate-0:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-5/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html>
>         ([i915#5286]) +6 other tests skip
>  *
>
>     igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-rkl-4/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html>
>         ([i915#5286]) +6 other tests skip
>  *
>
>     igt@kms_big_fb@x-tiled-32bpp-rotate-270:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg1-17/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html>
>         ([i915#3638]) +1 other test skip
>  *
>
>     igt@kms_big_fb@y-tiled-8bpp-rotate-90:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-rkl-7/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html>
>         ([i915#3638]) +1 other test skip
>  *
>
>     igt@kms_big_fb@yf-tiled-32bpp-rotate-90:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-4/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html>
>         ([i915#4538] / [i915#5190]) +1 other test skip
>  *
>
>     igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-mtlp-7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0.html>
>         +1 other test skip
>  *
>
>     igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg1-17/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html>
>         ([i915#4538])
>  *
>
>     igt@kms_big_joiner@basic-force-joiner:
>
>       o shard-mtlp: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-mtlp-1/igt@kms_big_joiner@basic-force-joiner.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-mtlp-2/igt@kms_big_joiner@basic-force-joiner.html>
>         ([i915#10656]) +1 other test skip
>  *
>
>     igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc@pipe-b-dp-3:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-10/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc@pipe-b-dp-3.html>
>         ([i915#10307] / [i915#6095]) +132 other tests skip
>  *
>
>     igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-rkl-3/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html>
>         ([i915#12313]) +1 other test skip
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-5/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html>
>         ([i915#12313])
>  *
>
>     igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1.html>
>         ([i915#10307] / [i915#10434] / [i915#6095]) +1 other test skip
>  *
>
>     igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2.html>
>         ([i915#6095]) +61 other tests skip
>  *
>
>     igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-4:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg1-18/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-4.html>
>         ([i915#6095]) +107 other tests skip
>  *
>
>     igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-7/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1.html>
>         ([i915#6095]) +111 other tests skip
>  *
>
>     igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-5/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html>
>         ([i915#7213]) +3 other tests skip
>  *
>
>     igt@kms_cdclk@plane-scaling@pipe-a-hdmi-a-2:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-3/igt@kms_cdclk@plane-scaling@pipe-a-hdmi-a-2.html>
>         ([i915#4087]) +3 other tests skip
>  *
>
>     igt@kms_chamelium_audio@dp-audio:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-7/igt@kms_chamelium_audio@dp-audio.html>
>         ([i915#7828]) +8 other tests skip
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-mtlp-7/igt@kms_chamelium_audio@dp-audio.html>
>         ([i915#7828]) +1 other test skip
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-6/igt@kms_chamelium_audio@dp-audio.html>
>         ([i915#7828])
>  *
>
>     igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg1-17/igt@kms_chamelium_edid@hdmi-edid-change-during-suspend.html>
>         ([i915#7828]) +1 other test skip
>  *
>
>     igt@kms_chamelium_edid@hdmi-edid-read:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-rkl-5/igt@kms_chamelium_edid@hdmi-edid-read.html>
>         ([i915#7828]) +10 other tests skip
>  *
>
>     igt@kms_content_protection@dp-mst-lic-type-0:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-7/igt@kms_content_protection@dp-mst-lic-type-0.html>
>         ([i915#3116] / [i915#3299]) +1 other test skip
>  *
>
>     igt@kms_content_protection@dp-mst-lic-type-1:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-rkl-3/igt@kms_content_protection@dp-mst-lic-type-1.html>
>         ([i915#3116])
>  *
>
>     igt@kms_content_protection@mei-interface:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-rkl-6/igt@kms_content_protection@mei-interface.html>
>         ([i915#9424]) +1 other test skip
>  *
>
>     igt@kms_content_protection@srm@pipe-a-dp-3:
>
>       o shard-dg2: NOTRUN -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-10/igt@kms_content_protection@srm@pipe-a-dp-3.html>
>         ([i915#7173])
>  *
>
>     igt@kms_content_protection@type1:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-4/igt@kms_content_protection@type1.html>
>         ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424]) +1
>         other test skip
>  *
>
>     igt@kms_cursor_crc@cursor-offscreen-64x64:
>
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-6/igt@kms_cursor_crc@cursor-offscreen-64x64.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-2/igt@kms_cursor_crc@cursor-offscreen-64x64.html>
>         ([i915#9197]) +33 other tests skip
>  *
>
>     igt@kms_cursor_crc@cursor-onscreen-512x512:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-rkl-7/igt@kms_cursor_crc@cursor-onscreen-512x512.html>
>         ([i915#11453])
>  *
>
>     igt@kms_cursor_crc@cursor-onscreen-max-size:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-7/igt@kms_cursor_crc@cursor-onscreen-max-size.html>
>         ([i915#3555]) +2 other tests skip
>  *
>
>     igt@kms_cursor_crc@cursor-random-512x512:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg1-18/igt@kms_cursor_crc@cursor-random-512x512.html>
>         ([i915#11453])
>  *
>
>     igt@kms_cursor_crc@cursor-rapid-movement-512x170:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-4/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html>
>         ([i915#11453]) +1 other test skip
>  *
>
>     igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html>
>         ([i915#4103]) +1 other test skip
>  *
>
>     igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-rkl-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html>
>         ([i915#4103])
>  *
>
>     igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-mtlp-2/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions.html>
>         ([i915#9809]) +1 other test skip
>  *
>
>     igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-rkl-3/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html>
>         +34 other tests skip
>  *
>
>     igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-rkl-5/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html>
>         ([i915#9067])
>  *
>
>     igt@kms_dither@fb-8bpc-vs-panel-6bpc:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-4/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html>
>         ([i915#1769] / [i915#3555] / [i915#3804])
>  *
>
>     igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-4/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html>
>         ([i915#3804])
>  *
>
>     igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-rkl-3/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html>
>         ([i915#3804])
>  *
>
>     igt@kms_dp_aux_dev:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-rkl-5/igt@kms_dp_aux_dev.html>
>         ([i915#1257])
>  *
>
>     igt@kms_dsc@dsc-with-bpc:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-rkl-3/igt@kms_dsc@dsc-with-bpc.html>
>         ([i915#3555] / [i915#3840])
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-mtlp-2/igt@kms_dsc@dsc-with-bpc.html>
>         ([i915#3555] / [i915#3840])
>  *
>
>     igt@kms_dsc@dsc-with-formats:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-7/igt@kms_dsc@dsc-with-formats.html>
>         ([i915#3555] / [i915#3840]) +1 other test skip
>  *
>
>     igt@kms_feature_discovery@chamelium:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-rkl-7/igt@kms_feature_discovery@chamelium.html>
>         ([i915#4854])
>  *
>
>     igt@kms_feature_discovery@psr2:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-7/igt@kms_feature_discovery@psr2.html>
>         ([i915#658])
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-rkl-7/igt@kms_feature_discovery@psr2.html>
>         ([i915#658])
>  *
>
>     igt@kms_fence_pin_leak:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-8/igt@kms_fence_pin_leak.html>
>         ([i915#4881])
>  *
>
>     igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-7/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html>
>         +1 other test skip
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-mtlp-8/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html>
>         ([i915#3637])
>  *
>
>     igt@kms_flip@2x-flip-vs-modeset:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-5/igt@kms_flip@2x-flip-vs-modeset.html>
>         ([i915#3637] / [i915#3966])
>  *
>
>     igt@kms_flip@2x-plain-flip:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-4/igt@kms_flip@2x-plain-flip.html>
>         ([i915#3637]) +4 other tests skip
>  *
>
>     igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:
>
>       o shard-tglu: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-2/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-5/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html>
>         ([i915#2122]) +3 other tests fail
>  *
>
>     igt@kms_flip@plain-flip-ts-check@a-hdmi-a1:
>
>       o shard-snb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-snb6/igt@kms_flip@plain-flip-ts-check@a-hdmi-a1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-snb1/igt@kms_flip@plain-flip-ts-check@a-hdmi-a1.html>
>         ([i915#2122])
>  *
>
>     igt@kms_flip@plain-flip-ts-check@b-hdmi-a1:
>
>       o shard-dg2: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-4/igt@kms_flip@plain-flip-ts-check@b-hdmi-a1.html>
>         ([i915#2122]) +2 other tests fail
>       o shard-glk: (PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk5/igt@kms_flip@plain-flip-ts-check@b-hdmi-a1.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk7/igt@kms_flip@plain-flip-ts-check@b-hdmi-a1.html>)
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-glk5/igt@kms_flip@plain-flip-ts-check@b-hdmi-a1.html>
>         ([i915#2122])
>  *
>
>     igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-7/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html>
>         ([i915#2587] / [i915#2672]) +6 other tests skip
>  *
>
>     igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-5/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html>
>         ([i915#2672] / [i915#3555]) +2 other tests skip
>  *
>
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html>
>         ([i915#2672]) +4 other tests skip
>  *
>
>     igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg1-17/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html>
>         ([i915#2587] / [i915#2672] / [i915#3555])
>  *
>
>     igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg1-17/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html>
>         ([i915#2587] / [i915#2672])
>  *
>
>     igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-rkl-4/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html>
>         ([i915#2672] / [i915#3555]) +4 other tests skip
>  *
>
>     igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
>
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html>
>         ([i915#3555]) +3 other tests skip
>  *
>
>     igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html>
>         ([i915#2672]) +3 other tests skip
>  *
>
>     igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html>
>         ([i915#2672] / [i915#3555])
>  *
>
>     igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:
>
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html>
>         ([i915#5354]) +10 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg1-18/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html>
>         +3 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render.html>
>         ([i915#1825]) +37 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-mtlp-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen.html>
>         ([i915#1825]) +3 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-wc:
>
>       o shard-snb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-wc.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-wc.html>
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-fullscreen:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-fullscreen.html>
>         ([i915#3458])
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen.html>
>         +74 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html>
>         ([i915#8708]) +2 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html>
>         ([i915#3023]) +25 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-mtlp-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html>
>         ([i915#8708]) +2 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-wc:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-wc.html>
>         ([i915#8708]) +2 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render.html>
>         ([i915#3458]) +3 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-move:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-move.html>
>         ([i915#5354]) +1 other test skip
>  *
>
>     igt@kms_hdr@bpc-switch-suspend:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-5/igt@kms_hdr@bpc-switch-suspend.html>
>         ([i915#3555] / [i915#8228]) +2 other tests skip
>  *
>
>     igt@kms_hdr@static-toggle-suspend:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-rkl-5/igt@kms_hdr@static-toggle-suspend.html>
>         ([i915#3555] / [i915#8228]) +2 other tests skip
>  *
>
>     igt@kms_invalid_mode@zero-hdisplay:
>
>       o shard-dg1: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg1-14/igt@kms_invalid_mode@zero-hdisplay.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg1-14/igt@kms_invalid_mode@zero-hdisplay.html>
>         ([i915#4423])
>  *
>
>     igt@kms_panel_fitting@atomic-fastset:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-7/igt@kms_panel_fitting@atomic-fastset.html>
>         ([i915#6301])
>  *
>
>     igt@kms_plane_multiple@tiling-yf:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-rkl-5/igt@kms_plane_multiple@tiling-yf.html>
>         ([i915#3555]) +4 other tests skip
>  *
>
>     igt@kms_plane_scaling@intel-max-src-size:
>
>       o shard-glk: (PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk7/igt@kms_plane_scaling@intel-max-src-size.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk5/igt@kms_plane_scaling@intel-max-src-size.html>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-glk4/igt@kms_plane_scaling@intel-max-src-size.html>
>  *
>
>     igt@kms_plane_scaling@invalid-num-scalers:
>
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-6/igt@kms_plane_scaling@invalid-num-scalers.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-2/igt@kms_plane_scaling@invalid-num-scalers.html>
>         ([i915#3555] / [i915#6953] / [i915#8152] / [i915#9423])
>  *
>
>     igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-rkl-7/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a.html>
>         ([i915#12247]) +8 other tests skip
>  *
>
>     igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation:
>
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-3/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation.html>
>         ([i915#12247] / [i915#8152] / [i915#9423])
>  *
>
>     igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-d:
>
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-3/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-d.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-d.html>
>         ([i915#12247] / [i915#8152]) +1 other test skip
>  *
>
>     igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
>
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html>
>         ([i915#3555] / [i915#8152] / [i915#9423])
>  *
>
>     igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers:
>
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-1/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html>
>         ([i915#8152] / [i915#9423]) +1 other test skip
>  *
>
>     igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-c:
>
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-1/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-c.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-c.html>
>         ([i915#12247]) +11 other tests skip
>  *
>
>     igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-d:
>
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-1/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-d.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-d.html>
>         ([i915#8152]) +1 other test skip
>  *
>
>     igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-4/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html>
>         ([i915#12247] / [i915#6953])
>  *
>
>     igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-d:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-4/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-d.html>
>         ([i915#12247]) +18 other tests skip
>  *
>
>     igt@kms_pm_backlight@fade:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-5/igt@kms_pm_backlight@fade.html>
>         ([i915#9812])
>  *
>
>     igt@kms_pm_backlight@fade-with-dpms:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-rkl-4/igt@kms_pm_backlight@fade-with-dpms.html>
>         ([i915#5354]) +1 other test skip
>  *
>
>     igt@kms_pm_rpm@dpms-lpsp:
>
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-rkl-2/igt@kms_pm_rpm@dpms-lpsp.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-rkl-3/igt@kms_pm_rpm@dpms-lpsp.html>
>         ([i915#9519])
>  *
>
>     igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-rkl-7/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html>
>         ([i915#9519])
>  *
>
>     igt@kms_prime@basic-crc-hybrid:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-mtlp-6/igt@kms_prime@basic-crc-hybrid.html>
>         ([i915#6524])
>  *
>
>     igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-rkl-4/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html>
>         ([i915#11520]) +9 other tests skip
>  *
>
>     igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-4/igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area.html>
>         ([i915#11520]) +8 other tests skip
>  *
>
>     igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area:
>
>       o shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-snb2/igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area.html>
>         ([i915#11520]) +1 other test skip
>  *
>
>     igt@kms_psr2_su@page_flip-xrgb8888:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-rkl-7/igt@kms_psr2_su@page_flip-xrgb8888.html>
>         ([i915#9683])
>  *
>
>     igt@kms_psr@fbc-pr-sprite-blt:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-mtlp-2/igt@kms_psr@fbc-pr-sprite-blt.html>
>         ([i915#9688]) +2 other tests skip
>  *
>
>     igt@kms_psr@fbc-psr-no-drrs:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-7/igt@kms_psr@fbc-psr-no-drrs.html>
>         ([i915#9732]) +17 other tests skip
>  *
>
>     igt@kms_psr@fbc-psr2-sprite-blt:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-11/igt@kms_psr@fbc-psr2-sprite-blt.html>
>         ([i915#1072] / [i915#9732]) +1 other test skip
>  *
>
>     igt@kms_psr@fbc-psr2-sprite-render:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-rkl-7/igt@kms_psr@fbc-psr2-sprite-render.html>
>         ([i915#1072] / [i915#9732]) +21 other tests skip
>  *
>
>     igt@kms_psr@psr-cursor-render:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg1-19/igt@kms_psr@psr-cursor-render.html>
>         ([i915#1072] / [i915#9732])
>  *
>
>     igt@kms_psr@psr2-sprite-mmap-gtt:
>
>       o shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-snb2/igt@kms_psr@psr2-sprite-mmap-gtt.html>
>         +73 other tests skip
>  *
>
>     igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-rkl-5/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html>
>         ([i915#9685]) +2 other tests skip
>  *
>
>     igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-rkl-3/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html>
>         ([i915#5289])
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html>
>         ([i915#5289]) +1 other test skip
>  *
>
>     igt@kms_setmode@basic:
>
>       o shard-snb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-snb2/igt@kms_setmode@basic.html>
>         ([i915#5465]) +2 other tests fail
>  *
>
>     igt@kms_tiled_display@basic-test-pattern-with-chamelium:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-4/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html>
>         ([i915#8623])
>  *
>
>     igt@kms_vrr@lobf:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-rkl-3/igt@kms_vrr@lobf.html>
>         ([i915#11920])
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-5/igt@kms_vrr@lobf.html>
>         ([i915#11920])
>  *
>
>     igt@kms_vrr@max-min:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-rkl-7/igt@kms_vrr@max-min.html>
>         ([i915#9906])
>  *
>
>     igt@kms_writeback@writeback-check-output-xrgb2101010:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-7/igt@kms_writeback@writeback-check-output-xrgb2101010.html>
>         ([i915#2437] / [i915#9412])
>  *
>
>     igt@kms_writeback@writeback-pixel-formats:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-rkl-4/igt@kms_writeback@writeback-pixel-formats.html>
>         ([i915#2437] / [i915#9412])
>  *
>
>     igt@perf_pmu@all-busy-idle-check-all:
>
>       o shard-dg2: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-8/igt@perf_pmu@all-busy-idle-check-all.html>
>         ([i915#11943])
>  *
>
>     igt@perf_pmu@rc6@other-idle-gt0:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-rkl-7/igt@perf_pmu@rc6@other-idle-gt0.html>
>         ([i915#8516])
>  *
>
>     igt@prime_vgem@basic-fence-read:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-11/igt@prime_vgem@basic-fence-read.html>
>         ([i915#3291] / [i915#3708])
>  *
>
>     igt@prime_vgem@fence-read-hang:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-rkl-4/igt@prime_vgem@fence-read-hang.html>
>         ([i915#3708])
>  *
>
>     igt@sriov_basic@enable-vfs-autoprobe-on:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-rkl-5/igt@sriov_basic@enable-vfs-autoprobe-on.html>
>         ([i915#9917])
>  *
>
>     igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-4/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html>
>         ([i915#9917])
>  *
>
>     igt@syncobj_wait@invalid-wait-zero-handles:
>
>       o shard-tglu: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-7/igt@syncobj_wait@invalid-wait-zero-handles.html>
>         ([i915#9781])
>
>
>         Possible fixes
>
>  *
>
>     igt@fbdev@unaligned-read:
>
>       o shard-tglu: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@fbdev@unaligned-read.html>
>         ([i915#2582]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-6/igt@fbdev@unaligned-read.html>
>  *
>
>     igt@gem_ctx_engines@invalid-engines:
>
>       o shard-rkl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-rkl-5/igt@gem_ctx_engines@invalid-engines.html>
>         ([i915#12027]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-rkl-1/igt@gem_ctx_engines@invalid-engines.html>
>  *
>
>     igt@gem_exec_fair@basic-none-share:
>
>       o shard-rkl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-rkl-5/igt@gem_exec_fair@basic-none-share.html>
>         ([i915#2842]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-rkl-1/igt@gem_exec_fair@basic-none-share.html>
>         +2 other tests pass
>  *
>
>     igt@gem_mmap_wc@set-cache-level:
>
>       o shard-tglu: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@gem_mmap_wc@set-cache-level.html>
>         ([i915#1850]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-6/igt@gem_mmap_wc@set-cache-level.html>
>  *
>
>     igt@gen9_exec_parse@allowed-single:
>
>       o shard-glk: (PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk7/igt@gen9_exec_parse@allowed-single.html>,
>         ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk4/igt@gen9_exec_parse@allowed-single.html>)
>         ([i915#5566]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-glk6/igt@gen9_exec_parse@allowed-single.html>
>  *
>
>     igt@i915_module_load@reload-with-fault-injection:
>
>       o shard-dg2: ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-8/igt@i915_module_load@reload-with-fault-injection.html>
>         ([i915#9820]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-11/igt@i915_module_load@reload-with-fault-injection.html>
>       o shard-snb: ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-snb4/igt@i915_module_load@reload-with-fault-injection.html>
>         ([i915#9820]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-snb2/igt@i915_module_load@reload-with-fault-injection.html>
>       o shard-tglu: ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-2/igt@i915_module_load@reload-with-fault-injection.html>
>         ([i915#9820]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-7/igt@i915_module_load@reload-with-fault-injection.html>
>  *
>
>     igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:
>
>       o shard-tglu: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html>
>         ([i915#12306]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-8/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html>
>         +40 other tests pass
>  *
>
>     igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>
>       o shard-glk: (PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html>)
>         ([i915#2346]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html>
>         +1 other test pass
>  *
>
>     igt@kms_dirtyfb@default-dirtyfb-ioctl:
>
>       o shard-dg1: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg1-19/igt@kms_dirtyfb@default-dirtyfb-ioctl.html>
>         ([i915#4423]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg1-16/igt@kms_dirtyfb@default-dirtyfb-ioctl.html>
>         +1 other test pass
>  *
>
>     igt@kms_fbcon_fbt@fbc-suspend:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_fbcon_fbt@fbc-suspend.html>
>         ([i915#1849]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-4/igt@kms_fbcon_fbt@fbc-suspend.html>
>  *
>
>     igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1:
>
>       o shard-snb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-snb5/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1.html>
>         ([i915#2122]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-snb5/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1.html>
>         +1 other test pass
>  *
>
>     igt@kms_flip@2x-plain-flip-fb-recreate:
>
>       o shard-glk: (PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk8/igt@kms_flip@2x-plain-flip-fb-recreate.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk3/igt@kms_flip@2x-plain-flip-fb-recreate.html>)
>         ([i915#2122]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-glk6/igt@kms_flip@2x-plain-flip-fb-recreate.html>
>         +3 other tests pass
>  *
>
>     igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2:
>
>       o shard-glk: (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk4/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk2/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html>)
>         ([i915#2122]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-glk8/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html>
>         +3 other tests pass
>  *
>
>     igt@kms_flip@dpms-off-confusion-interruptible:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_flip@dpms-off-confusion-interruptible.html>
>         ([i915#5354]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-1/igt@kms_flip@dpms-off-confusion-interruptible.html>
>         +18 other tests pass
>  *
>
>     igt@kms_flip@flip-vs-dpms-off-vs-modeset:
>
>       o shard-tglu: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_flip@flip-vs-dpms-off-vs-modeset.html>
>         ([i915#3637]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-8/igt@kms_flip@flip-vs-dpms-off-vs-modeset.html>
>         +6 other tests pass
>  *
>
>     igt@kms_flip@plain-flip-ts-check@b-edp1:
>
>       o shard-mtlp: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-mtlp-7/igt@kms_flip@plain-flip-ts-check@b-edp1.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-mtlp-4/igt@kms_flip@plain-flip-ts-check@b-edp1.html>
>  *
>
>     igt@kms_flip@plain-flip-ts-check@c-edp1:
>
>       o shard-mtlp: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-mtlp-7/igt@kms_flip@plain-flip-ts-check@c-edp1.html>
>         ([i915#2122]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-mtlp-4/igt@kms_flip@plain-flip-ts-check@c-edp1.html>
>  *
>
>     igt@kms_flip@plain-flip-ts-check@c-hdmi-a4:
>
>       o shard-dg1: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg1-14/igt@kms_flip@plain-flip-ts-check@c-hdmi-a4.html>
>         ([i915#2122]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg1-14/igt@kms_flip@plain-flip-ts-check@c-hdmi-a4.html>
>         +3 other tests pass
>  *
>
>     igt@kms_flip@plain-flip-ts-check@d-hdmi-a1:
>
>       o shard-tglu: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-9/igt@kms_flip@plain-flip-ts-check@d-hdmi-a1.html>
>         ([i915#2122]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-3/igt@kms_flip@plain-flip-ts-check@d-hdmi-a1.html>
>         +1 other test pass
>  *
>
>     igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt:
>
>       o shard-dg2: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html>
>         ([i915#6880]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html>
>         +1 other test pass
>  *
>
>     igt@kms_invalid_mode@bad-hsync-end:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_invalid_mode@bad-hsync-end.html>
>         ([i915#3555]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-1/igt@kms_invalid_mode@bad-hsync-end.html>
>         +5 other tests pass
>       o shard-tglu: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_invalid_mode@bad-hsync-end.html>
>         ([i915#3555]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-8/igt@kms_invalid_mode@bad-hsync-end.html>
>         +2 other tests pass
>  *
>
>     igt@kms_plane@plane-panning-bottom-right-suspend:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_plane@plane-panning-bottom-right-suspend.html>
>         ([i915#8825]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-4/igt@kms_plane@plane-panning-bottom-right-suspend.html>
>  *
>
>     igt@kms_plane_alpha_blend@alpha-basic:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_plane_alpha_blend@alpha-basic.html>
>         ([i915#7294]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-1/igt@kms_plane_alpha_blend@alpha-basic.html>
>         +1 other test pass
>  *
>
>     igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant:
>
>       o shard-tglu: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant.html>
>         ([i915#7294]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-6/igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant.html>
>  *
>
>     igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers.html>
>         ([i915#12247] / [i915#8152] / [i915#9423]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-10/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers.html>
>         +2 other tests pass
>  *
>
>     igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-d:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-d.html>
>         ([i915#12247] / [i915#8152]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-10/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-d.html>
>         +5 other tests pass
>  *
>
>     igt@kms_plane_scaling@planes-downscale-factor-0-75:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75.html>
>         ([i915#12247] / [i915#3555] / [i915#6953] / [i915#8152] /
>         [i915#9423]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-4/igt@kms_plane_scaling@planes-downscale-factor-0-75.html>
>  *
>
>     igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20:
>
>       o shard-tglu: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20.html>
>         ([i915#12247] / [i915#3558] / [i915#8152]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-6/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20.html>
>  *
>
>     igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-b:
>
>       o shard-tglu: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-b.html>
>         ([i915#12247]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-6/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-b.html>
>         +2 other tests pass
>  *
>
>     igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-d:
>
>       o shard-tglu: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-d.html>
>         ([i915#12247] / [i915#8152]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-6/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-d.html>
>  *
>
>     igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html>
>         ([i915#6953] / [i915#8152] / [i915#9423]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-10/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html>
>  *
>
>     igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html>
>         ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423]) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-10/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html>
>  *
>
>     igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a.html>
>         ([i915#12247]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-10/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a.html>
>         +17 other tests pass
>  *
>
>     igt@kms_pm_dc@dc6-dpms:
>
>       o shard-tglu: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_pm_dc@dc6-dpms.html>
>         ([i915#9295]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-6/igt@kms_pm_dc@dc6-dpms.html>
>  *
>
>     igt@kms_pm_rpm@cursor-dpms:
>
>       o shard-tglu: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_pm_rpm@cursor-dpms.html>
>         ([i915#1849]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-8/igt@kms_pm_rpm@cursor-dpms.html>
>         +9 other tests pass
>  *
>
>     igt@kms_pm_rpm@modeset-non-lpsp:
>
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp.html>
>         ([i915#9519]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp.html>
>         +1 other test pass
>  *
>
>     igt@kms_vblank@ts-continuation-modeset:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_vblank@ts-continuation-modeset.html>
>         ([i915#9197]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-4/igt@kms_vblank@ts-continuation-modeset.html>
>         +47 other tests pass
>
>
>         Warnings
>
>  *
>
>     igt@i915_module_load@reload-with-fault-injection:
>
>       o shard-mtlp: ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-mtlp-8/igt@i915_module_load@reload-with-fault-injection.html>
>         ([i915#10131] / [i915#9820]) -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-mtlp-4/igt@i915_module_load@reload-with-fault-injection.html>
>         ([i915#10131] / [i915#10887] / [i915#9820])
>  *
>
>     igt@i915_pm_rps@basic-api:
>
>       o shard-dg1: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg1-17/igt@i915_pm_rps@basic-api.html>
>         ([i915#6621]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg1-16/igt@i915_pm_rps@basic-api.html>
>         ([i915#11681] / [i915#6621]) +2 other tests skip
>       o shard-mtlp: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-mtlp-4/igt@i915_pm_rps@basic-api.html>
>         ([i915#6621]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-mtlp-6/igt@i915_pm_rps@basic-api.html>
>         ([i915#11681] / [i915#6621]) +2 other tests skip
>  *
>
>     igt@i915_pm_rps@min-max-config-idle:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-10/igt@i915_pm_rps@min-max-config-idle.html>
>         ([i915#6621]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-5/igt@i915_pm_rps@min-max-config-idle.html>
>         ([i915#11681] / [i915#6621]) +2 other tests skip
>  *
>
>     igt@i915_selftest@mock:
>
>       o shard-dg1: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg1-19/igt@i915_selftest@mock.html>
>         ([i915#1982] / [i915#9311]) -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg1-13/igt@i915_selftest@mock.html>
>         ([i915#9311])
>  *
>
>     igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html>
>         ([i915#9197]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-1/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html>
>         ([i915#9531])
>  *
>
>     igt@kms_big_fb@4-tiled-32bpp-rotate-90:
>
>       o shard-dg1: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg1-19/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html>
>         ([i915#4423] / [i915#4538] / [i915#5286]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg1-16/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html>
>         ([i915#4538] / [i915#5286])
>  *
>
>     igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>
>       o shard-tglu: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html>
>         ([i915#12306]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html>
>         ([i915#5286]) +2 other tests skip
>  *
>
>     igt@kms_big_fb@x-tiled-8bpp-rotate-90:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html>
>         ([i915#9197]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-1/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html>
>         +2 other tests skip
>  *
>
>     igt@kms_big_fb@y-tiled-64bpp-rotate-0:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html>
>         ([i915#5190] / [i915#9197]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-1/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html>
>         ([i915#4538] / [i915#5190]) +8 other tests skip
>  *
>
>     igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-3/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html>
>         ([i915#5190]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-2/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html>
>         ([i915#5190] / [i915#9197])
>  *
>
>     igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html>
>         ([i915#4538] / [i915#5190]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html>
>         ([i915#5190] / [i915#9197]) +3 other tests skip
>  *
>
>     igt@kms_big_fb@yf-tiled-32bpp-rotate-90:
>
>       o shard-dg1: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg1-14/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html>
>         ([i915#4538]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg1-12/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html>
>         ([i915#4423] / [i915#4538])
>  *
>
>     igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html>
>         ([i915#5190] / [i915#9197]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-1/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html>
>         ([i915#5190])
>  *
>
>     igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-3/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html>
>         ([i915#12313]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-2/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html>
>         ([i915#9197])
>  *
>
>     igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs.html>
>         ([i915#9197]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-4/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs.html>
>         ([i915#10307] / [i915#6095]) +7 other tests skip
>  *
>
>     igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html>
>         ([i915#9197]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-1/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html>
>         ([i915#12313]) +2 other tests skip
>  *
>
>     igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-1/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc.html>
>         ([i915#10307] / [i915#6095]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-2/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc.html>
>         ([i915#9197]) +5 other tests skip
>  *
>
>     igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-mc-ccs:
>
>       o shard-tglu: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-mc-ccs.html>
>         ([i915#12306]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-8/igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-mc-ccs.html>
>         ([i915#6095]) +12 other tests skip
>  *
>
>     igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:
>
>       o shard-tglu: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html>
>         ([i915#12306]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-6/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html>
>         ([i915#12313])
>  *
>
>     igt@kms_content_protection@content-type-change:
>
>       o shard-tglu: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_content_protection@content-type-change.html>
>         ([i915#12306]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-6/igt@kms_content_protection@content-type-change.html>
>         ([i915#6944] / [i915#9424])
>  *
>
>     igt@kms_content_protection@dp-mst-type-0:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-3/igt@kms_content_protection@dp-mst-type-0.html>
>         ([i915#3299]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-2/igt@kms_content_protection@dp-mst-type-0.html>
>         ([i915#9197])
>  *
>
>     igt@kms_content_protection@lic-type-1:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_content_protection@lic-type-1.html>
>         ([i915#9197]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-1/igt@kms_content_protection@lic-type-1.html>
>         ([i915#9424])
>  *
>
>     igt@kms_content_protection@mei-interface:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-6/igt@kms_content_protection@mei-interface.html>
>         ([i915#9424]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-2/igt@kms_content_protection@mei-interface.html>
>         ([i915#9197])
>       o shard-dg1: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg1-13/igt@kms_content_protection@mei-interface.html>
>         ([i915#9433]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg1-18/igt@kms_content_protection@mei-interface.html>
>         ([i915#9424])
>  *
>
>     igt@kms_content_protection@srm:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-6/igt@kms_content_protection@srm.html>
>         ([i915#7118]) -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-10/igt@kms_content_protection@srm.html>
>         ([i915#7173])
>  *
>
>     igt@kms_content_protection@type1:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_content_protection@type1.html>
>         ([i915#9197]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-10/igt@kms_content_protection@type1.html>
>         ([i915#7118] / [i915#7162] / [i915#9424])
>  *
>
>     igt@kms_cursor_crc@cursor-onscreen-32x10:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_cursor_crc@cursor-onscreen-32x10.html>
>         ([i915#9197]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-4/igt@kms_cursor_crc@cursor-onscreen-32x10.html>
>         ([i915#3555]) +2 other tests skip
>  *
>
>     igt@kms_cursor_crc@cursor-random-512x170:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-10/igt@kms_cursor_crc@cursor-random-512x170.html>
>         ([i915#11453] / [i915#3359]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-5/igt@kms_cursor_crc@cursor-random-512x170.html>
>         ([i915#11453])
>  *
>
>     igt@kms_cursor_crc@cursor-rapid-movement-512x170:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html>
>         ([i915#9197]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-10/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html>
>         ([i915#11453]) +1 other test skip
>  *
>
>     igt@kms_cursor_crc@cursor-rapid-movement-512x512:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-3/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html>
>         ([i915#11453]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-2/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html>
>         ([i915#9197])
>  *
>
>     igt@kms_cursor_crc@cursor-sliding-32x10:
>
>       o shard-tglu: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_cursor_crc@cursor-sliding-32x10.html>
>         ([i915#12306]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-6/igt@kms_cursor_crc@cursor-sliding-32x10.html>
>         ([i915#3555]) +3 other tests skip
>  *
>
>     igt@kms_cursor_crc@cursor-sliding-512x512:
>
>       o shard-tglu: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_cursor_crc@cursor-sliding-512x512.html>
>         ([i915#12306]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-7/igt@kms_cursor_crc@cursor-sliding-512x512.html>
>         ([i915#11453])
>  *
>
>     igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
>
>       o shard-tglu: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html>
>         ([i915#12306]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-7/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html>
>         +4 other tests skip
>  *
>
>     igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-3/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html>
>         ([i915#5354]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-2/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html>
>         ([i915#9197]) +2 other tests skip
>  *
>
>     igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html>
>         ([i915#9197]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-4/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html>
>         ([i915#5354]) +1 other test skip
>  *
>
>     igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html>
>         ([i915#9197]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-10/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html>
>         ([i915#4103] / [i915#4213])
>  *
>
>     igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
>
>       o shard-tglu: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html>
>         ([i915#12306]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html>
>         ([i915#4103])
>  *
>
>     igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
>
>       o shard-tglu: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html>
>         ([i915#12306]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-7/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html>
>         ([i915#9723])
>  *
>
>     igt@kms_dither@fb-8bpc-vs-panel-8bpc:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-1/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html>
>         ([i915#3555]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-2/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html>
>         ([i915#9197]) +2 other tests skip
>  *
>
>     igt@kms_draw_crc@draw-method-mmap-gtt:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_draw_crc@draw-method-mmap-gtt.html>
>         ([i915#9197]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-4/igt@kms_draw_crc@draw-method-mmap-gtt.html>
>         ([i915#8812])
>  *
>
>     igt@kms_dsc@dsc-basic:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_dsc@dsc-basic.html>
>         ([i915#9197]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-1/igt@kms_dsc@dsc-basic.html>
>         ([i915#3555] / [i915#3840])
>       o shard-tglu: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_dsc@dsc-basic.html>
>         ([i915#12306]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-8/igt@kms_dsc@dsc-basic.html>
>         ([i915#3555] / [i915#3840]) +1 other test skip
>  *
>
>     igt@kms_dsc@dsc-fractional-bpp:
>
>       o shard-tglu: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_dsc@dsc-fractional-bpp.html>
>         ([i915#12306]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-7/igt@kms_dsc@dsc-fractional-bpp.html>
>         ([i915#3840])
>  *
>
>     igt@kms_dsc@dsc-fractional-bpp-with-bpc:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-3/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html>
>         ([i915#3840]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-2/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html>
>         ([i915#9197])
>  *
>
>     igt@kms_feature_discovery@dp-mst:
>
>       o shard-dg1: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg1-14/igt@kms_feature_discovery@dp-mst.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg1-14/igt@kms_feature_discovery@dp-mst.html>
>         ([i915#4423])
>  *
>
>     igt@kms_flip@plain-flip-ts-check:
>
>       o shard-glk: (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk5/igt@kms_flip@plain-flip-ts-check.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-glk7/igt@kms_flip@plain-flip-ts-check.html>)
>         ([i915#2122]) -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-glk5/igt@kms_flip@plain-flip-ts-check.html>
>         ([i915#2122]) +4 other tests fail
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_flip@plain-flip-ts-check.html>
>         ([i915#5354]) -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-4/igt@kms_flip@plain-flip-ts-check.html>
>         ([i915#2122])
>       o shard-snb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-snb6/igt@kms_flip@plain-flip-ts-check.html>
>         ([i915#2122]) -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-snb1/igt@kms_flip@plain-flip-ts-check.html>
>         ([i915#10826] / [i915#2122])
>  *
>
>     igt@kms_flip@plain-flip-ts-check@a-vga1:
>
>       o shard-snb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-snb6/igt@kms_flip@plain-flip-ts-check@a-vga1.html>
>         ([i915#2122]) -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-snb1/igt@kms_flip@plain-flip-ts-check@a-vga1.html>
>         ([i915#10826])
>  *
>
>     igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
>
>       o shard-tglu: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html>
>         ([i915#3555]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-7/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html>
>         ([i915#2672] / [i915#3555]) +2 other tests skip
>  *
>
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html>
>         ([i915#3555] / [i915#5190]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html>
>         ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test skip
>       o shard-tglu: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html>
>         ([i915#3555]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html>
>         ([i915#2587] / [i915#2672] / [i915#3555])
>  *
>
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html>
>         ([i915#2672] / [i915#3555] / [i915#5190]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html>
>         ([i915#3555] / [i915#5190])
>  *
>
>     igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling.html>
>         ([i915#3555]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-4/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling.html>
>         ([i915#2672] / [i915#3555]) +2 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc.html>
>         ([i915#8708]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc.html>
>         ([i915#5354]) +12 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@fbc-tiling-4:
>
>       o shard-dg1: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg1-17/igt@kms_frontbuffer_tracking@fbc-tiling-4.html>
>         ([i915#4423]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg1-16/igt@kms_frontbuffer_tracking@fbc-tiling-4.html>
>         ([i915#5439])
>  *
>
>     igt@kms_frontbuffer_tracking@fbc-tiling-y:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-tiling-y.html>
>         ([i915#10055]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-tiling-y.html>
>         ([i915#5354])
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html>
>         ([i915#3458]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html>
>         ([i915#5354]) +10 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu.html>
>         ([i915#5354]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu.html>
>         ([i915#10433] / [i915#3458]) +1 other test skip
>       o shard-dg1: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu.html>
>         ([i915#3458]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu.html>
>         ([i915#3458] / [i915#4423]) +1 other test skip
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-blt:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-blt.html>
>         ([i915#5354]) -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-blt.html>
>         ([i915#2295])
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html>
>         ([i915#3458]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html>
>         ([i915#10433] / [i915#3458])
>  *
>
>     igt@kms_frontbuffer_tracking@pipe-fbc-rte:
>
>       o shard-tglu: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html>
>         ([i915#1849]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-7/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html>
>         ([i915#9766])
>  *
>
>     igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-cpu:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-cpu.html>
>         ([i915#10433] / [i915#3458]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-cpu.html>
>         ([i915#3458])
>  *
>
>     igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move:
>
>       o shard-tglu: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move.html>
>         ([i915#1849]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move.html>
>         +42 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html>
>         ([i915#5354]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html>
>         ([i915#8708]) +11 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html>
>         ([i915#5354]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html>
>         ([i915#3458]) +16 other tests skip
>  *
>
>     igt@kms_hdr@bpc-switch-dpms:
>
>       o shard-tglu: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_hdr@bpc-switch-dpms.html>
>         ([i915#12306]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-7/igt@kms_hdr@bpc-switch-dpms.html>
>         ([i915#3555] / [i915#8228])
>  *
>
>     igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-rkl-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html>
>         ([i915#4070] / [i915#4816]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-rkl-3/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html>
>         ([i915#4816])
>  *
>
>     igt@kms_panel_fitting@legacy:
>
>       o shard-tglu: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-tglu-8/igt@kms_panel_fitting@legacy.html>
>         ([i915#12306]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-tglu-6/igt@kms_panel_fitting@legacy.html>
>         ([i915#6301])
>  *
>
>     igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20.html>
>         ([i915#12247] / [i915#8152] / [i915#9423]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20.html>
>         ([i915#12247] / [i915#9423])
>  *
>
>     igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d.html>
>         ([i915#12247] / [i915#8152]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v13/shard-dg2-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d.html>
>         ([i915#12247])
>  *
>
>     igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25:
>
>       o shard-tglu: [SKIP][450] ([i915#122
>
