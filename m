Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5D0D7B278E
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Sep 2023 23:32:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28B4E10E6A8;
	Thu, 28 Sep 2023 21:32:10 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04F9A10E6A8;
 Thu, 28 Sep 2023 21:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695936729; x=1727472729;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=oTxx/vcdqgWQP/xz2Z6ntN14W76qtxcBSFh/hMSr04Y=;
 b=hz4LxQXgn7USonQphbro4moEObyo7MMXeZrBF/3xWicIcRn1a+hEeBaG
 +EWAAk2Zs+8l0Ej9RZL+x8++1tbCWKcQcHlyR6TyodKAwAy2PqdFTRhPT
 FIc7TxpFMZYRPmrtEHbKIsSX7bhIP3VcwpfXkvR9hdLkY7AYbWBgYOxuR
 J7Hcq+/6dYSgoGx7pPlY3yusuPD29sPUaSkmD91ylFNfQJ5QbQD/HCvsh
 uxJQ8jJs5LKh61MFPGVAj1c4KWT5wkEEXThwhQyrLiw+nkqrWguu8F0I3
 zrl1y7hWjNE0hVxfog1uit1PN/oZIbSGnzgKNO2ZMZNbGiCP+167NQ7ok Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="446341845"
X-IronPort-AV: E=Sophos;i="6.03,185,1694761200"; d="scan'208";a="446341845"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 14:32:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="749748110"
X-IronPort-AV: E=Sophos;i="6.03,185,1694761200"; d="scan'208";a="749748110"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Sep 2023 14:32:07 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 28 Sep 2023 14:32:07 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 28 Sep 2023 14:32:07 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 28 Sep 2023 14:32:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dfC+pfqWTiLLr97bdPTL4GWEsuMBceDW3zjHzXfjn2Xfv/nH6m9jRMgaFWFKXtKNdyc7+KoXQeZI/+TR0SseeucsQYFQPvYyeWAS2MMi5vYlsgYSfrrSSpg5pB9N7+cNmzbtqITE5leVs8ZVaSmvt7XtDsAmGK9vfUZu/FLRChGBoQck8xqdn+Pgxb0axS9Pg057xaAJxcJHlfBI8UjhqaC1ngP9uin/mDxl+d6NO8SkbNEqIgcsYAxXDT8pabN3jHTjASeU/H8Y6qN10N65qi5xKwXx6uqPnshCodMMKDnHTK4VDP9ZOoijX2Z0EsrkNVUmS2e1PupUrLUXFcFwYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qkgZaP+rn9l2uqIqfvZGFwn/6p7klHXDPTPhUYwNN/Q=;
 b=bd/2/FCOh+kpwLSJf5Z9jRSXrp/wMRKxy+j/umoiqHIpZMwPz81XNbhWMUq6amuqHNvquBXyCDuQG1d2YX2ff9EmB3rU29VUJ1DDUWz9V4RiXJhfrTzTYgR9ltbjIysihzBmJOt9Btzg/AVvuRx8KioOY4uSW7VKTCj1/Oa1XvsU2+b+TvIcW2gJWjJJfFJwsQIdb+kf3yXBTHCYocvATZmXHjPZD9icUi60SOBe3NNh1Ssmu8tiI4aSt2qHkw0jsvPLt6ZEjDsF2iqlI6A4syquCxPYzyApwBN4OgzvUgikcpQ/igT/dQX3Omtn19zzwdLP6mL4h1xXNa56QwsxyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 CH0PR11MB5489.namprd11.prod.outlook.com (2603:10b6:610:d4::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6838.25; Thu, 28 Sep 2023 21:32:05 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::a51e:7713:dd10:97da]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::a51e:7713:dd10:97da%3]) with mapi id 15.20.6813.027; Thu, 28 Sep 2023
 21:32:04 +0000
Date: Thu, 28 Sep 2023 14:31:54 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <ZRXwyu8fXevwFvSz@unerlige-ril>
References: <20230922134437.234888-1-tvrtko.ursulin@linux.intel.com>
 <20230922134437.234888-4-tvrtko.ursulin@linux.intel.com>
 <ZRSM9hSf71QJn8Pw@unerlige-ril>
 <6a9b5529-6b41-a29b-3608-81be00934fbf@linux.intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6a9b5529-6b41-a29b-3608-81be00934fbf@linux.intel.com>
