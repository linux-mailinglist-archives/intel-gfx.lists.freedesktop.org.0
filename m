Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EFD6C69B67A
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Feb 2023 00:37:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D696C10E46F;
	Fri, 17 Feb 2023 23:37:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F16210E46F
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Feb 2023 23:37:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676677055; x=1708213055;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=H4RsNY2SNpNEtpI5fJJFcvppOC8oe19wf0cYrnQTBJY=;
 b=Y05/LqwygKr1DVZbJfP0IkVsrb7kpnASJ+HpbLwflLKAyTd2wZFe8pSc
 3sZrMPSiQLuSDYG6/oBYIZhXm6/Ag9U0o7g10ZLXIpmnCw+7cNK6yTfTS
 3HtOnNlYZqJQcXBrOZe3iSFsCJgJ7+PVud8Nxx8jKfKYBd4oQAdRH5N2W
 fpEhbMujF4W27bT5MNf5+gFQ6WFkpotP8xwLjrzOxPxMV9oKLerYN/Ywq
 UvS5WOMDuxMuiaffvv2kv1bWRhATYbYBlZO4VAGP1jGKJsr8eKNuDqKkp
 iWiI5SmwtLIkGWlxK5mm0cKWhBHoBb3ioQ/WGbVe640AoVwwhlviyomX6 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10624"; a="312485043"
X-IronPort-AV: E=Sophos;i="5.97,306,1669104000"; d="scan'208";a="312485043"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2023 15:37:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10624"; a="703102874"
X-IronPort-AV: E=Sophos;i="5.97,306,1669104000"; d="scan'208";a="703102874"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 17 Feb 2023 15:37:34 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 17 Feb 2023 15:37:34 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 17 Feb 2023 15:37:33 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 17 Feb 2023 15:37:33 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 17 Feb 2023 15:37:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CLQh/BDWM3dJZuzjSXl25DoPIlyUANBJ7EkcJXwdTf6r+7rN9tv8SSXIqXNrJ6SZCAf4n9a9JcOQFsmNV5/9w5M0azM1HLKPvYvaPgICu21qo85WnHLEdN6qpG2wPo5F9G27He4tvjOPoz97sHI5u9eM0/NJgxJgT9lcJopH8FOwFjYxSenFEADiRrhUCrqSTSbq6DsLxvFwYJ27cmsROtJf9DtJ+9YjyZelc0prNXLXW5q0LoAgyVV0eCGM+SFJbZd2aY79CjOhdAYoR6ztKZz13EDNNdETrW8WPfzT52/AShP1mxkU/Pl2YvKDVStXtAVZngOCNiTiPyheJPoqsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EgpGFhOmgRMBYdaAEvD0S3q+njP3kqYdxSe8zrzNIuE=;
 b=CZsrsZkDAbwxCD9MbAT5mWHDnpmAGjbBTxJrZI/t3zCWwmxHxI8oE4BwnfHWCS8JdWKKPiwEg3Nljw8XdzslBrSqHrgiRpD4olsJ4FAJPVZLATNZ8Irc/4Ly+zbL2pKqFKRsRutpxli8RxuZeyiOhDWv+WcVQa/gs7LxY8TA7e/L8AJC5Wyc1LIIvBr2M0jSwi4KOGYxZBsoyC+HrY92L2fJDjXWRbYW/4StBgMC0RYj6obHALKDNwPUPEQYurVTFXVA/1ltLoaWwK/mUxvEBBZU+mxy/muzgmY1JORtq302QlqAfbNJOWPT95ECOBBP5tWPAUaFkjYlZpIvYSVEDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 CO1PR11MB4820.namprd11.prod.outlook.com (2603:10b6:303:6f::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6111.17; Fri, 17 Feb 2023 23:37:32 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2%6]) with mapi id 15.20.6111.013; Fri, 17 Feb 2023
 23:37:32 +0000
