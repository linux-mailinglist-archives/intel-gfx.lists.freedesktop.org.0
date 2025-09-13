Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D2EB55EBF
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Sep 2025 08:00:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 658E610E0E3;
	Sat, 13 Sep 2025 05:59:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="itHr2rA/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E89C910E0CA;
 Sat, 13 Sep 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757743194; x=1789279194;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cRiqA2QpD5kHf7C48lnW8lUaSGdaWCaNZd4RMlaB3z8=;
 b=itHr2rA/BaVZsNx8iXPK7ox6M33qYuSZdngaJML9TiJfQETWS/bVEFti
 2qo+YnEGUkSGa2cBQDMO+7eztWDtwT5V0Vx6RBIuhahKuTsc06JdncXow
 xXH8da5Ch12wAcpynu6xqoXfp2odzTCXtGTlcc4QlyNdJSCBMoFal6mPP
 zlG8t5FT+o4AXF+zpDGf0hsB6TWE1cnHadLsjGinXWBx0Fi6Pl/mNF6qb
 VAZEYMiVkopvcgSr8J9PrqNw9rIoU9JDzOP0AtjqFIL/LjfUw6PMGIZkw
 EQDUVDeOD1aDdtu4Q4kOJ3TXAcmN2vazq/6Stvd9hNsg3QxAJtuYdp+z+ w==;
