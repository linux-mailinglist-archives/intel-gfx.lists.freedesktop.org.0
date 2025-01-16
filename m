Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0665A13223
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 05:51:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61EC110E8A3;
	Thu, 16 Jan 2025 04:51:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GAhnnml2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C500210E8A3;
 Thu, 16 Jan 2025 04:51:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737003098; x=1768539098;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=5swF4yYZSlouFXVB5BVwH41hTFX4z4aNOp82Nocz/g4=;
 b=GAhnnml2a7IPHRHecI7rgo1q5RQ6+4B/1HnmDaCxQORXLxYTzK2D64Fh
 0DyMDdS15Z7tXahsAv7j2G32ixWkhJL06TcxK+sn3cWQbuRe9fF1At2sJ
 XiM76RerSFj3mIqxjn+Vi70SqfZPyAQBmsA/NOLAmoQz8U9TSwnF094lL
 ft8bNpEEvTWStAxoccKgrqrKpjh9FRdlVa68K6fwWog5rOunAG1gt8AV5
 z86KoCIMzzLkWBtbl0Wx39CeF0ycHHUQtpsUT4DJ2Kk93eRdwci7vLdWK
 sSuqbpWK8qBL2/ZRJBUjv4PP+jkQ5s9yWzjyPiyGrD1eDp1bWa1CgqJaX w==;
X-CSE-ConnectionGUID: 1U2nRYtkTPqGJ+gupSL8vA==
X-CSE-MsgGUID: SucMy1RLRwuQXRR/4WL7hg==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="37486225"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="37486225"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2025 20:51:38 -0800
X-CSE-ConnectionGUID: tBlfexW/RLiwFRmBcsXVrg==
X-CSE-MsgGUID: TFMBYIx2RPOsT1LVfpGIXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,208,1732608000"; d="scan'208";a="105952525"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Jan 2025 20:51:38 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 15 Jan 2025 20:51:36 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 15 Jan 2025 20:51:36 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 15 Jan 2025 20:51:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qnEfbvwD4a+ZBNziZQIz84/51mGD9UoXuMBy/5SXReuu6TH3gSiakgiHBpEGr2y7SSy1m7bYa/c/f4Pwy8FXaqZ0gol2Dq2o1LT0NQYrT/r2IxHO+XvLDNtU4QXzytGBfmLt8MbYlSQc33IYeXopq4XY/t1rIXpa+rMiDNxEpjv2iUY5jm5zjFAmwQZ2BJ1+iSDnBu3IiVGLtBBvfck0LNZ/rXXhpj2YSfgiuY6yf5ujTdzwNbbq7eRUr7naOZZURPcAp6jKbtBzNLK63gbJ62Xfqky3fmVZpSqMQsJ90K4/0BBkItAtiKRWYtJf32aMy+Wr+iwVvg9gGhCWwH0BGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0l48AAZMBf2B4P17fqJPr9dyMO8sipps5ZX+hmRYGUk=;
 b=Ozg8AhA763SxPLt/cXJT/AzNBuK9zDTx2gBSzRUJjppAbTMOyprtgf4NBHdmmD96MqlCGwg5lVRT1aFQrySVPHvksYct1DHE0L4fXoGeFgKi5EyNffkqua1D6zNbiYRIsLck5B849FjmetOxqGS5HYV4SEjylkFKhX59qzhRzrSkLjH6tAc1jfadvCM6veXQPEys6DIgjKwMZIx6om1CRjwufhHK5Q9GJ6FyvLWe0xyVqB8Aal0NvBQXW5pljogKgg48YlyEObkSZhkKcD6jVXEIPTZo44FherwYq9XrDrb++i3xy/bK94vNl0tyQiAu4s0PVgDub/7+EeHmNTotNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM4PR11MB6167.namprd11.prod.outlook.com (2603:10b6:8:ac::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.13; Thu, 16 Jan
 2025 04:51:29 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%5]) with mapi id 15.20.8356.010; Thu, 16 Jan 2025
 04:51:29 +0000
