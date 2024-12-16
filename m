Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F10D9F34E4
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2024 16:47:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4588A10E6DD;
	Mon, 16 Dec 2024 15:46:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GehGl2Bh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC42910E6DD
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2024 15:46:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734364019; x=1765900019;
 h=date:from:to:cc:subject:message-id:
 content-transfer-encoding:mime-version;
 bh=WO4+7y4A1Z1vjYpLq7YCujbHylFxnVtebJLvjxJuZ7E=;
 b=GehGl2BhqkYq5HYyKwnZQDNmzOV7fLzsx0QTRlC8FJisYzlv10xnJASz
 o+Cip4x5dFqQqH53RabBga5kYWlzayPwAhmr4pYeIhg7SZ9t4HHPdgtsC
 4FQcoHzz4PMda0TkKtsvPwfTjNSo8HqhhNkDadkJ9HXWsVoYgc4hGtAnD
 P0PHn6UcNK4SvZBtQiIBVP+Ux1oJ4FT0xj2UDh1ixyR4vr8EsLChtKqd4
 ryXYkAG4gZBGfArBSJ/8Ay58CgoztcR1qWUH8+6WuFqeXyB4h5FkRwGhX
 LEX36eYJ/WYh2uvP3ATdIBD5bpsjQnst9Depy9sYW12v3feJC4CdR0cl2 A==;
X-CSE-ConnectionGUID: Ricj8GQkSYKmYhorR4kOmA==
X-CSE-MsgGUID: IzJ29K9ATjS187AqYvJSjw==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="45758610"
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="45758610"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2024 07:46:59 -0800
X-CSE-ConnectionGUID: 9UoWMPItSFS8rdCs/8ZOXg==
X-CSE-MsgGUID: rFtU/CK7QV2B8WZLK8KbYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,239,1728975600"; d="scan'208";a="97666502"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Dec 2024 07:46:58 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 16 Dec 2024 07:46:57 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 16 Dec 2024 07:46:57 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 16 Dec 2024 07:46:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QlJwCCMY99WG0DD/SCPkHh/aW/JW+9NFK81fCIqAutGIgy+YMIzR/YksjHQS+7oebkgmED+8ASdWHsik4wad/OK2TTwk7SoYlju9QTb3vo5lHOAUHRD3g3SRY11KKcpTHaEnlb/zJOsZnq6cs6O3zfzh4vUA3pXQLSzpvwqRu7mHHNXC/kaDl5Hr31uRAH3ugQplSr8XKyfCc27ih0Ip2x6481XaECT8+FEDbAxa4JCynwqMCoZ1X+77H+xHp+th624B480AMc1ICak9Vw6LVqr1Ni4Y7ORSyEKsAf+uyolMFDmcBueRXilxHjcKAG/hqPv/hKnKhkHNSLmGu19V9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3xuL/eLIP7b5DKwyrAxclZOSG7zOVRcmW9TGG24V/ig=;
 b=DkXi0prep0WepNOLnyrVsBlhBBBtT+a8n8Ce9aVKwMWhYJpmOuE0iSxusEz117GQlaLcDI8AjNHSwVWUQxPX/5i8fqo4+2RC/882DQTZJjC1COtGActz++DKgoDAQX7x40P8gt88Jx+dr+GtNojZuiTPJ/UG0cKwzUuEG/4yzi8e15GvQCmriGJsPBeTWT/hOUIkpDQsKyDvT+oKKYSVQESLQ02yMe7+6WQVGcPZF9ztkAlR1Zl218wG+1d8gJMHcnkdWuPf4w6PWMi5MSzat9cL8/mMAIp4SMOhYSUYsT/LycfCCAyU2HLMGCdPGV6OgEa5f3aBKouapK/VjdY1oQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by DM3PR11MB8734.namprd11.prod.outlook.com (2603:10b6:8:1af::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.20; Mon, 16 Dec
 2024 15:46:53 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%6]) with mapi id 15.20.8251.015; Mon, 16 Dec 2024
 15:46:53 +0000
Date: Mon, 16 Dec 2024 15:46:49 +0000
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: <vidya.srinivas@intel.com>, <andi.shyti@linux.intel.com>,
 <rodrigo.vivi@intel.com>
