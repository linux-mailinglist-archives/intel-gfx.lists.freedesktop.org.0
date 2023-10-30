Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DB657DB27A
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Oct 2023 05:17:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67A4510E1FE;
	Mon, 30 Oct 2023 04:17:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0C1C10E1FE
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Oct 2023 04:17:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698639445; x=1730175445;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0SJwVLUa60mnFY2YUBSGH8UMFXf+nNAJTwzlBmUK15Y=;
 b=k+jZ/p/nlZSVLN1oRROqE2HgQSKadBMpcDZt1CINQhQHoKWAahvnrltd
 9BCSBe0ghkDUft4umWf3z4ZLQkxIPxxR1hmFElbtaZl7KAi1Mao8+CC8B
 qskcDyNZLgQ6lX805luOFD9NQVdrmp/rkfK0n6iF7PDidp0A5gAlNFk1D
 cjWiu9PUtCu7+z7UBr4rUhGGOSw39riZX6+WqPmzoh1iMkUjx1zVkNt8D
 hQg7G9ARB16R6swR/1PoltoV8En+rjda4IzXl17mztOqefBNAuPvEb2d+
 kKQpnka8bgEWMYK3qVj7tAR5npJ50kHlT9flHz6DGZ7pK2kBIx5KxdYk2 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10878"; a="474242167"
X-IronPort-AV: E=Sophos;i="6.03,262,1694761200"; d="scan'208";a="474242167"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2023 21:17:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10878"; a="883746499"
X-IronPort-AV: E=Sophos;i="6.03,262,1694761200"; d="scan'208";a="883746499"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Oct 2023 21:17:18 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Sun, 29 Oct 2023 21:17:17 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Sun, 29 Oct 2023 21:17:17 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Sun, 29 Oct 2023 21:17:17 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Sun, 29 Oct 2023 21:17:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ky85ejaZLtfI1o+DpJ7x2KFzpMXJR4b6EorfKILSaFQzLywaK3sq4Lxu5Cdn4HsXAh35zRs0TMfNySYHhdqZgfkFdjopu1J4/fVO6G24VfI6xj+9C8UYWMQNy2XEQQdxGFVFX3rM5cPlZiEqyRPztE7huOMt6rKns3huNR2XvFelhp07bik1MfmgEfEa66T0mLlFTRdXJSQUHUv8TZcFEWfbG+YmwuINUVN0WesPEwfqITtAud2kzyNY4Myvb2rqXmbDiCLDWxj7uUq5INYp8dXA4IU1hP1vXWNrgDmS1YNwqVnfpJL2xF08WaaycHw/kqpd7ZHdMBnhLzAT6l69Kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IV2yUlomLP0BQDXop3BuRXvy6SGG/APSbjF1cF1o7+0=;
 b=gVTfYioQUtzHGquECIGrQSG8WVKEsI/PojMySQVTrRiDh3goQ71Bn+ZbPQL+4lyjj5mDLe+IYEESHjQVvC4WyGivfgtUYEeePKohctE7oh0pjUPjlpMx1NPW0sqSIkO9QSQoY6DJVS2QLNkw9N+0lOUuyFwGYpk5p8fcMdWldYeVm+p4dm7v18ST3KNNIdxymA1eCiscs62LGGZ4rwgHx0iZxLYedZU35Hu1XlzaKWe6ZpNSx0PxOj1wyprfxUhh/G6iLb5KABQak5OiWCacbTbYBBBQXKLet/H5UwNdYIjIBIJXGHUuY95GuxchKMQAHZhLf1M8wr/XCQoGn4YSYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB6671.namprd11.prod.outlook.com (2603:10b6:a03:44b::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6933.28; Mon, 30 Oct
 2023 04:17:10 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::c669:55a3:5879:1e6e]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::c669:55a3:5879:1e6e%5]) with mapi id 15.20.6933.028; Mon, 30 Oct 2023
 04:17:10 +0000