X-ClientProxiedBy: BYAPR05CA0044.namprd05.prod.outlook.com
 (2603:10b6:a03:74::21) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|CH0PR11MB5489:EE_
X-MS-Office365-Filtering-Correlation-Id: e470d384-1009-4073-d789-08dbc06a5ba5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hhpdNMUVLAWu6sRjS0c+Bmfxjp3WXPJDZJ57J6OLZM/XoF/dDUXrjVXDUQlvEE1M48wn+bUxCX1LFopeCxKsNo8Pvrsx5sG+OhkUSvPp6vZu+kIZA4rMUlYBlXizcoWbt9SpHUu06wkXj5ZDam9ER962t4WXef5cHoHxhYVHBUsqYq9kl/xNaaRNHeg1Uz0DoXMcrlbZYAEcQ3UsW3w1jGAFe/Xp4bQDbpJXQuDKEIwb8BVRxcm9T8i4LNWRAtWMqZ2I33+A4dpbcwtyfAIH5ZVeAuSGxESkP20f589QCMFIl8Rhanhzr2oX2uvp5bjoIRTAgouaMJeLVcKMCk06d4izQXdyaTO5bGkSINasIlVyZtf3WCs68EnhPbfhUO4oT7f1hODGz2FzM6nvWk6QEevr8aJO7a8ZlfNMe2Ag6wAGtohuCDWXlsnoKb9qbTZ05O42I1TRcgTwu/2lr2mc7Y6ALDniEOgWQrXxyXvIQFf6mw6G+jnetVrYKEAOGJbaDv6P4pnhgsQ9OdBQMwZbp8s+mJQXjgwvSbeFrjO+v6w=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(366004)(346002)(39860400002)(376002)(396003)(136003)(230922051799003)(1800799009)(451199024)(186009)(64100799003)(2906002)(9686003)(316002)(4326008)(41300700001)(8936002)(15650500001)(66556008)(8676002)(5660300002)(86362001)(66476007)(478600001)(6506007)(6512007)(6666004)(38100700002)(26005)(33716001)(82960400001)(83380400001)(6486002)(6916009)(66946007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U0dsdWs3VDFYdVRUNXIvUkQrTjIyc3dvazk2NFJkeEtINzNwWEcyWjA5RkdN?=
 =?utf-8?B?QkZ3NWgvMmxjNkJJcEVPc3VBUkc1Si9IVE9YR0xYVjZ1dWVFdWRENFpqR2lL?=
 =?utf-8?B?c20rWmFtWWxLUTJHMk10K0FQUG9vN2NpRXJYK1BWUS9wRE1vckp1VW1xdE44?=
 =?utf-8?B?b3R3Z3FBWVkyVmZ0WVNzaHM2QmZjbVNBTE5oRHZHdVoySEFUVzhJUnNUZU9L?=
 =?utf-8?B?YzlnNXlvWUVlSWdOQmZCeGV1L0ZxUlNvZUs5NzV0d2o3UkIwSHE4ekZ3MWdK?=
 =?utf-8?B?YXlPdDY2eHVucy9lVytsVlNqM1dwU04wL0hOdUVNU0E2UEFpck1LWHZpbnRo?=
 =?utf-8?B?OXBkSGlHYjRNVmREZVozUDQ2VXJJT09jSWZYRzN2VVZLWlRLdWVwRHgyTzJ0?=
 =?utf-8?B?azlWdkVtYUJRNFZUSHNMTDNKKy84NFRBUXRJVXpDdjRxYUpTZHhVWlFhNEZ6?=
 =?utf-8?B?WDRCOFlPQnpMWi9xTDBOVHhzZlF4NlkraUxBN0pVdXFMOXduMnFwUjh0QTJL?=
 =?utf-8?B?cmQrMWl0NFdEU1dqOEJEYWF0Zm1vNU5zZllreHYzaFVCWVVmL3gzRUo3QStN?=
 =?utf-8?B?eTJ2TUNPNTk2ME1wb05rM01LZHVrR1FjckdVaTJuMUswQUlGeHpmcTliTlQv?=
 =?utf-8?B?cEhqdnI3ckhhR1hCdDg0UTVkWkpudDhKeUV0azBTZGM5NVNReURkd3pOanUv?=
 =?utf-8?B?dldIU010V0JxZUpIMDVUbVRsK2Q0NEZweVBVcGF0eWcxZlVoNWRQbU0xbTZF?=
 =?utf-8?B?L3dPa1RMcUIrUXl4N2RFa0hJSmdIR2doSDB6R2NXRDd1ajNoUFgxKzYvK0lp?=
 =?utf-8?B?dFlPai9ZaHVWdXhDYVd0dWN0NUtueG5YWmRLZjNsa3RwMDhQcTc4ZThvZHNH?=
 =?utf-8?B?YXE1N1FwZ1lhcFJRRTFCZHBTMWR4SnJTNHNqOWN1NDEwcnRJQjgrTXQwMGho?=
 =?utf-8?B?bXZhSkwvcjRtc0tMSmsxQXdNUGtVbXdvQ1VPWGtxU2xZME4wRTZKVlNNMWY5?=
 =?utf-8?B?MFM1ZGNLdENLZXlLWDR5OVJyT1I2OUtKeWlMOUp6V0trRE1yZDZ1MDI5WFRo?=
 =?utf-8?B?RjJ5cGIwbEFDV3hGbElpc011Y0htT2FlN2kxREl0QXE5RlhwYnFveERkTVZQ?=
 =?utf-8?B?ajJhYnlYVmZnZ0sxUXhYSldaYVUvU3VJMThwQnBLZlhyQWM1bllrOVNUcWhB?=
 =?utf-8?B?WGlNc2N6K21LTGk0b2dZbUErMk55Yk1VYnZOdFgyTnRPRm5IMHpxcW5IT0F3?=
 =?utf-8?B?MEZndEN0Wm80TFVuTDNLVlpyMVdoN3hqMG02bENDUVlYbVN1WFlITENjeXZX?=
 =?utf-8?B?bWZLdG5YSm5IMUR3TWhpZEl0MnpTYmRpU1R6K3VUMW5nWlRHWGFkeGE1NHRm?=
 =?utf-8?B?TGFNZlNZUk8zeTFtdUdRZEJWNkFmWTZ0cGE3N09LdGgvbmhCalNpK0dYZG5v?=
 =?utf-8?B?dXI2TTE2N2IwYmE4UUdwYUdUQXRYdEFkV3JHeFFjSjdGZ2xmMzNaYkI0emRw?=
 =?utf-8?B?Nko3dmVCaFJxWFlBYjRSSmJmYm9ZU1p5dUpyT3pZbUpkYzNpRngxMVcwQzlP?=
 =?utf-8?B?UVR0Q2ZGaXdqZ25PSjRvMFpPcWlGd1hyalVGaVVsSnVXeVNhVXA0U1Zkdm9C?=
 =?utf-8?B?cm13ejRrRUdNdHdKZXowWkN5S3JhMWxwR1lLZHJlUGZXKy9RZStHQlRCZnh6?=
 =?utf-8?B?RlpqSHpPYXhLb2RvRHZIeGh3V21pa2UwV3ZTSWFMVFVhamtlZW4rQVByRjFl?=
 =?utf-8?B?ajV1bFNKVENnMmQ1aG9jdzB4azQ4MUsxM0RRdUJjUDZwclFiV0l0VUtjK21Q?=
 =?utf-8?B?a1hTaTRZMTEreVd3NUp5K0kxSmpXM2piSkoxdUw0WEpXRjZGMWhvblZBZ3ZZ?=
 =?utf-8?B?blRleGUzeFAzTWswRUhIWGFsNmprUkFoa1hzK3RUUUpOaFdSZldRWUtsSlFN?=
 =?utf-8?B?b3l6UXgzRWNPVGJqV1gxUitySjhUU0RYV1FlNlhVWkZxU1oxVzNJNHVjNnJu?=
 =?utf-8?B?MThmalI1TkdQMFFGMDRndDdjU3BCZXhnMmRVNTI2S21VV1F2bXhHZklIQ3lZ?=
 =?utf-8?B?NzFoU21Pd2pBcDVwU0cvaEZQLy9DZWFGWUxhS0I2MlcvNkt1TDJJSFFGOXFx?=
 =?utf-8?B?SDl6dVpuUnZKM1pyODg1ZElHM09lTWF1dzN3RnREdmEyNm5ROHZlM3g2cDM0?=
 =?utf-8?Q?yN+eLcMKF07G7lmA/5RulvI=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e470d384-1009-4073-d789-08dbc06a5ba5
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Sep 2023 21:32:04.1732 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XTU0EdVWRzf1tLxiEeIfwkO1uvlbiGUQLdOdil+2DNHGbkRDWitqw8Ia3GQpfRvvJNPAy1KQh+3kkcIQwbHVbmVocsU708jRdE4771DKd/I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5489
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH i-g-t 03/12] tools/intel_gpu_top: Restore
 user friendly error message
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
Cc: igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 28, 2023 at 09:16:23AM +0100, Tvrtko Ursulin wrote:
>
>On 27/09/2023 21:13, Umesh Nerlige Ramappa wrote:
>>On Fri, Sep 22, 2023 at 02:44:28PM +0100, Tvrtko Ursulin wrote:
>>>From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>
>>>We have a nice error message displayed when an user with insufficient
>>>permissions tries to run the tool, but that got lost while Meteorlake
>>>support was added. Bring it back in.
>>>
>>>Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>>>---
>>>tools/intel_gpu_top.c | 10 +++++++---
>>>1 file changed, 7 insertions(+), 3 deletions(-)
>>>
>>>diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
>>>index 87e9681e53b4..e01355f90458 100644
>>>--- a/tools/intel_gpu_top.c
>>>+++ b/tools/intel_gpu_top.c
>>>@@ -554,9 +554,11 @@ static int get_num_gts(uint64_t type)
>>>
>>>        close(fd);
>>>    }
>>>-    assert(!errno || errno == ENOENT);
>>>-    assert(cnt > 0);
>>>-    errno = 0;
>>>+
>>>+    if (!cnt)
>>>+        cnt = errno;
>>>+    else
>>>+        errno = 0;
>>
>>ENOENT is the only way this logic is checking for num_gts.
>>
>>In this case error is propagated only if cnt == 0. What if cnt=1 and 
>>we get an error (other than ENOENT)? Should we ignore that?
>
>If cnt >= 1 then at least one tile was found so the errno happened 
>while probing for further tiles. So on single tile parts it can be 
>ignored.

