Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3E638C56A7
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2024 15:11:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D30EC10E3C7;
	Tue, 14 May 2024 13:11:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OVlwvucB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE3A810E297
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 May 2024 13:11:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715692304; x=1747228304;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=dQPmIrq/bfSmF8HYnyNMA4n14h6YWUZDRduxRKulda4=;
 b=OVlwvucBQMWivesb8ASR4w1Z9N7baMpEPjsun+7xGoDO7GJmr7w3OdWo
 ZQ0bqs7aioQten+LHc4oKcMp6+KXiAZpSks1bloi9HC6EkOgALKM7ZXHW
 O20niGOUjS+YPbpJTXiuAnZYQ1ms12XAelQ5pTlZjWH/YUzuwq22j3FUD
 zx1f5Qmn4jzRvEkCsuiYFnOjmnoVOs4OhH1MLKW89mxnelLUJfmOuxBfP
 1zJ8HDOOHU3PcY3+oZlEMHGyT8jryeUTzIytbZFsr4uxgyir94/qgQR1i
 o1443qOFoAEXW3fJsy0NLAF+KGXcU58lbC8NXQZcKBKZxiKZ+f6Whm7UN Q==;
X-CSE-ConnectionGUID: eMu6D9aJQ12TbKae23beVA==
X-CSE-MsgGUID: 0Xq+RC0bS62o/pu0mYZBiw==
X-IronPort-AV: E=McAfee;i="6600,9927,11073"; a="11794744"
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="11794744"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2024 06:11:35 -0700
X-CSE-ConnectionGUID: crWXOJL/QFaHk+ghGIbVGw==
X-CSE-MsgGUID: cfrY/e1PT+68L5Oq+2P1Pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="30758962"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 May 2024 06:11:34 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 14 May 2024 06:11:34 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 14 May 2024 06:11:34 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 14 May 2024 06:11:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m7ZI8q+dxSbYY5IPqqzBIOjgdbylGCwDPtzbb+IPb7j0IYWVCHzZFmy+J3LQas/jgKrOYaNjyOb8kctIjkCztI6anH+R9p2HXOAyPPJ+Qa8d1zCYLBB91sJEztX2etGHZ0wCmTMtYpjOolfJ1FffR5BQLlMkhIywtK6lhynTqwJtCFZxaTYPl7G9aV1G2EEwvDZQXWywR8YhP9KSQNnbv8dGocmc+nAjIEqkUgYi4wpUjrAyErkVGXPBeKM4xhhyH0dcr69gLfLMOFmQPr0CkOdax4zImyHEIRcfDyhuYwjWV5npUuIXttC7L2nuHq4ifvVSlZebprjYzhtFd1iMEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/XqpmK8NULf+f6PoLzt9anxnz3GKnUjQG2xK73ujFW4=;
 b=SJAx5MfUa2EWgsecu0EBypMy94a3D1rTSQtAQEz3bWLhr3N5JiJJlbR3PSI+Wk9QM6ho74a77+q92vYdPmUHOIisXeTW+QBLUKpgK5m5Ev4yQkif+odgAsBj6ZDqdqzc9quDEMEh6hZRzrNk6m4379TzHZ35Q5nwrkwNDMSUcLx1IUA/MjOCGiJ1vAApGFZe2wks+5qR9q2yRDJiR0JIsGUXusPFRI4u9pNsVLuVaO/BGZZbCCGj8+CpDdcmgMGtlyBCJY5u4gOXARSNs9iNdxajMpD3yxdRsbtS7xQg1uUTbp9aRPzf1234mku+LuiMV2Y623DaWUmomElqVrVKJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB4596.namprd11.prod.outlook.com (2603:10b6:5:2a6::17)
 by SJ1PR11MB6249.namprd11.prod.outlook.com (2603:10b6:a03:45a::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.55; Tue, 14 May
 2024 13:11:27 +0000
Received: from DM6PR11MB4596.namprd11.prod.outlook.com
 ([fe80::3856:92c9:8589:3200]) by DM6PR11MB4596.namprd11.prod.outlook.com
 ([fe80::3856:92c9:8589:3200%3]) with mapi id 15.20.7544.052; Tue, 14 May 2024
 13:11:27 +0000
Message-ID: <b34b1cf4-b07f-4937-90ec-918fd3819209@intel.com>
Date: Tue, 14 May 2024 21:11:18 +0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] drm/i915/mtl: Update workaround 14018778641
To: <intel-gfx@lists.freedesktop.org>
References: <SJ1PR11MB6204A1D3BB33FFFBB6BF32E581E52@SJ1PR11MB6204.namprd11.prod.outlook.com>
 <20240513132956.73709-1-angus.chen@intel.com>
