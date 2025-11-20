Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38DB5C73F3F
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Nov 2025 13:22:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28EDD10E75B;
	Thu, 20 Nov 2025 12:22:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QEXUuZWt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB48610E760;
 Thu, 20 Nov 2025 12:22:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763641333; x=1795177333;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QAv4QnVDOiwe+uXc5sZXmvK4OYhqSrUet7CcGq8RASI=;
 b=QEXUuZWtHyhuTRFu+n1Ld35nr9DigWJGPEGi9svlqdYRW7yFmP/ddrwf
 5IBmoh64uiEkvAzGj8b+Yj9VUyrDERWYK8hnJxRpJaFbDXWvCCLIBLQLz
 eCY7dgGDXQLeEF4TPGaoinLJEekYTx4hN8OKGQU7RVPFPzuzJejR6v7kn
 cWovEIoECn8xPz06+zdfEI2vlHwsVu6dpDjc7lfJDgVAkwNR9DsiK99RM
 QDOaBNgubTiVR40wcNof7johpSHWeHYpbp39+iGFOY9Kfj8pBQgRwugxm
 5lNJiPMCzLh+tXcFJ07ojhIpAXCvYV32UQWjv7A9ljhNlF+cfHi6reNh6 w==;
X-CSE-ConnectionGUID: 3hvfTu6cSQ6YH7fiIqbF1A==
X-CSE-MsgGUID: 3PX00ufCRqWovUnLMrbgqQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="69563723"
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800"; d="scan'208";a="69563723"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 04:22:09 -0800
X-CSE-ConnectionGUID: 2HOXj7LQT7OPFZXiX+bQ0Q==
X-CSE-MsgGUID: Of1cerMfSXOYmB44CQrAJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800"; d="scan'208";a="191029864"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 04:22:05 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 20 Nov 2025 04:22:05 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 20 Nov 2025 04:22:05 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.5) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 20 Nov 2025 04:22:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J5w4thash7a9991GeAeQBARhnbZCs0aRqsc9uyxMQOKzKSrthmu/8PLolCRKqxYMuAbwfFPbBQlKzIWjd6r0nvXoQG5Od90MUgudxoptDjNm2asCmCvXj2PZ+f2rIgK4c7vaytnEhR6ueOA3I0Fdsm1JId28sOCn21UBVuv9whsM4amfZad9oZVnObkcPh+q+hr8W0QzwnOivf4fpiGEX7qslIogoDX5BJ04Oua+Xb1k2zYesDcJiETnFS6tofvR2k7xO5BWAKaJNbXr6NjPscYbpYQ1aCzZpRZMg8quYnZBKZ3W2p7zIwXpe8OIufQm2CJI34UjFsmEgZbluOsPsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bQNzVVwnj0HwP7+BKjUqcBnwBy/r0Mcbi9tZGjXYhIo=;
 b=H27w4vCO3A26t8k+Ar1x8jojt0rB3LGikiBOVS9eDgLYpq/x4Hbindq9mZMkB34Flpa1Zzn/2Vb5KHYDcB4ZwVsTjtjc5PPmOSOYYj6E20aW0XSaDN+Ki2ks0FcI4Nxv10WJ960ajI+eFywKZ+llcEt4SXmuZjWdLNhbM1bXkbFLNhqkg2K/8QOCNe6IWRNUqFdvli26l5jqrEcsGEVgr4StM2nOzxTB21tLdYL4M75RKKDHHNfLDB+chwWabVITnCiUUvIMky5g273Mtf5CT21TC0oGZXKlx4Uiz/nrxy0OzvCDxRLeH/qgkBq+pFW8mQudFXv+9zJH9FeIPxyXgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA0PR11MB4765.namprd11.prod.outlook.com (2603:10b6:806:9b::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.11; Thu, 20 Nov
 2025 12:22:03 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9298.010; Thu, 20 Nov 2025
 12:22:03 +0000
Message-ID: <e019ac6e-7aa4-474a-9217-d5c2f9c0f223@intel.com>
Date: Thu, 20 Nov 2025 17:51:55 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] drm/i915/alpm: Compute LOBF late after guardband is
 already determined
