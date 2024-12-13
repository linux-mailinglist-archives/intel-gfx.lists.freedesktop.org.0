Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A04A9F0C45
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 13:32:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0474F10E46F;
	Fri, 13 Dec 2024 12:32:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XhICoEEe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5454E10E46F;
 Fri, 13 Dec 2024 12:32:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734093142; x=1765629142;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=swPvy5HhL3CpZwcR6B33eetF9QcXTimAecTrJzfmmQQ=;
 b=XhICoEEeG1ll+4lY8Zkb4fU9+YhVcE6zLKe5GOYJ9AiHlwZ8eUFaxKCl
 all4JFy95bb22un3nOX9iF1Cnn3Ah8Y32YL3ts+fL1+5y4yrXYNnvtvPi
 WUxo2Y1gpZzkl6KYhHifzUzCw90bxu/Q8ZPGmJi4ZclS7rxMDxBSBnMlT
 KGvO/Z2WSAVaXFJzs7LGwFzwy6U2iict1aQBzfeYOJXFiAYAI8X8zmGNX
 9BkMORSeFNIkZL5t6GmvYYSc7ONZ7/88eJrZ5LxNE6JQ1aFNiyQrv9rq+
 Y1WHqoZIrhT6kcoeGU7QQIbgLT09a9mHySO8s3Opp9QvTDd4e2g7pSuTI Q==;
X-CSE-ConnectionGUID: +g6yXCzzSROjq5hK3XlVpA==
X-CSE-MsgGUID: xH1nmI6LTci1O/c/huvu3g==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="45552308"
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="45552308"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 04:32:21 -0800
X-CSE-ConnectionGUID: qIMu/zcOR9Sfs5MC0nb8AA==
X-CSE-MsgGUID: Nw4pmYwlTLW/FWCE/XsODQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,231,1728975600"; d="scan'208";a="101371821"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Dec 2024 04:32:19 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 13 Dec 2024 04:32:19 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 13 Dec 2024 04:32:19 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 13 Dec 2024 04:32:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VAwRD6aaW1HsYgBbwJiqQNIfaETSCCvNxoLafzfx3L6HB2uJ/slf/Avam/4Fr0/YUw5VHKhfRJQj3BklijYUDE/CfTUrt+RBQb9XmOkW7F1Be357GI1sX2CwB2GcYk0ua1IXeArtgdkJUUMGF8AOEx9NpZzYVboTOJkGgQszieyhZcxwcyiAZFZPVwiPb1E/4wqsymm06wi/hduYsTtlaeDGHj5OFBj1663pl/Dclr9D+PpCAaIhH9YDRF24zuCRwrAbG7i6+AV7g2908Qc0fBuBaS4VU1WQ5uzvXojR/2vOJgShaXC2R5Woxnkw6sryxOwbAOOxWdfFVleqWzjjNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y68y6fD30riBACYgQWuAf2CLG8xO9ffxTqzIdZi+kOU=;
 b=yiNw8oJK9PmqTAZopXJC3PJNXZ6GyiQO3wLmEvWlLsPuTK0v04a2bwZwmnp27LTCNtT/U/NVbzCQVNCSLlOSTqo7dkBKnzkhWb8ntKObZInE+HGcXXXsWkN005MzSkQ78lx+upZ8D0ld5RDOG6etRIxrzpVsfNEopeVsLLVUQ6rOteTLS9rLnxDjXFEMutFqrDHRnnQ+mJXFxPWOt19hQtFLqUG5GjuaL6j4GKvyi0GFjwEdzF4oCwFj0CjpXsUpJGZ/6pv5YNVK4UHyn69+xLAqz1kAZqyq5qWJ+mG+HpnLyqhh71Owa3N/Z2jXCWD2ZCJ6w0N5QJWq81yrYg1mcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB4880.namprd11.prod.outlook.com (2603:10b6:a03:2af::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.17; Fri, 13 Dec
 2024 12:32:16 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8251.008; Fri, 13 Dec 2024
 12:32:16 +0000
Message-ID: <0f8fcef2-2f5b-4eee-b30d-a1645a636587@intel.com>
Date: Fri, 13 Dec 2024 18:02:09 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 11/14] drm/i915/dp_mst: Refactor pipe_bpp limits with dsc
 for mst
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <suraj.kandpal@intel.com>,
 <imre.deak@intel.com>
