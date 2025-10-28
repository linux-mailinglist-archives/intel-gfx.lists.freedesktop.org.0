Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3B40C135D4
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Oct 2025 08:48:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B8C610E5A0;
	Tue, 28 Oct 2025 07:48:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NZtSQPEm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49E7410E366;
 Tue, 28 Oct 2025 07:48:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761637717; x=1793173717;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zDyVMh8dYbmY+MCHZJ8g2shqwPhyjKewoo9NCvHceRA=;
 b=NZtSQPEmSLQySmILlZDts6CPuFsD09VK1Hmzp/SjD3s8JCp3zjUG5Yur
 2Z+buq9UzCPylWGcdPFNnc4vyB/Iga6HECAUUgsHJeuQ7hy8odOdn3v7E
 fQC7DGuUnWCN9ZvCZwDHHblYn366GD5LMauKr2ftr550GMq5P/TfQGUoU
 uHbX/4dHBUgi77bTkPuVBSn4J+zGpVZEGuYKnd3Sude5WlirG08hDoi4H
 9mWkSC+RUv1DfOy9XGcL9PYRHC3W0ILtHak6GUcU2Qf76Wv/8zszltTS7
 cJbjPYPUQac316BEOt7yLg9r5TckKZ3a3eZjizLU9AmJEF2+9ZK4/IQW1 A==;
X-CSE-ConnectionGUID: hYF8Hw36TPOXyR2V2tBaKg==
X-CSE-MsgGUID: 9xRHb2xLReeKYOIaroNMLQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="67565981"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="67565981"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2025 00:48:36 -0700
X-CSE-ConnectionGUID: WlpcfeLjR1eBWpCu3k53dg==
X-CSE-MsgGUID: OY4MiNCFQCmZ4gebf098Vw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,260,1754982000"; d="scan'208";a="189634110"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2025 00:48:37 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 28 Oct 2025 00:48:36 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 28 Oct 2025 00:48:36 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.51) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 28 Oct 2025 00:48:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hSES5O/H4HMWLFda9VUoeSRW8e+3Sr7zW/6KAJezgqrh6MWjlrj3WZExS9apbN0I+UMlU2DTFat+ePPRa79OdLwLNmX8afg8RO+Gb6DHoogZd5RnVIWZnBI0AZJlNAe/lmYNKjfz6P8F2zqNWBvgFggNMyEhJhtgsDUfhfHAL6IXTsM6TyIfsfLCRTKi7/r5DvG7L7ACGA65kFbrq6bLu9CGBv7vFHFqwMKFWVasvZHNoAfIMWdXgVS2qmH3txox+K8cJS5DOM9a5tNhj5KEL35xN477zzAQ11cc9SfYYZy4bbUVRR66ddpIpWpiZQpgi39GtTmS8H+EFV6Kb10w+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mHR1AEYFlvZ/pjTMnfkKgV8acWXezsjxVT3Brt/MAKU=;
 b=EKzQE+F5ESaR8ez3/N623ql0woeUp/qyohm+Mu78VW8DcDuJaFKyQP/PyiCtbQ/MA+E3m7Mj4d15v2NmpZUvsKXaO5j/gzhUDBqkDFVF30evRC9ETpOgdFMKx4LPBQ8GWtraZeT7vhSO37bIWX/wZFYtoIT9mxBeZnuQiFXDuEU20FD/OYLWbCyfsEmmeOQT3BZOUDKv0DOVp3ElMUAVzwvfbDVgg9C5vUrS9VYtBSL15R8q1rtxFXDoJUtKSJP2GB2E7dyDYu80pHYHqKcL+0LPJfbXGrS+TJ2UxP7RTY2/VXir26iNSrhRgLun6TGVo9IuDW/8FzLqdRpVTdklkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by PH0PR11MB4935.namprd11.prod.outlook.com (2603:10b6:510:35::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.19; Tue, 28 Oct
 2025 07:48:33 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%6]) with mapi id 15.20.9253.017; Tue, 28 Oct 2025
 07:48:33 +0000
Message-ID: <b1e53257-e9aa-4a2d-aaa6-9757498aea32@intel.com>
Date: Tue, 28 Oct 2025 13:18:26 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 04/26] drm/i915/cx0: Move the HDMI FRL function to
 intel_hdmi
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <ankit.k.nautiyal@intel.com>, <uma.shankar@intel.com>,
 <gustavo.sousa@intel.com>, <lucas.demarchi@intel.com>