To: =?UTF-8?Q?Micha=C5=82_Grzelak?= <michal.grzelak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jouni.hogander@intel.com>, <ville.syrjala@linux.intel.com>,
 <animesh.manna@intel.com>
References: <20251119135152.673276-1-ankit.k.nautiyal@intel.com>
 <20251119135152.673276-2-ankit.k.nautiyal@intel.com>
 <f7c6986f-12b8-240c-f49e-1503e5a47c05@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <f7c6986f-12b8-240c-f49e-1503e5a47c05@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0043.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1d6::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA0PR11MB4765:EE_
X-MS-Office365-Filtering-Correlation-Id: 4dae616e-0bae-45f6-2826-08de282f6931
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZXZpcUl1bVlHQndwQkRDMVdSa0YxMXRwRDY3akw2UXdyU0tpZFZFWU5jYXY5?=
 =?utf-8?B?Um1sTDhzMHg3cFAvTWZrWUVleW10ajNvZHRPck0wT0hnYW80U3hPRDc5NkdL?=
 =?utf-8?B?aTlLdzhrc3dPVVRLcVJjRmhNT1RlOXA2MGl1L0c5dU1lSzRCeHVFTXpRNXhj?=
 =?utf-8?B?R1FYZnlhalM5ZkVMY1VxYTllcXUwcGZNZ0lQdk1MQ2FyaVRHSDVtRlh2Rm54?=
 =?utf-8?B?UzhlaG1ZMTY5YmRPbkx2aTZTUXdvem00SDVrbXlUNG9uSFpjQTUva1JsZzUr?=
 =?utf-8?B?U3VqeWhpdTVmZUVzZERXaldmOEhYU2ZtRjg5clhhb2hEdFQ1RVU1KzllbnVE?=
 =?utf-8?B?bWg2Z3lreWpYdVh3eEVGeFp2dUxmVmcxc3dmQUVCS3ZqWDVoNWJJZ1RpZHBZ?=
 =?utf-8?B?Nm52ZzNoelA4QTkwQ1p5MEpkdXhQUUY2aWpaZ0ZwZEYyWktzS0p3ZjZoNFFG?=
 =?utf-8?B?dy9LUGZFWE1XSVU1dHNWKzJuUjRoVjVmWXZyVlR4RjBXTGgxOEwxSjQyNWxG?=
 =?utf-8?B?ZlhiazJoeDNnT2R2blRzYms0dHAxSE83NkVDSU5CNVBzbHJBQ3BnMUdnblJZ?=
 =?utf-8?B?ZE1YMDhubjBlNnN5QjN2T0hXWnRxVlNJRHZXVVVEcjVxYVNsdGFrQlVrKzA0?=
 =?utf-8?B?NDdoNTFKK0JMQXBQWDZjeW9lVmdKbzY3ZEZkbVFXNkV1a1kyVzlzTGdvU3hj?=
 =?utf-8?B?azV3dmRMRVhjL0xGdjhTVUFuZ0FBcitkZVBLcy9KQnJKY3lnbEZ1c0srUi9i?=
 =?utf-8?B?dnk5U3gyT041OWJJRW1Xd2NlTFFpV01sb2FQQ1NNV0l5eDN4T1pEQURETy8w?=
 =?utf-8?B?QUtOT0k3RFRaYXNmVUJjOHpLcEZ0TWJoRDR5eTZUOVpnSmRpZW5qLzFQVlNL?=
 =?utf-8?B?RFN2dDZOcTAxYlJub0dFQjBrNEpwTG83bS96VUhPT1k1TFpGbnpveWVzVDBR?=
 =?utf-8?B?ZVRCQzJLY2hUOW1CYnI0MUE0elBLNWJJUkxMYjNEQ1EzeGFDQS9acmcxd1Ex?=
 =?utf-8?B?NnNzUGFZbDR3UkpSMjhka0FrNE10V3RrN09TOWRlWnlUM3ZvMkhBRk5MaTdp?=
 =?utf-8?B?VkJWWDM5Y3NoaEJiNnpUTXVqVEhueUZ3dnZTK1pyU1VZQ2kyeDZIcmdYNlY4?=
 =?utf-8?B?eTVoTnZxeVZCdlJ5eXpEZUt3VW04VHByTGs0eTRjc25VZS9KeEtGRXlxNUFo?=
 =?utf-8?B?RTI0aGVybDJNbHhoR3EvS3B1UDY4SkZvZm9PR2pVK1dWZjNUckJoTU1qZEdG?=
 =?utf-8?B?Nlg0K2taczFRU0VsSVhISnN2WHJzQVJZSWxhbGdaQWpvUGNUK1Q4UWhPVm9t?=
 =?utf-8?B?enkyK0VvK3NUcUp1enRGOWx1RGNmMDREVVVOaGQ0QlNjWXcxWnVQRTE3NGJ4?=
 =?utf-8?B?a1lDNFlNR3R3NU9pVWMyZmJ3U01vV1g4V3diRW1DNTdJTW5WeXFhYVRWb2Nr?=
 =?utf-8?B?YkNIVC9GMEdJVEhwcE9CcVE5ZkNmNlM0dWp3NjlYaWhXTVBxR25vN3I0YjRH?=
 =?utf-8?B?dG5jb1VnRUp4QWQ4RnJkWXRtTVpwKzRuUEpWVThHTEZjK2FRWHpzbC95YUJp?=
 =?utf-8?B?ZXJuTEl2Q0ZORWR5ZXlsajNZMjdTVVFXbTlXNXBwVUlxUGUxR1VmcUlBN1R1?=
 =?utf-8?B?NldZVEdYTGNPdE1zbjI4WHVYN1ZvaDFQWWM4VzlBRk5uYnRqMk1NZjRvNWFr?=
 =?utf-8?B?NXNNWC8zTW5YUFdzOHRSYnRleGxwMWRDRzRmRTl0TEFwRndXMGpncHdqUzhv?=
 =?utf-8?B?cGtHVVc1WUNJaHRSa25JRWlrSXhMWkd2akVFVVp5YkZPR1M2b3JQeEU4eW43?=
 =?utf-8?B?KzFsWEl4c0Y3cGZYR1BaZG9WNFVWdkpyQVo3dERia1BoZ2xVdGZJN3E2UWVv?=
 =?utf-8?B?Z3RCQnMvT01oUWtYZXN5S01WamNmbUNzZkMzdDF1d0IyMGNtc05nR3FEUzVX?=
 =?utf-8?Q?dWTwMvl9G+MTlqSPTjeE6cp8rgLRXwyJ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NVVMV1BRalg1bnVDK0xORlJhdytnQklpTU5tNjh5SEZKcWxTdHBjZUtmUExa?=
 =?utf-8?B?YzRZOTlIUzlPUkFkekZkSlphTlRJQVpvUExRemtiUC8zRGc3TThzeElGVWpN?=
 =?utf-8?B?SXgyUGpscmZBTHZFMWIxNkZJTmgyNXgyamhCRUMyZjZJeUhVenI0Zjhjb3Zy?=
 =?utf-8?B?dzZiZkJnU2pLcGZUNVR6RDFBQkxlQ09lWWR6SjMxUDgvUVBHalMrTDBDb0sz?=
 =?utf-8?B?WGpxVWd4dDJqWkwxT2dzK01EUFpyc09QcEdJY293WHAyK1JKRzVGaXZtTXRW?=
 =?utf-8?B?ZUN0WVFyclVlZmlBdTFRbGNCbkVwbThhOGIwN1RBUnFZMUxjdnRkQ25rZCt5?=
 =?utf-8?B?NVlIbHlmYWljZythdnk5WlVDSDRUdGxYLzBhcURLUDZTVGdoWU5idXJmSVRp?=
 =?utf-8?B?L3dNdk5EQlA0L1QzNUJTOHhPbTAxaGxsTzRKYW9vM0ZHb21mMVpIbUVPMXpa?=
 =?utf-8?B?VmJTbms3b0ZsNDRLNmpLYlRpRGhETktPRHFqUkZCRm05OTh5dlpDWHRkb2Jt?=
 =?utf-8?B?M2RRYVdydVlyV0Q0SGsyTDAxK1AvTm45T0pNdmhsMlF3QlJHaUZwaitVdHZT?=
 =?utf-8?B?dzNzUGNGZGQ5cWxQRmxKM3FLM0YyalVNc1REOHZTM2Z0OHdOdEtaMFp3b2I1?=
 =?utf-8?B?L1VkS2RTbnJKanpMSHNuTWxjblZuRXNEbEIveUpPTTZIOTRYUWNUK2pmK3Vi?=
 =?utf-8?B?ak9zOTM4eWJzNEp6NmhZQTNTQW8xU1hFWmdmQXQxeDM4N2tLQUZTTm53c1or?=
 =?utf-8?B?NHNBOXBlSkl0YU1YVlNHT09yMFFkdHIxbkRsazlqQ2hHM2tnMk0ra0U5bEUw?=
 =?utf-8?B?RVhVdTVhUEtmVnQwZHlDdkU0U3lYcUZ6MHJyQmcrRTNUcHVXcmExL3J3MWJz?=
 =?utf-8?B?YmhQN3VSWFJtQk9VWVhnRXVqaThRL1pXdkhiMXNBYUpua290RVQ2eWMxUjEv?=
 =?utf-8?B?SUtHZHdaMmJZQ1I0aHAwMkgrZ0pTMFArL1UvYnZFTlFiN0QrTXA0dlVEbVhL?=
 =?utf-8?B?dzM0Mi90MGJ1MXY0Q0QxZFBncUZYS2doaDhUbUswZFVNbFUwK0F6Wm1TZzRt?=
 =?utf-8?B?ZUJUT2xtUG1UN2Rma1E4Zk1CdFE5aXJ3Wm15UWhGK2dlaHZyOWZ4YWcvNVdl?=
 =?utf-8?B?UDhmbkg3NnU4Z1AvVDBjQkFOTEYvbE1zcW5BWGpzbVV2TFZiTzBBbzZ0dmZr?=
 =?utf-8?B?K21qSys0cWZtNU5TeGJtVUtjd3FYMndVYnJJVVZSek5TVHpRbGdvdHBFMGtQ?=
 =?utf-8?B?QlltOFZlZHM5blVOY0dKV3hkam5RZ0dqdG5NeTdUZTJ5d3h6c3dzdFE2aWpz?=
 =?utf-8?B?WmNzUHdEbHRwOXpBRmFOQzBkU2xBV0NtZ2IvLzZUNHhnbzdoeWVvYTgrTmRY?=
 =?utf-8?B?SklrbVZyUUM0OFFoV0hBNHFDd0wyaVJhdjdESnVKYmJiNmZwV09HRlhNUXcv?=
 =?utf-8?B?Z3VRM3FSUy9GMnJncERud2ttNVZuL1JadElUd28vMzgrLytodXhoU2wxVlll?=
 =?utf-8?B?amVJRlB5RUtzbTAyQUNjdElFTlplWjZENDYyeGdJLzROSGRCeGxLelN1NkpX?=
 =?utf-8?B?L01QSTM1V2JkY1FxM1hmaUxBalpPbkVGVCsvc3pCVXd6cWpQd2JmMEdNTkhp?=
 =?utf-8?B?cTExWGJrMklFRllDTVUwcW96Y05MZ2hUNUtlTWlVbFk2MTd1NGhYU2ljN1Zx?=
 =?utf-8?B?WE1BZUNXOE90cFhyRDFhbkJVaERlZ0FmQXVvL2FjNko4b0h6VnVQUDlXTmc5?=
 =?utf-8?B?Qng1T1AxT2hTVFgzWFNrSTg4RUZCNVIyRExNUzVEWHFHU1VMb2V3TEJZV1dz?=
 =?utf-8?B?N2xvTTllbS9aVG10SS8rOUZTYU1OSERYL1dPdWFiZkRqSnNUM1krcTNMeGlQ?=
 =?utf-8?B?MDQyVy9GdEFEaDk1YXBXejlyQXNLZGNiRHY4RzlBU0lobm1yQ2RaRjhiR2NF?=
 =?utf-8?B?YWxzaE9qbzF6Wmx2c1lLa3lPa2lSVnV3Y0RQUDVzUzM0OUVzMTk2VmxkL3Zp?=
 =?utf-8?B?b3ppMVBzWjU4RU9aejFNU1gxck1ZZEdINFE0ek5LM3B3WjdsNyttMG90SHRG?=
 =?utf-8?B?clEwQ0ZSckhOakRTQ0pTZFYvV2dUZk9JRG1iNGVIRE1ZNjFMSWlmTllmbHM5?=
 =?utf-8?B?ZzJXY1FMWnJsVGtTMno0TTUzVEtWMmxYYVEzZFUya2ZyYytYQjQ5OUx1QUpY?=
 =?utf-8?B?Q3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4dae616e-0bae-45f6-2826-08de282f6931
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2025 12:22:03.2877 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EDj6OPHQGRDmp9gAgHZzAyrprTH8dHaifZHxIjB1ZJ2/5lBhYx7QH+SNZzE28R+iTlSkXhjNw7MxUrC/7lIrrkBIwNl1ISLgZkvmk1iE554=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4765
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


