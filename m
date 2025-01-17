Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27E71A148B9
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2025 05:11:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2870010EA3C;
	Fri, 17 Jan 2025 04:11:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YWLThP5Q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7176510EA35;
 Fri, 17 Jan 2025 04:11:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737087096; x=1768623096;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=8x3KHhDrjviJQob/5WoThx++YLcnAamPmdnWShTOmXQ=;
 b=YWLThP5QkhmLcZPgl2kE5Chhw1yUmxRbjSYVMYo9+t0KZJO4kJJez8K+
 +IDfXeI6bUJUUq7sCvd/YA7nEbm7JI58b8ehkixH53VbSlS3xxzrIcNtJ
 KBMi2Kk6JIfPW7Zbv241ZeEx7qijZBeGebuMja8GGdrcBkAzriIDRYH42
 JqgMJy8xNzzdRiDocHfWlH99jaYgeseopB2jmhrJUr5jgQEnS5XQqKl5F
 0fdXSriscm6cgn0H2P+jxkjvU20Lqb+6xhDOBifSlEm49HruT4pTsIMIz
 oDEeB8Uy8g2lrLgYJ7yX2H0AFBQJ0J0RFB9NbeDslWA47Jr8KA3uPpLq+ w==;
X-CSE-ConnectionGUID: /IZ0v+cyRWefbkUZD+AdSg==
X-CSE-MsgGUID: Yirg5TzhTVyKe3pfnK2VHw==
X-IronPort-AV: E=McAfee;i="6700,10204,11317"; a="41271484"
X-IronPort-AV: E=Sophos;i="6.13,211,1732608000"; d="scan'208";a="41271484"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 20:11:36 -0800
X-CSE-ConnectionGUID: FFwaLcSKQied0ZNqEfc5dw==
X-CSE-MsgGUID: dLv31HmJSIeyjNMx2A1RnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,211,1732608000"; d="scan'208";a="105655382"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Jan 2025 20:11:35 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 16 Jan 2025 20:11:35 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 16 Jan 2025 20:11:35 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 16 Jan 2025 20:11:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FycAz4+fJJbn55a6JjxoeWMbRhVCKnYVZl1T/PgRkDtpSjwyg+jnU25XF0Ufoqoqvch9hgqoKpteokhKaeabwgn3JTUqx3Xclj1C7xXKX/P5mYI3V14OFYDZjrHpsuOND3k1DrDhBKkzTKckH+dqNOMEdGkDMjVsjENX5lCFMXUuQiN6ywHe4165kWrFapRPJB3iD0OBihKtqgT7D7zDY5Ra4Vc2M0lnBT8rFlBfP2ExGCI1QbGfu+u7zJ1CoX3FhWSl+I74ydg+l9QVES8CWh/NLRVUgtot5a5tljfTviZSIHMIo1xpCmErJ90Wj/hBTyTGoEk8okbFlAD9X0wNHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rbxiucuwOIeSDX1HKLjsdsAlsigKGoJ4Iwf1lUMWxcI=;
 b=GuQp5urPuJ/TmjeNWkN8ltCkerMGQLhVdyKgMLE8I0UqiZFOK2pszSVIGrpc+mUV3zzFSwO72G/Uxwn+Nl6N6SIB0diFZMA6/npQc/PfMgX4EFt6bxSi/FSwF90LBjj6pT+yZ3ciAjC1MoRJH08SfSoZxflcx+rNBH4T6fjlfIlHuGsS1uAJfLuywuzevG7/9FLQSccZsqKQxeyAu6yGA86I8NP3+3qGsxZFf3wHsYufAczfMDZg0GWbRSn7gcOI4nUd79zJ/lMVd4+A103m0UGk9gc6/XzRzP4lTwGU6511D8YdL6jHwaqfLHk7niC//9sxXJLLihRffi7Uu+2NgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5332.namprd11.prod.outlook.com (2603:10b6:610:bf::17)
 by PH8PR11MB6611.namprd11.prod.outlook.com (2603:10b6:510:1ce::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.13; Fri, 17 Jan
 2025 04:10:52 +0000
Received: from CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::b398:8ab5:cd4b:a2ff]) by CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::b398:8ab5:cd4b:a2ff%2]) with mapi id 15.20.8356.014; Fri, 17 Jan 2025
 04:10:52 +0000