References: <20241204092642.1835807-1-ankit.k.nautiyal@intel.com>
 <20241204092642.1835807-12-ankit.k.nautiyal@intel.com>
 <87cyhvudoc.fsf@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <87cyhvudoc.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0214.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:ea::9) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ0PR11MB4880:EE_
X-MS-Office365-Filtering-Correlation-Id: 5f8d1e40-079e-4caa-791e-08dd1b722d83
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UnRUb2FFbWJCdDVkRHZ5QWtXandyMWhtQmJNSWVnTXdTSVNmNE50WDRHWTFK?=
 =?utf-8?B?Ymx4c0J3K1ZLOWxWa3E0aEhhZWVUT1E4OHhHOUp4ckNHNHYxa2ZVVk5rRW5h?=
 =?utf-8?B?NzRQcEtZQmxJcnA3SGdTWm43RkNwTXRMUG5RRjdXaHFHcm91MWtZR3U2WWpj?=
 =?utf-8?B?cWNVb1kwSDBWNlJtWVZWL3AvTUFBdzFTTU9BMnU5NDlZTGNneEhqYWpRSmlF?=
 =?utf-8?B?SVdZaE5vQ0RWSlVPcGJ1NndzbGZIQXYwdkRvcU81RUxVZFV4NnZWaWlnODRQ?=
 =?utf-8?B?U25mZWtmQThhTmJRaFVaL1lWbDVyU25aVnh5TkswcGVWUEZxM3ZtWldsKy9N?=
 =?utf-8?B?YSsyNk1GMWpNalFicVRndDJBNHNJZXRreEFRbXFsa2dwczlXRGVlSWpWUy9t?=
 =?utf-8?B?cW0yYWIvYVBFYjZiSlNRcktKWG94aXBkMzNwaTZvcVZOR0dxYTRwSFJ3Zzl5?=
 =?utf-8?B?TlRzVW5IOUlBTERqdTZ4RndJSDVaMHYrQ0VPRkVQQzZPYThMcURUVnRPck9o?=
 =?utf-8?B?L1cyUXhEdTdUazZySTVlRjdYQUdqSHVPU05uNUZaNmZ0cGxkWHVtL2RqZysv?=
 =?utf-8?B?eDR5c2sweDkvSUpENE1ldS9KUUFtdFdZVG41LzFJaTdyNFF0Z0F6WUl5dDdL?=
 =?utf-8?B?dXZqK0MrTzRQdXpJWjE3MVZzM3BPZnQ3bG1zUFZwQ3dPZ3hzNkQyeTZld0Nh?=
 =?utf-8?B?MkM2bkZWUm1Pcjhtd3hWQ1NsaVh4QUNGZ3llNkFKOVQxYWZqRG1KeTdCVlJF?=
 =?utf-8?B?aWNWSEY3NllGd2hUV2JRN0V0amdEVDgrYmJNcnFiamN2QUI3SFhFTXl4RlJ6?=
 =?utf-8?B?T2prY2ZHTlQ4OWpZY0xpY1NVT2EyZmhWZDZiNkxYSnAwN3VJS2tYM3ZBZ0s4?=
 =?utf-8?B?ZVZkUFdoZWxiN2Jua052VGhld0NmZ1VtWVZrV3YxbHZBdm5EeUgxWHlTcFpM?=
 =?utf-8?B?OXhwTE9nOVQ2eGZQMTlBUmg2NGZqeUx5NHJPSUtmSU5aVTBRdml2c3A5aWtE?=
 =?utf-8?B?RjQyMU1FbnRJeXY2UU5nWUpGVlJ3V3lwRU55MG0wQmZwcVk1T3pKZ2h6S1hM?=
 =?utf-8?B?NG9wTDJsN2tHZHZaTUQ0Z0x2Q0RObUhIcmhpVVdQWTV5a0d2MW5GVThnWjNR?=
 =?utf-8?B?WUp2MXhDZWVQK0RLVUhhdFVKTm9SdTdjdGFXRzk2ZUNVeWxTRXZPbWVwalli?=
 =?utf-8?B?OHhaeG1HaVFsOVdrVUUrbWhUK0w4OU1mZlpqMnpEYTF4bHQrV1pCMWx1REJm?=
 =?utf-8?B?VXZkUklwRllRcnQycjhJRWs1Vkh6L1NWT1lCODkxdFQvOTFxL0FQa0dxUVBz?=
 =?utf-8?B?RWNTUVZaSkdaVzlFdFduQm5qaXR3YUVJV1ZDakRqMzA3VEFqeTJBbjNsTlNj?=
 =?utf-8?B?Ym1ZSTZQZ0g4dzNvaWFxWkk2YmxDb041OUczL3NUWkdoQnV4bnU5OUdSQ1Az?=
 =?utf-8?B?ZDdHMXQ4L0tVVTdHeC9QQ1NycGpvQXZXZ2lVMXM3SjcrRmhPT2FPKy8wMzN2?=
 =?utf-8?B?eHhqbHNYWVF0b3Y1cnpvSjQzMkZReS94V1YvOERud2NkaTN5RTZXYXI2WXRs?=
 =?utf-8?B?UEJUMlVMZmxPQ1RORDBBd0VxbnJpNGgwOVM0bTlLZkRVcGlLeGdsT3QyT2l0?=
 =?utf-8?B?S21uU01kSVlvb05MUE5ReS9rOG8yRnozSHRqY2E5SXdqdUdLcUsyTWk3VXVT?=
 =?utf-8?B?bWZPTDgydDFHZCt3bmZ0SURuVGhaRXVEQjBtakorZEN6dUlRVTBqSGdrUTh4?=
 =?utf-8?Q?ktDBah+BDkPb/ihXT5EzP42ayxULmkFbjrEIpww?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZWEvNTVMSFNldHBQd3BxdHlXbnpZYWpBYnlpYVdMT0lyNk85ZHh3bHdseDBC?=
 =?utf-8?B?ZS9zM01JUDRLVmI1R0h6WSt5d1BLbjJtd3J4RU5iM0tCY0xSNC9NdnN4VWVG?=
 =?utf-8?B?Ym5FSDVGdGZrekFUaTJhVktjeW1ST2QwcHhxSmgzeFNmbzdPNGNOLytFSGNS?=
 =?utf-8?B?Y3Y4NWtOT0pMMHNJSWdSbnU4Vy9OMW1BZ0ZVdXE1aTJkR3lxNlJaRCtpZ2Zw?=
 =?utf-8?B?am85SzJySDkwZTY5MTd2WFpjbGg1WnlKNi8xbHFWS25MSU45Ukg4UnQwZ05C?=
 =?utf-8?B?NDY1c0hPM28vRXFtdGduaFV3Z0xTUnJUc3NCQ0hPQ29xcXVRTVZvSk1taWJ3?=
 =?utf-8?B?ckF6akZMbTJQUHJmellyUEZKbmFrOE5odXo1UytXOHhScEZNZ1J4enZOcjM2?=
 =?utf-8?B?UHBXY1E3MDlpOXA5WmRKTkxFSFdWeERnUlAvVVhFM3RnaDdXY0o3QUJ2YmtL?=
 =?utf-8?B?V1pRVFkwM0hBajdVSnV6cVhaQy9xRUhFVnZVaDJKU2VsLzMwclFUNjg2SkNC?=
 =?utf-8?B?Lzl0bXl3US9iSnc1aHZuNXdYNlpBSDlXcmRBdEtEREJIbkRMYlh1NldxVEdS?=
 =?utf-8?B?bmZ1UnJYenhlK1pVbEs5YkVuUS9rakZKT3dUaCt6SnBpUkVkWTBDQTZ1UkVq?=
 =?utf-8?B?Qnl2SmtDZHdOTmlobEJweFRZY1NXQmhhME95ZVBKT3BWVlF3SVRPSGZ4WUE3?=
 =?utf-8?B?M2dnWE5qWHZqNWwwdCtFWVZ4Z3pYV2ZDSVdZMGo2TENTMG1iZFZUUnNQNWlL?=
 =?utf-8?B?V2Y3UjRBaEtNTTFlUlc3ZTJ1S1lBQ3M4L200VTVOcEw3S2V3R0gyMmsyUHJO?=
 =?utf-8?B?bTJJL3h4TlFneCt2OWVmZDhpN2JGM0tVQlo2VnVQNGJqeEwyQjhyaVlJOEYv?=
 =?utf-8?B?OFllZmJseWpFcldLbXNWdS9LdjAzMFJpb1k4d1A2TTdMbTNtTFNDdmFyM09I?=
 =?utf-8?B?YkpySFNpNVlKd1AwS00veEdZSjlscCsyK2YzL0ZXbHg4YXlpWm1pS2N4T1dr?=
 =?utf-8?B?S3Q2STJJYm9vZ2xrNHdNN2dRcTBFN0Q5OUFSQWVXaUVQdDg0OTZzZXIyK2FM?=
 =?utf-8?B?M2I3NzJjUTV6eWU1aVRmS0d2M2FLanVlb2p1d2owb1k1d0FJUVNnN1pnNTI1?=
 =?utf-8?B?b2srcUkrcW5aWnBjQXVsR3dDVVRySkM3NXZtTDZVNjFpNldWa0cwRnd1OVNm?=
 =?utf-8?B?WFlhZXhQNGxGcGxWS3J2QXhVdUJiMDViSnZaL3QyMCs0MEFTQTN4Mm9ZMXhV?=
 =?utf-8?B?QmJSdm5hWlRzZ2cwY0t2OWJVR3FBL0ZOSE5GV0I0K0lWTmVRMEE3MlJWN3g1?=
 =?utf-8?B?SFZzL1cvMDJiaG5OM0t2MWs3NWk1UnUwOVY0a2pGRE5LZmo2Qzc1blZVeHV3?=
 =?utf-8?B?ZVgxTkxkRkkwZk45UlVIdTR6S2ZwdkdnSUI5bkZDMGxrL2NpMS96NnVhTVFZ?=
 =?utf-8?B?c0tNamszM3pZKzErU0VBZGgwR3pBN092dklJRVNZZ1AzZjhUWkxZTG9PZndk?=
 =?utf-8?B?SE1qMFJUcGlGTnVPd2d4dGFPZmlxQkNYNHNEdkwwNzFMblA1MVhMU3F4bFJw?=
 =?utf-8?B?ZEkwWkthczBISFZ5TUFqQ2d0LzgyUGNuRlNWV3Y5SkVBd3FMNjBCUXRzaXdG?=
 =?utf-8?B?MTdMUkZ6dGhPK2JxWnBnZWw5NzRXZzFkY2tPdHdFUzVNZnZmc0MrYitVdEN5?=
 =?utf-8?B?WVF3RFdZN2RrbXJXb0ZkZE5wamdvTmdzQkY2VmFtUk9pa1Mwbzc2N1JZTXpV?=
 =?utf-8?B?eE1GQkJBMFQxL1JqeGszSmpXUkYzaUE0aHRXZmNIaXkxY1RFNytlQU1DUGR1?=
 =?utf-8?B?L0Y2VEc1L2FweEZXV2xlNDh5THFvTUc1WGN2TVBud0NoMU5ocjFCNytaUDVO?=
 =?utf-8?B?THltdHJ0RzlDeU9TUGhHNG9MR0I0d1pmQTZjZFpNcjgzRldvbnlyOElGd3Ba?=
 =?utf-8?B?aklGZ0hSVGRQdjJEZzlERGRjc3p5K3pJUmJwVDlIT0JVcnZHNHJDVU1VSTMx?=
 =?utf-8?B?Z05PM0NDSGxWWnZ4SFY3OVg3RXkyaFhkVkw2UUk3dVNocU00aVpkbG5Eemxz?=
 =?utf-8?B?cFFSaW9iNm5hZHgrREZiT3lkZ2ZGTlovRExXczBBK2NRRkFJUitvUW9QN1dB?=
 =?utf-8?B?aTVMVm1XWDlmYVhzSnBUYVRFdkMzaW1nU01mS0thL2d4aThMVDhQMWJlOFc5?=
 =?utf-8?B?cVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f8d1e40-079e-4caa-791e-08dd1b722d83
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Dec 2024 12:32:16.4966 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jy3wUH4HGVYVrRb3l2yK515irTiKhvLwbNkgl5vktrDSkuEEfRB7JbJYevn2FIu6gQVFMfzPvfdJD09p9CD51aAhhkTotVh1Efe+lCiHIRo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4880
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


