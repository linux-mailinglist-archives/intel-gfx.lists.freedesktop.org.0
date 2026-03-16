Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IC2RCNjct2mcWAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 11:35:04 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77907297F98
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 11:35:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A11310E251;
	Mon, 16 Mar 2026 10:34:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YN32MV9s";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEEF810E0BA;
 Mon, 16 Mar 2026 10:34:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773657295; x=1805193295;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CEzg3xBjM0GnvgDsl9gmDdKLD6guGI81FieiNqfDEfI=;
 b=YN32MV9smI5DhU5aTPkKZOGAm3iBsNMYWrVk92qT5IE9HtiDvws03MHX
 fB+jDw+qVAW9Hhad+rDTxO0U9fHqhIlH/pJ1wfEnhNCUYXEBxEuioTI5J
 w16/qvQJKAusQFDsOU2/FTbEPI2doieTfc0wqVXEbtw/AoiKgI/a+lJdi
 y2nBGMu60HDwBuK6vFWx234UIdS0vJUEXDnrmukrdYJf5L8K7Sdvh642j
 KScfvPCK6KwueMY/cL91b+EzecT+2KQVoubFjDI/lbg4RAT0p+cBPGJvA
 +JVbHTzMj7dvhuOq2CAKwqYwEUHLYR9nXqH5lK+dJ/uFQ9SdX2yPzoQYM g==;
X-CSE-ConnectionGUID: 2GsRsbO3SHCAmUQU3XyA0A==
X-CSE-MsgGUID: qPsQBWCpTlim5QU7Ml8sXA==
X-IronPort-AV: E=McAfee;i="6800,10657,11730"; a="85750367"
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="85750367"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 03:34:47 -0700
X-CSE-ConnectionGUID: tYajn8nlS1KoWnhMjL8PZg==
X-CSE-MsgGUID: DLKbiANzQ12AhIsDudXw0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="252391644"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 03:34:47 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 16 Mar 2026 03:34:46 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 16 Mar 2026 03:34:46 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.58)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 16 Mar 2026 03:34:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SX6P/Bo+4SSeyDg86EyqJdkpbengHuFnst659hiOc2NJ0LjOmszHaQfs5r1XEkU+8uWvzuKgWtv5badXqi9y9T560kdrXCFvLaStBmHDLZ8Cy77KwGvYcwYll4ZZwDtbYW0MwOECsZYDVbX0f/bkLwMGVKyvKQ9jCdtbb7RnCmOKOa06hjQq9T/drMwIFRPJwCF8AUocihlSJZcnbxcxKtpKDqm+HPuPHsLkGQzAyua9tJ0GCZbMUiHtIXUjquY23rpI7hKG9FCJ/KLyergl4lnRWYEIlbJYBGaUQ3CA+6Q1+DPZeUAveTB13Ij7safCGqwy/Tr8XLb+GNWfJSpvLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V+3xWElzjkK7q8F7oVzlkOaTTTq7vztj4AJW17JBYnc=;
 b=c1wqXuGc2+yirrO7R6SE5JLdjPskw3GSYjE1SJnLXv4P3+bU1Npli2J4Ilc65Ij80nxtzEeFHy9Uz4/yyDVPjjVQDIUc95z0su33BfkTOZT98m3st57JH5PIIaT6dIJ/V4FqXdDgS5EuKvsd19IaPTMtTfytcb1NyJhmBFfksrWh7pLd7+ad9JEmEkNGiH+6j3qIM68twHCMSWHXMoxJjHc+8gQHGizmRRVOn8l7xfFE4YKZogolIomKSzZtfpw4Nvovkyd9PGDsZIHsFKEbJ9YdsHexB82TdvXCM96x9EIVcLb4IjWx2ZXVZ+mGopxYTD0Fhf3ShGWjBuPmLgdndg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by CH0PR11MB8167.namprd11.prod.outlook.com (2603:10b6:610:192::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.16; Mon, 16 Mar
 2026 10:34:43 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b%3]) with mapi id 15.20.9723.014; Mon, 16 Mar 2026
 10:34:43 +0000
Message-ID: <eaaea3f6-76ce-4b20-b7b1-b483594070cd@intel.com>
Date: Mon, 16 Mar 2026 16:04:32 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/10] drm/colorop: Add DRM_COLOROP_CSC_FF
Content-Language: en-GB
To: Pekka Paalanen <pekka.paalanen@collabora.com>, <harry.wentland@amd.com>
CC: <dri-devel@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, <louis.chauvet@bootlin.com>,
 <mwen@igalia.com>, <contact@emersion.fr>, <alex.hung@amd.com>,
 <daniels@collabora.com>, <uma.shankar@intel.com>,
 <maarten.lankhorst@intel.com>, <pranay.samala@intel.com>,
 <swati2.sharma@intel.com>
