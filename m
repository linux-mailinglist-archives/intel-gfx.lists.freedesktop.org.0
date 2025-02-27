Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF341A47A70
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2025 11:37:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AC6610E248;
	Thu, 27 Feb 2025 10:37:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O8fezQdB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7E9E10E248;
 Thu, 27 Feb 2025 10:37:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740652672; x=1772188672;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vnX+/8itJqDH9qDBHnPBHXZd2ywbEEBbb92Z8f31ASM=;
 b=O8fezQdB5+xakNpSDASGi35nK1xOAw3Ne42glHas82xftBUcq9DftCTd
 LZ9SdaoUC774R/Ohx/RgBkZ/QHOkM3p/siqNn9JmX1tGhOKNIKoGyVQ0h
 UV7VZlLzdpsPkY4zyMwO7gqSPpDlGzVq4jDlbEJ4ib5SWauW2pRlUUZ0X
 tm7fgkCwNixl63CHz83+iyVz826mTXwpOwT01xj0jJF3IqSBr73LETrP5
 ET3GUNfg97W7kNWO8kg93rLc/6q2qJgsb4yTeATlwgP+8qIz3aq6aQSDf
 Qpb+fROeswFquuthdMBHtuAwCm6I2ywnCA+0LsFWNiLJYNxokBlvhXTIM g==;
X-CSE-ConnectionGUID: eFzhbWQvR42CCICn7M9WQg==
X-CSE-MsgGUID: P/DqKV6vSSOdb3b7s6oShw==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="52522678"
X-IronPort-AV: E=Sophos;i="6.13,319,1732608000"; d="scan'208";a="52522678"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 02:37:52 -0800
X-CSE-ConnectionGUID: 2sE5MF9MS+GbWz47w6LQbQ==
X-CSE-MsgGUID: Px7xVWdARSefTMXMmUNGhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="121109566"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 02:37:51 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 27 Feb 2025 02:37:50 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 27 Feb 2025 02:37:50 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 27 Feb 2025 02:37:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=y1MTUiaxVIuieVFz40XaL1ukV/izBKoTAX0F2M5qiJQ72ZaoQ29jxz66WPa/ZCidjjISmWUIllp4G1BzV5PDADQBi/B/HVT+RgPiOOgiOaJCHWx5Db6jeR1gdCdiv+ixGeQ/uCAejLx5z6CoEj7CuSN4aXjIqsUxZfaBPZKDQfjZtiGF77Di9qM26cV7K/C98y1EDrhZ/+39f1+tFuQs7XHx/ksPQQQ1vJ+Ki7HDwA4jupthd6Ciu8MeEELMPkrtv2LdZwQDeKBu4+sU4MYygYvbmLQOq+x/ePr9GwwxSZv+R9QTe45/nxDu3XMabbBB2PYbUNxXgvpY5JvIdbb6jA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lHFKeGNleKT4WENSXsRTdG6knPLQsAAAfohBoKS5nIE=;
 b=BcwsthiwLSk1TYUcI1jbR1BXRx3PrgdlxJxAY3+mIDOkdhyenpf30xn42KBiQ+IMQ5AUJYIImRb6P97lbs/Cgcrmk2OxRzKwE6OjoglZ4wLI6lkAAOeytlXECjLYkVe+CZ7+BtIMG1KXI3zjxmFtfQHWkvZ/QFdBMT9oR0rWSFUVhmhnU744AVu3wD43s2VWhErtYuECw1qA9IZL4pXPyRSGtY8bvPRsUpxRDwHPFyMtwOSrVlmDEGLhTpdytAw3OTuz1av4LE0eJR0pFKkWqR+2CaKtHsTrZng8mGbhaNbusyMqJPl1AwnS5gEKerEvEKWKh3vtaUbo8YvaQKYvDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW4PR11MB7077.namprd11.prod.outlook.com (2603:10b6:303:223::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.22; Thu, 27 Feb
 2025 10:37:48 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8489.021; Thu, 27 Feb 2025
 10:37:48 +0000
Message-ID: <9d4d9ee5-7453-4ac1-a71f-70cbe47fcf02@intel.com>
Date: Thu, 27 Feb 2025 16:07:41 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 13/20] drm/i915/vrr: Handle joiner with vrr
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20250224061717.1095226-1-ankit.k.nautiyal@intel.com>
 <20250224061717.1095226-14-ankit.k.nautiyal@intel.com>
 <c60121e0-fd68-4cbf-ad49-0b86046bc213@intel.com> <Z78vx24DwelqHTc9@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Z78vx24DwelqHTc9@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1PR01CA0148.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:71::18) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW4PR11MB7077:EE_
