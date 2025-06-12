Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B340BAD6800
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jun 2025 08:27:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4907210E059;
	Thu, 12 Jun 2025 06:27:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LnDaCU64";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B61710E722;
 Thu, 12 Jun 2025 06:27:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749709651; x=1781245651;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NdlwdH2cXZNG4k7ZhoiWi6XsTHiS7o4K4yEwuWBa1qo=;
 b=LnDaCU64atrinkUFvjh57v7MDevlmyHkoRLGC/JgNYH6gG6l4bAz0vLf
 8ZIUfsMmTNEPDsuXLMQgAVfdj58k/X+YO0Fbdmxk1zy7vTBoTWh0hismO
 YJlvTQL8lXGyB/0hTaHNw8VcJ2OPxyPjc7IjzE+BdFyDNfKUWf+JnPKiG
 UEYkh3XgF2aDDjz0glCP9SlGKusr9b0pRDS5m6JYm9e03IROiqosTvhbM
 YVAmJ0luobCIuyWm3244YcjxBDMwFNDMav5OGt/Q/W+Mn3KSpVGe134XW
 foMN3kJK1ASTInGaSQm0X8X1olF7A1/GoBEeTVCKNwJyAnKRHspLh1WPJ Q==;
X-CSE-ConnectionGUID: P34GIsOEQzOPxSidhwIaLg==
X-CSE-MsgGUID: KCt33tDHSDeOWGt2mIeinA==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="62525121"
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="62525121"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 23:27:22 -0700
X-CSE-ConnectionGUID: VnYLjxgJRxiLFJ197fxgIQ==
X-CSE-MsgGUID: K6zYYbfaS62fpduBOStHAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="147410478"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 23:27:21 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 11 Jun 2025 23:27:21 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 11 Jun 2025 23:27:21 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.82) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 11 Jun 2025 23:27:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XeeSW19eD2jxwX3Vr/BbmnmgKZLkaKyJdodEJmCuMK+dE2JXQ2lowH4ehXHgJMWQTAbIImBMFSgATKWTDLijGzeX47mJTOQ4FNYuenE/zH7DLT68D35/SRlZh1DZ4ZoihJ/gsgX8IQslRTrO9EtJhib6zkEJdaATARcGo+8HsHXYylkLFCL24LQSiybewTMVF/PGF8BvzM+fhjsQ4BTqUwriWN+WHPup42Introe2v3nStGpdTTNP7l8AC8AwMM13yoIofjTCxWwGwZE/5A7pjCSh36jq7wh/jqFGp06E7+xHQYL5Yw6PgSCOXHZKVvNp+xWhW6v3kRfDZ1ASeVe8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CP2FISESPJZZWJ8vuT1Ro3flVKmDhKsEE1rPIq9G43o=;
 b=fXJyvw7mtiScvFbpZs0kOyOO5whrwJc1jnKs3eRMPopAf21SqAby+7RffWbdNHFWXwByDdrzdTAwsmCKQHlBjDSQ/meAI/KRtKggMVQhH3uz1Ske3dhxfnfPyTrcM+y+8FUcoV8yckVS1vi7qg7xR0lL9n0yxcTjmrUMex9Egy2dNRxRyeSSAsYgPLstcdKzHkIfiRWzmZnd8BGtV+o9pg5V4SAn3YyB8wKJxvHLwE14nK2LcebVtzYfrQaC6QzMPzx0+kaHVPC6+rAuthUCpqoihCs0LnDacD0bq9jvHM1lajVAJ15Eb5EkfGy/whJ/vqcp/wyW3Y4WPPSrUhlhdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SA3PR11MB7463.namprd11.prod.outlook.com (2603:10b6:806:304::20)
 by DM3PR11MB8671.namprd11.prod.outlook.com (2603:10b6:0:42::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8813.22; Thu, 12 Jun
 2025 06:27:19 +0000
Received: from SA3PR11MB7463.namprd11.prod.outlook.com
 ([fe80::d1a3:bf59:866d:6424]) by SA3PR11MB7463.namprd11.prod.outlook.com
 ([fe80::d1a3:bf59:866d:6424%7]) with mapi id 15.20.8813.024; Thu, 12 Jun 2025
 06:27:19 +0000
Message-ID: <b0c2d1fb-0dea-478a-88c9-e43eb4a3a16e@intel.com>
Date: Thu, 12 Jun 2025 11:57:12 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 7/9] drm/i915/xe3lpd: Extend DMC path for display
 version 30.02
To: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 <intel-xe@lists.freedesktop.org>
CC: <intel-gfx@lists.freedesktop.org>
References: <20250611134431.2761487-1-dnyaneshwar.bhadane@intel.com>
 <20250611134431.2761487-8-dnyaneshwar.bhadane@intel.com>