X-CSE-ConnectionGUID: 4fWO4WRETUCqmvj02gxFHw==
X-CSE-MsgGUID: dz1AK8wbTaajn6hZcYFeNw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="60142486"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="60142486"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 22:59:53 -0700
X-CSE-ConnectionGUID: r8Uf9JW4R1GKkjNkfZ48iA==
X-CSE-MsgGUID: O0SbeL9+TSC9JAwHYejdIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,261,1751266800"; d="scan'208";a="173753931"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 22:59:53 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 12 Sep 2025 22:59:52 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 12 Sep 2025 22:59:52 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.86)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 12 Sep 2025 22:59:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=K5Lua4wKTNg2v6MzLvgmiVql7wTx5dlPZjBGpELMJ8qf7gbUuFASTGjjS5mMhCJrQgK9Q6Csfg2IwEyWQHrPgUnEpQp33SFvk9MHu9ysj5fvLyIoLN9skXlPIy8mr8i3IjyqrqZ9n2gTnoSGpf+B+yXYtP1i/aDiK6mVTjFz2bmzjF8ois/+Vwvd/Ur7FXFqRHQ6xxisUxkbX0eVYFQIz1wPlI0kVRWAUDm/NsJN66zqEVxFBRTyHYI5+2ohnFqzc4GmfniU70otvH3CHqeW5l5PIgrnsifr7PrmjLIN4sVcSKfZt4HOBPy8pdi98em5MQHRb1Zt2f2w2mc0C1Jx0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Lp/EroubVMKCfme8L5S9nGGxoOykY6A3QeDdFfwJU2w=;
 b=CRfoJ+XK5WSgCOWfuz7sJexKxsqQs5EPhBSbcLPBpnaU3rI1MJFooVeW4K3t3WEptu0io1cT7G/HElebWbZgshUJOSt7RejwJgDrJ8YRlcCtLv3EoMv/hD504Q/Ys4sA/WLNVsvQ1zhIIdzxUOrg7WZUCsGX7NwGv3UGy5N9Dr3JqDCf/hDaXEa8c92JKB91hxE6a4g77lbCcbYw2kp7FcZJ2ZhEL8MNgKbnzW3wkL5rbzCEG4R5rQNXxGrib9j+jZn9o1TpNqRyeDtmgz0/e8ApWNlezDCjcP/S/Pic3wvOuGQb9GO1NTiZL4U6lUeureMu0njFD+Pf1n7dZObd3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS7PR11MB7807.namprd11.prod.outlook.com (2603:10b6:8:e3::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9115.19; Sat, 13 Sep 2025 05:59:45 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.9115.018; Sat, 13 Sep 2025
 05:59:44 +0000
Message-ID: <ae3041b5-2cb2-4b75-a081-2193988edf6b@intel.com>
Date: Sat, 13 Sep 2025 11:29:37 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915: Defeature DRRS on LNL+
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>
References: <20250912135926.18910-1-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250912135926.18910-1-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0028.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:178::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS7PR11MB7807:EE_
X-MS-Office365-Filtering-Correlation-Id: c3ff044d-d0e3-4bb0-6a02-08ddf28abcd2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?U1U0RU0xRktvZHhzVXovWjlZNlZ5OXB0U2lTNTZkREZFNjZNUU02M0hiRmJN?=
 =?utf-8?B?eE1aSGxXSU5tWDZybHA2NXJaK0V6SGJWd0REUXBwaDZJNVhFTHNmRmlGYnkz?=
 =?utf-8?B?SmdWMEFEekVpb2llc254K3kvT0NPT3dmajZKQ0JWUk1FS0xpNTVEVmFqT2s5?=
 =?utf-8?B?TmhRN09ld3ZtaTFPaWpyOU5xeDdsTEpHWUxjK1BXdlVhUldBck85Vnp2YVFP?=
 =?utf-8?B?a3pYQkptNG9uM25uN2RWTjF2c3RYS2xoWExkWjEvOFdnUytWeDkxVDdnV1ZL?=
 =?utf-8?B?cDB6NVVUakJKZWphY3J2RlRuYUdtVE1NT3g1Nk9FTm9iM1hFakZTa0lxbk1k?=
 =?utf-8?B?cFp3aVFZTHJyMU5FOEhqMllSbyticGhCcG9ySVgwSXZDTHE5OGg2UXVxZFZB?=
 =?utf-8?B?WHRibWpoaytqZFVtejkxc1JvSkd3Tk9yTjFxT1M2NFErM0lheDJzVVMxbDNO?=
 =?utf-8?B?RGYwT0VnUWMvMEJnR09kRk5NQzdVU2d3VWpWTjhPclAxc2xzenoydDA0NkJa?=
 =?utf-8?B?SFlzY3NGOE5aZ0ZGUGxJdXFFa0tJcXB6WXdYNlhZcFNsTitRRnNnbnpneFY1?=
 =?utf-8?B?T05TTDRST1crTCt5TG92ZnBuT1FiajdpTzdBY2RWR1RVY2cxdXl4bUdJbWUw?=
 =?utf-8?B?RlpNSVpIQkpMb1R2L0hpajgvb1E0MmxqQm1ZdndBbEhwVGZoQi9uaU04Y1Rr?=
 =?utf-8?B?RzRQeTNWWGo4Y2hLM2tDSER6V2JJU3llU3lzRWV3UEFsZ3RVdjkrVkJ6N3U3?=
 =?utf-8?B?OVd0Z3VzaEdkOTR4SEd5ZG5hQTA0T0lpaHRGblhCa1BRcHV3elNZcHVxYlhC?=
 =?utf-8?B?eHNQbUFlUGFVOWwxYTFmcXB5dVJwTTgxNjhONmxZNXFVcUk1SXZrTTFpYUZt?=
 =?utf-8?B?RGpyNCtFRlhUeDkwalJzWjdpcHB5ODNsZ3FoSVlrcTQ5dTBLalc1VzU0cUcw?=
 =?utf-8?B?YzBpUDluS1ZpSjdiYnBBdW5uSCtDNGNnTXErb1d3M3VRZDZsR2lSQ3p4cUJl?=
 =?utf-8?B?NERPbkhRdENSd2FxYWh5KysvaHQvVDF0Tk5ETnFjZEJObnFuZEttanJtbW1K?=
 =?utf-8?B?ekEwNFdUZDhHWFc4bEY0RjdvTnhHdmU0ejU1aFBkZTlKenJSSXJTSUR5M1BK?=
 =?utf-8?B?OGxkVzBWZnpsZUJ2YkZXTWpXcGV2bDRpMTdqVEVQYVN6NVNHQ2xnSUVPa2Zm?=
 =?utf-8?B?TzFEaHh0UEYwcmxtZGRQOWZ2blllc2Jza2JtVjArOUFUMk1UYlhHbUtwSmsw?=
 =?utf-8?B?RlI5TjdvdldLWFJyKzVhdDFCai9rUERKYjI4TUxENGxSa1lNT1NRSUljVy8x?=
 =?utf-8?B?K0RySnRTZjBkYmZBTUY1WWdzSm0zRnF0YmJWbmxPUzVtK3NNNnpiUzRhbHY5?=
 =?utf-8?B?VVdScG01NVpIZ0d5L29ReGFacFdCSkplMDZZV08rVHVqWXh2Z3BvSlhwUWFi?=
 =?utf-8?B?ZlZNZ3dOa3BLbDFyenhzSjVXVytMRjFFVFBId04ySGJqNnNQUHNIcGhFOU1W?=
 =?utf-8?B?SVJlVXorQ1FIOHM3T293NlVaZFRCZVh6UXVJczdRUnR3NmhMWUNJa3RDQVh4?=
 =?utf-8?B?bDMrZ1l5Sk1BVkxua3J2cnNWOE13UE1FbHNmdS9qMHF6b0ZXNFV3Ty8rWEpI?=
 =?utf-8?B?VUFrbkRXbWxqdXY4eTBOMG1mL3QvZzVuQnpxNDErY05YL0V5OStzKy9HZDA0?=
 =?utf-8?B?QXoxR2lCT29aZ28yY1dXMU9VRzhra01xalZ6VWp3VGEvZXZvRnhLeGpxRm1q?=
 =?utf-8?B?c240d0lnMTIrdGh4c3o1dWh5RWNEcTFjdm5Sb2FnckpLeC9lUm9XelZaWkE5?=
 =?utf-8?B?ZHprQytCQjM5TGZiSmVuUW8wRzJvb3g1MEMrb1JYNVRoN3k4NkRvQXpEVVl3?=
 =?utf-8?B?YzdvWWpyejdvSE8rZmJRTWgvbHFVeGhJQWVsKzNua0NwZlFMdFBoUXhxRGt1?=
 =?utf-8?Q?xdSH3dxslpo=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b0dVUDlwU0l2OGl3a2ZXc0ZJdzJ6YTh4dmhkSzArYjF0S0kxclZ0cnpINEgz?=
 =?utf-8?B?cTl5TkFYdnBqa04remIzWEtPa2lhVC9VNDJTV3QzbmVONEozdFF0aWgycGF4?=
 =?utf-8?B?NXhMR25qK2tZV0ZmU0JjQ3BLT3N4dlR2RGpVc2hCY3BsR1VqYjcrUUQ1c24x?=
 =?utf-8?B?dDlRTFZLY0hOK21kU1lRTXlFRGtubFQyR2QrNk1aeldTQmI3SENsbUdZL2Zm?=
 =?utf-8?B?LzMrcjhtcTV0eTBWTlhMTDFXSG5zeDNKWDdzQ1dTZzVES1ArTmJjN0hDcVFk?=
 =?utf-8?B?ODBwVStuVGJCSGhCcnQvVmVQeFlZNTZwTmlpS3dGTVJmMEFEY1BjRkZ0Y2R2?=
 =?utf-8?B?eUdQUU5vRnN4d0hCb1BxQXRYdlNJT09Vd2RQeVBRbGQweDdBNSt0bWVRWmgx?=
 =?utf-8?B?ZnFldk5POGhzOXlLU2VjbWFVVFp2Y3hFOHIwaHVScm9mdEpTSmhkUml3UFdl?=
 =?utf-8?B?T29DZVhMZXF3T1NwMGhqL1JZbkhLT2pkcHhkdFhaSXFxZmhCclBBbit4VnVU?=
 =?utf-8?B?Z3Z6STZkNmlnM3VuNXJEKzBZM3Jvd3hHdUtVUDJ0SVNqSTNFeWhTSVJWOGhh?=
 =?utf-8?B?S0hQNXlqczBNT0pBTlhqQVphVnBEb3dLQ0w0MEM0VXpqSEJmdlZSaFMrOFpo?=
 =?utf-8?B?RzZyYnNoeE82bXpHQStzT0lKU2ZFVUZTak9jUFRyRlBvS240MG5ianFJSCti?=
 =?utf-8?B?RXFOOWdIRTFXQlNlTC9YbHcwNEluT2JtcTQ3V1crYVBqdlZFUXQrSGNhcmU0?=
 =?utf-8?B?NWIrUFJ1Vmt4RFUzTlpZYlFTSlI0aEdRRDdmcW9FOXlwV2JFb2NhSnljSmVI?=
 =?utf-8?B?YVlCc0lSTnZ2TU80ampDSzlFYjJXemlPRWszNlc0ZTZnRFJPdy90c0VGM1Az?=
 =?utf-8?B?eUdpZWo3dzQxNTlRRGM4STZBbXVJbmp5eW5IMHlRUnB4eHZzT3A2aHNpaW5i?=
 =?utf-8?B?bFpWSmV4YXRGTk1aRDhkU1V0eTVxVUp1VTczdjFIUnFxejg4bGFlYzNENHhh?=
 =?utf-8?B?bytpSnJtdVdMTXZESVhySnlCZzBLWm5uNndlOTlScm9tQkVzaXlCT2tuYU96?=
 =?utf-8?B?ODBVV1hGT05jV253a2dieUpvcWpyTEwxODh4VUJCY0NzazFWQnc4OXBHaUhn?=
 =?utf-8?B?R3YvalF6ZThtOExESmFHT0lvV3NIand0Q0RqQjVXNDMzM1YydzM5OFVUWDZQ?=
 =?utf-8?B?MFQ3b21hU2N0dWVaVm5GdURGa3hUQjF5eS83WnhRK1Q3emhRcWpsOGk2UlFS?=
 =?utf-8?B?VytVSEQxYW9IbStCKzVoaFQxbXBHNFIwemVhckoxN3hIdXcwZGYvR0xzWHJP?=
 =?utf-8?B?d3g4ajdJdWZ6TWF1SEczMWFnR0dpdWlOOUhEVzhNcExnMlEvU1c2K2ZBM1ZD?=
 =?utf-8?B?cVBZZmRDUEJ1VkhhQndFRU5iUjlZMFhoUkkwUEl1Y21YejROYTJ3cWN1Y3hj?=
 =?utf-8?B?SHpFQlA2akZOVjVOeGMvRjA3YzJTZG5qWGZ4S3hPenNicUFSd2RYbWZpd0ZG?=
 =?utf-8?B?YWdFM1VkbnA3RkhSSmlSNjU5RVhTM3JjaW9ISE9zRDFKcVpWbE5qRUJDcE9T?=
 =?utf-8?B?bDYwZnVreW1IS2JxN0tWb3BzZFN3eDJnUEI5TndqalNiOTNnNS84dFM1NlU3?=
 =?utf-8?B?SGFsdzZSeUxWOE1QQk5YOG9uYTh0OVVpRzBWdXFjRW5rVkY2ME5oNWMwdldi?=
 =?utf-8?B?RW1vWFZtejZZU05RbkFFL2FzdDJCSXF4cFdIbSt3M2pIOTlNeHlsSWdiK1Fo?=
 =?utf-8?B?WENSbC9DT3AvWHZJYjh6VjlHK25hSVJMaTdmaGJuZjJnYVJ4dER6RmZXVGRS?=
 =?utf-8?B?WjJMNnBuOXp3RndKNXI2QXJtZ2dHYmpaeFZxVjFpSTY2TW1RTFhybVZhcDU5?=
 =?utf-8?B?WTY5TWlRYTVVTUZWdkZmeUhRRUt6UGZzZ0h6SFludzZjc3RQcm1rNUdScVJt?=
 =?utf-8?B?Nm1QNmczZytDNzA0a1I0ZEI0dUdEK0RFUEFMUjk4M1FsOEtQYmpjYTVtV2Ez?=
 =?utf-8?B?cGgvMHFYOXZEa0lsUDVJYnl0dDRPdE5ycmdhTkZWdHI3TTdoVjRiZ2VtZnRH?=
 =?utf-8?B?cUJEMXVXaG9YSE1HV2M0ZUlQVXF5YmZsdndqVDNwQVAzcnczczRQTThGbEZv?=
 =?utf-8?B?MFp5cnRoQkl4OGNtZnJkOVExS3g0QnAzMEc2L2lhcHorWUxsekF5UWZvdndp?=
 =?utf-8?B?WWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c3ff044d-d0e3-4bb0-6a02-08ddf28abcd2
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2025 05:59:44.8695 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: u9JO/vU2e9La1doK+awGZJvzrL5+6g5coOfJS+gNUcEqS83Icar/6W+cgLhUiX7JP6cVLe5cwbiscGccg05x3RfyQtBnZfNiis6nigeZM8w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7807
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


On 9/12/2025 7:29 PM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> DRRS has been defeatured on LNL+. Adjust HAS_DOUBLE_BUFFERED_M_N()
> to match.
>
> Note that the M/N registers still appear to be double buffered under
> the hood but the double buffer update point is now documented to be
> just the last register write to the M/N registers, so it no longer
> happens synchronously with the vblank/MSA transmission. We should
> perhaps rename HAS_DOUBLE_BUFFERED_M_N() to more accurately reflect
> reality, but couldn't come up with a decent name right now...

I think the name is alright for now, we might need to change few 
corresponding helpers too, if we change the naming here.

Thanks for clearing this up with the HW team and get the bspec updated too.

This saves a lot of trouble in the series for making VRR guardband static.


Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


Regards,

Ankit

>
> Bspec: 68917
> HSD: 14016007525
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display_device.h | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index f329f1beafef..1f091fbcd0ec 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -155,7 +155,7 @@ struct intel_display_platforms {
>   #define HAS_DISPLAY(__display)		(DISPLAY_RUNTIME_INFO(__display)->pipe_mask != 0)
>   #define HAS_DMC(__display)		(DISPLAY_RUNTIME_INFO(__display)->has_dmc)
>   #define HAS_DMC_WAKELOCK(__display)	(DISPLAY_VER(__display) >= 20)
> -#define HAS_DOUBLE_BUFFERED_M_N(__display)	(DISPLAY_VER(__display) >= 9 || (__display)->platform.broadwell)
> +#define HAS_DOUBLE_BUFFERED_M_N(__display)	(IS_DISPLAY_VER((__display), 9, 14) || (__display)->platform.broadwell)
>   #define HAS_DOUBLE_BUFFERED_LUT(__display)	(DISPLAY_VER(__display) >= 30)
>   #define HAS_DOUBLE_WIDE(__display)	(DISPLAY_VER(__display) < 4)
>   #define HAS_DP20(__display)		((__display)->platform.dg2 || DISPLAY_VER(__display) >= 14)
