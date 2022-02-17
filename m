Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E2784B9CED
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Feb 2022 11:18:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7FDF10F0C8;
	Thu, 17 Feb 2022 10:18:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DE5E10F0CA
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Feb 2022 10:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645093079; x=1676629079;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=gkZfQ0YzQuAK672gUc8ph16JdAVvs8cICpEb5Xr5JLw=;
 b=LFVb3v+oL3298FOKQlMAKaOgnW1No5ozEP583t1GWOwfq2l2qCm1GGlU
 KgWsokb5tTZNsd33drh5TyUr5b6W9309Kc5kXpU9Xo0ddhaY0W0SivauT
 5q4u6Apmj68V4T1+sIPJYLVEq0yffSGe29N0C7ODWpcmsreBOfPWEiGPM
 eaVL8zvtB/71E3Qh5GMyMrWgyFN+gZYhqS+WnBKsdWoLLIz5igOVXJI5V
 BliRNg1ocOrm8d/i8/xz9L47KAG40aGkKBgYFW+gDnsbjj6+1AFEXWpKz
 ORAMtSSQlzGnGkNbbSZvCVjuICivGGjrUL+WO46oixHCnr9nGCVCX20dL w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10260"; a="248439811"
X-IronPort-AV: E=Sophos;i="5.88,375,1635231600"; d="scan'208";a="248439811"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 02:17:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,375,1635231600"; d="scan'208";a="774554927"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga006.fm.intel.com with ESMTP; 17 Feb 2022 02:17:59 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 17 Feb 2022 02:17:58 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Thu, 17 Feb 2022 02:17:58 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.45) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 17 Feb 2022 02:17:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HW6Gn7bWE5sM+JJl/EouxyvG5UVC0xXPUdxFctpkpRFjc4WLYtizL9JFaNMWd0D5RwnBlOP9h/WqtBgFUiXKXV2Jfx+4nNWEd7975Z5YplMMqY3arym2JbiVxYInfSVgeC4TADZkMr8KX4CpBgsVd0fqDVvwdQKMEag6ofexWBfPzMnD12oSDN4j2PfUAvtpDVwT5zBuWSivSlIl0uoHKeDnbVNWmY2YPuSi0uBV5I6wF75wi5m6qKSDJ5bhSOBiP3idn9PxInP0yKTmvD+LhDMLDfK5peN6bd4uAbzMq2eCl2JkCNgEzPVrmxU7M3yQyf1y+kMmf2vABS/+C5YnPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8m9CBbxibY1JNwg/YzA1HBnIAuAqq+FDG8JXot1xgqI=;
 b=aoEOGakGNHhxXJxbuz7cMIuhQ5M4j4P0HBvDceGWeOoqyPkbo4ljvEcrnLyBQ3fxub6Hee6HICtrHXCFja5A0KHvaHJNK4C71wgmtOeT4hIfus4Dwy3NVQuupUp7fmZ0uT2xOF+9GdC1NAnqDHGJ5U5yWSbKoeDFiwxJVzAARWxxau/HNtUciElnxwxeFGCtmZTSCj73EDd3Pnn0vdSYPuZCAdZRm9t35jKQkIeAURjf0ldU4Lg4YHM19P32r2hfzoILhvUZi1lFkKC12s/oY9oepahR/mqZ3FMq1hRmwhtluwG4nr/VmjXdCKhl47O/WagCm6XdfMVfDBlQcZP8Ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM5PR11MB1354.namprd11.prod.outlook.com (2603:10b6:3:15::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4995.17; Thu, 17 Feb
 2022 10:17:56 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::2d:20a0:15d8:e530]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::2d:20a0:15d8:e530%2]) with mapi id 15.20.4995.017; Thu, 17 Feb 2022
 10:17:56 +0000
