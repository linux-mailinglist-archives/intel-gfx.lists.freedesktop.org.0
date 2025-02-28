Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C53DA4906F
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2025 05:37:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2758510EBF5;
	Fri, 28 Feb 2025 04:37:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EER836gT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9371510EBF5;
 Fri, 28 Feb 2025 04:37:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740717468; x=1772253468;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=N5znWmDeix8OHYEwYyRcCMHkhzSLGX+zj4nIW6Y0/G8=;
 b=EER836gTy7CNJ3vcDhhUiCDLFY7CwLspclzyKJsPpaEuSBbYflpouVQS
 6k1BRj3PBIQ4qVHOp6uMp7P4ZZj/syOdub63W3msu5N6AqZqseniP0WfH
 Rm0Kt0UseKa1mzvnXtHsZfeS7MhH+KhR0FyHxIXTg2cYxl9Yt4+R6hHlZ
 K04J8N0af5kd5NtcNyTtjuOkiqJWbJq0FxbdNcnOwjnNVdYfpHMsuW6QF
 ++CmGvsdOs3N7dFUgXJr9BcPofFLti8z8SDmT9cywyF3Z6AW1M8q1MOSo
 HfGgOErmycBYwri7gXv8kiqS6rc8PnXO0LapF+8FlUIZr89yMcize2YX+ g==;