Message-ID: <969c38ce-3dcd-430d-a8f2-85b73540ce6f@intel.com>
Date: Fri, 17 Jan 2025 09:40:45 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/hdcp: Fix Repeater authentication during
 topology change
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
References: <20241217083723.2883317-1-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20241217083723.2883317-1-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0171.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:26::26) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB5332:EE_|PH8PR11MB6611:EE_
X-MS-Office365-Filtering-Correlation-Id: 3313d39e-0905-434f-8254-08dd36acee86
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UmtlaC9mMnRHdG0zUmFqZjZlV1dDZENPemJyMjA2T3BtazVxa2NzK2Z0LzJh?=
 =?utf-8?B?SC9Qd2srbUZSS29mUk12ZTlQUFdIT0RxU0xweXd2UW4rVnVlYmFqenVwcjIv?=
 =?utf-8?B?bkt2QmxDVnkwSlMrRmxvNmRlMFBLS1ZqSlM4WlNPZ3hMVnJzdHFETlc5RWR4?=
 =?utf-8?B?eFVBMGRGdFJmN0FDdzJBOHk1d3h2K1BQQkNHTEtRaVM3VUQwcmh2bjNicU0r?=
 =?utf-8?B?L0FpOVhobTFuRGt4aVBWamlyU0NBb2NwemcvU25ZVFhNV0x4OEhjOFhxZmNM?=
 =?utf-8?B?QlJiNFZ1ZnlKSms3b05jcURSMkdvL0I2bkNzcnhKdWprWG9na1RETXJXT2xV?=
 =?utf-8?B?NHFIQmhRbnVlWUhWL0Zobmh4c3Z6d1NZRnh5b0lFUVFiTlk3ajgwUDlzQ0pT?=
 =?utf-8?B?QUtDVmUxalQ0bTlhSWpnaENpWFQyS0Q0Y0pWQzVTMTdqS0g2cGpNZkUzYTdi?=
 =?utf-8?B?aXkzVktneFh4TElFMCtJR3RuQUlmTDdyQm50YzNwbk8wZTJQNWlGa0p2NHlI?=
 =?utf-8?B?aGhNUy9GaWlyRnN4L1FRRTZyU0ZCMEhrVzNrcXJjeFJ2SW11Q3hLbXdacjM3?=
 =?utf-8?B?NGN1VGlDbVpGRE83ZVphNFNhN08wQjdRQXdOZzFQZTQwRXM1RjlqM0xGVktl?=
 =?utf-8?B?TWxSdUttbHJqZWl1azE2aFBpOGhZR2JSc095YWxJa25USUN3S2JMVnIzQkJ2?=
 =?utf-8?B?QTRzZUNYRml6aVdISE4vZXZ4WEVEYXFxMzB0d1hYQXRLcXBDUzJIVDJxVTJC?=
 =?utf-8?B?eEdNVmJ0bkVEQzZySmZoNStIS3JDSC9FblpmUW9uNGd2ZExyRDZsb3VISHFO?=
 =?utf-8?B?OEpJcmo5MnhuTTFxWm05dTlQdDA4Rlh2bzBNUmpwOXd2TXQweGVHMm1vTjVz?=
 =?utf-8?B?N3dEd29VVHJvTUZpUDBvZUV6am0xMTZYS0pDQVdDMzZLRlNzTDZCNWJkOTU3?=
 =?utf-8?B?TTg1cVIrRkREQVQrSXdERlppcDdCOEpYcWlkVGNCQk9TWXVPTjBDZGtHdVlh?=
 =?utf-8?B?ZytYUlgzQlRQOUpkbXhjbDRrZGVTb0ZNN2ZKc3hmTE5RNDRtZWloWjdBL2xG?=
 =?utf-8?B?azNvNVVSeWowemFiQ2tYVTZIVG52bjVYeldHVUM0WnM4UWtBdHdsc2M4RHND?=
 =?utf-8?B?YnFMcjYvVEZKV2VjWXA2QVFaaHovUGJ1WnFVQkdQVFpiUHVOQ0xYWkw4UHds?=
 =?utf-8?B?TnRZQWNxTVlLOFNneDR1bXpMeDFQLzBqVUU0bkNOTWZZbWRIMTVoWGxkV0ND?=
 =?utf-8?B?OHJSbFlvWWM4SEZnMDB3UE43d2ZYN0o3K3VuUTZIek1oeElaN3liSURRb09Y?=
 =?utf-8?B?aERoYkh6MUx5YkFXdERRSnFmRitUSG1OQ2dVak95emU0RGFMZUE5NWN4WWpY?=
 =?utf-8?B?WVJNaGdZY3dnRVV4Tk1BRzFtZTFoV09JL3BjZ1M1V2lTUXYwLzF4OHhnSmpv?=
 =?utf-8?B?cHozVW92V0h5U3Y5QWxSajlMb0xyTVo4L1RvZ3NpK3NxeTZlUXRSVTcyeVRQ?=
 =?utf-8?B?RjRtNGVlVVVFbzBiNXE5bXdNOFRBVDBzMDA4T1pWWC9aeit4UnY2emhKdFZz?=
 =?utf-8?B?L1ZxR0R1cjUrNi9sVmhJR3JhcHNRKzhMa2NMWVpld05GM25hZEUyakIzazkw?=
 =?utf-8?B?cENsLzhtTzIvR0dBdFBEYXZxTzhLNkg0b1hWQ0NpQTM5d2FJS2pUbmoxSjB3?=
 =?utf-8?B?bXRiOTdNY01EL0wvZ0NuT1MxZEdveGRvRGFJdFc1TEtWNWxXcFJxMnM0Mytx?=
 =?utf-8?B?WGdIaEU1MlRpNkNvb21meXo0WHM4K2VtdTlLaGJjOU5NMlhOcVNLQXJtOFgv?=
 =?utf-8?B?MlZkY2JUUFN2NVhnWUJtYU03eENqS2pWUFZaNVRTZHBUNDExL2ZIeDZBVjZQ?=
 =?utf-8?Q?tcKlberv+3Ggs?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5332.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M1dXM0htbzM2RjgxR3BQWVdNeUdmSkJLSmY1OU9zN3VRRWNzMTZEVW1vUHhJ?=
 =?utf-8?B?RmRzcFZ5ZnV5Y2VpcDlielhiRTdRYjBsVkFzbTlRUDB4dkNKeDUyWkVmcGNy?=
 =?utf-8?B?TlB3MVl6cVFWU2gxc0lCMTlzaFUzWEl5TGxNSURDVDlqSkRkU0pqMUhuMlRY?=
 =?utf-8?B?QnROcFRKdGFBWVBHM0FJOUE1L2JVRGNIc3NhM2h5OGZubERwNUwrQkY5a1M0?=
 =?utf-8?B?bGZUZE0xdnBwZjRQTm9FaWtpMzQwNXlXcUI1dGozVGRIZjN1c0dWN0I4alZk?=
 =?utf-8?B?ZUlqTmFZUDVxbXFiUzBDc2RnMC9sLzEzRHh0Wk1uSFhPVzUvdWorNVFtYWRB?=
 =?utf-8?B?TmN3ZFdIbU5oKzFDSHhBV0RJaFNHRDVFeU1DTW9odGFFR1JvT0JoRFduYldx?=
 =?utf-8?B?eVUxRS9OZEdHM0VGUTFraEJ2dVFEWWIyL1BaZE9KeEF0U3N4RjB6T29PcWp3?=
 =?utf-8?B?aXhTOU5XM096dkV5RTNqSS94elNhaklGZXIra0wrM2d1bGZUeEh6Y1JVaDJH?=
 =?utf-8?B?RWs5ZnhPTTExUHU3VXd6akhEbFpEZlc5NVYvYVdSOThzR0VZM2VlVjhWNDlV?=
 =?utf-8?B?NFBBTGFUZTJIS1FLVU5OUUVISERONktEOEVZZE80RU5CdStaYU1vTWIvZGpm?=
 =?utf-8?B?QUE3MFlQNk10enFRWURMMGtqa0Rod3lVbUsyTTFLbElzSlhrMmlkVnlvYmtq?=
 =?utf-8?B?SE00Y2V0MVhTSURvT05Bcmx5UThMMGxQMjE0YytiSmZoTzQ2S2pHWHJUL1ZV?=
 =?utf-8?B?TmVpMzRWeFQ4ZXRlTTlKM3JxRlR3WGMzeDZzWWxsN1J4b1ZNVG9QbTVORm51?=
 =?utf-8?B?SU9Cd0JMdUgvZFRjTXhFQ1lGRFZKZ1pPYWNYMnlUem1nTGlhVTdrV2JqRGRn?=
 =?utf-8?B?YTB0WTFRcGlPb3cyV2ZEa3ByRTJkUDFVdkpJbktHYkVUY1hEcXlNY3dvNkZp?=
 =?utf-8?B?d3V2bW13RXprS3hqdlBlQmgzOHBIV1hBRytjenNOckpNV0xwSmdmYkptNTla?=
 =?utf-8?B?SkFMYzhscmNCcVhsYzRTZWFqQ1pONEpjdFUyTm01ZHJGRGNCQm5Ka3FGR1VH?=
 =?utf-8?B?OEJrczJjZ0xqTUpiemlZaHZwT2xMSWxLVU1samVPUUpXVFZVQ1hNdDM5M04w?=
 =?utf-8?B?OFRCR1BVVkUrTUFQSk50MElORkNtdSt6cGk2aHNteWYrUjlsam41ZXhVR2J0?=
 =?utf-8?B?alNuRDl6SUFnZkpKbHRZd2Yxcit5LzE3aFdkL05BalN6blBvbkJ2OElrVWV4?=
 =?utf-8?B?MWdEZENCQ3VEVlpCQ3YwcldDU3V4Y3dNT3dLY1FwdjhoRkYvRWZMaThIUFBK?=
 =?utf-8?B?TUVIMGFpckl3Qm5GVXdidkF3UE51SDV4ZkkvYUlsbGhsK1hSZjN1azdQVjYw?=
 =?utf-8?B?U3RJdEZtMElxKzUzcC92K1VSeHhlL3pqM08vcHgwamZETmdwb2ZRenBiazdD?=
 =?utf-8?B?ZUlZYmVUR3pKWWFxcUdiNUIzb0ZIM21UdkdpWGk3MzR6dGdHR0FDb3pVQ3l4?=
 =?utf-8?B?TXYzU1ZWaVgvNGorWktoQzBrWk54U2MxSWNUUEVTWDRCWXp2a1duRXM4b1JO?=
 =?utf-8?B?Rjd3ZlRsMnpQcWxpS1dMSjNmVkVWR3h4R3FOVWlTU041clNKeXRBU1hRY1JL?=
 =?utf-8?B?ZDM3T0hHOTJycVF1NTUvc3krL3NDN2xyZHYwZWdsQ1oyR1ZyL3ZXOUVteGps?=
 =?utf-8?B?UCthSHJXZWNHYkRIeTdQVGZBdE9DaU1WLzFDYTlnbVlaNWphS25yQUswYkMz?=
 =?utf-8?B?dGtGYnZRamg1bXFKS2ZUcUN2VStySGtLN1JyeFdPbzN1T2pXcUMyMDRIbUJR?=
 =?utf-8?B?d0lWeDNJNkN2anZUUGlkQjhndC85V093ZjVabVFJVjllajNQRG56RHppUEpi?=
 =?utf-8?B?RnVUVmVVZkJ6TUNtNDJGdUZjV0VtMkcwZ3EyTEFvVFNLMFRVbkxrKy9MWkl5?=
 =?utf-8?B?NmxRaFlzbGdKcnJBay8vQm5rQWQ5cFJpTStkUHZGRXhwWWx0ZW5FNlRhOUVD?=
 =?utf-8?B?S0FnS3c3UnUzWlU5NVBBbm50bHUvUmU0YU9OYk9ORkYrMm10UkF5V2VESmls?=
 =?utf-8?B?OXljbWt1RU1qMjNTckY4dVQ4akUzVFNDSjN3dkYvUG5Lb2ZGbFhuVmxtRE1P?=
 =?utf-8?B?WFRTN1ZncUhWWUhHeUl0aG5VcFFUY0RjN0hFNXVxNGcxOXdOT1A2Y3ZsSjhL?=
 =?utf-8?B?TkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3313d39e-0905-434f-8254-08dd36acee86
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jan 2025 04:10:52.5272 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cECxkq8sXqJV1aeXmIHqnxmIYKxkX/hnyctHWYt27q67xNr9txZ4W51+VcNpgNltPgiccuSjnALzJkOFSohEBL7mLYB146I42giSg4GN3UU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6611
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


