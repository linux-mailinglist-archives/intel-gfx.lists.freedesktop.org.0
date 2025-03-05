Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9C69A4F6A6
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Mar 2025 06:45:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8270210E6D5;
	Wed,  5 Mar 2025 05:45:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RYU3OOi6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43AB010E6D7
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Mar 2025 05:45:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741153531; x=1772689531;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aDJqEatH2Ypxe5g6H0Ef+5flP73yqpNH62nUGtxvw84=;
 b=RYU3OOi6NhGSmIcMMRWVmhIVNgtBnAqakCnwEQwAv09baiYplJHa5Bj/
 SwiOTPU0cKwge3d/8Bd0H5EykoGP0d4jVvAPnru3SXxt7bJf02oBk7Thl
 1VXkWJDgIm+ziERPZIlCllI7E39N9buhBdVE3ZhAJOaw9J9YrSJ8jbvPh
 5PDk/iVLgvET4byQ19c/EsUs2rqpIPhT60pbaHw25lfsZ/VFGimDTEgEO
 63Du9FmkPCeO2MfvqRp4izmSKURmbTOskqPjnyf4EdD3sP+JoPWoRodP4
 e/dAsFDMUpR8VO/ohcyBNvl2YWQ+fVwJr2+NJ9DDYChMv7Z9El1CuPG12 g==;
X-CSE-ConnectionGUID: 7zMngPWfTtOTDU/pXvFQFA==
X-CSE-MsgGUID: 2zgNR3kBS5iZflSoZlENXw==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="52733572"
X-IronPort-AV: E=Sophos;i="6.14,222,1736841600"; d="scan'208";a="52733572"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 21:45:31 -0800
X-CSE-ConnectionGUID: PE2W+uwDSg+YOngdpZk/mA==
X-CSE-MsgGUID: ZQwjFqSqS+2mKxFVETW7+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,222,1736841600"; d="scan'208";a="123693351"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 21:45:31 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 4 Mar 2025 21:45:30 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 4 Mar 2025 21:45:30 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 4 Mar 2025 21:45:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qpSmcXj9zrOXNEUK27LsfJtSgfsJEY5NUgYkfXb8MFPDr5S+oiLEBaVoig+GlIqCwRBZX8CNyjyoauOoVsaKNHhBh+FruD0ShzjdL9yc+9GZpnOTbkypk8z5ykQ4uao9xWDt0uZBT3Ra8gL65gOgZBkFmt/0mefs63Pq8QLAhkv3h0hCpsr2l18H1AX2fRAqqA/u5HkbWBYDRmXDTnoLQA17XveLkIN/Ogi+aQkK++AweOg7hbGK2i2NLU7ClmiAWM6ecUJ4bnH/VyBb/8OLMe5XlwkKPQxwkkARpFVzqpzRIJJYpETkEOKNwS7wuWpmaT3JZTaouwNy3c5NglHVIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bh+B4+F80bkfW7PhpRqC4IOwHSzSFfodEkEhSH0j4UI=;
 b=aM/cDrq2HxycxnVfocv61h4fg6aSFvLEe8b1k304YYq4xjA0DpSCBVdPQUKZRd2J+afva02JHAZyvbNMLoLz9Meph7/shfLQpiJXRqRiVEJ++bfhGLlxAf3RIfGwfwmz0JP1mL9zgR6mOPnmwinTSR6GSB6WvBp3X1CiMkTVQ+PaXmNiA+lUdQ08GcCxE7sya358BRS2k5OL8gFWhaTzesEObnnBwMZ1HTrqmd6afz0UHAr9QCMAnboZeTVmfuYI67hZNufTkf4ixEraHCEjbsz1/8yaL4G4KFX5fnspSY1CkeXGP4LKJmVRpgCDhdCq38nzPrQN6RnVUBQzVrCKeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN9PR11MB5530.namprd11.prod.outlook.com (2603:10b6:408:103::8)
 by CY5PR11MB6390.namprd11.prod.outlook.com (2603:10b6:930:39::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.28; Wed, 5 Mar
 2025 05:45:00 +0000
Received: from BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::13bd:eb49:2046:32a9]) by BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::13bd:eb49:2046:32a9%4]) with mapi id 15.20.8489.028; Wed, 5 Mar 2025
 05:44:59 +0000