I am actually only referring to single tile parts. The for loop iterates 
over MAX_GTs (4), so I am expecting an ENOENT from a single tile part 
when cnt >= 1. Anything else is an error/failure that we should flag.

> On multi-tile parts it cannot really happen, or even if it happens 
>situation would simply be "why is only one tile showing". If we want to 
>cover this impossible/unlikely case then maybe like this:
>
>	if (!cnt || (errno && errno != ENOENT))
>		cnt = -errno;

If you agree to the above logic, then this condition should do the 
trick.

Regards,
Umesh
>
>>I had something like this in mind for the regression (and sorry this 
>>fell through the cracks)
>>
>>https://patchwork.freedesktop.org/patch/541406/?series=118973&rev=1
>
>Oh back in June!
>
>I think yours work too, in which case it's a matter of a style choice 
>with which one to go. I don't have a strong preference - above would 
>be a bit more compact, while I think it still succinctly expresses the 
>failure condition ("nothing found or unexpected error while probing 
>for remote tiles").
>
>Regards,
>
>Tvrtko
>
>>
>>Regards,
>>Umesh
>>
>>>
>>>    return cnt;
>>>}
>>>@@ -590,6 +592,8 @@ static int pmu_init(struct engines *engines)
>>>    engines->fd = -1;
>>>    engines->num_counters = 0;
>>>    engines->num_gts = get_num_gts(type);
>>>+    if (engines->num_gts <= 0)
>>>+        return -1;
>>>
>>>    engines->irq.config = I915_PMU_INTERRUPTS;
>>>    fd = _open_pmu(type, engines->num_counters, &engines->irq, 
>>>engines->fd);
>>>-- 
>>>2.39.2
>>>
