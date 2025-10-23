Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB082C0043C
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Oct 2025 11:34:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C61710E3A7;
	Thu, 23 Oct 2025 09:34:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dcTKCeSB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C614610E3A7;
 Thu, 23 Oct 2025 09:34:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761212047; x=1792748047;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MeVI48yfGjYRmd7/3oi2zDJ1IJn7vR2NqDzs/5V34gM=;
 b=dcTKCeSBdsSqIds5VmBbFB/wJipRYB8HC72cSOo96H4UM8RBHfABqeER
 t99+1IDCAOi8FeJwUU0hBzjpRtdlZiq/+po+pDLYHQA9blcQ3pCwRL+nt
 tbTx9M9UHleKh4nuBZCuULEllxMwmvllXj2mHfsZGjNQLRGgb9M74X+8A
 rGbFVqAimJi1bUCFB+HrqfbOvrgNN/n1m2PLRXDEAQJGTLMhBUsJdtXn2
 TRFiFKR3RQnNmFRZ5d0pjZwjYMzQ4oacQt9zJLbR4VxoaLx6TxNEq395V
 aG88CDjqXqgO2HrwtasiFYITp8FPEHnFWG9EX5ON78CGiYMSYLMOlT29v Q==;
X-CSE-ConnectionGUID: inwZsdXHR6ej/ccnb5IqDg==
X-CSE-MsgGUID: 6j+ZREdwQNe+jP49DPeCEQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="73981041"
X-IronPort-AV: E=Sophos;i="6.19,249,1754982000"; d="scan'208";a="73981041"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 02:34:07 -0700
X-CSE-ConnectionGUID: oLaoVldMQxqmnk7mzndkHg==
X-CSE-MsgGUID: 7x0i4xNxQyqO7fSnSGln7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,249,1754982000"; d="scan'208";a="184887262"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 02:34:07 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 23 Oct 2025 02:34:06 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 23 Oct 2025 02:34:06 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.42) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 23 Oct 2025 02:34:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XQBsXoQgKZXNIjJegr6DQqN8oEuFC/0of5F8lmPAFA862R7Ns2JatOfUkEL9xXHnGVSOZbxxTXdvWgGHL7n34MAVkUMq4iaoTnGb1PI+9ueOP53Y5y844b//gOz1n+RMLl5z+kBrg6qugn47JwkDBBWbPKRez64Yo9x5jzzb91DrzQhgZfe1uhVM4YFDTfSfD6aco7RvExXGIR0iT6PRIM+M7T8KmhMdxeXspP/J1yxyzpTSEnv0piDaFsY3lEw+HRRBEIAJSMcRt8PViJlpkl2RmCOsjcOMk3PN+PzTGPLtAFdeejKhouuFWuoWxyhNWyfpiPx8zJf7FKLDrvVJMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pqw8EXXqQyt453SYc4zgvJjbKPnfv48xb68OPf0mGI0=;
 b=OVz41y+NhDLCzimfSX/LWdNHsQRGE9lSLxXWKErhzVCHzcT9EyLBvPT9Z80Xpa6wJqlFv1lPVD8Wkzejb2sYxkgiyuDo8E4heEfuUM0g3GlHTbm0+i2EXAbpigcBp93gdisdr+BQ/pMMFpxNLiwYQpZgcy0o9tu+nii5766bF0rAUEJb/77OpBxnJXWwuCiDWTXn2W5xPugo2+vFfYncLNUIfxtymQPLrcIwjw1qN+HTLY2a0dGOpBDw7gV8gGm7/3iOG4EBGK24617Ye6qAGWG6QlJHgtXWMmCpKimPGU/DTBHvZNwPeWTLGVvB4VbPlOh/KNYMYQgcw06yQ1M76A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by SA3PR11MB9487.namprd11.prod.outlook.com (2603:10b6:806:47e::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.13; Thu, 23 Oct
 2025 09:34:00 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%6]) with mapi id 15.20.9253.011; Thu, 23 Oct 2025
 09:34:00 +0000
