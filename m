Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E45CC4EC9AE
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Mar 2022 18:31:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1971D10E73D;
	Wed, 30 Mar 2022 16:31:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AD3F10E73D
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Mar 2022 16:31:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648657890; x=1680193890;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=a+ls/9hGCNgO0g8rNFxslLZd8XtCZ8djcj+BasQOtR8=;
 b=eQ3BrCQ/6F9hIp4JVxIh+blWxurns4NjPrAu9GeOc/DhtCR9VmrJ2kqY
 nvTl2aBa39zO8gdMK8IY+7YYHPEawzxH5TIPzSyTYTZ65ahALmogDfWcN
 nc3evsAt+oL7SCDF8AN6SvMI2HzeEbWSlyPm9kOjzcsKCvFvSgOO9wCEC
 XqifLKGmAknaIdG08dSK58DLFxNwQB1jBuXY2FDhzH3h3t0n+ksX8S9F4
 qKtm+/BWrDdARf0hKSHjRZOORTfiRQKzsgtfwmG70KDPLNcmME2zhVMk/
 jmpUlbEYHwL0kv0Sdhc3ttr/Ky3odm9cS+WP+nMvpCaar0hnfbfz2B0D5 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="320284051"
X-IronPort-AV: E=Sophos;i="5.90,223,1643702400"; d="scan'208";a="320284051"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 09:31:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,223,1643702400"; d="scan'208";a="653920825"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP; 30 Mar 2022 09:31:29 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 30 Mar 2022 09:31:29 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 30 Mar 2022 09:31:29 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 30 Mar 2022 09:31:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Tissp6dJ6COym0fznEgoZEnlZgMqK5qOHQywPWeoiXJRCn1PxaCRzD9JBClo9msydPXRoSyUOZNdklsCvRXnGMTCBnsmMg5Y7l46wdnHFG/FE2MAUgoBI4E+eIju/Pzkz6Sr3Og/4wqhh7RxQ6THCL7vDLDpk/Llt0eBrtFKg6n4cZmqsyBrRexmZj6rCL7Lko6JXxvht4Q6NUh99tBLiGhX42SH40RezcZZkuf7JCWViwsjn1TlM8Ywqa+bK7bs3reUNzut+0cP6TTnuRlDs2pDV32O4UIGYODkJKjSTkkvxOCXchRp3MRyPBl/Vk3P2i27b3GaroW0mOKD8LLV+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EPd2THWlnLr6Z/okpQGfs8YUmiPFDXWkERDKu00r/lo=;
 b=J1Ft/tEKorS+8cqOtamhHQH+S761XIzGLeuhqjCvD2ytlb4O2YlIjnSlDzeg1pmlxr4PlHYGoDX3MVGiimT7QK5T+FwvQtf2MwJEGibwiYNMjH9jDsqHnW5twe5vuo0urAulF2+cTumI0Gx9FQZGbFlvMYyzfnuzV/5EoKxJZry2Nm6jlpAr/ymX0gGf7+GkDJmUjhKYL0rOxRWFYdGtiLBYnUiaU2CLG/I0Qe00muJ3FBPJZdajRexFf6luymi5LLk4ygc7Dige01iFQc1zFI9ndSuQEEejB1UZ8AbZmJIq1hXEWPEZ9Wwpo7F4ekwEAhG6+GcOwQ8raLUI74UfpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2936.namprd11.prod.outlook.com (2603:10b6:a03:8c::17)
 by SN6PR11MB3213.namprd11.prod.outlook.com (2603:10b6:805:be::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5102.22; Wed, 30 Mar
 2022 16:31:22 +0000
Received: from BYAPR11MB2936.namprd11.prod.outlook.com
 ([fe80::5dae:3976:a7b2:8cd2]) by BYAPR11MB2936.namprd11.prod.outlook.com
 ([fe80::5dae:3976:a7b2:8cd2%4]) with mapi id 15.20.5102.022; Wed, 30 Mar 2022
 16:31:22 +0000
Message-ID: <cda3612a-ceda-04b2-1d5b-e009dbfd8992@intel.com>
Date: Wed, 30 Mar 2022 09:31:19 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@linux.intel.com>, Tvrtko Ursulin
 <tvrtko.ursulin@linux.intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20220329235830.1025100-1-casey.g.bowman@intel.com>
 <20220329235830.1025100-2-casey.g.bowman@intel.com>
 <b468e1b1-0d7e-6384-77db-b0d1519539c4@linux.intel.com>
 <87zgl7buyc.fsf@intel.com>
From: Casey Bowman <casey.g.bowman@intel.com>
In-Reply-To: <87zgl7buyc.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4P223CA0008.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::13) To BYAPR11MB2936.namprd11.prod.outlook.com
 (2603:10b6:a03:8c::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1d49fc1f-5a07-44f7-5745-08da126ab9b9
X-MS-TrafficTypeDiagnostic: SN6PR11MB3213:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <SN6PR11MB3213F668A9F489474A14412ADD1F9@SN6PR11MB3213.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: oaHi1cyrfx4TMWBtlWwFh28c5DRNj6V/L6LCxjUEDwx65F8M0lGILqWcRn4/ewAn17k81MamR08EoXz9w6z33GbLYON6rL1pEqBMzu7yZGpiL9ep+wYdlruwzAQY01BFr6XmQclDAOeL8hW8+1Y6YsS98qL+H3cXJZ56tQ9Z7lIFSGLJfuTyxxMjccB/gEVAVpJp9wViJ81z5hT8g6WC1IZTo7yMt+JL2Kf4cMmxpngXyDdW8IMC12n3z8jp6VtiymusapsVGAFO92RCRiThEIl28YHQNv5ZnVPVUS9yLzW8wZtcqkMLHKI+2SU7Lnim9pSYt68YCL4ONjGXnZRZlgdqIoIsa5DjEhDMjAdskUwNiv1Y3m4cOXquwEunhD4h0cdd+E6xIYF+yTs0sXb0ae6X0PXjBEOjietzfAFuqDZpLC7jm53Qf9ibA4UMEWSFGJ8IpJcs13qKI1PMNsu5Rt+X92oKqaP3++IxBmMxIbT30kMWpAMTsv84Daunjl8zg9U17ShlELGKUm228KWFZGm/rX61vGVpVuozW+2ZMsqGiDqG+KUh/AslwWysovzirNPYqnPy6ixRSamYrvT6qoF90MKMPv1QIRj2m4nrhzbvdHyKRVQ+FfC0yMGZC/U2FCx2wKqD4RTQqm+7hnR5n81JIEUSJN+EzNBNgDD5ZmAU0sOqWoJqqvD6IUWdnADzB8kOThh8iDHaFdZkV0ZuGxOSM2NdsHbPbxcIpfOduV0mjnGEUWnMVGeF8pczXFaztU6Qj/D82u/ZysEGzXr6Ew==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2936.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(83380400001)(31696002)(38100700002)(508600001)(5660300002)(186003)(8936002)(30864003)(2616005)(26005)(6486002)(66556008)(6666004)(53546011)(82960400001)(6512007)(316002)(6506007)(110136005)(8676002)(66946007)(4326008)(86362001)(36756003)(2906002)(66476007)(31686004)(21314003)(43740500002)(45980500001)(559001)(579004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eExqb0R6OWdSTm5HOTd2N3Q1WlVHZkdRcm9wc3QwdVZ0ZXJyVlVFTUdqZmFl?=
 =?utf-8?B?MlB0eWNtdkl2NmxkUHV2V0NzWE5EcGhISlV2eWxESlEyT3ZLZ2h5OEpLUk5n?=
 =?utf-8?B?d010RjVIYXR2czI0NkxlMk1OQnFXL0pPMkxtSEg0dnN0WmJZRE5hS2w1QmNv?=
 =?utf-8?B?WlFENWZzUERIMjF4eHBKZkxqNXd4OGdkYmJMWWlDU3FESUR2cGcydmlDTjZ0?=
 =?utf-8?B?eHliV1QraXRrenVUUEEwOGRSVlpLTzk5bmZ5d1FOTWk1VDZRUlloUEc3RXE3?=
 =?utf-8?B?ekhKRVZ5RjJGODU1bWdhRHJJeXMvWEhjUFJOT01UU21nNUVEODZ2MTdRNjlr?=
 =?utf-8?B?cElLdGlFZE1xRTN2Wjh5OEswZmNwTGU0Mjg3QUxZNjNxMm1XSUhKaERRcnAv?=
 =?utf-8?B?bjZ1ci95bFlhNit5SzBkZlppa2tFd1dPaVRtTmlFdzBIcWNXcHZmc3hTYnk0?=
 =?utf-8?B?eWNRcEQrNzRLV1VHWm1uZENkZTVmUHQ1WEhkUCtHSEc5Y1BJUkdCN2d2Y1M0?=
 =?utf-8?B?dkQ1WmYzZkw5ZjJpNVdqQ200QXZjazRWVXdFM2ZpUUplMXNQOUtNZjZOSldx?=
 =?utf-8?B?dUV6RjlTLzErVW1KYUNmSGo3MHN1RUxVcE53a1ZOaWFlalVNRkR4a0RSdHVE?=
 =?utf-8?B?cXcwczhhSVBWaWk4ZVJOZTIyMHhXNmUvYmhieERqWFFlWEpSNDdhRjVoVUow?=
 =?utf-8?B?S3NKTS9TdjRkZjMvZ1p5ckpXSThGR29DUUhIUWwxUTFPS0hOWHNhaG5kNDRR?=
 =?utf-8?B?TVI3YXlya1gwaDJNRnJ6SjB0ZjNCVXIvUmluMHVWT2o0OVBqV1gyVnpYaXdn?=
 =?utf-8?B?WjB5WmZ3ODk3cThjZThNaXVXbWREckpQSTQ3UXYzVHNTL05hQjFTUkk1eWNK?=
 =?utf-8?B?VkE0U08vS3VvU1VQUlY1L1RWbVYzZ1l1S2hHZVFaaVk0NkQyWFJmUWE5cFJY?=
 =?utf-8?B?MUQ4UStLZmtTTmdFWFdEM1oyRHVlV29mM3d2YWs3ZzkrZmJsb3hMd0lIdS9n?=
 =?utf-8?B?L1pVSG1HMzZhalZXN1VlRCs0VVYvcldrK2REMUtNOTJlVXF1NnVhWFlsdE1Z?=
 =?utf-8?B?MGIvYWE3QU04TDVtSGFjRGM2T1JLd1plbHBYR3ZwNkNWdjJ1dVp5dTRXQ3RZ?=
 =?utf-8?B?ZEpPem8yaEduNTE5RzRYYjBIRGdhK0hOVWQxV3FYL1dDK294cjRmVkEzN25Q?=
 =?utf-8?B?cnBXemFZZS9tQ3p5N2RLSTl2R2hJUVd2YTgwZGVaWGU0M3AxWTVBcFU2SEZW?=
 =?utf-8?B?YUozNTRRM1pmcGROdDZGd0Exb0tZV1N5YTlxOXB6TGN1WW1mclFzZmJ0UlhX?=
 =?utf-8?B?SE5YVnE4d3VSa1cvYzRkS3hsbzVtUWxhdmIvbVIzbEFVcWhubkwzcGpBZGdG?=
 =?utf-8?B?T1N0UnJDQXdDaVFRZzNVd3pRbS9oVXhuQ3RrN1J4YkNZVTBHd041QVc0VUdw?=
 =?utf-8?B?eGgySUJlbmxrZDJrcTl0NDR3TzRKUTdSR3BlQ20zcVZaSDg2QXVvdVRGdmhM?=
 =?utf-8?B?TDI0cnBCM2szSmtCbXJuRjR3czV1cjFGQjBDSWtHMnNEUytsakpHUDNFU0tJ?=
 =?utf-8?B?ckozOXdLdy9BWG01NE1LOGlDTW1HSGt2YWV0Q2VBM0N2WWNKaXdYY3M3SCtG?=
 =?utf-8?B?N0RPZy9iczY2MTJFTVd0R3cwWGRTdHlRWUtwYllmRC91bDFJc05IU09QaWR0?=
 =?utf-8?B?am9XaDNKNitFblo1c2RDTS85UTN4cy9RSGprWWhDT3NDSW9mbGQzMVhkaGdl?=
 =?utf-8?B?VEF4bkt0MmpsYlZxaHEyYzZTUlZyTDhkd2pnTUt3dUU0bXdUNTJGWml3S290?=
 =?utf-8?B?YVB3Q1B4bXFLMC9xanM3VmMyWlBCb1luOXRUZEpONDcrZ1BvYlZkbG9NOTc4?=
 =?utf-8?B?NkljZDJwc09PV1NDWEtwb3U5V3ZxYWZHWGZ6Z3RqZmVic0xkeG0vYlNjT3Jn?=
 =?utf-8?B?N0tXRkVIYUdlYlE4Z3d5SFNFdC9HSVA3bjBHT3RwNFNNb2RrUURsdFdTUjZD?=
 =?utf-8?B?VnBJSXUvTlArYkRmbi9MV3oyVE8zVXV6c3huTnpabFdXeHlEOWhEM0g5bXVD?=
 =?utf-8?B?WnVkazFMUG1yalNTZTN2cHZVeUxWY0lGNHR3M3VUb05QODJOaHZmd2RsOFpi?=
 =?utf-8?B?RVVlQmt2cUNwM0dadzUrdkk1RUd5ajcyZU54VEtXd0dRaFhNd0RlZlFzeW03?=
 =?utf-8?B?Mk5nUStZL3M0SEJLaUJaNDU1cjBidi9SeXFKVy91aU16RVRuT0pZZVVzNllR?=
 =?utf-8?B?QVR0eVAySWtZdDkxdHo4UUNyZ0xwSnhEWjNLRU00OW1OUHN3SFhTWVRPVXRN?=
 =?utf-8?B?b2lRYjVqVlpTQnNtZG0xK205T1JNdXBGQ1hRUWg4UnJ6RkJ3WmN1d21qRlVl?=
 =?utf-8?Q?GIyXYZeUXdWC9EOc=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d49fc1f-5a07-44f7-5745-08da126ab9b9
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2936.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Mar 2022 16:31:21.9829 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vnp8tLhy1/L1p8tHdazMRwxeKsj+QTLO7BBsRPU3Ich5+x65Vq2y4Wms0+my+KsosFaQ2lNQSYvvbIf7yFsZMQj8zByvYy1gcy9d3N8uvjE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3213
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 1/2] drm/i915/gt: Split intel-gtt
 functions by arch
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
Cc: thomas.hellstrom@linux.intel.com, lucas.demarchi@intel.com,
 chris@chris-wilson.co.uk
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 3/30/22 03:23, Jani Nikula wrote:
> On Wed, 30 Mar 2022, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
>> On 30/03/2022 00:58, Casey Bowman wrote:
>>> Some functions defined in the intel-gtt module are used in several
>>> areas, but is only supported on x86 platforms.
>>>
>>> By separating these calls and their static underlying functions to
>>> another area, we are able to compile out these functions for
>>> non-x86 builds and provide stubs for the non-x86 implementations.
>>>
>>> In addition to the problematic calls, we are moving the gmch-related
>>> functions to the new area.
>>>
>>> Signed-off-by: Casey Bowman <casey.g.bowman@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/Makefile           |   2 +
>>>    drivers/gpu/drm/i915/gt/intel_ggtt.c    | 665 +-----------------------
>>>    drivers/gpu/drm/i915/gt/intel_gt.c      |   4 +-
>>>    drivers/gpu/drm/i915/gt/intel_gt.h      |   9 +
>>>    drivers/gpu/drm/i915/gt/intel_gt_gmch.c | 653 +++++++++++++++++++++++
>>>    drivers/gpu/drm/i915/gt/intel_gt_gmch.h |  46 ++
>>>    drivers/gpu/drm/i915/gt/intel_gtt.h     |   9 +
>>>    7 files changed, 735 insertions(+), 653 deletions(-)
>>>    create mode 100644 drivers/gpu/drm/i915/gt/intel_gt_gmch.c
>>>    create mode 100644 drivers/gpu/drm/i915/gt/intel_gt_gmch.h
>>>
>>> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
>>> index c837a29ffac8..b7bdaec99118 100644
>>> --- a/drivers/gpu/drm/i915/Makefile
>>> +++ b/drivers/gpu/drm/i915/Makefile
>>> @@ -126,6 +126,8 @@ gt-y += \
>>>    	gt/intel_workarounds.o \
>>>    	gt/shmem_utils.o \
>>>    	gt/sysfs_engines.o
>>> +# x86 intel-gtt module support
>>> +gt-$(CONFIG_X86) += gt/intel_gt_gmch.o
>>>    # autogenerated null render state
>>>    gt-y += \
>>>    	gt/gen6_renderstate.o \
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
>>> index 04191fe2ee34..97a595e42135 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
>>> @@ -3,18 +3,14 @@
>>>     * Copyright © 2020 Intel Corporation
>>>     */
>>>    
>>> -#include <linux/agp_backend.h>
>>> -#include <linux/stop_machine.h>
>>> -
>>> +#include <linux/types.h>
>>>    #include <asm/set_memory.h>
>>>    #include <asm/smp.h>
>>>    
>>> -#include <drm/i915_drm.h>
>>> -#include <drm/intel-gtt.h>
>>> -
>>>    #include "gem/i915_gem_lmem.h"
>>>    
>>>    #include "intel_gt.h"
>>> +#include "intel_gt_gmch.h"
>>>    #include "intel_gt_regs.h"
>>>    #include "i915_drv.h"
>>>    #include "i915_scatterlist.h"
>>> @@ -94,28 +90,6 @@ int i915_ggtt_init_hw(struct drm_i915_private *i915)
>>>    	return 0;
>>>    }
>>>    
>>> -/*
>>> - * Certain Gen5 chipsets require idling the GPU before
>>> - * unmapping anything from the GTT when VT-d is enabled.
>>> - */
>>> -static bool needs_idle_maps(struct drm_i915_private *i915)
>>> -{
>>> -	/*
>>> -	 * Query intel_iommu to see if we need the workaround. Presumably that
>>> -	 * was loaded first.
>>> -	 */
>>> -	if (!intel_vtd_active(i915))
>>> -		return false;
>>> -
>>> -	if (GRAPHICS_VER(i915) == 5 && IS_MOBILE(i915))
>>> -		return true;
>>> -
>>> -	if (GRAPHICS_VER(i915) == 12)
>>> -		return true; /* XXX DMAR fault reason 7 */
>>> -
>>> -	return false;
>>> -}
>>> -
>>>    /**
>>>     * i915_ggtt_suspend_vm - Suspend the memory mappings for a GGTT or DPT VM
>>>     * @vm: The VM to suspend the mappings for
>>> @@ -204,7 +178,7 @@ void gen6_ggtt_invalidate(struct i915_ggtt *ggtt)
>>>    	spin_unlock_irq(&uncore->lock);
>>>    }
>>>    
>>> -static void gen8_ggtt_invalidate(struct i915_ggtt *ggtt)
>>> +void gen8_ggtt_invalidate(struct i915_ggtt *ggtt)
>>>    {
>>>    	struct intel_uncore *uncore = ggtt->vm.gt->uncore;
>>>    
>>> @@ -229,11 +203,6 @@ static void guc_ggtt_invalidate(struct i915_ggtt *ggtt)
>>>    		intel_uncore_write_fw(uncore, GEN8_GTCR, GEN8_GTCR_INVALIDATE);
>>>    }
>>>    
>>> -static void gmch_ggtt_invalidate(struct i915_ggtt *ggtt)
>>> -{
>>> -	intel_gtt_chipset_flush();
>>> -}
>>> -
>>>    u64 gen8_ggtt_pte_encode(dma_addr_t addr,
>>>    			 enum i915_cache_level level,
>>>    			 u32 flags)
>>> @@ -246,258 +215,7 @@ u64 gen8_ggtt_pte_encode(dma_addr_t addr,
>>>    	return pte;
>>>    }
>>>    
>>> -static void gen8_set_pte(void __iomem *addr, gen8_pte_t pte)
>>> -{
>>> -	writeq(pte, addr);
>>> -}
>>> -
>>> -static void gen8_ggtt_insert_page(struct i915_address_space *vm,
>>> -				  dma_addr_t addr,
>>> -				  u64 offset,
>>> -				  enum i915_cache_level level,
>>> -				  u32 flags)
>>> -{
>>> -	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
>>> -	gen8_pte_t __iomem *pte =
>>> -		(gen8_pte_t __iomem *)ggtt->gsm + offset / I915_GTT_PAGE_SIZE;
>>> -
>>> -	gen8_set_pte(pte, gen8_ggtt_pte_encode(addr, level, flags));
>>> -
>>> -	ggtt->invalidate(ggtt);
>>> -}
>>> -
>>> -static void gen8_ggtt_insert_entries(struct i915_address_space *vm,
>>> -				     struct i915_vma_resource *vma_res,
>>> -				     enum i915_cache_level level,
>>> -				     u32 flags)
>>> -{
>>> -	const gen8_pte_t pte_encode = gen8_ggtt_pte_encode(0, level, flags);
>>> -	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
>>> -	gen8_pte_t __iomem *gte;
>>> -	gen8_pte_t __iomem *end;
>>> -	struct sgt_iter iter;
>>> -	dma_addr_t addr;
>>> -
>>> -	/*
>>> -	 * Note that we ignore PTE_READ_ONLY here. The caller must be careful
>>> -	 * not to allow the user to override access to a read only page.
>>> -	 */
>>> -
>>> -	gte = (gen8_pte_t __iomem *)ggtt->gsm;
>>> -	gte += vma_res->start / I915_GTT_PAGE_SIZE;
>>> -	end = gte + vma_res->node_size / I915_GTT_PAGE_SIZE;
>>> -
>>> -	for_each_sgt_daddr(addr, iter, vma_res->bi.pages)
>>> -		gen8_set_pte(gte++, pte_encode | addr);
>>> -	GEM_BUG_ON(gte > end);
>>> -
>>> -	/* Fill the allocated but "unused" space beyond the end of the buffer */
>>> -	while (gte < end)
>>> -		gen8_set_pte(gte++, vm->scratch[0]->encode);
>>> -
>>> -	/*
>>> -	 * We want to flush the TLBs only after we're certain all the PTE
>>> -	 * updates have finished.
>>> -	 */
>>> -	ggtt->invalidate(ggtt);
>>> -}
>>> -
>>> -static void gen6_ggtt_insert_page(struct i915_address_space *vm,
>>> -				  dma_addr_t addr,
>>> -				  u64 offset,
>>> -				  enum i915_cache_level level,
>>> -				  u32 flags)
>>> -{
>>> -	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
>>> -	gen6_pte_t __iomem *pte =
>>> -		(gen6_pte_t __iomem *)ggtt->gsm + offset / I915_GTT_PAGE_SIZE;
>>> -
>>> -	iowrite32(vm->pte_encode(addr, level, flags), pte);
>>> -
>>> -	ggtt->invalidate(ggtt);
>>> -}
>>> -
>>> -/*
>>> - * Binds an object into the global gtt with the specified cache level.
>>> - * The object will be accessible to the GPU via commands whose operands
>>> - * reference offsets within the global GTT as well as accessible by the GPU
>>> - * through the GMADR mapped BAR (i915->mm.gtt->gtt).
>>> - */
>>> -static void gen6_ggtt_insert_entries(struct i915_address_space *vm,
>>> -				     struct i915_vma_resource *vma_res,
>>> -				     enum i915_cache_level level,
>>> -				     u32 flags)
>>> -{
>>> -	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
>>> -	gen6_pte_t __iomem *gte;
>>> -	gen6_pte_t __iomem *end;
>>> -	struct sgt_iter iter;
>>> -	dma_addr_t addr;
>>> -
>>> -	gte = (gen6_pte_t __iomem *)ggtt->gsm;
>>> -	gte += vma_res->start / I915_GTT_PAGE_SIZE;
>>> -	end = gte + vma_res->node_size / I915_GTT_PAGE_SIZE;
>>> -
>>> -	for_each_sgt_daddr(addr, iter, vma_res->bi.pages)
>>> -		iowrite32(vm->pte_encode(addr, level, flags), gte++);
>>> -	GEM_BUG_ON(gte > end);
>>> -
>>> -	/* Fill the allocated but "unused" space beyond the end of the buffer */
>>> -	while (gte < end)
>>> -		iowrite32(vm->scratch[0]->encode, gte++);
>>> -
>>> -	/*
>>> -	 * We want to flush the TLBs only after we're certain all the PTE
>>> -	 * updates have finished.
>>> -	 */
>>> -	ggtt->invalidate(ggtt);
>>> -}
>>> -
>>> -static void nop_clear_range(struct i915_address_space *vm,
>>> -			    u64 start, u64 length)
>>> -{
>>> -}
>>> -
>>> -static void gen8_ggtt_clear_range(struct i915_address_space *vm,
>>> -				  u64 start, u64 length)
>>> -{
>>> -	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
>>> -	unsigned int first_entry = start / I915_GTT_PAGE_SIZE;
>>> -	unsigned int num_entries = length / I915_GTT_PAGE_SIZE;
>>> -	const gen8_pte_t scratch_pte = vm->scratch[0]->encode;
>>> -	gen8_pte_t __iomem *gtt_base =
>>> -		(gen8_pte_t __iomem *)ggtt->gsm + first_entry;
>>> -	const int max_entries = ggtt_total_entries(ggtt) - first_entry;
>>> -	int i;
>>> -
>>> -	if (WARN(num_entries > max_entries,
>>> -		 "First entry = %d; Num entries = %d (max=%d)\n",
>>> -		 first_entry, num_entries, max_entries))
>>> -		num_entries = max_entries;
>>> -
>>> -	for (i = 0; i < num_entries; i++)
>>> -		gen8_set_pte(&gtt_base[i], scratch_pte);
>>> -}
>>> -
>>> -static void bxt_vtd_ggtt_wa(struct i915_address_space *vm)
>>> -{
>>> -	/*
>>> -	 * Make sure the internal GAM fifo has been cleared of all GTT
>>> -	 * writes before exiting stop_machine(). This guarantees that
>>> -	 * any aperture accesses waiting to start in another process
>>> -	 * cannot back up behind the GTT writes causing a hang.
>>> -	 * The register can be any arbitrary GAM register.
>>> -	 */
>>> -	intel_uncore_posting_read_fw(vm->gt->uncore, GFX_FLSH_CNTL_GEN6);
>>> -}
>>> -
>>> -struct insert_page {
>>> -	struct i915_address_space *vm;
>>> -	dma_addr_t addr;
>>> -	u64 offset;
>>> -	enum i915_cache_level level;
>>> -};
>>> -
>>> -static int bxt_vtd_ggtt_insert_page__cb(void *_arg)
>>> -{
>>> -	struct insert_page *arg = _arg;
>>> -
>>> -	gen8_ggtt_insert_page(arg->vm, arg->addr, arg->offset, arg->level, 0);
>>> -	bxt_vtd_ggtt_wa(arg->vm);
>>> -
>>> -	return 0;
>>> -}
>>> -
>>> -static void bxt_vtd_ggtt_insert_page__BKL(struct i915_address_space *vm,
>>> -					  dma_addr_t addr,
>>> -					  u64 offset,
>>> -					  enum i915_cache_level level,
>>> -					  u32 unused)
>>> -{
>>> -	struct insert_page arg = { vm, addr, offset, level };
>>> -
>>> -	stop_machine(bxt_vtd_ggtt_insert_page__cb, &arg, NULL);
>>> -}
>>> -
>>> -struct insert_entries {
>>> -	struct i915_address_space *vm;
>>> -	struct i915_vma_resource *vma_res;
>>> -	enum i915_cache_level level;
>>> -	u32 flags;
>>> -};
>>> -
>>> -static int bxt_vtd_ggtt_insert_entries__cb(void *_arg)
>>> -{
>>> -	struct insert_entries *arg = _arg;
>>> -
>>> -	gen8_ggtt_insert_entries(arg->vm, arg->vma_res, arg->level, arg->flags);
>>> -	bxt_vtd_ggtt_wa(arg->vm);
>>> -
>>> -	return 0;
>>> -}
>>> -
>>> -static void bxt_vtd_ggtt_insert_entries__BKL(struct i915_address_space *vm,
>>> -					     struct i915_vma_resource *vma_res,
>>> -					     enum i915_cache_level level,
>>> -					     u32 flags)
>>> -{
>>> -	struct insert_entries arg = { vm, vma_res, level, flags };
>>> -
>>> -	stop_machine(bxt_vtd_ggtt_insert_entries__cb, &arg, NULL);
>>> -}
>>> -
>>> -static void gen6_ggtt_clear_range(struct i915_address_space *vm,
>>> -				  u64 start, u64 length)
>>> -{
>>> -	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
>>> -	unsigned int first_entry = start / I915_GTT_PAGE_SIZE;
>>> -	unsigned int num_entries = length / I915_GTT_PAGE_SIZE;
>>> -	gen6_pte_t scratch_pte, __iomem *gtt_base =
>>> -		(gen6_pte_t __iomem *)ggtt->gsm + first_entry;
>>> -	const int max_entries = ggtt_total_entries(ggtt) - first_entry;
>>> -	int i;
>>> -
>>> -	if (WARN(num_entries > max_entries,
>>> -		 "First entry = %d; Num entries = %d (max=%d)\n",
>>> -		 first_entry, num_entries, max_entries))
>>> -		num_entries = max_entries;
>>> -
>>> -	scratch_pte = vm->scratch[0]->encode;
>>> -	for (i = 0; i < num_entries; i++)
>>> -		iowrite32(scratch_pte, &gtt_base[i]);
>>> -}
>>> -
>>> -static void i915_ggtt_insert_page(struct i915_address_space *vm,
>>> -				  dma_addr_t addr,
>>> -				  u64 offset,
>>> -				  enum i915_cache_level cache_level,
>>> -				  u32 unused)
>>> -{
>>> -	unsigned int flags = (cache_level == I915_CACHE_NONE) ?
>>> -		AGP_USER_MEMORY : AGP_USER_CACHED_MEMORY;
>>> -
>>> -	intel_gtt_insert_page(addr, offset >> PAGE_SHIFT, flags);
>>> -}
>>> -
>>> -static void i915_ggtt_insert_entries(struct i915_address_space *vm,
>>> -				     struct i915_vma_resource *vma_res,
>>> -				     enum i915_cache_level cache_level,
>>> -				     u32 unused)
>>> -{
>>> -	unsigned int flags = (cache_level == I915_CACHE_NONE) ?
>>> -		AGP_USER_MEMORY : AGP_USER_CACHED_MEMORY;
>>> -
>>> -	intel_gtt_insert_sg_entries(vma_res->bi.pages, vma_res->start >> PAGE_SHIFT,
>>> -				    flags);
>>> -}
>>> -
>>> -static void i915_ggtt_clear_range(struct i915_address_space *vm,
>>> -				  u64 start, u64 length)
>>> -{
>>> -	intel_gtt_clear_range(start >> PAGE_SHIFT, length >> PAGE_SHIFT);
>>> -}
>>> -
>>> -static void ggtt_bind_vma(struct i915_address_space *vm,
>>> +void intel_ggtt_bind_vma(struct i915_address_space *vm,
>>>    			  struct i915_vm_pt_stash *stash,
>>>    			  struct i915_vma_resource *vma_res,
>>>    			  enum i915_cache_level cache_level,
>>> @@ -521,7 +239,7 @@ static void ggtt_bind_vma(struct i915_address_space *vm,
>>>    	vma_res->page_sizes_gtt = I915_GTT_PAGE_SIZE;
>>>    }
>>>    
>>> -static void ggtt_unbind_vma(struct i915_address_space *vm,
>>> +void intel_ggtt_unbind_vma(struct i915_address_space *vm,
>>>    			    struct i915_vma_resource *vma_res)
>>>    {
>>>    	vm->clear_range(vm, vma_res->start, vma_res->vma_size);
>>> @@ -724,10 +442,10 @@ static int init_aliasing_ppgtt(struct i915_ggtt *ggtt)
>>>    	ggtt->alias = ppgtt;
>>>    	ggtt->vm.bind_async_flags |= ppgtt->vm.bind_async_flags;
>>>    
>>> -	GEM_BUG_ON(ggtt->vm.vma_ops.bind_vma != ggtt_bind_vma);
>>> +	GEM_BUG_ON(ggtt->vm.vma_ops.bind_vma != intel_ggtt_bind_vma);
>>>    	ggtt->vm.vma_ops.bind_vma = aliasing_gtt_bind_vma;
>>>    
>>> -	GEM_BUG_ON(ggtt->vm.vma_ops.unbind_vma != ggtt_unbind_vma);
>>> +	GEM_BUG_ON(ggtt->vm.vma_ops.unbind_vma != intel_ggtt_unbind_vma);
>>>    	ggtt->vm.vma_ops.unbind_vma = aliasing_gtt_unbind_vma;
>>>    
>>>    	i915_vm_free_pt_stash(&ppgtt->vm, &stash);
>>> @@ -750,8 +468,8 @@ static void fini_aliasing_ppgtt(struct i915_ggtt *ggtt)
>>>    
>>>    	i915_vm_put(&ppgtt->vm);
>>>    
>>> -	ggtt->vm.vma_ops.bind_vma   = ggtt_bind_vma;
>>> -	ggtt->vm.vma_ops.unbind_vma = ggtt_unbind_vma;
>>> +	ggtt->vm.vma_ops.bind_vma   = intel_ggtt_bind_vma;
>>> +	ggtt->vm.vma_ops.unbind_vma = intel_ggtt_unbind_vma;
>>>    }
>>>    
>>>    int i915_init_ggtt(struct drm_i915_private *i915)
>>> @@ -839,364 +557,12 @@ void i915_ggtt_driver_late_release(struct drm_i915_private *i915)
>>>    	dma_resv_fini(&ggtt->vm._resv);
>>>    }
>>>    
>>> -static unsigned int gen6_get_total_gtt_size(u16 snb_gmch_ctl)
>>> -{
>>> -	snb_gmch_ctl >>= SNB_GMCH_GGMS_SHIFT;
>>> -	snb_gmch_ctl &= SNB_GMCH_GGMS_MASK;
>>> -	return snb_gmch_ctl << 20;
>>> -}
>>> -
>>> -static unsigned int gen8_get_total_gtt_size(u16 bdw_gmch_ctl)
>>> -{
>>> -	bdw_gmch_ctl >>= BDW_GMCH_GGMS_SHIFT;
>>> -	bdw_gmch_ctl &= BDW_GMCH_GGMS_MASK;
>>> -	if (bdw_gmch_ctl)
>>> -		bdw_gmch_ctl = 1 << bdw_gmch_ctl;
>>> -
>>> -#ifdef CONFIG_X86_32
>>> -	/* Limit 32b platforms to a 2GB GGTT: 4 << 20 / pte size * I915_GTT_PAGE_SIZE */
>>> -	if (bdw_gmch_ctl > 4)
>>> -		bdw_gmch_ctl = 4;
>>> -#endif
>>> -
>>> -	return bdw_gmch_ctl << 20;
>>> -}
>>> -
>>> -static unsigned int chv_get_total_gtt_size(u16 gmch_ctrl)
>>> -{
>>> -	gmch_ctrl >>= SNB_GMCH_GGMS_SHIFT;
>>> -	gmch_ctrl &= SNB_GMCH_GGMS_MASK;
>>> -
>>> -	if (gmch_ctrl)
>>> -		return 1 << (20 + gmch_ctrl);
>>> -
>>> -	return 0;
>>> -}
>>> -
>>> -static unsigned int gen6_gttmmadr_size(struct drm_i915_private *i915)
>>> -{
>>> -	/*
>>> -	 * GEN6: GTTMMADR size is 4MB and GTTADR starts at 2MB offset
>>> -	 * GEN8: GTTMMADR size is 16MB and GTTADR starts at 8MB offset
>>> -	 */
>>> -	GEM_BUG_ON(GRAPHICS_VER(i915) < 6);
>>> -	return (GRAPHICS_VER(i915) < 8) ? SZ_4M : SZ_16M;
>>> -}
>>> -
>>> -static unsigned int gen6_gttadr_offset(struct drm_i915_private *i915)
>>> -{
>>> -	return gen6_gttmmadr_size(i915) / 2;
>>> -}
>>> -
>>> -static int ggtt_probe_common(struct i915_ggtt *ggtt, u64 size)
>>> -{
>>> -	struct drm_i915_private *i915 = ggtt->vm.i915;
>>> -	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
>>> -	phys_addr_t phys_addr;
>>> -	u32 pte_flags;
>>> -	int ret;
>>> -
>>> -	GEM_WARN_ON(pci_resource_len(pdev, 0) != gen6_gttmmadr_size(i915));
>>> -	phys_addr = pci_resource_start(pdev, 0) + gen6_gttadr_offset(i915);
>>> -
>>> -	/*
>>> -	 * On BXT+/ICL+ writes larger than 64 bit to the GTT pagetable range
>>> -	 * will be dropped. For WC mappings in general we have 64 byte burst
>>> -	 * writes when the WC buffer is flushed, so we can't use it, but have to
>>> -	 * resort to an uncached mapping. The WC issue is easily caught by the
>>> -	 * readback check when writing GTT PTE entries.
>>> -	 */
>>> -	if (IS_GEN9_LP(i915) || GRAPHICS_VER(i915) >= 11)
>>> -		ggtt->gsm = ioremap(phys_addr, size);
>>> -	else
>>> -		ggtt->gsm = ioremap_wc(phys_addr, size);
>>> -	if (!ggtt->gsm) {
>>> -		drm_err(&i915->drm, "Failed to map the ggtt page table\n");
>>> -		return -ENOMEM;
>>> -	}
>>> -
>>> -	kref_init(&ggtt->vm.resv_ref);
>>> -	ret = setup_scratch_page(&ggtt->vm);
>>> -	if (ret) {
>>> -		drm_err(&i915->drm, "Scratch setup failed\n");
>>> -		/* iounmap will also get called at remove, but meh */
>>> -		iounmap(ggtt->gsm);
>>> -		return ret;
>>> -	}
>>> -
>>> -	pte_flags = 0;
>>> -	if (i915_gem_object_is_lmem(ggtt->vm.scratch[0]))
>>> -		pte_flags |= PTE_LM;
>>> -
>>> -	ggtt->vm.scratch[0]->encode =
>>> -		ggtt->vm.pte_encode(px_dma(ggtt->vm.scratch[0]),
>>> -				    I915_CACHE_NONE, pte_flags);
>>> -
>>> -	return 0;
>>> -}
>>> -
>>> -static void gen6_gmch_remove(struct i915_address_space *vm)
>>> -{
>>> -	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
>>> -
>>> -	iounmap(ggtt->gsm);
>>> -	free_scratch(vm);
>>> -}
>>> -
>>> -static struct resource pci_resource(struct pci_dev *pdev, int bar)
>>> +struct resource pci_resource(struct pci_dev *pdev, int bar)
>>>    {
>>>    	return (struct resource)DEFINE_RES_MEM(pci_resource_start(pdev, bar),
>>>    					       pci_resource_len(pdev, bar));
>>>    }
>> Export with pci_ prefix is a bit dodgy - maybe intel_pci_resource? Not sure.
> Yeah, even static functions with such generic prefix and name are
> discouraged. It's ugly if it ends up conflicting because we're abusing
> their namespace.
>
> BR,
> Jani.
>

Got it, thanks for catching that, I thought it might be questionable, 
but yes,
you both are right, it needs to stay consistent with this namespace.

I'll go with intel_pci_resource

Regards,
Casey

>
>> The rest looks okay to me.
>>
>> I mean I could suggest to do something about the incosistency of:
>>
>> static inline void intel_gt_gmch_gen5_chipset_flush(struct intel_gt *gt)
>>
>> vs:
>>
>> static inline int intel_gt_gmch_gen5_probe(struct i915_ggtt *ggtt)
>>
>> Since I value more for function name to tell me on what it operates
>> instead where it is placed. So I'd personally rename the second class to
>> i915_ggtt. It would also be consistent with other exported functions
>> which take struct i915_ggtt like i915_ggtt_enable_guc, i915_ggtt_resume
>> and so. But opinions will differ so I can live with it as is as well.
>>
>> Regards,
>>
>> Tvrtko
>>
>>>    
>>> -static int gen8_gmch_probe(struct i915_ggtt *ggtt)
>>> -{
>>> -	struct drm_i915_private *i915 = ggtt->vm.i915;
>>> -	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
>>> -	unsigned int size;
>>> -	u16 snb_gmch_ctl;
>>> -
>>> -	/* TODO: We're not aware of mappable constraints on gen8 yet */
>>> -	if (!HAS_LMEM(i915)) {
>>> -		ggtt->gmadr = pci_resource(pdev, 2);
>>> -		ggtt->mappable_end = resource_size(&ggtt->gmadr);
>>> -	}
>>> -
>>> -	pci_read_config_word(pdev, SNB_GMCH_CTRL, &snb_gmch_ctl);
>>> -	if (IS_CHERRYVIEW(i915))
>>> -		size = chv_get_total_gtt_size(snb_gmch_ctl);
>>> -	else
>>> -		size = gen8_get_total_gtt_size(snb_gmch_ctl);
>>> -
>>> -	ggtt->vm.alloc_pt_dma = alloc_pt_dma;
>>> -	ggtt->vm.alloc_scratch_dma = alloc_pt_dma;
>>> -	ggtt->vm.lmem_pt_obj_flags = I915_BO_ALLOC_PM_EARLY;
>>> -
>>> -	ggtt->vm.total = (size / sizeof(gen8_pte_t)) * I915_GTT_PAGE_SIZE;
>>> -	ggtt->vm.cleanup = gen6_gmch_remove;
>>> -	ggtt->vm.insert_page = gen8_ggtt_insert_page;
>>> -	ggtt->vm.clear_range = nop_clear_range;
>>> -	if (intel_scanout_needs_vtd_wa(i915))
>>> -		ggtt->vm.clear_range = gen8_ggtt_clear_range;
>>> -
>>> -	ggtt->vm.insert_entries = gen8_ggtt_insert_entries;
>>> -
>>> -	/*
>>> -	 * Serialize GTT updates with aperture access on BXT if VT-d is on,
>>> -	 * and always on CHV.
>>> -	 */
>>> -	if (intel_vm_no_concurrent_access_wa(i915)) {
>>> -		ggtt->vm.insert_entries = bxt_vtd_ggtt_insert_entries__BKL;
>>> -		ggtt->vm.insert_page    = bxt_vtd_ggtt_insert_page__BKL;
>>> -		ggtt->vm.bind_async_flags =
>>> -			I915_VMA_GLOBAL_BIND | I915_VMA_LOCAL_BIND;
>>> -	}
>>> -
>>> -	ggtt->invalidate = gen8_ggtt_invalidate;
>>> -
>>> -	ggtt->vm.vma_ops.bind_vma    = ggtt_bind_vma;
>>> -	ggtt->vm.vma_ops.unbind_vma  = ggtt_unbind_vma;
>>> -
>>> -	ggtt->vm.pte_encode = gen8_ggtt_pte_encode;
>>> -
>>> -	setup_private_pat(ggtt->vm.gt->uncore);
>>> -
>>> -	return ggtt_probe_common(ggtt, size);
>>> -}
>>> -
>>> -static u64 snb_pte_encode(dma_addr_t addr,
>>> -			  enum i915_cache_level level,
>>> -			  u32 flags)
>>> -{
>>> -	gen6_pte_t pte = GEN6_PTE_ADDR_ENCODE(addr) | GEN6_PTE_VALID;
>>> -
>>> -	switch (level) {
>>> -	case I915_CACHE_L3_LLC:
>>> -	case I915_CACHE_LLC:
>>> -		pte |= GEN6_PTE_CACHE_LLC;
>>> -		break;
>>> -	case I915_CACHE_NONE:
>>> -		pte |= GEN6_PTE_UNCACHED;
>>> -		break;
>>> -	default:
>>> -		MISSING_CASE(level);
>>> -	}
>>> -
>>> -	return pte;
>>> -}
>>> -
>>> -static u64 ivb_pte_encode(dma_addr_t addr,
>>> -			  enum i915_cache_level level,
>>> -			  u32 flags)
>>> -{
>>> -	gen6_pte_t pte = GEN6_PTE_ADDR_ENCODE(addr) | GEN6_PTE_VALID;
>>> -
>>> -	switch (level) {
>>> -	case I915_CACHE_L3_LLC:
>>> -		pte |= GEN7_PTE_CACHE_L3_LLC;
>>> -		break;
>>> -	case I915_CACHE_LLC:
>>> -		pte |= GEN6_PTE_CACHE_LLC;
>>> -		break;
>>> -	case I915_CACHE_NONE:
>>> -		pte |= GEN6_PTE_UNCACHED;
>>> -		break;
>>> -	default:
>>> -		MISSING_CASE(level);
>>> -	}
>>> -
>>> -	return pte;
>>> -}
>>> -
>>> -static u64 byt_pte_encode(dma_addr_t addr,
>>> -			  enum i915_cache_level level,
>>> -			  u32 flags)
>>> -{
>>> -	gen6_pte_t pte = GEN6_PTE_ADDR_ENCODE(addr) | GEN6_PTE_VALID;
>>> -
>>> -	if (!(flags & PTE_READ_ONLY))
>>> -		pte |= BYT_PTE_WRITEABLE;
>>> -
>>> -	if (level != I915_CACHE_NONE)
>>> -		pte |= BYT_PTE_SNOOPED_BY_CPU_CACHES;
>>> -
>>> -	return pte;
>>> -}
>>> -
>>> -static u64 hsw_pte_encode(dma_addr_t addr,
>>> -			  enum i915_cache_level level,
>>> -			  u32 flags)
>>> -{
>>> -	gen6_pte_t pte = HSW_PTE_ADDR_ENCODE(addr) | GEN6_PTE_VALID;
>>> -
>>> -	if (level != I915_CACHE_NONE)
>>> -		pte |= HSW_WB_LLC_AGE3;
>>> -
>>> -	return pte;
>>> -}
>>> -
>>> -static u64 iris_pte_encode(dma_addr_t addr,
>>> -			   enum i915_cache_level level,
>>> -			   u32 flags)
>>> -{
>>> -	gen6_pte_t pte = HSW_PTE_ADDR_ENCODE(addr) | GEN6_PTE_VALID;
>>> -
>>> -	switch (level) {
>>> -	case I915_CACHE_NONE:
>>> -		break;
>>> -	case I915_CACHE_WT:
>>> -		pte |= HSW_WT_ELLC_LLC_AGE3;
>>> -		break;
>>> -	default:
>>> -		pte |= HSW_WB_ELLC_LLC_AGE3;
>>> -		break;
>>> -	}
>>> -
>>> -	return pte;
>>> -}
>>> -
>>> -static int gen6_gmch_probe(struct i915_ggtt *ggtt)
>>> -{
>>> -	struct drm_i915_private *i915 = ggtt->vm.i915;
>>> -	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
>>> -	unsigned int size;
>>> -	u16 snb_gmch_ctl;
>>> -
>>> -	ggtt->gmadr = pci_resource(pdev, 2);
>>> -	ggtt->mappable_end = resource_size(&ggtt->gmadr);
>>> -
>>> -	/*
>>> -	 * 64/512MB is the current min/max we actually know of, but this is
>>> -	 * just a coarse sanity check.
>>> -	 */
>>> -	if (ggtt->mappable_end < (64<<20) || ggtt->mappable_end > (512<<20)) {
>>> -		drm_err(&i915->drm, "Unknown GMADR size (%pa)\n",
>>> -			&ggtt->mappable_end);
>>> -		return -ENXIO;
>>> -	}
>>> -
>>> -	pci_read_config_word(pdev, SNB_GMCH_CTRL, &snb_gmch_ctl);
>>> -
>>> -	size = gen6_get_total_gtt_size(snb_gmch_ctl);
>>> -	ggtt->vm.total = (size / sizeof(gen6_pte_t)) * I915_GTT_PAGE_SIZE;
>>> -
>>> -	ggtt->vm.alloc_pt_dma = alloc_pt_dma;
>>> -	ggtt->vm.alloc_scratch_dma = alloc_pt_dma;
>>> -
>>> -	ggtt->vm.clear_range = nop_clear_range;
>>> -	if (!HAS_FULL_PPGTT(i915) || intel_scanout_needs_vtd_wa(i915))
>>> -		ggtt->vm.clear_range = gen6_ggtt_clear_range;
>>> -	ggtt->vm.insert_page = gen6_ggtt_insert_page;
>>> -	ggtt->vm.insert_entries = gen6_ggtt_insert_entries;
>>> -	ggtt->vm.cleanup = gen6_gmch_remove;
>>> -
>>> -	ggtt->invalidate = gen6_ggtt_invalidate;
>>> -
>>> -	if (HAS_EDRAM(i915))
>>> -		ggtt->vm.pte_encode = iris_pte_encode;
>>> -	else if (IS_HASWELL(i915))
>>> -		ggtt->vm.pte_encode = hsw_pte_encode;
>>> -	else if (IS_VALLEYVIEW(i915))
>>> -		ggtt->vm.pte_encode = byt_pte_encode;
>>> -	else if (GRAPHICS_VER(i915) >= 7)
>>> -		ggtt->vm.pte_encode = ivb_pte_encode;
>>> -	else
>>> -		ggtt->vm.pte_encode = snb_pte_encode;
>>> -
>>> -	ggtt->vm.vma_ops.bind_vma    = ggtt_bind_vma;
>>> -	ggtt->vm.vma_ops.unbind_vma  = ggtt_unbind_vma;
>>> -
>>> -	return ggtt_probe_common(ggtt, size);
>>> -}
>>> -
>>> -static void i915_gmch_remove(struct i915_address_space *vm)
>>> -{
>>> -	intel_gmch_remove();
>>> -}
>>> -
>>> -static int i915_gmch_probe(struct i915_ggtt *ggtt)
>>> -{
>>> -	struct drm_i915_private *i915 = ggtt->vm.i915;
>>> -	phys_addr_t gmadr_base;
>>> -	int ret;
>>> -
>>> -	ret = intel_gmch_probe(i915->bridge_dev, to_pci_dev(i915->drm.dev), NULL);
>>> -	if (!ret) {
>>> -		drm_err(&i915->drm, "failed to set up gmch\n");
>>> -		return -EIO;
>>> -	}
>>> -
>>> -	intel_gtt_get(&ggtt->vm.total, &gmadr_base, &ggtt->mappable_end);
>>> -
>>> -	ggtt->gmadr =
>>> -		(struct resource)DEFINE_RES_MEM(gmadr_base, ggtt->mappable_end);
>>> -
>>> -	ggtt->vm.alloc_pt_dma = alloc_pt_dma;
>>> -	ggtt->vm.alloc_scratch_dma = alloc_pt_dma;
>>> -
>>> -	if (needs_idle_maps(i915)) {
>>> -		drm_notice(&i915->drm,
>>> -			   "Flushing DMA requests before IOMMU unmaps; performance may be degraded\n");
>>> -		ggtt->do_idle_maps = true;
>>> -	}
>>> -
>>> -	ggtt->vm.insert_page = i915_ggtt_insert_page;
>>> -	ggtt->vm.insert_entries = i915_ggtt_insert_entries;
>>> -	ggtt->vm.clear_range = i915_ggtt_clear_range;
>>> -	ggtt->vm.cleanup = i915_gmch_remove;
>>> -
>>> -	ggtt->invalidate = gmch_ggtt_invalidate;
>>> -
>>> -	ggtt->vm.vma_ops.bind_vma    = ggtt_bind_vma;
>>> -	ggtt->vm.vma_ops.unbind_vma  = ggtt_unbind_vma;
>>> -
>>> -	if (unlikely(ggtt->do_idle_maps))
>>> -		drm_notice(&i915->drm,
>>> -			   "Applying Ironlake quirks for intel_iommu\n");
>>> -
>>> -	return 0;
>>> -}
>>> -
>>>    static int ggtt_probe_hw(struct i915_ggtt *ggtt, struct intel_gt *gt)
>>>    {
>>>    	struct drm_i915_private *i915 = gt->i915;
>>> @@ -1208,11 +574,11 @@ static int ggtt_probe_hw(struct i915_ggtt *ggtt, struct intel_gt *gt)
>>>    	dma_resv_init(&ggtt->vm._resv);
>>>    
>>>    	if (GRAPHICS_VER(i915) <= 5)
>>> -		ret = i915_gmch_probe(ggtt);
>>> +		ret = intel_gt_gmch_gen5_probe(ggtt);
>>>    	else if (GRAPHICS_VER(i915) < 8)
>>> -		ret = gen6_gmch_probe(ggtt);
>>> +		ret = intel_gt_gmch_gen6_probe(ggtt);
>>>    	else
>>> -		ret = gen8_gmch_probe(ggtt);
>>> +		ret = intel_gt_gmch_gen8_probe(ggtt);
>>>    	if (ret) {
>>>    		dma_resv_fini(&ggtt->vm._resv);
>>>    		return ret;
>>> @@ -1266,10 +632,7 @@ int i915_ggtt_probe_hw(struct drm_i915_private *i915)
>>>    
>>>    int i915_ggtt_enable_hw(struct drm_i915_private *i915)
>>>    {
>>> -	if (GRAPHICS_VER(i915) < 6 && !intel_enable_gtt())
>>> -		return -EIO;
>>> -
>>> -	return 0;
>>> +	return intel_gt_gmch_gen5_enable_hw(i915);
>>>    }
>>>    
>>>    void i915_ggtt_enable_guc(struct i915_ggtt *ggtt)
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
>>> index 5001a6168d56..f0014c5072c9 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
>>> @@ -4,7 +4,6 @@
>>>     */
>>>    
>>>    #include <drm/drm_managed.h>
>>> -#include <drm/intel-gtt.h>
>>>    
>>>    #include "gem/i915_gem_internal.h"
>>>    #include "gem/i915_gem_lmem.h"
>>> @@ -17,6 +16,7 @@
>>>    #include "intel_gt_buffer_pool.h"
>>>    #include "intel_gt_clock_utils.h"
>>>    #include "intel_gt_debugfs.h"
>>> +#include "intel_gt_gmch.h"
>>>    #include "intel_gt_pm.h"
>>>    #include "intel_gt_regs.h"
>>>    #include "intel_gt_requests.h"
>>> @@ -451,7 +451,7 @@ void intel_gt_chipset_flush(struct intel_gt *gt)
>>>    {
>>>    	wmb();
>>>    	if (GRAPHICS_VER(gt->i915) < 6)
>>> -		intel_gtt_chipset_flush();
>>> +		intel_gt_gmch_gen5_chipset_flush(gt);
>>>    }
>>>    
>>>    void intel_gt_driver_register(struct intel_gt *gt)
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
>>> index e76168e10a21..8956dfc5afe0 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_gt.h
>>> +++ b/drivers/gpu/drm/i915/gt/intel_gt.h
>>> @@ -13,6 +13,13 @@
>>>    struct drm_i915_private;
>>>    struct drm_printer;
>>>    
>>> +struct insert_entries {
>>> +	struct i915_address_space *vm;
>>> +	struct i915_vma_resource *vma_res;
>>> +	enum i915_cache_level level;
>>> +	u32 flags;
>>> +};
>>> +
>>>    #define GT_TRACE(gt, fmt, ...) do {					\
>>>    	const struct intel_gt *gt__ __maybe_unused = (gt);		\
>>>    	GEM_TRACE("%s " fmt, dev_name(gt__->i915->drm.dev),		\
>>> @@ -113,4 +120,6 @@ void intel_gt_watchdog_work(struct work_struct *work);
>>>    
>>>    void intel_gt_invalidate_tlbs(struct intel_gt *gt);
>>>    
>>> +struct resource pci_resource(struct pci_dev *pdev, int bar);
>>> +
>>>    #endif /* __INTEL_GT_H__ */
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_gmch.c b/drivers/gpu/drm/i915/gt/intel_gt_gmch.c
>>> new file mode 100644
>>> index 000000000000..b914ebb30166
>>> --- /dev/null
>>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_gmch.c
>>> @@ -0,0 +1,653 @@
>>> +// SPDX-License-Identifier: MIT
>>> +/*
>>> + * Copyright © 2022 Intel Corporation
>>> + */
>>> +
>>> +#include <drm/intel-gtt.h>
>>> +#include <drm/i915_drm.h>
>>> +
>>> +#include <linux/agp_backend.h>
>>> +#include <linux/stop_machine.h>
>>> +
>>> +#include "i915_drv.h"
>>> +#include "intel_gt_gmch.h"
>>> +#include "intel_gt_regs.h"
>>> +#include "intel_gt.h"
>>> +
>>> +#include "gen8_ppgtt.h"
>>> +
>>> +struct insert_page {
>>> +	struct i915_address_space *vm;
>>> +	dma_addr_t addr;
>>> +	u64 offset;
>>> +	enum i915_cache_level level;
>>> +};
>>> +
>>> +static void gen8_set_pte(void __iomem *addr, gen8_pte_t pte)
>>> +{
>>> +	writeq(pte, addr);
>>> +}
>>> +
>>> +static void nop_clear_range(struct i915_address_space *vm,
>>> +			    u64 start, u64 length)
>>> +{
>>> +}
>>> +
>>> +static u64 snb_pte_encode(dma_addr_t addr,
>>> +			  enum i915_cache_level level,
>>> +			  u32 flags)
>>> +{
>>> +	gen6_pte_t pte = GEN6_PTE_ADDR_ENCODE(addr) | GEN6_PTE_VALID;
>>> +
>>> +	switch (level) {
>>> +	case I915_CACHE_L3_LLC:
>>> +	case I915_CACHE_LLC:
>>> +		pte |= GEN6_PTE_CACHE_LLC;
>>> +		break;
>>> +	case I915_CACHE_NONE:
>>> +		pte |= GEN6_PTE_UNCACHED;
>>> +		break;
>>> +	default:
>>> +		MISSING_CASE(level);
>>> +	}
>>> +
>>> +	return pte;
>>> +}
>>> +
>>> +static u64 ivb_pte_encode(dma_addr_t addr,
>>> +			  enum i915_cache_level level,
>>> +			  u32 flags)
>>> +{
>>> +	gen6_pte_t pte = GEN6_PTE_ADDR_ENCODE(addr) | GEN6_PTE_VALID;
>>> +
>>> +	switch (level) {
>>> +	case I915_CACHE_L3_LLC:
>>> +		pte |= GEN7_PTE_CACHE_L3_LLC;
>>> +		break;
>>> +	case I915_CACHE_LLC:
>>> +		pte |= GEN6_PTE_CACHE_LLC;
>>> +		break;
>>> +	case I915_CACHE_NONE:
>>> +		pte |= GEN6_PTE_UNCACHED;
>>> +		break;
>>> +	default:
>>> +		MISSING_CASE(level);
>>> +	}
>>> +
>>> +	return pte;
>>> +}
>>> +
>>> +static u64 byt_pte_encode(dma_addr_t addr,
>>> +			  enum i915_cache_level level,
>>> +			  u32 flags)
>>> +{
>>> +	gen6_pte_t pte = GEN6_PTE_ADDR_ENCODE(addr) | GEN6_PTE_VALID;
>>> +
>>> +	if (!(flags & PTE_READ_ONLY))
>>> +		pte |= BYT_PTE_WRITEABLE;
>>> +
>>> +	if (level != I915_CACHE_NONE)
>>> +		pte |= BYT_PTE_SNOOPED_BY_CPU_CACHES;
>>> +
>>> +	return pte;
>>> +}
>>> +
>>> +static u64 hsw_pte_encode(dma_addr_t addr,
>>> +			  enum i915_cache_level level,
>>> +			  u32 flags)
>>> +{
>>> +	gen6_pte_t pte = HSW_PTE_ADDR_ENCODE(addr) | GEN6_PTE_VALID;
>>> +
>>> +	if (level != I915_CACHE_NONE)
>>> +		pte |= HSW_WB_LLC_AGE3;
>>> +
>>> +	return pte;
>>> +}
>>> +
>>> +static u64 iris_pte_encode(dma_addr_t addr,
>>> +			   enum i915_cache_level level,
>>> +			   u32 flags)
>>> +{
>>> +	gen6_pte_t pte = HSW_PTE_ADDR_ENCODE(addr) | GEN6_PTE_VALID;
>>> +
>>> +	switch (level) {
>>> +	case I915_CACHE_NONE:
>>> +		break;
>>> +	case I915_CACHE_WT:
>>> +		pte |= HSW_WT_ELLC_LLC_AGE3;
>>> +		break;
>>> +	default:
>>> +		pte |= HSW_WB_ELLC_LLC_AGE3;
>>> +		break;
>>> +	}
>>> +
>>> +	return pte;
>>> +}
>>> +
>>> +static void gen5_ggtt_insert_page(struct i915_address_space *vm,
>>> +				  dma_addr_t addr,
>>> +				  u64 offset,
>>> +				  enum i915_cache_level cache_level,
>>> +				  u32 unused)
>>> +{
>>> +	unsigned int flags = (cache_level == I915_CACHE_NONE) ?
>>> +		AGP_USER_MEMORY : AGP_USER_CACHED_MEMORY;
>>> +
>>> +	intel_gtt_insert_page(addr, offset >> PAGE_SHIFT, flags);
>>> +}
>>> +
>>> +static void gen6_ggtt_insert_page(struct i915_address_space *vm,
>>> +				  dma_addr_t addr,
>>> +				  u64 offset,
>>> +				  enum i915_cache_level level,
>>> +				  u32 flags)
>>> +{
>>> +	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
>>> +	gen6_pte_t __iomem *pte =
>>> +		(gen6_pte_t __iomem *)ggtt->gsm + offset / I915_GTT_PAGE_SIZE;
>>> +
>>> +	iowrite32(vm->pte_encode(addr, level, flags), pte);
>>> +
>>> +	ggtt->invalidate(ggtt);
>>> +}
>>> +
>>> +static void gen8_ggtt_insert_page(struct i915_address_space *vm,
>>> +				  dma_addr_t addr,
>>> +				  u64 offset,
>>> +				  enum i915_cache_level level,
>>> +				  u32 flags)
>>> +{
>>> +	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
>>> +	gen8_pte_t __iomem *pte =
>>> +		(gen8_pte_t __iomem *)ggtt->gsm + offset / I915_GTT_PAGE_SIZE;
>>> +
>>> +	gen8_set_pte(pte, gen8_ggtt_pte_encode(addr, level, flags));
>>> +
>>> +	ggtt->invalidate(ggtt);
>>> +}
>>> +
>>> +static void gen5_ggtt_insert_entries(struct i915_address_space *vm,
>>> +				     struct i915_vma_resource *vma_res,
>>> +				     enum i915_cache_level cache_level,
>>> +				     u32 unused)
>>> +{
>>> +	unsigned int flags = (cache_level == I915_CACHE_NONE) ?
>>> +		AGP_USER_MEMORY : AGP_USER_CACHED_MEMORY;
>>> +
>>> +	intel_gtt_insert_sg_entries(vma_res->bi.pages, vma_res->start >> PAGE_SHIFT,
>>> +				    flags);
>>> +}
>>> +
>>> +/*
>>> + * Binds an object into the global gtt with the specified cache level.
>>> + * The object will be accessible to the GPU via commands whose operands
>>> + * reference offsets within the global GTT as well as accessible by the GPU
>>> + * through the GMADR mapped BAR (i915->mm.gtt->gtt).
>>> + */
>>> +static void gen6_ggtt_insert_entries(struct i915_address_space *vm,
>>> +				     struct i915_vma_resource *vma_res,
>>> +				     enum i915_cache_level level,
>>> +				     u32 flags)
>>> +{
>>> +	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
>>> +	gen6_pte_t __iomem *gte;
>>> +	gen6_pte_t __iomem *end;
>>> +	struct sgt_iter iter;
>>> +	dma_addr_t addr;
>>> +
>>> +	gte = (gen6_pte_t __iomem *)ggtt->gsm;
>>> +	gte += vma_res->start / I915_GTT_PAGE_SIZE;
>>> +	end = gte + vma_res->node_size / I915_GTT_PAGE_SIZE;
>>> +
>>> +	for_each_sgt_daddr(addr, iter, vma_res->bi.pages)
>>> +		iowrite32(vm->pte_encode(addr, level, flags), gte++);
>>> +	GEM_BUG_ON(gte > end);
>>> +
>>> +	/* Fill the allocated but "unused" space beyond the end of the buffer */
>>> +	while (gte < end)
>>> +		iowrite32(vm->scratch[0]->encode, gte++);
>>> +
>>> +	/*
>>> +	 * We want to flush the TLBs only after we're certain all the PTE
>>> +	 * updates have finished.
>>> +	 */
>>> +	ggtt->invalidate(ggtt);
>>> +}
>>> +
>>> +static void gen8_ggtt_insert_entries(struct i915_address_space *vm,
>>> +				     struct i915_vma_resource *vma_res,
>>> +				     enum i915_cache_level level,
>>> +				     u32 flags)
>>> +{
>>> +	const gen8_pte_t pte_encode = gen8_ggtt_pte_encode(0, level, flags);
>>> +	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
>>> +	gen8_pte_t __iomem *gte;
>>> +	gen8_pte_t __iomem *end;
>>> +	struct sgt_iter iter;
>>> +	dma_addr_t addr;
>>> +
>>> +	/*
>>> +	 * Note that we ignore PTE_READ_ONLY here. The caller must be careful
>>> +	 * not to allow the user to override access to a read only page.
>>> +	 */
>>> +
>>> +	gte = (gen8_pte_t __iomem *)ggtt->gsm;
>>> +	gte += vma_res->start / I915_GTT_PAGE_SIZE;
>>> +	end = gte + vma_res->node_size / I915_GTT_PAGE_SIZE;
>>> +
>>> +	for_each_sgt_daddr(addr, iter, vma_res->bi.pages)
>>> +		gen8_set_pte(gte++, pte_encode | addr);
>>> +	GEM_BUG_ON(gte > end);
>>> +
>>> +	/* Fill the allocated but "unused" space beyond the end of the buffer */
>>> +	while (gte < end)
>>> +		gen8_set_pte(gte++, vm->scratch[0]->encode);
>>> +
>>> +	/*
>>> +	 * We want to flush the TLBs only after we're certain all the PTE
>>> +	 * updates have finished.
>>> +	 */
>>> +	ggtt->invalidate(ggtt);
>>> +}
>>> +
>>> +static void bxt_vtd_ggtt_wa(struct i915_address_space *vm)
>>> +{
>>> +	/*
>>> +	 * Make sure the internal GAM fifo has been cleared of all GTT
>>> +	 * writes before exiting stop_machine(). This guarantees that
>>> +	 * any aperture accesses waiting to start in another process
>>> +	 * cannot back up behind the GTT writes causing a hang.
>>> +	 * The register can be any arbitrary GAM register.
>>> +	 */
>>> +	intel_uncore_posting_read_fw(vm->gt->uncore, GFX_FLSH_CNTL_GEN6);
>>> +}
>>> +
>>> +static int bxt_vtd_ggtt_insert_page__cb(void *_arg)
>>> +{
>>> +	struct insert_page *arg = _arg;
>>> +
>>> +	gen8_ggtt_insert_page(arg->vm, arg->addr, arg->offset, arg->level, 0);
>>> +	bxt_vtd_ggtt_wa(arg->vm);
>>> +
>>> +	return 0;
>>> +}
>>> +
>>> +static void bxt_vtd_ggtt_insert_page__BKL(struct i915_address_space *vm,
>>> +					  dma_addr_t addr,
>>> +					  u64 offset,
>>> +					  enum i915_cache_level level,
>>> +					  u32 unused)
>>> +{
>>> +	struct insert_page arg = { vm, addr, offset, level };
>>> +
>>> +	stop_machine(bxt_vtd_ggtt_insert_page__cb, &arg, NULL);
>>> +}
>>> +
>>> +static int bxt_vtd_ggtt_insert_entries__cb(void *_arg)
>>> +{
>>> +	struct insert_entries *arg = _arg;
>>> +
>>> +	gen8_ggtt_insert_entries(arg->vm, arg->vma_res, arg->level, arg->flags);
>>> +	bxt_vtd_ggtt_wa(arg->vm);
>>> +
>>> +	return 0;
>>> +}
>>> +
>>> +static void bxt_vtd_ggtt_insert_entries__BKL(struct i915_address_space *vm,
>>> +					     struct i915_vma_resource *vma_res,
>>> +					     enum i915_cache_level level,
>>> +					     u32 flags)
>>> +{
>>> +	struct insert_entries arg = { vm, vma_res, level, flags };
>>> +
>>> +	stop_machine(bxt_vtd_ggtt_insert_entries__cb, &arg, NULL);
>>> +}
>>> +
>>> +void intel_gt_gmch_gen5_chipset_flush(struct intel_gt *gt)
>>> +{
>>> +	intel_gtt_chipset_flush();
>>> +}
>>> +
>>> +static void gmch_ggtt_invalidate(struct i915_ggtt *ggtt)
>>> +{
>>> +	intel_gtt_chipset_flush();
>>> +}
>>> +
>>> +static void gen5_ggtt_clear_range(struct i915_address_space *vm,
>>> +					 u64 start, u64 length)
>>> +{
>>> +	intel_gtt_clear_range(start >> PAGE_SHIFT, length >> PAGE_SHIFT);
>>> +}
>>> +
>>> +static void gen6_ggtt_clear_range(struct i915_address_space *vm,
>>> +				  u64 start, u64 length)
>>> +{
>>> +	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
>>> +	unsigned int first_entry = start / I915_GTT_PAGE_SIZE;
>>> +	unsigned int num_entries = length / I915_GTT_PAGE_SIZE;
>>> +	gen6_pte_t scratch_pte, __iomem *gtt_base =
>>> +		(gen6_pte_t __iomem *)ggtt->gsm + first_entry;
>>> +	const int max_entries = ggtt_total_entries(ggtt) - first_entry;
>>> +	int i;
>>> +
>>> +	if (WARN(num_entries > max_entries,
>>> +		 "First entry = %d; Num entries = %d (max=%d)\n",
>>> +		 first_entry, num_entries, max_entries))
>>> +		num_entries = max_entries;
>>> +
>>> +	scratch_pte = vm->scratch[0]->encode;
>>> +	for (i = 0; i < num_entries; i++)
>>> +		iowrite32(scratch_pte, &gtt_base[i]);
>>> +}
>>> +
>>> +static void gen8_ggtt_clear_range(struct i915_address_space *vm,
>>> +				  u64 start, u64 length)
>>> +{
>>> +	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
>>> +	unsigned int first_entry = start / I915_GTT_PAGE_SIZE;
>>> +	unsigned int num_entries = length / I915_GTT_PAGE_SIZE;
>>> +	const gen8_pte_t scratch_pte = vm->scratch[0]->encode;
>>> +	gen8_pte_t __iomem *gtt_base =
>>> +		(gen8_pte_t __iomem *)ggtt->gsm + first_entry;
>>> +	const int max_entries = ggtt_total_entries(ggtt) - first_entry;
>>> +	int i;
>>> +
>>> +	if (WARN(num_entries > max_entries,
>>> +		 "First entry = %d; Num entries = %d (max=%d)\n",
>>> +		 first_entry, num_entries, max_entries))
>>> +		num_entries = max_entries;
>>> +
>>> +	for (i = 0; i < num_entries; i++)
>>> +		gen8_set_pte(&gtt_base[i], scratch_pte);
>>> +}
>>> +
>>> +static void gen5_gmch_remove(struct i915_address_space *vm)
>>> +{
>>> +	intel_gmch_remove();
>>> +}
>>> +
>>> +static void gen6_gmch_remove(struct i915_address_space *vm)
>>> +{
>>> +	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
>>> +
>>> +	iounmap(ggtt->gsm);
>>> +	free_scratch(vm);
>>> +}
>>> +
>>> +/*
>>> + * Certain Gen5 chipsets require idling the GPU before
>>> + * unmapping anything from the GTT when VT-d is enabled.
>>> + */
>>> +static bool needs_idle_maps(struct drm_i915_private *i915)
>>> +{
>>> +	/*
>>> +	 * Query intel_iommu to see if we need the workaround. Presumably that
>>> +	 * was loaded first.
>>> +	 */
>>> +	if (!intel_vtd_active(i915))
>>> +		return false;
>>> +
>>> +	if (GRAPHICS_VER(i915) == 5 && IS_MOBILE(i915))
>>> +		return true;
>>> +
>>> +	if (GRAPHICS_VER(i915) == 12)
>>> +		return true; /* XXX DMAR fault reason 7 */
>>> +
>>> +	return false;
>>> +}
>>> +
>>> +static unsigned int gen6_gttmmadr_size(struct drm_i915_private *i915)
>>> +{
>>> +	/*
>>> +	 * GEN6: GTTMMADR size is 4MB and GTTADR starts at 2MB offset
>>> +	 * GEN8: GTTMMADR size is 16MB and GTTADR starts at 8MB offset
>>> +	 */
>>> +	GEM_BUG_ON(GRAPHICS_VER(i915) < 6);
>>> +	return (GRAPHICS_VER(i915) < 8) ? SZ_4M : SZ_16M;
>>> +}
>>> +
>>> +static unsigned int gen6_get_total_gtt_size(u16 snb_gmch_ctl)
>>> +{
>>> +	snb_gmch_ctl >>= SNB_GMCH_GGMS_SHIFT;
>>> +	snb_gmch_ctl &= SNB_GMCH_GGMS_MASK;
>>> +	return snb_gmch_ctl << 20;
>>> +}
>>> +
>>> +static unsigned int gen8_get_total_gtt_size(u16 bdw_gmch_ctl)
>>> +{
>>> +	bdw_gmch_ctl >>= BDW_GMCH_GGMS_SHIFT;
>>> +	bdw_gmch_ctl &= BDW_GMCH_GGMS_MASK;
>>> +	if (bdw_gmch_ctl)
>>> +		bdw_gmch_ctl = 1 << bdw_gmch_ctl;
>>> +
>>> +#ifdef CONFIG_X86_32
>>> +	/* Limit 32b platforms to a 2GB GGTT: 4 << 20 / pte size * I915_GTT_PAGE_SIZE */
>>> +	if (bdw_gmch_ctl > 4)
>>> +		bdw_gmch_ctl = 4;
>>> +#endif
>>> +
>>> +	return bdw_gmch_ctl << 20;
>>> +}
>>> +
>>> +static unsigned int gen6_gttadr_offset(struct drm_i915_private *i915)
>>> +{
>>> +	return gen6_gttmmadr_size(i915) / 2;
>>> +}
>>> +
>>> +static int ggtt_probe_common(struct i915_ggtt *ggtt, u64 size)
>>> +{
>>> +	struct drm_i915_private *i915 = ggtt->vm.i915;
>>> +	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
>>> +	phys_addr_t phys_addr;
>>> +	u32 pte_flags;
>>> +	int ret;
>>> +
>>> +	GEM_WARN_ON(pci_resource_len(pdev, 0) != gen6_gttmmadr_size(i915));
>>> +	phys_addr = pci_resource_start(pdev, 0) + gen6_gttadr_offset(i915);
>>> +
>>> +	/*
>>> +	 * On BXT+/ICL+ writes larger than 64 bit to the GTT pagetable range
>>> +	 * will be dropped. For WC mappings in general we have 64 byte burst
>>> +	 * writes when the WC buffer is flushed, so we can't use it, but have to
>>> +	 * resort to an uncached mapping. The WC issue is easily caught by the
>>> +	 * readback check when writing GTT PTE entries.
>>> +	 */
>>> +	if (IS_GEN9_LP(i915) || GRAPHICS_VER(i915) >= 11)
>>> +		ggtt->gsm = ioremap(phys_addr, size);
>>> +	else
>>> +		ggtt->gsm = ioremap_wc(phys_addr, size);
>>> +	if (!ggtt->gsm) {
>>> +		drm_err(&i915->drm, "Failed to map the ggtt page table\n");
>>> +		return -ENOMEM;
>>> +	}
>>> +
>>> +	kref_init(&ggtt->vm.resv_ref);
>>> +	ret = setup_scratch_page(&ggtt->vm);
>>> +	if (ret) {
>>> +		drm_err(&i915->drm, "Scratch setup failed\n");
>>> +		/* iounmap will also get called at remove, but meh */
>>> +		iounmap(ggtt->gsm);
>>> +		return ret;
>>> +	}
>>> +
>>> +	pte_flags = 0;
>>> +	if (i915_gem_object_is_lmem(ggtt->vm.scratch[0]))
>>> +		pte_flags |= PTE_LM;
>>> +
>>> +	ggtt->vm.scratch[0]->encode =
>>> +		ggtt->vm.pte_encode(px_dma(ggtt->vm.scratch[0]),
>>> +				    I915_CACHE_NONE, pte_flags);
>>> +
>>> +	return 0;
>>> +}
>>> +
>>> +int intel_gt_gmch_gen5_probe(struct i915_ggtt *ggtt)
>>> +{
>>> +	struct drm_i915_private *i915 = ggtt->vm.i915;
>>> +	phys_addr_t gmadr_base;
>>> +	int ret;
>>> +
>>> +	ret = intel_gmch_probe(i915->bridge_dev, to_pci_dev(i915->drm.dev), NULL);
>>> +	if (!ret) {
>>> +		drm_err(&i915->drm, "failed to set up gmch\n");
>>> +		return -EIO;
>>> +	}
>>> +
>>> +	intel_gtt_get(&ggtt->vm.total, &gmadr_base, &ggtt->mappable_end);
>>> +
>>> +	ggtt->gmadr =
>>> +		(struct resource)DEFINE_RES_MEM(gmadr_base, ggtt->mappable_end);
>>> +
>>> +	ggtt->vm.alloc_pt_dma = alloc_pt_dma;
>>> +	ggtt->vm.alloc_scratch_dma = alloc_pt_dma;
>>> +
>>> +	if (needs_idle_maps(i915)) {
>>> +		drm_notice(&i915->drm,
>>> +			   "Flushing DMA requests before IOMMU unmaps; performance may be degraded\n");
>>> +		ggtt->do_idle_maps = true;
>>> +	}
>>> +
>>> +	ggtt->vm.insert_page = gen5_ggtt_insert_page;
>>> +	ggtt->vm.insert_entries = gen5_ggtt_insert_entries;
>>> +	ggtt->vm.clear_range = gen5_ggtt_clear_range;
>>> +	ggtt->vm.cleanup = gen5_gmch_remove;
>>> +
>>> +	ggtt->invalidate = gmch_ggtt_invalidate;
>>> +
>>> +	ggtt->vm.vma_ops.bind_vma    = intel_ggtt_bind_vma;
>>> +	ggtt->vm.vma_ops.unbind_vma  = intel_ggtt_unbind_vma;
>>> +
>>> +	if (unlikely(ggtt->do_idle_maps))
>>> +		drm_notice(&i915->drm,
>>> +			   "Applying Ironlake quirks for intel_iommu\n");
>>> +
>>> +	return 0;
>>> +}
>>> +
>>> +int intel_gt_gmch_gen6_probe(struct i915_ggtt *ggtt)
>>> +{
>>> +	struct drm_i915_private *i915 = ggtt->vm.i915;
>>> +	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
>>> +	unsigned int size;
>>> +	u16 snb_gmch_ctl;
>>> +
>>> +	ggtt->gmadr = pci_resource(pdev, 2);
>>> +	ggtt->mappable_end = resource_size(&ggtt->gmadr);
>>> +
>>> +	/*
>>> +	 * 64/512MB is the current min/max we actually know of, but this is
>>> +	 * just a coarse sanity check.
>>> +	 */
>>> +	if (ggtt->mappable_end < (64<<20) || ggtt->mappable_end > (512<<20)) {
>>> +		drm_err(&i915->drm, "Unknown GMADR size (%pa)\n",
>>> +			&ggtt->mappable_end);
>>> +		return -ENXIO;
>>> +	}
>>> +
>>> +	pci_read_config_word(pdev, SNB_GMCH_CTRL, &snb_gmch_ctl);
>>> +
>>> +	size = gen6_get_total_gtt_size(snb_gmch_ctl);
>>> +	ggtt->vm.total = (size / sizeof(gen6_pte_t)) * I915_GTT_PAGE_SIZE;
>>> +
>>> +	ggtt->vm.alloc_pt_dma = alloc_pt_dma;
>>> +	ggtt->vm.alloc_scratch_dma = alloc_pt_dma;
>>> +
>>> +	ggtt->vm.clear_range = nop_clear_range;
>>> +	if (!HAS_FULL_PPGTT(i915) || intel_scanout_needs_vtd_wa(i915))
>>> +		ggtt->vm.clear_range = gen6_ggtt_clear_range;
>>> +	ggtt->vm.insert_page = gen6_ggtt_insert_page;
>>> +	ggtt->vm.insert_entries = gen6_ggtt_insert_entries;
>>> +	ggtt->vm.cleanup = gen6_gmch_remove;
>>> +
>>> +	ggtt->invalidate = gen6_ggtt_invalidate;
>>> +
>>> +	if (HAS_EDRAM(i915))
>>> +		ggtt->vm.pte_encode = iris_pte_encode;
>>> +	else if (IS_HASWELL(i915))
>>> +		ggtt->vm.pte_encode = hsw_pte_encode;
>>> +	else if (IS_VALLEYVIEW(i915))
>>> +		ggtt->vm.pte_encode = byt_pte_encode;
>>> +	else if (GRAPHICS_VER(i915) >= 7)
>>> +		ggtt->vm.pte_encode = ivb_pte_encode;
>>> +	else
>>> +		ggtt->vm.pte_encode = snb_pte_encode;
>>> +
>>> +	ggtt->vm.vma_ops.bind_vma    = intel_ggtt_bind_vma;
>>> +	ggtt->vm.vma_ops.unbind_vma  = intel_ggtt_unbind_vma;
>>> +
>>> +	return ggtt_probe_common(ggtt, size);
>>> +}
>>> +
>>> +static unsigned int chv_get_total_gtt_size(u16 gmch_ctrl)
>>> +{
>>> +	gmch_ctrl >>= SNB_GMCH_GGMS_SHIFT;
>>> +	gmch_ctrl &= SNB_GMCH_GGMS_MASK;
>>> +
>>> +	if (gmch_ctrl)
>>> +		return 1 << (20 + gmch_ctrl);
>>> +
>>> +	return 0;
>>> +}
>>> +
>>> +int intel_gt_gmch_gen8_probe(struct i915_ggtt *ggtt)
>>> +{
>>> +	struct drm_i915_private *i915 = ggtt->vm.i915;
>>> +	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
>>> +	unsigned int size;
>>> +	u16 snb_gmch_ctl;
>>> +
>>> +	/* TODO: We're not aware of mappable constraints on gen8 yet */
>>> +	if (!HAS_LMEM(i915)) {
>>> +		ggtt->gmadr = pci_resource(pdev, 2);
>>> +		ggtt->mappable_end = resource_size(&ggtt->gmadr);
>>> +	}
>>> +
>>> +	pci_read_config_word(pdev, SNB_GMCH_CTRL, &snb_gmch_ctl);
>>> +	if (IS_CHERRYVIEW(i915))
>>> +		size = chv_get_total_gtt_size(snb_gmch_ctl);
>>> +	else
>>> +		size = gen8_get_total_gtt_size(snb_gmch_ctl);
>>> +
>>> +	ggtt->vm.alloc_pt_dma = alloc_pt_dma;
>>> +	ggtt->vm.alloc_scratch_dma = alloc_pt_dma;
>>> +	ggtt->vm.lmem_pt_obj_flags = I915_BO_ALLOC_PM_EARLY;
>>> +
>>> +	ggtt->vm.total = (size / sizeof(gen8_pte_t)) * I915_GTT_PAGE_SIZE;
>>> +	ggtt->vm.cleanup = gen6_gmch_remove;
>>> +	ggtt->vm.insert_page = gen8_ggtt_insert_page;
>>> +	ggtt->vm.clear_range = nop_clear_range;
>>> +	if (intel_scanout_needs_vtd_wa(i915))
>>> +		ggtt->vm.clear_range = gen8_ggtt_clear_range;
>>> +
>>> +	ggtt->vm.insert_entries = gen8_ggtt_insert_entries;
>>> +
>>> +	/*
>>> +	 * Serialize GTT updates with aperture access on BXT if VT-d is on,
>>> +	 * and always on CHV.
>>> +	 */
>>> +	if (intel_vm_no_concurrent_access_wa(i915)) {
>>> +		ggtt->vm.insert_entries = bxt_vtd_ggtt_insert_entries__BKL;
>>> +		ggtt->vm.insert_page    = bxt_vtd_ggtt_insert_page__BKL;
>>> +		ggtt->vm.bind_async_flags =
>>> +			I915_VMA_GLOBAL_BIND | I915_VMA_LOCAL_BIND;
>>> +	}
>>> +
>>> +	ggtt->invalidate = gen8_ggtt_invalidate;
>>> +
>>> +	ggtt->vm.vma_ops.bind_vma    = intel_ggtt_bind_vma;
>>> +	ggtt->vm.vma_ops.unbind_vma  = intel_ggtt_unbind_vma;
>>> +
>>> +	ggtt->vm.pte_encode = gen8_ggtt_pte_encode;
>>> +
>>> +	setup_private_pat(ggtt->vm.gt->uncore);
>>> +
>>> +	return ggtt_probe_common(ggtt, size);
>>> +}
>>> +
>>> +int intel_gt_gmch_gen5_enable_hw(struct drm_i915_private *i915)
>>> +{
>>> +	if (GRAPHICS_VER(i915) < 6 && !intel_enable_gtt())
>>> +		return -EIO;
>>> +
>>> +	return 0;
>>> +}
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_gmch.h b/drivers/gpu/drm/i915/gt/intel_gt_gmch.h
>>> new file mode 100644
>>> index 000000000000..02e5342d7ea3
>>> --- /dev/null
>>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_gmch.h
>>> @@ -0,0 +1,46 @@
>>> +/* SPDX-License-Identifier: MIT */
>>> +/*
>>> + * Copyright © 2022 Intel Corporation
>>> + */
>>> +
>>> +#ifndef __INTEL_GT_GMCH_H__
>>> +#define __INTEL_GT_GMCH_H__
>>> +
>>> +#include "intel_gtt.h"
>>> +
>>> +/* For x86 platforms */
>>> +#if IS_ENABLED(CONFIG_X86)
>>> +void intel_gt_gmch_gen5_chipset_flush(struct intel_gt *gt);
>>> +int intel_gt_gmch_gen6_probe(struct i915_ggtt *ggtt);
>>> +int intel_gt_gmch_gen8_probe(struct i915_ggtt *ggtt);
>>> +int intel_gt_gmch_gen5_probe(struct i915_ggtt *ggtt);
>>> +int intel_gt_gmch_gen5_enable_hw(struct drm_i915_private *i915);
>>> +
>>> +/* Stubs for non-x86 platforms */
>>> +#else
>>> +static inline void intel_gt_gmch_gen5_chipset_flush(struct intel_gt *gt)
>>> +{
>>> +}
>>> +static inline int intel_gt_gmch_gen5_probe(struct i915_ggtt *ggtt)
>>> +{
>>> +	/* No HW should be probed for this case yet, return fail */
>>> +	return -1;
>>> +}
>>> +static inline int intel_gt_gmch_gen6_probe(struct i915_ggtt *ggtt)
>>> +{
>>> +	/* No HW should be probed for this case yet, return fail */
>>> +	return -1;
>>> +}
>>> +static inline int intel_gt_gmch_gen8_probe(struct i915_ggtt *ggtt)
>>> +{
>>> +	/* No HW should be probed for this case yet, return fail */
>>> +	return -1;
>>> +}
>>> +static inline int intel_gt_gmch_gen5_enable_hw(struct drm_i915_private *i915)
>>> +{
>>> +	/* No HW should be enabled for this case yet, return fail */
>>> +	return -1;
>>> +}
>>> +#endif
>>> +
>>> +#endif /* __INTEL_GT_GMCH_H__ */
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
>>> index 4529b5e9f6e6..b4b9cc5a8ff6 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
>>> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
>>> @@ -547,6 +547,14 @@ i915_page_dir_dma_addr(const struct i915_ppgtt *ppgtt, const unsigned int n)
>>>    void ppgtt_init(struct i915_ppgtt *ppgtt, struct intel_gt *gt,
>>>    		unsigned long lmem_pt_obj_flags);
>>>    
>>> +void intel_ggtt_bind_vma(struct i915_address_space *vm,
>>> +			  struct i915_vm_pt_stash *stash,
>>> +			  struct i915_vma_resource *vma_res,
>>> +			  enum i915_cache_level cache_level,
>>> +			  u32 flags);
>>> +void intel_ggtt_unbind_vma(struct i915_address_space *vm,
>>> +			    struct i915_vma_resource *vma_res);
>>> +
>>>    int i915_ggtt_probe_hw(struct drm_i915_private *i915);
>>>    int i915_ggtt_init_hw(struct drm_i915_private *i915);
>>>    int i915_ggtt_enable_hw(struct drm_i915_private *i915);
>>> @@ -617,6 +625,7 @@ release_pd_entry(struct i915_page_directory * const pd,
>>>    		 struct i915_page_table * const pt,
>>>    		 const struct drm_i915_gem_object * const scratch);
>>>    void gen6_ggtt_invalidate(struct i915_ggtt *ggtt);
>>> +void gen8_ggtt_invalidate(struct i915_ggtt *ggtt);
>>>    
>>>    void ppgtt_bind_vma(struct i915_address_space *vm,
>>>    		    struct i915_vm_pt_stash *stash,

