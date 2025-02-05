Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E2BDA289A9
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2025 12:47:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4058C10E78A;
	Wed,  5 Feb 2025 11:47:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iggZ664t";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 511E210E78A
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Feb 2025 11:47:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738756040; x=1770292040;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=wC372KBf9WdKCLuCaXngtDLlWyj5xH9S8Od69aV0Gb0=;
 b=iggZ664tRBLwybhNSzPbc2yt4HbgLnzJywQ1uqtrqSKe7mZjKIQRYX6z
 7ZMLEaUrvvyg5sLdZS4PBSF6kA9PLijjowVK03y1l+SsvT3bL8meIAQ16
 +Ey91JK2LaSsLh7VtOPq8lK0IcVqNaSFlBRMvqUKCGgifiqzaRmy4/a9o
 0XFMrZGz4AkwcZx7TC+RAyMUNMI68SBUTZ5vCXmcKi2nWY/FrdZK8M2cg
 PagEqoZ06skq5A6sWFcfg7aD7Z1ZuurDKkjatzxNhxuSy6K+bvjf8QnYp
 EWvnvxuWGJQV5qrMDH8YFAOTzj2ccEgzYlhdNibsnt5FpdSeUqpJjLU52 w==;
X-CSE-ConnectionGUID: g9H8Vhk9TqiD0RAQrjQB9g==
X-CSE-MsgGUID: GQNMoAfAT2iGN9km/KWmLQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="26920229"
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="26920229"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 03:47:12 -0800
X-CSE-ConnectionGUID: F0P0JTznQ5WvmoxlDYDXzQ==
X-CSE-MsgGUID: yFkPpc+NRYqNO/bJZCRKAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="115933550"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Feb 2025 03:47:12 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 5 Feb 2025 03:47:11 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 5 Feb 2025 03:47:11 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 5 Feb 2025 03:47:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zVz1lSEc06Zt7PsYezhEKuwQ8nFelXglxzulUhB30teT0MxactSqhVCOZMU9jEP4KeWo7thcXwXz/x3QGGhCmCFIBMlgwr1eA10LMibTN7BNdGKB/TFBoeIKR5iBkPXr15bSdD5Grfe0ehbtLz4gILpEHzdEWvUsQoO+7r+Uj29emkjZBX5mfLNv3hZH+whz6zfGOPgj/OBiRLTwsQumjLk6mLS7trei/D1xGAnWDCuUbwnIOsIYmwz7ttDB557GOWjIjkA/Z/uT2eQDxnqlyTE7J9VCFVnOSEQrxawOhIbJRlw+oZ2duSNvzuJXJ1G7BwGOBlsd84L1CTXlMN/k4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TYi+BMWkUcsOwC/n7/SJ4CGfujJZXMnmPpucXMxpUKQ=;
 b=uwJDsU6YNhMQFawpomyICQbGrWTZZoME8+xzySGipdJsrzq5oD2xokJmVoQYi7aUlFtGzoOei/OPwD65uVXUKTzo4NwP3Wp4Pb0U6ilayMIgX453+LKeR3gKV5vjkXW8VP9b2h69LkW/H1hStVmgek3qm2glWt+7a3VECtI0NPKLmKrd4C0BZOfOl1/vpYsBhgG7TD7I1DNnx1TL5v/yrSQJHaR+MvDZoRTojBgXSWyTOxX/Y0R4WKS0/lf3H5HXP/VXvXC9lCIgvmLnvXtGR0vmuHCcZlbWkPuqhKIdvwN/vz66EIQTD+FZLLcM0I7shDkKrXa/8n5t1HyFlpuV5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DS0PR11MB7904.namprd11.prod.outlook.com (2603:10b6:8:f8::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8398.25; Wed, 5 Feb 2025 11:47:08 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%5]) with mapi id 15.20.8398.021; Wed, 5 Feb 2025
 11:47:02 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <173824864151.2884264.8045096506404751820@b555e5b46a47>
References: <20250124191250.56833-1-gustavo.sousa@intel.com>
 <173824864151.2884264.8045096506404751820@b555e5b46a47>
Subject: Re: =?utf-8?b?4pyX?= i915.CI.Full: failure for drm/i915/dmc_wl: Do
 not check for DMC payload (rev2)
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Wed, 5 Feb 2025 08:46:57 -0300
Message-ID: <173875601778.111435.12433294739961539471@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW2PR2101CA0025.namprd21.prod.outlook.com
 (2603:10b6:302:1::38) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DS0PR11MB7904:EE_
