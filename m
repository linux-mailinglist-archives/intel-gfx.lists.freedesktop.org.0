Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDEB7AED640
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jun 2025 09:55:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0FEE10E3AE;
	Mon, 30 Jun 2025 07:55:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FXfhvFHM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9819510E3AD;
 Mon, 30 Jun 2025 07:55:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751270125; x=1782806125;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sNjRoXZDqhp1QpZEI+ewbe+yp3ogZ19ebKo5k4wgmyk=;
 b=FXfhvFHMYd+bQ6EQHI86C/fieTcKwQbZ/J5M0duSVzVu2uRBMGwmi+V/
 DVo5tbqN4fzqvz95brP9OIlJKEBiQkrpXX0E+OJyyk1tXkedOiNS/yVEc
 fj2hi9gdQHpGDqWMw0ckfZ+gbGQdO7kugVHqCVCyeNcw2zl/X+KSQ6J6z
 9+I7A3P0W6K2yT4+YfPWOTFiU5ZPohvp4PAhUEETj5u60FXaLHPHDBmQS
 YWirMqdyVUS/QHAGFbZFuMiK4SvQ9oGOuH32OnyCKZAQnYQZgL9PUKH9M
 R2ZMiua9IvJ4feeg5Hv0YFnSr0LNUSkS5SRoZJacizl2tB7VtZykWFD6R A==;
X-CSE-ConnectionGUID: GkBXeRPgTrSNSFbWNPxH/A==
X-CSE-MsgGUID: PBR9r1yeTmyafHoliNuuZA==
X-IronPort-AV: E=McAfee;i="6800,10657,11479"; a="53426439"
X-IronPort-AV: E=Sophos;i="6.16,277,1744095600"; d="scan'208";a="53426439"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2025 00:55:25 -0700
X-CSE-ConnectionGUID: gaKs+mg0TUq7zyaYJ8tEDg==
X-CSE-MsgGUID: /3B18tylRuO487rdAEhqSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,277,1744095600"; d="scan'208";a="153933408"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2025 00:55:23 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 30 Jun 2025 00:55:22 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 30 Jun 2025 00:55:22 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.87)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 30 Jun 2025 00:55:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KkvgPgg3376/6VY8jrjkGFVdZ57YwyE0qScfSh5xQN30mTyKDRbZ0KhQeFXYGc/TihM1gWkI8rNPQBd6L53kejfsBpSqQCA3CgYtCY6apmhCEtsj+gi3px+RehAhjWfIENAQmeirUPyELxwWbU5lREqsZYglGh68K1InOdMPFSIUCnnMhMoaAFGb04rVnRn63DDivY74RmX+BhQJWyIUSDvcIUdhGtl3aEvmvxQsagbGuI8WOVbM60YVCEOrgKEy6UB6F29k2YhZwdw4kfLI6lINcnFh9eAoA5yDyqewmDRQQH8gswFZnmLrNOC+zWj+8mkzy5TRlth5kjiscPPtWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wm3rxSPfdeb9OcepK03LMkh13DNchlqvfvXitO5mZCo=;
 b=QtW0foga/6SlrqEx+imWTTju3umZFsSyEWCRBs7s9hwsgtFvU939Jl21Pq4glomI/buuhtHnspvdQvRH20f91cQihxSCNV9NGN8J4bSMaErCeO/uLbR667cbR02Td7j++HF2cN5ccYiq0Rbd7D1f7qLY/eC52GuxBnYc+EBUGFQ7tkAMEYoR+b930kltW7hPPFHxU/2FK1Lmo6pXhSjOcV1/N1nJhJuoX3yrdWWYqkCPDqGtqMMTyj4vwuEgLBMgVcV47e3GNVEeJy9AAqki9D+hhY3ZHkLHPhF8ezwpJC7TWrilo8mOv8YEma7kZKSXsawvxUbq196dd345masc+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by LV2PR11MB6021.namprd11.prod.outlook.com (2603:10b6:408:17e::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8880.21; Mon, 30 Jun
 2025 07:54:38 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8880.030; Mon, 30 Jun 2025
 07:54:38 +0000
Message-ID: <fc2e05a3-c6cd-403f-88c8-cbffdc205940@intel.com>
Date: Mon, 30 Jun 2025 13:24:31 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] drm/i915/display_wa: Add helpers to check wa
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <gustavo.sousa@intel.com>
References: <20250630054918.2823537-1-ankit.k.nautiyal@intel.com>
 <20250630054918.2823537-2-ankit.k.nautiyal@intel.com>
 <80a481128d5f979c59c4c5c6856452969d014474@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <80a481128d5f979c59c4c5c6856452969d014474@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1P287CA0017.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:35::36) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|LV2PR11MB6021:EE_