Date: Fri, 17 Feb 2023 15:37:30 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <Y/APulis85zXl8Uv@orsosgc001.jf.intel.com>
References: <20230217005850.2511422-1-umesh.nerlige.ramappa@intel.com>
 <20230217005850.2511422-9-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230217005850.2511422-9-umesh.nerlige.ramappa@intel.com>
X-ClientProxiedBy: BY5PR03CA0005.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::15) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|CO1PR11MB4820:EE_
X-MS-Office365-Filtering-Correlation-Id: 3956b015-8005-466c-5d65-08db113ff080
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pma6showlH06fmzX6a65a+fn0ZLnnIGipks86Qo38dMlp4vGpiOB/yebRhwmhUrGziIO46NicP2ya1nsmGsoTAt6I+hxHkuUFShyE7XzuHwXgnDyIoGzKY8zvZSqA7kE5nCrhv08IkTJpOHRFQa8O6WhAe5Ae/aoC2SA/1Zkt7lYBSDjMuJ4SeI5aHDy6md/DNhkm9HwGuqpk4W/RZzZGAqn4G2uxQd0x2QVla3Oem04JeO0WWwH2ZoUL9WpGKF5ge8y1rCA1IeS26nxeyt7SvAcgt38ytk4maU1FhTh3yjdauwsF3auK7NYkb+esE2JANyNCqSsCshRdV6oSYgXXrE+vR8VI7VY2B/X2qzaVvV5cxIz1t5O3oK2BpZuC9P7beoOObMTYACaSpHw4cv0wXmBoKzdAlBG4zdyWeHYNX6jnin3XkLuXl52UcR6sLm0JglMvCnZfrdgK5cHm2T3G8dtjq9aa6OuNoY4D/OtSfyQp6HIR9nLGQ/RHIBq3K4NFwC+PmmmjvQU6QcdsjYSF7zbDdRb0fLBgEqC8Y0UTj0IwhVILfaaUjnoLQRR8NKqjTXI2kgJ9lZDmKuQz5sFbyY6ETZN+wAq+RgVFM50IIKPjWqqLPGzd5/UgOYqIlEd
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(346002)(136003)(366004)(39860400002)(376002)(451199018)(2906002)(86362001)(82960400001)(38100700002)(6486002)(966005)(6506007)(6512007)(26005)(186003)(478600001)(8676002)(6916009)(66946007)(83380400001)(66476007)(66556008)(316002)(41300700001)(8936002)(5660300002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SnJXSzRxbkxUbWN1TkwvVzN5eG9HYXFIOFlZWW9IQlRGMnRLbmUvOEF4OE5o?=
 =?utf-8?B?eWJMVklkRDJMSFQ1QUxoYVZhMDBWLyt6K1FoSnlVQ0hBcmY4c0g5cmd2dXdR?=
 =?utf-8?B?cWl3ZktvSC9abWNmZkNaVWwyci85VHZLN1JUZXl2QUV1Ui9Zc3F6bWx1NHlF?=
 =?utf-8?B?NVo4S0ovR09DZkF3MFBIVkhra0E3VEpGM0hHem1GZVVYaThZS1lhQm9yZkQr?=
 =?utf-8?B?YUpjMlFNL2ROVjFLMHpSY3Aza1kzZ0JNWFFOTkhyMml4NDQ4OFJTRkkvaXVH?=
 =?utf-8?B?M3BvbytaR2krbTgvbzVyczdpc2RuOE9zSHRaeHRqQkMxNm01TUlxWWhIbVdD?=
 =?utf-8?B?RU1tK2ZGSFpFTmNDY0RMeEUzR0Zub2ViTXRRUzlJc3pNT2lSbmVJTEd2V2Mr?=
 =?utf-8?B?VHgzbll5WTdOdExmaStta1NOR2s2ZFpTQ2swbmlNWitGemFNNHZnNlNWMkdu?=
 =?utf-8?B?YlFsWnlLY0VxbG5rejRWZW9rTGN5eGo5NFozTmI4a1dWbjVLYmg3dFlnQzE3?=
 =?utf-8?B?dWlOMHBlRFAxTWV6OC9hN0tSUXdMc2xGRG1MR09hMWtvc0JUZG1SbUp5Ymww?=
 =?utf-8?B?VHVxWjU0NlByM2d1T21OcG4xYWxaT3hvOVNOQ1h0eFRIdFhVS3k1a0VRSUFN?=
 =?utf-8?B?c2JZM09tbWRNY2xOYktITldjOXp4Sk9YeUs4RTdFZzdMR0l5RU85cGg3NGJP?=
 =?utf-8?B?dmQ0WGh5d0tnaEZSVHlQZmVOb2dub0V0T2pWVXVxNnlxY2czb0h2NloweGdq?=
 =?utf-8?B?b2VaWVNRZmhVZ0c0MW5scXZIYUdScXROQXVPWmx1dlhLS0VmRnBqTFNKamtZ?=
 =?utf-8?B?VzBSeXlISk5ONXpxMW1LbWtCTmViZTlCWHRQOFBoQXQ4NXEzRlA1cnlpMHQ3?=
 =?utf-8?B?Z2MxcXV5MldQWUpnVTEwN2g3SkJ5M2NTUmR3bCtxODNOWmVYcVZyZEhORmZI?=
 =?utf-8?B?SHRmL3BVeTdRTGFWTk9BNWxOWmV3dExkOHl0eU9DdnlSNUlFb0FXME9OTmtr?=
 =?utf-8?B?WUlCejgvUTVvcXE3QVRYU24yN2ZzUEFDOU9ERGRYT2x0NkZEVUJnbWo4YVQ1?=
 =?utf-8?B?Vk9tVTRUeGhTSlJvNmRsUnpnd3RKNUpuZnBjUHF4S0hKWlFZb3JxcTQ4QUFp?=
 =?utf-8?B?bUNWWVhQRDdmeE90MDltRkU2dk14dFBOSFl0OHVJVk1WbkFidk9GT1prbXRl?=
 =?utf-8?B?blJLN1FINjN5OEMyRWNhRmtUK2pyV1ByWjZ2SDNQaFdmcTVDM3o4TStUUWpB?=
 =?utf-8?B?a1hLYlU3YkxZR0oxTEZTbXJ3My9wd2NlVXpURnQwZm9DcjFHQ0hSTVBKd3J4?=
 =?utf-8?B?SmhobFI3aGdZTEZmN0Y2K1J0SHpEdHQ2SXpJR2FxU0k1NVRmTWkybDNqTkNp?=
 =?utf-8?B?bWhiaWczbnVIZldJV2ZPdU1Henp3WFdwOXBwQW5MZ0dIWXlBMnA2ZTVDMmZL?=
 =?utf-8?B?OUs5S3JMRmZYNlNldXJpN0RTam8zVDcyOCtHbFZsYmpEU3VRSU1qUWlsS25o?=
 =?utf-8?B?ZG03TjlISitFeGtLMkxuOHNGM0VrZ2JRclF0UzRESWNMeTdSU0VIVHIwckw5?=
 =?utf-8?B?a3ROWUtzZXM4YjB3ZmRmQ0RnMFFrY2tsc2UxVlhpeHhZcDA3aWdZQkcrTDNV?=
 =?utf-8?B?amhwY0QwUlBSM29yY1dwdDVxckZubEtIUUZPM1k2QVlxbFBoNi9FS3ZCcFEy?=
 =?utf-8?B?aks2RGxUZW43REozejYyS2VSdldIQWw1cEpBQkl5TmxMa1JxWktJcGRHSHp1?=
 =?utf-8?B?NzZOVXh6M0FqVUhzWlNMQWVnTlVwU1dXWXBWdVVFZUlDVEcvN0lVa25DTjVi?=
 =?utf-8?B?NnMvelhUMVpCYjQyZHdUY3JtWHI5VTFmejAyV2FKblBzNHQzK0ZxbHlKMHRH?=
 =?utf-8?B?ZlNIb0Y4R243bDNFVSthdlk3d3FlSFBmeUVnRWxGc2pZelRZZGFKTlVhRzlB?=
 =?utf-8?B?S1FoeTVBWUFnYlBPYkZsUVZveDN3d0dPeXJzTWFWbnp0Qm9IbjNkNGttWm9n?=
 =?utf-8?B?Y0Nsei9IQ0FVbHducDhLeHloVWh0cFdrTWpKQmh4SlJRQXEyeHFCL3lORis4?=
 =?utf-8?B?TCs4L3ZlSlI2LzBrbDBBQ2Q3TUJtQmV6UDg4cVcwZWJqRDZvSEJUbnByYnp4?=
 =?utf-8?B?ZlZGSGhlR0h1dW15RE5oeW9FZ2w0UHNTUmFhUis3cTZxOTIvOHJNZjBpTTQ4?=
 =?utf-8?Q?5Y8udxy4RND6M87Ihtb5GHA=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3956b015-8005-466c-5d65-08db113ff080
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2023 23:37:32.0331 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1RW8noy+lTgYEZkTRDth7uMG3zVbgdICaczUuKbPCuiL09qTDB6XppydsTMIMPECcu3VpVRudHq50UykjFrZU61sNACPJBYSJdSxbnfovUU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4820
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 8/9] drm/i915/perf: Add engine class
 instance parameters to perf
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