X-MS-Office365-Filtering-Correlation-Id: 2048f558-5716-415f-915a-08dd45dace7c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NXZFZ0g4T2hrKzRzZm5oMWVmaWQvbmtGa3Bya0ZFK2ZOY04wUmRYdWliRHN6?=
 =?utf-8?B?d3lzdUkra2h3bmROLzJHc0JuYXJtY0tSamdLcFZKWFdjbE52Q0plcW9DZ3U1?=
 =?utf-8?B?VG5vajNyRjE0M3B2OWpxYnVLeENnRy9kRUs5WDF6b1JzcnlkcFZlTFIyN3pI?=
 =?utf-8?B?ZEVkczlmR0NyNitLMVVLeEkrS1pqSWVWUWJzT0ZUbDA3TmJQWU9JLzJLN1p1?=
 =?utf-8?B?b2hFVisvZGlXTXBjdFExVnA1Ly9WaUZiZHFiSGpWb04ydGRLWFNHU0hqZ2Q4?=
 =?utf-8?B?NSs0QU9HbXVCUjI5QVFIdVh3VzV6d25uY0VhMld3eVNwbUM5MUprNmVDNXEy?=
 =?utf-8?B?a3BwQWJCZVVGSW5qRnkzeGpla0Vvbi95dGx1RS92WlF2NTEyVkF4TGxEQ0lv?=
 =?utf-8?B?QkxXanVzcWMzYjZsWmFBSVBFejZucTJqUDF2a1BHaVVsUGNIU1RtOFpwZHQw?=
 =?utf-8?B?L3BkUDF1SUNzY21wNXlCQnRMRGtMQkFPaFZrdzBTWHhocmVlRTZVRnBjbkwz?=
 =?utf-8?B?ZTF0eVhCS1dtaTR5QThxMGc2UnVWdFNiTndLNzA5YythRkVOUTJHb1dMaGJQ?=
 =?utf-8?B?cWk1ZWIyNE04cWdsVitod2phb0NXV0NLdk5JWXBYeEdYSEwvUjZiNm15OFQ0?=
 =?utf-8?B?bmxqd3pYR2JiK05KSWxsYWNsdmMwd1NKOGZNYnBFQW8vNVVnalRBRzFLNXZy?=
 =?utf-8?B?UWgwYjhLcmt6NU5CaXovRDV4RDlRY1JBRDNHaVRJK2d2bXZHWjcwTEQ1T1BH?=
 =?utf-8?B?UWJCZHdibyswVW8vU3pmQk40bUtvWUdXNnU3UHlVMktHcEdPMGRmSkgrWFR6?=
 =?utf-8?B?SEsyazkzakw0Z3VCU29ZbmRDeStBZm1sZk1wbU9TZGt0Q1hhZmRQL1NSM0tE?=
 =?utf-8?B?ZkZIckNrenl5aS9zTXFESXl1QW05V3pmYUJxaHlNeTdXY1dnd3RmT1VjZ3la?=
 =?utf-8?B?bXRrbEhiQXg1MkZsVFNFWGx3ZWR3SGVmU1dNdEgyOWdWRTErSElYQXJRdERy?=
 =?utf-8?B?b2lOYVlYdDNaVFMwU1Z0L013dUtIZVRZRDRpdHZBMWpZZXNFYy80N25vRzUx?=
 =?utf-8?B?cW4wcXB4bXNyMkVZdHBXbGhGQkRpVlYwQ2NHN0hSMWJMS2wrblNKTG82djJ4?=
 =?utf-8?B?YmZwVk0xSEhlQVhsK0J1VW1pNWlvc25Nd0RWLys3NXhrdjA0eGJZd3UyVk5y?=
 =?utf-8?B?Ynl4N1lmSWc3YWlObXZGWVBwTHUvamx0VXhhenFuTDk2RHB5cjFERTR1U2p2?=
 =?utf-8?B?dWdCdDJ5cnFlZUFWV0VOa0JGaWFUSUFEQzJUOHRveVpUc0R4enhLV0s4aENI?=
 =?utf-8?B?bzhiWjhtLzFFaXJhRzRTa3JOV3VUcVVNU0R0SjQzSFJoWXpleUFYcXEwWHp6?=
 =?utf-8?B?c05Md2hmVERwS3BuakhiZTZNZGtCSitlN2MzaWZyQ1FWakJ2SVZYM2RwSXBD?=
 =?utf-8?B?aFZ0TEZTV0FqSmRZaHAwNDRsZUQ4QnBlT2NxVFQrR01LMXB3SGVQRjdIMjBC?=
 =?utf-8?B?amlIY3NjNUpWOUptRUE4bkRnRW4weExQSUVacEdsdXg2SHZNSGhWMGZMUFZD?=
 =?utf-8?B?dFpnVkhPVkNZNUN3clFhdU1OZFNsWC9uQS9tMzU0b3M3dkxJUHkxZkdsaEpJ?=
 =?utf-8?B?ZTZGWUVLMXhaZ0p5enArTmx2ZU9zazNUVm9xK2t1SGJldFJlRkFhNUoyMUNs?=
 =?utf-8?B?KzRJQ1hKWHBKQWsraXpYT05EK0grY0JnZHJKaG92cHNLTE5xa05OTGVjd2hN?=
 =?utf-8?Q?lkFs661ImZcFYCMo6GGHKeepXfOdj/T1LIa3ai6?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ME0zeTVBVFNmeVZoTkJSbWozdnpoMnh0MEJKMjArZ0t3T3NDZENLWHI2RUw4?=
 =?utf-8?B?ZUZFOHFaQU52ZmRmRFBVbjdkcUJXSENlWmNtRXIxblJRS1l0em9NOFlYdnNz?=
 =?utf-8?B?d3RYU0pCVXJyS0FKZUpXdFZNbzFHWGR0UXMwQlRYUTFrUkNpRUlWK040RlAx?=
 =?utf-8?B?Wll6a3cwNHZFTStyVWtTYjhNdjdYS2ZXMHh6Wm9VcjZUL25reG5pZEZIbi94?=
 =?utf-8?B?T2wySnBQTk90SUZwZysybFg2dmFFSFJFeFFUNG9HS1ZZOHBQMkgrT1RZRkdK?=
 =?utf-8?B?djJQUzhBRVpueW5wUHBYbGYzTnBtVm1wbU45Mk05ekg0bWhvM2psSWN1dTZ6?=
 =?utf-8?B?dnJBSno1WksxTHhJaEp4NE13WnUwelMzcGhoNDVZcUNLZnNlWkFOYUxrT2Fw?=
 =?utf-8?B?U1hDeDlQU2IvV2VVS01PNy9NQStHQThPN2lzRHYwSlNaaHIxbStWNW1hZGxB?=
 =?utf-8?B?VGxwRnJ5d1VEb1R2cFhZY1kwQk1RSU1hOXpXV1pmaVJrUkh6SkxXb3o4T2Zx?=
 =?utf-8?B?UklucjVvYzFnQldnL2I4UGRwU1cxK0JnTGs0bk5IS0xZajM0SFdzUXhwT1ov?=
 =?utf-8?B?Tk9kSXAwUnhBUzViNW9zVXp1RTJaZDVubGh2VnpOOE1aY0ZCUE4zc3lUUmt2?=
 =?utf-8?B?RzdIKzRlWHh2djR6Yk9OcUVzT1hrL0hxbTF4L1ZuUU9odFFXR0c2YnYwWFZj?=
 =?utf-8?B?S2hjeVFBMmVlbGVHSGk2RldqeFA4RjRnQzN1cTJHVlpVa3RueWxIUmtWdVdQ?=
 =?utf-8?B?MnVmOXJhN2FsRkNMcmk0M0EzNFd1RStSNzVJZll5VXAvQ2g1UGJWNzBVM1M3?=
 =?utf-8?B?enl4aFN4S1ZOREZTQ2tqMC83c05CdGhQUnBTamhieXkvWHpIbmFicmJoMkQ5?=
 =?utf-8?B?TkdySTBZK3dSRUZCSkFIdU9qKzRTakNpNmFpZVA4QitHWFFUOHBVQnFsd3NU?=
 =?utf-8?B?N3JNdjNMTGJOYzI3YVc1T2NGVGxnZDNvdU4zcWRHeWdXVXlTNTNDWHRhcFlF?=
 =?utf-8?B?VlJUZmdmeEdtTDhuRm55a25qMW84ZGxJdnlnZThtVFNWeDA2NllubHc3c1Zy?=
 =?utf-8?B?OEw5bktxdnRIeGFGYU5EcEl6L2pIeGtHMU1oL3JuSlgwa0dZbWw5VS9yMXZp?=
 =?utf-8?B?bWE1cVdmRGJZVS9kaE5VdmxQV3p1ay9TVVlGVFdlUU9rUVdyNlpQeUNBSUFY?=
 =?utf-8?B?VGgzbnVOano3dHc4clZKWE42QnViOVN1aDg5aGc0TWJVTnR2T2w4STMwamVa?=
 =?utf-8?B?UjVLZXFEZzJZN2pwdngvSTF6aDBFTW9hbGJNM0x4cUlZREVRQ2ZKbnFuRlRB?=
 =?utf-8?B?Ym5iS0plOEIxbjhUcytlWE5zN29aZzYxNEQrNzJmb2hvVUhKdms5endCZ3Fj?=
 =?utf-8?B?eDJHZ0VvU1RRK25nZjZTUnpLaHg2Rm4zMVRKOHpZVlAydmFxN2Q1aThhN3F5?=
 =?utf-8?B?T1Brb3hKQUNVZXhFcEljSjcrMERxK3Rka2pzWmNMSlNBUERjSDFzWERLZ3RV?=
 =?utf-8?B?TU1qS2pPVmZaNXkzSm9Nclg4T2NMdXlYZHg1RXBhZEFrL1k0dTk0cDFLYkt1?=
 =?utf-8?B?VEQweFVmWFRDc1lMc2hndmM0UFJUT1VVZmRVcExHWE01ajhsc2dkZUpBUmtU?=
 =?utf-8?B?cWVlb0ROK3NoUXZtbWN0NFJUOUtva2YxM0k2VGt2LzVidHc5Z04rakNlWksx?=
 =?utf-8?B?eDBydEdLclN2d2x0WUlwS3dmUFg0QmVLdG8wQThzaTZPTjlWK2hvdTdTM1Jq?=
 =?utf-8?B?S0tsb0RNc2pEdldLNUxwS0JQbFgyWlJJSHByU3lQUlA4SWxsbnRLNjhDT1pI?=
 =?utf-8?B?VDFQLzlOT05rUmVRekc3MTJiTWhoazQzZUs5UU5XRytKbFFjM1VITFNoazJq?=
 =?utf-8?B?VmFSd05pdlcxamRDcDRiMmtQRjB6djBjQTdLbnlFUHBMZS9EbmxsQVhJblZU?=
 =?utf-8?B?c01sdU9NNkxWZ3Vha2tCbHVGcUxGYWhlRTJpaVlBK3BJUmQ0Y1JkaVV5NTVh?=
 =?utf-8?B?aTZhRlREUC9xSlRCMmhDWHpuMmlQbGJJdkEvbWFsK09rYit3RE9LNk5FS3NF?=
 =?utf-8?B?UGdpVUhVbnJ3M3JrcjZyMTJETnkwRVBBelRxTG05SC9vOFFLRmk4ZGNTekd5?=
 =?utf-8?B?YzdkVGsrQXBSN2ExZHJyRi9lZnhTQUlleDRxQ2JjQ0Z3SVhGYjlXeFJpSUNt?=
 =?utf-8?B?TUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2048f558-5716-415f-915a-08dd45dace7c
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2025 11:47:02.7564 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: taaVLveGO50+bj5fjeU3w3v3nTh5pesk5V0LCO7/bquXIG5s9S+UMsVG5oOVrDHrGhLbedVStam8BkYyc7CHnA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7904
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

