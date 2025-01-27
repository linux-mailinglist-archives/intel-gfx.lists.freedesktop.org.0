Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39867A1D3D6
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2025 10:47:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60CBF10E4F4;
	Mon, 27 Jan 2025 09:47:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jzH1Vznr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7EF010E214;
 Mon, 27 Jan 2025 09:47:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737971244; x=1769507244;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=U2H4xHMditthlXqbe9SB/lW7bbi3pnfxjtyYzYxO4/w=;
 b=jzH1Vznr491HLS2ANblrfl77oq4eXjmFvdYo6bwGzfjMB6sFeie4xrka
 956sFDbGqxSvMdqlvcjNkRipD/qWAC0lD7/gYUld9nKrTWedVtVrQxMy0
 iwh4cR3ME8i8v8eFASR00qwK0zzLxhWYuMf0EumiYK+NlmGDosyH/62mU
 TYScGBDnRd9zUwHO2JCx8R3xz1sK0T4ZR1rQkqxuEnJGNCl7f8e2kKvfW
 xawaqvz5pRZ2RYQ98zngcE7q6eZYCTHa+VOpk2YAr0aOwea/eCAduCb/8
 v67Rn81CJ2dJuxtuQNarWZfOUkU1qat2Of96bPJcEisKR3JLlrYL/6lUx Q==;
X-CSE-ConnectionGUID: CQVTTULfTIqgz5PluKkZVg==
X-CSE-MsgGUID: XnESDCp2QtilB6vCFnY0mA==
X-IronPort-AV: E=McAfee;i="6700,10204,11327"; a="38334388"
X-IronPort-AV: E=Sophos;i="6.13,238,1732608000"; d="scan'208";a="38334388"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 01:47:23 -0800
X-CSE-ConnectionGUID: lFd8afYdQB6n8Bm8FFDajw==
X-CSE-MsgGUID: ai/iZz9rSmi5z9bf1jPGjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,238,1732608000"; d="scan'208";a="108977580"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Jan 2025 01:47:15 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 27 Jan 2025 01:47:14 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 27 Jan 2025 01:47:14 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 27 Jan 2025 01:47:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=u9poOl5eLoXP64fRZiKIJVhtSDQX+hueAOhFrJFnvx40w57BR3DtZcFSfjbPgYBin5unYhMN3SxxBU+YzVOgo5ljDAUDOKIVHsEKIG2ugYYGB7SfakaXOmIb7K8YFz6ipJgBqFx3dyz1VfNnNQh84IBjuQOjU447cJxBVxvp73kCsdARMN8gyEEbt9vKG9itCcbDoqtzSTRGhyf1JWnYc/Bd/qk+ImILNGfYehXsd0T4eTVS+r+i1fvvlk3sCHL2kD2H6Nc4x0C5mOh+EpX66Z/ABRR3rr89GY/+imTKT6DIkbEzG3asarJaH0Om6qNq+iOQ1BPlKhXYT7GznV9G2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5mEy4WKWWqi3l+afGFom09gixHod2O/yIRP5kYWTWDA=;
 b=WYefq3sDCubOVfM95Gp2QXmGrrg0Bx7zNZMHUoeU5OO6dJPDhl/RQNA0SLOhzDWGZlIKWRAfhaoWif6bKFifgKZgEC81TBNJ1CKaiBTWeJ3zEZ8FQlovLccepi1ASpP4pCrjv5KVj0XP2uAT5rr6IXSzoiVqSgSkG7QQPN8ujBeprM7BcfuLBv9IFhdyM9er58h5Q7sYGxAao7832sfcEk9JSFxMvAtJIc349hkup/j8CRNL9YJ3SMn6Rr8VkNsBFbKAqqx3oxKaYTUFCaCGazjFRG6UjsUEbfCOJo9OjW6d7jtwEtLfqP0C19/CwCom55u64r+wuVCCB1LEYOqOhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA0PR11MB7955.namprd11.prod.outlook.com (2603:10b6:208:3dd::6)
 by SN7PR11MB7639.namprd11.prod.outlook.com (2603:10b6:806:32a::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.22; Mon, 27 Jan
 2025 09:46:43 +0000
Received: from IA0PR11MB7955.namprd11.prod.outlook.com
 ([fe80::7265:46ae:19a8:b31d]) by IA0PR11MB7955.namprd11.prod.outlook.com
 ([fe80::7265:46ae:19a8:b31d%4]) with mapi id 15.20.8377.021; Mon, 27 Jan 2025
 09:46:43 +0000
Message-ID: <e9fcaa29-d220-4005-b248-9f7f3d84ecf5@intel.com>
Date: Mon, 27 Jan 2025 15:16:37 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH i-g-t v4 2/2] tests/xe/pmu: Add pmu tests
To: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <igt-dev@lists.freedesktop.org>
CC: Lucas De Marchi <lucas.demarchi@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
References: <20250127081402.2587605-1-vinay.belgaumkar@intel.com>
 <20250127081402.2587605-3-vinay.belgaumkar@intel.com>