X-MS-Office365-Filtering-Correlation-Id: 3a229ead-fd6f-4e98-ea8f-08ddb7ab5cb6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bVlxL3MzaUtJdFZZVXpFQm1EQWw4SnRHWFRJWjBESzdkR3dUTFozODYvZndM?=
 =?utf-8?B?RHNudzlZSWRVTHV3NHhFTFp0TlhjTUkzT3dNR0pMWjJ0WnFUSTEwbmV5Z1Fy?=
 =?utf-8?B?Ni8weittMmtsUG9Cc0EzZzJQQ1dyTTFjR2ovMzZoVUJtaUZhMi8wcStadHBn?=
 =?utf-8?B?aHoxYlBrVHA4azlLNlJiTHNucVpJVEphU0RUQmRpYy8zQ0NwODd3MEZwQmlD?=
 =?utf-8?B?Rm1paGdLeEVoMTREdVE4SzVxcWh6dnppaWJvU2tDWlVoOENkTzMxUUNpRmwv?=
 =?utf-8?B?Q2ZzTE9Ed1VXQTB1SENvMnNKT2d1Z3JFeUEveHR6RVNkTWRwRjBueUZvaHoy?=
 =?utf-8?B?UmlEZzhsSldYcGlpOGlRL3kxSkFUVzFRT1Q5OTNveFVtSmkxUFZHczlyRzNB?=
 =?utf-8?B?V2tCcFIzK3VZcFR1Z2h0S1RqV05QYklxSFJFdzNZN2tXRmN0ZS95dm5Hc0NS?=
 =?utf-8?B?VC9YNkpyTEorK3NKMTFnSnBsUlNidlRvYVo2NXdmd3orOWo2TDhTcDRibTA4?=
 =?utf-8?B?NVg2ZnQxVXk1YXFUOTNQNzMwcEdZOE1aenJHMURtejl6WDBzVzN0R1EvZFZw?=
 =?utf-8?B?TzJidXRTNEwxZWlibUNTU2ZPai9XcTFubVM2UDNSR1FvOFJXNy9FTXYrV1Fy?=
 =?utf-8?B?S3ZaMjd1ZlZoT25yYTlzZVNtVERjcjVsL2MwcGZoUkprL3Q4OUJKbW5lbi9l?=
 =?utf-8?B?c2FUWmpneDhvQU43QTYvNm9rVHNFN3RSU2YyU1BEbkZPSStLMnVmTG5YTXhY?=
 =?utf-8?B?eUVjR000VHFoNXR6Z2J3eVlJUkV4dmp5YkdpaEJXRkVKblpmN2NxcUxxNjMr?=
 =?utf-8?B?cmRyOC9XSnZRU3VVTjBoZ2NYV1ZoSjMvVFlVZjJiZU9mUmovNWlTakpnOHcr?=
 =?utf-8?B?N3BZcWVxRDMzZDRIejBnNk5yZHpWS0ZHcDdhcndHbElTakFHY05WL1kzdjZy?=
 =?utf-8?B?RjhnTHoyVlFreldBaURQYVBuNmxKZnZOdGNYQko2NkxxbVB2aW9acUZsdXVE?=
 =?utf-8?B?OUJmNGlMcVVBZzV4bDRZOE1GdVpaalB1QTJIM1JRZEpPMVMwbDUzYjlHckgw?=
 =?utf-8?B?dzh5NU52VzRmYWZRY280VjUxVk9SQy9jQy9UbU5SSFhrRzJxalBQNXRmTE1v?=
 =?utf-8?B?ZFVhcjBMTjR1cXRRdVM2S2FFYThqeVpvbDdXVGJCeDBVQjBYTENFUEl0U1V2?=
 =?utf-8?B?clFGTmxKbkEwN3Y3a002anBsUktYYld3QVN6R2dCcmVmVEFwZG5RS3FDdGxR?=
 =?utf-8?B?SDlxV04vYWNLTGxRek1xZGoxSGR2eXorYi91cXhCY3Z0UGE2YWFpMG1lWndp?=
 =?utf-8?B?ZkE4ajFTS2dKRHpqN1pqTWhqRzIxZlVvRXdRNFduRjJLYmFLQkxJT0l4ZnhR?=
 =?utf-8?B?Nk0wUVhZb3hCSzRCM2QzVFM0ZjZVanpCL2NBbWQ3WFVYVkhEbmxWajlpTzJJ?=
 =?utf-8?B?UTJKVmNPZldVSFgyS0VxWm1jMXY1aUtGYjBPZWlDMG00L216TmhMZkx6VUd6?=
 =?utf-8?B?MnliTG96RXNxWTB5ZkdJbUFpSWlaSUVaNlRYN3lmY3RGWkNEQWVvOUZZampi?=
 =?utf-8?B?c0FsOG02dU9USEF6Zzd5SVdXMWlZWkRwb1VrN0JEamhodldmMldhb0lEazVs?=
 =?utf-8?B?bFNld0V0cnFSUVpaaUlEY1ZtQU0ybjhMMlppU0c5OTZYRk1jN2pGSDBhbFlY?=
 =?utf-8?B?V1A3c1dodDFLMUhpWDR3UEVVYjdtNExDZ3VFWVYzYnVuSXpEOHBzMkEyanBB?=
 =?utf-8?B?N1lZYklqK3RYNjJzT2svZUdOWmdMczE2SlArUGFzSzBLZjJlN2ZxUHBRa040?=
 =?utf-8?B?b2xQZGFYZW5SeVJGRnBMOHZQLzY1Uk5OTFZHM2xROGlMTm9ndXBGVzdQMmE2?=
 =?utf-8?B?T1d5bWNNdDVKSWNYc3lqTDB2ZlAvL2xVNDROK01Qemw0OE11dUJsa1Vva3lm?=
 =?utf-8?Q?s0O1VnP2wTE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VlZmNEhJZnZEZE1oOUI2SGxHSytKYkVqV1RrOEpnTFplblN0MEZRQWVTMDJY?=
 =?utf-8?B?ckpIdkwrWGQyQ0hDdnQxNkJTSk9tcXpySjlLSytvNzhURVE3N2I4dlgyYzkr?=
 =?utf-8?B?TEoxM2g5eFowaC9va21KWDZHcHNQcEZERW1POGFMNHFGUVRLeGVTRXVBQzJV?=
 =?utf-8?B?eHlndVdMTmlvQzRUbWdtN0tuenA1ZmdLQzhuVVBDSXBrbElmdkxNZ3FIdHlO?=
 =?utf-8?B?RXJJYjlJZHdvS1g1UE4waHFCejRPTW8yMXBHMVJlZnVvdG82YXVRS0RIZFha?=
 =?utf-8?B?enhaUC95UjJLbnIyVmo0MFBYZ0lFSVVZa1d4d1FBL3hWcDhPaVhWMlllM2RP?=
 =?utf-8?B?cmZENG4wQ0pYUU1jSW9LalhaV2xzN3pJUEFZSWwxQmVjNlJxdDh1cGNqNnJ3?=
 =?utf-8?B?ZUw2Wnd0RExOV2ZvRDQ4UU1XTklGcGlnTmZtY0dReG9hY2ZJV3REWGVzVDIw?=
 =?utf-8?B?WHZHTzAvaHRGQUIwcVVNQS9iVXdaOFZUREM4aHpwZEVITFNpd2x5bWZjS0ZF?=
 =?utf-8?B?b05nRGFmTysvejR2cFdBSzA3OTlvWEZ2cTRJNWg1M2ZxajhVSXJEbXlzakw4?=
 =?utf-8?B?N3ljZXJaYm1QMXord0ZsQ2xsZUNGSjZZVHYza0NGK0hLNUFvY1BEZzZadzgx?=
 =?utf-8?B?V3pIaGxZekpiNUdISzFtS3BkUVNscFRKdDNGcVcvaVh6R0hXKy9yZGM5VlRq?=
 =?utf-8?B?WFFCd0s2cVVZNnBXd3Nod05ONE4vNmR4cUpHdmVSRHY5SS9Kc3FkcGlueWZ2?=
 =?utf-8?B?NEpGU0g5RGZpLzZWd0htQk5DWHhZK0JUVk9uWDlvclZFbjc1dXBGSngyNjRx?=
 =?utf-8?B?d2cweTAzaGEvVTZmckJ6VkJFdEtLQXVOYk5wVW40Yk9JeW1lTEtud0xUamNY?=
 =?utf-8?B?d1NhRzlMZjBuc0MwOXM2cjN4TmFPKzkyamtla1NhTEp4K3J5ZUMrVWlXV012?=
 =?utf-8?B?U3VmUXo1ZHJpYlJ3QWR6czV0ekRVYUpHaElMR0VJU1daampzakk2VDlHRVND?=
 =?utf-8?B?TFM0Um1FZzRTc1EwR1M3cGNsTUFvK0lVVXBhNlhmZ1JsVldjMERJYzMxTEt1?=
 =?utf-8?B?MG1kNGMvSi9DN2NSdUJUNnZsZm0yVkw1TzQxdnJpRFZxY2x2blNKdG82anZy?=
 =?utf-8?B?UzkxTVBCbDNQVFVuYnl4akxGdW5CMkJGb2FRWThobVV5eWtkeTN6anhEUVBM?=
 =?utf-8?B?OXNSdTd2ZDRhTm9HbnlUanptY0ozcVdvNW1XQ1B2dkgwMEIwQytDci9hYWcv?=
 =?utf-8?B?TlEzTW9qZCs5WEpEOVRNVnEwZ3BqcnhIQm1ZM0FCd1p3ZzRKVjk2TFVGQnVT?=
 =?utf-8?B?dmp4Tk1LRFNyKzdDSklDUmV0WXJiMG15T3Zzck04Q3hzMW1mWmptbHpHUnN0?=
 =?utf-8?B?NHltQUQ2UFNTQ0lKSjRXbmNzcUl0WG5hNExKakZ0TEdtZkkwQVBHR1pnV0ww?=
 =?utf-8?B?NXJoMmVieHdXeXVwWFRzNlVoRTMvbS9KY2lTQ3pudEwxMitCd3krc2hwa0Q4?=
 =?utf-8?B?cHgwaVVqN2JGZ1NYUkc4bnZZcDBvdFZhMS9oRS9yTXJvYlp0eW5TeWs0dHlD?=
 =?utf-8?B?NUV4Wkx3Vjk1Y0VJVm9qR3p6dW1ONWU5dlM3cS9rRnNud0E4TUxaeVY2V2xW?=
 =?utf-8?B?RFRrU2JGVFlmY2l2MHFxUVpRWFJ5VEpVSXJuemVoR1cyaVhCL2pPTTNGcDFQ?=
 =?utf-8?B?ZU9rN1NQdElZNkhMbjdMTHVSRVVDb1hmdFhiSTdENitVTlR2eXRoYlBvbmdZ?=
 =?utf-8?B?WEdCV2lOMnVyaitubm91cHMwVkFSaEdMS0xSeWt5eVAyUXZYRUpWTHU5T2hx?=
 =?utf-8?B?ZERZQnMwS2NMeEptUFdmR1J6bk1LeEdGTUJ4RmhhcHB1bG56ck42MCsyNDJS?=
 =?utf-8?B?aTcrK1BBck84UDZVNWlmam9SSlNhc3g5UGFrMnAvL2JINmphMmZlRDA0REc5?=
 =?utf-8?B?dGR6VHRQcVM5RjRzMWFUNHl0WWw5ZmI5MWtTakphS29lRXFJV3pwcS8yREM3?=
 =?utf-8?B?OWg2MnN2eUtGV09VNzI2WEU3U053YzZhOG9tbm1ra1hVUndDeW5jc1JMdUlJ?=
 =?utf-8?B?elFNVVVxbTFrT01TNlQrMGtHODgrZEZOYUlGY2NyeWpKSlg2MDdJTGhYNFZW?=
 =?utf-8?B?MlBJUnlsN2w1eHp5TG1IYTE0WlplTUlHVHJ0UnV2U3VyL0lsM0wwTitVQnZw?=
 =?utf-8?B?Q3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a229ead-fd6f-4e98-ea8f-08ddb7ab5cb6
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jun 2025 07:54:38.2327 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KImX4+2qOX64yThQEdsLddM+PHLFdceUzY9+WO0wHRfCVxG+d0AGwD11oiwCFKdNfwVSATIAYHCN/a2a8TMN3n8vUUjUbtlVFVKbTpVpEG0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB6021
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