Subject: [PATCH v2] i915/gt: Reapply workarounds in case the previous attempt
 failed.
Message-ID: <752zde6fl47boamqiccdhz2wmkxoee5rmzqucphvglhs53bclz@jlv5clqnxngh>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DUZP191CA0061.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:4fa::16) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|DM3PR11MB8734:EE_
X-MS-Office365-Filtering-Correlation-Id: b2d2ee15-8e80-4a9c-1d1f-08dd1de8dd1f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Q1g1RUx6c3ZwS3FHVFNmMitnYXNQNmlYb1VBdnF6NWJZUGJudUNTWGVrNW4w?=
 =?utf-8?B?NTNIWFlOSmM5dUxmNUdTQVoxV05oemhDR3dJejlkOWRNSGxKYXhsdDc4NUlh?=
 =?utf-8?B?TGw0RmtrQlNsbXkvdUZBalZvbDM1QkZhakgvTndvclFQcGtPOFRURXpub0s1?=
 =?utf-8?B?MjJHSytWSEZadlFyb2cvU3RXYW9uN1IrWmx4Um96Q0lPQ21mNjVjUThhRTRi?=
 =?utf-8?B?RDV0NEtLQ1JocGQrZ3JCUHdMK1ptZEM0Q0dhTVZqb1dudGQyZGlZVlptbzls?=
 =?utf-8?B?OXErczZoUTR2V1J4NzhheG5nNzAyZENGeEpmbGJhRHczcjA5QTl2a3RhYzRp?=
 =?utf-8?B?WE5peU1LK1JvbUFvdVg5QlZHTjVqYnJIc1VWSXNGU1Y0bUcwVFZNbnhlUWxr?=
 =?utf-8?B?UTBocHVKdHc2WXk1OGFvSm0vd2JwVVJOZ0VCVzFFcTd6OGZwck90aFJoQXgz?=
 =?utf-8?B?TDdhQVp4WEZoTExzSG5NYmUveVRUdUptcGt0UWZuaTU5L2FzUlpSaHhmaWxr?=
 =?utf-8?B?YXJxNml1L3VUcWR1b284VEM4MWpBcWtTMThXaVdpSWpSekFQYkNrRTN1SEQ0?=
 =?utf-8?B?R3VxOXBLVldaaFUzZkk0Uk1iU1FIajRaZ1hsS2J0VU1xMi9rVmxMRlB4TTh3?=
 =?utf-8?B?U2xLRFhvamY0YkJiVWtvSDE1bEJnaTVxZHNYWUJUL3UyM2duTnNBdHJ1MUIy?=
 =?utf-8?B?T3pwZzU3RThLeVM2MUZTQWh5b1BOYXNkWENydHFwSWJZWFUvTlJFblo2bUI2?=
 =?utf-8?B?WmxJbDhFRytKblNrV2crMUFrejhUU25wendvckp2Z2pLYmFmVy8wLzBjTmd1?=
 =?utf-8?B?QVlyeThTei9DOTV3RGxFWGQ0VUl1eXkwNTMxVFRWMHgvTERuMXJIcHo5ekll?=
 =?utf-8?B?VCt5TWpKcmptSUVlRmxjYWQvSjVSVXphUzd5S2FhTmkzZXRTbkEvV3BqMEph?=
 =?utf-8?B?TUJPbDgzUldOZTVDVkRGMTNuVjJmbXZOTTA0bzhtRmcxVzBjQWNXSU0zVDhr?=
 =?utf-8?B?aVRwWjRCQ2N0NWEySlh1bldwa0RFblYveTREdUg3RHJ1N3ZkZ1o3bGpqRkdZ?=
 =?utf-8?B?bjYvSEtieFV4aW40RmJyaCtPUXBZYjVpOVN1UzNGMDZXSmZOVzVMOHhoTzJK?=
 =?utf-8?B?RkcwT3lhcUhOcnNKd1VJMWJzSDNHS2RJRUlnRkdsMkljVHVzNXI5Wm9ybUxP?=
 =?utf-8?B?NnZJTDBPNVFKVW5IU2NoNHpkSkNySnJXUHZ5K2YyNVdFL0pGVWNrOUVwYmFW?=
 =?utf-8?B?QVNhNDVNS2phT3d6SGx3TllleUZ5OUxKU2FiNEFHVWIxY2N5K0hnMUJvSnJk?=
 =?utf-8?B?Y1BOeS9vS09pQ2ZCZzJ1SkJxcnhCcjJJbmtOQ1lJeDNjSnpzS1IyUjdZdGhJ?=
 =?utf-8?B?QzNtWitVRUV6Z1RBTGNUNlRybzcxYUxGVitIclBDdjhzZDNWWjA4bE9xTm1l?=
 =?utf-8?B?UTg4dmhyTE84OXhyUG9DYWRwNWE1b2I2WmFBWUN4SGdlYW4xZUROK09ERDVG?=
 =?utf-8?B?cHpDNmZka04xN09Ra2d1TUs1dGdZVGt4QkZLZWM4TGlpN1pCRndwUWI5Wm5m?=
 =?utf-8?B?dXpHQjgwZkVqTGM0YlQ4VEhDMUI4SmFESFl2bzJuV21EWWtuZ1AyUDZvSGR2?=
 =?utf-8?B?dHRBR1p6cWwxMERvNFdwNEZnK2FCcmJ6SFg0aFk4aWRXNkthWnVEamdUcEE2?=
 =?utf-8?B?cUF3VS9INGpXS0FMNGt4K3RuaE5XbVdOcERMU21oL01CUDJUWU1WWU4rNFNv?=
 =?utf-8?B?cWxsZkMxWCtEWVB0TDFXMExpell5aUphNThRSVdBVUlyc3RyYkJvKzNEN2NL?=
 =?utf-8?B?bWwwQ25WNG5QMTNZbjV3UT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bHR5aDc2TTI0OStSSmFCcVp3TWM3L3dSbmpYVURkQndwcVZPbnNTRzFWSmhZ?=
 =?utf-8?B?bnZzU2Z3aWpNMk11OEV0U1RHM0loU2pTL2FqMlJIckpEd283SGpLRnNmQjJJ?=
 =?utf-8?B?am9UUmtMUEhjcXpEY0NpeG9YUmRjenF4SnRGMzFhTU9rVHF6aTRJMjhHaUc3?=
 =?utf-8?B?dEo2Nm9ITW5QN3pZRlBWZmRDVjRNT2tjdm04eFNsSm4ySGtvd0xNWkhHYjNG?=
 =?utf-8?B?SU5ucTY0RDkyT3JyTnFxSSt5YW5MdTBaWTNEdDRrejlzaGJyNnZWWDY4TUU0?=
 =?utf-8?B?amkzU1pzVGVFeDRYWTZrWHRYN1AvdndDdStiSE56VTJKazByT3lZMG9TaHFW?=
 =?utf-8?B?V1pXcWIyakJsTEdmWW9YR1dENldqbHFidVZCSXF0d2tOTytJMmRTd3hBVVBP?=
 =?utf-8?B?RHNrRTZlVnVOU21Jc1QzUTJ1S01hcmFwWlJnSnJ1UTJPTmJXVXpqTFhwN08w?=
 =?utf-8?B?MGpPUXdBSFk0ZEpid01RaEE5RGlCbGlOa2ZtTzNjYVRmcUkyOHhlTklYNjhG?=
 =?utf-8?B?RHVxYW4zQWhDRjJCSlNiVG5uYWpmOWZyQzZYZFJsWjYybDZZTkE2bVFaOWg3?=
 =?utf-8?B?MDRvejdwSllVVnUrczRxRDBqaFJNbWlXSng2bDlRdnZ2MldMRUl6OW1XOFdN?=
 =?utf-8?B?K2ppWE5XTDlnZDRPb2xkS1Z4eDNnZnRjZlBxMEdOWkJBTlJhaDRDOUpkbm83?=
 =?utf-8?B?dzFsMkhYajdoWHpzQldqTG5ZWDFkdDJsWEQ4UU1USElRWnpUOGxwckRCZFdG?=
 =?utf-8?B?ZnZUdDNKK2g3aG42TlZJa3RSalNuTS8rY0J1dE9YSU83ZmNFeml2RlNlUk81?=
 =?utf-8?B?azdlbHJWS0Z3dEkydHU4S3NycCtFYjdXTGFwMnpNNEUwOVJLT3pqbEZWaCt4?=
 =?utf-8?B?eFFrUnQxU0UvcGhBaDNSWFdtazNkWFhtVjUxdjVwRTNEVElxa1o0NzBOVUlV?=
 =?utf-8?B?OGNwZVNHT21XNEtPa3BCN01rK3l5aHByZ2d1LytSTkVHOEx6YkZHZkpPK0RV?=
 =?utf-8?B?VmRSZkthSnhtaEppcytobndHcjlHUXV0eXhkUW5kR2lyRmdEWUpmMEl3UWdH?=
 =?utf-8?B?dHRIcWJ5eVQ5N29aS0xOVWwraGhoZjRNMWZyZlpzQnVXNjZmNm1yV3NJbFZh?=
 =?utf-8?B?Ym5KZm9oaCtKMXE2WEt5S3dZSDZWUFRTQVRDTFJhdHkwVVc4OE9QQ3VqMDRD?=
 =?utf-8?B?ZWtrNmprWUR5VVFLRHNjTncyL2NRdXBqV2EwQXd3ejFXQS9lem0zUTBmZlZV?=
 =?utf-8?B?T1JJNVErTkljUlBPTFRROVVaS2wyYUttdjRkREJwUHkzZGdPOW50Z3Iya3l5?=
 =?utf-8?B?WmJYNTNEOEdnMFFIUW5mN3V2NTVBOVFOdjRXVHNDYy9KS3c2bWRJYmVvSG85?=
 =?utf-8?B?WjI4bitwNXJrWU9QS0NuM3M5dCtES3dpVzlucFZNZmZ6dEtvTS9lYzRqTWEr?=
 =?utf-8?B?ajdoUkhhTnhOeXhSenp0R014aDZIbjRWdjNtdnNSZEpCZEF3OUR5VGZSZFlp?=
 =?utf-8?B?YWdicGRuRnVpdzhCbjM5UUErZ09iTUlPZmlWUFkxNThwUmpkKzQrV2VWK05K?=
 =?utf-8?B?d1JkcDFhM2RFeWZTVnVwSE1DWUJpRVhoRFJZdnpTdVp0ZTc1Q3l5YWtHdkE3?=
 =?utf-8?B?ZmwwaG1leDlVS1hiUkFkWXJpMWZuelVDYXBnN0lLY3JzV1pJM1hFdkxuVngr?=
 =?utf-8?B?TUFBdUc2UnkzUDRrVGtoNUNHZU02MUF3a1Qya0RIMnhRTmlCcjE0Tm56WVZy?=
 =?utf-8?B?b0Vra2U0cUdMeDFXTmFPWllBS0QrVlNFUTQ2K3M5Rkdxa1JQUDlLNGFFWE5R?=
 =?utf-8?B?UERFSkdHd2ZleWxOeExYTjBRbHJyVVE0MUQvZE9ITmNTMklhemxEaTJKQ3Jw?=
 =?utf-8?B?Q1FBbHBqVmNSR3MrdWs0SndJMjd3blpzWHZwRFJ2RTdxbkpvNkltUFNRRzU5?=
 =?utf-8?B?NWthRTk2WkE2NTZwNHZ3aXBlVzFzbTROc0NtTk1WTWtkbFRZZ3JzQi9idStn?=
 =?utf-8?B?RE5VWVNjUWl4U1BlVG8vbmdRVDc0Z216WEJUbmFSNFNQS25ZeUV2M00yc0hC?=
 =?utf-8?B?Rll2MUhRWGZlTzZPY3cxS1U1eEczNWcvTFk5NFM3eDdYVDVrM3V6WCtlMWxE?=
 =?utf-8?B?NCtaU1FBZXRHZzdndjJYZE0vS0dCYUs0RUpNdWsxQWtJem1HWVRCTHRDdml0?=
 =?utf-8?B?WFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b2d2ee15-8e80-4a9c-1d1f-08dd1de8dd1f
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2024 15:46:53.7387 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sscBT6/MTMnFxV+9ttWy3p6dn+62UW7pVvXPqfPkxrrd3szI84EbC7642Q0pMcY7CUgnTKoH6lFBss8J5JfyiHDnyvczFziacKDq4kP2kzI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8734
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