Message-ID: <27478e22-ecd6-40ab-9f12-36ae4a9347ab@intel.com>
Date: Thu, 16 Jan 2025 10:21:22 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: drm/i915/display: HDMI C10 PLL entry for 265250 MHz
To: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Taylor, 
 Clinton A" <clinton.a.taylor@intel.com>, "ddavenport@google.com"
 <ddavenport@google.com>
References: <20250115230859.2410966-1-clinton.a.taylor@intel.com>
 <ba160c734f0bd0d5d9fafe639465ab61a5302ec6.camel@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ba160c734f0bd0d5d9fafe639465ab61a5302ec6.camel@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PNYP287CA0035.INDP287.PROD.OUTLOOK.COM
 (2603:1096:c01:23e::8) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM4PR11MB6167:EE_
X-MS-Office365-Filtering-Correlation-Id: 5ba16bf3-0ca3-4b87-b424-08dd35e97080
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MXFtYjZqT1VRTmVtVzQ4QzAvUHlKVW8rdi9aSmNsV3FFNmNxMWJJM1ZrQXZt?=
 =?utf-8?B?U2ZOdW9WbHRzbWJZY2UzcmhJVmF6dm00T0FhWGE4blRJNE1UMXBlZDRSUWIr?=
 =?utf-8?B?UktLbjJhWC94VE0ybVBSei9QZ2VrVUNSWEVkQ1dCL0sxVENzd2J3YVhSR05l?=
 =?utf-8?B?ZHFOcEZWVkIwL2dUUzZHMFJsWlBBUzZIVGFWaUdwQ3o3QVhrNitidXFrOXls?=
 =?utf-8?B?MmxlVkxYQk5WRWlxRy9PWlpPeGxxdXVMU1BUbUxnNVU4dkZucGVYZzVtcU0w?=
 =?utf-8?B?bU5zZXVEZmovUmI0bGFyZUJtUVp3S0RKcHRzUlRhRnVXRHB6bDk0VTlaYmY5?=
 =?utf-8?B?cllSRHVpUnVGcjliaGQvN1RsQ2VuWHNnWXdUN2NIUytWNmo3MnJoTm5WbVRP?=
 =?utf-8?B?d1M1aGdiend1NEt2MktlSTQ5aTlnZElVUGllWnpzMHBMQ0ZaQXlCSlVqYllk?=
 =?utf-8?B?dFNLZEpvR2dqM2RCK2VFMkZ0SzVad0w1ZGJTbVorYWZpU09VM1U2M2ZKODcv?=
 =?utf-8?B?SmRiT3cyenFxTVBrMzZWenh0bzdBSGxWQm90QXhjR2RsTUYwem41T0xJUWhT?=
 =?utf-8?B?aTZMaGF2SzVkWGQ5eVBXM3YwNU9Rb2ppazhyM3N3VU02VHpkcEp3U0VRRnNh?=
 =?utf-8?B?VWdEVnQvUTc0T0p3WURwUUpsakpFcVJQOTZpUFJVa3l1ZFFtcEY0MGVERTU5?=
 =?utf-8?B?ZGR1cUdMaGJ1RWc4dHdKU2VjckowQ0k0NkUybGwrbUtVNHhZcFkreXhrd2Fl?=
 =?utf-8?B?L1VEbTVzQnMxVFhYSk1pbmRuRkkvMXNvVlVwS3NYS0orVGxaMjJyOWRsRits?=
 =?utf-8?B?WjlXMGk4ZEU4LzliRnd6cFdORDk5OWI5Z2NXZ25kckRFVUxqdWtSU2pPK29L?=
 =?utf-8?B?ZjhLWXNiR0I0ZjFUSGRoKzY3Wm9ZNmw1ZW5VUXhtTWJlSTkrcGZzYVl6eFdE?=
 =?utf-8?B?ZllYUWpiUzJwWXRiOWVXd1QyZlhtamlzMnppMHdMMStlMU1RZmd0dng5amt2?=
 =?utf-8?B?cDdrSFA0Y3VRSGxMYTdKS0wrbkRraFU0Vmdsbk95WGowbG9XTGhUcFUvY2sx?=
 =?utf-8?B?cDYxUHc3UktJNkRVS3BtOEVreWZlNkEwWVdSV2pzWlBMdExPRXArT0VkNkxp?=
 =?utf-8?B?YjJDY04wT3NxRjJ3eWgzWXhlOGxKUjFuU0Vxa2t2Y1FWaFk2TnFYek80bFdp?=
 =?utf-8?B?TDlaOUtSNmtjd3JHZ0kzdWxheHJwWVErNkNaWnduQ0R3eStTaHNha2QwNzZV?=
 =?utf-8?B?VUs4R2JXZCtGN2ErSkxiRGFBanpLVFY3QlNNYXl1eU91MG8wbXFhMjlOREEv?=
 =?utf-8?B?a0xCWWhZWDhhclNHeW9VeW1kclE2TkFVMVlSeHJpUFVZYWEzWmVlT3Jzdlox?=
 =?utf-8?B?Y2V4QkN2anZwakl1VWJ3RDR1WEdOUWM0d0F1ZnBSR3MxZHh1c0xYeFE4cTBH?=
 =?utf-8?B?R1FEOUh4RmFWamdDSlNJNmFQS3dHZDJJckl5VG11SlRqZmc3eGhJTHVUd2Iv?=
 =?utf-8?B?a09wTXNIemtOTWRVbGIvdHVIcG8zdTdIQWdWNFBHY3lZS29KeC83eC9OUnFn?=
 =?utf-8?B?OTk1WThOM042d3lzSkRjZ2kwanJZbkRGWjNjazlsZnA4MVRHSkpPU1BOaE54?=
 =?utf-8?B?ZFNJbFJFM1lnQzIwTnRiVDNQT25vZEtrQ25rSkJaeU9aL1dubllQTTArMjJw?=
 =?utf-8?B?aTRkWGRIaThUUjcxQ2RHekZDckZoS3VjZC9YUDBONXRhVkh4UW16Q1RWTm9Q?=
 =?utf-8?B?OHJvV3B5elhteklpSTB3YXRZZVNqYmdPM2FYZCtCSGFMMEVEL01QMkVIOEh0?=
 =?utf-8?B?aHN0bW9vNmptRk8wZjhBZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d2djZG41MUd5Wk1ZSUttTGJycFhPelpRd1p1UGNlKzJXLzVmQWR4ejZWRWlQ?=
 =?utf-8?B?NkNvNzJWQmJiRGFKMll5T2gyT21PdUJaU3JRYnBoeU5oY2o4WFgzTms0QWR1?=
 =?utf-8?B?SUsyR0p6SjNXZkJ6VjBQVTE2dmljSUkrT0dFTEdDREkwdDJxeGkwdkVFNGM3?=
 =?utf-8?B?Ykt5VzlvNDJTbStuaVNsZWYrbWQvWUFqellBTnZFZW0ycDNKV0xnSUtpbjFa?=
 =?utf-8?B?dEVVbHNqN0hPa3JqWkdCb1BJa2RXU2o4NDZkWVc1WEptVnJmZTAvckEvWllT?=
 =?utf-8?B?NFRtUm5KMVNON0R3eWlyOHFRTUprL2VxUmJzZk5mVURta2xyd1lIKytPbE1h?=
 =?utf-8?B?dHIzTjNCbFQvL3JKY3pHOWk3SHlYM1ZKMllCaXdSL0lIZEY2SmVtMmJKTVBk?=
 =?utf-8?B?KzZpRDVsZ1pUZ0ppZnZrVTk1U3ZYOXdyVy8zY3dTWW5LUnNIcnVJU3dPbWlN?=
 =?utf-8?B?WEtaRElBOFlMc0ZIVDFxaTN3dSt4bTQ3Tmh3SUNpWjRqN0M3T2FSSTltcHk2?=
 =?utf-8?B?QzhnUlFZTlpJSW5XdFZlSitSS1hFcngxWHRpVVZUOEZqcXJFT3BibGxYOERB?=
 =?utf-8?B?WW5mQ3RYc0ROc3RGQnZ5VFR1WkYxelNpelMwR2M2NFBTS29YaWZyb2NzVmFo?=
 =?utf-8?B?S1F2UjlmZUd1Z0NZSkE4NUkwREJ4N3M3NlI0N2tMaWhzYmZHenFkaVRJc1Jy?=
 =?utf-8?B?b3NtMU5oT0FlY09ySm9KdmRjLzdBYlF4VEUxcitCUTl6WmRaU2FOa1YrZlNI?=
 =?utf-8?B?Yi9uUTVrbGozK2JlYWlxQkJCcEFSS2YyMWpONXpWWG01d0wvRHVWZk0yazNU?=
 =?utf-8?B?Z1VISStvZGd1ZFBzVExXc2MycHJQVUZqUjl5dTNDQVRDcXA0MGxmRld3dlZ2?=
 =?utf-8?B?aENsdHlCRkNveTFCM29GcU0zV2RrUWdrbk96Mkd2dFBleHV2aFh0SU9mRE5z?=
 =?utf-8?B?b2hkZnFVVDJucHlUa2VJN3Q4M0U2TjR1YU1HZlVJencwNWdLVTc1SElQZVhF?=
 =?utf-8?B?NVBFaklpMVliaFdXVzc4bWh4Q1RTTGI0cmEyRFBsamZnNkhoSzIvRW1RVUlS?=
 =?utf-8?B?ZUw5bGRNRWhVWTJPY0R4dFA4bS8rR2UvUWU0Q1JwaVhUQnFlOHpQeW5tUE1F?=
 =?utf-8?B?SzdpSFNyMHZXQ01sdTN4Z3U5Z2V6UWFpV1gzSGE2K0lZTWRLaWlPYko3ckJ5?=
 =?utf-8?B?Z2d5VkpxV2svUVczdytJcHJSWnhmclBZS1RhK1loOUNUejhEMjA0Y2FoWG1a?=
 =?utf-8?B?N1Vrd2E1Vkpsa28vV3BHZTIyWkwrNXpJeTc0T2lkWTUybGtYZWl4Zmx1ZEVM?=
 =?utf-8?B?clJSamZscDJOWlQ5aXNhazJXSHE2LzE0cTQrQzlISituQmJ2Z2Z1bGM5MjJW?=
 =?utf-8?B?d3R4NjNpVnFhQTBSNzJab3QzNUtQN1gxTm0wcnJTL1RjcDllaGMwWlQyRFpD?=
 =?utf-8?B?aS9RcHZES1Vic3h1bnVNMzF5bnpOL0VPUVJtOG5yTXBWS28wY2xTdWk0M3Q0?=
 =?utf-8?B?d09BSExhL1EvbURaM1JvR3plQnhHSGNHZ1FjZndLenJLckFKUnNqRVkwb2Zp?=
 =?utf-8?B?aTRTZHN2eUI2MWVQNnRIOTlidnRHMWNGc2tmNytmc1F1VndIVjdLUEJ2cmJ0?=
 =?utf-8?B?U1ZSTE1Rc003eWcyVmtSOG9vTmdJckxjN1hIK2VwbFkxUERLVmcxMzNneW1s?=
 =?utf-8?B?Njd0dkhudWZrWDZzb0I5OFBORHphYlhSS2l4emU4U0VEcW1tODVqWkJjVXgz?=
 =?utf-8?B?eGJKZUVDWGp6VlBPcnM0alhHbU5oRUkzbFQ1YXo2SmU2S2FKOEZFcmZEbTI1?=
 =?utf-8?B?VXhqYnoydXhKVUNYa0RxQ3c0N2swSVNqUjFycnFvRWtsSXVIbDE3Skw2SHJJ?=
 =?utf-8?B?anc0WGZNU05oaVFVaXlpci9mdDB5MnFZNzM0dkhRdlROMjN6ZWg0RmJzcERq?=
 =?utf-8?B?R0FGWnd1RWtGSkxGdjRUY2Jhd0s1cjF1eGJpc09zak5WZjg4WTFoWVJ3b3JL?=
 =?utf-8?B?WnpFMWN6akJRalVaQUhYTURjU2JPSFRtNGNoVUhNSWlCNlVqd0REcEl3dUhQ?=
 =?utf-8?B?SzJOQkFQcDNnUy8rWlpXb043T0UwaG5rS1A3YjdvdkFOdzhYNG5KdzU3Vm1E?=
 =?utf-8?B?Nk5MYy91MlNuZ3UxTk54Vm1xQ00waitab21BSTBLVUFEKzVGdFZmRW4vRTZo?=
 =?utf-8?B?Q0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ba16bf3-0ca3-4b87-b424-08dd35e97080
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jan 2025 04:51:29.0922 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: U/meMgXPcLMFnvXg0JjyW8Sv93X/fjzJ4xjoBcEjIGUmIdccycvu3LbPl7J8ZDhKsd0VPaBj2bcJ5FXA/C1bfVIsPOPUlE3SAMz8wN3EmVw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6167
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