On 6/30/2025 12:53 PM, Jani Nikula wrote:
> On Mon, 30 Jun 2025, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> Introduce a generic helper to check display workarounds using an enum.
>>
>> Convert Wa_16023588340 to use the new interface, simplifying WA checks
>> and making future additions easier.
>>
>> Suggested-by: Jani Nikula <jani.nikula@intel.com>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display_wa.c | 13 +++++++++++++
>>   drivers/gpu/drm/i915/display/intel_display_wa.h |  9 +++++++++
>>   drivers/gpu/drm/i915/display/intel_fbc.c        |  2 +-
>>   3 files changed, 23 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
>> index f57280e9d041..70ba66fc7e26 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
>> @@ -39,3 +39,16 @@ void intel_display_wa_apply(struct intel_display *display)
>>   	else if (DISPLAY_VER(display) == 11)
>>   		gen11_display_wa_apply(display);
>>   }
>> +
>> +bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa)
>> +{
>> +	switch (wa) {
>> +	case INTEL_DISPLAY_WA_16023588340:
>> +		return intel_display_needs_wa_16023588340(display);
>> +	default:
>> +		MISSING_CASE(wa);
> MISSING_CASE() is a bit of a problem for i915 and display
> separation. Please let's not add more. Use drm_WARN() or something.

Sure. Will get rid of the MISSING_CASE().


>
>> +		break;
>> +	}
>> +
>> +	return false;
>> +}
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
>> index babd9d16603d..853939ebf1ac 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
>> @@ -7,6 +7,7 @@
>>   #define __INTEL_DISPLAY_WA_H__
>>   
>>   #include <linux/types.h>
>> +#include <i915_utils.h>
> Please don't put that in the header. And shouldn't be needed anyway if
> you drop the MISSING_CASE().

