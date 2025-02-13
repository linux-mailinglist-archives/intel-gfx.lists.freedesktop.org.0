Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BFECA33D60
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 12:06:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97D5510EA54;
	Thu, 13 Feb 2025 11:06:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q4KaiWY8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4287810EA54;
 Thu, 13 Feb 2025 11:06:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739444791; x=1770980791;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kov+tD1+L/EoO3toHJ2wBwJ8b9A3uqsKhYs9gkChHFo=;
 b=Q4KaiWY8+yFI8vhFn3/F7x1rdomhKdx1q2PKaT6PH2NYKrRlo8rmGDl3
 FdJ8AvBwNIs4XpkGkd8q3t7vcrDerNutwIr8Y8BGwnvyvWRe2a3la1FmA
 NPWOHRn4qI7RrqKCvHXiRCgrlmljMynCgWf1DCdNmRi3jBXefHbIlyxex
 1shIZuTRvDysp6CybsltzxkS0BygVnKVNJrgCH4Uvif8UEWrKeQIWHkdh
 Tn48xLThV+sO31qX6L7ECWGOmwOJWu7XWLsKd12pq65lFok4gGJkbRZOg
 IWsTBzfr2QNmLYxCjt/9xnW4cr7NK8oGX5CcZ3TKS8A+HZF/lMO/6tt5j Q==;
X-CSE-ConnectionGUID: vtcAerKcRmijmJL2cDvX/A==
X-CSE-MsgGUID: lFXaNc6ETK+azabsh+lsHg==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="40013387"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="40013387"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 03:06:31 -0800
X-CSE-ConnectionGUID: kin+HTP4T+CMHC0AWldXIA==
X-CSE-MsgGUID: PiFffj67S1iAwTCT9OCGeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="143953833"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Feb 2025 03:06:31 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 13 Feb 2025 03:06:30 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 13 Feb 2025 03:06:30 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 13 Feb 2025 03:06:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tMn+avvjmWnipeZVgRUttBBVSEnlTZWjlrt1kzeIOqF6OKZ6rq6NXWOXddWACRlUdtEZKAA6kjaaq1WsK/p2anh9GDca1JvsIHS6n5Zbdu9mMSoxgXrmu8c14mewx0KyhiQUA/813f83xzKXGh/qvaPc967JGbM+PBPfvWxA7SvZboe6Ia2eJtCFuq6jDEEGWKijtza93WLzfpvmBjzHxqIiZzc+DcSNLGLpokPxvZXaRRZ5HQ32zPofg5exaTfypO2OWKwKHvmrN5OKa4s2MNEJr3evuiSIuXjoM2seaRNnYg8xhefdc+sasOXP+Z2Nn/fZfyEL4aIXQZmn88nQeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3jNymavbK3XFq8jH+k2Nb9yZFSx8t4rCcO46+cBa7bI=;
 b=s+2sSeGK04fefsQPpZciqqYERBzXYky0RWnJRLxNVD6a2+US5FQqhLFP3XPhO9tXCFsilcNJRYuLzTNzmPjx9ppd+SOl8d3ckJfo7m2To6bHYeL829X/LayvZ9kVPkrzaI/bZhpYUk6oBqYjyY2yp6DmtYaAheBStAxGd76rNB14bKK2PdhsyTxOr0k4eaTEG7OP7OdhtAQgxhwO/rbYqWEfyJD2w/PSx66Ch55FaAGkpDU9oJW9ENREypoIcyXhu637G40cBWt/rrRlKXvzEKg45cvAIuJ4l+bH/CvXszjIgVXeOgDKiJIPWBFEJ43UcXRwBZII5wQCUI7T01Ux4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA3PR11MB7556.namprd11.prod.outlook.com (2603:10b6:806:31f::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.13; Thu, 13 Feb
 2025 11:05:47 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8422.015; Thu, 13 Feb 2025
 11:05:46 +0000
Message-ID: <0c773f61-fb2d-4165-8168-b74d3db10c47@intel.com>
Date: Thu, 13 Feb 2025 16:35:39 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/28] drm/i915/vrr: Fill VRR timing generator mode for
 CMRR and VRR
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20250203123840.3855874-1-ankit.k.nautiyal@intel.com>
 <20250203123840.3855874-7-ankit.k.nautiyal@intel.com>
 <Z60NUJ6z8lGoeSpt@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Z60NUJ6z8lGoeSpt@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0092.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ae::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA3PR11MB7556:EE_