On 11/20/2025 2:21 PM, Michał Grzelak wrote:
> Hi Ankit,
>
> On Wed, 19 Nov 2025, Ankit Nautiyal wrote:
>> Currently intel_alpm_lobf_compute_config() tries to account for
>> guardband +SCL requirements during encoder->compute_config() phase,
>> even before guardband is computed.
>> Also, LOBF depends on crtc_state->has_psr which can be modified in
>> encoder->compute_config_late().
>>
>> Account for lobf requirements while optimizing the guardband and add
>> checks for final guardband in encoder->compute_config_late() phase after
>> the guardband and the final state of crtc_state->has_psr are already
>> computed.
>>
>> Use crtc_state->vrr.guardband and crtc_state->set_context_latency for
>> the computation and add more documentation for the dependency of first
>> sdp position, guardband, set context latency and wake lines.
>>
>> v2: Add helper to use min guardband required for lobf.
>>
>> Bspec:71041
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>> drivers/gpu/drm/i915/display/intel_alpm.c  | 63 +++++++++++++++++-----
>> drivers/gpu/drm/i915/display/intel_alpm.h  |  3 ++
>> drivers/gpu/drm/i915/display/intel_dp.c    |  2 +
>> drivers/gpu/drm/i915/display/intel_intel.c |  0
>>
>> [...]
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_intel.c 
>> b/drivers/gpu/drm/i915/display/intel_intel.c
>> new file mode 100644
>> index 000000000000..e69de29bb2d1
>
> Nitpick, but it looks like an empty file named intel_intel.c stepped
> into the patch, which is also seen in the above shortlog. Otherwise,

Oops! I thought I fixed that from last version.

Thanks for catching this.

Regards,

Ankit

>
> Reviewed-by: Michał Grzelak <michal.grzelak@intel.com>
>
> BR,
> Michał
