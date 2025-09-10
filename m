Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46FADB50DFD
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Sep 2025 08:22:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B602010E2BD;
	Wed, 10 Sep 2025 06:22:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W2sdQYtH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF2D210E2BD
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Sep 2025 06:22:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757485349; x=1789021349;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KPuDb2LCm1WtjyRM9MqpPIWRnpztFy/p1u6xlzEQqfE=;
 b=W2sdQYtHHGHxS0rLHw35sh5W45RNOItxzCPE+JX4lrF5YHSkeE3LazLb
 3bIA5aj2YnZ9DfPashQ6lpJ5l7cbWI8CbVOC0T7LjVJNNLxB3nfZLt3SP
 KMyPDU2rJ2jjzw674DRHrGsUpYTpX1i+0CSEdRbOP0H/+x99BqGmbEA4O
 Yab+ph76cc71HshEBp3zn2vHUl9DA2DQlhq1k1Yw+UDcyhTvDJvFgtbsW
 sFWw3yIg1MOffhCCZ83qlWobJv0lwUOrfFBl3z+Mxu4mN0VQ4L/26Bzpa
 mFhXsDp94IDfx9r/oZGyuMR/UcmfrVMXl/o6f8u2959q3dGgqJm1VMy3P w==;
X-CSE-ConnectionGUID: LBevddyISw2I3H34ErM7Sw==
X-CSE-MsgGUID: b15l/NdzQE+SC2+eCuYrBQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11548"; a="62415869"
X-IronPort-AV: E=Sophos;i="6.18,253,1751266800"; d="scan'208";a="62415869"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 23:22:29 -0700
X-CSE-ConnectionGUID: lDfUXSHERLeixlrwfN1RmQ==
X-CSE-MsgGUID: CPCc94iVS2yvmI6H/6rUGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,253,1751266800"; d="scan'208";a="172892160"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 23:22:26 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 9 Sep 2025 23:22:25 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 9 Sep 2025 23:22:25 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (40.107.102.44)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 9 Sep 2025 23:22:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nz3I5G+JP1bDNCXDWNMQ6isdbnk5sBX9OaUvXUhC/LxhmeohygYsZS7UDS8208SK7AzkdQPqAjHvu+vPvZ2WEdYILXfEst9SsIDBXTAaO1++/U7BzmSjoZ9F+pmKYQq2FvqRSoaiqGUAf9MJvvd2VILQ2XJXOu5w3DV4e8UNVcF7cSutgkWYs27omsp/ZW5NjwqyF89bE1qyGXevitbH4NGaplP0lKhdvWfku517ENNZ4Ak4WdSk3y51WrEJ0/GzkD7DiJZdCBdOKfhBmjvCNjfU2xHG66dLItSR6+hGhcKkZF48ttPUGN1JhpNIkzwFDFCPOdFrePqM7mZwZqUzlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5sF1gAi1ziq9asmvPFbsAGHD34HOYmhtWH4+hckE49Y=;
 b=gcFci+ei6SLwIbi7E/xQnajb5dCN5neuUVf8mOyIjhm1bQGivyiKaJz+s0irqTkK1chu3PczLsxrTUvDgTjYOadHTuO+Ss9lGH+BdYgxI4/ixYNP04q/SWnYqnbdweTfc+9crhcskgGH0ISt3NhR65G9T5vdIbifyC3yQ8mQAfJkGURdrvsver5UsxrK2S6yWrt9CaNSLVLUTpQOhaVj0opZPMgzgAUZRyCOfrN4JPKhtY429WbikiGn5ZYucgkcP2jbayheUyEax49LXukkQgkcH5SXhrKDxHbaXv1AoYE5tSaXprzIiKziYDr0nY06VOrcDGRi8eA8ut+Zj1OBcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB8252.namprd11.prod.outlook.com (2603:10b6:510:1aa::14)
 by DS7PR11MB5967.namprd11.prod.outlook.com (2603:10b6:8:72::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.22; Wed, 10 Sep
 2025 06:22:23 +0000
Received: from PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::9f66:9d6f:3199:78b2]) by PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::9f66:9d6f:3199:78b2%5]) with mapi id 15.20.9094.018; Wed, 10 Sep 2025
 06:22:23 +0000
