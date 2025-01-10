Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BCD4A09DB7
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2025 23:25:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F02D810E477;
	Fri, 10 Jan 2025 22:25:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kjfUDrFV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95C0B10E477
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2025 22:25:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736547902; x=1768083902;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=WMmRGF+eJfNdEUhKzMykGzWaK7gA/ldbOjmf2ydnzBA=;
 b=kjfUDrFVSEVOGCNggzdJuxMmq6kmRnfuxd1NERmgehmys30UtXIDOSeD
 H9FcrP+twWqwqgoaG+q8pUQ0Pl+t0WCA5MBbzRio9jvN5O3j+61X+Vs3L
 FlAgYFJwk0nf9lI/4tC0BTfChn2xW4gu2o89H+RexeVi6MN44J3JmxmTg
 7HNNa3LKwxivOntBZbGrEQX1yDZJ4Q0/jlmGDtZwSsNbCtBvYwSxysrpq
 K1a85rS2tystbN3fZMMg4UiFf163oMsrv/Cga6ADmpbG7Ypl7dC5FzNrR
 XCV6bVeXRppAOYoqMnRtm3wc4mHZVq4WyuZ1MjPt1lN25ZElf/LlR8Tz2 A==;
X-CSE-ConnectionGUID: 1RkESLXLRJ2YD2hn60TgeA==
X-CSE-MsgGUID: XUK9ccS8SNu1ofylFqHDGg==
X-IronPort-AV: E=McAfee;i="6700,10204,11311"; a="36962567"
X-IronPort-AV: E=Sophos;i="6.12,305,1728975600"; d="scan'208";a="36962567"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2025 14:25:02 -0800
X-CSE-ConnectionGUID: cyRg8bGTTAuFebXUxwQKbQ==
X-CSE-MsgGUID: AUDWYY/4QN6xxz8ZlwtQXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,305,1728975600"; d="scan'208";a="108767770"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Jan 2025 14:25:02 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 10 Jan 2025 14:25:01 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 10 Jan 2025 14:25:01 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 10 Jan 2025 14:25:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fEQaoUiKUBul4pt6WdQ31iKuXqjyDIvVrw2b11nSAE2pwNC2czITjRtYbqtQwRGnvifCMwEma/Znh4g7mbr+Ws5pNZRFNFe/D6eitxdVvjE3etTxZEsLPARxc2oFCbX/F1dxUBaAd5jJNp9+ESbHQmbXcjCnZBDRABmRO9Xht0fh09zacwwDl+5Ex9NDIw4fbBSOwxTp8GfrpWY47g6hoWF3Ct6guhq5GiS8kXFGyIenFabEabQA8dezWCo1kySnvWe9K6t8BevJalpftKqJPifOLHzchJrsPMtasOQBcnfDCTUqF16inIhTgNKtuRFmJAM8tUuffEH72jz7OS3w4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TeTTH27yT49HFkkEszse6aboK1aTUtDhIwvIip9ZVZ0=;
 b=LTiEewEbYArtBzqZSOPTrEMyCRfaYx48itK/Uu5ncvPLHIdcAKpWVNnWAOBG2AEo1LFCacVr5OfMI2HHRFyYZfZh2xnIUW43na/XpdtHPpLh1cs0Z1nZPnanuBsiwq7kpT80EOtvaWu8JM1sqs6c2CZCPafY70ARxD463MsTt9Ov8FB7L5pPzgbwzr9+HgIwH7ojPCda9wc1fytgimWYLhsCvCkANbjh2h9/3V/7Cn1OQUSXSd9mRCtPaUruSwS8VsSABls9CMS+oNnvSMwu4B4VyAiiHQbu3eYY7ZlXfePtdY7d2nuApbhH1UsZ7A46VzCH+Dfrx4QeYl+Sp4IVRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7757.namprd11.prod.outlook.com (2603:10b6:8:103::22)
 by SA3PR11MB7626.namprd11.prod.outlook.com (2603:10b6:806:307::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.11; Fri, 10 Jan
 2025 22:24:59 +0000
Received: from DM4PR11MB7757.namprd11.prod.outlook.com
 ([fe80::60c9:10e5:60f0:13a1]) by DM4PR11MB7757.namprd11.prod.outlook.com
 ([fe80::60c9:10e5:60f0:13a1%4]) with mapi id 15.20.8335.011; Fri, 10 Jan 2025
 22:24:59 +0000
Message-ID: <ac40ff5d-36e4-488f-a36d-368ff10457dc@intel.com>
Date: Fri, 10 Jan 2025 14:24:57 -0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] drm/i915/guc/slpc: Allow GuC SLPC default strategies
 on MTL+
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20250110144640.1032250-1-rodrigo.vivi@intel.com>
Content-Language: en-US
From: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
In-Reply-To: <20250110144640.1032250-1-rodrigo.vivi@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0013.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::18) To DM4PR11MB7757.namprd11.prod.outlook.com
 (2603:10b6:8:103::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7757:EE_|SA3PR11MB7626:EE_
X-MS-Office365-Filtering-Correlation-Id: 14e40712-1182-4825-fcef-08dd31c59e22
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?b2sxMlAzRDdlNkI4ajhnMmZjWVpyZG5FS3FyWHRQL3U5eTNUQzRSeFhmMUFH?=
 =?utf-8?B?cWREUFZXQUU1SE5Zd0YydFQwYlNJa2RsKy90U0xzNDRxNFpOc0ZSRUN6eVQz?=
 =?utf-8?B?TEhnditlVTdVNkN1NWRVamtDV1l6U3p2V0ttZWZFdjE1WDhyRzk2V1FlNzN2?=
 =?utf-8?B?MDRrNmUvM2dONG9pOTdoMyt1dnNZbjBOb2JHTnozenZHUnpaMEwvLzlzbGFt?=
 =?utf-8?B?VTAycWIyV0greElVSVZocUcyaXBCNlduN3hnN0NNL0FFM0RjNkxUZG44Qjd4?=
 =?utf-8?B?dFN3aUlpRW1pamxnUHFIWVJwems5R3BQMkU3K0tVQ0xYZ0U0WkZwbS9zYll1?=
 =?utf-8?B?UndEcUZSQlVwNHV6ZHBGWE9TVjdBZm1GbW9vM2VaNHRMZWFIaTdCQStJY0lS?=
 =?utf-8?B?bE1xSVFNSmhRTmZ2SGRwejhMUWwrNTBzR3RrOTU0WWVJak10OU9Fc20ybDdm?=
 =?utf-8?B?RktGTGZVL1p2OHBMbXU3aGo3UlFoVWNZQ2JCWFZXU3J2KzBtRXl3c1hEYk9Z?=
 =?utf-8?B?QkpwRnVOTHNaY2R2WE4rUm5SbG1GV2Z6Sml6aG44SVJTQ04weHFSRDVlQ01I?=
 =?utf-8?B?NlRwUkFmbTkvT25sblo4WHNjNWg2U0tDSWN1MStoN2lYd2Z2RGNsNVR2MjR1?=
 =?utf-8?B?MzVRQW0rVU04Y1JvTFpySkpaOWRiNmR2bXI1V1dSWmcxVExWdjlGandoZXc2?=
 =?utf-8?B?QmlVK21TZ3pRWE1CSW9GcGdsQWZ5Mk9OemxENDJXczJyMEU5Lzl5S3MvMzBo?=
 =?utf-8?B?cU1DSUVMNlJ0RFAyWWpFNE15ajFkdkxGeGJTRkY0YXNsNDl1NDhPNHVtZTU3?=
 =?utf-8?B?SStmOWUvUllHVk1nWnN1aVVmSERaZWU3UlBSdjZzR0V2N0p1NkNoQUJHbzF2?=
 =?utf-8?B?OW5GWElHdDhGR2JPcUFpNUVmR2RZZ2UySm5GZ1hjbkdCZzlPOVFIdGVrRmh6?=
 =?utf-8?B?TUdvZVdRaUw3TGRuRDhBWmx5NHpORmN1ZndOSStSWDkxdEVlUkVKQU9VajdF?=
 =?utf-8?B?NkhicWZrckYxMkFyZHo0Wmt3cHduMjdkdTJRbDRNRlFVYjc5b29Zcm11M21W?=
 =?utf-8?B?OXY4RkdRZDdUZmM5cWpoZGtEd2lGbGwra01KbHRBWVNJZzJkRWpFTzJ5OHpD?=
 =?utf-8?B?YjRodXE5dFVMQ05JZlhqcUZUUHNTQkVuKzRxNTB5YUViN0ZITEZFQ214SmE5?=
 =?utf-8?B?U3d0dktjYmdTRytCUHR4bWo0aG1QeGQrUnF6Z29UT1ZKbFhISno0Mm1ueWdV?=
 =?utf-8?B?UlRNby9OS2tibDJmdHRpVFV3c0U1emFZUjlJR3lkR21zdmw0ZjAvb0lOV01z?=
 =?utf-8?B?SDhZMGNKRmEwT2RlVUZwUmlJRGYxdHRLSVFCQ09mL2J1Sk1ITXF2UnRlK0do?=
 =?utf-8?B?RncxN3UrZE5pakg4aUlhbHI1V1FyeEd1WkMyWURTbWtIRUVkU29KbzF3WndC?=
 =?utf-8?B?RUN3c1F6T2x1Wmg4VEEvWnBRSENTcTlhYlM3ZldFbm1udEsrUGdkNUE5eWVw?=
 =?utf-8?B?MDNpVGE4WjJ2K0hrb0g1SVVSRU1vNUdJaDdtNVBYaXo0ejFmWVNkbUZSTUE3?=
 =?utf-8?B?UmdDS0VMZER2MU5NSXpWN25aWml6VnVRdTJHOXA1a3huN3FWY2FBcWo5TVcx?=
 =?utf-8?B?YW5xL3VnSzBrSkkrT3Vncnc3TUt6N2UrcHVSekFoT3hrWWFaU21sYjI2TnN1?=
 =?utf-8?B?cWM0RWczbnRFc3BoL0c3OVFRNHpaeEZIS2JJSlA3dWZRTXZsYkRsWFNoUW9S?=
 =?utf-8?B?Y2M1VlFteVUwSnExT3ZFelN0dFN2N2NvOGVUU0ZQeFA3UER1OWcyU3NLRlQz?=
 =?utf-8?B?a0h6Q1g0dXV1MDUwOW1TNE5pZlJYUUdwdG50cldZeXllRFdIT095VERDOGo0?=
 =?utf-8?Q?Vehd9KX2u9hLD?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7757.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TTdIQkhvMXRocjB3SVZYaHVvNXB5V0p6NWxEOWVCZU15emh6YlFKYkRqVUcv?=
 =?utf-8?B?NGhZWEtDS3FxU2dDRzkxY3NaM1NxZzhZMk5uR2xrditZRkUvYmVRN0x0MFcy?=
 =?utf-8?B?MlBXV3RKSHV6OERuR0R3V2paakdJZkFQd2k4bi9ScGErMXorTmJYaHVyKzhh?=
 =?utf-8?B?c0Y1Y0JzZlpZNkhiRlJzV0Nyek5VZjNxWkl3ZlFYaU5hZ3J0UVlHYS9zZ05P?=
 =?utf-8?B?eE51UUQ3ci9YYmZWN1p3RHdOM2hCSEpTVytFR3pSNUNKS0xsME4vT3VsZnlY?=
 =?utf-8?B?VFNudEJEUkdETTN4a2JRZktaMUxPb21Xek91N0NpWSt4MVZRK0QrSVZHbWtS?=
 =?utf-8?B?VHNyWFBWbTBYc08zRFhWeTdyMCtPZWF2RDlWNEMwTzVxM1I1VW8zT2Q0OVBT?=
 =?utf-8?B?M05qWnRib0puZHJadGlwWmY4VkhxMVd1NGlQUnlYWkhHM2dNcFFvbldaU2c1?=
 =?utf-8?B?VlJYZHRia0cwMkNrR2V3bWNHQXBGNktVYTJqZXlQU0ZCKzI3cjhPSFdzeHAx?=
 =?utf-8?B?cXV2dWxDYm1yQzdSZno2UW9FWFIwTUc0cHhLTEJ5R3pxbVVUT1BGZFlXdlcy?=
 =?utf-8?B?RFg5cm9WU05WM2pOS1Bxc3RxK2UrMVRNeFVCWllqZitCMFVqRm5DL2hmV3FW?=
 =?utf-8?B?RVlUZGJDVkVaSGxkQnEyZnE5ZGNpaHdVWGF0STMzRnI1TjAxbHhBYkxsdWtX?=
 =?utf-8?B?OXJnb0xMekg2ZkNSckRod2M1eXNaN2RBdUl2d2hKNWNXSmVuY04xd0NGZERs?=
 =?utf-8?B?UUZTT2VPRFNvT1RteTROalh3alE4ZG9DVzFXblgrRUxZWWgrUkdMaUxXaGUv?=
 =?utf-8?B?U0dUOEdNRWpyWUxVME51YUxBSjVFV2NrNXZhVHBRcGk1Rlh0Y0RRekxscHJq?=
 =?utf-8?B?bm9kdkhXM0E3S0t5dEdGdHhGKzJJb0ZlZ1NiOG16UWZKaUVvZngrR3lUcVBQ?=
 =?utf-8?B?V0V2ZVl5SExrZU5XSmMyTEIxUDlkNkRSSEEvRURZWkt1QVdvV3RUUmVOOERj?=
 =?utf-8?B?ZWdjei9sTVRjTGhUZ2NPSEdHUTZnRCs2dEUrb0trRTdIQ2sxbmVhMzlpQ25Z?=
 =?utf-8?B?by9XVVNhWE5YNnBaT1B5dE5CMzdmcGxzVmh3aEJPNGFGaUkveW1LblVRa3ND?=
 =?utf-8?B?cFVLemJYcHBrMGVTSldWNzB6YzFwK0VVbXhQZ2lHSDRiTWcwVDNKYnhZVC9x?=
 =?utf-8?B?YlRaeU0yckFOQUZtb2dGdzFrYWJxYTk4M1NoVmtNN29JSWJiMk5sdG80N1pj?=
 =?utf-8?B?ZUMzWXR3Tm5NWW1Cc2ZKYVFkMll3OHl6T0hwSnVJZE5SdVgrYVFMamMzVGlt?=
 =?utf-8?B?cUZXOWdwTFA2bjZkenRERzZVQlJXSW1HMHQxZ0tYclBpWThTaEVZOFhGTVdo?=
 =?utf-8?B?cGtMakU2NXkycTN2cHprK2xYU0F3N1NXNGRsYlN5RDN1TUg3bFVYbWN1SnFs?=
 =?utf-8?B?ZENYQ3pKVDZ6OTlkWTdwRmxKbHRydEFvWmJOY0JJZ0FBWG5zRHhHWXZYSzcv?=
 =?utf-8?B?VllnOUQyVXJSVXQyTWEzWVFVbTF5VjZrUk5PMG5Xa09aN1RNSnRaR0xMNGp2?=
 =?utf-8?B?QTVLYUVMSDlZd1lnQ1BaOUxnZ2lTM3FlQ29SYnQ2Y25HUWU2TkhxZXREMUpt?=
 =?utf-8?B?UU5BMzBBdjRFS3EwR0pGRG0yN3ZpVHNEdlFOK3dOR2txcmFVbzg1ZDVDcUlB?=
 =?utf-8?B?YnI4Rk5SeHpTR1UrTmJwaWh6d3czMmVoUDRHbXpzN3RxUWVVWDF0TVBMZGNP?=
 =?utf-8?B?bDhIS0Y0NkowSXhtTzJxYkJrMHhveXhYd2FKVW9FbXRhOCtpSCtLYzRWdGxh?=
 =?utf-8?B?T1JVWU1Bc1hGQ0VxN1pDakxWaXJLMC8wREJiVjNNczNDSjM4NjkvYkhZTGxI?=
 =?utf-8?B?bHFLSkcwaS8ycERJYWZlelplNGQ4UTJqL1JDcHRldjZMRnMweWdJWVJZVUho?=
 =?utf-8?B?SEk2dWRReVM2VWFDdU4xQXNnTmwvQzh0MTZNNmI4dzFzSnNkcmpxdUdydk5L?=
 =?utf-8?B?TDZFVGtHNUZPS1JNK0hpb0xaMFZrZDFtNTBzcFlDcXBFU2lPN25UeU9Pd2dh?=
 =?utf-8?B?WlIzaDhEMnJLKzB3YlFOaFBaVmNVTTh4ZzNrbmpJQXFQZ05oRm9RWFJlNmg4?=
 =?utf-8?B?NG56YzdzTnRldk4wYUdLV3BGckVZalNZdDc5Z2ZpcGovcE9TWXBHbG1zTENy?=
 =?utf-8?B?eXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 14e40712-1182-4825-fcef-08dd31c59e22
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7757.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jan 2025 22:24:58.9629 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5oPOMt3+SIqk67QHFpOAkYDtMbFrwFinorVKV4yIZgS/bR01dAO5Ux7pJ8Rary0Hsv3nNNZyW5mGma6fz1m+HUKZbZ2DEHtBe2z8XeQ1MMs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7626
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


On 1/10/2025 6:46 AM, Rodrigo Vivi wrote:
> The Balancer and DCC strategies were left off on a fear that
> these strategies would conflict with the i915's waitboost.
>
> However, on MTL and Beyond these strategies are only active in
> certain conditions where the system is TDP limited.
> So, they don't conflict, but help the
> waitboost by guaranteeing a bit more of GT frequency.
>
> Without these strategies we were likely leaving some performance
> behind on some scenarios.
>
> With this change in place, the enabling/disabling of DCC and Balancer
> will now be chosen by GuC, on a platform/GT basis.
>
> v2: - Fix typos and be clear on GuC decision on platform basis (Vinay)
>      - Limit change to MTL and beyond, where GuC started to take
>        TDP limit into consideration.

LGTM,

Reviewed-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>

> v3: Fix compilation. Actually amend the changes...
>
> Reviewed-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com> #v1
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c | 22 ++++++++++++++-------
>   1 file changed, 15 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> index 706fffca698b..1f8e6f7c2c67 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> @@ -357,21 +357,29 @@ static u32 slpc_decode_max_freq(struct intel_guc_slpc *slpc)
>   				  GT_FREQUENCY_MULTIPLIER, GEN9_FREQ_SCALER);
>   }
>   
> -static void slpc_shared_data_reset(struct slpc_shared_data *data)
> +static void slpc_shared_data_reset(struct intel_guc_slpc *slpc)
>   {
> -	memset(data, 0, sizeof(struct slpc_shared_data));
> +	struct drm_i915_private *i915 = slpc_to_i915(slpc);
> +	struct slpc_shared_data *data = slpc->vaddr;
>   
> +	memset(data, 0, sizeof(struct slpc_shared_data));
>   	data->header.size = sizeof(struct slpc_shared_data);
>   
>   	/* Enable only GTPERF task, disable others */
>   	slpc_mem_set_enabled(data, SLPC_PARAM_TASK_ENABLE_GTPERF,
>   			     SLPC_PARAM_TASK_DISABLE_GTPERF);
>   
> -	slpc_mem_set_disabled(data, SLPC_PARAM_TASK_ENABLE_BALANCER,
> -			      SLPC_PARAM_TASK_DISABLE_BALANCER);
> +	/*
> +	 * Don't allow balancer related algorithms on platforms before
> +	 * Xe_LPG, where GuC started to restrict it to TDP limited scenarios.
> +	 */
> +	if (GRAPHICS_VER_FULL(i915) < IP_VER(12, 70)) {
> +		slpc_mem_set_disabled(data, SLPC_PARAM_TASK_ENABLE_BALANCER,
> +				      SLPC_PARAM_TASK_DISABLE_BALANCER);
>   
> -	slpc_mem_set_disabled(data, SLPC_PARAM_TASK_ENABLE_DCC,
> -			      SLPC_PARAM_TASK_DISABLE_DCC);
> +		slpc_mem_set_disabled(data, SLPC_PARAM_TASK_ENABLE_DCC,
> +				      SLPC_PARAM_TASK_DISABLE_DCC);
> +	}
>   }
>   
>   /**
> @@ -686,7 +694,7 @@ int intel_guc_slpc_enable(struct intel_guc_slpc *slpc)
>   
>   	GEM_BUG_ON(!slpc->vma);
>   
> -	slpc_shared_data_reset(slpc->vaddr);
> +	slpc_shared_data_reset(slpc);
>   
>   	ret = slpc_reset(slpc);
>   	if (unlikely(ret < 0)) {