Message-ID: <beba377f-1cf5-48bb-20cd-b91cd11acb86@intel.com>
Date: Thu, 17 Feb 2022 15:47:46 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.6.1
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220215183208.6143-1-ville.syrjala@linux.intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20220215183208.6143-1-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BMXPR01CA0087.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:54::27) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d00dd525-28ef-40f3-a250-08d9f1fec3ee
X-MS-TrafficTypeDiagnostic: DM5PR11MB1354:EE_
X-Microsoft-Antispam-PRVS: <DM5PR11MB1354A3CDAAC848DCEF0B9DA3CE369@DM5PR11MB1354.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nbp788WI8+MIxTKcSUJEEwlTq0mjFTzolK7767/1KiUY1AKNq4Fk9m9Wxu5KpNtR33ZFYeGE3WnhreYdgUASio+pxxY5QSlfOv4geSxev4sLXwsrg3E/nrf7y+BIG8ETNy55t5LWM0bv1KTXowe53RQVsb5Lys3jbRe+nfCAKIdwDt8RL+AR1+EkgUJfEmV7FdBaw1/9pSmX4yxE9to8n2PXBRyMQwR/PCpHzv8YbIHXjJP6j6vyMSDkr6ptp8gJ/ZtFrstqC8KsPdCGBB6/F491bPyiELHbbfJPppIG7GIQ+1L/i2aUTvWkVJJTWv3KEHKeW6gQzTqZbtGoENZPAsdiE86ykxD9qkytqDITp3J3st04nMc66HwP6c1xZm1/1Oh1rS3eZP1kycUsRr6SCDgHFB69r5orkSr20vw7Sj9leivb5JjbIrqeLHmCTG777mceXJT0HIAuxC73c4QrUpQgFam55o/IqrNCiGiitL2VwWIIOpPxZPXKdvJpntK9oo2lj9CbIuaG5q37iA1mz2WICa+tdGqywx7Hner+xPHcEuMaztmMDKHRz4ItJ9Bb50BNBXEB8AFmauLqe5y8ATC2tnWEtoTY2T6XZuTkccakjszRrFTuJwEeKlvnCSU3Q+O0y6PY8PxYiAMqmgPZ9V/qOWpLIokze637GkpdY08AXdVNasI5Vt4L0ogWlxPYhxA4Ru2KqGvfFG43SGSLpfnjmm/j6go2f9bZ2XERnb0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(186003)(26005)(86362001)(66946007)(316002)(5660300002)(66574015)(2906002)(66556008)(8676002)(66476007)(8936002)(83380400001)(6486002)(36756003)(6666004)(82960400001)(31686004)(6512007)(508600001)(31696002)(2616005)(38100700002)(53546011)(55236004)(6506007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TXVEcU1zZ1dWbk5vQ0J2b0xDckhjUDNkclo3Q0YwS1R1cVNMa0t6NkhJWm84?=
 =?utf-8?B?YStkYlc4T2o2L0VVTnpVTzY4ek5BNkwrcThJU0NOMDQ1MTFha2RvS21pZHNX?=
 =?utf-8?B?T1FTOTU1bEFMam1EM3FFblRYaThMRXplMks0VDg0VVRVQ2NpYnR1ek42K3lZ?=
 =?utf-8?B?WVNpU0Y0N2JVdURjMFY5bDA4TjNwekcyNW1IVGdJVklNMDkyZ2N4cEtuaVhh?=
 =?utf-8?B?N2xjZm1kTGNZRk5NcHNReVhTRHFUKzdDUEU5NU0zWGdWL0dORFVWVmM3eEtk?=
 =?utf-8?B?MXA0UzhVMkx2YVo1eEF1V2dQM0ZoNjB6blhMdkt3ZTN1UU4vSnNJQktncWl5?=
 =?utf-8?B?WG5SUUFSODFvSk5pRklIZEpXMDFrZVp4NVZkV1phSEk1VTRJOFZEUXI4amJQ?=
 =?utf-8?B?dHJyUEhWWmYrdytueVowK3FhY1lnZVgxL1BXenlDN3UzYmYxWmNReGg3Smlk?=
 =?utf-8?B?d3JNZWtrcEY3QnVrRXpWRit1T3FvYXc4U3FXK0p0b1kvTVkyOGhQQnh0QnZp?=
 =?utf-8?B?bEhPZW5ISm5BQUZwNXZBbGFHbVk4UXh0UFJmRUY3VEhZUmVtQndHV3Y2L2I0?=
 =?utf-8?B?VzVxVFdlQ0VZd2RxL0xuOHQveEsxeXNwSU1HamNGOXZKa0dRQXNLNWkxR1Vi?=
 =?utf-8?B?K1BmcnJ3elNVZE44eHN3VkZLTVdqR1Jkbit1ZkVIR1BNTFAzNFlmTFFNSDh4?=
 =?utf-8?B?bytNenVJQ1lrenVMcTRpejg1R3k3TW1wRWFhaVRGU2FjU05aU2ZhN0pNdEJj?=
 =?utf-8?B?d1JWRVE3U1pRQUtnMzczcCszNktxWjdscTNrS1BQWTlNaEd0ZjU3cllLTlM1?=
 =?utf-8?B?eXBXNm5FbCtzcEFmblJyS1lrMmFJTEVRYkRMcExMZWdETlNwMHZhR28rZlZv?=
 =?utf-8?B?LzNmNFIyUWpaVThKbGtJMW8vR1lWeEFyVG9YKzVhM0JrbUFvbTV3UmllRjJz?=
 =?utf-8?B?WnFmNE1GT2lBRXFKYUJJVmp5eTdaclNIcHZVdXM1UFpkRGlPb2lyZU9QbDFZ?=
 =?utf-8?B?QmR5Zk1iNUVnNjJQNnQ1MTNIVnYwL3c3MDNGMW94VUY3NTlUVmpSazFYa2wz?=
 =?utf-8?B?eTJYQzlLTHZBMFZ1QnNCZ2cxRVozSEJ1VzdqZkxMNlBRQ3V3bVJqcTZyOUV5?=
 =?utf-8?B?b3JlaGhuTWVLdU1qZk1rZENPVTdEZjFnYUVsZlFtWTkxak82UHdCakVVSjl2?=
 =?utf-8?B?RkhwR1p5YWlUVDAxSktFeTJzMzNqNzErZEp4SUdYQjNxb0ZzU0dwc2VzU3Fv?=
 =?utf-8?B?NWkrQVNBQllNV3JmMysxcXFYZXo0K0VPUHRRZzhtZXNYd1JIRThzRVpDeDIx?=
 =?utf-8?B?bHI2WG04UW1Ga2g2NnZ1UkZQbkw0dVR6SmxCMnB1UzM3c2t1MlBrMDJkOTgz?=
 =?utf-8?B?Yk1XNkN2clVvM2tOUEw2bGQzZ3F3aTRQT2RyVFFVT29XWGVuVW0xSVFUQkli?=
 =?utf-8?B?SUo2bkFVa1oxWXU2N0hhRlhOVFR3SFhyN05CaVNDVmxoL0xXWDlKTUdXTkpq?=
 =?utf-8?B?aC9UNG1mMktRelBXQjZyZUh1TTkwZEsyRGhTZjZFRkhvQm9VKzNocWViQWlX?=
 =?utf-8?B?U3h0OTI5bHBVWThmR3BjWjBrZGo3OHRLQjcvSFc1SmpqOVRqZDE5SUMveUx4?=
 =?utf-8?B?NmtvbytRblh1Ynlwd2cyQkpaTU1mSEZCSWRnT280Tm90WDN0MHUvemlNMHFn?=
 =?utf-8?B?MGJ6ckI0MVNhZ3o4blMva2d5RWVJNkV0SEY5emQxZ1lENVZ4b0RUczc0WUVL?=
 =?utf-8?B?NmpVTisvMWozblJzZ1poV0FJOVF2VGdyUi8xSFVwMng3QVcreGwwN3hjbDZM?=
 =?utf-8?B?eHVjZFBEZE9nWHBxeG8yKzg4UFRrNDdTcGVyRk5yTi9HRlNKK3VxaWZ4OU5T?=
 =?utf-8?B?N3p5d2ZHR2NaSHlQOEFLZEZlR2wwNVlETHlXMytPbGhDNzJxL2pSZ1djWmJD?=
 =?utf-8?B?cTRoMWsvYk9CbGo4S2tzZ0YwVExxbjJEdThCQy9CNjlSY1VQR2Zhb29rWDRN?=
 =?utf-8?B?eGlQRmQ0emRwQUx1Vm5DazAzMUd0NmVkTVE5ZjREUXB4NVJkWXJVWll6WjRs?=
 =?utf-8?B?enJGR243aUUyWnRUZDVWbDA3eEgzeGJzWGJpSGJlS2ErQ04xWG5jQWkvNUIr?=
 =?utf-8?B?VDZmbWJHZCtRTGRDYkN6RlpJNEVWV0xzaHAxOFlMTE5BQUR4Wlc2ci80VExP?=
 =?utf-8?B?cHhDcTZTSUIzdGlRVnFPN3owSXA4SEpoQk9Pb1N6cnEvdzdQMXdVL0VESHQy?=
 =?utf-8?Q?dZ3PlQqJn8J/8rwbbFYRkI/k39k9KsG7JKwT5Dr/5U=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d00dd525-28ef-40f3-a250-08d9f1fec3ee
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2022 10:17:56.4568 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: y5jF5jXJfmgDJ/m5LZ4hMmFmhG3gfebFG4+tLJJWuH6JkNFIkioV1wG+mSunOjIE3xHVAg48UCfvpKpkg5/UlAioZFrmIhXFejqTSAjJEwE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1354
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 00/12] drm/i915: Move bigjoiner refactoring
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

