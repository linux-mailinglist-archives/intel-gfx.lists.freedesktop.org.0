Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A12AA9D3410
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 08:22:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E8B810E3A0;
	Wed, 20 Nov 2024 07:22:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iWFSPB4Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2085A10E3A0
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2024 07:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732087328; x=1763623328;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=S13kXu/3y7aw+NP0/QKMUCD9HF11YUuzPZv8hZoUies=;
 b=iWFSPB4YQd+i40HCQ6H1T224LFXAF99rTTiDUM+TtIrTJ/Bh0qZhhqw/
 y2D1P55csTJKmJGtWiCDPwT0ztBEbpJ3ZEP3JAHhxzcM0SdSnw+M4w3Ub
 Y+zLROxMCxa0KqxtFUgkYZvBVP7K6+CfLfaYDKA3srzAhEfuyzN4ouDsX
 Rq/Y/EVtRwoq6GL0v2xPvsIWSlptA1W0OideJ3IJfBxbI4BK9hodxI6QN
 bsrobgPRMdZRrPN1XNcg5g5LjLLjaAfSNJAkJqV9NAY/yc598T8522sr/
 fcpOvhWv6rHN+OHwU5inLhBOPLyQGUFFkqyBNJk4KR0Osj3qI7EmUnnn8 Q==;
X-CSE-ConnectionGUID: 6KL2qoTpSR2M6BYWwr3SCw==
X-CSE-MsgGUID: UTR9BTf3TquEL2udayHQbQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="35910985"
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="35910985"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2024 23:22:07 -0800
X-CSE-ConnectionGUID: m8hbrhyFSDCYyrpTfzGfjg==
X-CSE-MsgGUID: hI+EnpZZS4yIfe+mdmuwJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="120674211"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Nov 2024 23:22:06 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 19 Nov 2024 23:21:58 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 19 Nov 2024 23:21:58 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 19 Nov 2024 23:21:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QPMeMLiiYwLm0O6D6p6zMbryeSjI/V1TrQ2cCMt6UXSDSAYa81Vs/0sSzDXdGhvp88VzFLggM2NBgrCcRRIAVnjPS7W/TAfbHCpv59h0Rz2MgOnLjbTWbn9X5A8TpJr0XPXY9DdXJCtLkNoCFLklZHghdv2z3Dxv46dVpRu6IaDbpzIX/poMa1JglHJ6LH0ev/1OF14Pt4fi/mLdf/jYA8vwBFbBHpBPTF1DMPykED8wae0JwJkmlXVIALGawn+kY8Y03M2LvnDNVY1cp2SFniXk0dLGZ9gaTeFdDxnkdIo2bVAxg8KuXESokkwUqaoapzey3DeYMspJCnBHfN7jmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nEB6RbhZMI1gsNL7TCpXangLaZ2YRhn+WHtVm1ISblU=;
 b=tUUf/hLJ4cBul1mmf2bc8vjnlxCgA5HOqKmbYqOHlAtz8s6nQQDqArwxIA6y1+3US/zU0WVbOOKgAWjXgRM8G7pblAYzCL5ZKS4WI3yfEwxiW9Vfhp85eRp4IO/D7MHby4NFW2mCM+/gRIh2/Qrj0YI8RG1v+i1iduwahLkFKWQT931spGzw0kGU6wth4Azw8Fcrj+pfhqa6EgX7oY46Ec6ll4rw4qoTR0XG6XZOSaF4uZTXcu81SUjaEHKD79YTKHmKFBccwlAV99nt6vGgx2r9MW/9rdLIB2gqgQv/2gHfuBwHxIa0wLnmABdkCldavtHrQV/UlHH4Om+b+4ufeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB7958.namprd11.prod.outlook.com (2603:10b6:8:f9::19) by
 MW6PR11MB8310.namprd11.prod.outlook.com (2603:10b6:303:249::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.22; Wed, 20 Nov
 2024 07:21:56 +0000
Received: from DS0PR11MB7958.namprd11.prod.outlook.com
 ([fe80::a255:8030:603f:7245]) by DS0PR11MB7958.namprd11.prod.outlook.com
 ([fe80::a255:8030:603f:7245%4]) with mapi id 15.20.8158.023; Wed, 20 Nov 2024
 07:21:56 +0000
Message-ID: <e873c68b-d946-4254-bc8b-9a7b6a4b8aef@intel.com>
Date: Wed, 20 Nov 2024 12:51:48 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/4] drm/intel/pciids: Refactor DG2 PCI IDs into
 segment ranges