X-MS-Office365-Filtering-Correlation-Id: 34ff6c69-a1ab-4612-fd09-08dd4c1e5dee
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dnhqSlRDZ2pHQUhHODg1bHlBTFpDNndGRkk3UDN6UjAwTGFrKzh1VWRwTHRi?=
 =?utf-8?B?eXRDZFR6YW1CV01SUFNBdzRZVjdNalc5SVNid3VwRndkcktoSDN6bCt4R3Iw?=
 =?utf-8?B?UnRVMUNwWnJsQWJwTlg4SFdPVmJwRnAwYnROVHVkbmUrTjBUZUtGVlB3azAy?=
 =?utf-8?B?dk5veUhtNEd1VEZBTlZRUk1oeEtnTzJjcHZsU3JZK1U5VW92NjRIcE9SRHlF?=
 =?utf-8?B?NHNzL29yemFWNzRGa0pjemJQYTNZV2Vqd3BRbExtbUMwdS9Fa3A0M1Z5Yy9k?=
 =?utf-8?B?SllKZG5TZ1ViSy9YTW1zS3I3NGMzeURIYkhzSUc3VXpzQmlrU1J5TlJoR2k1?=
 =?utf-8?B?UVFKczA3MjhTWHRPNERWT2Z3bElFRmlLVHlTUU9xTXorTUFvcW1kbU5jcVht?=
 =?utf-8?B?c1AyakhXOG05dFRwVzNtNkR2aEU2TWtLQkdLSnBsS0VrdWRCTStPMlhGQ09S?=
 =?utf-8?B?N1RrbUhpVnF3ZkZHdUpTaEM3Yk00OWcxSUgrc2ZEdXhLUDFxQ3d4L1paT3lp?=
 =?utf-8?B?dklRTXRxYm9LZTY1Yncxc096aDBMYkQzdXplRklWdUZPK1pncmxGelZtNGRV?=
 =?utf-8?B?emV0eFBsbm1WTXZjNHNMK3Z1UFpKNEJBeHVCdGFlRm5DZk5wc29GMWtwdVNh?=
 =?utf-8?B?cFRLNlcrOFphSGVDM0lYQ3llRFdVWVpuSi9mTGJER25vRGVvdXZPQUgxZkxk?=
 =?utf-8?B?OGovSDdYcDZrMTRUUlRJcnEwcnF6ZnpJeUlLRGQvVXA1UHZLbXo1MzNCdEJ1?=
 =?utf-8?B?cUE0SkxvWGhZc3Q2RVA2ajNqejArY0NMMjljNE9EcVNSWU40b2hmVnFSdVBs?=
 =?utf-8?B?SjhvVmZDTEloRkxCeEtDZ0VYTUhEeWtZMFgwZHRHUm03SDBZbG85UXVLZjly?=
 =?utf-8?B?MUJUc1U3RVVvSGVJYTRwSTNyZ3pZWG5iOGphTElyMnJiZ2hIbmwrSXRqSDlH?=
 =?utf-8?B?c3BSdHo2bnhwV1ZXOHZEVkVldjMwUFdHek02VmY0VWExendEZlhoMU80eUxR?=
 =?utf-8?B?ZjZVdTlaaWJERzBWR1ArQXdLVllYN0Vna0J6Ui85UnJVVkFnZm4wWFRQdEF6?=
 =?utf-8?B?c3FsV3JBbEhlaDJqb05pZ3RkNStEeGNseGpTbmNPbHFtcEFsa1lHWDJSRFg3?=
 =?utf-8?B?d3FjZUlueGZzbjBsZ3FQbkJaK2FhTTNyRHJMaEFkbm9NODArUVVxZGxoV0Zm?=
 =?utf-8?B?TXNwaVNSVHZkdHU4SmpFcTIxaW9qeWJSSDJQbEMwWUxZSEpteDRIZlhjNlhR?=
 =?utf-8?B?TU9PR3JBWEVqWE91eHFSNUtkV3U4ZEhRTWFKR1lwM3l0NEtYZ2tzbkJpUno4?=
 =?utf-8?B?ajRieUg2b21xeVM2UU5SOU80VWZCTUpJbDFMVHBvYXFUZW45SklYNDFLdjFZ?=
 =?utf-8?B?WkRac2FGTllUcVpLSklPb0dBdjdmaGdMOUF2TDFPUkJRVjBGU3FOS3ZmVG1K?=
 =?utf-8?B?YUUvMXh0WW5FVTVscTFvY3B3UTZISUU4clFFLzJiVXFBUVBrZ0hqdXZFVFdY?=
 =?utf-8?B?WU1UaWJCd0xpL3dtd2dNbjE5WGViME9vcEIxampudHpCb253U3ZUNkZ5TUNS?=
 =?utf-8?B?STdIZWdYUEw0VCtiZ3BHa1pQOFFVMDhqYy9kRWdNbXZuSnRiTXNMcnNkSGpN?=
 =?utf-8?B?UG9NSlRuM0diQlAybXdMSkVlUGRrSUJleWJBL0dZTHZrWVp4WjZzVmN5cmNE?=
 =?utf-8?B?OTEvMmFsNWN0SVExMDM1V1ZRbE14WWJFeEtEbldWY2x4WDFheHR0bFlxdThy?=
 =?utf-8?B?eEV3OWYrYnl4aDB3SkJKZFB3eGFFTk4vY2J0OTlmQzJOMEVZVk1XUkRQc3R3?=
 =?utf-8?B?bGprWkZUL0xIbVZ6Q004N09yZG5WNy84MEFLa1hadlRlbkxFWVhLYUs3ZFJD?=
 =?utf-8?Q?B5FV/Y1szKE5N?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M0xvMjZkOUlUNUh0RXRLeVI3QXFFYTNzVEtpa0xja2NXdThpcHFudk5YczlK?=
 =?utf-8?B?c1pNS1NMOVkreEhxMzF4Y2lzK042aFlEMnBBb0JUUEozdWk5eHhiY0x4TEEw?=
 =?utf-8?B?RHNRSzE1R1JaaFVvTHBBT2lpeHg5U09JY05ERDlWN0VpQ3l3SWdGbGMvSDlK?=
 =?utf-8?B?eTFEOVVLM0liWWpBT0ZDbkJlWkdRUHd4RVVqYXNFeHVzWjBGSU1BN2pqNEIy?=
 =?utf-8?B?dS9hclFyMFJMVGVFZVVXczhrVXNOSlozTTJ4WnZBTzdXQ2hray9mV1Rtamdn?=
 =?utf-8?B?U0d1WXlNcEZVczJJdFlsVlhPdnRqQ2k3NmlGWExrOWR3eUJ4MFIyRFcvQWdj?=
 =?utf-8?B?RVVpVENkaXEyUy9iZGtVb0xMUzgremdNOVoyQTFOT0NrcFB0MVcrbHdnSnpE?=
 =?utf-8?B?M0RMSjlmTkRmOHIxMzJReTJzQ3dTNGxRaktOb2NYRW9wVC9mZ1Nxa09MdDJJ?=
 =?utf-8?B?KzNPWmR4VWpIUnp4NHFUS1BRNmdSMm1XQUZZUHpUY2N5R1FORkMwM2hVTmx5?=
 =?utf-8?B?VExBVVNVY28zVWFtNmlrZ1phUTZhME5mVFdMVTFOU0NoUHBSMzE3Nk4zeTNM?=
 =?utf-8?B?cFQ2WDRURUc3UkV6S1NtSERjSmsrVmhlT2hEaHQwY0NRWXYxODIydmhIQUlh?=
 =?utf-8?B?eDZscXRpNUw3OFFHMW1JWEJIcHlpWUpJTEp4eithdURhVXhpRW10Z2V4YjBs?=
 =?utf-8?B?MWJsbENiTTRvUE9HV1VmVnBXYWQ4RUp6K25NU0hManpaN2JHV0taUWJwdkwy?=
 =?utf-8?B?N2c5MXlVTDllZTVzbjJHOFRyTUtXc3NtZ0RWZklnb0Jlc1lkQlRRT2F0aDhn?=
 =?utf-8?B?RXhCWjlNMW1DMUpZRE96MUtQaFJIL1JLcXFJMktaaExSYlNyeW9pYTNiL1FI?=
 =?utf-8?B?WDQyUEVPNXYzZ0lVUEs2M1VVWTBUcngyTFd6bUw0czJ3SnJ4dWJYM0ZIcHFa?=
 =?utf-8?B?eXBlbVEzUFgyUGlsbkZBZlNGZ1llUXRweUNMS3U4Nkw0UTF4a3JxNEFTTU8x?=
 =?utf-8?B?bHh4eXYzYzU5MDE1WjViWmRmNUFXVXc0dlNGbHZyUmdqRU9VcnFsd1NCUFlF?=
 =?utf-8?B?U1Bydlgzbkl3MjdiTk1JNVFVTnJkRGFuLzM4SEZkOWg4dkE0Tmkzd3V0RGJS?=
 =?utf-8?B?cjJ2azR5WkM4a1VMSTlBMTJaSjJjNHR5MVJmb1hQWExBQ0tRQjdnWmV2T09j?=
 =?utf-8?B?UlZuMlV0RTl1dWgxOE1zT0k1QXY3Zk1FNlNhc0s4cVYrbC9qdnM4OHVRK25x?=
 =?utf-8?B?RWY3ME5uTmQ4TWtobjZqa1VuVExjZXBreUVidHViNnh3ZzdtRWx4TXdqODlH?=
 =?utf-8?B?U3dmMFE0VnNkS2hiMjRZMFVBR3o0TGZpMUxGeTBPdlVFUmNtTXBMNkZTQ1p3?=
 =?utf-8?B?ZGJBUEoyeU1kb0l5eUxnN3p3QndnNlpGMEptRDl0ZHJkTTRNejVwQjlxdGhu?=
 =?utf-8?B?L0ZHSFVhRlMxQzRJVmtqQ295M1VML01mNVlpbndmZkFiQkprYURjajNuS2Vx?=
 =?utf-8?B?aG9wMlRrMURjdXJUeFVXb2FvOEFvUFFMVHZick9nR3NFcEE2NkZmVFVYWS9V?=
 =?utf-8?B?ZVZmNWpRMEtsRUJ1M2dpVWY4WHVFN2Z5dElzQ1FkdXg5Vkdod1lMUnN3YmND?=
 =?utf-8?B?ZTcxc3RMSTNqR0hNVEZYaXFvdVA0cmcxUlpaOGcrRmFVZ0xNdmZKTzlaQS9B?=
 =?utf-8?B?RjV2WVFqLyt5SGU5SzRFcFY3Y1N1Y2x4ZHNpemZLb2NLeEd2cW9nbVF6S2Rz?=
 =?utf-8?B?Zld1MzR1bndhL01rdm93WnQra1MzK0szNEtNL2hCWC9ZVHBqc1JjMCtaV2tJ?=
 =?utf-8?B?Y3l1aVFBMkJDMXB6L3ZOdWV1YU1JVCs2Z2VsWWllWk00UU9HUlBuSEJCaFA5?=
 =?utf-8?B?SEVUQnE3VGM1VzhDM3NVMHRqK2VlK3dYNjgzMHlKY1JLWGNhZVZnTW9IVFNu?=
 =?utf-8?B?S1Vvb05tay9PYnRtUHFaODlpM1gxcm5TVUhKN1pVcU52bDJzZUZrSDIvWUMr?=
 =?utf-8?B?MVRwRTc4dm5rT1ErTklSUU9nTWpvd01NNisvTzV1dE1nQ1JiUkF3azlwdS9I?=
 =?utf-8?B?TUQ2MHRPT1p3cDhoVmlWMS91NzRHRzhVeFJGUkd1OXlGWTNWZUpORlRqWFl2?=
 =?utf-8?B?VVA3UlBub0pKTVZRbWFrVXhqY00vMjBzVEJScjQybFU2VUtRZFZwRDJLRFNK?=
 =?utf-8?B?QXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 34ff6c69-a1ab-4612-fd09-08dd4c1e5dee
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Feb 2025 11:05:46.8789 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jODfFMbUhT+WFDOkhIIYq2iDOSd6LdTN+iSDWjQKrO1cjng7PzH+go7lkkVWn9GS/FRliY0gHOcakH3S+is4IuS1ADObu+nxB8eIGE/eRA4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7556
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