On Thu, Feb 16, 2023 at 04:58:49PM -0800, Umesh Nerlige Ramappa wrote:
>Current implementation of perf defaults to render and configures the
>default OAG unit. Since there are more OA units on newer hardware, allow
>user to pass engine class and instance to program specific OA units.
>
>UMD specific changes for GPUvis support:
>https://patchwork.freedesktop.org/patch/522827/?series=114023
>https://patchwork.freedesktop.org/patch/522822/?series=114023
>https://patchwork.freedesktop.org/patch/522826/?series=114023
>https://patchwork.freedesktop.org/patch/522828/?series=114023
>https://patchwork.freedesktop.org/patch/522816/?series=114023
>https://patchwork.freedesktop.org/patch/522825/?series=114023

GPUvis PR is here - https://github.com/mikesart/gpuvis/pull/81

Regards,
Umesh

>
>Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>---
> drivers/gpu/drm/i915/i915_perf.c | 49 +++++++++++++++++++-------------
> include/uapi/drm/i915_drm.h      | 20 +++++++++++++
> 2 files changed, 49 insertions(+), 20 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>index d3a1892c93be..f028df812067 100644
>--- a/drivers/gpu/drm/i915/i915_perf.c
>+++ b/drivers/gpu/drm/i915/i915_perf.c
>@@ -4035,40 +4035,29 @@ static int read_properties_unlocked(struct i915_perf *perf,
> 	struct drm_i915_gem_context_param_sseu user_sseu;
> 	u64 __user *uprop = uprops;
> 	bool config_sseu = false;
>+	u8 class, instance;
> 	u32 i;
> 	int ret;
>
> 	memset(props, 0, sizeof(struct perf_open_properties));
> 	props->poll_oa_period = DEFAULT_POLL_PERIOD_NS;
>
>-	if (!n_props) {
>-		drm_dbg(&perf->i915->drm,
>-			"No i915 perf properties given\n");
>-		return -EINVAL;
>-	}
>-
>-	/* At the moment we only support using i915-perf on the RCS. */
>-	props->engine = intel_engine_lookup_user(perf->i915,
>-						 I915_ENGINE_CLASS_RENDER,
>-						 0);
>-	if (!props->engine) {
>-		drm_dbg(&perf->i915->drm,
>-			"No RENDER-capable engines\n");
>-		return -EINVAL;
>-	}
>-
> 	/* Considering that ID = 0 is reserved and assuming that we don't
> 	 * (currently) expect any configurations to ever specify duplicate
> 	 * values for a particular property ID then the last _PROP_MAX value is
> 	 * one greater than the maximum number of properties we expect to get
> 	 * from userspace.
> 	 */
>-	if (n_props >= DRM_I915_PERF_PROP_MAX) {
>+	if (!n_props || n_props >= DRM_I915_PERF_PROP_MAX) {
> 		drm_dbg(&perf->i915->drm,
>-			"More i915 perf properties specified than exist\n");
>+			"Invalid no. of i915 perf properties given\n");
> 		return -EINVAL;
> 	}
>
>+	/* Defaults when class:instance is not passed */
>+	class = I915_ENGINE_CLASS_RENDER;
>+	instance = 0;
>+
> 	for (i = 0; i < n_props; i++) {
> 		u64 oa_period, oa_freq_hz;
> 		u64 id, value;
>@@ -4189,7 +4178,13 @@ static int read_properties_unlocked(struct i915_perf *perf,
> 			}
> 			props->poll_oa_period = value;
> 			break;
>-		case DRM_I915_PERF_PROP_MAX:
>+		case DRM_I915_PERF_PROP_OA_ENGINE_CLASS:
>+			class = (u8)value;
>+			break;
>+		case DRM_I915_PERF_PROP_OA_ENGINE_INSTANCE:
>+			instance = (u8)value;
>+			break;
>+		default:
> 			MISSING_CASE(id);
> 			return -EINVAL;
> 		}
>@@ -4197,6 +4192,17 @@ static int read_properties_unlocked(struct i915_perf *perf,
> 		uprop += 2;
> 	}
>
>+	props->engine = intel_engine_lookup_user(perf->i915, class, instance);
>+	if (!props->engine) {
>+		drm_dbg(&perf->i915->drm,
>+			"OA engine class and instance invalid %d:%d\n",
>+			class, instance);
>+		return -EINVAL;
>+	}
>+
>+	if (!engine_supports_oa(props->engine))
>+		return -EINVAL;
>+
> 	if (config_sseu) {
> 		ret = get_sseu_config(&props->sseu, props->engine, &user_sseu);
> 		if (ret) {
>@@ -5208,8 +5214,11 @@ int i915_perf_ioctl_version(void)
> 	 *
> 	 * 5: Add DRM_I915_PERF_PROP_POLL_OA_PERIOD parameter that controls the
> 	 *    interval for the hrtimer used to check for OA data.
>+	 *
>+	 * 6: Add DRM_I915_PERF_PROP_OA_ENGINE_CLASS and
>+	 *    DRM_I915_PERF_PROP_OA_ENGINE_INSTANCE
> 	 */
>-	return 5;
>+	return 6;
> }
>
> #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
>diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
>index 8df261c5ab9b..b6922b52d85c 100644
>--- a/include/uapi/drm/i915_drm.h
>+++ b/include/uapi/drm/i915_drm.h
>@@ -2758,6 +2758,26 @@ enum drm_i915_perf_property_id {
> 	 */
> 	DRM_I915_PERF_PROP_POLL_OA_PERIOD,
>
>+	/**
>+	 * In platforms with multiple OA buffers, the engine class instance must
>+	 * be passed to open a stream to a OA unit corresponding to the engine.
>+	 * Multiple engines may be mapped to the same OA unit.
>+	 *
>+	 * In addition to the class:instance, if a gem context is also passed, then
>+	 * 1) the report headers of OA reports from other engines are squashed.
>+	 * 2) OAR is enabled for the class:instance
>+	 *
>+	 * This property is available in perf revision 6.
>+	 */
>+	DRM_I915_PERF_PROP_OA_ENGINE_CLASS,
>+
>+	/**
>+	 * This parameter specifies the engine instance.
>+	 *
>+	 * This property is available in perf revision 6.
>+	 */
>+	DRM_I915_PERF_PROP_OA_ENGINE_INSTANCE,
>+
> 	DRM_I915_PERF_PROP_MAX /* non-ABI */
> };
>
>-- 
>2.36.1
>