Content-Language: en-US
From: "Pottumuttu, Sai Teja" <sai.teja.pottumuttu@intel.com>
In-Reply-To: <20250611134431.2761487-8-dnyaneshwar.bhadane@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0043.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:81::14) To SA3PR11MB7463.namprd11.prod.outlook.com
 (2603:10b6:806:304::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA3PR11MB7463:EE_|DM3PR11MB8671:EE_
X-MS-Office365-Filtering-Correlation-Id: f2e59af7-b18e-4eab-049b-08dda97a2e8e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TXoycWUralFPam5xRXYzVm5UUGs1ZEdLc3EzSy8yd1o4ZXJwQm1qSVpZZ0x0?=
 =?utf-8?B?VnhjVExZNTA1MHRKakJyeXptUWNzOWdzVUZ1TVVIL0hnN1J4b29YTkZFZ1Fl?=
 =?utf-8?B?U0hZdGVta2hJUkY4TmgyWDR5dDgvKzJwNnNJU3VZcC9pd0p2MWpwOFI1TXJH?=
 =?utf-8?B?cm9NV2g5K0pEMHVSWG1YdlkvOUdOdkNtQStSKzMyank3ak1rZFl5N1Zpc1hG?=
 =?utf-8?B?MUJJNEpYZ21FVzEza2pMUDFhM2NyQ1p5UXZDMmxNZUwvbnBPYkNFUUxwQ2l0?=
 =?utf-8?B?LzIrNWJybzZ6VDZzTUsrbG9SMXpKLzFYSnhJQThXN0ZvekloNnk4Q2M0NGhF?=
 =?utf-8?B?MjJDZDh1cmVjNHAyR3pWR3JnZkp5WjBlNUQ2cGlRcTJtcUM1MDg5L1I5a1ZM?=
 =?utf-8?B?YWRVT1pGaHpKbW5BY2lOdzVnS3QwRjQ5ZSsxakVHeWxMWGZjd054Vk9DOGdn?=
 =?utf-8?B?KzlaUlNMb0FPRFlLL1ppaVpGUWtzZTZ1VndzRzAxUzM0dVhYRWo3d2VoMVpp?=
 =?utf-8?B?V3JDNjVjeUVkQitJMjY5S1BueldiZ0tlSXIvcC81RXg0aEZLZDVyQjZZNXND?=
 =?utf-8?B?U1ROM1NLTmtLKzhqMWlQQzhUSWI0Z2lDWlhDdTRDSDZLK0N2SVkvMWZoa29Q?=
 =?utf-8?B?Z0dGL2NrcXk1cFFveFF3cjZPemc1OEgyWndmMXA1UmVZVXRhVVF4MTl4K0Vw?=
 =?utf-8?B?MS95WWg1Y2p1Tnl4UkI5dTJqT01aWi9WZ29IQmJJM1Y4SkFpN1hkS1JBSnVs?=
 =?utf-8?B?MXZ4UmtURWZWQ2RKU2JIYWgwenQxQXh1bWZGRXN5VXkzYWM4bVcyekJPLzB0?=
 =?utf-8?B?RGtiQjU3ZGFrdG13UmRxSTZ2RkE3dWJvaVNWNmVKem92Vm9nRkU2QzJaMEti?=
 =?utf-8?B?aW5YN0dZSWZEQmQzenlJVTFhanJGUHhGZG9Tb1ErTXFQTnQyczgzWFM2bmdl?=
 =?utf-8?B?eFFtNVFRZkZOOHRsamNZQWFNN21FUVNSZ3VCMDR1QVhvOUNaS0t1VDZTaEFR?=
 =?utf-8?B?djNuU3RuWHFxZkllRGdsNEpOMkl4R3N5eFVhNVhzUnVzSHhicDF2bHVPMlN2?=
 =?utf-8?B?R2U0dzUreW1JVFBXZ29BOTQya2ZPdEIrY0JiTVp4dWFWU2wvTzE4UXZGOHor?=
 =?utf-8?B?NFlFRTVyWnorZnZmaC9nRTNzRXY4M0JicXV6MzdndDlqbjZUS3Z1eFBqVWlB?=
 =?utf-8?B?Sk5sQXJCUklRUVpkWStBRzh3aGtITkVxRjkwL1UvL0k5bHJhSllLUUo2aWlO?=
 =?utf-8?B?NzBqSWF2blpDbzJGOFZQejBYdDAva29QT2tLYktlZEJiNHFNdmNITXp6SDdo?=
 =?utf-8?B?dDVhNGp4ZFR3c1J6b0o1TjdNMnZ1aHl5QThsRWRuM0p2dU9hUEV5UUJrKzhU?=
 =?utf-8?B?akU1SzZxcmxPcndGVjZ3SG9GN0sydUNHYnVDejZRdVhXdEN5cktpR0MxQ1Fm?=
 =?utf-8?B?Tkg3MmwyQUt6Wm9uWm9WSXpCSGdENzYwelNNcGJPV3EyUlQyakZzNExxNlh0?=
 =?utf-8?B?bTh6M1RBR3lUV3c5OEtxTTAxRkwyTHZ2VXNLS21qREZJLzU5ODFIektmVWxN?=
 =?utf-8?B?SkErM1lvSkZFMDFZaWFackU0cEFBODNwVndieit4RWk2TjNmdGI0RXRvU1Nr?=
 =?utf-8?B?cU1lamN6VVpoTUpCWlpseXRKYldrTWUxekdzd2VvRTdEc1UvcEtodDNXUWJN?=
 =?utf-8?B?aFdaRHJRZjBFK2F4SWo3WkdnOWlCM2xQRSt3NElXQ1FoUllCMkpIdTlhcEov?=
 =?utf-8?B?QWtiSm5nVzNwUkdCZGZJVXVVNnU3MHRiNFR6YVYvVHVtQ1YzSGdJbFVwb2Fm?=
 =?utf-8?B?dDI4UGw2Y0pnaVhLY2RZeTgvYThvdktESW1wV1RYTVFTWGtZMUFsbUhtY2tN?=
 =?utf-8?B?eElIQ3cvQ0dBekZUTzMxaDI4MnlHU3hSLzY1QXJjbm5TcW5rSXQ5SXZPQ3hY?=
 =?utf-8?Q?XTxVY3e3ThU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA3PR11MB7463.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eDJKWCs3OEt2OUpJV3NTOEJGZCtzSHpKZGJydzl5SE1HYTBzRkRuczVwQ3lH?=
 =?utf-8?B?NkZCL2VyTXRYZVRvVUFkaFpQL05BemVkOUVlbVJRRlVvSllQSG1DWjdLV29q?=
 =?utf-8?B?M1JPK0Rjd2ZyRXlNMzFNUUdyNi9LdzBRdTNXYmRwUDZMVWV6TkJXelFFR0kw?=
 =?utf-8?B?c0EveG1jM0Y2SmdVWEtxYjA3QXk0Q1NuVnBRVjFHWHV5dEl0a1pBRW1LYWRu?=
 =?utf-8?B?eEJ2WEl1WjRLSHFZdUY3MzVqNkZIQS9MR3UrOSsyS0tLdnNpWXBLck94YWE5?=
 =?utf-8?B?cXNxWDRvTUcwc2Y4dVJscUdVcmdFbDNYek4wSERadGNNV2s3YmVEUHRHZFdE?=
 =?utf-8?B?RDRzN1RreDZoc2tGVTE5dUhiT0l3blpTQmF0NzVxQWgvMWJBQS9maDhjbmRn?=
 =?utf-8?B?YmtueG03NWdmbmI0QmJGcFNZYmxBR3VSeDF3cUw4VjNQZ1pLb1NWckdqTXQ3?=
 =?utf-8?B?Z1FvVklpaktJdnRiQ1JlZG9WTGVvQjdSb0hUbEZXV2xaVjF1WmlXSm1jd0Vh?=
 =?utf-8?B?M25uNzdQNWxlNHl4TS9FSXhmYWVsY0dsT1YyaGxZRkxQM3BDWFJnRHNiRGxr?=
 =?utf-8?B?aVBUalM3KzZVVUw4bDF5S0Z3TnJzSUVwK0tlM3B5YnkwSWoyeXFmejlnUExu?=
 =?utf-8?B?U2dTSUNVMUtZZU02SDRiTmFIYk1Jeks4VzZqTVoxMDViYkxBeVZla3VEU3hE?=
 =?utf-8?B?WmROcHNuUkIwQ2tCMXNqK0czc0cvMERpOXhoMWVSVmRWQ1BNMUJudURzOHI1?=
 =?utf-8?B?RlZaeW1pRFdNcytORFk5RkRYK2NTNnFvYlBQSjJJbUV2L2tGTlJMTUoxOThP?=
 =?utf-8?B?aThIZHVKNk5CTTV3NDZhZ0FnMEhYOHJFbHlXeElPakxIT1VITWdWaVFFMDFH?=
 =?utf-8?B?cmNEN0xyRVpTbno4QkNsNWprY2ZNVkhuQ0JLQVFWSURpSzkyVExEWENiVTYx?=
 =?utf-8?B?ZHArNWhBTFVwbXA4ei9TYktPeGlXVWtXdVJWZTZZa3djUWlFbzQycXZLK1lj?=
 =?utf-8?B?STUrWmhRbE1RZDk3NjZ2eXRrVXd2aVptMy9OUFluKzczRE9OOURiRDJTeFIw?=
 =?utf-8?B?bnBRT2trZHFQWTNRU3JmSlRVTGVNTFFacUo4ZmE3bFVBeWJYV1I3aDhQdFo3?=
 =?utf-8?B?QnhEZmFRclBPdTU4am1WS1YzdFVnMm0rMGczb3JMemZWdGtDODY4QUFFc05k?=
 =?utf-8?B?V25CWnVGRlh1djExUnhUYWZWV1ZEYjJ1VGN5alc2dDZJSmxoVzlEYUt4ZVBS?=
 =?utf-8?B?dFU2TDFFZ0hxYjFnaG1DWENqU0hNaFhFbml5Sk9rZGVUenJpZ1RFck9wNUNm?=
 =?utf-8?B?S01LRU1SS1kvaURnbFVPTGFOR0pJS2RMUllTM3htQWd3c0hEeGtvL1VHV2hy?=
 =?utf-8?B?eWpWR3JWQys1R21UcnlwTzNOcVVrcEdudkRZc3NFY3RtVEozS01FTW1la05Z?=
 =?utf-8?B?VGVSM3BBNXE4eVVZS1RkbnM3Y3ovQnNlTUtFVFkvcEZRcldKa1ZLdzlzeWFh?=
 =?utf-8?B?Y0VPdElQeHNaNGQ0OGhPMDllVU1TbUx1ZmhpeGM3aHBBN3hjbFNaWW5NUU40?=
 =?utf-8?B?SDBBeUJSSUNldkJDWUMxcXlCMDhTeHZCSzY0NWZuTEVsNU9GWEpXbmpEQzRE?=
 =?utf-8?B?cm8velZqb3pvQlVRNkJLNVVkQ09ySjF0MWtaNWUrNkxrTzRBZDd3N1N5aGRO?=
 =?utf-8?B?Wlo2KzBFbkZUL0Y0UThpM09YaHNzM1FzZmZ1QUxWVEZjWVpyZzR5MjdpLzlW?=
 =?utf-8?B?cTJLbjNZeWNyRTE5SHdwZUFpQUtVdVNxZDlSdTlBb1AwN3R3SUsvdHNaNSt4?=
 =?utf-8?B?disydFRSbUs2V2pOWVpJcVBFY0lDaFJTcU9URUlqNGVxVmJ2KzZZL0FsckhP?=
 =?utf-8?B?N29oMGNQYklZMndzcGFSNnpSUDdhazJ5eDB4MW5sUFRMUGI1UDdwZzFaM0kv?=
 =?utf-8?B?bmRzc0R0UGM4UnR1d1BBWWRVMWdyZVJweXorSERCZFloREFxVkp3R3N6Q2tn?=
 =?utf-8?B?OWkydlRQRWF5V1hjeUxlRk8wMTRtWW9iY3dla1hRSGdTaXl0a2RqWXo0dXl3?=
 =?utf-8?B?SHZCOUV5bXVJR0tNZDB1R1VmM0Uyb3BRZVRxMlVWYzdtZlA1d3dKS0JpOUpt?=
 =?utf-8?B?UHdWNi9hVm41V0kxUnZhUTIxZ0xKdk9OS0xPOFpMUUtyTXpHVDNJWklXek9x?=
 =?utf-8?B?VXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f2e59af7-b18e-4eab-049b-08dda97a2e8e
X-MS-Exchange-CrossTenant-AuthSource: SA3PR11MB7463.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jun 2025 06:27:19.0391 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: afgS8Q8UFQEM1QJEbWDGlC5Mcs4DQyxec/WTy9nph8Cecax/Jz8kV2/HdcNgrFTqK62ULYEPgcht4BslKkY2oldOYdCcgWE17tzhFHsedMc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8671
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

On 11-06-2025 19:14, Dnyaneshwar Bhadane wrote:
> Display version 30.02 should be treated the same as other Xe3 IP.
> So exteding DMC load path the condition for it.
> 
> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>

Nit, should be 'extending DMC load path condition for it' in commit 
message, other than that

LGTM,
Reviewed-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>

> ---
>   drivers/gpu/drm/i915/display/intel_dmc.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index a10e56e7cf31..1295d8245a2e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -179,7 +179,8 @@ static const char *dmc_firmware_default(struct intel_display *display, u32 *size
>   	const char *fw_path = NULL;
>   	u32 max_fw_size = 0;
>   
> -	if (DISPLAY_VERx100(display) == 3000) {
> +	if (DISPLAY_VERx100(display) == 3002 ||
> +	    DISPLAY_VERx100(display) == 3000) {
>   		fw_path = XE3LPD_DMC_PATH;
>   		max_fw_size = XE2LPD_DMC_MAX_FW_SIZE;
>   	} else if (DISPLAY_VERx100(display) == 2000) {