On 1/16/2025 5:11 AM, Almahallawy, Khaled wrote:
> Thank You for the patch
>
> Without this patch on monitors that support this mode like Acer x34 and
> LG 34GS95QE. this resolution is rejected as follow:
>
> [drm:drm_mode_prune_invalid] Rejected mode: "3440x1440": 50 265250 3440
> 3488 3520 3600 1440 1443 1453 1474 0x48 0x9 (CLOCK_RANGE)

There indeed are a lot of such issues and we are trying to avoid adding 
more tables and instead trying to get the HDMI PLL algorithm in the 
driver [1].

These are under review, it will be great if the series can be tried out.

[1] https://patchwork.freedesktop.org/series/135397/


Regards,

Ankit

>
> With this patch, we are able to drive this resolution and pixel clock:
>
>   pipe mode: "3440x1440": 50 265250 3440 3488 3520 3600 1440 1443 1453
> 1474 0x40 0x9
>
> Tested-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
>
> On Wed, 2025-01-15 at 15:08 -0800, Clint Taylor wrote:
>> Add PLL values for 265.250MHz pixel clock to support recent 3440x1440
>> monitors.
>>
>> Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_cx0_phy.c | 11 +++++++++++
>>   1 file changed, 11 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> index e768dc6a15b3..c5ea8202a455 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> @@ -1620,6 +1620,16 @@ static const struct intel_c10pll_state
>> mtl_c10_hdmi_262750 = {
>>   	.pll[15] = 0x09, .pll[16] = 0x09, .pll[17] = 0xCF, .pll[18]
>> = 0x84, .pll[19] = 0x23,
>>   };
>>   
>> +static const struct intel_c10pll_state mtl_c10_hdmi_265250 = {
>> +	.clock = 265250,
>> +	.tx = 0x10,
>> +	.cmn = 0x1,
>> +	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x6A, .pll[3] =
>> 0x00, .pll[4] = 0x00,
>> +	.pll[5] = 0x00, .pll[6] = 0x00, .pll[7] = 0x00, .pll[8] =
>> 0x20, .pll[9] = 0xFF,
>> +	.pll[10] = 0xFF, .pll[11] = 0x55, .pll[12] = 0x13, .pll[13]
>> = 0x55, .pll[14] = 0x55,
>> +	.pll[15] = 0x09, .pll[16] = 0x08, .pll[17] = 0x0F, .pll[18]
>> = 0x85, .pll[19] = 0x23,
>> +};
>> +
>>   static const struct intel_c10pll_state mtl_c10_hdmi_268500 = {
>>   	.clock = 268500,
>>   	.tx = 0x10,
>> @@ -1728,6 +1738,7 @@ static const struct intel_c10pll_state * const
>> mtl_c10_hdmi_tables[] = {
>>   	&mtl_c10_hdmi_209800,
>>   	&mtl_c10_hdmi_241500,
>>   	&mtl_c10_hdmi_262750,
>> +	&mtl_c10_hdmi_265250,
>>   	&mtl_c10_hdmi_268500,
>>   	&mtl_c10_hdmi_296703,
>>   	&mtl_c10_hdmi_297000,
