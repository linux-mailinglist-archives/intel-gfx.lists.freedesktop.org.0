Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 626527C75A2
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 20:06:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E814A10E51C;
	Thu, 12 Oct 2023 18:06:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76EA410E51C
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Oct 2023 18:06:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697133979; x=1728669979;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version; bh=4tnT6306q7M9t43/+JUc/clp+gmzBpQszV7oBhQbjEc=;
 b=RiFX4dqgMr3nd5S+NgGOiJEAZSB9rxZPc3jtTpw2YsnEzunA5yLEV0/H
 31Af1Xk2hu18H9hNV0QPL0V3XqiXMkjtmHfqCXVcxdIix1XtqW8XefVrm
 cEcAbvWY/7+N2yfSdv2qpImLGkXFjyhBcZ9RBR9wa7lS+VL8Z/thQ8Xuf
 Am4FRDYFhpa4mo6HEwG1W78mmrQTE1VAgTIo6pqCnYfXJuJva32us5aHL
 +wIEIjewGsLJBzFyz4cbD8YPm6MeXmYWNyc4foRnF02p8ImYApvVrJ7vS
 7sXB3FmFc6X88q8J4/raNAGQ9PCjrh8hwPIkuauaxWUu+IvQXtC8J7rcn w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="365262196"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; 
 d="scan'208,217";a="365262196"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 11:06:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="783799569"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; 
 d="scan'208,217";a="783799569"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Oct 2023 11:06:18 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 12 Oct 2023 11:06:17 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 12 Oct 2023 11:06:17 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 12 Oct 2023 11:06:17 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 12 Oct 2023 11:06:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oV/AUOsMGtts75TBBDzw2k5azZnczXRc5LLLkuvQFqASiLgpH//g5BnTAMEMau36ehHhPM3EwsEtv6Tg0qFscC5xLgg31gj5h9YCAR2KBNKIr35LJClet9gL3F/5CxGI/DE/YG0O6vEYB46gwewH9AcCeH36eVRYQvdiZsTntvTpLf3AMuxN6Rvq7XPVGxq/YwpY47tQItvVgJfX3rmUHI0nTnCAdhvyVF++g0wVPhyK9Pvd4qqaVZJjTEGCne7wYVKJxk6Hp5ZtAXJqVeac52ne+eZtAE+tmAkcNv5V8JdMDazlbUpFU7CnALF4E5G6IT9BHXBCav1HmfND2DMHpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CYeb2dKT3fzi5c5eFjudeEbj2Ks04Gxl9y5c3Vg5sSA=;
 b=FJJkXWc/jtBoG8oMFiw2I01mDrS+VA48WqsMyS8GzKDOwIbRX95YVWvO2eihT8+sSBumiNJFod7AbirRDA7EFksewkAS/hqODI4p39inFVBuPK/qkMktc2UVYtfj3vIUOCdsJirv+3qUr/JApgrO0V07RxzaXFcskqZ8sj8L4Qg8OM24YYsX37iwRLs6IoSZZk8crukTxZEZDZJlZtzotUg+9ZfhNxXKX3hRUV/V3RbqhcYEp19Da45JonexyVBC72Dp5yQMnkCRmjuwnnlyMXJiq001r0NmUTpCKpyxlby3MumCy5/omB4QY+1JJNP1I5IBHy/qb7drNW/C4gT5xQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by PH7PR11MB8059.namprd11.prod.outlook.com (2603:10b6:510:24e::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.45; Thu, 12 Oct
 2023 18:06:15 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5%6]) with mapi id 15.20.6863.043; Thu, 12 Oct 2023
 18:06:14 +0000
Content-Type: multipart/alternative;
 boundary="------------LmjUDDtpeDjawlaRUEX6bpHt"
Message-ID: <bb37bd8b-52a5-45cb-a9f8-f8bfa9e9ff6a@intel.com>
Date: Thu, 12 Oct 2023 11:06:12 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: <intel-gfx@lists.freedesktop.org>, Patchwork
 <patchwork@emeril.freedesktop.org>, "Cavitt, Jonathan"
 <jonathan.cavitt@intel.com>
References: <20231011205259.2295032-1-jonathan.cavitt@intel.com>
 <169711834606.25006.18405649138618492497@emeril.freedesktop.org>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <169711834606.25006.18405649138618492497@emeril.freedesktop.org>
X-ClientProxiedBy: MW4PR04CA0134.namprd04.prod.outlook.com
 (2603:10b6:303:84::19) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|PH7PR11MB8059:EE_