X-CSE-ConnectionGUID: cj0ZrRltS32LR/QbNwxCIw==
X-CSE-MsgGUID: 9R5rEXqcT4yezdNvVH9/9Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="41831207"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="41831207"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 20:37:48 -0800
X-CSE-ConnectionGUID: 2jCCQlAXQpi5jC9ktFTVrg==
X-CSE-MsgGUID: 8egTywMHRZasncJayPBslg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,321,1732608000"; d="scan'208";a="117897699"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Feb 2025 20:37:47 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 27 Feb 2025 20:37:46 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 27 Feb 2025 20:37:46 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 27 Feb 2025 20:37:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Uo0HkgHP81btK+EBqEn9JxG//UjqwK6yf4opoGoHTXaTTBaVGBaWbZzFDKgNPaG/99vq+QA6JdIbxvLi6ENCMzqx2qUh4yb3uHghh96rm0nklxyylq7JQkbE5a143aX6eho4wqPjvgQWCvX7pRvf4PzUYhAGBhN2QhX3GvfWQlzS5n1oNHHQjo3UZ/moSNjOqNlYIsCD7A3p5PptxyZmrNh1R/py8QQc0u+augwli22SPfKsm0RuTXPwLw7e6Ja1ryM7eLVLvg/hMgbmD4LzzJh2w5y9H0UKGVbUFR3G1a8brf5Ga+Z5aIiuQ3No1XkXP23fhxmlYKVQ7daJlSleYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UCtqz0NWF66KLx6foejw0Z8ZOqUT2l8qlfQRMnUGePk=;
 b=Tgnu5EMZqUrfpKhBIjinI84+CWAfmGReu+JmJgrAEQV0IC1uDYH1Dvj+ky1RO1cmUPM911/J78rE6E5vZEkuS1/WgxzsBbCXheLiaqzHbf17mqGwQu6VRXRGuXKatJCIgWzw65poxOQt+0IpFPVqB8ZyND20ANrDTFw/iBdM0jqCSy596B7jSgeR3XC9GC+gy7dMJ18qBvBrtS1wnR3v3hp/WQ5KQS+X9hXW0Ckwc0afKn2iVqhfzHG28BsJR4COzr/l9cZdskzf+NQWqBHMYzN/LDivgfHpygRMTD+WVcCM0JPPXJqx3FS6lF2mA2Iqj7Su4yJWXGCj2E/kh3a+1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SN7PR11MB7540.namprd11.prod.outlook.com (2603:10b6:806:340::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.15; Fri, 28 Feb
 2025 04:37:29 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8489.021; Fri, 28 Feb 2025
 04:37:29 +0000
Message-ID: <a940d336-31e3-467d-bcc9-4c9301f7a740@intel.com>
Date: Fri, 28 Feb 2025 10:07:22 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/vdsc: Use the DSC config tables for DSI panels
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <uma.shankar@intel.com>, <william.tseng@intel.com>, <jani.nikula@intel.com>
References: <20250227112654.279160-1-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250227112654.279160-1-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0070.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ad::15) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SN7PR11MB7540:EE_
X-MS-Office365-Filtering-Correlation-Id: 2723369a-dd1b-449d-e0ea-08dd57b19b9b
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?R3ZSdVdrTHpEYllITmdOelhjcWZyWm05Yy9adEhZSTdBdEIyWnB3K25OcVZT?=
 =?utf-8?B?MW5IN0NHNzVJczc5bkNSVnZyZzV6VFRxM1ZCOFRNNW9SQ3NBZ0tMa2lESm8r?=
 =?utf-8?B?YTdPcGVxUGNiV0x6aFpmRFR2WDlBZ3NJRFhQSThCWVNXc2ZrakZla3NzVU9t?=
 =?utf-8?B?bE45M3R1ZE42Y0NRdlY2QVMrWmZTQTJoalV6YzJNQk1JRlpCZGUrL01tMXRU?=
 =?utf-8?B?eEFzYVowZ3dtOXhHOTYyVDVKM0x0c1BsTmE3VGs0c3VEQmwzempYdGJ3RDk0?=
 =?utf-8?B?a29RejVpYVBKYWZBVEtwYWdYdXpIWU83QjFMdC9Nb1I4VGUrbXVndXFXeURO?=
 =?utf-8?B?ZEhoSk9XODQ1aTJkNStkZ0QvamIwUkszcjdsMm9ML0p2WXBUZXdpNzF5ZDcr?=
 =?utf-8?B?ZnRkWTE5OWNKRXlkaDFNRktIM25aSWxkbk1sOGdNTyszWjNyZXdmOWVib0cv?=
 =?utf-8?B?K2FKY2tFYlVYNXZHZ3hra2JWalB1OFU1R05IWHYzK3dJUnRpU0tpWitWQk5N?=
 =?utf-8?B?QSt0Y1AzYUNCSUxWUDh3dmNuSHZ4d2lWNU5rU21GR2d5N01ucUQ4clB5U3ho?=
 =?utf-8?B?TG1GRmlCWkpPZUNzS1llSk5lVTBwREV0U2ZTQnhDeXBkOFd6azEvNmc2bndS?=
 =?utf-8?B?V2pPcDUrRWdJYk5ZTzc3ZUhoeVp2WXU0VUsreHZYblVmaEczOVZ2bHoxdnRE?=
 =?utf-8?B?dllLUlF2L09PbFQ5bVF2WE1EbW5MTmxESEUwZ0hjNXdIWjlibldaYVpzbVRD?=
 =?utf-8?B?K0FPQUZ3MEI4TEMwbitrT3BQVmxKQjV3cjUxRm9FSnd5ZHRtbGlON1B1RE1X?=
 =?utf-8?B?cW5KeCs3OGVNL3RwLzVmbVhQUldxaGFEQ2ZjclpQWVBheFpHU3Bvckxqak9V?=
 =?utf-8?B?bHRxYmdybkZOZER5ZS9xUFUxQ2VlOXJHOGJHRXppbURUYVJRS2xNcVJheEVn?=
 =?utf-8?B?cEk1K0FNMVFwYkRYSVVtSGdweFBhR3FJdWdvMU9Ycks2YWg2Ny9QTndDQ0xo?=
 =?utf-8?B?enhlZXRhak9DamZjMXp2NE50WGlXNno4Q2Fya3prN0d1RlJPcC9mVERHbjJI?=
 =?utf-8?B?Qno4WW85SER1ZUJuNU40ejdsWnI5bFZTTUtham1pblJsbysrYTc2UERCRHdY?=
 =?utf-8?B?V1dJeE56YU9NT1pvSzlmbzRBbXZPMnNvT2g3UkQyVlB5Yk8xT3d6ZGlkaEc1?=
 =?utf-8?B?bERHOHdrQmlNSEVPWU9qa3d6YzFxaGZKNzhFemo3Z0VlQzNvRCtIQXpYS0lR?=
 =?utf-8?B?ZERPb2xaQVhJc3hsb250Vis3NnV2SnVnb1dkSGw2Y3o3NUJLSzJGTTJ1ZDkz?=
 =?utf-8?B?NnNScGlZMEF1UUpROEdZN2hNb1BiZ2lBdnpXanlKZEx3Mzltc3ZQUzJGTWR0?=
 =?utf-8?B?ZURGZHpuL2U2c1RyVFE3b1hFUDYvQXpXWlZ3SlkvTURvNHBIQnBWdHc4c1VF?=
 =?utf-8?B?a2U2a3FaUkg4d1E4aGdPcFh5bmRocWc5bFhLVThVdFhqaHEvc2F5Y3o0QWV0?=
 =?utf-8?B?enUwUy9jUmhmMUlCWE50a0svRDZOV0hjbGNheHliZHVYOEtHdmJ0SkkwZE4r?=
 =?utf-8?B?OVp5MFVWTHF4OXMxWmVidjhSckxqenRrR2JseitQVmlZZHJJZ2VHeVc3cGh2?=
 =?utf-8?B?VGhoc2RLbXlXMm1TMXpNL2NqMGcvTkhDSUJ5dXhTL005YkpwN1cveFhiUVEv?=
 =?utf-8?B?V1M1WEg3MEZXZWpGUWZTZzdsVXd5ZnVVZ2hENEdQL283VjRxWGFvRHBDZnZw?=
 =?utf-8?B?T1RUUXgwWmlULzFMc3YveUJTbzFwczF5UStoRXZqa0p0b0VDeWV5WVhBd25V?=
 =?utf-8?B?K0gxK1pZWjlMMTdTZFY0dz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WmJMU2FFdGplQUVnUWFUaWJxbDFTRWVaWEZJRG4wbEJ6MlY3QXRvZFB2TWIx?=
 =?utf-8?B?N1hhYkhUNGl0YUxYbVo3a3l5ck5SRGNkQWZZVFV6VXFTbFlOTkdQTXRaRzZh?=
 =?utf-8?B?dkNRVjQ1Qlo3cmlLTFVjOE9OcW1ibUUrbmtoRStOZVlsdVFJZFZwbGtIVUQ4?=
 =?utf-8?B?NnJzcVFETnlwejQ0enlQZHRnY24wN01iRDdOU2drZlAxdndGTnhtYnFlR0Rt?=
 =?utf-8?B?RnNhMTkxc1drZDd4a1RDalJPZ0RZUmJMWGdTRFRNL1JpZTZMZmZ6cmQrWGVi?=
 =?utf-8?B?citGNUJRK2Y5bTZTZ2hzOWdyY2Zwck92NU44Zk1ZRlcyMVpjUHk1VGc1MVhl?=
 =?utf-8?B?aGRBYVIwdGFiYklBN0syY1BrZzdwZ2IxZlJ2dTFXaGJKeEpyQXAwZGpwLzdG?=
 =?utf-8?B?bnA1WHQvUExKRFB0NlZWUDIvRUdKRnRyUGloU0NLNTF3QVlsWkxlbG0rSWZO?=
 =?utf-8?B?V2t1WXNhd0s3eGJhUVNyL3h2aDJkc2tHeklyOWt4THcvVTZ0M1dUN202L2dF?=
 =?utf-8?B?NlQ0b0JxQ25PM09sLzRqT3UxeTZuK2Z2L2hPQ0JBWWZGMG9EWlJvN2JQeklF?=
 =?utf-8?B?QjI5Mk9SbzEzL1BvTGlDcnByYmM5QjdmdDYwSng1eU1oc0dVeGE3OVkzVUt0?=
 =?utf-8?B?S1NlRWF1NERPeEV2bUJIclBkeFEvc1JVS0lvMzFmM0ZpRGgzdXY4d0lUUWVI?=
 =?utf-8?B?NnFNTzB5bHV2dytqTlRvclNYNGY4VXBFTnIvcEtKZ2lXZm5vMnJZeTFSaHh1?=
 =?utf-8?B?V1NIcEtaQzliR0V3V1B6RzFpTUEzWVFqU3M2bDU3T2lxRmxockQ0Sm9ISGw1?=
 =?utf-8?B?UVpsVFdPNEJYWm04VEM3N3ZXanFwamVSVkJUaFNxcVk2K21rbWkzU1o1TTgv?=
 =?utf-8?B?NnBDT21VV29zQ29KNUMvOVNQUElFM0kveXdQUHh0RVNwWCs2eVFnVUx0S2Rr?=
 =?utf-8?B?Y1hUdW5MbmF6NTNsd2ZLYkJyWnlaY1NJWWFCOFR5YUdDZ1VLaEQ1SE8rdGsz?=
 =?utf-8?B?c003Y2NCZk5nSmxFUEhqMUJJNXdFS0NVT0tTbUt6cnBmK0l4N3JiYndiMExU?=
 =?utf-8?B?d05mc1NCenI0OGlyaHRPQjVMUldqT0xiODdPdmszNnJ3amdnYTRsNjk1Nyth?=
 =?utf-8?B?OHZjS0I1MHROdXdyNHJ5OHpWZ0x6VTMwcDlicDNRUDVRUkF1amxiOHlHYkNo?=
 =?utf-8?B?QzFEVEQ5N3pNWUI5RE1zN0ZHY3dSeTZhMjZuREVKR1czUVloTWRXSkxTMVBu?=
 =?utf-8?B?NmJRQ3BSbzlscmFwZEdtQUc2UEVXSUJMcjN3VEtocTlVdlprMTBjRTN4Z3gr?=
 =?utf-8?B?K1pmYWE2MHJ1TWRYQklvRnpRaVV6endKM2duY1FZWTRHUjFsdVZWekdoWnJS?=
 =?utf-8?B?ZEJVNThDcGRzLzd3VjIrQjJsQVRHclJVZnNKVWNxYURVYVRkb2daTHNVSjRP?=
 =?utf-8?B?c2F4M0dyU3Nxc0F4VW9CcjFObFU1TGg5S1FnSnZTRklYODc1Z3NScEVHclFY?=
 =?utf-8?B?elNwbjhJaXR2RkozTnBUTFp6dGFBOTkrUTRkQ1pPTEZyYm9mdVk5M2xPYkJQ?=
 =?utf-8?B?TTV1djhKUWxSSit3RTY3Z3hkeU5TcHIyZ0hnTHRiSG1ySG9uZDBIQ1l0eHh2?=
 =?utf-8?B?M2RjdmhFcDhnaXVXSVBpRUZPS29OZGFDK21rWWdBelBJNXNLbG5CZDNPckp2?=
 =?utf-8?B?T3pBa0RyVXR0NTBsQzU2ZmJhVGNDR1IzdmR3U0FVaGRsTzBydEF2VnpFa3NG?=
 =?utf-8?B?ZnFSWVNCSGFiNXBkbHl1c3dnVWU2M3RSNmpJc1E4am9uMnJ1c3o4SkNRTGtR?=
 =?utf-8?B?YWtVR205eDlEazVtT0lWWDJYdDMrMVovdWRGRGtCZ1A5ZVJtRFB0S0UyekNw?=
 =?utf-8?B?L2FIekExcEcvQXZ4UmpObzl3YTVNWVc5RUJYTWlPOXY4c1E2MmZFU1pJdGhR?=
 =?utf-8?B?OGVpaWpwS2l2bW1iWkwwbXZlRER4YUFxQjFUNDQ3QmVSbk44VnJYMzdKWFdL?=
 =?utf-8?B?M0FOejBmdzYwMlNveTBQQnpKdnNuWmFmZm1JeDFOYlAvT2JZODJxQWNEWVZ3?=
 =?utf-8?B?UXdoT2dSckE4YWNuOHpMVVVmU2t5T3hraGxpSjBMcXgvWFN1VmtPdURLL0Qx?=
 =?utf-8?B?eDBRUzd3dmVPTXRUZWxtRVgzdk03Y2YyOElJMlVyM3YvTGFTU0d0K2U2akVD?=
 =?utf-8?B?R1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2723369a-dd1b-449d-e0ea-08dd57b19b9b
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Feb 2025 04:37:29.2311 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fRxL0mJwuY766CRZbO1s3pdrkB03y/BH51/5fLHy9QXnL0gCHZCifoHH9ALj+F/x4ID1AKz2OtwhdjQJ2BLq+H/u4XOYR6KQ6hwzBubFbco=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7540
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