X-MS-Office365-Filtering-Correlation-Id: 289ecd74-499a-40c8-20bc-08dd571ac6f1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZWRCWWRsTVlITzVXZWFqRzQrd3BhYlQvMXltdFlrc1lVUGRUWU9yM2tuZjA0?=
 =?utf-8?B?eE5qRkhGNzVqSkxZOGtkSUw5K2RIY3dRNHhpQ2Z0TVJpblBrb1UwWFNqVnFY?=
 =?utf-8?B?SWUyKytLWXo3VnpKQUZMU1llSlhtdVZVcUU2L05zUkFTMWZuaFNTenhKOUds?=
 =?utf-8?B?U1NnaXlzdWphMTdhdVRwZ2NIVldUTmVlMU1sbnNXNy91YmVHemhTTVY5N2U0?=
 =?utf-8?B?T1E1WUN3WGNYZXVYVk94WGVJK2RDRitIeWtoeHNOQ1gzU1FuQ3BzWDdwRjZq?=
 =?utf-8?B?UExVRGVSdHp0a09jcDNncmVlaTFXeXluSGRKMmlDeDhFWmJUeDIwa1UzRDFz?=
 =?utf-8?B?eEpkNEFaZXNXbmtldjlCc1N6V0FybnlxQkxGMVd5c0Z5QVN4MUdmMGU4amRF?=
 =?utf-8?B?RklDL1k0c0oyVitFdHV5c2NhTjdCRWdBeDNxWHVETk1UR0MyOTNUUHYwdTM2?=
 =?utf-8?B?WVpKSzEvakkrUWdKTVBoQ3h2Qm1XZmVVOWh2cUVsQng3cXBsNCs5WFdWMlNT?=
 =?utf-8?B?MVhmS2o5ck1rOENHMDhXTG1XaVdFYTVDYWhTd2kyRHhmcHNNaGNQa0ova3A3?=
 =?utf-8?B?bmJ2Nm1FaEFBM0FrSkJGYVJqTEZ5MHN3aElseU5JdkdZaDR3Y3BaemFFcndv?=
 =?utf-8?B?Mmh6ZndDNHUxWDgxQXc3MWtScW4xZkZ3Rno1dkpwSVpFaTlFRE1KZnNPMzFn?=
 =?utf-8?B?d3RsVnV5WDhHUUNTNExUYVY0eXBZRFcxSkhHVG5tcERSaUpKQUYweUsrM2cw?=
 =?utf-8?B?Y0NjVGoyRFZIdUdkRkNwSGpESkY5bk83Z1Uxa3dMZWo0bThqMDZFekN1ZHc3?=
 =?utf-8?B?UUNsdUV1SWJ3Y1YvdGhNRnFLMlNvUkxyRFNuRCtmTytoQlZnbFpQNFNCeFRn?=
 =?utf-8?B?VnFBUzh2Mm0wVHlqUVNZS01KSGpUVGVsN2dHOHNQbFJGQkxFby9uYzRPazNJ?=
 =?utf-8?B?UjBwWjlDKzFZeTgraTFNcEY4SjBNWTM3WDVCV01lMDZhMXoxMFRiS0hiTi84?=
 =?utf-8?B?U3hLeTBpYjZhc2pxVUNBcFIxNzVHNHBCVlRkbzAzM2lCK0JRL0owbnQ4OFBO?=
 =?utf-8?B?Zk5ma05YSlhocXFpYmcrMFk2ZFNwcW1CbWl0NGNJeFlwMDc4OEI3eUVSU1Av?=
 =?utf-8?B?WU5UbzAvSmpsQlc4cmdyTCtxNm52KzcrN3JiY0hrR2dPTDg1azdiZFQ1WjJk?=
 =?utf-8?B?QU1QV0ZKd2hBcnZ5RHl0L1BVcVFlQko4ZXdDOThaZE9UK0lVTTFKTjJ1S1ha?=
 =?utf-8?B?U050c2JkRTdNWFB0bjJaTWMyRVZ5Q0FJa0xRcnMxdVhLc0ZhRmZlNVgvRk9L?=
 =?utf-8?B?TS9pT0s2V3dRZFpwZ2N3c2M5M3ozazN6NGZBdnBqQWx5bGpHMGJ6eGcxSU5K?=
 =?utf-8?B?UUJYbVZ3ZW10enMzRVVDR3grYzlPTTc4VzhlaFI1Tk8vakNFekhsZVI0KytO?=
 =?utf-8?B?MDJ1YXlFV21iR3UwT3BSSWtOUDdjNEk3NHgvemtxM0NjWkpzd1hpZUZvNVBm?=
 =?utf-8?B?dDBlN0ZPcHJBSEw4TnJ4NlhaRmpGVFpublQ0SWtnc3IzMWptOGN2YVBGZkt5?=
 =?utf-8?B?MURTQlJ3d29GSVp4bEVkUThBc1VBbldUanN6TjE2YlJvZGlobmVjNENSVDVE?=
 =?utf-8?B?VTBsUlhmZk9qSk5kRjFadWk0SXU2dGpnekVySkROcXJwS1ZPUG5RWjRHTUx6?=
 =?utf-8?B?S1k5d0xicThqblJTa2dYYXhvaFg4U1ZZYisyS3FWdGlLcWEvaG1GbnEramhZ?=
 =?utf-8?B?NkUvejhNd05zaGRzcEZCMEdWZDRnZHlSbG1HQ0pnbVp3cG9qVWswYnhiTDRH?=
 =?utf-8?B?RE41RmxsUTRyVnNYYXhZN3RQYWZoUSthK2p1V1BXeEhaVEFsZ3k5SThEWkh2?=
 =?utf-8?Q?CV4xoDF0HIqYn?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VmdQc0dDNG1jNzlEQmo4dzhuSlEwQ1JUUGhBc2VKSlNMVXRXdkFEd3pxUXJw?=
 =?utf-8?B?TGJweC9DNFFzNS9DY3dtY3JRcURXRW1ZK0tCempBamNKbml0L1hmSGVFcy9v?=
 =?utf-8?B?MkxtYnJFZFc0RTNPbGNZM0F6VDNBN2M4YklSbWduUXVmaG1PWnRmN0J0WlVh?=
 =?utf-8?B?bXpBWDhKeXBkU3MrL0FzQXpraC9KeExZQWJsNWw5WncxRTRjakMzMEM3NlB1?=
 =?utf-8?B?RitIYkVZb0lXS2lTTGFEaThQZm9tUXZTUlFjYTZMa09CUXpkOExLcmhnOUhV?=
 =?utf-8?B?Mi85dGRnc3FqQjFtc1A5dmpYMmxLWXpNMjFsM2xtZVFKN1BnUnZRUnU2M0Vk?=
 =?utf-8?B?TWdubFBaSldERTFDeU5ISlZ1c2E4UEVhb3dpaXdlQ093cjhyUExtUDgzbXMy?=
 =?utf-8?B?azNiVWFOdEptRWVTNDhvcE9NQmlPTmZkSWlzcEZ6VEw3MUtxS1VrRzJkaTdo?=
 =?utf-8?B?S1grQmJzcm84S2ZGbzdMU0M2LzRSVHRBa0FPYlZJQXY3Y0QybWdLcTFJeG1x?=
 =?utf-8?B?LzBQcjB4cUhKeWtaK0VnTEc5VFJVUE9sMGRFUm9mQkUvM2l1VkFxMS9KNU5h?=
 =?utf-8?B?dFFJaExvZU9mTFNiSUVWQkxYVWNGbkFlam1wU0gvUThTUVRkSUZYOWRsQ1Mw?=
 =?utf-8?B?aXVPWFZqbGNmZ3JCeU5xQ3kwTTJDd1BjckJXZlVJSGFsM2JvVVdlblBXRjNZ?=
 =?utf-8?B?SC9iRWdDZVFMNXpSTXMwdHNQYnZaYngzcit0SmtDL2ErdENzQjE4Q1YyaGhS?=
 =?utf-8?B?aTdPRm41Q1hRVUtwRyt6ZmF1SXY1ankrcGF6YjFJMXM2S1BNQ2o5Q09pM1Nv?=
 =?utf-8?B?cHZZWjNVVW9hLzYvNVoxdERneGtsS3RPaldnWGtSOElDNlJHUk5vVlFVY3NW?=
 =?utf-8?B?U0J3UHhNd0JaV0N3TGNWa3F4SUcrQWFCbVY3UGN3UkxVVHBjQ3UwaHNoNld1?=
 =?utf-8?B?a0lOTndTaFRUWnVFaUp6ajg5NEF1RmdpbmUwTEZKclRvdUdYSit2aUF0eTdZ?=
 =?utf-8?B?WHdKZU9ZMG9XajJhVkZ2QWQrSEtFeWZ1RmsvbDQrMnhjNTJvUjJkMFZtQ0k3?=
 =?utf-8?B?ZFNmdEJjdGY4cWlYaFc2YTBVNEw1c2RzNU1JY2N4b08wR2gxS1lqQkdyaGs0?=
 =?utf-8?B?L28zZWRvbGU2djArdVdaV2lRMlczcU1zRE81VEwrSVVER2poaDRyMllTNEdk?=
 =?utf-8?B?SDVJQnJmRXl0QWtKK1lDblc4YVRlZTg0MFZCZkx1OUViV0hRVnhaK3RWQ2NI?=
 =?utf-8?B?cnhmelRVeTBibDY4M3lGL1MzVWwzSjd5c3hyQ29HRFZKeFI0aHhSZ0NlaERj?=
 =?utf-8?B?UUQ4YjQ1V2NJMXFNRTg0bWVyb3VBSmJETWI2NXdkV3NtMlVHU2U4dW0xcXRG?=
 =?utf-8?B?RVZYdGNGazA0RC9MUzUrTVdrV1NiRmN6UHpZV080eHhqamc5TEVLQU1QMVJB?=
 =?utf-8?B?MnlUd1g1aWZPSDcyNXRvK0RsNk5kMHJReW9HblZjU1Q5MVJvVXdGZFhhOUZi?=
 =?utf-8?B?YmVuRFM5VGpWMnBZM2FDelA0QlZmL2xwKzhjTnlyZUNMTWI2cDNXL09PUnd5?=
 =?utf-8?B?bDZaQzN3NE5VVVgzY1l3ZGZNbm42MEpKcVJKM2lZUDhlcG9tNEs5SU9Hb1dk?=
 =?utf-8?B?ejFRRmFJNTlnZ0prS0xIejUvMDhBYlNNdUpveldRNzZxUUIyQjQvUzhXY2c2?=
 =?utf-8?B?d1JTWTRYL3l4SlpvUWFFbC9YSlF0Q0ZyczUyNmVncHdRSzlLSjF1TlVhOXE5?=
 =?utf-8?B?K2tVd2x5U3N4R25XZWxFZlVucnI5c25mSFlyR0xKSWhvelVvTCtNSWE1dXhj?=
 =?utf-8?B?R215c2N1VUx4TEkzbVdnamlJdGYvNDZCTUkyY1YvdE93SGVWSnFIY2wyQlJH?=
 =?utf-8?B?VmFMaWZ5REF2alMxZ0Z2NndRc0t3TUZNdzAyM1lzNXdDVEIrL2NqRHhkZ2Uv?=
 =?utf-8?B?bDBTNHFoVEZVRy93b3ZEVTJmeDFocDEvLzNCM2lwald5cU5OU251bWNpLzJN?=
 =?utf-8?B?ZkZic0RwOWJtdDBja2ZlWnh2ZGxzRFY3Y3llL25nRDFnSjVTQnNnZTRGdk1l?=
 =?utf-8?B?MkY4OW51QnBVVDFHNlJRUFduSEFKZWplTGlPc1pVR3I3Zm5WVEtVa0VLNG1z?=
 =?utf-8?B?OU9tVG80by83OXZHT2ExZFdIMkkrTW14eDRUdkxoWi9YbG9IU3hUams3c3JW?=
 =?utf-8?B?Wmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 289ecd74-499a-40c8-20bc-08dd571ac6f1
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2025 10:37:47.9886 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QnUnYnT53rEYv/ram1vvbKD82oAZI9mY/J7vmSWNQtB9TVVL6HSjGziMmiaTR0mo1+xsLjjQ+EQqnBXwea9jzkaxslYPLsfiK1tAnY57Vk8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7077
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