To: Raag Jadav <raag.jadav@intel.com>, <jani.nikula@linux.intel.com>,
 <joonas.lahtinen@linux.intel.com>, <rodrigo.vivi@intel.com>,
 <matthew.d.roper@intel.com>, <andi.shyti@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <anshuman.gupta@intel.com>,
 <badal.nilawar@intel.com>
References: <20241030143418.410406-1-raag.jadav@intel.com>
 <20241030143418.410406-2-raag.jadav@intel.com>
Content-Language: en-US
From: Riana Tauro <riana.tauro@intel.com>
In-Reply-To: <20241030143418.410406-2-raag.jadav@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0156.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:c8::9) To DS0PR11MB7958.namprd11.prod.outlook.com
 (2603:10b6:8:f9::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7958:EE_|MW6PR11MB8310:EE_
X-MS-Office365-Filtering-Correlation-Id: 5835321e-56ad-48ca-5d48-08dd093403b7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bEVEQUVteEh6Z0xDR2pHdFBDNGQ0VEIrTU5oNEJkVGp3MUhRRy9RZ2hNV0pV?=
 =?utf-8?B?OG4yREFXdGd2NVJmRGJBbHV5MkMydTI2WEhjS2g1ZUpyc3p3WG5aYnY2MVRi?=
 =?utf-8?B?UVNxcGhBVTdPL01HaS91Mkc5TWI4NW5VWjZRUlZLWnJzT0JQQWppUm5XSWR3?=
 =?utf-8?B?d1FUdDJCZkNURGdyeGZGMEdjWDJFTVZjazNPRVVaZzUrNWhQbzJScUVRUUY2?=
 =?utf-8?B?dmF5UE84THJzWEEwTnlLUEl1eFhnck00ejJ1QWxwSFcvNDltVk5lZ3NUelBV?=
 =?utf-8?B?SlFMNVZ3dmExdW9WaXJnNWRmYXpqVThKL2p1U1dYSktoSHJKMWppVjRySlBS?=
 =?utf-8?B?V25sS2pxM3NMb1FvN01MTjhRQTFPcEtXbDFnUHZ4ZmJVNjRlZm96YmhkejVE?=
 =?utf-8?B?RFNrcXgyWnFxaWhRUmJFamsvdUpzQ1dVMUthdktDcHZ6TjM0Njg3aElvVjZh?=
 =?utf-8?B?OCtRU05HdlNUMEcwTm91eUFCNjdURHhXdlR0L3c0eWxCUm1uOG4rTnFiTmNW?=
 =?utf-8?B?bzhZWDR1VU93cDYxdW40U3JWeGsrVE9iZ3dNK2VIMHhHL2xTY2RHaEtiQ2NU?=
 =?utf-8?B?WC9YV090b3dPQ3lPYTJMbVl0R0VrV1lJVTJJclpqSjczMHpNZUhBK3dRMjNo?=
 =?utf-8?B?TDM4STJGVFRYSGRFT05jbVk4eEhiSGJjTFZjYlRlcjFqZ3VPQitXNWR5TU90?=
 =?utf-8?B?QjZ2MlU0QnpFZTY4T1ZmOXZjMHV1WXh0VkhDQWNySDFod2tYcVJGWFo2bHd3?=
 =?utf-8?B?aG8zWm84bDdrb3hnUVZPamY1am9rWllqbHZ5UTZQZHNoWjl4R2F2dGIrVFcz?=
 =?utf-8?B?WlhyU3NaVGNaSEZ1Q1o1aEtKWWZQR0lSbWNsU096dmtESVdHZWFhaEJYSng5?=
 =?utf-8?B?MStyUzdVNURhZkJXa1F2SkwwS0hBYmtJcVptbFRKUUE0WUJUYmEyYWlGRXBK?=
 =?utf-8?B?OURsdHVUbm5KbWVvU1l2aXZockt6M1BzM3ZEUkg3Rk8wVThMV3JjZDNCbjY1?=
 =?utf-8?B?b0RsMTltcDEyTnhwekh1Yml0bUZJdmVkc3lXTVp2ejVmamdaTCtOelpteXdo?=
 =?utf-8?B?elYyaVBlQktTdVBxaitwTjZwVHdHb0NVTnNvTnBsNERjOUYyMlUxaWhwM1dx?=
 =?utf-8?B?ZGRHbUU5V3Z3bXNYRzBkYi9IV3IrM3RrRFFiM1VycmVpUjU2YjBNTDhMSzE3?=
 =?utf-8?B?Sm9NS2grcGZtRUU3Y1Uxb2o0dWZlenZMVGJQdUlIV2VtS3UvY3lIR2x2VFU3?=
 =?utf-8?B?SHo1UXRxZ292Y2svOG9reEl6NmlacHJjbHlzcWpqcGo2WVJmSWJOVzRIcEE1?=
 =?utf-8?B?UGhzUjFzL1dVUVYwTjkzYmpjOHZyaWtDTFo4SXUrN0RyL2lMTXBGVmgzTW1W?=
 =?utf-8?B?R1VEYkNEYVhDMU5WaHhJak1LQkxWUE5BdUtKb05TZE40ZHgwYnVWRDBXcXpZ?=
 =?utf-8?B?L1J2YnBlSFN4V1pSZDB0QXM4djFsb3BmcDhkZmpYUWJjNkZlRGh2UlNIdDRT?=
 =?utf-8?B?YzRMTkw4TFBFU1dXMGpVSEVqR2gwcEJLdW8reFZUZlJObVlWSDJQaTJVV3A5?=
 =?utf-8?B?bnRvc1B6NkozS1M3SG1oZ0RmR1ptcUIxMFdMVm41ZWVGZEZaeUpYSU1vbVRa?=
 =?utf-8?B?QVc0Zml3b2krV3RlcXEzS1ZwdmY3T0hCOWRqeEUreEpoL3JBb2RibDFzeTI4?=
 =?utf-8?B?QnZ2Z01qWlk3TzlFUjh0SXZ4eVpIblYwN2dNT21ZNm9CcHc0MU84Y3psdXRC?=
 =?utf-8?Q?D9meeedEWtvQHopjSbjSO7+PEOFkD2qpwX4FYyv?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7958.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b0crRGtiUmJNSjJGZTVqSisvOERuNFFCbm4yZCswbEJwRFdwbm1mbGR1Rllx?=
 =?utf-8?B?V1FJcEdQV2hrcFZ3TTArbFZXTm9EVzdwNVZ4L244U2x0Sit4YlZMWm42VUI0?=
 =?utf-8?B?M0ZnWTFTZVFjYUh6SjhPYjZ0ZzkvZkt2cnJEOTJ2TklueUtRNHRyOEVpWk1r?=
 =?utf-8?B?U2RqUWhYMnBVMHhLc2ZXTzYvMXA0MVorV2l6Q1F6QnZsY3k1YWFMaml2MU9B?=
 =?utf-8?B?VnE1T2ZTVU9jdlMzb241d2xqT0lLMlo3Q3BkRkZjOWVESXBESEtkVmxCRjNV?=
 =?utf-8?B?TEE2bU5tT2JEdXJZeWpISzlKWmVXaVV5M0NZNVRpOUhnSW9tc3l0eVdyQU1D?=
 =?utf-8?B?QkJZZjJOUU5yL3ZZc0tKL2c0STZHcTNWR1U1czNJdXVUTDBWb3hXVUY5NnNM?=
 =?utf-8?B?c1VrUkdUSHpic3BjcU16OVhyMEFHRmcwMTJQUng3K2RxTUZLSHR2ckJMUDgz?=
 =?utf-8?B?U3RPd3NzOC9tWXZJdW5hbzl4aFRvTzRmSlhEYzgwR2Nlekp6SW1UNEd0cUF0?=
 =?utf-8?B?SkVWVDl1MElRcWkxeXVobCtUZnN3eHd0S2VsVzBHZzBCc1BvVEwxWjVBWTdn?=
 =?utf-8?B?UUxGNmhCR2x3dzBOc1hLcStTbmRCSUw5bTlIa1g0dGVLb0VCa0FDV2lPTDVp?=
 =?utf-8?B?c0xOMGE0OWtRQzE1Ujg4bDMrWUxjeVZ0QjYyM0tlM2lOcHRkUVMxNy82TUtY?=
 =?utf-8?B?UDVreFJXS1pCMmNiMU50NTBUSzlRMWRaNmhGVHJOVU8vcGhPdjlHd3VkU3Ri?=
 =?utf-8?B?UXVCQko4ZTgyTGY4RGVTcnZWZVNDQzFZSGV0MUJaN05WUDZJVUVTYTJLV2ht?=
 =?utf-8?B?RFRYNnphR1JMQkF6NGM1QzV5ZCtqSEk2Rlk1MkFDQWJ4VXZMY1BWMEJadnl6?=
 =?utf-8?B?M0ZHSFJQc3BaNjh4Y2l3MHo3UDN5RHQ5Rzd1WHFnZWZJVGV5YjNyTWo3RVpI?=
 =?utf-8?B?Q1hIWUZKR056VlFQbDlKN0l1VG9CRHdqZ3V2dlQ4Vm1jSmlESHNXaUlYd2Ni?=
 =?utf-8?B?bjhJMURnWUVXOGI4dTZNNW5CZjJ1ZkZ4Qk9HMkVSRjRRZzB5b2tTUlUyNGZI?=
 =?utf-8?B?SFJIL3FpN3RoWHBGU2N5ZXlzdmE0R3podVh4RWFwSUg0eWVSQXNvMUg4SkZL?=
 =?utf-8?B?bXhjRWRReDIzeHl5ZGJxTkJZMWo1M1lYWW5TZC9ZNEkrVjRBUXRDNHlWTExa?=
 =?utf-8?B?N1FqaUFKY0FFZ0VmVWFlRG8vbVJ2dExaS2ZLbzRYdW1RNktuek5LRTlRM2ha?=
 =?utf-8?B?czhmODk1aWZCV3NUUnpPQ2tHaDczVzZMSlJLSDZ3cUVwSmpySXRUU2t0YkNW?=
 =?utf-8?B?YmtUYzB6NVpYMlFuUFpiMCthVlNJZis5RUpoNGdyaVczeUppeWxxYXJCOHJt?=
 =?utf-8?B?ODBvcUFiOVFjOWZtZXZGckI5eDhqRDVueklUTkVqNHk3eUE4OWhBWWJrc1hX?=
 =?utf-8?B?TEx0YnN0cTFvSDdNaFlDb1R4LzhlRHVaZW1qdEpFSm15WVRUempCWVFMRitT?=
 =?utf-8?B?c2FBTUMzSHlld2pGYmJKN2RWNXc4cGo2VUJNVEdRb1FzVUpsdTY0cnlHcFpr?=
 =?utf-8?B?NU10Mm4wUFB1ajhnRVpER1hDZlVpZkhrWVVGQ0xXVkZBR0pEOHJteXhUMlo3?=
 =?utf-8?B?Y1V1aHdqUy9jY3dmKzBXZnJHM0F1MGptNGxwdmdjUVA2T3k5SG9iZXZreldU?=
 =?utf-8?B?WW4wMlZId2I3bTBoVW5LdEg1ZmV4QjBQcFVDU21Vd1BXd0NOSUVjbHE5TzdJ?=
 =?utf-8?B?YWNrOG1PYzhkdVpFMlZaUHlqMW8xbHBhMU9QYUcwZCtXNFMzdDc5bkM1Qkdj?=
 =?utf-8?B?dGdXZlRmL0VqS1FRNllYOGtIL1NhM2IxVS9oMGpjMjl1WisxeGF0TG5qR3Nj?=
 =?utf-8?B?WHZ4Z3VwUTExN293Mjg1RWowQXByYm44enY1VE5kUFpqR0NhQzlKS0p4MXI0?=
 =?utf-8?B?Zlc0MVFKMlRLWklnSHk1OGlhTlNXSUc2c1ZQTTQ1SkJMVHEvU3dMU2xUL0hq?=
 =?utf-8?B?M1M3elZRbkxLTFJVY2ZRT2NlZnJmRTgxTGNPZ3VKd2dSa0RJQmVXT1hxeGhE?=
 =?utf-8?B?OUlCa1JQNHlGcjZKdDBLZko4aWsvT3o0NkJzUmVCVjQ2clp6THRFM0JhdzhH?=
 =?utf-8?Q?0S4tly56FUiD/zPa1Lg0k+TIx?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5835321e-56ad-48ca-5d48-08dd093403b7
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7958.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2024 07:21:56.5167 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lbQVB4N2f98/0S1FV9Qi2GkAQvt57UJ3hjmidgoRSUvRfAGKXATKy1ni/tperuKE5Sc9kixaHSRN/LGM9wk57w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8310
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



On 10/30/2024 8:04 PM, Raag Jadav wrote:
> Refactor DG2 PCI IDs into D, E and M ranges which will be useful for
> segment specific features.
> 
> v3: Rework subplatform naming (Jani)
> 
> Signed-off-by: Raag Jadav <raag.jadav@intel.com>
Looks good to me
Reviewed-by: Riana Tauro <riana.tauro@intel.com>
> ---
>   include/drm/intel/pciids.h | 55 +++++++++++++++++++++++++++++---------
>   1 file changed, 42 insertions(+), 13 deletions(-)
> 
> diff --git a/include/drm/intel/pciids.h b/include/drm/intel/pciids.h
> index 7632507af166..83aac9f17372 100644
> --- a/include/drm/intel/pciids.h
> +++ b/include/drm/intel/pciids.h
> @@ -717,37 +717,66 @@
>   	MACRO__(0xA7AB, ## __VA_ARGS__)
>   
>   /* DG2 */
> -#define INTEL_DG2_G10_IDS(MACRO__, ...) \
> -	MACRO__(0x5690, ## __VA_ARGS__), \
> -	MACRO__(0x5691, ## __VA_ARGS__), \
> -	MACRO__(0x5692, ## __VA_ARGS__), \
> +#define INTEL_DG2_G10_D_IDS(MACRO__, ...) \
>   	MACRO__(0x56A0, ## __VA_ARGS__), \
>   	MACRO__(0x56A1, ## __VA_ARGS__), \
> -	MACRO__(0x56A2, ## __VA_ARGS__), \
> +	MACRO__(0x56A2, ## __VA_ARGS__)
> +
> +#define INTEL_DG2_G10_E_IDS(MACRO__, ...) \
>   	MACRO__(0x56BE, ## __VA_ARGS__), \
>   	MACRO__(0x56BF, ## __VA_ARGS__)
>   
> -#define INTEL_DG2_G11_IDS(MACRO__, ...) \
> -	MACRO__(0x5693, ## __VA_ARGS__), \
> -	MACRO__(0x5694, ## __VA_ARGS__), \
> -	MACRO__(0x5695, ## __VA_ARGS__), \
> +#define INTEL_DG2_G10_M_IDS(MACRO__, ...) \
> +	MACRO__(0x5690, ## __VA_ARGS__), \
> +	MACRO__(0x5691, ## __VA_ARGS__), \
> +	MACRO__(0x5692, ## __VA_ARGS__)
> +
> +#define INTEL_DG2_G10_IDS(MACRO__, ...) \
> +	INTEL_DG2_G10_D_IDS(MACRO__, ## __VA_ARGS__), \
> +	INTEL_DG2_G10_E_IDS(MACRO__, ## __VA_ARGS__), \
> +	INTEL_DG2_G10_M_IDS(MACRO__, ## __VA_ARGS__)
> +
> +#define INTEL_DG2_G11_D_IDS(MACRO__, ...) \
>   	MACRO__(0x56A5, ## __VA_ARGS__), \
>   	MACRO__(0x56A6, ## __VA_ARGS__), \
>   	MACRO__(0x56B0, ## __VA_ARGS__), \
> -	MACRO__(0x56B1, ## __VA_ARGS__), \
> +	MACRO__(0x56B1, ## __VA_ARGS__)
> +
> +#define INTEL_DG2_G11_E_IDS(MACRO__, ...) \
>   	MACRO__(0x56BA, ## __VA_ARGS__), \
>   	MACRO__(0x56BB, ## __VA_ARGS__), \
>   	MACRO__(0x56BC, ## __VA_ARGS__), \
>   	MACRO__(0x56BD, ## __VA_ARGS__)
>   
> -#define INTEL_DG2_G12_IDS(MACRO__, ...) \
> -	MACRO__(0x5696, ## __VA_ARGS__), \
> -	MACRO__(0x5697, ## __VA_ARGS__), \
> +#define INTEL_DG2_G11_M_IDS(MACRO__, ...) \
> +	MACRO__(0x5693, ## __VA_ARGS__), \
> +	MACRO__(0x5694, ## __VA_ARGS__), \
> +	MACRO__(0x5695, ## __VA_ARGS__)
> +
> +#define INTEL_DG2_G11_IDS(MACRO__, ...) \
> +	INTEL_DG2_G11_D_IDS(MACRO__, ## __VA_ARGS__), \
> +	INTEL_DG2_G11_E_IDS(MACRO__, ## __VA_ARGS__), \
> +	INTEL_DG2_G11_M_IDS(MACRO__, ## __VA_ARGS__)
> +
> +#define INTEL_DG2_G12_D_IDS(MACRO__, ...) \
>   	MACRO__(0x56A3, ## __VA_ARGS__), \
>   	MACRO__(0x56A4, ## __VA_ARGS__), \
>   	MACRO__(0x56B2, ## __VA_ARGS__), \
>   	MACRO__(0x56B3, ## __VA_ARGS__)
>   
> +#define INTEL_DG2_G12_M_IDS(MACRO__, ...) \
> +	MACRO__(0x5696, ## __VA_ARGS__), \
> +	MACRO__(0x5697, ## __VA_ARGS__)
> +
> +#define INTEL_DG2_G12_IDS(MACRO__, ...) \
> +	INTEL_DG2_G12_D_IDS(MACRO__, ## __VA_ARGS__), \
> +	INTEL_DG2_G12_M_IDS(MACRO__, ## __VA_ARGS__)
> +
> +#define INTEL_DG2_D_IDS(MACRO__, ...) \
> +	INTEL_DG2_G10_D_IDS(MACRO__, ## __VA_ARGS__), \
> +	INTEL_DG2_G11_D_IDS(MACRO__, ## __VA_ARGS__), \
> +	INTEL_DG2_G12_D_IDS(MACRO__, ## __VA_ARGS__)
> +
>   #define INTEL_DG2_IDS(MACRO__, ...) \
>   	INTEL_DG2_G10_IDS(MACRO__, ## __VA_ARGS__), \
>   	INTEL_DG2_G11_IDS(MACRO__, ## __VA_ARGS__), \