Quoting Patchwork (2025-01-30 11:50:41-03:00)
>=3D=3D Series Details =3D=3D
>
>Series: drm/i915/dmc_wl: Do not check for DMC payload (rev2)
>URL   : https://patchwork.freedesktop.org/series/143951/
>State : failure
>
>=3D=3D Summary =3D=3D
>
>CI Bug Log - changes from CI_DRM_16041_full -> Patchwork_143951v2_full
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
>
>Summary
>-------
>
>  **FAILURE**
>
>  Serious unknown changes coming with Patchwork_143951v2_full absolutely n=
eed to be
>  verified manually.
> =20
>  If you think the reported changes have nothing to do with the changes
>  introduced in Patchwork_143951v2_full, please notify your bug team (I915=
-ci-infra@lists.freedesktop.org) to allow them
>  to document this new failure mode, which will reduce false positives in =
CI.
>
>  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143951v=
2/index.html
>
>Participating hosts (11 -> 11)
>------------------------------
>
>  No changes in participating hosts
>
>Possible new issues
>-------------------
>
>  Here are the unknown changes that may have been introduced in Patchwork_=
143951v2_full:
>
>### IGT changes ###
>
>#### Possible regressions ####

None of the failures below are related to this patch, since only PTL
effectively uses the DMC wakelock.

>  * igt@gem_exec_gttfill@engines:
>    - shard-dg2:          [PASS][1] -> [FAIL][2] +1 other test fail
>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-dg2-5/=
igt@gem_exec_gttfill@engines.html
>   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143951v2/shard-=
dg2-3/igt@gem_exec_gttfill@engines.html

This maps to
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13546 .

>
>  * igt@perf_pmu@module-unload:
>    - shard-tglu:         [PASS][3] -> [INCOMPLETE][4]
>   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-tglu-5=
/igt@perf_pmu@module-unload.html
>   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143951v2/shard-=
tglu-9/igt@perf_pmu@module-unload.html

This possibly maps to
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13604 .

>
>  * igt@sysfs_heartbeat_interval@nopreempt@vcs1:
>    - shard-mtlp:         [PASS][5] -> [DMESG-WARN][6]
>   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16041/shard-mtlp-1=
/igt@sysfs_heartbeat_interval@nopreempt@vcs1.html
>   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143951v2/shard-=
mtlp-7/igt@sysfs_heartbeat_interval@nopreempt@vcs1.html

This maps to
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13193 .

--
Gustavo Sousa