On 12/13/2024 3:07 PM, Jani Nikula wrote:
> On Wed, 04 Dec 2024, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> Similar to DP, set the dsc limits->pipe.max/min_bpp early for MST too.
>> Use the limits while computing the compressed bpp.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
> I think we should take this one step further with [1], basically
> eradicating mst_stream_compute_config_limits(). Indeed, I'd like to get
> that merged first.

Makes sense, will wait for the above to get merged.

Thanks & Regards,

Ankit

>
> BR,
> Jani.
>
>
>
> [1] https://lore.kernel.org/r/20241211144310.701895-1-jani.nikula@intel.com
>
>
>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c     |  2 +-
>>   drivers/gpu/drm/i915/display/intel_dp.h     |  3 +++
>>   drivers/gpu/drm/i915/display/intel_dp_mst.c | 11 +++++------
>>   3 files changed, 9 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index fe0957e028bc..c5740b8d2315 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -2504,7 +2504,7 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
>>   	return true;
>>   }
>>   
>> -static void
>> +void
>>   intel_dp_dsc_compute_pipe_bpp_limits(struct intel_dp *intel_dp,
>>   				     struct link_config_limits *limits)
>>   {
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
>> index 4895b52d41e8..45b37d322565 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.h
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
>> @@ -200,6 +200,9 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
>>   					const struct intel_crtc_state *crtc_state,
>>   					bool dsc,
>>   					struct link_config_limits *limits);
>> +void
>> +intel_dp_dsc_compute_pipe_bpp_limits(struct intel_dp *intel_dp,
>> +				     struct link_config_limits *limits);
>>   
>>   void intel_dp_get_dsc_sink_cap(u8 dpcd_rev, struct intel_connector *connector);
>>   bool intel_dp_has_gamut_metadata_dip(struct intel_encoder *encoder);
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> index 795594191717..667006918bfd 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> @@ -365,14 +365,10 @@ static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
>>   	int i, num_bpc;
>>   	u8 dsc_bpc[3] = {};
>>   	int min_bpp, max_bpp, sink_min_bpp, sink_max_bpp;
>> -	int dsc_max_bpc, dsc_min_bpc;
>>   	int min_compressed_bpp, max_compressed_bpp;
>>   
>> -	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(display);
>> -	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc();
>> -
>> -	max_bpp = min(dsc_max_bpc * 3, limits->pipe.max_bpp);
>> -	min_bpp = max(dsc_min_bpc * 3, limits->pipe.min_bpp);
>> +	max_bpp = limits->pipe.max_bpp;
>> +	min_bpp = limits->pipe.min_bpp;
>>   
>>   	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(connector->dp.dsc_dpcd,
>>   						       dsc_bpc);
>> @@ -574,6 +570,9 @@ mst_stream_compute_config_limits(struct intel_dp *intel_dp,
>>   
>>   	intel_dp_test_compute_config(intel_dp, crtc_state, limits);
>>   
>> +	if (dsc)
>> +		intel_dp_dsc_compute_pipe_bpp_limits(intel_dp, limits);
>> +
>>   	if (!intel_dp_compute_config_link_bpp_limits(intel_dp,
>>   						     crtc_state,
>>   						     dsc,
