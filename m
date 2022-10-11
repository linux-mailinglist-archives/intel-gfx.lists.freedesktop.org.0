Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 156EB5FB896
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Oct 2022 18:52:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3CF710E89B;
	Tue, 11 Oct 2022 16:52:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 567DA10E83D
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Oct 2022 16:52:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665507126; x=1697043126;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=AZygecKdjkDtBHLDQBQUe5ypz1DtPY7LgBdJLu/MDc4=;
 b=WZOlCGuXVFQICFYuRTDITbRUvPd6DSErDKTKHW8y08kp3qZwcgjonNd/
 KpL+SbGZY8QDAlQOODSawAWk2e4L5cvlgKsWARJhfTCGxcMzUMhNbTG8H
 8Uhzuj2nK5oEJoKr0Aqq5zkOCDCbe7Y+HpNsiMcSVFE1EbhZ6gvBJgESU
 mYULesFeujhfZuX+wUSQBT4p4gyZbH1AoZdDYgKCyhyp7LuJhR3o0pKSr
 /ZpNfypJk3l7C+2w/umEM8Yz7k4TTq0lb1mHhzt/idbLB6Ml9CcrRjGNo
 75oLtUa/4eI1+mX/NT072bKLw54l6FWgjjiOp6jBkb4REIl7obIQjdL5s Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="306186588"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="306186588"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 09:38:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="689305576"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="689305576"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 11 Oct 2022 09:38:55 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 11 Oct 2022 09:38:54 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 11 Oct 2022 09:38:54 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.43) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 11 Oct 2022 09:38:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GD6oQEctVxcP45NlN0LkY7yCawsBzeWibLRmvQT6W2m+ibgEXhpszjCR4R65Duvlc8rvK3tOfPWm2oUYsHSaQ5J5Ik7t+nTF/OQdzcvls7qge4okFV+Czknsvs8oXtUtBsIg11dklpoAMfIVjHqFWCUjq0STDwEX+ifu3efpdyAJx97ydl++lx9AABQ1hHuRZMOenWHMCaCGM25NJrJnzZC1BsHCviYID9DPKVngS1HE/Z+8NjsilcEkz/skuWrdxnbJp1P8tGCg4dNPMtfafyNflzitABGFQyFoEl492Afs0cDTKFCLRsSXjfGTSdureTyRLyM1YWkP/ny0VyDt7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u57guUgcIRYeqzsgnVOXGb4eTyqT5RABjopuI1a+yMA=;
 b=f0f5TtG0B9NjeWuUZSAgQKB5Q34WKnV0QPuF4z1aBFx3vCzFEOoC5hr2Y5NPyZzBpismuE467M9ICvReEkSAGtSm7WdKOuNrT3hbDm5dZ2e4Ffz9gwa2FOq8xGVrIyscrIc7RSivJllaSP0fo2x3A52hYZbU1KUHKj1rEsDGy+3m/yRkbES/pjmTOZnOr4SuNSFqmZppPV8GlPFsgvb11F41a2w17mSwYERchvhZh8R3i4P9Bbrpur89yKTiTA57rJiOSpt01UCPfxhuamEezKqrRBnCCT7eydFTlCdZW0VS4vDhurJYVTMft47TKeMUxICwheuQk+FhZtSNK4YBVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 DM6PR11MB4513.namprd11.prod.outlook.com (2603:10b6:5:2a2::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5709.21; Tue, 11 Oct 2022 16:38:53 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::c072:cd8d:ce60:30cd]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::c072:cd8d:ce60:30cd%3]) with mapi id 15.20.5709.021; Tue, 11 Oct 2022
 16:38:53 +0000
Date: Tue, 11 Oct 2022 09:38:51 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <Y0WcG3NaXIa673ZC@unerlige-ril>
References: <20221010181434.513477-1-umesh.nerlige.ramappa@intel.com>
 <20221010181434.513477-16-umesh.nerlige.ramappa@intel.com>
 <87sfjv19ml.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <87sfjv19ml.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: BYAPR01CA0070.prod.exchangelabs.com (2603:10b6:a03:94::47)
 To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|DM6PR11MB4513:EE_