Hi,

Was able to test 8k@60/30 with the changes, where bigjoiner will come 
into play, didn't get any issues/errors.

Thanks & Regards,

Ankit

On 2/16/2022 12:01 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> This is an attempt at more or less finish the bigjoiner
> state computation/readout refactoring.
>
> Stuff that should now be in decent shape:
> - cursor should appear in the right spot on all pipes
> - plane clipping/etc. independent of number of joined pipes
>    thanks to the PIPESRC drm_rect
> - the PIPESRC drm_rect should prove helpful for the seam
>    elimination stuff too in the future, as well as for some
>    other planned scaler fixes/cleanups
> - bigjoiner vs. MSO timings should be properly handled now
>
> What is likely still busted:
> - panel fitter. The state computation needs to be redesigned fully
>    for bigjoiner. Semi-related to the aforementioned scaler work.
> - the modeset sequence is still a huge mess. That will have
>    to be the next major refactoring target I think.
>
> Pushed the lot here:
> git://github.com/vsyrjala/linux.git pipesrc_rect_3
>
> Ville Syrjälä (12):
>    drm/i915: Fix cursor coordinates on bigjoiner slave
>    drm/i915: Remove nop bigjoiner state copy
>    drm/i915: Rename variables in intel_crtc_compute_config()
>    drm/i915: Extract intel_splitter_adjust_timings()
>    drm/i915: Extract intel_bigjoiner_adjust_timings()
>    drm/i915: Extract intel_crtc_compute_pipe_src()
>    drm/i915: Extract intel_crtc_compute_pipe_mode()
>    drm/i915: Fix MSO vs. bigjoiner timings confusion
>    drm/i915: Start tracking PIPESRC as a drm_rect
>    drm/i915: Eliminate bigjoiner boolean
>    drm/i915: Use bigjoiner_pipes more
>    drm/i915: Make the PIPESC rect relative to the entire bigjoiner area
>
>   .../gpu/drm/i915/display/intel_atomic_plane.c |  20 +-
>   drivers/gpu/drm/i915/display/intel_cursor.c   |   7 +-
>   drivers/gpu/drm/i915/display/intel_display.c  | 350 +++++++++++-------
>   .../drm/i915/display/intel_display_debugfs.c  |   6 +-
>   .../drm/i915/display/intel_display_types.h    |   5 +-
>   drivers/gpu/drm/i915/display/intel_dp.c       |  13 +-
>   drivers/gpu/drm/i915/display/intel_overlay.c  |  22 +-
>   drivers/gpu/drm/i915/display/intel_panel.c    |  70 ++--
>   drivers/gpu/drm/i915/display/intel_vdsc.c     |   8 +-
>   drivers/gpu/drm/i915/display/skl_scaler.c     |  12 +-
>   .../drm/i915/display/skl_universal_plane.c    |   4 +-
>   11 files changed, 294 insertions(+), 223 deletions(-)
>
