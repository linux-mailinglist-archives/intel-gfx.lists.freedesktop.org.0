Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2717A94342F
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2024 18:33:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C3D510E689;
	Wed, 31 Jul 2024 16:33:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bEXXTpDd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF08B10E28C;
 Wed, 31 Jul 2024 16:33:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722443631; x=1753979631;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=U6n9Qzka0F6bLKrKCra1a1Z7/j3/gXuu8Dl0sczkekY=;
 b=bEXXTpDd65+4slmTFd3XYfQgOFz9YC3nciBflW69UbiIDSu/1vN9gk10
 jmykYFCy6JnR+eGmriOj+F0B0ru3CHWLaA8cH+8VmFcw1I5oeOWvJzE+4
 Pjdtx3J2jwAFKd/+VlMUybQl9h/Rd9zEeevAyxl82m0GLZws6/aDIvmTW
 MPUyt+RXsqhSlkSlwopwobV/iBTUUC8I7RVw+U1xEsBWTKec4Yhss/jug
 IxQsKcsPNcEuzs1BASFsFJ5GNDj9pfJ+sfjTdOwPtYoum4u1Xsly6rdej
 mQR5sqlYhh41HNSuWTJqoYZ9UDhvoRzTfwndHOwuziH7FOGYOmYHqScTu Q==;