On 2/26/2025 8:44 PM, Ville Syrjälä wrote:
> On Mon, Feb 24, 2025 at 07:17:59PM +0530, Nautiyal, Ankit K wrote:
>> On 2/24/2025 11:47 AM, Ankit Nautiyal wrote:
>>> Do not program transcoder registers for VRR for the secondary pipe of
>>> the joiner. Remove check to skip VRR for joiner case.
>> Missed to drop this patch as mentioned in the last version.
>>
>> Will work on this after the other changes are agreed upon, so this can
>> be ignored for now.
> I think before trying to do full joiner+vrr support we should
> just allow joiner+fixed_rr (and also not allow update_lrr).
> That would avoid the problems with the live VRR reprogramming.

That makes sense.

Will allow joiner + fixed_rr and skip actual vrr and lrr when joiner is 
used.

Regards,

Ankit

>
>>
>> Regards,
>>
>> Ankit
>>
>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/display/intel_vrr.c | 19 ++++++++++++-------
>>>    1 file changed, 12 insertions(+), 7 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>>> index 45efcb57c77a..30fcd1e66a12 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>>> @@ -345,13 +345,6 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>>>    	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>>>    	int vmin, vmax;
>>>    
>>> -	/*
>>> -	 * FIXME all joined pipes share the same transcoder.
>>> -	 * Need to account for that during VRR toggle/push/etc.
>>> -	 */
>>> -	if (crtc_state->joiner_pipes)
>>> -		return;
>>> -
>>>    	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
>>>    		return;
>>>    
>>> @@ -443,6 +436,9 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>>>    	struct intel_display *display = to_intel_display(crtc_state);
>>>    	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>>>    
>>> +	if (intel_crtc_is_joiner_secondary(crtc_state))
>>> +		return;
>>> +
>>>    	/*
>>>    	 * This bit seems to have two meanings depending on the platform:
>>>    	 * TGL: generate VRR "safe window" for DSB vblank waits
>>> @@ -494,6 +490,9 @@ void intel_vrr_send_push(struct intel_dsb *dsb,
>>>    	if (!crtc_state->vrr.enable)
>>>    		return;
>>>    
>>> +	if (intel_crtc_is_joiner_secondary(crtc_state))
>>> +		return;
>>> +
>>>    	if (dsb)
>>>    		intel_dsb_nonpost_start(dsb);
>>>    
>>> @@ -558,6 +557,9 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>>>    	if (!crtc_state->vrr.enable)
>>>    		return;
>>>    
>>> +	if (intel_crtc_is_joiner_secondary(crtc_state))
>>> +		return;
>>> +
>>>    	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
>>>    		       crtc_state->vrr.vmin - 1);
>>>    	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
>>> @@ -586,6 +588,9 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>>>    	if (!old_crtc_state->vrr.enable)
>>>    		return;
>>>    
>>> +	if (intel_crtc_is_joiner_secondary(old_crtc_state))
>>> +		return;
>>> +
>>>    	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>>>    		       trans_vrr_ctl(old_crtc_state));
>>>    	intel_de_wait_for_clear(display,