On 2/13/2025 2:36 AM, Ville Syrjälä wrote:
> On Mon, Feb 03, 2025 at 06:08:18PM +0530, Ankit Nautiyal wrote:
>> Fill vrr.mode during compute_config and update intel_vrr_get_config() to
>> read vrr.mode based on CMRR and VRR enable conditions.
> This vrr.mode thing still feels like a bit of a distraction at this
> point in the series. If we canskip this stuff for now I think we
> should be able to get this done more simply.

Alright, so I will avoid introducing vrr.mode at this series.

Do you see any value to introduce this later?


>
> The other thing that seems to complicate things is the attempt at doing
> something to intel_crtc_update_active_timings(). I think it'll be
> easier to just essentially pretend that things are running with the
> legacy timing generator when using fixed refresh rate. That way
> we don't have to touch intel_crtc_update_active_timings() at all.
Okay will change this thing.
>
> So basically just:
> - add the vmin/vmax/flipline reprogramming to vrr_disable() and vrr_enable()
> - make the timing generator enable/disable optional in those places
> - add the stuff to the modeset sequence to program the initial
>    timings (ie. fixed timings) and enable/disable the timing generator
> - also update to the new fixed timings in intel_set_transcoder_timings_lrr()

Alright, I was missing this thing.


> - adjust readout to not set vrr.enable when vmax==vmin_flipline