`wa_verify`sporadically detects lost workaround on application; this
is unusual behavior since wa are applied at `intel_gt_init_hw` and
verified right away by `intel_gt_verify_workarounds`, and  `wa_verify`
doesn't fail on initialization as one might suspect would happen.

One approach that may be somewhat beneficial is to reapply workarounds
in the event of failure, or even get rid of verify on application,
since it's redundant to `intel_gt_verify_workarounds`.

v2: Remove duplicate code, move workarounds read/write
    to separated functions.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12668

Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 60 ++++++++++++---------
 1 file changed, 36 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 570c91878189..c0bf909afe8e 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1722,6 +1722,30 @@ wa_verify(struct intel_gt *gt, const struct i915_wa *wa, u32 cur,
 	return true;
 }
 
+static u32 wa_read_fw(struct intel_gt *gt, struct i915_wa *wa)
+{
+	return wa->is_mcr ? intel_gt_mcr_read_any_fw(gt, wa->mcr_reg) :
+			intel_uncore_read_fw(gt->uncore, wa->reg);
+
+}
+
+static void wa_write_fw(struct intel_gt *gt, struct i915_wa *wa)
+{
+	u32 val, old = 0;
+
+	/* open-coded rmw due to steering */
+	if (wa->clr)
+		old = wa_read_fw(gt, wa);
+
+	val = (old & ~wa->clr) | wa->set;
+	if (val != old || !wa->clr) {
+		if (wa->is_mcr)
+			intel_gt_mcr_multicast_write_fw(gt, wa->mcr_reg, val);
+		else
+			intel_uncore_write_fw(gt->uncore, wa->reg, val);
+	}
+}
+
 static void wa_list_apply(const struct i915_wa_list *wal)
 {
 	struct intel_gt *gt = wal->gt;
@@ -1741,28 +1765,17 @@ static void wa_list_apply(const struct i915_wa_list *wal)
 	intel_uncore_forcewake_get__locked(uncore, fw);
 
 	for (i = 0, wa = wal->list; i < wal->count; i++, wa++) {
-		u32 val, old = 0;
-
-		/* open-coded rmw due to steering */
-		if (wa->clr)
-			old = wa->is_mcr ?
-				intel_gt_mcr_read_any_fw(gt, wa->mcr_reg) :
-				intel_uncore_read_fw(uncore, wa->reg);
-		val = (old & ~wa->clr) | wa->set;
-		if (val != old || !wa->clr) {
-			if (wa->is_mcr)
-				intel_gt_mcr_multicast_write_fw(gt, wa->mcr_reg, val);
-			else
-				intel_uncore_write_fw(uncore, wa->reg, val);
-		}
-
-		if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM)) {
-			u32 val = wa->is_mcr ?
-				intel_gt_mcr_read_any_fw(gt, wa->mcr_reg) :
-				intel_uncore_read_fw(uncore, wa->reg);
+		/*
+		 * Writing workarounds can sporadically fail,
+		 * in which  case try to apply it again.
+		 */
+		uint repeat = 1;
 
-			wa_verify(gt, wa, val, wal->name, "application");
-		}
+		do {
+			wa_write_fw(gt, wa);
+		} while (!wa_verify(gt, wa, wa_read_fw(gt, wa), wal->name,
+					"application")
+			&& repeat--);
 	}
 
 	intel_uncore_forcewake_put__locked(uncore, fw);
@@ -1793,9 +1806,8 @@ static bool wa_list_verify(struct intel_gt *gt,
 	intel_uncore_forcewake_get__locked(uncore, fw);
 
 	for (i = 0, wa = wal->list; i < wal->count; i++, wa++)
-		ok &= wa_verify(wal->gt, wa, wa->is_mcr ?
-				intel_gt_mcr_read_any_fw(gt, wa->mcr_reg) :
-				intel_uncore_read_fw(uncore, wa->reg),
+		ok &= wa_verify(wal->gt, wa,
+				wa_read_fw(wal->gt, wa),
 				wal->name, from);
 
 	intel_uncore_forcewake_put__locked(uncore, fw);
-- 
2.34.1