Message-ID: <025360f0-1630-41a5-a38a-1f243e2ab1e8@intel.com>
Date: Thu, 23 Oct 2025 15:03:53 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 17/25] drm/i915/ddi: Define LT Phy Swing tables
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <ankit.k.nautiyal@intel.com>, <uma.shankar@intel.com>,
 <gustavo.sousa@intel.com>, <lucas.demarchi@intel.com>
References: <20251015040817.3431297-1-suraj.kandpal@intel.com>
 <20251015040817.3431297-18-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <20251015040817.3431297-18-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0159.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1cf::9) To IA0PR11MB7307.namprd11.prod.outlook.com
 (2603:10b6:208:437::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7307:EE_|SA3PR11MB9487:EE_
X-MS-Office365-Filtering-Correlation-Id: c8393b69-34c4-4fed-d729-08de12174bda
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Z1o3S3JqWmFVUWJMUXpuNXhsZkMzSG1ublVRVm5JZUtNNTh0cHZFa25DWUN0?=
 =?utf-8?B?UjRHU2gyUW1wN1VQQXRkemErRTlrT3pNZWV0dG1TNTNVc2NiMnU2ZE50STB0?=
 =?utf-8?B?dmFyZk5hOUxsUjVta1RDeE40ZHFRVFZhVzZEYzJaMEFIQmxRb1hzTFQwcS9J?=
 =?utf-8?B?RGpKdmZvUHhzUWsyb1MrK1R0Nm5WcFl4c21NUHloT1h1SzJXUzJxbnhSZmQ4?=
 =?utf-8?B?Y25WaFNINXMra01acWgrQzQzbmx4ZlE3RmpEcGFGazlDUTB5VGZxNUduSUR6?=
 =?utf-8?B?dXQ0Q0VuTjVPS2toMUk0eEZUQzRTQWZDVGt1aEg3Y2pOTUJKYVp4Q3NReFE2?=
 =?utf-8?B?dWdUbGlmcThXaXZUWHl0dDB4QW9HbFd0bnVwVDZULzF0SjhRYWN5Q3AzN2wx?=
 =?utf-8?B?Um8zWTQ1Wk5IZ0pzYmZmbUt2aVN0SnU1NmRycnplOUg0clFkNVRSdkgyYzVs?=
 =?utf-8?B?SWpKZE9BYThZaVU0N3FITkZrYU1MVTMzT3o1Q3pTSWJRTE5qTjFWRkw2ZFBs?=
 =?utf-8?B?MUVldVFZbHpHMzc4bGtERzhTRlVONk0rMlNkQnRnSkV5cnMvM2lneG81aU01?=
 =?utf-8?B?ZnFGUGd0elZueGFYVlNUQjdmYlBCZXkrUXJqR3JkVjh0Y0hPaHZNOGVXMlpa?=
 =?utf-8?B?TnM2bDhzYjIwM2Nnc0JFYXdyeDI4cWlHdHRGeVBBWHAwcklTSXpEcG5LTWVa?=
 =?utf-8?B?emVsL0ZtVjBKbWVhNjNzZk1qaVIxZ2R4UkgxOTBGZTRVZ0svcnVrdTlsbnhW?=
 =?utf-8?B?SHdVb2k3VW5oZ3NIamswQmRGajA3VHM4MjB3U2RramxoMThBRHFtWktickNY?=
 =?utf-8?B?SE5NejlRN0QvUE9RampVdE42UStpcklkZ2VNYVFBdVp0c0FWd3l6cXVnb2tr?=
 =?utf-8?B?c0lwYXJxTEhtNUwwMk1iWjBwYXduUVBkMUI3NUdRL3phbXhIV2xvdWdpZzlJ?=
 =?utf-8?B?QyswVDl0Q2hDaDNMSEw1amZuRHk4OGFoY3R6U0VkZlNtRm4wR0dPU01QRVFa?=
 =?utf-8?B?djA0ZkU5U2dtcnNiM05vVkdlZ3pUdm1XVFNpdU1OVEJPUElxNjA4c1FxUFZS?=
 =?utf-8?B?N2J1bm90eXAwcFVzQ3ZkbW1xUHYzcVdQVFcrUzVGQm5OV25hNmorUDNQb3Bu?=
 =?utf-8?B?RExlaXVHTEdpNWNWZVRLYmNSRXVBSVRBZGgwKzZJTWpHMWlqZzZoMWo0blF3?=
 =?utf-8?B?Z1pxaGZBUHNtR2xlNmZET1NOL1AwZ3BxWFk4V3RNejU3T1F6eE1NbzBERVJl?=
 =?utf-8?B?d1I4UDB3TkF1Kzk3VzlvbzRXUytZZy9iQUlWbFFWbWpLMldQMVNUaGZUdlZy?=
 =?utf-8?B?V0JSd0x5NERjRGl6OS9PR0dEdjN2YXZTblhJOVp5RklLN1AvYXJXVHhxWUZ1?=
 =?utf-8?B?NFpCUEMrWnM2THZ5azRJM2dNVzFDR3c0bG9lV1p4enZzTlh4SWx6dEdjRllo?=
 =?utf-8?B?blIvRkZudGc3aHBudDcxM3Q3YjNta2RqalRwOVR2dUEveVN5NklBRVNEMHdH?=
 =?utf-8?B?Tk0zdjdHVWxnUk9RbE9NOGJZbEd2cFRmemJBUUVYRHFWUHAzVmE2eGVySGhH?=
 =?utf-8?B?R0VDRTVVU21lMlo2c3FzQnNneXN0YTZlNXIrWE1rSkQ4UGhITmlOOHBYdjNj?=
 =?utf-8?B?SXBXblhjeU54dGRmZFpybHhKSW9ueGY2cmJQUEtzai90ZCtoNjk5Q01TYXpS?=
 =?utf-8?B?aklCaWVoZkp4VzNmRlFveklxWktKTUhwQ2Uwam1keWw4SzMxaFc5d0s4SURK?=
 =?utf-8?B?ODRMRDVXbStOREl3cXF4alUyVkdVc0RKdVNaRnJ3WnA3RHA0aUVWMmJMQXdn?=
 =?utf-8?B?RmxtUWlnRmFZUWg4eldLekM5NUZUNG85REQvQzV3UE5la0ZWbVNvQW5MNDAw?=
 =?utf-8?B?RHIzODlSc1lGK1lYbTc0TzVxMnBsUXBsVVVsNzdvVmpXUHRvVE5vY3lucURO?=
 =?utf-8?Q?P4M6VvnOHTHUzNtf4oraBNDIvDz3t+yG?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OU9QR2hUdEhXMjNjbFlXS3FnR1hxaXhlNEJ2RkhUMDJoUmFHc1UwNnZkeGlj?=
 =?utf-8?B?U3R0c3VsNm11T3pUVWxMeXB6UUhzK1hVemVIVUlNdDVpMmV1eTl1ak1aSWpi?=
 =?utf-8?B?emhjM3dsRHBaVGlSNEJsSGFjeXBBV2hqVGQxNlhwc20rSlJJWnpNQzNtUzhW?=
 =?utf-8?B?NXFYVzhTblVTZVpvQlJFUVE4QURuQ3lVd1RmUUtMQ1dka1FSRU9rSkMrK0hi?=
 =?utf-8?B?NThWU3dvelIvRFlRTDJOVUR0TDZIYTUveCtWRkhRSVFNSnZSeDFNL3UrY0pk?=
 =?utf-8?B?YlI5YnRmUnU2RFU5QjI3ckdjdUd1QU5ONDhjNDMyT1VreVZFeXNVNm5wcWM0?=
 =?utf-8?B?N1hkTlNHMUFUQlFFNWhTMGJ6Y0huUVpJckQ3WXdiZ2RES0h1VXp5SThtZVpG?=
 =?utf-8?B?ZEZXR0FUeFM3Y3ZlYW1jUW5LT1lQL1dPVlhUWDM0c3RCRTFCUmxqWExPUUNF?=
 =?utf-8?B?eldDQmxESW9KM3QwRFpWLzNhcXZrYVpkUzd5SGZHSUpLc2pxRnJnUytjZWtG?=
 =?utf-8?B?dGdwaHRNOXlXNWI4MDhnQjhJNzhReXdQVjZHcHVCTXZWa2laclZ0UDRDb1Nu?=
 =?utf-8?B?d2FWWnhSM1hURDNaRm1RaUhvNFpKcitsdm80YnN6bXFGV3J3LzZiclFhb1U5?=
 =?utf-8?B?enA0U2s5K0tQVnFUMktWMHhuNWF3Y1dsYS8ydVlsMi9TOFYwSUlMN1I4cmNs?=
 =?utf-8?B?UElTNllEc2RkVWlBZGJ4cXJsSEJvTitEelg0ZVlxRllidWFxdThuajI4N2JK?=
 =?utf-8?B?eStkemxDaXdJdVVnSUs2aUY2UmJRWFBLQzBsVTBkdzJKcnFWT1FzbDdJVm84?=
 =?utf-8?B?QXFXanppbU5BZ2tRT25FSUR1WjVKaUI2MS9lWURUb0pPajhmam9nZlJidGlY?=
 =?utf-8?B?UVpoZzNYaDdRREVzMXgzQ1JuWklYS3NFNzUrd3J4cFpiUmtsdnRCWjNQNXdm?=
 =?utf-8?B?enQxd1ZIaUxwRFVCdkcxdjhMYWNiRktYbVZGS2xLc3A2T2RCUXY1SExsakV6?=
 =?utf-8?B?dnJvWVV4TFdYeEZMdm5CWmg3WU82NGdiSXowRGpROWxCRnNHYUEraVVPVDV4?=
 =?utf-8?B?c3gzOWFldUNJRFJzNm15V2FoVnA2UlNaL3FFbHZTQ2ZXUlpjSFE5WXF2RXVj?=
 =?utf-8?B?cWxHemNYQVBMNXBkZWxEdTkzU3pMc2RZSmRmNTd6VGs1VDVtNHVjNUpka2NE?=
 =?utf-8?B?VGVpNEdJUStuVTNicVo3cmdyQ2VYQVkxc2o1aDNiVk9sclhzbkk1ZHFXUmVZ?=
 =?utf-8?B?Qko2cDB0bHc4cHhYSG9MbnJTWm1NNGVyR2xSdEpzUzdZWnlwY0w3UUxreEZX?=
 =?utf-8?B?R3FZem9IRDI3TVBxbHQvVWNidnNBZFY3ZFgvRUNkdjZRTFNsSVJsT1IzQlhH?=
 =?utf-8?B?MmQ3cDAwZnZNQWJ2QVhORW9nU1VDWmhxTHRYZ01FQnZrYlhiaVZHTVBBZTVV?=
 =?utf-8?B?M3FKRUVnQkp1cWZ2Yms3V1FnYlZ5QmJtZTRLdVZtRmVwNEIrWmtsWjhkL05O?=
 =?utf-8?B?N0RBc2Q0S2taMkYzNTMvZzlWMkQ5eFp4Z0xZazNVSURDRHBGV2RnbkoxWjlm?=
 =?utf-8?B?RndqNGx3VTBWN0VVMXhGcVZGV082Vm9BRmc2aEp1bUJnV3hRYm9mM3pQbWhV?=
 =?utf-8?B?cUlpN3hlRkptZHVYMXd6enJDd3dYQkJ3S0lWNnYxSVJnUnFOeXJDdjZMUWNI?=
 =?utf-8?B?RHl2QmF4QkQ5b3piMllYKzhpR3ZwdVBIWTM2NDYwV1FYQjM5S2VWWFNlenpQ?=
 =?utf-8?B?TEtGaUYvV25UcHh0VlhBdWNCQUdxQWxleGdONStXYWV0VGZNaXdXZisvTDgr?=
 =?utf-8?B?VDNFUjBDOTRoS0EvcG5wSlc4UjE5QSt1K1dndkN5QVFhS0ExNTFCdlI0eFhL?=
 =?utf-8?B?T3hOK0lzMXVMQkQ2dWFXbmRwVkY2QkxqczB3SWpCa3FDNFAwRUtvSUVWVHNw?=
 =?utf-8?B?UnVtTm1ZekxmT2dKWGZqT2NsUVdlZ3lZUVdXRVVhc0VRQ3lUQjk3QXY1OE4r?=
 =?utf-8?B?Mzl1Vmk3eGNVZk9oUDlMcnpCQjJ3Y1QwNnNIcmJuK2N4R2wvQkZYVG1ITDlD?=
 =?utf-8?B?T2crZ0dkNW5udDBVWXQ2cVJmeWxtMFhQb0ZiQldzVFVoTjhGTlRGYndTWk5P?=
 =?utf-8?B?dXNLUG15L2VFTjhxdFBxNmxPSUdwellydDZxNnJFOGI4cFh1cVlYQ25rT3Rl?=
 =?utf-8?B?T3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c8393b69-34c4-4fed-d729-08de12174bda
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2025 09:34:00.3705 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RWh4yJ3uKgMu0dEkdw6n5cLXJVE8ivLndAjUINPpSfHVXa6Ok6asd7K0u9q0/R/IviHGN2jtGdPkxlZ3eAbh1w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB9487
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


On 15-10-2025 09:38, Suraj Kandpal wrote:
> Define and initialize LT Phy Swing tables for DP 1.4, 2.1 and eDp.
> HDMI TMDS is not needed since LT Phy H/w handles that.
>
> Bspec: 74493
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------

>   .../drm/i915/display/intel_ddi_buf_trans.c    | 81 ++++++++++++++++++-
>   .../drm/i915/display/intel_ddi_buf_trans.h    |  9 +++
>   2 files changed, 89 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> index a238be5bc455..f39e690e9ed2 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> @@ -10,6 +10,7 @@
>   #include "intel_de.h"
>   #include "intel_display_types.h"
>   #include "intel_dp.h"
> +#include "intel_lt_phy.h"
>   
>   /* HDMI/DVI modes ignore everything but the last 2 items. So we share
>    * them for both DP and FDI transports, allowing those ports to
> @@ -1115,6 +1116,69 @@ static const struct intel_ddi_buf_trans mtl_c20_trans_uhbr = {
>   	.num_entries = ARRAY_SIZE(_mtl_c20_trans_uhbr),
>   };
>   
> +/* DP1.4 */
> +static const union intel_ddi_buf_trans_entry _xe3plpd_lt_trans_dp14[] = {
> +	{ .lt = { 1, 0, 0, 21, 0  } },
> +	{ .lt = { 1, 1, 0, 24, 3  } },
> +	{ .lt = { 1, 2, 0, 28, 7  } },
> +	{ .lt = { 0, 3, 0, 35, 13 } },
> +	{ .lt = { 1, 1, 0, 27, 0  } },
> +	{ .lt = { 1, 2, 0, 31, 4  } },
> +	{ .lt = { 0, 3, 0, 39, 9  } },
> +	{ .lt = { 1, 2, 0, 35, 0  } },
> +	{ .lt = { 0, 3, 0, 41, 7  } },
> +	{ .lt = { 0, 3, 0, 48, 0  } },
> +};
> +
> +/* DP2.1 */
> +static const union intel_ddi_buf_trans_entry _xe3plpd_lt_trans_uhbr[] = {
> +	{ .lt = { 0, 0, 0, 48, 0  } },
> +	{ .lt = { 0, 0, 0, 43, 5  } },
> +	{ .lt = { 0, 0, 0, 40, 8  } },
> +	{ .lt = { 0, 0, 0, 37, 11 } },
> +	{ .lt = { 0, 0, 0, 33, 15 } },
> +	{ .lt = { 0, 0, 2, 46, 0  } },
> +	{ .lt = { 0, 0, 2, 42, 4  } },
> +	{ .lt = { 0, 0, 2, 38, 8  } },
> +	{ .lt = { 0, 0, 2, 35, 11 } },
> +	{ .lt = { 0, 0, 2, 33, 13 } },
> +	{ .lt = { 0, 0, 4, 44, 0  } },
> +	{ .lt = { 0, 0, 4, 40, 4  } },
> +	{ .lt = { 0, 0, 4, 37, 7  } },
> +	{ .lt = { 0, 0, 4, 33, 11 } },
> +	{ .lt = { 0, 0, 8, 40, 0  } },
> +	{ .lt = { 1, 0, 2, 26, 2  } },
> +};
> +
> +/* eDp */
> +static const union intel_ddi_buf_trans_entry _xe3plpd_lt_trans_edp[] = {
> +	{ .lt = { 1, 0, 0, 12, 0 } },
> +	{ .lt = { 1, 1, 0, 13, 1 } },
> +	{ .lt = { 1, 2, 0, 15, 3 } },
> +	{ .lt = { 1, 3, 0, 19, 7 } },
> +	{ .lt = { 1, 1, 0, 14, 0 } },
> +	{ .lt = { 1, 2, 0, 16, 2 } },
> +	{ .lt = { 1, 3, 0, 21, 5 } },
> +	{ .lt = { 1, 2, 0, 18, 0 } },
> +	{ .lt = { 1, 3, 0, 22, 4 } },
> +	{ .lt = { 1, 3, 0, 26, 0 } },
> +};
> +
> +static const struct intel_ddi_buf_trans xe3plpd_lt_trans_dp14 = {
> +	.entries = _xe3plpd_lt_trans_dp14,
> +	.num_entries = ARRAY_SIZE(_xe3plpd_lt_trans_dp14),
> +};
> +
> +static const struct intel_ddi_buf_trans xe3plpd_lt_trans_uhbr = {
> +	.entries = _xe3plpd_lt_trans_uhbr,
> +	.num_entries = ARRAY_SIZE(_xe3plpd_lt_trans_uhbr),
> +};
> +
> +static const struct intel_ddi_buf_trans xe3plpd_lt_trans_edp = {
> +	.entries = _xe3plpd_lt_trans_edp,
> +	.num_entries = ARRAY_SIZE(_xe3plpd_lt_trans_edp),
> +};
> +
>   bool is_hobl_buf_trans(const struct intel_ddi_buf_trans *table)
>   {
>   	return table == &tgl_combo_phy_trans_edp_hbr2_hobl;
> @@ -1707,11 +1771,26 @@ mtl_get_c20_buf_trans(struct intel_encoder *encoder,
>   		return intel_get_buf_trans(&mtl_c20_trans_dp14, n_entries);
>   }
>   
> +static const struct intel_ddi_buf_trans *
> +xe3plpd_get_lt_buf_trans(struct intel_encoder *encoder,
> +			 const struct intel_crtc_state *crtc_state,
> +			 int *n_entries)
> +{
> +	if (intel_crtc_has_dp_encoder(crtc_state) && intel_dp_is_uhbr(crtc_state))
> +		return intel_get_buf_trans(&xe3plpd_lt_trans_uhbr, n_entries);
> +	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
> +		return intel_get_buf_trans(&xe3plpd_lt_trans_edp, n_entries);
> +	else
> +		return intel_get_buf_trans(&xe3plpd_lt_trans_dp14, n_entries);
> +}
> +
>   void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
>   {
>   	struct intel_display *display = to_intel_display(encoder);
>   
> -	if (DISPLAY_VER(display) >= 14) {
> +	if (HAS_LT_PHY(display)) {
> +		encoder->get_buf_trans = xe3plpd_get_lt_buf_trans;
> +	} else if (DISPLAY_VER(display) >= 14) {
>   		if (intel_encoder_is_c10phy(encoder))
>   			encoder->get_buf_trans = mtl_get_c10_buf_trans;
>   		else
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
> index 29a190390192..cec332090a20 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
> @@ -50,6 +50,14 @@ struct dg2_snps_phy_buf_trans {
>   	u8 post_cursor;
>   };
>   
> +struct xe3plpd_lt_phy_buf_trans {
> +	u8 txswing;
> +	u8 txswing_level;
> +	u8 pre_cursor;
> +	u8 main_cursor;
> +	u8 post_cursor;
> +};
> +
>   union intel_ddi_buf_trans_entry {
>   	struct hsw_ddi_buf_trans hsw;
>   	struct bxt_ddi_buf_trans bxt;
> @@ -57,6 +65,7 @@ union intel_ddi_buf_trans_entry {
>   	struct icl_mg_phy_ddi_buf_trans mg;
>   	struct tgl_dkl_phy_ddi_buf_trans dkl;
>   	struct dg2_snps_phy_buf_trans snps;
> +	struct xe3plpd_lt_phy_buf_trans lt;
>   };
>   
>   struct intel_ddi_buf_trans {