References: <20251024100712.3776261-1-suraj.kandpal@intel.com>
 <20251024100712.3776261-5-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <20251024100712.3776261-5-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0034.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:81::8) To IA0PR11MB7307.namprd11.prod.outlook.com
 (2603:10b6:208:437::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7307:EE_|PH0PR11MB4935:EE_
X-MS-Office365-Filtering-Correlation-Id: 6ee8097f-85ee-408b-fa5e-08de15f664f6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eEtFMTNTa2RKczluZzlPVUNSTXAyNkcxLzVWNng3YmxJWG5KaEROSWhKNkdW?=
 =?utf-8?B?T3ZnT1Vydi9JRTJ3N1dhV0RCMkpnL29XOGRqcGhRcTA5cWJWQW5tQ3FSc0N5?=
 =?utf-8?B?RytQbTM1Q0trcHd5WWYvNUNCMXZNM1VSN1lveitSRDRQdWp0R0l1UkcxbUFv?=
 =?utf-8?B?Y2lyZ0Y4QkRZcjRxaUZZZHhGUFYwQ2xaODMzc0FrNndQRWFKdmN3QTdtZE5m?=
 =?utf-8?B?WEFSbTB5VzlrcWhWdmJMU2hoQnFBM1J2M3RZSThidEpISnRXUk9ucGRUbFBj?=
 =?utf-8?B?c3F3dkcwc3RHaTlvdTdibkdxRDFZekMxeXo1UTNHWG1aTVBaaDY4THB4LzRk?=
 =?utf-8?B?eGFibWNnSXBuZGhNR05xZkVvTzQ2eFJRT2svUmZNb0R3RGs2b1BsbjluaXZv?=
 =?utf-8?B?M09wVEZqemhSemxGbmRRbTc1c1BPaUdLb1k1MUFXRTZqdkVFTXh3dDdwQ1k1?=
 =?utf-8?B?anhWblBieTZwdTZsRWpSMk5qSkVxSXNXTlNjVlZQTXJSNUxiT2JjMFlrdTRV?=
 =?utf-8?B?bUV2T1pGeEhJVStGM3c3TmV2TG5nOVQ0OUZXNUpTcThhTGNFZE16Q1VnSVBS?=
 =?utf-8?B?ZVpvT2YrVU5Jay93M3FGUXdFb0M5VU1uS1JCZnVSSFBDS0V0V0tVcndLQ1Jh?=
 =?utf-8?B?b0VuWmhBT3l3WVQ1eDA5THdXajZ2UmlnZlVVZGRZdGxBSDhDc0tVTmNSMGc2?=
 =?utf-8?B?U2lteUFoYTVJZVMwNDRhbHE4cDk4TFBkQ2tTYXRHMm5adWRoODlzZnZZNHVR?=
 =?utf-8?B?MkUxY05zcVYvcjJsZno3dlN4QW1MeXJCeWVwWDZEL3lTWVFNZTRGU2JqNTRy?=
 =?utf-8?B?M2lOZTVMYmVXWm5FbjFYR3VBNjlSeE9OR2dBQmFmY0xnZytZOHg4RGM5WDJ1?=
 =?utf-8?B?L09tZUtHSmpMT0o1U1pxTGdLU3pPZG9ndkpvY3FDYysyWStya2NzcXpvbk1R?=
 =?utf-8?B?QjF1ekN4N21HOEtWSTdXQ3dOMVNOaG5JY24ra3B4a0FaaCtGU1E5SHBPZjJq?=
 =?utf-8?B?ZW1UZ2ZIbVl3aU0za0FZSEhxWTB3M0lLOXlOdjIycEtNcWlXQ1FEVVpVT1Bj?=
 =?utf-8?B?M0hZRkpzdUJKOXBTQ3BwSjgrWG1ta09iWCs0RkFPcXhBNm5semFKM0I4am9G?=
 =?utf-8?B?MzZ1dnBkZTBUUmR2aTd3dFVOaDlFeEVjWjgzQ3pZNEdnajE2U3daaDA0MUFU?=
 =?utf-8?B?UU92OU15SWdkMlp0OEEreVBSUjJBTmhQbE15eVNHTDdYNFJWM2FxNE41TXBF?=
 =?utf-8?B?UVljSkNRV1RERkRKcmtVZFVmQzVnSjFLN0VhRFdPZUdDV1pOVlUwYkVWUjNG?=
 =?utf-8?B?TWRRSmVGY1kzajEzb1pySFBBdnJiMlhWckxOOGU3aGt2TU9JRk9Sb0d1eHVU?=
 =?utf-8?B?L3lwZU5hUlRJZGtXSTd1SWQ0aVhNM2VvdTlmZko1aGt1TTNmdXJhd3IrWGhu?=
 =?utf-8?B?TzVqQTFkMnNybzBaa3Nsd3Nxb2JaZDlvY3pWUXZlazk4U2FzY0tkRXk1RFRG?=
 =?utf-8?B?alFBSXpHSFBycmZ4TmNDK05wQ0lXMVZkcGs4T1JZbW4rMGVrTjlsTysyWVcx?=
 =?utf-8?B?ejdsSE9XZkxLSEtyeW85SmkvWlU5STUyYWFSWFFHTU5qWEpScWdYRXNYVUxE?=
 =?utf-8?B?SFdFMTcwUTRzcGV6NW85Q3cyYlFMeEtFZTRYZDkyK1dMbEtuYmt1TXRtNVdl?=
 =?utf-8?B?WmE5a01HYlJOYk1EcldPV2F1S0V4NEwzWWNtQ3dOVHQ5MGlPZlhOalplOGZs?=
 =?utf-8?B?T3FBcHRTNFZram82Wkh1aUYwTUVxZ1oxUGljRHcvd2x0T3BjVjBsS0JQZjY1?=
 =?utf-8?B?YXlaM2FZT0VRRUZqYnVkK2E3S1JUNCtTMHJSZUZkNEdPdUlrWWFKdUpQOUJr?=
 =?utf-8?B?OTRNWWJDQWM1bUZOSXFDREFJdDJPYUdJMm1LVFFubWVXZ1FwUEdqOVJyUDJL?=
 =?utf-8?Q?cdDtvmiLym6dxw7MyZ0UO8znFT5Pcitc?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K2lDTFVhTHlNVmZVTFVya2toQkVOUy9TbFh6alpHdytJdWw5d2JwK2d1Q0Za?=
 =?utf-8?B?R2tYckRKV3F4OHRhMkp1NWxESEVyTGJGQjBTQy9KMjVyZ1g5WE5CQTFndFFB?=
 =?utf-8?B?VEdYM1hzdjVoRVRWZkdlUEFjTE1QZittUUdYcy9iL01ZRDY5WmVySWNkTHJG?=
 =?utf-8?B?VEFqa0d1RC9UbXFWd0RXZ3krc05YRXc2Q1FRMXg2KzMyUWk1SzdaVVB4a3ZP?=
 =?utf-8?B?cTYzV2I1dDZBeTQ0U3ZZTk5mcTNQN3FZM2ZwT1ozN0szTDB1aFpWZ004Z1c5?=
 =?utf-8?B?S0JER2JmaTdiSDlQa1Z4Mkh1S3F1WDVrb2ZpaTU5Um5Ib2QxME5JMlFhWm00?=
 =?utf-8?B?Z1lDK0lMcXQwYnZaZmZRZUxNbWhyZFplVlhVdHZlRnJiVXRnOHI4V0hoUzBV?=
 =?utf-8?B?eVRhU1BDY1B6dG5pUVpBYzJPSEIrKzhUZmt4VEVnTlZSK1BlQ2tsTEdtTWtG?=
 =?utf-8?B?dEdMZVFnbVZDOGRVeHhTbWtUTDNDUXhaYy9SQ2x6cXd1ZUJaWkkxOEdPY2hT?=
 =?utf-8?B?cGJLWnZtWjFMQjVNVUY1eWphUEtOYmtDR0p2SDhTcERwK2ZTTVM0cmllRkFH?=
 =?utf-8?B?VXpCR3dlcE9TOWxDVlphbFZ4T3JadFFEZ2VvN2dDKy9YOFB3M3JXQndpUjB2?=
 =?utf-8?B?N0Z0WU43YU5LZGd3RUpHemJnMGNmMlFrZ010REJYcDFxbzhZYk9xMmY3UGVy?=
 =?utf-8?B?R003UzhTTkJGb2VtOG83RWxLU1VtMUIwWWwvd2Vna3AwMmxodnB0N1Z4Z2gw?=
 =?utf-8?B?eHpSblRNdVZZTjdMYmVrZlRkK3kxRGNrcWM1TENkSEFtbnNHOHR6MHh2UVpI?=
 =?utf-8?B?K3NyRFFUV3BJeDNGMjJMV25aSzBKdVJ4RUI4ODVoUlpOZGlReHNBR0YzeEFT?=
 =?utf-8?B?ZC9WRTlCeVdpVjBacWRkK3F0ZTNuNU84TXlQQ3BUVkZjMHM0WkZhSHBxR0dV?=
 =?utf-8?B?bkJEZkwxazB1VDFsaE5ZZzhaQlNlZVBDYk9qdWhmKzY1anNBZUlzN1FLNUtK?=
 =?utf-8?B?Ti94QUo4czNNZXlWeHBtdmI2aDJXc0swbzNyYmh5R0dkdERobFJOQVd3eUdi?=
 =?utf-8?B?NndRZ3VWanlET21ldW5Bd1A4WDlLbG0vMmR3MFY5NThmRi9wYjAydEt3dGhs?=
 =?utf-8?B?NmpudTN2eXdQRjYzOThsRWk1L2F2R3R5ZVM3VU4xa2ZmbUVaQUVkcGZLZ2xr?=
 =?utf-8?B?ZGVBSVhsZWR3bmwwLzErdFk0VzRKdWFoMHR0QzZaT3J5TjZQaFplQ2pXSmNL?=
 =?utf-8?B?QVd6RXk4ZWxDUzNUMmJnQlY1QkJqVDVLNW5wSFZjWENxbzRQaTBpaUJXYnpq?=
 =?utf-8?B?d1dXVWpUN0RJcUVueE9MVy9Tb053OVhndE81MHdYZVgzMnlNZGdSYjFwRVJ5?=
 =?utf-8?B?cjh5VXBEckxrMnMyQUx5bjNCMHVFVlhYNDI2SnFVY3NJOTE1bUh4b1U1MUZj?=
 =?utf-8?B?WVRXaXZuYzVkWk1vUDM1TjBIVVUrNE16S3pldFB6THZRNFN3M2Q0cmRQU3dJ?=
 =?utf-8?B?MUlxcmtRU3VJNm5yelh6ODFXdFNYeEpBRzFFMW5Iek5tTzRkWFU5M2xEY1d3?=
 =?utf-8?B?ckp3Zlg2Y3dWbXdvYjArS3RVdk1kZDlsMmlESmg4d0dBQlVQdzZ0aGpISmgx?=
 =?utf-8?B?VDE3SUFUVG1zcEF0NS9rOUkrdjg5dE8yWldnb0RHUW41M29WczZyVFJlKzF3?=
 =?utf-8?B?MXhBakxxQzZHMG5KdjA0Ym1nMktZVlJkb21FUmtaQ0k4NVVpYlhVY1hXelg4?=
 =?utf-8?B?TTY4Q0tXVXAzWU9zOTZYUDdJU1ViZ1dKU1dKYk1qUGVpNml4YlY5Q21BUUxG?=
 =?utf-8?B?UUJiYXBvaVlqUWMwWmI2SDFTWEpPYjhWYnRFMFpjeTFaYVhBMzlTOFBVdDR2?=
 =?utf-8?B?dDBOU2FFVDhlSU9QeFFabnUvZVlma2JmLzVZaG44blIzRi9WS0h2R0ZIeFdH?=
 =?utf-8?B?aUMva0M0Ly9mSTgwSUxHV2FEbkVUUHhoUTZnSktvZXRvcXdSV0tPTmdXVmx1?=
 =?utf-8?B?SUwyRHJ2NTRLYmtyYjJhRGxTU0c0L0JnYzc2dUpJLy80VnRTbkt0UTR4QmpZ?=
 =?utf-8?B?UFVQdGw0WnloNG15YTExMnhYUEhldVZ5b0h3RFUzd1hMaEM5SmF0M1ZQZGVy?=
 =?utf-8?B?Zkd2RVpMVzgzQnlnWUkyV1FkMzFkV3R3dFlpMGh6OHhXRXhKVFN2YktGVGE5?=
 =?utf-8?B?MlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ee8097f-85ee-408b-fa5e-08de15f664f6
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Oct 2025 07:48:33.6458 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HcdXUsU2z7k/YOyV6+4KCAittxkUEizbGrzlzr2KkoT14NBpIS+PO/Wy0ruF9s/V4P48opfjPJNT0mSK0p9EfA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4935
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

On 24-10-2025 15:36, Suraj Kandpal wrote:
> Move the is_hdmi_frl to intel_hdmi.c. Rename it appropriately and
> make it non static.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------

> ---
>   drivers/gpu/drm/i915/display/intel_cx0_phy.c | 21 +++-----------------
>   drivers/gpu/drm/i915/display/intel_hdmi.c    | 14 +++++++++++++
>   drivers/gpu/drm/i915/display/intel_hdmi.h    |  1 +
>   3 files changed, 18 insertions(+), 18 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index c99e0885e737..6991707abdc7 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2590,20 +2590,6 @@ static bool is_dp2(u32 clock)
>   	return false;
>   }
>   
> -static bool is_hdmi_frl(u32 clock)
> -{
> -	switch (clock) {
> -	case 300000: /* 3 Gbps */
> -	case 600000: /* 6 Gbps */
> -	case 800000: /* 8 Gbps */
> -	case 1000000: /* 10 Gbps */
> -	case 1200000: /* 12 Gbps */
> -		return true;
> -	default:
> -		return false;
> -	}
> -}
> -
>   static bool intel_c20_protocol_switch_valid(struct intel_encoder *encoder)
>   {
>   	struct intel_digital_port *intel_dig_port = enc_to_dig_port(encoder);
> @@ -2617,7 +2603,7 @@ static int intel_get_c20_custom_width(u32 clock, bool dp)
>   {
>   	if (dp && is_dp2(clock))
>   		return 2;
> -	else if (is_hdmi_frl(clock))
> +	else if (intel_hdmi_is_frl(clock))
>   		return 1;
>   	else
>   		return 0;
> @@ -2706,11 +2692,10 @@ static void intel_c20_pll_program(struct intel_display *display,
>   
>   	/* 5. For DP or 6. For HDMI */
>   	serdes = 0;
> -
>   	if (is_dp)
>   		serdes = PHY_C20_IS_DP |
>   			 PHY_C20_DP_RATE(intel_c20_get_dp_rate(port_clock));
> -	else if (is_hdmi_frl(port_clock))
> +	else if (intel_hdmi_is_frl(port_clock))
>   		serdes = PHY_C20_IS_HDMI_FRL;
>   
>   	intel_cx0_rmw(encoder, owned_lane_mask, PHY_C20_VDR_CUSTOM_SERDES_RATE,
> @@ -2777,7 +2762,7 @@ static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
>   
>   	val |= XELPDP_FORWARD_CLOCK_UNGATE;
>   
> -	if (!is_dp && is_hdmi_frl(port_clock))
> +	if (!is_dp && intel_hdmi_is_frl(port_clock))
>   		val |= XELPDP_DDI_CLOCK_SELECT_PREP(display, XELPDP_DDI_CLOCK_SELECT_DIV18CLK);
>   	else
>   		val |= XELPDP_DDI_CLOCK_SELECT_PREP(display, XELPDP_DDI_CLOCK_SELECT_MAXPCLK);
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 4ab7e2e3bfd4..e81c3e5aa250 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -68,6 +68,20 @@
>   #include "intel_snps_phy.h"
>   #include "intel_vrr.h"
>   
> +bool intel_hdmi_is_frl(u32 clock)
> +{
> +	switch (clock) {
> +	case 300000: /* 3 Gbps */
> +	case 600000: /* 6 Gbps */
> +	case 800000: /* 8 Gbps */
> +	case 1000000: /* 10 Gbps */
> +	case 1200000: /* 12 Gbps */
> +		return true;
> +	default:
> +		return false;
> +	}
> +}
> +
>   static void
>   assert_hdmi_port_disabled(struct intel_hdmi *intel_hdmi)
>   {
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.h b/drivers/gpu/drm/i915/display/intel_hdmi.h
> index dec2ad7dd8a2..be2fad57e4ad 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.h
> @@ -60,6 +60,7 @@ int intel_hdmi_dsc_get_num_slices(const struct intel_crtc_state *crtc_state,
>   				  int src_max_slices, int src_max_slice_width,
>   				  int hdmi_max_slices, int hdmi_throughput);
>   int intel_hdmi_dsc_get_slice_height(int vactive);
> +bool intel_hdmi_is_frl(u32 clock);
>   
>   void hsw_write_infoframe(struct intel_encoder *encoder,
>   			 const struct intel_crtc_state *crtc_state,