Message-ID: <a2ece5c8-14ef-7cf6-be1f-0442ecd681dd@intel.com>
Date: Mon, 30 Oct 2023 09:47:03 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
To: Imre Deak <imre.deak@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20231024010925.3949910-1-imre.deak@intel.com>
 <20231024010925.3949910-30-imre.deak@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20231024010925.3949910-30-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0238.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:eb::8) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ0PR11MB6671:EE_
X-MS-Office365-Filtering-Correlation-Id: 4941015f-dae8-4992-f12c-08dbd8ff15a4
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dRB5OGnCnJV/RpcY+eTjxopoy4++TtWwMOfZzsKyKRLvsM9KEs6kVDL8VMptX1cM/mH6HsmdoPfCER2enWzYiRH2tQ/6OyyUfaDtfgOP8eS+VuujsLUIqRgJsmjtV+63PMOB+qcLxNr8sqxEhOiRM1UEFIJXDf2QuosqC2N6nF2PiVCO19q14xcolSmE9taP1yd5B1NRjAHXpd2XPhjkKR++rQ2CXcjh6/eIHu+l+8K3zdP3LAw9FKQgy/tqX0rr8GqD7pNj8rUJeQwflfz3tjLHHyZHm7hAQjQa6tzxxDiZJDRHqRj54Z24I43Kcn8AVTR0C5E8c1Hn1Kehn1m0wygSlHCzM+JuKFibMSr0k5DH2Q4ke4rCAz1nAm3nx1eiSWmHrcbWj6Jh7j3iLqhI3+C+48IJybCsdKRHgJYQckIedjbIgR7WTPyCiwXzsCeLyUqNm3o27rQpfy+81UfAirpI9uumbgjwyiqB4J65WSdIjw5cbCLG7cPOZoO4fnew9KY+jnHaPVOB+Q2Q/8ASghKpDpzdjLKpHq6aMkCrbwihHVz+ITr18ntX4OWskrRbUtt74wFuM06IZQfmKa/NmWTcK1gsVEhjbYh1B8PdXDuFhlhxU9feXJ5zZxWnkP9Fyem61m7K2UgvWCdT61HDyX3DhYB6eqOKmoiRs8QvtJjrfbzy86cZr2q7PKvlzThq
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(136003)(346002)(366004)(376002)(230922051799003)(230273577357003)(230173577357003)(64100799003)(186009)(451199024)(1800799009)(55236004)(6512007)(26005)(2616005)(107886003)(53546011)(478600001)(6506007)(6666004)(83380400001)(6486002)(2906002)(41300700001)(66946007)(5660300002)(66556008)(8936002)(66476007)(4326008)(8676002)(316002)(38100700002)(82960400001)(31696002)(36756003)(86362001)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TlJITkJrZXZpRlZqd00yRG1kRmtIVUk1VVl3ZFY4em9lZUtVMDFiaXM0Vlp0?=
 =?utf-8?B?OVhNNHZ6bjBXeUJTdG9QQThxL2pUc1hKNzVwamxMOU9TQlZzbUNNSTBLbTJ6?=
 =?utf-8?B?OTNNRFhCd2UycysxWWMzUE9DOVFMWHNMeEZxOExHRUhJdmJER1J5THAwR2tZ?=
 =?utf-8?B?WkMxLzd6ZlpvcFo4YmMzVzVGLzg1QUovNTYwaVRaNzhybkVjQ0w2Mk5pZ0xp?=
 =?utf-8?B?TXBMZlNQQ1hsa3JRV2hCbEZwU1ZtNUVWQU93bFVUY3pOU2Ezc0hoc1cvbG5s?=
 =?utf-8?B?WWRhb0lkOFJhWWIzV1VOcy9UQW5HTVg4SWdybmdNMFZVN3FKK0ZoUjQ2bHhs?=
 =?utf-8?B?djJWanRXdTVaWTJla3MvSXlubHhHY0Fma1IybmtqWWNFYVh4UDJHcXlXaVJm?=
 =?utf-8?B?dk13OFJoallGMExFYk02NDFIdVgwbGFOdzBVYzd3em5zVlFwaXJqd3BVLzVz?=
 =?utf-8?B?QjBjYmdRdlYxUEE0bXVTTFBQUGYxU3VGazg1MEd6ZStDN1lUcE8rSnRrM1pv?=
 =?utf-8?B?VjVYcHpvcmRNaDVPNG9KK29nVnFsbmk3YXpSZlBWdGRXOHhRM3lQMFZWQk0w?=
 =?utf-8?B?ZWt3UDZiUnhISmFwM0RVSGlTU1VaVDNaRnkzNE9Jd0prSldKK3RjT2YrejJF?=
 =?utf-8?B?YzJ5QnRPbUJDVEl5K2xiWVNzQWhuSGh6anhwSkVGd1FsajdhMElsdHVFVWxu?=
 =?utf-8?B?MWNmRDhzYzJKYjJ5UXFSdHRnL1JRWUNXaHNLVUtPdzBFL0xnMlBLc21mbEla?=
 =?utf-8?B?blM4RGpvbzJZREhXYnp6alZMc3I3VFhEZnM1SzFOV3VEK2tmZFBjZzA5Q2dT?=
 =?utf-8?B?cGlIeDVBWm1nWnZQcWluc3pCWm82NWRXOWo0MVNMdVUrTS9kKzF4TitSVEFp?=
 =?utf-8?B?dzZIbTZXeGZDajZPaUtmTXFVN1BNaGVtUTA3RGZURTczVFFRbEdOWlpVZ0ts?=
 =?utf-8?B?Qm1TQXo2TlpNMHJVRm9GSnorVUFvS2k5NkhOYmsxc0JLUnFYdm5UL2FsMzhj?=
 =?utf-8?B?TjloWmM1ajlWODN2aUZuZmloQis4NitnT2xQRjd2c3pLS090dUxNOWlacWEy?=
 =?utf-8?B?d2E3MHAzSmlLZ0tWZzJtYlZyVG1qNk0wL0tnQWxJWS81OGJxWU1MSDQ1VWI3?=
 =?utf-8?B?YjloZlhkVHlJY3NvVkxPWDAvQU9UQlRFaURMUjRmUDFxbWRXZXk3cWZIVDFr?=
 =?utf-8?B?WDJuUkFFVUxvZUFKZTlXZ2NtUS9kRTM0U0UzbHo2d1h6ak1qUEMrSi9sNVJV?=
 =?utf-8?B?M3NSQ0dMZnQ3aGZtTWE2V0VXSHpWSXRiYkt5MDRiUGtpZmFSN2RqQS9Ibmg5?=
 =?utf-8?B?M0UzR2ptM0diWmwvMVY1QXZXZ3RSM2puNXpieXB5S3dMc2xRendsU0w0bU1a?=
 =?utf-8?B?T0ZkQ0UvSnBnU0tDMGhuL21aRkNYYXJkY2FxVXlZOVNrdlI5MXl4QmtyZjRK?=
 =?utf-8?B?TGtPTEpNR05PdVNVT0I3Zm9pcUdsWGJpajMyb09PdTVpY29qVlJsUjJwdUtq?=
 =?utf-8?B?WHRGd3BUMTJjVlZOMURFYjhTa0FweWQ0WmcvOEVRUmdENkdPUE10aldPTDJR?=
 =?utf-8?B?aTBVa3hSWWVtMlZXQ1pKZE9jMGJnYS80QVRwM21tUWpkenluc2ZlMStCMXNa?=
 =?utf-8?B?bU5QRzRYcy9DVElYVHRqbnl4Qmd3ZVZOWXp0OC8rbDhCSm12R296L2NNcnI3?=
 =?utf-8?B?RjdSY1Z0UUJCMG45b3pNTWhFZTM1MVQ1dFdtdHBrZFNhZnN1Q3JmbGNYQUJz?=
 =?utf-8?B?dFp0MXpKZlRmakxPN1FFZE1wc3hIMXpDRldXK3VRUUwvNHhIUHIzMWx0S25S?=
 =?utf-8?B?Y2VRMFNnRkpIcW02WU9CTmdIcktjOS9DQWhibEVGZU85VEdXNlR3K1Q5Z0hk?=
 =?utf-8?B?SlRueFh5WVY5ZWJpU3BXV3pQd1ZZWXdhc0FMUUJLUzMrZVVZeHB3czNtUE5O?=
 =?utf-8?B?UmtqUldwYUxJTnV4ZStJNVZuemd1NGhDdXozMnR0cUp0R2lsMlVwdFRRU0V1?=
 =?utf-8?B?bUpIdFBHOU9MTHlnVzFTK1hCNmp3S2llMXF6MG9MekZ4bWhpb3NRWmxFYVlq?=
 =?utf-8?B?Mi9FK2x5Snd5S1Rlb2w4MFBiSUhjOE50THgyZTJURzNGdndVZWxtTUlTZEpI?=
 =?utf-8?B?MG9haDBpdzFkK2FDUnVvN3JJbkNxODZzY0ZDS2hLSER0YndrRUJvVVdrK3lJ?=
 =?utf-8?B?cWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4941015f-dae8-4992-f12c-08dbd8ff15a4
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Oct 2023 04:17:09.8359 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /sZbF6gMXDTQO4t+HRT8vcJUovIAtZcsKFDQGAV8QUJdohgAo5byLKqlQWhZ7Zm0Rh3BjR6Q7+HnNtv07DYq08ZXtBctHLo82mm+XU48Y9I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6671
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 29/29] drm/i915: Query compressed bpp
 properly using correct DPCD and DP Spec info
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

LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

On 10/24/2023 6:39 AM, Imre Deak wrote:
> From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>
> Currently we seem to be using wrong DPCD register for reading
> compressed bpps, reading min/max input bpc instead of compressed bpp.
> Fix that, so that we now apply min/max compressed bpp limitations we
> get from DP Spec Table 2-157 DP v2.0 and/or correspondent DPCD
> register DP_DSC_MAX_BITS_PER_PIXEL_LOW/HIGH.
>
> This might also allow us to get rid of an ugly compressed bpp
> recalculation, which we had to add to make some MST hubs usable.
>
> v2: - Fix operator precedence
> v3: - Added debug info about compressed bpps
> v4: - Don't try to intersect Sink input bpp and compressed bpps.
> v5: - Decrease step while looking for suitable compressed bpp to
>        accommodate.
> v6: - Use helper for getting min and max compressed_bpp (Ankit)
> v7: - Fix checkpatch warning (Ankit)
>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp.c     | 20 +++++---
>   drivers/gpu/drm/i915/display/intel_dp.h     |  4 ++
>   drivers/gpu/drm/i915/display/intel_dp_mst.c | 54 ++++++++++-----------
>   3 files changed, 41 insertions(+), 37 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 969f19484c53c..c926478621753 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1811,7 +1811,7 @@ u16 intel_dp_dsc_max_sink_compressed_bppx16(const struct intel_connector *connec
>   	return 0;
>   }
>   
> -static int dsc_sink_min_compressed_bpp(struct intel_crtc_state *pipe_config)
> +int intel_dp_dsc_sink_min_compressed_bpp(struct intel_crtc_state *pipe_config)
>   {
>   	/* From Mandatory bit rate range Support Table 2-157 (DP v2.0) */
>   	switch (pipe_config->output_format) {
> @@ -1828,9 +1828,9 @@ static int dsc_sink_min_compressed_bpp(struct intel_crtc_state *pipe_config)
>   	return 0;
>   }
>   
> -static int dsc_sink_max_compressed_bpp(const struct intel_connector *connector,
> -				       struct intel_crtc_state *pipe_config,
> -				       int bpc)
> +int intel_dp_dsc_sink_max_compressed_bpp(const struct intel_connector *connector,
> +					 struct intel_crtc_state *pipe_config,
> +					 int bpc)
>   {
>   	return intel_dp_dsc_max_sink_compressed_bppx16(connector,
>   						       pipe_config, bpc) >> 4;
> @@ -1944,12 +1944,14 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
>   	int dsc_joiner_max_bpp;
>   
>   	dsc_src_min_bpp = dsc_src_min_compressed_bpp();
> -	dsc_sink_min_bpp = dsc_sink_min_compressed_bpp(pipe_config);
> +	dsc_sink_min_bpp = intel_dp_dsc_sink_min_compressed_bpp(pipe_config);
>   	dsc_min_bpp = max(dsc_src_min_bpp, dsc_sink_min_bpp);
>   	dsc_min_bpp = max(dsc_min_bpp, to_bpp_int_roundup(limits->link.min_bpp_x16));
>   
>   	dsc_src_max_bpp = dsc_src_max_compressed_bpp(intel_dp);
> -	dsc_sink_max_bpp = dsc_sink_max_compressed_bpp(connector, pipe_config, pipe_bpp / 3);
> +	dsc_sink_max_bpp = intel_dp_dsc_sink_max_compressed_bpp(connector,
> +								pipe_config,
> +								pipe_bpp / 3);
>   	dsc_max_bpp = dsc_sink_max_bpp ? min(dsc_sink_max_bpp, dsc_src_max_bpp) : dsc_src_max_bpp;
>   
>   	dsc_joiner_max_bpp = get_max_compressed_bpp_with_joiner(i915, adjusted_mode->clock,
> @@ -2104,12 +2106,14 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
>   	pipe_config->lane_count = limits->max_lane_count;
>   
>   	dsc_src_min_bpp = dsc_src_min_compressed_bpp();
> -	dsc_sink_min_bpp = dsc_sink_min_compressed_bpp(pipe_config);
> +	dsc_sink_min_bpp = intel_dp_dsc_sink_min_compressed_bpp(pipe_config);
>   	dsc_min_bpp = max(dsc_src_min_bpp, dsc_sink_min_bpp);
>   	dsc_min_bpp = max(dsc_min_bpp, to_bpp_int_roundup(limits->link.min_bpp_x16));
>   
>   	dsc_src_max_bpp = dsc_src_max_compressed_bpp(intel_dp);
> -	dsc_sink_max_bpp = dsc_sink_max_compressed_bpp(connector, pipe_config, pipe_bpp / 3);
> +	dsc_sink_max_bpp = intel_dp_dsc_sink_max_compressed_bpp(connector,
> +								pipe_config,
> +								pipe_bpp / 3);
>   	dsc_max_bpp = dsc_sink_max_bpp ? min(dsc_sink_max_bpp, dsc_src_max_bpp) : dsc_src_max_bpp;
>   	dsc_max_bpp = min(dsc_max_bpp, to_bpp_int(limits->link.max_bpp_x16));
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index 75ffab92bba41..af535b3f03ae9 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -126,6 +126,10 @@ u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
>   					enum intel_output_format output_format,
>   					u32 pipe_bpp,
>   					u32 timeslots);
> +int intel_dp_dsc_sink_min_compressed_bpp(struct intel_crtc_state *pipe_config);
> +int intel_dp_dsc_sink_max_compressed_bpp(const struct intel_connector *connector,
> +					 struct intel_crtc_state *pipe_config,
> +					 int bpc);
>   u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
>   				int mode_clock, int mode_hdisplay,
>   				bool bigjoiner);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index d6c52906ac6c3..457ace825d931 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -157,6 +157,9 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
>   						      crtc_state->port_clock,
>   						      crtc_state->lane_count);
>   
> +	drm_dbg_kms(&i915->drm, "Looking for slots in range min bpp %d max bpp %d\n",
> +		    min_bpp, max_bpp);
> +
>   	for (bpp = max_bpp; bpp >= min_bpp; bpp -= step) {
>   		struct intel_link_m_n remote_m_n;
>   		int link_bpp;
> @@ -246,8 +249,7 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
>   	u8 dsc_bpc[3] = {};
>   	int min_bpp, max_bpp, sink_min_bpp, sink_max_bpp;
>   	u8 dsc_max_bpc;
> -	bool need_timeslot_recalc = false;
> -	u32 last_compressed_bpp;
> +	int min_compressed_bpp, max_compressed_bpp;
>   
>   	/* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */
>   	if (DISPLAY_VER(i915) >= 12)
> @@ -283,38 +285,32 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
>   	if (max_bpp > sink_max_bpp)
>   		max_bpp = sink_max_bpp;
>   
> -	min_bpp = max(min_bpp, to_bpp_int_roundup(limits->link.min_bpp_x16));
> -	max_bpp = min(max_bpp, to_bpp_int(limits->link.max_bpp_x16));
> +	max_compressed_bpp = intel_dp_dsc_sink_max_compressed_bpp(connector,
> +								  crtc_state,
> +								  max_bpp / 3);
> +	max_compressed_bpp = min(max_compressed_bpp,
> +				 to_bpp_int(limits->link.max_bpp_x16));
>   
> -	slots = intel_dp_mst_find_vcpi_slots_for_bpp(encoder, crtc_state, max_bpp,
> -						     min_bpp, limits,
> -						     conn_state, 2 * 3, true);
> +	min_compressed_bpp = intel_dp_dsc_sink_min_compressed_bpp(crtc_state);
> +	min_compressed_bpp = max(min_compressed_bpp,
> +				 to_bpp_int_roundup(limits->link.min_bpp_x16));
> +
> +	drm_dbg_kms(&i915->drm, "DSC Sink supported compressed min bpp %d compressed max bpp %d\n",
> +		    min_compressed_bpp, max_compressed_bpp);
> +
> +	/* Align compressed bpps according to our own constraints */
> +	max_compressed_bpp = intel_dp_dsc_nearest_valid_bpp(i915, max_compressed_bpp,
> +							    crtc_state->pipe_bpp);
> +	min_compressed_bpp = intel_dp_dsc_nearest_valid_bpp(i915, min_compressed_bpp,
> +							    crtc_state->pipe_bpp);
> +
> +	slots = intel_dp_mst_find_vcpi_slots_for_bpp(encoder, crtc_state, max_compressed_bpp,
> +						     min_compressed_bpp, limits,
> +						     conn_state, 1, true);
>   
>   	if (slots < 0)
>   		return slots;
>   
> -	last_compressed_bpp = crtc_state->dsc.compressed_bpp;
> -
> -	crtc_state->dsc.compressed_bpp = intel_dp_dsc_nearest_valid_bpp(i915,
> -									last_compressed_bpp,
> -									crtc_state->pipe_bpp);
> -
> -	if (crtc_state->dsc.compressed_bpp != last_compressed_bpp)
> -		need_timeslot_recalc = true;
> -
> -	/*
> -	 * Apparently some MST hubs dislike if vcpi slots are not matching precisely
> -	 * the actual compressed bpp we use.
> -	 */
> -	if (need_timeslot_recalc) {
> -		slots = intel_dp_mst_find_vcpi_slots_for_bpp(encoder, crtc_state,
> -							     crtc_state->dsc.compressed_bpp,
> -							     crtc_state->dsc.compressed_bpp,
> -							     limits, conn_state, 2 * 3, true);
> -		if (slots < 0)
> -			return slots;
> -	}
> -
>   	return 0;
>   }
>   static int intel_dp_mst_update_slots(struct intel_encoder *encoder,