Content-Language: en-US
From: Riana Tauro <riana.tauro@intel.com>
In-Reply-To: <20250127081402.2587605-3-vinay.belgaumkar@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0226.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:eb::9) To IA0PR11MB7955.namprd11.prod.outlook.com
 (2603:10b6:208:3dd::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7955:EE_|SN7PR11MB7639:EE_
X-MS-Office365-Filtering-Correlation-Id: 03f2d89d-5f34-4363-d800-08dd3eb78198
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RTloZkJkSlhKaWtsblRIb0FFWVp6S0RTZkMyNWtkSHNoWUl6c1MwZHRxc0Ey?=
 =?utf-8?B?bzcxUTFDczJGaW5CajduaTQ0ZVlPUUZpanp1aU1HdXV1VWJkZHo3bVdPRTVE?=
 =?utf-8?B?elpFVTBjazRKY0J3SXB3VXlFUTgvQ29KMEVhZnV0Vm4vMmRsdTBpZ1g4eW05?=
 =?utf-8?B?R2VsN2NWZlYwb3FnbHE5RmpDMnB3VHNUTmJnUVN2Q21vOXJ0cDIvaDNmZHJr?=
 =?utf-8?B?QVBGN25nQXN3MHNRWHRidWg3cXIxMHUrY0x1bGNJQmdNY3pQQ2ZISURGbXRG?=
 =?utf-8?B?RUhlN05ZcUJqTjUxQS9MT1FaR1cyanhRT2k3MzBhRHZaUEYyL05hNjRuQ0tk?=
 =?utf-8?B?elZLZ3J3eFhWTXVkNXMyOGZOWHJoVmZ4bDA0VDRaQUQybHB0akczYkEyS1BO?=
 =?utf-8?B?YkcydTA3UVdzUVZkL0dCWDE0MUVoVys3cXJGajJnREwzbGI0VzBaMEt1Z1VO?=
 =?utf-8?B?YlBlTHBBK3AvdGkxQlRnNjU5UXhEVW5iMEpmMDkvWmpmcW5PNkJLV3lXUzEv?=
 =?utf-8?B?bUlJVHhIZ0dyZDlHQmdNU2tpNDBWd1N3ZUJDRVBxYVE4Q1JIaDEzMFpTeDg2?=
 =?utf-8?B?NExOMWtJUjlBakc1a0xOL01KOUhKODJZOGNYR3YrVUhTb3l3N2MzMUZobnVr?=
 =?utf-8?B?V1hqaDRTbHFKZnBDYzNBQWpTME9SSUFTTmlpMVFSV0VmN2NjeXB1Z0dNZEZW?=
 =?utf-8?B?WnM1WTJoMU1Xamx6LytrMDVxdTZMOGsveVJndjBvUkptK1NvQmoxRmFMeHJs?=
 =?utf-8?B?YmJGem1YbHJqVVNSV2svZkZLZXVxd1ltb2t5MWpNKy9UQ2tyWVNmaXFBb1Jx?=
 =?utf-8?B?WWJ1aWY4b2xGanlETndyOXpQS3pQSHZ1MklZRVhZUE5KWExUUHVzL0x4a0o2?=
 =?utf-8?B?cDNXbVY3TzVyMmhzRFFObTlpb2ZkbUhxa1Uyc08xMXJ3a2JVbWtNV2VEazR2?=
 =?utf-8?B?SXFUM2c4WnRHSkJoWDJydEVmbG5SbVVNSTduR0VQSzVUQUZicTdzWTc4YzhT?=
 =?utf-8?B?MTVrZmk4RTlKQmo1QStHcTJMS0xjRE4rWjFvMi80dyt5emFYcVZJakRyRFl4?=
 =?utf-8?B?a2d0NlZITThBMDBKZWZ0MU00d1p0NXV0ekJjSEhCTUJlaHVDajEyNytoNzM0?=
 =?utf-8?B?bU9mSnNSSCtHd1pMUjFwek40bU5ST0F2SGNQSUdJZlV4L1FuV2YyT29sWlJZ?=
 =?utf-8?B?TDJYOUo4Y09raTJhWnZadWtnSjdmSUJ5QWlFdWVpcVY4dFlBb0xhQ1FjVmph?=
 =?utf-8?B?N1VGZDduUCtQTWZHaVlhMVBGNlROS0FXTXc4VFk0MTZ1OWxCOU9seFhWbDBv?=
 =?utf-8?B?aGJVNHVoMUVEMFE3cEQ1YlRaOUVOVHlNNDJ4Wll4eW5DbUZEVUEwL0ZzQWdi?=
 =?utf-8?B?eENFN3oyQjZsOXlFZDQ3L0YvUWtIakFTd2Z4WnFaaFlZMmJlTWdUZXR1OSsv?=
 =?utf-8?B?SWRyR2tOTnQwamJRT2RRY2NuYkZZWnRvZW14cFllb1B3UWh0YU5PTzZ6MVRm?=
 =?utf-8?B?Umt4UVlpY09YSFQrRTluWVUzRUphZVVKWDRnWGRKTnliTzJUY0NLYUkwL0lF?=
 =?utf-8?B?QmJ2WDF2UUwzTTA2VnZtbStLellLOWJGNS9EMWh4UGx5VTlzMFdBSVozb0JQ?=
 =?utf-8?B?VGlNejFnblI3dDRFYlRPblFwRUlsbTk4eXpFR0NGQlZNMVc3WVV2TzBhT2N1?=
 =?utf-8?B?dXZHbUlZcXpNSTUyRnRkWlBlL3AxOGpjTlhQaXVmN003WGU0WlZZWjRJZ2Yw?=
 =?utf-8?B?eFpPTUNiYzkzWXZrTm9ya0hpczFGaWZYblRzVkpaRnUvUE1iTGl4a3A0c0Fy?=
 =?utf-8?B?bzZxWGVKN3Q5Ri9URUhJUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7955.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bEtseTUxc0RQWVNIRWkrZnRpK01qVndTdnZNWEFIRHdnU1RRNFE3TVRGV2R4?=
 =?utf-8?B?NGtnZ1RDYmpvamVab2VQYTl6MDhzTjdOb2NWUU9zU1VMZ1dJYjdRQmxMNGpJ?=
 =?utf-8?B?VnhZaEdJZlB2ZHNUVDZDaE5tdVpSZWE1a2dmejF3UmVCUm52K1VnVXdpV0Fs?=
 =?utf-8?B?QnB5YlpLRU1KdCtnN1h0VmtXb3psWTBGTWNDUThCSTBOelRQOHRoYWpmYW1q?=
 =?utf-8?B?emlVQkRRLy8yUldYRnJ0dURmeUswaTBoNlBSeHZSNEZDRE1DM1JNNFJBbStO?=
 =?utf-8?B?REl4OHdWcEhXNG1kcGhXd1JxTE5SdDd4YjJQcVNYZHMxbjFoRXVkN1YvYVpK?=
 =?utf-8?B?aFRNd2l6b2RpZ0UydWp6V2pQdnFPTlM3V3dHVkhOaVlmZUhJR1U5dXFsMVBj?=
 =?utf-8?B?UWV1SDV0NnowNklhTUVGcDJpK0k5c01iQSt5NngxZHYvTmFkR0prNEdIQjRp?=
 =?utf-8?B?Uk1QTFJQY2VGUzJZeXhWNEpGQnlPTGlqZjFBVjdRdVVQWSt0eTFpSGRYRVQ4?=
 =?utf-8?B?QUxpYTVob28rUlBNOGJiU25pV2RoMDlJYWNMcFh0cXgvaXhzSmF6T1czMHEx?=
 =?utf-8?B?UU1HbFdaTzB4UkRnOHFxMmIreEhnYmVtWGc3dTJiMFlDS2pHSitVMElIbWFM?=
 =?utf-8?B?WnZ2YjU1bUNEaHNxbWdDN0x4REVML1E2VHQvbTVvenk2NHhWQzJFTnM5QjA5?=
 =?utf-8?B?ZThCV1hoZ001UlJhdlRpQmROWGt0WlRTTEsrdC9ZL3FscWRweGE0aVJPa0Ux?=
 =?utf-8?B?bysvU29aKzdNRFp4R1ZZOTVYd2NJbFgvcCtQVlRRREh1clVJUW52MGVkSzhD?=
 =?utf-8?B?VG1ENVIwNXNyUmduVWpVMHZ3SzUvMzJDaG1UR0JOMzYxcEJoYWtOUmNkSlhw?=
 =?utf-8?B?R2lBYWRXdEFoUmFuZGRlTjBjVTcvNlpvSFJkMXlnYlFreFVYTGlMY2dHNHpR?=
 =?utf-8?B?aXpxYTZrVlNXenhZbGpXTU8vc2tLQU1FQ3hwOCtXd0ttdGF6NURPdklsbmVC?=
 =?utf-8?B?ZGV5Y2ttc2dsRCtHREhrZ3ZVWDhBV3FCRGJMWlFSTmEwcUdGK1pnVTBNajd1?=
 =?utf-8?B?ZDUwYlBjUFVoV1VZSUtVbGtZYjlxQnVMUTFjbzFkb0NGdWkxcTZYd2hSMXJa?=
 =?utf-8?B?aElRR1VBTStMZFQyU0x2SW1oTjB1UWZMd0d5ZnlSb01TVlo1T1FKaVVjZkJ5?=
 =?utf-8?B?L2t2dlREVzRaNTJPU3FQNUpVTmFZNnZPWFR1bmFLSTNUVC9uaHNsZWZ0QUxy?=
 =?utf-8?B?YmNjOTlEVDU5RU92cjE1V1VScWJ4MFBlSkFCelJLSWw4ZTMzVjVkcFB3R0ky?=
 =?utf-8?B?RFlmUUNsSm1adTE5Z0haOGdxZ21SNHVDaGZiWVdYZzMxdjE3dUczYllBS1dD?=
 =?utf-8?B?QWh0TUZSdmFWSGhmbE95czF6bldOY3V3MTZHdWpHbXZNV1V0VFdBaXMzY3Q0?=
 =?utf-8?B?MG5uMytBeG1adU1UZU5ZK2d5NjRHZTE2RVl6bHM5cE15Uk5XaktCL2t5dU5I?=
 =?utf-8?B?YUpMajBZOW5nbm9hdEtXbGhLa3pldlU5Q2M2VHE4WDNRT0tyS3c3ME02RjQv?=
 =?utf-8?B?cWdKQ2lrcDZ6NmN5T2loZ3JQeXBvVzAvLy9YZEowTDBuL2JaU3ZXelkrOGxM?=
 =?utf-8?B?MkRoNFpqbjFzWTUzMFpxWnFDeU92QzdLTnFjdjF2UURQN0dUOE5TRkgrSW82?=
 =?utf-8?B?Z0gvWTk0ZHByVHdZWWxRK0pLU3dOM3dYbytnRmo3aUVJT2ROdWFIV2UxQXhn?=
 =?utf-8?B?K3N4ZGRzL2UrVm44RllRU2VmY3dYMjhmSTVsSUpZS1FWVEN5QmtKRGRQc3R2?=
 =?utf-8?B?dC9IRzc0RzFyajJRRS9hbmNzODAvMnRVVzlLbGEwbFVPZXYrZmNtUmMvdVUx?=
 =?utf-8?B?YXR6bXdHTjFrb1VWcm41WmIwZDJDWnNHNUlIRHJRbXlCTVB1NUsxYjRTZ2lp?=
 =?utf-8?B?RlJKcE5pSzFnMkt3OHg3OERabFB5TzJJN0cxaXZNdk45RHVUdjRPZWlHcjVr?=
 =?utf-8?B?a01CZUlqQVZBN2twRDhNV2lrVUVVME5ZUVZjdXdBODB4T2lqZzd2dHNiczlj?=
 =?utf-8?B?VDVXaU55WnhaTk5XaGJBWW9TaE1TQ2lNSVR2TEZKT2QxSmJ2S3NGeHBZRTRP?=
 =?utf-8?Q?79o9txusawpmB4Z4rjH/bfzd0?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 03f2d89d-5f34-4363-d800-08dd3eb78198
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7955.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2025 09:46:43.3680 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fXl4EhUYOfAkmzw1NnBW50PgycuINSg3qiNz2ywgzYcuCVOISPCCt9q8DkoOLa3v7FhFvMwaH2XEA3ArfeTIlQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7639
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

Hi Vinay

On 1/27/2025 1:44 PM, Vinay Belgaumkar wrote:
> Simple tests for validating the PMU implementation for GT C6
> residencies.
> 
> These tests validate the kernel series which is currently in review
> here - https://patchwork.freedesktop.org/series/139121/
> 
> v2: Rename rc6-residency-* to gt-c6-residency and remove freq tests.
> v3: Keep just gt-c6 tests, add frequency tests later.
> 
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Riana Tauro <riana.tauro@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> ---
>   lib/igt_perf.c       |   8 +-
>   lib/igt_perf.h       |   2 +
>   tests/intel/xe_pmu.c | 191 +++++++++++++++++++++++++++++++++++++++++++
>   tests/meson.build    |   1 +
>   4 files changed, 201 insertions(+), 1 deletion(-)
>   create mode 100644 tests/intel/xe_pmu.c
> 
> diff --git a/lib/igt_perf.c b/lib/igt_perf.c
> index e333744bb..b8367cd5e 100644
> --- a/lib/igt_perf.c
> +++ b/lib/igt_perf.c
> @@ -153,7 +153,7 @@ int perf_xe_event_config(const char *device, const char *event, uint64_t *config
>   		return ret;
>   
>   	buf[ret] = '\0';
> -	ret = sscanf(buf, "config=0x%lx", config);
> +	ret = sscanf(buf, "event=0x%lx", config);
This can be part of the previous patch
>   	if (ret != 1)
>   		return -EINVAL;
>   
> @@ -251,6 +251,12 @@ int perf_xe_open(int xe, uint64_t config)
>   			PERF_FORMAT_TOTAL_TIME_ENABLED);
>   }
>   
> +int perf_xe_open_group(int xe, uint64_t config, int group)
> +{
> +	return _perf_open(xe_perf_type_id(xe), config, group,
> +			  PERF_FORMAT_TOTAL_TIME_ENABLED | PERF_FORMAT_GROUP);
> +}
> +
>   int perf_i915_open(int i915, uint64_t config)
>   {
>   	return _perf_open(i915_perf_type_id(i915), config, -1,
> diff --git a/lib/igt_perf.h b/lib/igt_perf.h
> index f51c44bb2..e268fb4ff 100644
> --- a/lib/igt_perf.h
> +++ b/lib/igt_perf.h
> @@ -55,6 +55,7 @@ perf_event_open(struct perf_event_attr *attr,
>   
>   uint64_t igt_perf_type_id(const char *device);
>   int igt_perf_events_dir(int i915);
> +int igt_xe_perf_events_dir(int xe);
There is no implementation for this.
>   int igt_perf_open(uint64_t type, uint64_t config);
>   int igt_perf_open_group(uint64_t type, uint64_t config, int group);
>   
> @@ -71,6 +72,7 @@ int perf_i915_open(int i915, uint64_t config);
>   int perf_i915_open_group(int i915, uint64_t config, int group);
>   
>   int perf_xe_open(int xe, uint64_t config);
> +int perf_xe_open_group(int xe, uint64_t config, int group);
>   int perf_xe_event_config(const char *device, const char *event, uint64_t *config);
>   int perf_xe_event_format_gt(const char *device);
>   
> diff --git a/tests/intel/xe_pmu.c b/tests/intel/xe_pmu.c
> new file mode 100644
> index 000000000..929de8082
> --- /dev/null
> +++ b/tests/intel/xe_pmu.c
> @@ -0,0 +1,191 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright © 2025 Intel Corporation
> + */
> +
> +/**
> + * TEST: Test Xe PMU functionality
> + * Category: Perf Monitoring Unit
> + * Mega feature: Perf Monitoring Unit
> + * Sub-category: Power Management
> + * Functionality: Power/Perf
> + * Test category: Functional tests
> + */
> +
> +#include <fcntl.h>
> +#include <limits.h>
> +#include <time.h>
> +#include <errno.h>
> +#include <dirent.h>
> +#include <string.h>
> +#include <sys/time.h>
> +
> +#include "igt.h"
> +#include "igt_device.h"
> +#include "igt_power.h"
> +#include "igt_sysfs.h"
> +#include "igt_perf.h"
> +
> +#include "lib/igt_syncobj.h"
> +#include "xe/xe_ioctl.h"
> +#include "xe/xe_gt.h"
> +#include "xe/xe_query.h"
> +#include "xe/xe_spin.h"
> +#include "xe/xe_util.h"
> +
> +#define SLEEP_DURATION 2 /* in seconds */
> +const double tolerance = 0.1;
> +const unsigned long batch_duration_ns = 500e6;
> +const char *no_debug_data = "\0";
> +
> +#define __assert_within_epsilon(x, ref, tol_up, tol_down, debug_data) \
> +	igt_assert_f((double)(x) <= (1.0 + (tol_up)) * (double)(ref) && \
> +		     (double)(x) >= (1.0 - (tol_down)) * (double)(ref), \
> +		     "'%s' != '%s' (%f not within +%.1f%%/-%.1f%% tolerance of %f)\n%s\n",\
> +		     #x, #ref, (double)(x), \
> +		     (tol_up) * 100.0, (tol_down) * 100.0, \
> +		     (double)(ref), debug_data)
> +
> +#define assert_within_epsilon(x, ref, tolerance) \
> +	__assert_within_epsilon(x, ref, tolerance, tolerance, no_debug_data)
> +
> +#define assert_within_epsilon_debug(x, ref, tolerance, debug_data) \
> +	__assert_within_epsilon(x, ref, tolerance, tolerance, debug_data)

There is no debug_data in this test. debug data macro can be removed
> +
> +struct workload {
> +	struct drm_xe_sync sync[2];
> +	struct drm_xe_exec exec;
> +	uint64_t addr;
> +	struct xe_spin_opts spin_opts;
> +	struct xe_spin *spin;
> +	uint32_t exec_queue;
> +	uint32_t syncobj;
> +	size_t bo_size;
> +	uint32_t bo;
> +	uint32_t vm;
> +};
> +
> +static int open_pmu(int xe, uint64_t config)
> +{
> +	int fd;
> +
> +	fd = perf_xe_open(xe, config);
> +	igt_skip_on(fd < 0 && errno == ENODEV);
> +	igt_assert(fd >= 0);
> +
> +	return fd;
> +}
> +
> +static uint64_t __pmu_read_single(int fd, uint64_t *ts)
> +{
> +	uint64_t data[2];
> +
> +	igt_assert_eq(read(fd, data, sizeof(data)), sizeof(data));
> +	if (ts)
> +		*ts = data[1];
> +
> +	return data[0];
> +}
> +
> +/**
> + * SUBTEST: c6
%s/c6/gt-c6
> + * Description: Basic residency test to validate idle residency
> + *		measured over a time interval is within the tolerance
> + */
> +static unsigned int measured_usleep(unsigned int usec)
> +{
> +	struct timespec ts = { };
> +	unsigned int slept;
> +
> +	slept = igt_nsec_elapsed(&ts);
> +	igt_assert(slept == 0);
> +	do {
> +		usleep(usec - slept);
> +		slept = igt_nsec_elapsed(&ts) / 1000;
> +	} while (slept < usec);
> +
> +	return igt_nsec_elapsed(&ts) / 1000;
> +}
> +
> +static unsigned long read_idle_residency(int fd, int gt)
> +{
> +	unsigned long residency = 0;
> +	int gt_fd;
> +
> +	gt_fd = xe_sysfs_gt_open(fd, gt);
> +	igt_assert(gt_fd >= 0);
> +	igt_assert(igt_sysfs_scanf(gt_fd, "gtidle/idle_residency_ms", "%lu", &residency) == 1);
> +	close(gt_fd);
> +
> +	return residency;
> +}
> +
> +static u64 get_event_config(int xe, unsigned int gt, char *event)
> +{
> +	int ret;
> +	char xe_device[100];
> +	u64 pmu_config;
> +	u32 gt_shift;
> +
> +	xe_perf_device(xe, xe_device, sizeof(xe_device));
> +	ret = perf_xe_event_config(xe_device, event, &pmu_config);
> +	igt_assert(ret >= 0);
> +	gt_shift = perf_xe_event_format_gt(xe_device);
> +	pmu_config |= (u64) gt << gt_shift;
> +
> +	return pmu_config;
> +}
> +
> +static void test_c6(int xe, unsigned int gt)
%s/c6/gt_c6
> +{
> +	int pmu_fd;
> +	u64 pmu_config;
> +	char event[100];
> +	uint64_t ts[2];
> +	unsigned long slept, start, end;
> +	uint64_t val;
> +
> +	/* Get the PMU config for the c6 event */
> +	sprintf(event, "gt-c6-residency");
> +	pmu_config = get_event_config(xe, gt, event);
> +
> +	pmu_fd = open_pmu(xe, pmu_config);
> +
> +	igt_require_f(igt_wait(xe_gt_is_in_c6(xe, gt), 1000, 10), "GT %d should be in C6\n", gt);
> +
> +	/* While idle check full RC6. */
> +	start = read_idle_residency(xe, gt);
> +	val = __pmu_read_single(pmu_fd, &ts[0]);
> +	slept = measured_usleep(SLEEP_DURATION * USEC_PER_SEC) / 1000;
> +	end = read_idle_residency(xe, gt);
> +	val = __pmu_read_single(pmu_fd, &ts[1]) - val;
> +
> +	igt_debug("gt%u: slept=%lu, perf=%"PRIu64"\n",
> +		  gt, slept,  val);
> +
> +	igt_debug("Start res: %lu, end_res: %lu", start, end);
> +
> +	assert_within_epsilon(val,
> +			      (ts[1] - ts[0])/1000000,
%s/1000000/USEC_PER_SEC
> +			      tolerance);
> +	close(pmu_fd);
> +}
> +
> +igt_main
> +{
> +	int fd, gt;
> +
> +	igt_fixture {
> +		fd = drm_open_driver(DRIVER_XE);
> +		igt_require(!IS_PONTEVECCHIO(xe_dev_id(fd)));
> +	}
> +
> +	igt_describe("Validate PMU C6 residency counters");
%s/c6/gt-c6
> +	igt_subtest("c6")
%s/c6/gt-c6
> +		xe_for_each_gt(fd, gt)
> +			test_c6(fd, gt);
Thanks
Riana
> +
> +	igt_fixture {
> +		close(fd);
> +	}
> +}
> diff --git a/tests/meson.build b/tests/meson.build
> index 33dffad31..d20f50766 100644
> --- a/tests/meson.build
> +++ b/tests/meson.build
> @@ -309,6 +309,7 @@ intel_xe_progs = [
>   	'xe_pat',
>   	'xe_peer2peer',
>   	'xe_pm',
> +	'xe_pmu',
>   	'xe_pm_residency',
>   	'xe_prime_self_import',
>   	'xe_query',