On 2/27/2025 4:56 PM, Suraj Kandpal wrote:
> Some DSI panel vendors end up hardcoding PPS params because of which
> it does not listen to the params sent from the source. We use the
> default config tables for DSI panels when using DSC 1.1 rather than
> calculate our own rc parameters.
>
> --v2
> -Use intel_crtc_has_type [Jani]
>
> --v3
> -Add Signed-off-by from William too [Ankit]
>
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13719
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: William Tseng <william.tseng@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vdsc.c | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 6e7151346382..affe9913f1ee 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -320,7 +320,9 @@ int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
>   	 * upto uncompressed bpp-1, hence add calculations for all the rc
>   	 * parameters
>   	 */
> -	if (DISPLAY_VER(dev_priv) >= 13) {
> +	if (DISPLAY_VER(dev_priv) >= 13 &&
> +	    (vdsc_cfg->dsc_version_minor != 1 ||
> +	     intel_crtc_has_type(pipe_config, INTEL_OUTPUT_DSI))) {

This should be !intel_crtc_has_type(pipe_config, INTEL_OUTPUT_DSI)

I think it would be better to use a function for special handling for 
DSI panel with DSC1.1.

(I am not very sure what should be an appropriate name for this but just 
to give an example)

bool is_mipi_dsi_dsc_1_1()
{
	return vdsc_cfg->dsc_version_minor == 1 &&
		   intel_crtc_has_type(pipe_config, INTEL_OUTPUT_DSI);
}

The condition will then become:

if (DISPLAY_VER(dev_priv) >= 13 && !is_mipi_dsi_dsc_1_1())
	calculate_rc_params(vdsc_cfg);


With this we also need to document about why we are not using calculate_rc_params for MIPI DSI with DSC1.1 in comment above the function.

Regards,
Ankit

>   		calculate_rc_params(vdsc_cfg);
>   	} else {
>   		if ((compressed_bpp == 8 ||
