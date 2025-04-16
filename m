Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B2EFA90C5F
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Apr 2025 21:31:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE9E810E068;
	Wed, 16 Apr 2025 19:31:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="moqtbakx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFB8910E068
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Apr 2025 19:31:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744831895; x=1776367895;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=TYqod/XaRwEuCehtl/nWf0OsfeyCZQI1oJCKsAhAo6w=;
 b=moqtbakxbBohLItaJIR7eAqmMKv7OfDz8D69S6wpQb8xpWcodtY7btU1
 SMjAsTTHPJ1mSj9sNUnxRmqOKQYF4EO7iOM6CIfZqdRHGQSuwwqY8WlRX
 VFcmLQ/i6W12Jh/mvVdbqdFoFCX8MX/LTyl3FTdyb0Sz2C6qN/65ISybw
 u5imTWhv/HGbHaVl9dEsvZhexHU7k2+2250EI37MzxjOSFeCs4GtVV1NS
 0LU7Px1Co1ZnmzR25e1HR1wxW2Pd00Y8uTZQ1LvoGuwuZeklKgF2CpwLJ
 kAlX1eaDpG35U12HnJTkhO49XMcofFTD1SMs4Dmc3drV6+95l13Gsvunr g==;
X-CSE-ConnectionGUID: bmT0gewBSSGocxKTvVrXTA==
X-CSE-MsgGUID: IIzAXwrGQxm/P4u44thD3Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11405"; a="50047012"
X-IronPort-AV: E=Sophos;i="6.15,217,1739865600"; d="scan'208";a="50047012"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2025 12:31:34 -0700
X-CSE-ConnectionGUID: vmfJZShlS9iqlrdpdOYp9g==
X-CSE-MsgGUID: zNeqeJxNStahApYKRGMwyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,216,1739865600"; d="scan'208";a="135393288"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2025 12:31:34 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 16 Apr 2025 12:31:33 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 16 Apr 2025 12:31:33 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 16 Apr 2025 12:31:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=p+JWEahfrh9TSqHVSQpFU9IbkfqvP1Z+qyidTQFJx7als49dM83odAlq7kjhC8nTcFC7koXQQkBcd94FLFN3Pq/Y3qOJQ40SEeOmoIoOawSrhKwos9q8gBF64bI4guz+xWx0Gm0PnG/r51NmprGZgrLIySE4Fh4P9PUy7hxUq6IQxK6c/oxdKq5MdH7by8UMbAHJdYLPsvK8q0qnQC30iOlFPD+Ksjyu4aDuZaqXk5z511/pTYql06qvcgKje3Hx4lwGwzMe7YuK2t9Ti0eIGiFWEIJF2scw2pK3RilHcp7MtH/cBZyIR7XpIkYEttO73nZKdrJN0juvqnizwJKicg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YM0x7EDxHWslv4oALOmOBl4kyt9rY2M+ubMvI1E9eCk=;
 b=pE5JNQ/sio4Ehi9L+KOenDpF+vXbEZIrhIjk5querzJ+O6skMkwxKN43NSP6udzvcEtE9JuiDS8PYfFAa1kJv4x+YdOxhJiPRLFm2LK8gc/q+wIx3Vb7qevRw1Q7hUW8mdy0teNZ0A6IzRoP2643NL2tY6yQry9+FtgV3RzbQdC34QlGsHX2WAwSZWzpY9slptY7g6W3GsZAzB88knJyvdNq/hVMzrpqeV51E4rZhzG/VWEujP5zfSToVJdiY5VancBCQnw9CcjvUYIjA7LCuoxsdTj31Luj33Our0N/SO2B1019LOOkkSxARCq0I2yzQI9E1dPuae98+vtmCjgGgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH3PR11MB8441.namprd11.prod.outlook.com (2603:10b6:610:1bc::12)
 by PH8PR11MB7141.namprd11.prod.outlook.com (2603:10b6:510:22f::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.32; Wed, 16 Apr
 2025 19:31:22 +0000
Received: from CH3PR11MB8441.namprd11.prod.outlook.com
 ([fe80::bc66:f083:da56:8550]) by CH3PR11MB8441.namprd11.prod.outlook.com
 ([fe80::bc66:f083:da56:8550%5]) with mapi id 15.20.8632.030; Wed, 16 Apr 2025
 19:31:22 +0000
Message-ID: <d9d30d75-eb5b-47cd-82e9-0020cf3fafff@intel.com>
Date: Wed, 16 Apr 2025 12:31:20 -0700
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] drm/xe/pxp: do not queue unneeded terminations from
 debugfs
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20250416160449.1293068-1-daniele.ceraolospurio@intel.com>
Content-Language: en-US
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20250416160449.1293068-1-daniele.ceraolospurio@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0273.namprd04.prod.outlook.com
 (2603:10b6:303:89::8) To CH3PR11MB8441.namprd11.prod.outlook.com
 (2603:10b6:610:1bc::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB8441:EE_|PH8PR11MB7141:EE_
X-MS-Office365-Filtering-Correlation-Id: fba9fe23-f80f-431b-d5c5-08dd7d1d450a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MFUxUThtcEFvanNSRzViOWVvR0I3ZUNPa1RLWjJXdUlQU0I3djh2ZnhvTzZW?=
 =?utf-8?B?SVdpTVRHSXRhcE9BbG5JRzhKQjZxWE1RTnNSL0UyTEV6dUZnV1RMT1BpWmYr?=
 =?utf-8?B?c2ZLRDJ2REVtUitsUE02bUMyMDZ2dXdMdk1xYUkycHRVV21Yb1hHQWdIZW16?=
 =?utf-8?B?c0FUTllzMjVMMklvazhCODdWQVNybzFLSnovcmFyWXRnOHc0akNiTmZBTmdz?=
 =?utf-8?B?dlgrSC9TNHl1cTBxMFBudHFzaFdNRDZJcCtTM2pTV1VEVVFHMTFqK0h3MWZ3?=
 =?utf-8?B?Qkk2UVVydE0wbzZZZEJCdnJ3eDRtT2tFUDVpT1VyTURSQjd0cDQ5b0tjRTJL?=
 =?utf-8?B?aFRONDlJVEM3QkpEclJiVnBoV255UzZzTHlDcVkwK3YzTCtwUUdUOTZHNk1L?=
 =?utf-8?B?QkJnN0dyUmpvSWhhdGlLdVVZV2FjdTE1S05mY01nRnVydHJTWUkwbWUxbkhY?=
 =?utf-8?B?SXV6TDkwZUE2emJ2ZU9FQ0pGM05MWG5QWDBFT1VIZXlieUhkMmpCR085R0Rt?=
 =?utf-8?B?cFRZc052TGw2S0FIeU5pcmdpdUFDdXJ1U0owTHhvWTMyOWUwKzdXa0M3aWZU?=
 =?utf-8?B?K2VHRWhqNm1WbmI0TTR2ZGZSTTErZFV5U2ZwWk5lcHE1VTIxZUZYSmh3OWR0?=
 =?utf-8?B?bDI2aXExZy9hRmVHQ01Db2tRdmEwZzMvaFNhNTlCaEFmMThJR0kxYW85YjBx?=
 =?utf-8?B?VDBMTHlRaklnTDlleTNmY1lxRklSK3NNVVM2bTBjL3JlU29WMmJ4eDN1bW9T?=
 =?utf-8?B?ZWlPQnpQb2xDaStnTkNHVGJHek84RElQRHpTTC9QclB1R1hjWi90bXFxd1NR?=
 =?utf-8?B?a3N1S3dnRHJ3K1VmZThtVHFJQ20vTWpXczZ1M3orRkZaMFNMRjRCYTVsdmg1?=
 =?utf-8?B?TUwydnRWWCs2ZGlzSG1MMVhOZy9paFpaYTkwV3JoZjE1Z2ZqdnhjYlR6aEs1?=
 =?utf-8?B?cUdwSnQ4WHEwQXh6VXd4NUhWYkNWd0tUUkdKWG84MzRxK2VNd1RTa2src0JI?=
 =?utf-8?B?YVF0Zm1mZTdXTXNKaDF2ajgrdE1wT2IvOHNYZ1VLemJyUmJvaCtKY0VVMzdW?=
 =?utf-8?B?T3B3WGhhWUZ5Q2w2TndZZDdGQ3ZJS0k5a2ZnR3lmR0R2WjF0RER0Q0piNWVR?=
 =?utf-8?B?Z21qMXd2WVdhalRHc1RKVEczSm9aelVOb042YTFIWlpnL2d1SmpWTFNRTGlY?=
 =?utf-8?B?ZlkxYngrTzhzSEJZaXo1NENUbHBOSUUzRG5pdDcwMXJVUzJNTGNXb3hEbTF2?=
 =?utf-8?B?M2txWElVUThNVGZuUHdFaHdxLy82TFRiV3dDTjJLTG5VaGN1MHNUR3BVS2py?=
 =?utf-8?B?bUtOWW5xazVib2F4bFRTdmxjaU13RThSUTlNM092VWtISXBqeWxQMENxUDZl?=
 =?utf-8?B?bUVFVEhzZFNVL3FLYmRVN1Q1cVBDakNHQU13TGtCeVNmSHNTRXYvaU1PRHhh?=
 =?utf-8?B?VXp5ZUxrYjZPY2l0T3NwM0UxazRUREM4ZWVtdVd3c1J6eU9FdkdxbVlJRVZm?=
 =?utf-8?B?T3BYai9WRE9OUFpDYzhGd3YybUZXeE04dzBSZ3R3Wk1pS0ZNamdDMWhKRmJ1?=
 =?utf-8?B?eEQ3clRjLzRSQlZtdFlIc25DMDBRYTBRZHV6K0VtV3V5UThPYkFsL1NPTXJj?=
 =?utf-8?B?VC9kK21Za3F5a1VPRi9uZ1RiK3FEcTNrRWtjMUZwbXdjV3NPa0Zjd1lNNkVq?=
 =?utf-8?B?NjgwclZZdS9qd2NlemFRQ09aWmNZYXRFWkMzK21COVJBTG9QNHdQbWlmUzRn?=
 =?utf-8?B?WGRVZjNFN2o5bG55S0NpQmwxREtHdWNUQmpENk01ZVdGdVdyYUR4REVFOGxG?=
 =?utf-8?Q?jJOq7S8TcOTtiIPaT04iTWm3Q/ugqWXWtZi74=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8441.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a0lIc0FSMjRxZ3hoSWxxeVE2UGVkd1dxQktUK1JuNFM0R0tJS3dhamVIYURK?=
 =?utf-8?B?NkNMVVozM3NsYTdxSFFURW5oN0dSNXI0WFBnRCtpZ200QkJCaXBnYXRaVGhL?=
 =?utf-8?B?cU51Mzh5T0FSVXJXTVlYUFZMRGdpUFpxeVdmeFg4bHA1Y1lnckdmcnRYMG5n?=
 =?utf-8?B?R2FXL3kybFNzOG9vYjQxTVI3ZjNXbzVaRFI1cGQrT2h6Y1pYOENCVUI4Ni9W?=
 =?utf-8?B?UlFDT3U0OVB5djlUVXVMOHZnSHh2bU1OOGZvbnFqcmlqK2FSWDZFY2Z4cjJv?=
 =?utf-8?B?bnNwWmhEbFd1TElCQ1FvUFNZb2hDdFA4MkVlNlpGVU9sNlRZVWI5YS9mTHBa?=
 =?utf-8?B?V0JJRm1rcEorQVo0Uk5lTzJrR2ZKQm1uWWRhazhpV1ZDdW9HZ3ZFaUk4eEg1?=
 =?utf-8?B?Rlg0L2dtbWd0eVRRS1hvQU5ZODJUS09SWDdEWFI0RVU5S1pwdllkRytvMU1X?=
 =?utf-8?B?UHM0VXBuZEkzejhWQnVxNlNDemtpT1E5VDAxRUFwNjFJcFdCNjNDQTJXVU9r?=
 =?utf-8?B?RFlIeDVOTVBvWXh2K002NlBUUTN5aTFOcmwwNUFnblpVdyt2SjNGWXJWQlQ5?=
 =?utf-8?B?UVBsd0dzbVFDN0Q3TE1HYkNHVE55RlN5MWNpaHZSS09jMFZydk9RRG12aXdO?=
 =?utf-8?B?S2Y0YjBMclNNem0wTGVrYnR5Umh5OTRIeTA5VUwyVnJVQ0ExYVNiSjViVlBD?=
 =?utf-8?B?MER4V0hON3dreWtQR25rTHEyZ2kwRFpUTnI0YUpOOGNaMllVSU5jZ1ZiNEQv?=
 =?utf-8?B?dnF3Z0dUMUdQbHJLOC8vd2w0MldRMkZmdTlSZG9waHc5VE5vbXJXYytRdHNh?=
 =?utf-8?B?b3NmOGtvUGhWV096WEVxdkJXenBxTDAwRWtiMUE3Y3NOTlVLT3Y2QmJPQzdF?=
 =?utf-8?B?N0IzMEs4SEc0MDNFZnA4SnNheVJ1bVFRbUNURWlIeEVNMHpMSVZReG5aQm5i?=
 =?utf-8?B?OWtwa2VUc2FWc2kvM290RnN4MVM4MW9EYXJJRHltRE1BeS9FbzhhRFRZUDhx?=
 =?utf-8?B?YkFlUHNKOTJNLy81VElQd0s3K1Qvem5CZnZKMUczNWlpWVpjTjAwYjFGUVNH?=
 =?utf-8?B?dXVuMkhLcEphNk5zdnFHVXhvZVVXSVI4emVEZi9DY2Jxdjkxbld4eGpEQm9B?=
 =?utf-8?B?bWhlYURxWWxHNW1xcHFhN3lyNFZoQ05jZEc2YUtWUGw3SnZRVTRlSnR1bFRO?=
 =?utf-8?B?Sm80SVh5a1MzelpCZng4MXhZRWREaTNPM3RENGNzQWhWK2NVOTVKb3NIWXpG?=
 =?utf-8?B?aGo4anlzd05ORGx4SEp5QUJzVEVYZWphMVNNU1BLNkR2ZmhidDFYRSthSlRu?=
 =?utf-8?B?MVIvWU1qckNSeTg1SC9nbUc1bThLbmVtc0FpcklBUXM1NHlwZmdJQnprSkJt?=
 =?utf-8?B?L1dvUzZ6SWM4R3hmTmkzaFBDWTY5a3cyTDhnTEQyaElVTG9MSi9PYkkxQ2o2?=
 =?utf-8?B?Z3AvQ2hIdGhObFA1ci9GTUlNMnpiL2JQay9mVjVUemJ0VGZLL1ZIaktZVGQ1?=
 =?utf-8?B?Y25hbHhpMk9Xbmh6aWhkQll5VXZxQjZhcStBWjFmNXNKQ1ROSDM0NThjZnhS?=
 =?utf-8?B?UGhyOCtkM2NlRzA4RkRCdWd4bk1XR1Y0WUlVKzFrZmlLNERXdDFPTTkySlVC?=
 =?utf-8?B?TDBIYnFUTlgxYkYrYmNzRjlxemFBakt1cXVzUmZMTjFvazRONldGYkdleUph?=
 =?utf-8?B?bGs0VU0rWFg2N0FDamFacHg0TnVpd1AzRmRxNUg1MnV1ZVJnU3d5bld6bjBT?=
 =?utf-8?B?Mjc0Y3dKYU9DRHg1U0Y2elJ4eXg2OTRYK1hCR2ozMXR0ay9WeTBvbHVCdHlO?=
 =?utf-8?B?Q1RNYjNpVGJMeDBWa3lIS21lVVV6UGdGcEN0dEVLTkFaaGsxNXUrT0V3bVNG?=
 =?utf-8?B?b0FMSXI3SFk1eXdBbGlPK240WitDUWNmN3lFU3BRazQwdDc2V1ZsSmkvTjVW?=
 =?utf-8?B?Q1RnM1RJbjdTbWlOb3hUQlBHVTY5WFoyQitSWmRvNHlTOGhhUXNmaVZ2Y1Za?=
 =?utf-8?B?VkdiSUJrdUxDWVcxS2pyWDdYbXl0b1lOT1BCVjliM3hjQWNUQTN3YnZ4Y0sx?=
 =?utf-8?B?bm5ha2xRSnFMY3RJMzZXYnVnYmdDbCs3S0JqMlVHbEFZVU5JdTAyeXZJY04z?=
 =?utf-8?B?UTBnamg2K2U2Rjc4S05JbDZGN21VL3VVeGJpNVZzaUNiSnFDR1VYbjYzZDZD?=
 =?utf-8?B?V1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fba9fe23-f80f-431b-d5c5-08dd7d1d450a
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8441.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Apr 2025 19:31:22.4144 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: j2+mI21r7Iv3S0uVK8RPKJfma3dGQcNvGfVaGY4uhdHOivd+Cs7UxvMXgPmw5y50dqTKk1yCP27VvBzUvhsvDKRWytoiFMsfqypzuFEk2D0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7141
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

On 4/16/2025 9:04 AM, Daniele Ceraolo Spurio wrote:
> The PXP terminate debugfs currently unconditionally simulates a
> termination, no matter what the HW status is. This is unneeded if PXP is
> not in use and can cause errors if the HW init hasn't completed yet.
> To solve these issues, we can simply limit the terminations to the cases
> where PXP is fully initialized and in use.
>
> v2: s/pxp_status/ready/ to avoid confusion with pxp->status (John)
>
> Fixes: 385a8015b214 ("drm/xe/pxp: Add PXP debugfs support")
> Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/4749
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: John Harrison <John.C.Harrison@Intel.com>
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

> ---
>   drivers/gpu/drm/xe/xe_pxp_debugfs.c | 13 +++++++++++--
>   1 file changed, 11 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/xe/xe_pxp_debugfs.c b/drivers/gpu/drm/xe/xe_pxp_debugfs.c
> index ccfbacf08efc..525a2f6bb076 100644
> --- a/drivers/gpu/drm/xe/xe_pxp_debugfs.c
> +++ b/drivers/gpu/drm/xe/xe_pxp_debugfs.c
> @@ -66,9 +66,18 @@ static int pxp_terminate(struct seq_file *m, void *data)
>   {
>   	struct xe_pxp *pxp = node_to_pxp(m->private);
>   	struct drm_printer p = drm_seq_file_printer(m);
> +	int ready = xe_pxp_get_readiness_status(pxp);
>   
> -	if (!xe_pxp_is_enabled(pxp))
> -		return -ENODEV;
> +	if (ready < 0)
> +		return ready; /* disabled or error occurred */
> +	else if (!ready)
> +		return -EBUSY; /* init still in progress */
> +
> +	/* no need for a termination if PXP is not active */
> +	if (pxp->status != XE_PXP_ACTIVE) {
> +		drm_printf(&p, "PXP not active\n");
> +		return 0;
> +	}
>   
>   	/* simulate a termination interrupt */
>   	spin_lock_irq(&pxp->xe->irq.lock);