References: <20260306165307.3233194-1-chaitanya.kumar.borah@intel.com>
 <20260306165307.3233194-2-chaitanya.kumar.borah@intel.com>
 <20260310163229.521186ab@eldfell>
 <53c3f610-942c-46bf-be5f-a4c51625c358@intel.com>
 <20260316105724.47d24409@eldfell>
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260316105724.47d24409@eldfell>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0189.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1ac::17) To DM4PR11MB6141.namprd11.prod.outlook.com
 (2603:10b6:8:b3::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|CH0PR11MB8167:EE_
X-MS-Office365-Filtering-Correlation-Id: ad1a3e3b-7c41-4c21-1f19-08de8347a205
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|56012099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: 61a4zPoKOA3BKjpkxlkkkoTkQQGGLGcKGcuSphbfep1Oiqf98XmaLNYor0Wu4LAgrQZP5VMWYXBxM6QbMQF0u9ZsfyVKD9tDdmdv/c2LxdgoBjoPodoqt5HAQOHExMt4W6uQEeQ7zFV6Ui9rzZO1monDi2m8EP18ThhAp+HgLWJBNM8V9U8ZG9uNVYlBZEFL383qVNTEF9MZtCQnvaQaTWpBSdKhpLBPxFq1+kpZ7IUfnADCOeMSlSg8CP/XewTEHtGJYVbZGGdLBKTYByQDeKrw+SmwGTLFWtL8jLD4IiRFEIA2ZoniKNNvscmradMdMpIDxbhnlezXKjsC95I33psMcXVbkPl3mHaBZHx8HW0nrFv0rwKRbH0kKiwlw3A5SWD8hQYY0Do6Z9YjYv5mIl1TYmQcvhCXxloUf/NjgEyp+D1pYGfAr8PJ0Ss1UynRgtBw6eoNp6YwkJSRvfRqbc18GNj8O86kbNkW98E7ZLU5KuDJhrxQW1FxUoM+PLNl0JUnYIfgfyM+qQTcGDrcDIiHBsFDyN9tLsf4Ad9smH8kZompRzIKzu/Xy+j0Bhpr20PrxFgQxLtlE1QhBA44MKqZl1f9eHkdMK0p1LMfygbcQMZwvM0Sw7ife7G4+V/yHnMWfSsnNCrOemQkwKKi7O8yKvb1drX6lj+zUOc8LgZkpX/Rz3UP2UUCQmcUpjAH
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NzJOSHpwZzV0Y3dGSjkzWWc0ODAyWVJZRVdCeW4yNmFoa25CajNwMjBzZDd5?=
 =?utf-8?B?TUNvNE5mWUVCVjZJRVg2Q3ZPRTRSNlUxZ3hmRG5EQzJPWVBuUW1qSksra0w5?=
 =?utf-8?B?OWtjbXAxZUhmZDVBaGVycXJ0MmQ5cDA0dTdVNTEvQnpCZHZIcUcybGdFcVY5?=
 =?utf-8?B?QUFzaTA3MnFoRVVDUDJBTXpYajgvTElnRVd5NzJvcyt1bC9ZU3p2TEFBRDlN?=
 =?utf-8?B?Q0xBcUFBUWdxci9Pblo3Z21GeVUzS3NGclREU1NMSzlqSENrTW1BcUhuUFY3?=
 =?utf-8?B?S2JIdXhxWmxoV3ZCWVZRTUhySW5jTlZzZnorR1VqNUVDcUU2TitmMHU5MVE0?=
 =?utf-8?B?MlRLaC9oZ29wRVZwZk9yb253bWVNYmtEU0FKUHFoRHd5eEJrckkrRkFtN2dm?=
 =?utf-8?B?UEJwc2d2NFErdWVudFVvR1Irblk4ODJzSFEvUStPODUxTks5OUFOaTZWelN1?=
 =?utf-8?B?alBvMkZtNjZKRTNoV2xXRERab1F3eEpYTVhWYXdtRGlYelorbDZrMU81ODF2?=
 =?utf-8?B?V1gvaHRNMmxkZVNHazlpZ2xReGNsMUw3ajArTG9YaVYyQ0pGdU84bi9vQ3lJ?=
 =?utf-8?B?QXBhTm9vOXYyZmk2QmRjdDBNZjBNMVJxTEt6dmxEcFZLbWE5QXVJUDdUaGY2?=
 =?utf-8?B?ZHBhVmxhNWF0Um5zbkpTMnlZU1JQOTIrbmNYNE9rZHhMaVFaako3dGRHTFk2?=
 =?utf-8?B?VFk5NnhraSsySjZXd3ExTWJBcG9haDlkQWprL01IUmZnVndjV1AveHdiVHV5?=
 =?utf-8?B?UFVPKzZkSXhvaUFOQ0ZmVHRmN3VPKzQybHBqMlg1WTEvVkg2YXhqaEtoMlI3?=
 =?utf-8?B?eEphYktsMkRHUGNXTzU2Q28vcWlBZ2xVR1E0RWV5d1Z5bEUvVkd5RDV4T0lm?=
 =?utf-8?B?OUhsZ3NWTjgzWFNPUWZqaDFMOXVzTFVGSGl2byt1RDJWMm1RRE5XYU5CdjFC?=
 =?utf-8?B?VkJ5Qkw5aTV0KzdabUVxL3pRejVPU2RJQXlId1BRcCtYN2M1RGltdHZkVHZP?=
 =?utf-8?B?U0U1aE04QzFza1pwMEhrRjluc2J5Mmsvemd0WU50NVRnSVhraUFuTnZFVWdQ?=
 =?utf-8?B?OUZOVjhKT0JzSzFWVmkzMm5JVkVoWkhTZkZsdSsvaVVzazkvemo5TEhzK21B?=
 =?utf-8?B?R1YydzZHb2k3OE45d1JKTk5ZVkJxaktrNWh1T0xlUTJ3T2VFZUtPVmFpa1FE?=
 =?utf-8?B?WEVnYlFBbGQxU2ErVXJadmhwMGNpaS90ZTcrbUMxTE96NHNxaGg1bnUyU0M5?=
 =?utf-8?B?MUozd3BsdncxTkNmNkhQM1BiUXJXN21lRmNuM0puRzRMSVBqWlhVSzBLbGJN?=
 =?utf-8?B?SnFNWU1TMVl6MkxZd3VVVEhCT0pocTVqNXZGakFLZjdrbEI2ZkJyTGIxQVR2?=
 =?utf-8?B?NVJFZURwY21DcmN1SmZmMkp5Wk5BZm42bmZqWG1xeXY2UzIvOTMyMUFIMmFV?=
 =?utf-8?B?R0t6MTBLVVZUdGpYNTBTL2xxSEpYL2RuN0NkdjFLbjRCdFRzMFZTakYzZ1g2?=
 =?utf-8?B?clZsSGJENjFlMmVBRHMraXFpQzQwbzRWSWdZQ1FqWUFyU0ZyL3dWT3lXL3JY?=
 =?utf-8?B?b1VHUWhjTzRTVURLOHJPT2ludzRod3ZUM0JJSFhmUVpua2FFdHN1dE5FYXZz?=
 =?utf-8?B?cGxnTGRKNWQvRXA0Z3lHZC9SWHA1VnRIS28yZjYySEE2Vko3M0dBb0lQekRR?=
 =?utf-8?B?Q0ZRelFabkpjbTdPWGNNZ1Myck1yMGdyQVo3U2p1cytGTUxRaFR2TzREQ3Rn?=
 =?utf-8?B?dThad0tmTUIwOFJBa1JHcnFaaFp1MWtZMW9nQjZ6RkdBdWdDQ0RyQkY2Z2Rs?=
 =?utf-8?B?NHNOVEN6RnYveDdKd1ZGNlBOSVNlUXpHeWpUb3ZZUjBQSkswSU5TekRuWk1R?=
 =?utf-8?B?N1QycEZjSk5UVnh4WHh3WDZkK2NEeS9XRjBuSjVmNzFBamkyWEtza3BTbXc4?=
 =?utf-8?B?NHhqL0FuMHhNZS9iOTh1TmtENmRwc0dsT1luWkZ0RzRUUk00OTl1NnloS01w?=
 =?utf-8?B?YzhzTWNONjE0bGFiVlVwaWN1eG0yYXVoVFJMc0pERWlBMEhJbHBROXNLdWJ1?=
 =?utf-8?B?dVoxQlJBMFIzTFlYVlNUYnRFOXQ3T3dqaFd2eU82c1Ixb042QU5QNCt1NlJQ?=
 =?utf-8?B?Yld6YUE2NGdtSVEvNFp4Nm1XWXQ5aVRvV0hHOFNZV0g2eTZJOHZ2MnQvVjMw?=
 =?utf-8?B?dGsvWVBMZGQ2d09xV2JUVTBZSkh5NjhJdFJZT2prcjA0eVhvSFFPTUdZekpI?=
 =?utf-8?B?dWh3UjVkMWVsa3ZpK08zNmF4ZGMwcDVvT2g5RVlLc2psMjRjc0NqUGRMNkxW?=
 =?utf-8?B?ak1NQVRvOVZUUVVWWTB3UTRBQmcwdHI3MHl0Q2IvdHJWWVJKdG1XWmtoTlIx?=
 =?utf-8?Q?JUCwN/zvBD3Ku7Ho=3D?=
X-Exchange-RoutingPolicyChecked: ZOrSgmOKm9AN2MQ7FJwb9m5iJUWAmkKgJ94jbbzB+vA5jmOvqoPLvAwi1DkpreojF+4BHQkUlbDF/aXuHhDbs3P0sDcgLhaY/rfHUk17/0MNrwEjQfbbH/dTL7+uHwEJUhwRcDXM/01Eg5/PJgjbz7IhfZjjb6Ub7xITCeqx6RTl0NUQTLtQWaywktfD6YrVYVy/QUofttkRvn8hY+VefZJTTN73VdFQkMLZpavvJMhpdOC/meRPUeo4IfOf0TZCJLiBSiw+NwsqUOe6uxcdkdKbePOBU99pnmSn+P/TP/vAM/ojX8f16x3LQr6YvXRUmruHWk269zUmhppWh1w6DA==
X-MS-Exchange-CrossTenant-Network-Message-Id: ad1a3e3b-7c41-4c21-1f19-08de8347a205
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6141.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Mar 2026 10:34:43.2274 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: P1s16UaEbN+Ht9nUsMnrPWFWGN+VngsDck5bYJ2cDxz6fEm5ZMzl1MRcNAt5L8rBREwE7BvBq6eI0dFTeag0vm2WyZ9Mb2mna46rwl82J5c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8167
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_SEVEN(0.00)[9];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	RCPT_COUNT_TWELVE(0.00)[14];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 77907297F98
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/16/2026 2:27 PM, Pekka Paalanen wrote:
> On Mon, 16 Mar 2026 12:46:39 +0530
> "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com> wrote:
> 
>> Hi Pekka,
>>
>> Thank you for looking into the patch.
> 
> Hi Chaitanya!
> 
> Replies inline below.
> 
>>
>> On 3/10/2026 8:02 PM, Pekka Paalanen wrote:
>>> On Fri,  6 Mar 2026 22:22:58 +0530
>>> Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com> wrote:
>>>    
>>>> Introduce DRM_COLOROP_CSC_FF, a new colorop type representing a
>>>> fixed-function Color Space Conversion (CSC) block.
>>>>
>>>> Unlike CTM-based colorops, this block does not expose programmable
>>>> coefficients. Instead, userspace selects one of the predefined
>>>> hardware modes via a new CSC_FF_TYPE enum property. Supported modes
>>>> include common YUV->RGB and RGB709->RGB2020 conversions.
>>>>
>>>> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
>>>> ---
>>>>    drivers/gpu/drm/drm_atomic.c      |   4 ++
>>>>    drivers/gpu/drm/drm_atomic_uapi.c |   4 ++
>>>>    drivers/gpu/drm/drm_colorop.c     | 105 ++++++++++++++++++++++++++++++
>>>>    include/drm/drm_colorop.h         |  72 ++++++++++++++++++++
>>>>    include/uapi/drm/drm_mode.h       |  13 ++++
>>>>    5 files changed, 198 insertions(+)
>>>>
>>>> diff --git a/drivers/gpu/drm/drm_atomic.c b/drivers/gpu/drm/drm_atomic.c
>>>> index 04925166df98..7296b844e3fd 100644
>>>> --- a/drivers/gpu/drm/drm_atomic.c
>>>> +++ b/drivers/gpu/drm/drm_atomic.c
>>>> @@ -844,6 +844,10 @@ static void drm_atomic_colorop_print_state(struct drm_printer *p,
>>>>    			   drm_get_colorop_lut3d_interpolation_name(colorop->lut3d_interpolation));
>>>>    		drm_printf(p, "\tdata blob id=%d\n", state->data ? state->data->base.id : 0);
>>>>    		break;
>>>> +	case DRM_COLOROP_CSC_FF:
>>>> +		drm_printf(p, "\tcsc_ff_type=%s\n",
>>>> +			   drm_get_colorop_csc_ff_type_name(state->csc_ff_type));
>>>> +		break;
>>>>    	default:
>>>>    		break;
>>>>    	}
>>>> diff --git a/drivers/gpu/drm/drm_atomic_uapi.c b/drivers/gpu/drm/drm_atomic_uapi.c
>>>> index 87de41fb4459..9af73325aa93 100644
>>>> --- a/drivers/gpu/drm/drm_atomic_uapi.c
>>>> +++ b/drivers/gpu/drm/drm_atomic_uapi.c
>>>> @@ -757,6 +757,8 @@ static int drm_atomic_colorop_set_property(struct drm_colorop *colorop,
>>>>    	} else if (property == colorop->data_property) {
>>>>    		return drm_atomic_color_set_data_property(colorop, state,
>>>>    							  property, val);
>>>> +	} else if (property == colorop->csc_ff_type_property) {
>>>> +		state->csc_ff_type = val;
>>>>    	} else {
>>>>    		drm_dbg_atomic(colorop->dev,
>>>>    			       "[COLOROP:%d:%d] unknown property [PROP:%d:%s]\n",
>>>> @@ -789,6 +791,8 @@ drm_atomic_colorop_get_property(struct drm_colorop *colorop,
>>>>    		*val = colorop->lut3d_interpolation;
>>>>    	else if (property == colorop->data_property)
>>>>    		*val = (state->data) ? state->data->base.id : 0;
>>>> +	else if (property == colorop->csc_ff_type_property)
>>>> +		*val = state->csc_ff_type;
>>>>    	else
>>>>    		return -EINVAL;
>>>>    
>>>> diff --git a/drivers/gpu/drm/drm_colorop.c b/drivers/gpu/drm/drm_colorop.c
>>>> index f421c623b3f0..49422c625f4d 100644
>>>> --- a/drivers/gpu/drm/drm_colorop.c
>>>> +++ b/drivers/gpu/drm/drm_colorop.c
>>>> @@ -68,6 +68,7 @@ static const struct drm_prop_enum_list drm_colorop_type_enum_list[] = {
>>>>    	{ DRM_COLOROP_CTM_3X4, "3x4 Matrix"},
>>>>    	{ DRM_COLOROP_MULTIPLIER, "Multiplier"},
>>>>    	{ DRM_COLOROP_3D_LUT, "3D LUT"},
>>>> +	{ DRM_COLOROP_CSC_FF, "CSC Fixed-Function"},
>>>
>>> Hi,
>>>
>>> the fundamental idea seems fine to me, but I have a lot to say about the
>>> nomenclature.
>>>
>>> What would you think of a more readable name DRM_COLOROP_FIXED_MATRIX
>>> "Fixed Matrix"?
>>>
>>> Alternatively DRM_COLOROP_ENUM_MATRIX "Enumerated Matrix".
>>>    
>>
>> I was intentionally staying away from the word matrix because there was
>> no programmable matrix but it would make sense to name it something like
>> DRM_COLOROP_FIXED_MATRIX (or *_PRESET_MATRIX for that matter).
>>
>>>>    };
>>>>    
>>>>    static const char * const colorop_curve_1d_type_names[] = {
>>>> @@ -90,6 +91,13 @@ static const struct drm_prop_enum_list drm_colorop_lut3d_interpolation_list[] =
>>>>    	{ DRM_COLOROP_LUT3D_INTERPOLATION_TETRAHEDRAL, "Tetrahedral" },
>>>>    };
>>>>    
>>>> +static const char * const colorop_csc_ff_type_names[] = {
>>>> +	[DRM_COLOROP_CSC_FF_YUV601_RGB601]   = "YUV601 to RGB601",
>>>> +	[DRM_COLOROP_CSC_FF_YUV709_RGB709]   = "YUV709 to RGB709",
>>>> +	[DRM_COLOROP_CSC_FF_YUV2020_RGB2020] = "YUV2020 to RGB2020",
>>>> +	[DRM_COLOROP_CSC_FF_RGB709_RGB2020]  = "RGB709 to RGB2020",
>>>
>>> I'd suggest names:
>>>
>>> "YCbCr 601 to RGB"
>>> "YCbCr 709 to RGB"
>>> "YCbCr 2020 NC to RGB"
>>> "RGB709 to RGB2020"
>>>
>>> or something in that direction.
>>>
>>> The relevant ITU-R BT specifications use YCbCr nomenclature IIRC. Wrt.
>>> YCbCr-to-RGB conversion, there is no RGB601, RGB709 or RGB2020. There
>>> is only some RGB, and which primaries it uses is not always tied to
>>> which YCbCr conversion was used.
>>>   
>>
>> What I understand from this is that the BT.709(et al.) only defines the
>> matrix that is used for YCbCr->RGB, "what" RGB it is defined by the
>> primaries (which comes with metadata?).
> 
> Unfortunately, BT.601, BT.709 and BT.2020 define two separate things each:
> - the YCbCr<->RGB conversion, and
> - the colorspace primaries (and white point, but that is the same for
>    them all).
> 
> BT.601 actually has two different sets of primaries. Bt.2020 defines
> two different YCbCr conversions. BT.709 uses the same primaries as
> sRGB, but is different from sRGB on all other aspects.
> 
> Therefore, when you refer to any one of these, you also need to be
> clear whether you are referring to the YCbCr conversion or to the
> primaries.
> 

In that case, if the HW block says that it does YCbCr to RGB conversion 
using rec BT.709, the resultant RGB follows the primaries as described 
by BT.709 or mathematically it does not really matter?

>> I will read up on why our HW names these bits as such.
> 
> Sure, but keep in mind that your hardware naming is irrelevant for the
> UAPI design.

Understood, I just want to make sure that the HW does exactly what we 
will advertise through the UAPI.

> 
>>> For YCbCr 2020 I feel it's nice to remember, that there are two
>>> different conversions in the specification: the simple matrix one
>>> called "non-constant luminance", and the complex one called "constant
>>> luminance". Hence "NC".
>>>
>>> It's also good to recall that YCbCr-RGB conversions are done in an
>>> electrical space, while RGB709-to-RGB2020 conversion must be done in the
>>> optical space. It is up to the userspace to arrange the neighbouring
>>> colorops to use the fixed matrix right.
>>>    
>>
>> Ack on the above.
>>
>>>> +};
>>>> +
>>>>    /* Init Helpers */
>>>>    
>>>>    static int drm_plane_colorop_init(struct drm_device *dev, struct drm_colorop *colorop,
>>>> @@ -459,6 +467,80 @@ int drm_plane_colorop_3dlut_init(struct drm_device *dev, struct drm_colorop *col
>>>>    }
>>>>    EXPORT_SYMBOL(drm_plane_colorop_3dlut_init);
>>>>    
>>>> +/**
>>>> + * drm_plane_colorop_csc_ff_init - Initialize a DRM_COLOROP_CSC_FF
>>>> + *
>>>> + * @dev: DRM device
>>>> + * @colorop: The drm_colorop object to initialize
>>>> + * @plane: The associated drm_plane
>>>> + * @funcs: control functions for the new colorop
>>>> + * @supported_csc_ff: A bitfield of supported drm_plane_colorop_csc_ff_type enum values,
>>>> + *                    created using BIT(csc_ff_type) and combined with the OR '|'
>>>> + *                    operator.
>>>> + * @flags: bitmask of misc, see DRM_COLOROP_FLAG_* defines.
>>>> + * @return zero on success, -E value on failure
>>>> + */
>>>> +int drm_plane_colorop_csc_ff_init(struct drm_device *dev, struct drm_colorop *colorop,
>>>> +				  struct drm_plane *plane, const struct drm_colorop_funcs *funcs,
>>>> +				  u64 supported_csc_ff, uint32_t flags)
>>>> +{
>>>> +	struct drm_prop_enum_list enum_list[DRM_COLOROP_CSC_FF_COUNT];
>>>> +	int i, len;
>>>> +
>>>> +	struct drm_property *prop;
>>>> +	int ret;
>>>> +
>>>> +	if (!supported_csc_ff) {
>>>> +		drm_err(dev,
>>>> +			"No supported CSC op for new CSC FF colorop on [PLANE:%d:%s]\n",
>>>> +			plane->base.id, plane->name);
>>>> +		return -EINVAL;
>>>> +	}
>>>> +
>>>> +	if ((supported_csc_ff & -BIT(DRM_COLOROP_CSC_FF_COUNT)) != 0) {
>>>> +		drm_err(dev, "Unknown CSC provided on [PLANE:%d:%s]\n",
>>>> +			plane->base.id, plane->name);
>>>> +		return -EINVAL;
>>>> +	}
>>>> +
>>>> +	ret = drm_plane_colorop_init(dev, colorop, plane, funcs, DRM_COLOROP_CSC_FF, flags);
>>>> +	if (ret)
>>>> +		return ret;
>>>> +
>>>> +	len = 0;
>>>> +	for (i = 0; i < DRM_COLOROP_CSC_FF_COUNT; i++) {
>>>> +		if ((supported_csc_ff & BIT(i)) == 0)
>>>> +			continue;
>>>> +
>>>> +		enum_list[len].type = i;
>>>> +		enum_list[len].name = colorop_csc_ff_type_names[i];
>>>> +		len++;
>>>> +	}
>>>> +
>>>> +	if (WARN_ON(len <= 0))
>>>> +		return -EINVAL;
>>>> +
>>>> +	prop = drm_property_create_enum(dev, DRM_MODE_PROP_ATOMIC, "CSC_FF_TYPE",
>>>> +					enum_list, len);
>>>
>>> The Color Space Conversion Fixed-Function type is always "fixed
>>> matrix", right?
>>>
>>> The name for the colorop property to choose one of the supported
>>> matrices could be... "matrix"? "choice"?
>>
>> Ack.
>>
>>>
>>> Does the property name need to be unique over all colorop types?
>>>    
>>
>> I am not sure if I understand your question. Could you please elaborate?
> 
> Let's say we have two colorop types: MATRIX implements an arbitrary
> programmable matrix, and FIXED_MATRIX where you pick the matrix from an
> enum.
> 
> MATRIX needs a property for the matrix data, I think there is a
> colorop property named DATA that takes a blob id and is used by several
> colorop types for different kinds of data - they all take a blob id
> though.
> 

Yes, I think that is what [1] does.

[1] 
https://lore.kernel.org/dri-devel/20251223-mtk-ovl-pre-blend-colorops-v1-9-0cb99bd0ab33@collabora.com/.

> Ok, so there is no strict requirement for the property to be unique
> over all colorop types. But are there any design guidelines here?
> 
> Hmm, maybe not.
> 

Yeah I don't think there is any such design guideline.

In theory, we could have re-used the enum property "CURVE_1D_TYPE" 
(after renaming it, ofcourse) and assign meaning to the property based 
on the type of the colorop it is attached to, like we do with "DATA" but 
I think that ship has sailed(?).

But in hindsight that would have been a better approach so as to not 
bloat the colorop object with properties.

>>>> +
>>>> +	if (!prop)
>>>> +		return -ENOMEM;
>>>> +
>>>> +	colorop->csc_ff_type_property = prop;
>>>> +	/*
>>>> +	 * Default to the first supported CSC mode as provided by the driver.
>>>> +	 * Intuitively this should be something that keeps the colorop in pixel bypass
>>>> +	 * mode but that is already handled via the standard colorop bypass
>>>> +	 * property.
>>>> +	 */
>>>> +	drm_object_attach_property(&colorop->base, colorop->csc_ff_type_property,
>>>> +				   enum_list[0].type);
>>>> +	drm_colorop_reset(colorop);
>>>> +
>>>> +	return 0;
>>>> +}
>>>> +EXPORT_SYMBOL(drm_plane_colorop_csc_ff_init);
>>>> +
>>>>    static void __drm_atomic_helper_colorop_duplicate_state(struct drm_colorop *colorop,
>>>>    							struct drm_colorop_state *state)
>>>>    {
>>>> @@ -513,6 +595,13 @@ static void __drm_colorop_state_reset(struct drm_colorop_state *colorop_state,
>>>>    						      &val);
>>>>    		colorop_state->curve_1d_type = val;
>>>>    	}
>>>> +
>>>> +	if (colorop->csc_ff_type_property) {
>>>> +		drm_object_property_get_default_value(&colorop->base,
>>>> +						      colorop->csc_ff_type_property,
>>>> +						      &val);
>>>> +		colorop_state->csc_ff_type = val;
>>>> +	}
>>>>    }
>>>>    
>>>>    /**
>>>> @@ -551,6 +640,7 @@ static const char * const colorop_type_name[] = {
>>>>    	[DRM_COLOROP_CTM_3X4] = "3x4 Matrix",
>>>>    	[DRM_COLOROP_MULTIPLIER] = "Multiplier",
>>>>    	[DRM_COLOROP_3D_LUT] = "3D LUT",
>>>> +	[DRM_COLOROP_CSC_FF] = "CSC Fixed-Function",
>>>>    };
>>>
>>> Why are there two arrays with the same DRM_COLOROP_* = name association?
>>> drm_colorop_type_enum_list is the first one.
>>>    
>>
>> This array is explicitly used by drm_get_colorop_type_name(). Connectors
>> use an enum list for a similar purpose, so colorops could also reuse an
>> enum list here, provided that the enum array index remains in sync with
>> the corresponding enum value.
>>
>>>>    
>>>>    static const char * const colorop_lu3d_interpolation_name[] = {
>>>> @@ -607,6 +697,21 @@ const char *drm_get_colorop_lut3d_interpolation_name(enum drm_colorop_lut3d_inte
>>>>    	return colorop_lu3d_interpolation_name[type];
>>>>    }
>>>>    
>>>> +/**
>>>> + * drm_get_colorop_csc_ff_type_name: return a string for interpolation type
>>>> + * @type: csc ff type to compute name of
>>>> + *
>>>> + * In contrast to the other drm_get_*_name functions this one here returns a
>>>> + * const pointer and hence is threadsafe.
>>>> + */
>>>> +const char *drm_get_colorop_csc_ff_type_name(enum drm_colorop_csc_ff_type type)
>>>> +{
>>>> +	if (WARN_ON(type >= ARRAY_SIZE(colorop_csc_ff_type_names)))
>>>> +		return "unknown";
>>>> +
>>>> +	return colorop_csc_ff_type_names[type];
>>>> +}
>>>> +
>>>>    /**
>>>>     * drm_colorop_set_next_property - sets the next pointer
>>>>     * @colorop: drm colorop
>>>> diff --git a/include/drm/drm_colorop.h b/include/drm/drm_colorop.h
>>>> index bd082854ca74..2cd8e0779c2a 100644
>>>> --- a/include/drm/drm_colorop.h
>>>> +++ b/include/drm/drm_colorop.h
>>>> @@ -134,6 +134,60 @@ enum drm_colorop_curve_1d_type {
>>>>    	DRM_COLOROP_1D_CURVE_COUNT
>>>>    };
>>>>    
>>>> +/**
>>>> + * enum drm_colorop_csc_ff_type - type of CSC Fixed-Function
>>>> + *
>>>> + * Describes a CSC operation to be applied by the DRM_COLOROP_CSC_FF colorop.
>>>
>>> It's a matrix operation. It seems to me that "CSC operation" is more
>>> specific and does not fit the YCbCr-to-RGB conversion.
>>>    
>>
>> Yes makes sense, matrix would be a more generic term.
>>
>>>> + */
>>>> +enum drm_colorop_csc_ff_type {
>>>> +	/**
>>>> +	 * @DRM_COLOROP_CSC_FF_YUV601_RGB601
>>>> +	 *
>>>> +	 * enum string "YUV601 to RGB601"
>>>> +	 *
>>>> +	 * Selects the fixed-function CSC preset that converts YUV
>>>> +	 * (BT.601) colorimetry to RGB (BT.601).
>>>
>>> This selects the matrix that converts YCbCr into RGB
>>> according to the BT.601 coefficients.
>>>    
>>>> +	 */
>>>> +	DRM_COLOROP_CSC_FF_YUV601_RGB601,
>>>> +
>>>> +	/**
>>>> +	 * @DRM_COLOROP_CSC_FF_YUV709_RGB709:
>>>> +	 *
>>>> +	 * enum string "YUV709 to RGB709"
>>>> +	 *
>>>> +	 * Selects the fixed-function CSC preset that converts YUV
>>>> +	 * (BT.709) colorimetry to RGB (BT.709).
>>>
>>> This selects the matrix that converts YCbCr into RGB
>>> according to the BT.709 coefficients.
>>>    
>>>> +	 */
>>>> +	DRM_COLOROP_CSC_FF_YUV709_RGB709,
>>>> +
>>>> +	/**
>>>> +	 * @DRM_COLOROP_CSC_FF_YUV2020_RGB2020:
>>>> +	 *
>>>> +	 * enum string "YUV2020 to RGB2020"
>>>> +	 *
>>>> +	 * Selects the fixed-function CSC preset that converts YUV
>>>> +	 * (BT.2020) colorimetry to RGB (BT.2020).
>>>
>>> This selects the matrix that converts YCbCr into RGB
>>> according to the BT.2020 non-constant luminance coefficients.
>>>    
>>>> +	 */
>>>> +	DRM_COLOROP_CSC_FF_YUV2020_RGB2020,
>>>> +
>>>> +	/**
>>>> +	 * @DRM_COLOROP_CSC_FF_RGB709_RGB2020:
>>>> +	 *
>>>> +	 * enum string "RGB709 to RGB2020"
>>>> +	 *
>>>> +	 * Selects the fixed-function CSC preset that converts RGB
>>>> +	 * (BT.709) colorimetry to RGB (BT.2020).
>>>
>>> This selects the matrix that converts optical RGB from BT.709 primaries
>>> to BT.2020 primaries.
>>>    
>>
>> Ack on the documentation.
>>
>>>> +	 */
>>>> +	DRM_COLOROP_CSC_FF_RGB709_RGB2020,
>>>> +
>>>> +	/**
>>>> +	 * @DRM_COLOROP_CSC_FF_COUNT:
>>>> +	 *
>>>> +	 * enum value denoting the size of the enum
>>>> +	 */
>>>> +	DRM_COLOROP_CSC_FF_COUNT
>>>> +};
>>>> +
>>>>    /**
>>>>     * struct drm_colorop_state - mutable colorop state
>>>>     */
>>>> @@ -183,6 +237,13 @@ struct drm_colorop_state {
>>>>    	 */
>>>>    	struct drm_property_blob *data;
>>>>    
>>>> +	/**
>>>> +	 * @csc_ff_type:
>>>> +	 *
>>>> +	 * Type of Fixed function CSC.
>>>> +	 */
>>>> +	enum drm_colorop_csc_ff_type csc_ff_type;
>>>> +
>>>>    	/** @state: backpointer to global drm_atomic_state */
>>>>    	struct drm_atomic_state *state;
>>>>    };
>>>> @@ -368,6 +429,13 @@ struct drm_colorop {
>>>>    	 */
>>>>    	struct drm_property *data_property;
>>>>    
>>>> +	/**
>>>> +	 * @csc_ff_type_property:
>>>> +	 *
>>>> +	 * Sub-type for DRM_COLOROP_CSC_FF type.
>>>> +	 */
>>>> +	struct drm_property *csc_ff_type_property;
>>>> +
>>>>    	/**
>>>>    	 * @next_property:
>>>>    	 *
>>>> @@ -424,6 +492,9 @@ int drm_plane_colorop_3dlut_init(struct drm_device *dev, struct drm_colorop *col
>>>>    				 uint32_t lut_size,
>>>>    				 enum drm_colorop_lut3d_interpolation_type interpolation,
>>>>    				 uint32_t flags);
>>>> +int drm_plane_colorop_csc_ff_init(struct drm_device *dev, struct drm_colorop *colorop,
>>>> +				  struct drm_plane *plane, const struct drm_colorop_funcs *funcs,
>>>> +				  u64 supported_csc_ff, uint32_t flags);
>>>>    
>>>>    struct drm_colorop_state *
>>>>    drm_atomic_helper_colorop_duplicate_state(struct drm_colorop *colorop);
>>>> @@ -480,6 +551,7 @@ drm_get_colorop_lut1d_interpolation_name(enum drm_colorop_lut1d_interpolation_ty
>>>>    
>>>>    const char *
>>>>    drm_get_colorop_lut3d_interpolation_name(enum drm_colorop_lut3d_interpolation_type type);
>>>> +const char *drm_get_colorop_csc_ff_type_name(enum drm_colorop_csc_ff_type type);
>>>>    
>>>>    void drm_colorop_set_next_property(struct drm_colorop *colorop, struct drm_colorop *next);
>>>>    
>>>> diff --git a/include/uapi/drm/drm_mode.h b/include/uapi/drm/drm_mode.h
>>>> index 3693d82b5279..f7808e7ea984 100644
>>>> --- a/include/uapi/drm/drm_mode.h
>>>> +++ b/include/uapi/drm/drm_mode.h
>>>> @@ -968,6 +968,19 @@ enum drm_colorop_type {
>>>>    	 *         color = lut3d[index]
>>>>    	 */
>>>>    	DRM_COLOROP_3D_LUT,
>>>> +
>>>> +	/**
>>>> +	 * @DRM_COLOROP_CSC_FF:
>>>> +	 *
>>>> +	 * enum string "CSC Fixed-Function"
>>>> +	 *
>>>> +	 * A fixed-function Color Space Conversion block where the coefficients
>>>> +	 * are not programmable but selected from predefined hardware modes via
>>>> +	 * the CSC_FF_TYPE enum property. The driver advertises the supported
>>>> +	 * CSC modes through this property.
>>>
>>> This would be a lot more obvious if it was called a "fixed matrix"
>>> operation or such. The current wording never mentions "matrix".
>>>    
>>
>> Ack.
>>
>> I also wanted throw this question out there. Since we have introduced
>> YUV to RGB conversion colorop which essentially replaces the color
>> encoding property, would this also be the right time to bring in
>> something to replace the color range property.
> 
> Yes.
> 
>> I recall Harry mentioning in the cover letter of the original series
>> that he was working on something along those lines.
> 
> Reading Harry's latest blog post it sounds he has done similar work as
> you.
> 
> Harry's blog link seems dead, but the post is available at
> https://planet.freedesktop.org/
> titled "Harry Wentland: Plane Color Pipeline, CSC, 3D LUT, and KWin"
> with links to patches.
> 

I will have a look at it, thank you.

==
Chaitanya

> 
> Thanks,
> pq
> 
>>
>> ==
>> Chaitanya
>>
>>>> +	 */
>>>> +	DRM_COLOROP_CSC_FF,
>>>> +
>>>>    };
>>>>    
>>>>    /**
>>>
>>> Thanks,
>>> pq
>>
> 