X-MS-Office365-Filtering-Correlation-Id: 5e3e0110-d763-4302-6e73-08dbcb4decb1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Yg/T/SPTuKlh2SJllP0yScqCbySNkIxc39qoox41f03vPUCZfSTSjuo3LKiw9EnP+l8zHon88bwnTfFX1cTxucf6vrqqkGYVHkvTDbmZquoQ9u9OMGK4KfAAM5TMbmpXqMzS+G18pqLMXRPDxa8rQZphnwF4RSCHxPt6aGzMb3gmh6ViqeSKyMz9BrZFAbbjAeWW5durDVwCw0srwtczlijEmYG/FdFi6NK6QkjK4UThJ4czwYIoSj6d3stbDG/4QLZgYq3L8h9Vr5h3vsLwBMXe8XiRC3eU70rSOho+3y4d5MXGPgZdBzFGKZXy1a0h0OZVonTmrUdH6Lz4VV7rRVhokEr7JEeZMWSetxTPbxkBvGdu+tgPrwLm9Zqurf8QiPjigftZT6dG8oZAfPPygFFK2C9wUkUG17wigQTrwxq5VIkjt/VYHtAMoe4La8/Lp6wHMQmv0hoKrD3jNig03wTPILSy42HGuK0s3hJr26RhW99O9sqHLuFFwZyE7UIRD7Hxun7SFIZ88OUDubKYhp1KN+rDFwqI6YOVsIIBskK4vWm1Xrqfo9Dg0Q1EAPadkMJYp+DrTZdrn3xEineINjx3LloAb/RUOaogD2BdXvEb6LPI71NMnP5e+xe5hdaHz/+REhSFgs5aDmZpR2+Vigwume0623Xx3jz6vEVMYVA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(136003)(396003)(346002)(376002)(39860400002)(230922051799003)(186009)(1800799009)(451199024)(64100799003)(83380400001)(316002)(6636002)(38100700002)(110136005)(82960400001)(8936002)(86362001)(31696002)(36756003)(166002)(66476007)(66556008)(66946007)(31686004)(21615005)(33964004)(2616005)(53546011)(2906002)(41300700001)(40265005)(6506007)(6512007)(6486002)(966005)(5660300002)(26005)(478600001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZWJrS1dKNzZMVE1mbEpDVnNlNUo3R2g4K3B0SlQ5ellZS2MyZldtQ0ZaS2lu?=
 =?utf-8?B?MzhIanJKckhEYlZvYWR5TmxWemdGSllQdXY5bDdpQlpqVGFSc3lUcjVZSG4v?=
 =?utf-8?B?b25aVXNmeVlNWkVNSlp6dWVDQmdiaEJlTVpPRVNudTlhZk5weDcyMUhNS3k5?=
 =?utf-8?B?cnlzTEh5UmVwblNDSXNKQVJTK3ladnB2UGREMGM0cUNDdTZaWHZWaFpEdnNz?=
 =?utf-8?B?aGd3ZmhFWmVrRFFFSVd2clR5Ly9vK21LNTNaYjVhUDU1bUNiemw2REl5M2Nl?=
 =?utf-8?B?aVE5RkpacUltWXJUZmgxUzhCRm00SklGeXpuMUdXLzJ0empiTm4yL28rZEkw?=
 =?utf-8?B?azVuWGtwQmJVNFI2Y2ZPQ2VndjJMWklvVHBtSk5EamNJbk1MMFoxUnZRSWgw?=
 =?utf-8?B?NUk4dEtxZkc2T1gvS2VyUXhLWkNzSFA1SDFGOVNlTlo0ZUllUzVmT1hkNVBh?=
 =?utf-8?B?dExhM3NDVjFBM0R3RXJ6ZEJLTENQdlFZQ3JZYzlWdFFLbUxPWVhMUXdtS25m?=
 =?utf-8?B?aG14UmZleUV4UXFuZEdCYjRYNXozbU9YRGJWMC82anhoME9MblJpaE9tWWkr?=
 =?utf-8?B?M0hwSXpodDdNRzZxVzRIb0xVU2NqNERqelBGeVU3WDJvWWpDcnRqS0hrZU83?=
 =?utf-8?B?cHJXRWZLenVCeVJFMmxUM0RYdXlDbW1sT3pxclI1M2d2OTZGdU5pVVlRZ1NJ?=
 =?utf-8?B?RVZyQzVZS2RXRi9WeU1DVEprdktld0g3dExZS0dSSTJXMFg3TmZEZlN6STlF?=
 =?utf-8?B?eDdvWDZ1Nm5Wa09uMDhtY1pnanExZ1FBOGVtekRqZlFXRXJNUTVQMVdZWUY5?=
 =?utf-8?B?RzE1YVNwNVd6WUVveTJRUmZlbW1teHdLQmpyaVlEZ2V2OUFRbXlwSDJpY2R3?=
 =?utf-8?B?aEgxMUEzUW41T2lPYzJpYkpsaUVBM090SkNSTmlUY2JKQ3pwZ3pxK3FCTytk?=
 =?utf-8?B?V014a0Q0YXZMSDNjR1J3N200M1YwQldSKzZlVnlha1ZObVhZOVJWbHlBS0Nz?=
 =?utf-8?B?U3lFTHA1YkRSb0FZM3JXV2lxV2ZhZnJibFZOMXNEMkRzVHJJbTdWc1NzOGV0?=
 =?utf-8?B?N3l5ZkRaak1LMFdwMWEzbTcwc2taSk1kMGUwbVVrektyTUI1M0JOWXBJTlBi?=
 =?utf-8?B?djJrbzJ4OXU1MkhncXMvd3RIaVAzQjI1NDh4Z2hURmgyL0d5OFNxMzU4N2wy?=
 =?utf-8?B?YUtxcXU0a1UzTUllcCtuMmRiaTJHZVIvc29OK0Y5Mnp5VVZ1R29pcDI0L2ho?=
 =?utf-8?B?YU51TmhwTUh6cXlFMmlhY000NnNxWDJWL09lY3ljQk9MUjJCSzVhMjd3UUEv?=
 =?utf-8?B?dDJzc0lPdEFxOGViVmEwTUV4NFhkZkk1SUZpbmdkT3pmdEk5SjdyZGNrUlAr?=
 =?utf-8?B?V0FRSW5GeFJlVkU1RU5wb2pHcEFZbFFBQzU5OEdud2gwM09WcFhRUnF3d3Rr?=
 =?utf-8?B?Rkd6bFZmMG9aNlBCTFFCZTNQLzhsV01yWGl4M3c5d2lGTlMvMzFJQ0kyeUFa?=
 =?utf-8?B?NnRFUDl6YXdiM2VKb1d3YjNSbEtNTGhuRGg3RUhML1c0MmxPemFGRVJGRFFj?=
 =?utf-8?B?R1BPcmFjYUEwb0VsM0h1WW9nMUhuRHI4WDZnTzNzRkdjWFU2MWRVb3BOcy95?=
 =?utf-8?B?UFhKNm1lVVdOSThiUUtDcnJJQ3phR0tNcDVTNW9lZWhFL3EyeEtKVVk0a2RE?=
 =?utf-8?B?THdvQjlZdTlZY1lrb1Y2ZGVTT0VJakZpWm9CRVVFTWkvck4xTVZiZmRXaFFY?=
 =?utf-8?B?bkNqbUhqYmZqem5ieDFOWnlycTlOallVMFh1NUc2RzlaUE9kZ3cwTVdFaTNZ?=
 =?utf-8?B?aUhtMGpUZ1FvYnhPU09YTkdTSnFiYmtjQ2UwbmhEQmpBMW5DdVFNRzZDM1Y4?=
 =?utf-8?B?MGlSOWRpc3doNm50RjRXNk52Tk1oRUtQaEtWNnNDQUhTZjNGYmo2QjNxWENv?=
 =?utf-8?B?UkVyNDJXTTYrSUo4dmNJTzBBVFFqN1dtSGNsWGdOdmZtcFdNVzFlbndGbFlJ?=
 =?utf-8?B?K2FWbzloNHI3N1lHSnFtc2NLblprOGlsdHREMzJJYVJJQ1dGUHNqRFp4aFdQ?=
 =?utf-8?B?ajhMcmJmU2hablNtOWV2SUtCUE85elpwL0ZYOGlEWHlzVmdLWkczbjF3K3Zu?=
 =?utf-8?B?eWFheGkwajhHbEEzdFhxWEkrSFVjVjZyN0NtSS9SRDJycmRDL0NpZjgvanAw?=
 =?utf-8?B?N1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e3e0110-d763-4302-6e73-08dbcb4decb1
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Oct 2023 18:06:14.8460 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HyrDBMZ8FCodKM1wbbgsEI+E403yHWM9+fccZk+VUN6COrcHrKL8RbmQLOQdHRcNnlGllvroDtNqCDeAtmhCh/ZoxTnsSItJV2kL6GjWkNo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8059
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Define_and_use_GuC_and_CTB_TLB_invalidation_routines_?=
 =?utf-8?b?KHJldjIp?=
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

--------------LmjUDDtpeDjawlaRUEX6bpHt
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 10/12/2023 06:45, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	drm/i915: Define and use GuC and CTB TLB invalidation 
> routines (rev2)
> *URL:* 	https://patchwork.freedesktop.org/series/125002/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125002v2/index.html
>
>
>   CI Bug Log - changes from CI_DRM_13746 -> Patchwork_125002v2
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_125002v2 absolutely need 
> to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_125002v2, please notify your bug team 
> (lgci.bug.filing@intel.com) to allow them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125002v2/index.html
>
>
>     Participating hosts (38 -> 38)
>
> Additional (1): fi-bsw-n3050
> Missing (1): fi-snb-2520m
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_125002v2:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>  *
>
>     igt@i915_selftest@live@gt_mocs:
>
>       o bat-mtlp-8: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13746/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125002v2/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html>
>         +1 other test dmesg-warn
>  *
>
>     igt@i915_selftest@live@guc:
>
>      o
>
>         bat-mtlp-6: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13746/bat-mtlp-6/igt@i915_selftest@live@guc.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125002v2/bat-mtlp-6/igt@i915_selftest@live@guc.html>
>         +3 other tests dmesg-warn
>
>      o
>
>         bat-mtlp-8: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125002v2/bat-mtlp-8/igt@i915_selftest@live@guc.html>
>         +1 other test dmesg-warn
>
These failure all appear to be reset related. However, they are full GT 
reset not individual engine resets. So not sure they can be explained by 
the worker thread vs interrupt handler processing issue of the 
gem_exec_capture failures.

I would definitely recommend running these locally when you have the 
next version of the patch set ready.

John.

--------------LmjUDDtpeDjawlaRUEX6bpHt
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    On 10/12/2023 06:45, Patchwork wrote:<br>
    <blockquote type="cite" cite="mid:169711834606.25006.18405649138618492497@emeril.freedesktop.org">
      
      <title>Project List - Patchwork</title>
      <style id="css-table-select" type="text/css">td { padding: 2pt; }</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>drm/i915: Define and use GuC and CTB TLB invalidation
              routines (rev2)</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a href="https://patchwork.freedesktop.org/series/125002/" moz-do-not-send="true" class="moz-txt-link-freetext">https://patchwork.freedesktop.org/series/125002/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125002v2/index.html" moz-do-not-send="true" class="moz-txt-link-freetext">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125002v2/index.html</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_13746 -&gt;
        Patchwork_125002v2</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_125002v2
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_125002v2, please notify your bug team
        (<a class="moz-txt-link-abbreviated" href="mailto:lgci.bug.filing@intel.com">lgci.bug.filing@intel.com</a>) to allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <p>External URL:
        <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125002v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125002v2/index.html</a></p>
      <h2>Participating hosts (38 -&gt; 38)</h2>
      <p>Additional (1): fi-bsw-n3050 <br>
        Missing (1): fi-snb-2520m </p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_125002v2:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>
          <p>igt@i915_selftest@live@gt_mocs:</p>
          <ul>
            <li>bat-mtlp-8: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13746/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125002v2/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html" moz-do-not-send="true">DMESG-WARN</a> +1 other test
              dmesg-warn</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@guc:</p>
          <ul>
            <li>
              <p>bat-mtlp-6: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13746/bat-mtlp-6/igt@i915_selftest@live@guc.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125002v2/bat-mtlp-6/igt@i915_selftest@live@guc.html" moz-do-not-send="true">DMESG-WARN</a> +3 other tests
                dmesg-warn</p>
            </li>
            <li>
              <p>bat-mtlp-8: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125002v2/bat-mtlp-8/igt@i915_selftest@live@guc.html" moz-do-not-send="true">DMESG-WARN</a> +1 other test
                dmesg-warn<br>
              </p>
            </li>
          </ul>
        </li>
      </ul>
    </blockquote>
    These failure all appear to be reset related. However, they are full
    GT reset not individual engine resets. So not sure they can be
    explained by the worker thread vs interrupt handler processing issue
    of the gem_exec_capture failures.<br>
    <br>
    I would definitely recommend running these locally when you have the
    next version of the patch set ready.<br>
    <br>
    John.<br>
    <br>
  </body>
</html>

--------------LmjUDDtpeDjawlaRUEX6bpHt--