So essentially vrr.enable will track if variable timings are used or not.

Means we will not track if vrr timing generator is enable or not, but 
just if its running with variable timings.


>
> I think that should work perfectly fine for adl+. icl/tgl will be
> slightly wrong due to the weird extra scanline delay after
> vactive, but I don't think we should really have to care about that
> since we aren't going to enable this on those platforms anyway.

Alright. Will make changes and send new version.

Perhaps I will come back if I face any issues.

Thanks for the comments and suggestions.


Regards,

Ankit


>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c | 1 +
>>   drivers/gpu/drm/i915/display/intel_vrr.c     | 5 +++++
>>   2 files changed, 6 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index a6383ddde871..9cff080d4ff9 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -5803,6 +5803,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>>   
>>   	if (!fastset) {
>>   		PIPE_CONF_CHECK_BOOL(vrr.enable);
>> +		PIPE_CONF_CHECK_X(vrr.mode);
>>   		PIPE_CONF_CHECK_I(vrr.vmin);
>>   		PIPE_CONF_CHECK_I(vrr.vmax);
>>   		PIPE_CONF_CHECK_I(vrr.flipline);
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index 6f314e209e96..ded5466c5214 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -227,6 +227,7 @@ void intel_vrr_compute_cmrr_timings(struct intel_crtc_state *crtc_state)
>>   {
>>   	crtc_state->vrr.enable = true;
>>   	crtc_state->cmrr.enable = true;
>> +	crtc_state->vrr.mode = INTEL_VRRTG_MODE_CMRR;
>>   	/*
>>   	 * TODO: Compute precise target refresh rate to determine
>>   	 * if video_mode_required should be true. Currently set to
>> @@ -243,6 +244,7 @@ static
>>   void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state)
>>   {
>>   	crtc_state->vrr.enable = true;
>> +	crtc_state->vrr.mode = INTEL_VRRTG_MODE_VRR;
>>   	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>>   }
>>   
>> @@ -506,12 +508,15 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>>   
>>   	if (HAS_CMRR(display) && trans_vrr_ctl & VRR_CTL_CMRR_ENABLE) {
>>   		crtc_state->cmrr.enable = true;
>> +		crtc_state->vrr.mode = INTEL_VRRTG_MODE_CMRR;
>>   		crtc_state->cmrr.cmrr_n =
>>   			intel_de_read64_2x32(display, TRANS_CMRR_N_LO(display, cpu_transcoder),
>>   					     TRANS_CMRR_N_HI(display, cpu_transcoder));
>>   		crtc_state->cmrr.cmrr_m =
>>   			intel_de_read64_2x32(display, TRANS_CMRR_M_LO(display, cpu_transcoder),
>>   					     TRANS_CMRR_M_HI(display, cpu_transcoder));
>> +	} else if (trans_vrr_ctl & VRR_CTL_VRR_ENABLE) {
>> +		crtc_state->vrr.mode = INTEL_VRRTG_MODE_VRR;
>>   	}
>>   
>>   	if (DISPLAY_VER(display) >= 13)
>> -- 
>> 2.45.2