Content-Language: en-US
From: "Chen, Angus" <angus.chen@intel.com>
In-Reply-To: <20240513132956.73709-1-angus.chen@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SG2PR01CA0114.apcprd01.prod.exchangelabs.com
 (2603:1096:4:40::18) To DM6PR11MB4596.namprd11.prod.outlook.com
 (2603:10b6:5:2a6::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB4596:EE_|SJ1PR11MB6249:EE_
X-MS-Office365-Filtering-Correlation-Id: 5a7c7e19-1ae9-4269-cde3-08dc74175cb1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NDJ6eXBkY3MzVm9GZ3N0U2g4Y2ZMR3lCMmNUSWF3QlVDZTdUcWZmRjk0Y1ov?=
 =?utf-8?B?RkhabjhpUTJLakJMZUJON0M5ZzI3aHVNQ2hHeEtUTVhJWUpjbzE5RkY5NjV5?=
 =?utf-8?B?YkY0MzA4MnFNTzNNMWRPMmJoN3U0UjFHM2RCTzF5bTd6bWR0aml3cXArQUNi?=
 =?utf-8?B?UnhjeUV4cTRtcDJMaTkyT0NMVi80VldhWC95SjNnYzlWeWxHUWYzZ1hwOVlq?=
 =?utf-8?B?T2JVQ0RHSzI3WW9MWjZ1TkZZejRnb0tMcDZRVFFWWkxsT1kxTDRoWG9mUkdm?=
 =?utf-8?B?QUFXVXJoV3ZXcnV6V044YnhPNGpzL1g2ZjFaTVp1WUo4MVc3UFFURUhKL0Yy?=
 =?utf-8?B?Szc0cTFVY3V2V1pMbW5HT0RDb1pXZndxYWE5RVVLT250TlhpUXVxSlJXb0Fs?=
 =?utf-8?B?cCtCMGNGdnVNRlltZmp5UGVlRnVldDBjYlQ3cG84cEJPRWRVeWEwMUlRdmNS?=
 =?utf-8?B?NmVhVUEyQjdOektTb2JkZGhScUR5M0M5eG8rTGJ5TFJqN2RZL1daZ2JMRTI4?=
 =?utf-8?B?ZTdZcWdyK0VIM1NJNGR5ZFY4Ky8xWGlwWWsxTUNzOGxhMS9LMWZtN04yelhH?=
 =?utf-8?B?UFBrTHQwaXpEVVo2OVdKS3hrMWNCRk15T3RtWEdtTXZvZzdrWUY3K3o3cEpV?=
 =?utf-8?B?cmJFc0ZyMWRxY0J0MTlML3VCcnN6OUIxaExGQXZkdUVnL1hkU1A2UEZJN3J6?=
 =?utf-8?B?OFVIVjVhUnFFM1BjMlpML0plbXlIRzRuQWVLZmRqU1Zidkl0KzYzZEhDUVNE?=
 =?utf-8?B?MUtQM1lNL2tlcHdSUWVaR1lvWEVoWnFPL2FKaGUxdnNCcW1JNmtxdHFNb1Bs?=
 =?utf-8?B?T2ZXSTNaYXF1YUxVUkdqK2g3TjdGby9wRklJRU0zWTZVazdHdjZKczU2YW9P?=
 =?utf-8?B?MjA0MWE5TDhTNWlaUm9DSjFZblkxTmRDNWNiZ0hQV3dQZ0JoclN3aGpQSEg1?=
 =?utf-8?B?RTQyVEk3SVRHY05wOXpXbjc2b1Z6b09MdHpJb2Q5cUhHeTFycU1zZ0VVOW4z?=
 =?utf-8?B?M25VYkpxd21aUjVSV2Z0WnBOaXRsc3k1UVJ0dWhIU0ZQWTBpc1Z4NVVCWHRZ?=
 =?utf-8?B?UmZZNE9xMTBVeEhpUlp3dWF3ekk3bjV4N1Vtc0M2TFlqOWsxY2x5dmxWcUF2?=
 =?utf-8?B?cEVBSUtTOUxTY1FLUVhvMlNKRU9ON0NiVDMrWVBmK1dLaDU0ZXJrMU8zRUZR?=
 =?utf-8?B?NU1GdXVTcUc1Z2hlRXRnbW1GWi9HWm5oQU9SVUFMeUR6ajBEaGxnNldpcnVn?=
 =?utf-8?B?dStrSkFqZnk0dFlqclNKazU3UnUxQmlBUnRZRTV5aFNoM3FHSUNuYThuclVU?=
 =?utf-8?B?cVlPVVlId2hmbnZSTkU0Y2l6azB1cnlyRXBiaTJwVVQrS2oxdE5SQTZOZUg4?=
 =?utf-8?B?QmFsS1NIeVRtZEk2bklCSnhoWERKSCs2Qnl1YnpYNzFxdndjakwyUVZoZkRt?=
 =?utf-8?B?Y0pRdUx3Vy9hZnJzc2swcmFOVTBIMlpvWUJZenNFNGZDTVJUYUwyY3BFajNY?=
 =?utf-8?B?bjlGaEdiSERoc3E0UFJxYXpmYWdReWEvZElveGhoaVRvVzJKMzB0TTh2a0dv?=
 =?utf-8?B?Rjk0YkZiMEFqbGU1UmtrcjUwbkJUei85L2xSVGdFM0FWMzRtdHU5VERZYXdB?=
 =?utf-8?B?QjMzRlJBNWFTaytuc01UcjRBUmtpUDhXdy9VVncwczcxYU92SlpXZDQrS0lY?=
 =?utf-8?B?Z0FJMjhmUnV5VFFRQ2lDZW1hR2M4c3JWTG5Ld212OG53cXpoMXZ1N2VRPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4596.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TENZNWdUdHlrVXhUYi92ejJwVm9IZ0dVTXZpTVJuaXlYR2hCdGR3UFcxbTBR?=
 =?utf-8?B?RzNJQnljQmFFSzF5SzYzUXdNTUkwL0x3MThSa05TdzVyVXM5STdpYmFFblAy?=
 =?utf-8?B?a3d2RHFVcFJXWEgwcFVRa2hWQVZsdHVvdmRzbzdpNnpSa3JDZCszc0xERmp4?=
 =?utf-8?B?SnhpTjhTcmlPNlhRNHhON1crVmRYbFRQUFFNT0NTSm51eUkwVmFTNTZsam1X?=
 =?utf-8?B?Y0dVVzRjbXFhVjc2WmpraFZjZVhZTXJXcGtIVFJ6MlkwbzkzVDY3K1FDNHNw?=
 =?utf-8?B?M1ppQ3dYc2dxeGRIWks4RE05ZFJMalhDVnQ3NDA0czhKZGFpUFpGMVorYkVk?=
 =?utf-8?B?VHphN2xRSGFIZG94ZHlLVFV3SklOVnNhY0luZFhxd2NyQk5IeUR6bS85UGRw?=
 =?utf-8?B?dWxtd2FLbUNFT2NCUktVSlZuRTdTeE56a2RETmZjV0E0SG5ycEJaUGV0Z2Vy?=
 =?utf-8?B?aDVncXdVQS9SdEtxV2t1aTJ5NnNiMFNudm9rb25tcS9jUjJPOEE5Q0haZFBj?=
 =?utf-8?B?QTNlN2xTOWd6bVlmc0FGaHZSdS85N1MvT2N3clJGSXNySE9GWmNCMDNGZmlt?=
 =?utf-8?B?WjR0WHlHQU1wdWF3TStyZXdUZGN5ZkNpSHd5cEVUZE9YSWppSEVxeXNFQzFF?=
 =?utf-8?B?Yy91dFBmZHhYWkZ4NG9oTWJEcWUrM3BmWnVUQi9rZHk2N20zOWZjUzlPWFRr?=
 =?utf-8?B?UXdQbWxSeHpGSllWVVcxOWIyVXVqd1p5a1NNYmQwZGhVSzU1WW1ZYTBzVEcz?=
 =?utf-8?B?a0E2YlVDcndpVm8xMzhUekZDZ1Q5SmNXQlEvZWsveVlGZFVmdFlNYUdXSERy?=
 =?utf-8?B?MDNiUGplUHoxaUNJa29SWUY3aDlUd2o0WGhuaVQ5TUJ1NE9WVVQxMVdHSFlZ?=
 =?utf-8?B?QnhRL3c1Z0k4cGhJQUpURnE3bjRrdTJ4bEpCbWt2N1ZESVlYMHNRdWpCeUln?=
 =?utf-8?B?dEZGdmpQN2wrUEhlNkVaOXpKenA1djF1QTRrYko1djdNRzNhOHIrTmJZeCs2?=
 =?utf-8?B?K3g2b2l0Q0xLcEpNNmhEZHRUODV4RG9xS1dzU0NrMkdTWWxxQjEvdkxpZzdz?=
 =?utf-8?B?SWxMTS9ZNGZyWXFBUDUxV1pwUFkvVEl0N0Uxd0lQLzQ3WFhsR3VsV29Dc1JV?=
 =?utf-8?B?SXRYbzc0dTNRVHVldTYwM01XVWVSRWJVZW40YWFGZGlCN0pmZ0tTMXNOSStK?=
 =?utf-8?B?WU5TZ2hVRG5iMGY0WWhNWlRiUFpXTnl0T2NsN08rUVpWRitwcUtnekZ1aENs?=
 =?utf-8?B?WjB2WjYwZmczK09HWUpRbngwcEpHRHFtem5LMGx2ZHFvUnZOWG02dklIYi9v?=
 =?utf-8?B?d0E4S1FYeTVFL0Zqb2VMbFcwR3RJamdlWFlXanloMU1MTEhnWlc0blo1ZVZK?=
 =?utf-8?B?MXNrUkZuZWVJTEVEVUJKS003TlBLcXl0dmVGd2cxMTYwYnZGV1p3RUlJNk5W?=
 =?utf-8?B?WlR6cEZyVmNPcXhWZWxJSGRGdm1NNHZBdjFkcStqTzRPVG9zcDBUeVRYRm84?=
 =?utf-8?B?VjV5SGxpbEVFb3Rsd0ZOMjM5ZnNFV05vS1NyWVllMW1USEs4RDVKZFk5QU93?=
 =?utf-8?B?NXQwangxMlFOR2o4L2ZHclo2OWRvS0RKZGU4YUtGMHdnWDExVzBSV21OWFVw?=
 =?utf-8?B?dmZ3TkloKzA2WUtCNGpjVmdKTUNGUlRjOEk1L2tnSURqQ1BmajVHRkN5bk0x?=
 =?utf-8?B?bFBpVTdRNzUyRGltWC9lSWgrMVVUUjlGa1lDMkZqY2I2OE51eXpGV2gvMVdZ?=
 =?utf-8?B?VmtESGR2dXZ0QjhLZU5hSkRteEw1ZERIOTM1aDlYaTVBQ0JYelNNRG4ySkND?=
 =?utf-8?B?QkU0VlVmWWpYN1hYdjlmU1hyNGg2RW1aUGFYZWJBVmJRN2VMWU1uSTZhL3FR?=
 =?utf-8?B?MzhLQ2J5a0xyZjF1WGdpNlhKYVZFV2thTUt2aGh5Y2hIMW1PRVJLVUZuaTIw?=
 =?utf-8?B?ZEhVMFZDMTFLY1VwcUhMU0RROVJ6K25VbmdMU2N0YmZld1lpcTNKUVc4eW9j?=
 =?utf-8?B?SW84WFFKVGRBdkJQcUticDN4Zlk5RWVkcjY5VmtqdDMySExaZDJ3M1d3YWxT?=
 =?utf-8?B?ekI5SkREa2FvZktlMFdUSWdrZnQwVnZ2U2pTSHBTNjduYnFnTE1ob1crd1Qy?=
 =?utf-8?Q?2O17oSZAdd4/DraQZCGOswvhE?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a7c7e19-1ae9-4269-cde3-08dc74175cb1
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4596.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 May 2024 13:11:27.1596 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cDksGopgiv/P9ZmF7+ZVOET4pRU+s/3wXjt7GlRqRa4SfYMcZCY8guTd+cqLhnIm7BoIla90ebHVydbFqCdrJA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6249
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

Please ignore this patch. (Wrong branch)

On 5/13/2024 9:29 PM, Chen, Angus wrote:
> From: Angus Chen <angus.chen@intel.com>
>
> Applying it to VDBOX after recent performance data on MTL
>
> Signed-off-by: Angus Chen <angus.chen@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
>   1 file changed, 3 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index f3332bc55b8f..8432fb4fd28d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1695,6 +1695,9 @@ xelpmp_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>   	 */
>   	wa_write_or(wal, XELPMP_GSC_MOD_CTRL, FORCE_MISS_FTLB);
>   
> +	/* Wa_14018778641 */
> +	wa_write_or(wal, XELPMP_VDBX_MOD_CTRL, FORCE_MISS_FTLB);
> +
>   	debug_dump_steering(gt);
>   }
>   