X-MS-Office365-Filtering-Correlation-Id: 1f9b422b-546d-4d84-83cb-08daaba7154e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SGpEexhQ+W42ulhNyeWzjUqBGH2dHdRSfXbALYeFR82cf0Saa1PmqUI5mCsC5vSuLFSXC27YgmXbJ6twTkVMl0bz57rB4zud40rUTN4NDmVwniIwTpuHE7+m6v7tNCCKdld6FIxaeJvQGDnOmnwxLI3eP+HdSD7sLMPxyHrHm1arLkrVrHgVIIye3C4F9UgYDVotNK8RUOTsCLpplWI1FkmNVkpn1nmb9qyX53GXDlKbFK1Xt992yLZ0p8S+htV3NsuVVdGxtdvsrKCCHOas1vGXuOvVl5LopJME04S8++HtIeN11HuGFLjH8Rsa80/wp2MIc1avKJ/89BTZBt9XlJwedFbaKeXffMOc8ZaM+vvfppNy2fp4DUvPvybkvTGuUc00Mw6b/XJ2IVuFz0fcbFlmWNeVLfsh75GCnPtb+fUCi1MaopH3eHLNPpvfkPPXl/UwZdnVQI7/r2RSnYTiT/4wym9WweOLresi0Xqq1y+UWLvrbw/5xHGp8ug+hvi9L/r1MZfggwuIWMQG81syXl6b7zLIV+oKU1J11on3MGj8v0r6FXGgE6yIvfvMUGP+0srtKhjD0rUxF2JArmq84S7xslhsWoA9KxJaEj+akci5szhlG6ffayjhYbsCsIqy9pn7OTO3uBfqWL5iaqar5itnA9BVsRq6ISRz4LklHbHaiCU4VV9k3Yj5HJMIZUuHHLJfhD9DbiUnHweT6zkKCw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(346002)(39860400002)(366004)(136003)(396003)(376002)(451199015)(41300700001)(26005)(6512007)(6506007)(6486002)(66946007)(66556008)(66476007)(478600001)(8676002)(4326008)(82960400001)(38100700002)(9686003)(86362001)(186003)(6862004)(8936002)(5660300002)(33716001)(83380400001)(6636002)(2906002)(316002)(107886003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UENBY2p5SkkrN3dlU0NZUEZIMmE1N1k4VU5QRmRWajlIcEFncHJUTHRIU2RL?=
 =?utf-8?B?Y1B3NmVPL1lzUWZMaHhFUXlRTWZYOWhoTkhyanhSZGNRT1dTK1pIQWRmS0dH?=
 =?utf-8?B?dklWVlJ3WWViNDJiT0plRWFJL1Z4TlBTWHcwemxPMFQwVmpwc0xFQktwREd1?=
 =?utf-8?B?Q1lyQmdTVmFNM1l4dXdJRElDY1F4TERnN0RHUDdXYVAxYkdLRjkzaTU1OHJR?=
 =?utf-8?B?YXZrRy8xMkdXYS8rRlBUOGNRNG1MWTlRb2IxZU4rRzlJV2p2N0ZkNFpSWW94?=
 =?utf-8?B?TGpEaVVqUVV2Sk1uVWJFVHlkM1NvbnFlaHlEa0tsVjZzbFR2alFJVFJsZWJ2?=
 =?utf-8?B?Q3c1VjRpRTdrZlRCd0g3QzNyclA4cGhhWVlUUThGaTRTOHNtcHdLdndmRjQ1?=
 =?utf-8?B?a1dUUVZIYmsxc3k4MStuanhxaVBLTXdyUGdOUVJ6TEtlU2lYT3hIbUd0WEg0?=
 =?utf-8?B?T0l1cFR2eElVT0JFMTBhaFYxeUloTk1FVEZES2dSNkt6ekpsbGpsL1VXWGlT?=
 =?utf-8?B?aVQ4RGJocFc5T0k0NUNVMmIzVlBiQ1BpNG02T1ZWRmIzMUJSWStxL3ZhU0oz?=
 =?utf-8?B?Wld0YWJlWHVzSEhVbTIrdDlVVzU0OXNZcm90VEN3bEJlVVZocmZIUHNlditX?=
 =?utf-8?B?Z21uckszcmRabmdYRDlUaCtkdFBQa1FNVzNwd0RRb21IVU5iZVdxcjNIVUZQ?=
 =?utf-8?B?UlM5SUExMnpkQmJFRHBwcmFMbzBHb2ZsN016Rm5LNmxaU01zN1JRMlFkSVdU?=
 =?utf-8?B?RHE4TW5EbHdjRWVYTnkrUHBvUHlQOEVFSDl0MFNuMy9QOWdYMGZqa2FlS05F?=
 =?utf-8?B?aVhrMUx1QU9tS3BjVEN5OFNnWjdYWWsvaDY2QUNQeVRBbGJyb29Jdm5vM2NO?=
 =?utf-8?B?MmZtM3N4T1QxVC83QWt6QTBja0JTSURTOFNFbmtmc0ZObzA0SHZTSm8wT01H?=
 =?utf-8?B?YjdTSGtzSUxBZTEyV0lkMThGaXp2Q1JNcm5xOUxCNmgrYm1aZTBtQU9RRjFm?=
 =?utf-8?B?d0lEblk4QnFmNFQrdzJ2L1p0ZlRQaVp0OGVpaTlyTkF1N2tSQmNuVlRRT1VB?=
 =?utf-8?B?N3dVQVlOUDNpQk1Qc2RBT3VDQ0VJWDdHbFhKSU80Q2JEdVd3eGVHYy9Ja1hT?=
 =?utf-8?B?L3R5dURFZ2VmdGNlTjU1QTNGdE91UjVqSmFmbUZ0YUp5MlJvRDl0M3o2ci9k?=
 =?utf-8?B?cklGMVB6ZStSN0FzR3BZWXlnKzBxaFRLa3dTYWllbldDNUlmTmlyZEh6MHJs?=
 =?utf-8?B?WEE5ZVFCKzRZaXNrYThKemtGOWxvTndPR0FBQ21UQTFKMjJSblhZNWttby9q?=
 =?utf-8?B?dElldmhWUnlkanRRRDRPM2lKb3p1QktLeUxWSGpndmFqTG5PNk4vRWRFcnJz?=
 =?utf-8?B?N0hoRUYwdUxYbU1wd1llcEtJdytwV1ZuMjV0MWczaUlWL3BQSWJENU4rUDZn?=
 =?utf-8?B?TU1HOWpXNHJ5Rm1YZXIzNU5wK0hubkFxZXIxSWJnbFVJeXVDTUVIMEV1OVpB?=
 =?utf-8?B?emZpL2RrbysrUXl1cFdkVUswaGFoVURNc0tEZUdFMXlXVm5NQ2FaYmErcWhW?=
 =?utf-8?B?R0ZwWU1oUjZjSFNORXNWNlVYaTZJOG9GNXFHdlFydW9QdXhYbDAyZXh1NjJu?=
 =?utf-8?B?cllHWDZoMFlrbXUrOFh6NXBYNm5jSFJvbHNBU3lkd25RbEl5SEszNldZRlRx?=
 =?utf-8?B?bVNObk9ZSE1yVi9USmVRTEI2UVNkMkhwdzRhOHRWNEt6eGkweVhRNDllYVA3?=
 =?utf-8?B?Z3crdncyQS94TlQ5bitJSW55MWYrbmVZTmRvS2lFT0w2N0R5UllhRlhlSmZl?=
 =?utf-8?B?V0krVUh4ckYwQWRHWVMrTWhSU0hpT1FLbHF5N2VqYkY4c0tiTEpyYmhtTTF1?=
 =?utf-8?B?WUVPYkRWMXJucUIvb1NjblduZGlzRlNIRjEwVUE0WXlJYXFEWERDU3ZWNU5u?=
 =?utf-8?B?amxqU1cySXJZd1RXbmxDM240L2lzdmI1eXhVOHdlTkJ3Q1E2Uk5uM3lHOExE?=
 =?utf-8?B?eGNmMmNWMVlkOTdLTW1zdWxodnpWRzlXMUxNRnkrWFlaT2dGU0IrSFBaanli?=
 =?utf-8?B?R3NNVklNKzZzN3NUcGkvcENSM1JKODhwbnZOQ0x1R2lmNzhzT0V3MVdHd05L?=
 =?utf-8?B?RzVxeUVHMnNTWm9KYWFhbFhmZlNqRDVlUTZ2ZGNEd2JEYW5jdHFRcTJwMlFu?=
 =?utf-8?Q?mvaPSqgEKheIGLcfox6xGac=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f9b422b-546d-4d84-83cb-08daaba7154e
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Oct 2022 16:38:53.2326 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8oawWcVOTJ7xHZi/PP7TJKe0kAKLeqK5aqiHPQxlcQvWk0IalJVu+QeEYcN8dSTHjDXzbYmGw+lETQSYkpbcigz86vd9MbDT4LpvrDNEywk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4513
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 15/16] drm/i915/perf: complete
 programming whitelisting for XEHPSDV
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Oct 10, 2022 at 05:34:10PM -0700, Dixit, Ashutosh wrote:
>On Mon, 10 Oct 2022 11:14:33 -0700, Umesh Nerlige Ramappa wrote:
>>
>> From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
>>
>> We have an additional register to select which slices contribute to
>> OAG/OAG counter increments.
>>
>> Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
>> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>> ---
>>  drivers/gpu/drm/i915/i915_drv.h          |  2 ++
>>  drivers/gpu/drm/i915/i915_pci.c          |  1 +
>>  drivers/gpu/drm/i915/i915_perf.c         | 13 +++++++++++++
>>  drivers/gpu/drm/i915/intel_device_info.h |  1 +
>>  4 files changed, 17 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>> index ccd54ff54002..992ca7b0aea0 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -904,6 +904,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>>
>>  #define HAS_OA_BPC_REPORTING(dev_priv) \
>>	(INTEL_INFO(dev_priv)->has_oa_bpc_reporting)
>> +#define HAS_OA_SLICE_CONTRIB_LIMITS(dev_priv) \
>> +	(INTEL_INFO(dev_priv)->has_oa_slice_contrib_limits)
>
>If this is just for XEHPSDV maybe we could just have a platform check
>rather than introduce a flag? Otherwise this is:

I think when it was added, it was only xehpsdv, but now applies to dg2 
and some other platforms.

Thanks,
Umesh
>
>Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