Message-ID: <da9a3936-fb21-4495-bdc7-fab5f71c6fd4@intel.com>
Date: Wed, 10 Sep 2025 11:52:15 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/slpc: Update min_freq_softlimit when
 ignore_eff_freq is enabled
To: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <anshuman.gupta@intel.com>, <badal.nilawar@intel.com>,
 <riana.tauro@intel.com>, <karthik.poosa@intel.com>, <raag.jadav@intel.com>
References: <20250909132808.1708812-2-sk.anirban@intel.com>
 <3971a679-1bf4-401a-9df6-9632c596de41@intel.com>
Content-Language: en-US
From: "Anirban, Sk" <sk.anirban@intel.com>
In-Reply-To: <3971a679-1bf4-401a-9df6-9632c596de41@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN4P287CA0113.INDP287.PROD.OUTLOOK.COM
 (2603:1096:c01:2ad::9) To PH7PR11MB8252.namprd11.prod.outlook.com
 (2603:10b6:510:1aa::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB8252:EE_|DS7PR11MB5967:EE_
X-MS-Office365-Filtering-Correlation-Id: 4c7c69d8-d8d5-4ce2-4439-08ddf0326759
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Q1hpMndmZjBzZjJvVm4rRTVuL0FMTUsvaHg4d2tjUmwwdXo4SC9QaDRDSnND?=
 =?utf-8?B?L0ZuekxUL2ZWTlVFdHd1MG5aOVpZNEtoenFhSGJMSjZCa21pQkNMeW5STDdH?=
 =?utf-8?B?Y2cwcnRBSUZRU2hxMUtXeEVLVllIdFVQam0zS09qaGZmU3VrejBIRW5oZ1Q1?=
 =?utf-8?B?ZEk2MUVva0dtMkdHYVBITlp6MkpFN2lHUThxZGpjSFJhVURYYVkxenlyQlRM?=
 =?utf-8?B?MlFoVkttcEFlVU1jcHkySXh1ODJ0eVo2MHlRb1BuaVN2R3RCQWFGQ3VtTDVO?=
 =?utf-8?B?UGJvU29xb2FBSUFuK0pqMjhsWWdsOVVGcEMvNGlTWU4rSGhMOHVTSmp3eDA3?=
 =?utf-8?B?eDEvWEQwUmF5anVlbkEvZzdqeTNWRVprNUNOa2JzOXI4bkszaVBqR0h1VGVw?=
 =?utf-8?B?Yk9TWTE1dkFwdVczVmJRZUZIdVYwMlZHcW52cXowQzdzdDUyd0VsZldKbVNZ?=
 =?utf-8?B?VXIxajlrc3h2cDZXWjVmaEtyM3l0SFNNaUdDMGJpNE5uR2Qzc2tUdGRxL0Fi?=
 =?utf-8?B?ZHUwR3cvaTdjenpIcDRveG9pKzVKdTAxb1FRQnh2cVQ3RHIzQ0ovTUsxdEdo?=
 =?utf-8?B?MWtTMVRvVEYvTEdTWXZ5UFlZVVBvV0hrQTI0d09EMlpqekVDUGtzc081cUpV?=
 =?utf-8?B?Y05jdzFJR0tmMFc3V2R0WnFYd2pFbHZlNHRBY0ZjVDZ0OThPRDNMeTd6akly?=
 =?utf-8?B?R3NGa2JPbzBWcExJZG1IN2ZiNzlKVlBkNFE4SHVUM082UzhWSHYzU2V1OTlO?=
 =?utf-8?B?NFZIdXh6WWJZbjN3dHdLUWMzeDhRVzljditybjd0Mk11ZlJ0RzJIT3A5emxS?=
 =?utf-8?B?aFZlU29tUEg4UXNSdGNQSUtxMXo3akNqREVLM2lWNE4rb0sxYWI2QjFRaVVB?=
 =?utf-8?B?TCtndUg2WFA0amhoZmJhUU9RODkzUVdVdjYxVEFKdWo3aDdvVTdyVzdObVVt?=
 =?utf-8?B?b256Y3AwNDd3eGJsK2RyTk1UVGtKMURkSWpvN0E2dnZkUGxmcmVkSndEaDlB?=
 =?utf-8?B?WlRpUXVvTUNOdThHSHRwZC9ldWRDbyt3a1ZLT2xnK2M3WXVmMXZxdEJDZndu?=
 =?utf-8?B?QzZ6S0loRHZzdVlGVGorRTZ1MVFJbDZaZFBWMVFpdGpFWUloemlFMlZKRlNw?=
 =?utf-8?B?Y2Y2aWl2YmJhTmVNM1JCMzNPbzdQQUZwVHlxcGpwN0FqdjZRN2c1M0kzZ3RY?=
 =?utf-8?B?T1c0TnVTV3ZDYWpYMWpUTE9HaDIxNUhmMkgyNkdLWDE3U01vdDl1SnZWNWFq?=
 =?utf-8?B?Y3BYRXg0V1IxVlJORVd0SHlMS015Rkx1TEI2VGdWRHR0c0J4eFRBR3VKOTdr?=
 =?utf-8?B?OFhjSCsyMjdMb2tuK3J0SVBhSDFGZFA4aXBVR0xFNldNQy9sWUQ4SVZNT0k0?=
 =?utf-8?B?ZXV5NW1YYXNTWklyVmpmeVdYRk51d1pnZE1KMzBybm9CaUh3TlIyYU5aNUpu?=
 =?utf-8?B?anRrcHFUQ0o2UXlNemFZSjY3OFQyaHJ6V091MWUyZS85SDhia2hVc0Q3L0lV?=
 =?utf-8?B?SS9lQlcwRXBsUzJ6a1BvWE51QzZXVzJONitRa3ZleEIrT21rZ2o1aVJ6akIr?=
 =?utf-8?B?YmcrSDNrT2dBS0V5cU8wVkM0L3o5M1FDTVpvYmp5R09EbldwVlBseFI2OGlm?=
 =?utf-8?B?MEJLTk4rbUZXZjN0VVhOM0VOREorNFFlMzhiKzBXcjh4ZHFleUhDMFhvVUlt?=
 =?utf-8?B?b3ZjOEdQWW9RSVpRaUNxOUdsQmNZLzBxL1VaTG1MSFY4YjNLVFdjeHp6TlVF?=
 =?utf-8?B?WTF5dnE2Z3NTL2F0MTM2MkdaRHN5VUNTaXVpZnRnYmVkaVhGQTMydFNZM2Rl?=
 =?utf-8?B?SFcxTExLVlRIL2I0bCtoYy85ZWR1T2dpWmplU3hqZmNWNVlaOEZNazVaQ0xE?=
 =?utf-8?B?dTZrdVZieURLU3kvNWZLQmRaM0Z1V1doUytQKzgxdmMwYXVVYnQ2Q3dKRlFp?=
 =?utf-8?Q?7HkN8NjoPF0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8252.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZU9hdFJvemdGejVJMUJ3STU0eGJPRmZ3MzdoZnpxaUsrbmdXbjNvc3h1ZzhT?=
 =?utf-8?B?RzFGL3NJZU16NlkvWUlZbjhaNGg2TVBKMGI1MDRPQURWejQ2TkR6U0ZvTFdN?=
 =?utf-8?B?d0ZuKzB1YmpLZUFkaE9jNkVvUDg4dkNlR0gyWVJFVVF4SHJkVXVMbUoySnRN?=
 =?utf-8?B?MTZ0SnRzRXpaeDZxS2wvYjBJUEpNOXVmZkwvMHBsMVlFSHJXdEpKQmRFN1Zj?=
 =?utf-8?B?RSthMHVjeUdUb2M4Q090dHNtK055ZTNOdG9TNkdLTmFBMlp2Tmw3V1NyMzFQ?=
 =?utf-8?B?L2xOUlg1TkxycVVFM1ZEZU9sVS9aMDdSa1RUY1Q5RDB2QXArVUxxTTcwQ3NL?=
 =?utf-8?B?NEdxVjhSd0pXTWZKQm5vc2gveTZTY2ZPZVgzVDhQc1UvSEgyTHQrK0JEQlIw?=
 =?utf-8?B?MUNpU3l3WW0xZzZDcWpNNThlTmFNcW9XNThuWHM0RXVISUtVRXpqN0tjZmpG?=
 =?utf-8?B?UHNRU1Z0ZjhVam0wYzFwZ0tMQXQzbDIzR0FxV3ZCVDZIT3M0NnZ6OC9pb3Fr?=
 =?utf-8?B?ZjQxbFVOOGZzQ1I2Mk1vTE9uZlZkSVE1NzBRSXpHQ3hOd3F3T012Z3dPZlFk?=
 =?utf-8?B?ZXRESEx1bitzd2hHYWIxclVVRHA4OHJBcmdIbTg5bE9OVUg1elRVR2QzYmp4?=
 =?utf-8?B?Vjd1eDZzTExUSURDd2dzVFRqNVVuVHB4L2VjdXNXRUh5VjFhdXUycVJzTisy?=
 =?utf-8?B?S0xHNFhoOW94U2NkMVNHbDFOa09jOFl1dEo5QklMQ3pHeDVOL2czZWRwbElh?=
 =?utf-8?B?YmY2MERmdld3NEdBd0RpL0NjR0loS0x3Y2NUMS9KczZ5QVkyWXVrelZRVGJY?=
 =?utf-8?B?RjJ2ek55UWV4c2NBWVFod0JnOWtXVzBmb0VEakhlY29Cbmp4Nk9oWktScThY?=
 =?utf-8?B?QytuQlVPbmhpWjBLbVk5Z09LRWFjR0h0NkpkWnJXdXJnTkZ0dm5JNi9tWGg1?=
 =?utf-8?B?QWo3ZE9pckhOdXBXc2gwbCtEd3A1WG5nUDRURjJFNG1XUHRNbDMxbWQ3cWQw?=
 =?utf-8?B?OTRLU0dBeDB5ek1vVXQ4YkQ2M1VHbFhMeW01NmlDLzBOU2lnWHNTM2dmaitq?=
 =?utf-8?B?ZG5PKzdTK2ZabGpsdHlyWHZTSURYNjRSdWZsKzg1QU9WQkNobndFYjVvWk9h?=
 =?utf-8?B?TXRVTHdjVW0zZVVYRlhRSUVrSFJ4TjNybXpuL21qQzZ0N1JGTTk2VEtFbUMw?=
 =?utf-8?B?Rm9KK1V2VWZ4d2cvaU0zMXlrNmJIL1ExaGd1anE5dG51Ym8wSGRFbElqOTFz?=
 =?utf-8?B?MmV5OGFLQlZETmczQkZJOWJiS1QzMXF2WENXYkZWb1RHVFZyNG5VdVMyWDFu?=
 =?utf-8?B?bGtQYUovcHRST2ZsNmd1cXRET1pneklsVXdweUpJZlcwTW1UNW4rUmRXcnp5?=
 =?utf-8?B?cHVpN1FjMWljRDE2NVhLQ3FzSVM3WDRuODh2dmRqNjA2ckdNYWFOcGdFV0RI?=
 =?utf-8?B?cGs1Y0dUdHZLMHpiZjl2MVA1N090QVlnWHMrMzZvN2VBRkM5VlowSWo5ejhn?=
 =?utf-8?B?TzJuRncvcm1mSkFNMmMrakp6NmNTdWFxOU5rUnJHSmplRkRIRGkwU1Z1WmhS?=
 =?utf-8?B?alZCWTF6akh1OGJEbTE5RTgxMnFqNVdhcXYwczhSaXlmN3dyYmlWaDFTa21X?=
 =?utf-8?B?SlJwUmtYVENtNStNamM0ZnFqbEI0eDhnSDZjOVQvRWROT0pNS0RxbG9CcTRR?=
 =?utf-8?B?UW9uMC9SemR6SEptTjJhdnM0Nks4eWJJUy9pcUFHNmhISUF0NkdUUUs3NU9n?=
 =?utf-8?B?cTd5ZkxnQ2k2M2ZreGZpZ2tlRWd6d2puNThLUWZrNlkxNnVDZ3V4Wm5yeU5D?=
 =?utf-8?B?dFZtUkQxV3A4RVVrVGJRdXltVW91QTRSVVVxS1p3N3pxVWI5b0NBMlo3bFpi?=
 =?utf-8?B?S1p1TTRvRjc1WUtBdXZxVy9iYzNMU2g3RVRnaGppeG5POTh0R2kxL0N5RTFJ?=
 =?utf-8?B?SnBHbVJBR2VQaTVPaHpIV0tId2VzOUxXczVwdjgzcDZTMWtWWVM1MGJ2L1FT?=
 =?utf-8?B?RUFRUDhkUTF6MWp6YnJMaHlNT0MxaVA1Y01HS3oydTJ6dnlGczNMS1AyYWVQ?=
 =?utf-8?B?YlNRV25QdVkxM1hBRjlpZCtPZXBCM0srU0dGQVRCdDRRVlNuWlAzTEdvYTJH?=
 =?utf-8?Q?I6yV29xtLPj8/uOvIPdygGFxI?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c7c69d8-d8d5-4ce2-4439-08ddf0326759
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8252.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Sep 2025 06:22:23.4214 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: e3ns0Ux5C29MBe3tg2hXeGJw+er1ZnfvuCRYVw/qHnW1/c1sYZJOFggjhPouIk4LtTGwKdpMsi+Frj8ya61SYQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB5967
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

Hi,

On 10-09-2025 04:07, Belgaumkar, Vinay wrote:
>
> On 9/9/2025 6:28 AM, Sk Anirban wrote:
>> When slpc_ignore_eff_freq is enabled, min frequency is set to RPn but
>> min_freq_softlimit is not updated, causing sysfs to show stale
>> values.
>
> sysfs(get_min_freq) does a query_task_state and then displays the min 
> freq. That shouldn't be stale info. Within slpc code, we are using 
> min_freq_softlimit to track user changes to min freq. We shouldn't be 
> overwriting this when efficient freq is toggled.
>
> Thanks,
>
> Vinay.
While fetching min_freq, we currently return slpc->min_freq_softlimit 
from intel_rps_get_min_frequency. However, if the internal minimum 
frequency has been updated to RPn, imo this change should be reflected 
to the user as well.

Thanks,
Anirban
>
>>
>> Update min freq softlimit when ignore_eff_freq is successfully enabled.
>>
>> Signed-off-by: Sk Anirban <sk.anirban@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c | 5 ++++-
>>   1 file changed, 4 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c 
>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
>> index d5ee6e5e1443..07fa0423b1a3 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
>> @@ -495,10 +495,13 @@ int intel_guc_slpc_set_ignore_eff_freq(struct 
>> intel_guc_slpc *slpc, bool val)
>>           slpc->ignore_eff_freq = val;
>>             /* Set min to RPn when we disable efficient freq */
>> -        if (val)
>> +        if (val) {
>>               ret = slpc_set_param(slpc,
>> SLPC_PARAM_GLOBAL_MIN_GT_UNSLICE_FREQ_MHZ,
>>                            slpc->min_freq);
>> +            if (!ret)
>> +                slpc->min_freq_softlimit = slpc->min_freq;
>> +        }
>>       }
>>         intel_runtime_pm_put(&i915->runtime_pm, wakeref);