Alright will remove this header file.


>
>>   
>>   struct intel_display;
>>   
>> @@ -21,4 +22,12 @@ static inline bool intel_display_needs_wa_16023588340(struct intel_display *disp
>>   bool intel_display_needs_wa_16023588340(struct intel_display *display);
>>   #endif
>>   
>> +enum intel_display_wa {
>> +	INTEL_DISPLAY_WA_16023588340,
>> +};
>> +
>> +bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa);
>> +
>> +#define _intel_display_wa_expand(__wa) INTEL_DISPLAY_WA_##__wa
> Can't we just do this inline instead of adding another macro?

Yes sure will use :

#define intel_display_wa(__display, __wa) \
         __intel_display_wa((__display), INTEL_DISPLAY_WA_##__wa)


Thanks & Regards,

Ankit

>
>> +#define intel_display_wa(__display, __wa) __intel_display_wa((__display), _intel_display_wa_expand(__wa))
>>   #endif
>> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
>> index ec1ef8694c35..f4b7ff549fd4 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
>> @@ -1464,7 +1464,7 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
>>   		return 0;
>>   	}
>>   
>> -	if (intel_display_needs_wa_16023588340(display)) {
>> +	if (intel_display_wa(display, 16023588340)) {
>>   		plane_state->no_fbc_reason = "Wa_16023588340";
>>   		return 0;
>>   	}