Message-ID: <592b746f-8aba-49a1-840e-9914865b6a4b@intel.com>
Date: Wed, 5 Mar 2025 11:14:51 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] drm/i915/selftests: Refactor RC6 power measurement and
 error handling
To: <sk.anirban@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <anshuman.gupta@intel.com>, <riana.tauro@intel.com>,
 <karthik.poosa@intel.com>, <varun.gupta@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
References: <20250304123812.2445352-1-sk.anirban@intel.com>
Content-Language: en-US
From: "Nilawar, Badal" <badal.nilawar@intel.com>
In-Reply-To: <20250304123812.2445352-1-sk.anirban@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MAXP287CA0011.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:49::24) To BN9PR11MB5530.namprd11.prod.outlook.com
 (2603:10b6:408:103::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN9PR11MB5530:EE_|CY5PR11MB6390:EE_
X-MS-Office365-Filtering-Correlation-Id: 9c0b9e1d-77a6-46dc-2945-08dd5ba8de15
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NnZHdloyMUkzTmNVYUdkWmxJR3Y1YmlzdjVDa1V5VkJ3MzVRTlY0anF3Y2xG?=
 =?utf-8?B?U3A5bUpFNlRkMVVHL2djTEwzUURNcEV2YUhsbTU4LzIwRVpSb3lsc01hTDAr?=
 =?utf-8?B?OGI1NDNIL0VLdnhldFc3T09GQlJOVFoyeHYvd2VKWm9wSHJKYUxqQnNvT3d3?=
 =?utf-8?B?MDJNcm5rcnhnVEVON3lWTjQwc0JlRUlHZjlzdjBJYVpMNHl0cCtrZ2ZvUitT?=
 =?utf-8?B?UWtjbW90MndrYU1OS1BuZ1ExWGNVK3Bld3dGaGJZVUZ4V3g5OGllY1FHUXE2?=
 =?utf-8?B?RnU5UUxOVE9YYnMreHRNSzNHdFo0MjM0T1g5K0loOXpzaVdYbzJOK0pYZmFn?=
 =?utf-8?B?M2lEV1dYQ2dsbysyRWczTDUzYTkxamROUTAxdTF6Uk9ValFNd2VETEphMkk3?=
 =?utf-8?B?bHFCUHBwa1pSekE1RnNKUmNmVnoyUTFTeFlQVGlXVHE4ZTQvNC9tSXp5YVRr?=
 =?utf-8?B?VENGbnFpL1FWVThCV0l2RnY3RStHc01lR09tL3VBMWdiUTZTSFYvck93dDk0?=
 =?utf-8?B?RElTR3RTZG5lTWJwOUtrQlBqNDNwWW9OWXkwNUx5NUwwdTBMV2pkYXVYUmFV?=
 =?utf-8?B?Tkx6dCtYUlZncGxiNGE3dGVyUTJUalhFdm9NVHlzbFc2R0ZhQlQ1ZEF6UWlk?=
 =?utf-8?B?VWFCK1NQR1dUdDlJMnI0cHJ4ZE8zNDRLalVBb2FubEdQa1RWM09BMmJudW41?=
 =?utf-8?B?RFVRblNqQWcreG14N0svZ29WRGt1Y3dNVDNUY2lIVjFUbmRIeC84NWt1Qms4?=
 =?utf-8?B?MUVnRkd4dENqWVB6MFJtNHhXOE10TFFTVW1TdGFvR0psTEtjLzhERFlQMFY4?=
 =?utf-8?B?dzFZblRGK0FOdXoybWlyMk8ybHA0azVkcVVPSERXVUUrVGRDcWFMY3NyL3R2?=
 =?utf-8?B?Z3NPakJURWw4Zng0Z0pjQ2hIZStZb2FRbE9EbDJLU2ZRdFFKekpmcm5xYUFW?=
 =?utf-8?B?bEFsaTMwVlB6cDVmMGxBY2VCcGwzS09jbTN2M3cvaDJNcjhzQVhXeC9JajY1?=
 =?utf-8?B?azNBaUlmSFBUc2ZlemtOcWRCc0g2blA0L0F0TUsrYlJlVE0xUkpWMjhkQlJG?=
 =?utf-8?B?b1VLSjlRYWh3WU5xY0RMcVU3OUlwZTdmWGZDd0M0RE1LRUhOd3dqZ3lNc2Nv?=
 =?utf-8?B?NEVYYVVwMmlHWm9GUlA2ZU5paWQ2aStNbHlQQWhvZERpUVYxZXhaSlBQbWpO?=
 =?utf-8?B?QjJuUDlLM1U4QVBlZTZqMmlKdnBpWG5BUnpiSnhVUUpCcElONGdsWDJwMmJS?=
 =?utf-8?B?clhSYmtORmJkTUp3WkxhbGN5ZXJTZGVqSGFXdVdpaURTWkRzYmFCby9iUDc2?=
 =?utf-8?B?MWpwSmY4TzZlSUQxd05Ba3I2VGxCZEc1U1AyUHFjcVdGOHQyQ2NCMDhUWVNX?=
 =?utf-8?B?S29PMFllOGQ1THRZZzVPVEJseHc4TUdkZk1PYXZPaW53Wi9nbFREUkNZd2N6?=
 =?utf-8?B?SWFKS2RFaUwwQTl0WWtPcGlURVhpQVhwUjB1aFNjZUk5dVEzVUNhY2M3YjE0?=
 =?utf-8?B?SnJONFhUTUx0ay9oNnlGeXVEeWVLK1dFelhqY2xSUmFTTDBuYzV0UlluNmhX?=
 =?utf-8?B?OTdlcGNUOEpVdXZlU1Y0SitzWHRYcDltZW9sV1Jabzc1TnUyOW5aSkJjVHIz?=
 =?utf-8?B?Ri8vNmprVkNYZ3BpVVdPMXFVK2FZTXBUVTYzYXRMVDhsd0l1YkFqV0JmSy9l?=
 =?utf-8?B?Z0l1bXZabjBEQXZBRU9yb2NscXhWemRGY2d5V2FzS3dvalMvWGxHYlVWdkdt?=
 =?utf-8?B?MlVJMmtQamFiL2pWelhVdkwwaTlXZDFoVkpTTUV3ZHlpcFVBUTQ0TW16aUtV?=
 =?utf-8?B?OTludzZqRUFjdEoyWmowdDUxM2VpbXdmdEltMmlrTWtKT1lNNTUrQy9PV09z?=
 =?utf-8?Q?4sEuQ0vy0M752?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5530.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L0x4V0w1Q0Z1N3dFb3ltK2k4V1RyRWFiUlpZMjNWYjB5U0hJamVBa0szd2xR?=
 =?utf-8?B?bVAwNnZmZFdyT2xGTWZra0NGdmF6Ui9PSzUvKzUxYk1XUmtSMGFMRWsvSzZV?=
 =?utf-8?B?bTMrbDVlUWpNaXU4VGRRbHI1bndBcEZPcDBLUGJudFNUTVZiWGc5dDdqT2NV?=
 =?utf-8?B?bjRmN3pLTmkrNHR5Q3c3aWxUcCthUXo3UUdidkhWRDJBam5lQjBXWURnOFVj?=
 =?utf-8?B?anorL2tqQnUyN3cwaFRLU3lQbkk5RDBpd0J5QXZxS0ZwT3RFQ1J2cVliTUhT?=
 =?utf-8?B?NUdtd1QwK1Y0MFFVdUxxelBrUC82YTRDdHh5TTlOaTFGdGJmbUNxMWtmbWh3?=
 =?utf-8?B?NVp4bWw2aDZTNW4rWDFaVUFZckN4UEcxWk02clRKOTlieExMc1UzRVJ0OTFy?=
 =?utf-8?B?eGV6VjEyL0tqclJ4Vm1wb3FUZVlLNXpjS244a3JIb3FmRTBwbzlkMWY2djRj?=
 =?utf-8?B?cm9Ic214M296clZQYVZ4VE9XOGVNdUltYXFqci91ajFNWjVHbVVPMk1tSmFi?=
 =?utf-8?B?MUpOK1NBVk9FYnJLSzlCSGxuYU9JMGVRczh2SmxNOUw0ckVZdVFCbWg2ekEv?=
 =?utf-8?B?WFBjMzg0N1lOREFpV0NqK2Ztei93M0NhWFBnK1BJNHcvNFZXdzhDTzAyRDRs?=
 =?utf-8?B?MHphWGJxRGFtRnRNWmppTC9nZTJhUHFIQmgxV3VNcWY4QnJzMTVGTmFpdUY4?=
 =?utf-8?B?YklXbGxiVTZrTThYanJxU0hObkhDbXBERUJsMmJRMmltbk02TjZkRmMvVGhy?=
 =?utf-8?B?RnVLSWVsMGY5QnNtMTZlTmVaNFJzOWJoc04zUXIrYVZSZERsZFNKSjZhUkdr?=
 =?utf-8?B?ZGNmSGhwNEdPQlBrTEJnT2JvWDQySjZrUi9jOTZ3dmVZY1VsV2VxWVhXMHJF?=
 =?utf-8?B?bE5yZURuMXJDNVFhRXp5bHU1dnQzSzNxSnIxdTZkTXhIR01ISTQvdWpxeHJ5?=
 =?utf-8?B?NWgwMzBwOUhacTRQd3dWUWpteTgyYWh0eU5YV0VmU1JrOHMxWG5vZjFhVlZC?=
 =?utf-8?B?RitXNUZDQ21tYW5NM2xZdW9pQWxQNjBXenZ6MDNLY3Yxc2VhTUd0eU1Cc2Q3?=
 =?utf-8?B?NUh6SVBtLzV6cFdGRnJiUkE0Z2hiaWt6czl0TmI4eGhMamg0SWpGSGVQQjhj?=
 =?utf-8?B?VHY3TnVyVUxSV2NnQUl5bXU4MGx1QmE5Q0xuUkYwYi9NZWdLdHEyLzlWL1h6?=
 =?utf-8?B?NERBRFlEVGxLdnRqeFZoSHc0MHMvbUVTd21vUHNZWlRRZ2ZEQnRlWXJLWGpO?=
 =?utf-8?B?RC9XRGxiTWxYRC9iWFJKVDVyRWdDR3JwRzlNZm51cnVWR2RhN1ZqMStZNjhU?=
 =?utf-8?B?M0p6MTJwbXVXNjdjSnhkM1JodmkzMjRuSmkyTjFRR2RGZFB4MkhWbTFrT0dZ?=
 =?utf-8?B?RlNHQVVpOUhCYll3aTVESXYvbmZjNVkxS29FS1BCWDExZGpGWEIzQSt6d0ph?=
 =?utf-8?B?ZWxaQUZUSG56K0tOdkt4WE1aRUlSVXlqRXhwVEo3VjZ6MDFYazk3OHlzOTA3?=
 =?utf-8?B?SmplZXZoRFdRWW5JWkhiN250WWFGMzR1eWlVZXc5WjFUcy9URkMvcURFVUs5?=
 =?utf-8?B?S3V0VEprVlZrUEZpYkFacW44WWh4cDRLQUlOYVZsN2d1MXR0UmxVc3R1NmJ4?=
 =?utf-8?B?cTRwSEtEbUJjQXd6YXQvWTBKUlBkK2VvM3RWMVQyQ1pYY1FaRmJFaThqdzd1?=
 =?utf-8?B?Y2NqbEphYjkwcnl1UDBsRW9oYzArOFJPRWE1OG9TYVBuWjJsZ1ZIUHYvWFBX?=
 =?utf-8?B?UFZnWGtKUW44NVIvS0hoNWRwQ2F1WDFKOTFHcEJVbS9tWUk5b0tvS0J2R0Z6?=
 =?utf-8?B?RHdVQW8rcm1VSU1jQ2dSVmNMZVdONGtNN05KZXRuWTljVmVCeklHN1hxaHF4?=
 =?utf-8?B?Z2JjR0xzWlRQWWhobnJYSGNiSUdHSml6QnBRcTVYS2RkS0VucEMzNFRNYXBV?=
 =?utf-8?B?a21IYkN2bk93dU9HZzAzcTJMSjdEV2hDZVNUUjBhZVRSdjJXa2l4a29DZGpI?=
 =?utf-8?B?UUVzbWJlTVY4T1RISXVORXExZllmck0yMFkrb1drTkhUK25RZmJpUG16RUhQ?=
 =?utf-8?B?THNGdndTS3krSnhRcHV1N2VzZU91Q0hhbFl3ekdQSjJFUjNuMmFXNjM4WXpC?=
 =?utf-8?B?Mko4T3FRU1BCKzUrTkh4MDdZaFJTSGJ6cGNNcnVXa2RtV0JMa3BoN1dNeWM2?=
 =?utf-8?B?MXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c0b9e1d-77a6-46dc-2945-08dd5ba8de15
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5530.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Mar 2025 05:44:59.6421 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aTE/RQ3p1O5rGUca4++xI5AvItVL6aQxDkP/i9ty30TDPImCz4Y7ltiUQiJ9hm/xM9yL3bOXiP8k7YHd3PcEww==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6390
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


On 04-03-2025 18:08, sk.anirban@intel.com wrote:
> From: Sk Anirban <sk.anirban@intel.com>
>
> Refactor power measurement logic to store and compare energy values.
> Introduce a threshold check to ensure the GPU enters RC6 properly.
>
> v2:
>    - Improved commit message (Badal)
>
> Signed-off-by: Sk Anirban <sk.anirban@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/selftest_rc6.c | 61 +++++++++++++++++---------
>   1 file changed, 40 insertions(+), 21 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c b/drivers/gpu/drm/i915/gt/selftest_rc6.c
> index 908483ab0bc8..30bc2ff040ce 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_rc6.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_rc6.c
> @@ -33,15 +33,20 @@ int live_rc6_manual(void *arg)
>   {
>   	struct intel_gt *gt = arg;
>   	struct intel_rc6 *rc6 = &gt->rc6;
> -	u64 rc0_power, rc6_power;
> +	struct intel_rps *rps = &gt->rps;
>   	intel_wakeref_t wakeref;
> +	u64 sleep_time = 1000;
> +	u32 rc0_freq = 0;
> +	u32 rc6_freq = 0;
> +	u64 rc0_power[3];
> +	u64 rc6_power[3];
>   	bool has_power;
> +	u64 threshold;
>   	ktime_t dt;
>   	u64 res[2];
>   	int err = 0;
> -	u32 rc0_freq = 0;
> -	u32 rc6_freq = 0;
> -	struct intel_rps *rps = &gt->rps;
> +	u64 diff;
> +
>   
>   	/*
>   	 * Our claim is that we can "encourage" the GPU to enter rc6 at will.
> @@ -65,9 +70,9 @@ int live_rc6_manual(void *arg)
>   	res[0] = rc6_residency(rc6);
>   
>   	dt = ktime_get();
> -	rc0_power = librapl_energy_uJ();
> -	msleep(1000);
> -	rc0_power = librapl_energy_uJ() - rc0_power;
> +	rc0_power[0] = librapl_energy_uJ();
> +	msleep(sleep_time);
> +	rc0_power[1] = librapl_energy_uJ() - rc0_power[0];
>   	dt = ktime_sub(ktime_get(), dt);
>   	res[1] = rc6_residency(rc6);
>   	rc0_freq = intel_rps_read_actual_frequency_fw(rps);
> @@ -79,11 +84,12 @@ int live_rc6_manual(void *arg)
>   	}
>   
>   	if (has_power) {
> -		rc0_power = div64_u64(NSEC_PER_SEC * rc0_power,
> -				      ktime_to_ns(dt));
> -		if (!rc0_power) {
> +		rc0_power[2] = div64_u64(NSEC_PER_SEC * rc0_power[1],
> +					 ktime_to_ns(dt));
> +
> +		if (!rc0_power[2]) {
>   			if (rc0_freq)
> -				pr_debug("No power measured while in RC0! GPU Freq: %u in RC0\n",
> +				pr_debug("No power measured while in RC0! GPU Freq: %uMHz in RC0\n",
>   					 rc0_freq);
>   			else
>   				pr_err("No power and freq measured while in RC0\n");
> @@ -98,10 +104,10 @@ int live_rc6_manual(void *arg)
>   	res[0] = rc6_residency(rc6);
>   	intel_uncore_forcewake_flush(rc6_to_uncore(rc6), FORCEWAKE_ALL);
>   	dt = ktime_get();
> -	rc6_power = librapl_energy_uJ();
> -	msleep(1000);
> +	rc6_power[0] = librapl_energy_uJ();
> +	msleep(sleep_time);
>   	rc6_freq = intel_rps_read_actual_frequency_fw(rps);
> -	rc6_power = librapl_energy_uJ() - rc6_power;
> +	rc6_power[1] = librapl_energy_uJ() - rc6_power[0];
>   	dt = ktime_sub(ktime_get(), dt);
>   	res[1] = rc6_residency(rc6);
>   	if (res[1] == res[0]) {
> @@ -112,14 +118,27 @@ int live_rc6_manual(void *arg)
>   		err = -EINVAL;
>   	}
>   
> +	diff = res[1] - res[0];
> +	threshold = (9 * NSEC_PER_MSEC * sleep_time) / 10;
> +	if (diff < threshold) {
> +		pr_err("Did not enter RC6 properly, RC6 start residency=%lluns, RC6 end residency=%lluns\n",
> +		       res[0], res[1]);

There is possibility of Residency could be slightly less than threshold, 
in that case it will end up throwing error.
Lets remove this check and error message from here and print residency, 
threshold in final error message.

> +		err = -EINVAL;
> +	}
> +
>   	if (has_power) {
> -		rc6_power = div64_u64(NSEC_PER_SEC * rc6_power,
> -				      ktime_to_ns(dt));
> -		pr_info("GPU consumed %llduW in RC0 and %llduW in RC6\n",
> -			rc0_power, rc6_power);
> -		if (2 * rc6_power > rc0_power) {
> -			pr_err("GPU leaked energy while in RC6! GPU Freq: %u in RC6 and %u in RC0\n",
> -			       rc6_freq, rc0_freq);
> +		rc6_power[2] = div64_u64(NSEC_PER_SEC * rc6_power[1],
> +					 ktime_to_ns(dt));
> +		pr_info("GPU consumed %lluuW in RC0 and %lluuW in RC6\n",
> +			rc0_power[2], rc6_power[2]);
> +
> +		if (2 * rc6_power[2] > rc0_power[2]) {
> +			pr_err("GPU leaked energy while in RC6!\n"
> +			       "GPU Freq: %uMHz in RC6 and %uMHz in RC0\n"
> +			       "RC0 energy before & after sleep respectively: %lluuJ %lluuJ\n"
> +			       "RC6 energy before & after sleep respectively: %lluuJ %lluuJ\n",
> +			       rc6_freq, rc0_freq, rc0_power[0], rc0_power[1],
> +			       rc6_power[0], rc6_power[1]);

As mentioned above add residency and threshold sleep time here.

Regards,
Badal

>   			err = -EINVAL;
>   			goto out_unlock;
>   		}