X-CSE-ConnectionGUID: y+aziDlgS5OVbRi8U/GDOA==
X-CSE-MsgGUID: k8GmwmAOQ0K7Yn7oR1L9uQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11150"; a="31488071"
X-IronPort-AV: E=Sophos;i="6.09,251,1716274800"; d="scan'208";a="31488071"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2024 09:33:50 -0700
X-CSE-ConnectionGUID: R1fFkM6rSjuAKVBTIxx+iQ==
X-CSE-MsgGUID: isDwOMsDTViYIUvbWjF5OQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,251,1716274800"; d="scan'208";a="54802048"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Jul 2024 09:33:47 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 31 Jul 2024 09:33:46 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 31 Jul 2024 09:33:46 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.45) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 31 Jul 2024 09:33:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vyF+17fddCqBMt269/KuZmBqF0tNjyeLRYPPOan6KoyITgKpIcPmq2kX7FfX8zK6v5pcqPRrjfCq9fAtqiyNOq1TTzFojaELp4UGle85W8MjRusP40T/B69P7BmN3tjZ9hMGwbVXGXnMKf+Frbru73ypPZlwp4W/1vDyIjAxMyPPgeDwW3lh82xXIRrazR9FAMWY0O/vy1dfLd+/Ai1STNWDOpOc5K2ArhtNWh8hkH+0yaVZVhkHW8OkXmuo3/ShMRB8fns1RUJCuWmGVtK+ybCeJI9wpDS5Qgk4y5VljmpBNSIVda2zqu4MwmjMwaPfCLrwpvkiz/zxsfqOkERnMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZG7p1qs4Ny77Xg/RFUHejOwdoSKPorB+iQbe891hYvA=;
 b=HjqMPcvtY/DbofnzNv/RGKlnQ9Uv2A3eylx3ckxA+tvwjebgy/oBAbCfAH0AEgyne+hXoOYU/nQSG4BLirkJBPNCH2+vFwSdDLSDbHDgyc2uRgnpd/Wevlqma13j5lAEevZEFffyGU0Ri187WPTXRq6VmH4z86ZbYHP0AOCY9TSPP6GyPsjhhUrFmlqC3WHxyc3OjypbqNe+HmrEilSJ0U2/BOvvpmTuTZTSMPZ0YjPapA7lFGU+tfHS4i5EWrWBKU3aZdYZFSxWbagvFSv6J4N4e8rWEe4EcMQz635cfC7WBIfjg/C0gWMmESn1bRlCPlw0XO0USasYtIS6GdZkpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB7958.namprd11.prod.outlook.com (2603:10b6:8:f9::19) by
 CY5PR11MB6260.namprd11.prod.outlook.com (2603:10b6:930:23::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7828.22; Wed, 31 Jul 2024 16:33:43 +0000
Received: from DS0PR11MB7958.namprd11.prod.outlook.com
 ([fe80::a255:8030:603f:7245]) by DS0PR11MB7958.namprd11.prod.outlook.com
 ([fe80::a255:8030:603f:7245%5]) with mapi id 15.20.7828.016; Wed, 31 Jul 2024
 16:33:43 +0000
Message-ID: <3b9f25a7-bb4c-4e1e-9b7c-c0ca6ba85ef0@intel.com>
Date: Wed, 31 Jul 2024 22:03:35 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 i-g-t] tests/xe_gt_freq: Avoid RPe usage in subtests
To: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <igt-dev@lists.freedesktop.org>
CC: Badal Nilawar <badal.nilawar@intel.com>
References: <20240730230123.2695162-1-vinay.belgaumkar@intel.com>
Content-Language: en-US
From: Riana Tauro <riana.tauro@intel.com>
In-Reply-To: <20240730230123.2695162-1-vinay.belgaumkar@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0023.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:b8::12) To DS0PR11MB7958.namprd11.prod.outlook.com
 (2603:10b6:8:f9::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7958:EE_|CY5PR11MB6260:EE_
X-MS-Office365-Filtering-Correlation-Id: b8e09862-eb92-4c7c-e68d-08dcb17e8aff
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YUc1TDhJcVc0WFRyNDRZUnd6VkRReEU0VmZMZU9GeWUyMThxT09NbER1L0Jm?=
 =?utf-8?B?eEtRZ3EvVmRMM2hKdlZQbmRBKzByVTAvRXRPdkpPR3YwUWV4b1hmUTgvUG9X?=
 =?utf-8?B?empYTzJaTTRlL0tDSlpPOW4vdmlGbFRpK0ZaRjBYSk93dEdXVTcwRE1DME9R?=
 =?utf-8?B?VElhVitTcW1iakFLOGhveUt3THRwNDlwK0MxOEFTekRVR0ZjNEdaRDVWd2Fr?=
 =?utf-8?B?QnE2NkFvaWY0MktPZDZzSENXRlpTc05sd2l6RlQ0VjZEV0EvTG5oS05Td0Yz?=
 =?utf-8?B?TTYzNTE4QkM1YnlzaCtrSEd4c3dIRjlNK2gzS0tjajZ4RzRYME13YnB4YmFJ?=
 =?utf-8?B?enFDVklVTjRTLzU2Szlxd1EzZzNyNVFKQ1dUbyt6dWlYWm13Rklqd2R1RFFs?=
 =?utf-8?B?akp0U3F2MmNaRG1EV1RtR1g5TllSbk9hZitqZCt5Yko2Si9tK0R4YU44MlJI?=
 =?utf-8?B?MFV0bjdWeDFrTHhTRGV4bVQrSnlTUzJGQnMrUEZ3SktUUDdLYmpxSjkxWi9k?=
 =?utf-8?B?Snp5OWl6cDMvSlJFYmhwMkVGUlVybTcxY1BvWmVUa0xVYUc2Vk14S1FHVDBs?=
 =?utf-8?B?blQ2MHc4bVhueS92Rit5Q3dicHNpRHlFWnpSVFdkZm56aFR5U2ZzNG5BZ3lL?=
 =?utf-8?B?d0NjOGdwRitLOW50RGk1UlFvSHdmOFZsV2pHL0pBQW81OEMweFdPZEhlUUdI?=
 =?utf-8?B?SWpxL2ZLRXI0RnRXRGZRNzlzRXdLV2dLTU9IdWlQalNLKys3aXpaNVJCK29y?=
 =?utf-8?B?MlpmeG5YWUxFRERZM1k2Qm5nRDFNc3YvckJSL2tyYWtJdUY1TDFWMVliZ05S?=
 =?utf-8?B?K1FjbDBnbHpEUmxQSmwzTFFZY1lrMVVkdVhOczJ0dkJKVlYwTGNkbHVicERC?=
 =?utf-8?B?MkVPUHNkaThrYklqcG5pTW1QTGNTWWVERnViSWxTM3RiOUlIZVhKWXI0Zk9F?=
 =?utf-8?B?cFFUYnoweVpGeWlSOGdyQ0h3eVZrWHJRMnJKVDZ4cTd2cFZOMGxocWtGUjJ1?=
 =?utf-8?B?VFZldE9MYXdOVTVMV1hzeitCMkFOY3VadzdaeTRkVkJWWGJIdG5ZcXl6VDZa?=
 =?utf-8?B?dldRaEY1Zk9DMGVaZTBTbW9vb2V1UVNMYS9uYzB2WHNveGhvVnJWbFU5UzZs?=
 =?utf-8?B?STI2YjhxOFZJYnhEK3dpL1E3RVlBd3V4Y3Y5R29FYXNNMVNraDJOZHJlVkFD?=
 =?utf-8?B?M3BxNWlSc2JCT3lDWXFEbXNCRVRkUlBWUXRYMk5QVUxLd3lTditobzd6ZXdl?=
 =?utf-8?B?T211eUVPSTJ3T2RjU1l2bDFFblc2U2VJL3RBaFdKZXVFakJrS2ZNTUVDL1dF?=
 =?utf-8?B?K3E2Z0pmaUROTmgyOTlCOEh4VjV2Rm1QWDNmbDR0YkwyRGwrQjdBZTk3QXlI?=
 =?utf-8?B?MVo0S3FVQVJxVWRHQnUyaS83ejVtS2hJenFrZHFwU01pR0RTYU8yQWx1K01T?=
 =?utf-8?B?b2txQlZkZFhnQ21EbG1yWDhCVE9lWEk5RExvWHk1K2tENFVWMklGQ1F0VU8v?=
 =?utf-8?B?V013T3BpNENIalp6YlozZkx1Y0VCWW5XNUFkWVFyVTVQVzdpUk1IaUZLVGJN?=
 =?utf-8?B?N1B6U2FVNkJCOTN2TWJOS2JOR3ZkSU8xelZmWTRjYi9TdndlWnVWbnBmdHBB?=
 =?utf-8?B?OHk5ZWJBSUdINlpoTW9VUW9MNm1jK3RkUEZub1F6OEtMUGtiWlBJSmllcTdM?=
 =?utf-8?B?UWpuRjMvUFFyTmdiQ3kwMUNkaGFzTVQ4NUNMQXNwOHdXUUJGTkFKRTFpdDRW?=
 =?utf-8?Q?hOx5C4V0mTY7BQK55M=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7958.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SzJLR05mWVZqVjA0UU15SVJ3dW5wdUtoQ3cydDdEeWU2NFdDbkhwVkxuZnJt?=
 =?utf-8?B?aWlVTkZmRVo0dkJQNkJJeWQ3bXd3RDlzY0VjeVBkWnhqcEw0VVFuZGZZT3ht?=
 =?utf-8?B?L2JKWlJHU2pZVmVOSCs5cDBHbmx2TVluTkxtMm1ISlpGSWx0RkhlNlNjcnZ1?=
 =?utf-8?B?Y29yQVdPSllKd2J5bFFpYi91dVZPY1hXemtDZzBtelYxd0FDd2ZsYUEvTzlX?=
 =?utf-8?B?ZGdrekRhYWgwSGZ4ZWt1Y1hsdW1XMWFKUStmTlVJTVVOUXJSWE5RUmhyUVZi?=
 =?utf-8?B?ejY4MnFKSXlVdlNDMGVPZm5yQmxPRWdXMTdia0cxZzVITEEreXJSckVKVEhL?=
 =?utf-8?B?Z1grVEZ5dGtLSDlFbHZ4c0FYUmRib2Z1WmlvQW1tVVVjeW1RNmdwS2pKSGxN?=
 =?utf-8?B?Ym05b2l1WVVrRUdSU3dpSmRmQm5GbjdBS3hBY2dkYXYwT3p4TUFLTUNDYmVV?=
 =?utf-8?B?MFNsN1FwWXMvdWVnbWRRekVKcTVkVXNMTjRDMjU0N2xlZ2R3MVI3V1JTdytE?=
 =?utf-8?B?VXV5aVlqMFJQSmo5ME42ZHFFd0p4b0d3YUVIQTNFMTdoanc3RzlSakxTblJ3?=
 =?utf-8?B?LzZSemRjV1ltOEpJSldsODVILzRUWDFEN1VBNGpmeU9iVEpoVFBuRlMyZ3pa?=
 =?utf-8?B?Y0pmYzZIei91VEFnYks1enFUNzNIU1B1OThhWXlBUm1JdCs0MEtOd0RNKytH?=
 =?utf-8?B?MHhYS1ZqK1FQL1JEUEgwSDNraDlUMXhBT1pWQjkvcHY1ZXN2bFVqWTl4Ym5o?=
 =?utf-8?B?RjRYam4yZ01PU1JwbUdCNng0cUNuZGcwbnBKUXplN0FEcU0zWkEvZlhQTWEz?=
 =?utf-8?B?QlVIOG9KcWJhTUFNOUdZRTZtQk5qWTRxWVFEdU5vczhLM2dreVVpUzRvekow?=
 =?utf-8?B?TWRvY3BQK0Y2T0o4YTlyRGsyN3JMQUNyVDZWU1VDNUo5N1BDTmRSVFpUOTNG?=
 =?utf-8?B?NUY2K2dWWGdNT2RiR01nUHMvVXVsUXR0VU5reXZ1N29LNDN4SnVCT3Z3OWR0?=
 =?utf-8?B?d0I5d3NKN0lPRWNUYlR1azRnV0hPVFI5RVVUbDVqcDIrbDJ2OG1UcnZmckM3?=
 =?utf-8?B?dFRuWU9SWG1mU2hnT0gyTkFUTEhSMXdyYXdmQWxQRkkzRENKNXk1ZjhEdldh?=
 =?utf-8?B?NzRFVnQzbjJQbHpQQ3Z4ZmdUdkVyUzJFNHZiVitNOGU5ai8vejdhY1ZzbU1F?=
 =?utf-8?B?QUlaOXR0eG43WHd1UXp0ZWJMN0VzK0lxaDJMVHRKR0tDRlZyaFJjTWZ4Rndk?=
 =?utf-8?B?YnhZaDlaNFhuSkpScWtNRmZVdEJXaE9QQWtsZVQwUVJxZTVFeS93VDE4RUYz?=
 =?utf-8?B?TVlIR3hkclpORFA2bS9KdmpFUVFmUUZJNDF3OC9QWHY3RmQzUzY2bnJ5K1ZK?=
 =?utf-8?B?c3RDUDBndGJvSW91RXZmMWowZ3F3WWxtLzZLNlJqbGw2OWdkcUJseE1MTUwx?=
 =?utf-8?B?Nmt2OC93aHo1YVhZZjJrbk5wMjBKcHlVWDVnekZCUG1ySW9yMEcwSTNpeWhv?=
 =?utf-8?B?b082MXRvVnlScHAzTDRvOFBaOTJQVUNMZHZmSUh4bG43QWxNWnhoRWNndk43?=
 =?utf-8?B?WkpYMjl4L1dWWWwvWTRxUzVyT2ZnYmV0cWI1OFNhb3hkNzBxcm5QUGVBMlhE?=
 =?utf-8?B?ZnhWSVFWTzNSME83cXpBai80TkpjMHJqaVp3YUZ6K205cnBGYnJ2RWlJWlFm?=
 =?utf-8?B?RzE5OXZFV0kzZndBdWZ2WjVtRlk0T2c4Vzh2TFpOakF3UHhQTWtXRCt5MWFu?=
 =?utf-8?B?RDhPNWRnZnNjekQ1WlRWRUdjT05pSWo1M0t3eWFIcVgrVVltMHRLM0N0eTd4?=
 =?utf-8?B?REJxcDVBOENNMnl6Z1lTUUxZOGVBbHpOTEl2ZUtNb3BHNXBJbW0vaEFMVmc0?=
 =?utf-8?B?azdYbHQ4M1V5azVGODJrWlFUbytsR0NNTkQ0NHozTVNSdVdHRE5HNUFoZE9X?=
 =?utf-8?B?Y2Vzb25LS2k1QkoxdUQ0MU01WW12V1lFMTRNeWhzZ2pWdWFWckFKQVkzQ2pa?=
 =?utf-8?B?VHhDMW9yQUxYdThySEhFanl1VHlxOHh0ZVh6UkcwazBBWEJoZnpaY2I1VlZr?=
 =?utf-8?B?cEFIRVZBcXJ5N3QzQ3FZaVBMMDZIQ1pHOU9NQjN2UUJnMjJUa1d6K2JDYlFo?=
 =?utf-8?Q?Sr8E86uxt7pQb/6jgBXFvTCRa?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b8e09862-eb92-4c7c-e68d-08dcb17e8aff
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7958.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jul 2024 16:33:43.7096 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 91IL5n+0m5ng6hPVpCVMPTaS0OCg8OSu6Rk4DDoX0msIwUi21A5DGdlKRETJI/Dy72Hbq9xroS/+v6dVvjRoqg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6260
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



On 7/31/2024 4:31 AM, Vinay Belgaumkar wrote:
> We are seeing several instances where the RPe, which can be altered by
> pcode dynamically, is causing subtests to fail randomly. Instead of relying
> on it, we can use a mid frequency value for these subtests and avoid these
> failures.
> 
> v2: Fix bug in the tolerance function. Remove rpe usage from freq_range*
> as well (Badal). Fix test documentation to reflect change (Riana).
> 
> v3: Actual frequency cannot be guaranteed to follow the requested value
> 
> v4: Handle cases where RPe can be greater than min/cur freq.
> 
> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2200
> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2196
> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2262
> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2256
> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2203
> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2412
> 
> Cc: Riana Tauro <riana.tauro@intel.com>
> Cc: Badal Nilawar <badal.nilawar@intel.com>
> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>

Looks good to me
Reviewed-by: Riana Tauro <riana.tauro@intel.com>
> ---
>   tests/intel/xe_gt_freq.c | 57 ++++++++++++++++++++++++++++------------
>   1 file changed, 40 insertions(+), 17 deletions(-)
> 
> diff --git a/tests/intel/xe_gt_freq.c b/tests/intel/xe_gt_freq.c
> index 93ebb5ed0..c9d59508b 100644
> --- a/tests/intel/xe_gt_freq.c
> +++ b/tests/intel/xe_gt_freq.c
> @@ -26,6 +26,9 @@
>   #include <sys/time.h>
>   
>   #define MAX_N_EXEC_QUEUES 16
> +#define GT_FREQUENCY_MULTIPLIER	50
> +#define GT_FREQUENCY_SCALER	3
> +#define FREQ_UNIT_MHZ	 DIV_ROUND_CLOSEST(GT_FREQUENCY_MULTIPLIER, GT_FREQUENCY_SCALER)
>   
>   /*
>    * Too many intermediate components and steps before freq is adjusted
> @@ -70,9 +73,14 @@ static uint32_t get_freq(int fd, int gt_id, const char *freq_name)
>   	return freq;
>   }
>   
> -static uint32_t rpe(int fd, int gt_id)
> +static bool within_expected_range(uint32_t freq, uint32_t val)
>   {
> -	return get_freq(fd, gt_id, "rpe");
> +	/*
> +	 * GT Frequencies are requested at units of 16.66 Mhz, so allow
> +	 * that tolerance.
> +	 */
> +	return (freq <= val + FREQ_UNIT_MHZ) &&
> +		(freq >= val - FREQ_UNIT_MHZ);
>   }
>   
>   static uint32_t get_throttle(int fd, int gt_id, const char *throttle_file)
> @@ -128,6 +136,8 @@ static void test_freq_basic_api(int fd, int gt_id)
>   {
>   	uint32_t rpn = get_freq(fd, gt_id, "rpn");
>   	uint32_t rp0 = get_freq(fd, gt_id, "rp0");
> +	uint32_t rpmid = (rp0 + rpn) / 2;
> +	uint32_t min_freq, max_freq;
>   
>   	/*
>   	 * Negative bound tests
> @@ -142,16 +152,19 @@ static void test_freq_basic_api(int fd, int gt_id)
>   	/* Assert min requests are respected from rp0 to rpn */
>   	igt_assert(set_freq(fd, gt_id, "min", rp0) > 0);
>   	igt_assert(get_freq(fd, gt_id, "min") == rp0);
> -	igt_assert(set_freq(fd, gt_id, "min", rpe(fd, gt_id)) > 0);
> -	igt_assert(get_freq(fd, gt_id, "min") == rpe(fd, gt_id));
> +	igt_assert(set_freq(fd, gt_id, "min", rpmid) > 0);
> +	min_freq = get_freq(fd, gt_id, "min");
> +	/* SLPC can set min higher than rpmid - as it follows RPe */
> +	igt_assert(min_freq >= (rpmid - FREQ_UNIT_MHZ));
>   	igt_assert(set_freq(fd, gt_id, "min", rpn) > 0);
>   	igt_assert(get_freq(fd, gt_id, "min") == rpn);
>   
>   	/* Assert max requests are respected from rpn to rp0 */
>   	igt_assert(set_freq(fd, gt_id, "max", rpn) > 0);
>   	igt_assert(get_freq(fd, gt_id, "max") == rpn);
> -	igt_assert(set_freq(fd, gt_id, "max", rpe(fd, gt_id)) > 0);
> -	igt_assert(get_freq(fd, gt_id, "max") == rpe(fd, gt_id));
> +	igt_assert(set_freq(fd, gt_id, "max", rpmid) > 0);
> +	max_freq = get_freq(fd, gt_id, "max");
> +	igt_assert(within_expected_range(max_freq, rpmid));
>   	igt_assert(set_freq(fd, gt_id, "max", rp0) > 0);
>   	igt_assert(get_freq(fd, gt_id, "max") == rp0);
>   }
> @@ -168,13 +181,16 @@ static void test_freq_fixed(int fd, int gt_id, bool gt_idle)
>   {
>   	uint32_t rpn = get_freq(fd, gt_id, "rpn");
>   	uint32_t rp0 = get_freq(fd, gt_id, "rp0");
> +	uint32_t rpmid = (rp0 + rpn) / 2;
> +	uint32_t cur_freq, act_freq;
>   
>   	igt_debug("Starting testing fixed request\n");
>   
>   	/*
>   	 * For Fixed freq we need to set both min and max to the desired value
>   	 * Then we check if hardware is actually operating at the desired freq
> -	 * And let's do this for all the 3 known Render Performance (RP) values.
> +	 * And let's do this for all the 2 known Render Performance (RP) values
> +	 * RP0 and RPn and something in between.
>   	 */
>   	igt_assert(set_freq(fd, gt_id, "min", rpn) > 0);
>   	igt_assert(set_freq(fd, gt_id, "max", rpn) > 0);
> @@ -190,17 +206,20 @@ static void test_freq_fixed(int fd, int gt_id, bool gt_idle)
>   		igt_assert(get_freq(fd, gt_id, "act") == rpn);
>   	}
>   
> -	igt_assert(set_freq(fd, gt_id, "min", rpe(fd, gt_id)) > 0);
> -	igt_assert(set_freq(fd, gt_id, "max", rpe(fd, gt_id)) > 0);
> +	igt_assert(set_freq(fd, gt_id, "min", rpmid) > 0);
> +	igt_assert(set_freq(fd, gt_id, "max", rpmid) > 0);
>   	usleep(ACT_FREQ_LATENCY_US);
> -	igt_assert(get_freq(fd, gt_id, "cur") == rpe(fd, gt_id));
> +	cur_freq = get_freq(fd, gt_id, "cur");
> +	/* If rpmid is around RPe, we could see SLPC follow it */
> +	igt_assert(cur_freq >= (rpmid - FREQ_UNIT_MHZ));
>   
>   	if (gt_idle) {
>   		igt_assert_f(igt_wait(xe_is_gt_in_c6(fd, gt_id), 1000, 10),
>   			     "GT %d should be in C6\n", gt_id);
>   		igt_assert(get_freq(fd, gt_id, "act") == 0);
>   	} else {
> -		igt_assert(get_freq(fd, gt_id, "act") == rpe(fd, gt_id));
> +		act_freq = get_freq(fd, gt_id, "act");
> +		igt_assert(act_freq <= cur_freq + FREQ_UNIT_MHZ);
>   	}
>   
>   	igt_assert(set_freq(fd, gt_id, "min", rp0) > 0);
> @@ -232,15 +251,17 @@ static void test_freq_fixed(int fd, int gt_id, bool gt_idle)
>   static void test_freq_range(int fd, int gt_id, bool gt_idle)
>   {
>   	uint32_t rpn = get_freq(fd, gt_id, "rpn");
> +	uint32_t rp0 = get_freq(fd, gt_id, "rp0");
> +	uint32_t rpmid = (rp0 + rpn) / 2;
>   	uint32_t cur, act;
>   
>   	igt_debug("Starting testing range request\n");
>   
>   	igt_assert(set_freq(fd, gt_id, "min", rpn) > 0);
> -	igt_assert(set_freq(fd, gt_id, "max", rpe(fd, gt_id)) > 0);
> +	igt_assert(set_freq(fd, gt_id, "max", rpmid) > 0);
>   	usleep(ACT_FREQ_LATENCY_US);
>   	cur = get_freq(fd, gt_id, "cur");
> -	igt_assert(rpn <= cur && cur <= rpe(fd, gt_id));
> +	igt_assert(rpn <= cur && cur <= rpmid + FREQ_UNIT_MHZ);
>   
>   	if (gt_idle) {
>   		igt_assert_f(igt_wait(xe_is_gt_in_c6(fd, gt_id), 1000, 10),
> @@ -248,7 +269,7 @@ static void test_freq_range(int fd, int gt_id, bool gt_idle)
>   		igt_assert(get_freq(fd, gt_id, "act") == 0);
>   	} else {
>   		act = get_freq(fd, gt_id, "act");
> -		igt_assert(rpn <= act && act <= rpe(fd, gt_id));
> +		igt_assert((rpn <= act) && (act <= cur + FREQ_UNIT_MHZ));
>   	}
>   
>   	igt_debug("Finished testing range request\n");
> @@ -262,17 +283,19 @@ static void test_freq_range(int fd, int gt_id, bool gt_idle)
>   static void test_freq_low_max(int fd, int gt_id)
>   {
>   	uint32_t rpn = get_freq(fd, gt_id, "rpn");
> +	uint32_t rp0 = get_freq(fd, gt_id, "rp0");
> +	uint32_t rpmid = (rp0 + rpn) / 2;
>   
>   	/*
>   	 *  When max request < min request, max is ignored and min works like
>   	 * a fixed one. Let's assert this assumption
>   	 */
> -	igt_assert(set_freq(fd, gt_id, "min", rpe(fd, gt_id)) > 0);
> +	igt_assert(set_freq(fd, gt_id, "min", rpmid) > 0);
>   	igt_assert(set_freq(fd, gt_id, "max", rpn) > 0);
>   	usleep(ACT_FREQ_LATENCY_US);
>   
> -	/* Refresh value of rpe, pcode could have adjusted it */
> -	igt_assert(get_freq(fd, gt_id, "cur") == rpe(fd, gt_id));
> +	/* Cur freq will follow RPe, which could be higher than min freq */
> +	igt_assert(get_freq(fd, gt_id, "cur") >= (rpmid - FREQ_UNIT_MHZ));
>   }
>   
>   /**