On 12/17/2024 2:07 PM, Suraj Kandpal wrote:
> When topology changes before beginning a new HDCP authentication by
> sending AKE_init message we need to first authenticate only the
> repeater if that fails only then makes sense to enable a new HDCP
> authentication. Even though it made sense to not enable HDCP directly
> from check_link and schedule it repeater authentication needs to be
> done immidieatly

typo: immediately

The first line seems to be overly long.

>
> Fixes: 47ef55a8b784 ("drm/i915/hdcp: Don't enable HDCP2.2 directly from check_link")
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Apart from the nitpicks, patch looks good to me.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_hdcp.c | 13 +++++++++++++
>   1 file changed, 13 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index f6e68a0e3b6d..9ff2274ed7e7 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -2182,6 +2182,19 @@ static int intel_hdcp2_check_link(struct intel_connector *connector)
>   
>   		drm_dbg_kms(display->drm,
>   			    "HDCP2.2 Downstream topology change\n");
> +
> +		ret = hdcp2_authenticate_repeater_topology(connector);
> +		if (!ret) {
> +			intel_hdcp_update_value(connector,
> +						DRM_MODE_CONTENT_PROTECTION_ENABLED,
> +						true);
> +			goto out;
> +		}
> +
> +		drm_dbg_kms(display->drm,
> +			    "[CONNECTOR:%d:%s] Repeater topology auth failed.(%d)\n",
> +			    connector->base.base.id, connector->base.name,
> +			    ret);
>   	} else {
>   		drm_dbg_kms(display->drm,
>   			    "[CONNECTOR:%d:%s] HDCP2.2 link failed, retrying auth\n",
