Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EC2E6BC23C
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 01:15:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5C3610EA2D;
	Thu, 16 Mar 2023 00:15:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3738C10EA2D
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 00:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678925699; x=1710461699;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=m4q9reMN7JE2zslk9b0Rg5YBl4gwJqrAIr7V4wfgOYY=;
 b=F5UnGq1GPKJfxkv8gazYbxuAjW0Kf6cOOsy3xW9FS0CCzJjXqommlJYQ
 rgT2w917+gmPoB8Gsb/1PFAzusoy7jQBLo/qjn0PQhttvhtTCPFf6Eey+
 IBsGR2FE5bQi7TbUXKD8ZMNaluGlcGxPiPviac7Zikps8sB2g5LCCg7Hc
 s1sqI9DU2HAVz0wEAcsrI2wgyNBbgtEfiDdNyJO29DqONcrCo9sz55G8l
 CRC5DS+LHCz10W/SJDsIpokj4xbq7XOZGSJ2iRBb5pMhgjr/taJsU0Bp1
 u0yi4nOdBWTaTXQ0J6fDDn/rzbDWZPzEQG+sAprcqQQc1zvtJzZoO6q47 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="340213541"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; d="scan'208";a="340213541"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2023 17:14:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="803493412"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; d="scan'208";a="803493412"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP; 15 Mar 2023 17:14:53 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 15 Mar 2023 17:14:53 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 15 Mar 2023 17:14:53 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 15 Mar 2023 17:14:53 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Wed, 15 Mar 2023 17:14:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OfJsgUGL2dC3Ei3kOY17G2rdRjrV7WXMc+RKEVVy1wFDxsAwGDUz3fZ+cGRmHNnNLlY1ugDDBhSK1HWR0u1woHShjWcBHVfZVewKXYiidTjFEAVlKOJBCvd5+mvOsfetfxh5CC3eRZweo1CRshPJGIuaI+FYzXFTfdpt/58CxpyNHDvwoobkzJAtI3Z7dNlVvVmAvCEw4XWJkWAwOSB4aiZz6ceDt8iyZfoP+Sr5zpaYtZL/RZi7NnXVnz4EweQG0qOTGtyKzFNwc089o/7DTvcNyrXFiYryqmjgtZFFHD9FnPV1SZKyKQgnsWQfNmbBPyu942JxlPT0wJK2qMw/Sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+buQItZdTmucFFmTTxTl89bY5aKDGZpbxZAuPT2b8BY=;
 b=G7svX7JgBTXucnYMRpcAL9aCGeckI7v11jErpIJ8WoAV4bLiOP4Y9KxJLQvBt9Y5U1tOxPsiLwBJhWZW9dneL5DMwPAS0cFt4SnV+FyCxN5TM5lxJketOTyC3Te6K+bL0sNLEAb8g2gt02UHVGruTS2a9JpJim7ZN08oPm/KfYPW2hxVssX6MFOs624rNFg+Fv3TQ3SDWxa4EqLsUJ1IzKprLFzNqWLhNqahDK2XDTvepc4MqFaQuGG0iqLBCrvGQZnLwhD5jv/b8G6HWBOQaljZEORVkm/2jLPJ0A4O/9PwGIBVhNkdmUAK63/l7K9LP0vYiX2vN8AAWyAeKHPnJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 PH7PR11MB5888.namprd11.prod.outlook.com (2603:10b6:510:137::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.26; Thu, 16 Mar
 2023 00:14:51 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2%7]) with mapi id 15.20.6178.024; Thu, 16 Mar 2023
 00:14:51 +0000
Date: Wed, 15 Mar 2023 17:14:44 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <ZBJfdKTNrMHU8EQT@orsosgc001.jf.intel.com>
References: <20230316000932.2525744-1-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230316000932.2525744-1-umesh.nerlige.ramappa@intel.com>
X-ClientProxiedBy: SJ0PR13CA0086.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::31) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|PH7PR11MB5888:EE_
X-MS-Office365-Filtering-Correlation-Id: aec4a341-3f7e-450a-0755-08db25b37571
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: roPX8c3WJHzgi3icsJ62q+z5kItWewrmdwtFNG4Ld0dsKQ3uJHBbv4VSeR+1/qdf31I8KRfqrfRc9Nky3i7AY/+ysDyJgqaROcrTGhLnL36DTizmjuAICr6DOPsJttPD0DHupjSMQ6sTrLCMgnSTSFSMt+E+ItSw64A3s49xsx+bYxJ6PSupaeR9C4FaOiPApLU8DTKBFyxSXeKYBc/+o0so8OV2a2xBUQ5UEsIhKdok/ZomSlvRzQUTm60QcdVJ5F4/5uGK/jQxEvnImRs4xae9pFwcs2x2WNibag8BER+m3mvsDcFOgHmhFkQV1oLRz66REAfTXe+0o/OAYFiZFLaF/1/8bPXi9xrssl7K7RkHVi3c0SFB8789g5CjL/86o2FiSY2k4IJXGS2opiMv1XxV8rUiih65ZvcLh/ogXVdwJWDEiojh/L36oBibDUmEXAlch3VAPLT5xfyeM8B+7+DRzqAg6ZswGygIdOtsStfjMI3GJIZUhG3o+MwZf4ZbFe8iDQ/hdJ0bOdpIsGkOvCxed1jKhQYP10WdlEcfWNbB1JHXtwVKffAhz6UoBI349RS0MtWVQJtU2BczYgI9D/Le5AMbk75gzNaoSovOXK/z3B1wnp9XfYFYqrCmGTaYLVh1w+BLqoB21jW2ysHTWA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(136003)(346002)(39860400002)(376002)(366004)(451199018)(478600001)(186003)(316002)(6486002)(8676002)(5660300002)(66556008)(66946007)(66476007)(41300700001)(2906002)(8936002)(6916009)(6666004)(6512007)(38100700002)(86362001)(6506007)(26005)(82960400001)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Wk94UFRvV0lHYzdiQ3NFZ2FHSHdtaTZYUEJWQ3JuallET3JnQjhYVjdMcHEx?=
 =?utf-8?B?Ymw5UWVBRndEVE4xaXozSHhKQ1hUN1RwUDdMTlFZR1YvWENDb0RBTkVGRUVy?=
 =?utf-8?B?V05PYVZKcDArK0UrQUhrOGFRcytYOHhIU1oyd2NRbjcwNHhtRHVRWUZWclha?=
 =?utf-8?B?UmdENVpQRkJ0c2Q0eWpDbGdpcllpakhRdnJIdXQ4Wjkvc2JSM0hQWXVwSHJO?=
 =?utf-8?B?cmx0ZGVpT3g1Q1B6bmNZaXlOb09FNGUwT1BhUEFYY0IxRGZISjFtTDd6Ujh6?=
 =?utf-8?B?TjhwSUVqTFRzQkJHd0lZRU9ZTnJpMGJPd1lSN3ZXdHpOdEhma1dTaVk5bXVx?=
 =?utf-8?B?Q3pHMUxqSHhIckJaRG5UY3Ric2R3WU9VOXpxUVN0cFdudGZzeG9yaElzYWUw?=
 =?utf-8?B?YllsL3RCOGxZZk4rOUN1VXNERnhXd1JxcXdKYzRia3JsVSs2eWgwb0xjL3Bj?=
 =?utf-8?B?c0JON3g4cGZoenR0QWExR2ZyYXJoVWNHemphQm0yazkweUIycGxsZ0JzUFdv?=
 =?utf-8?B?ZEgzSGhrR2hkSnYwSk9JNEZYTW5YUm91ZnpzYmlTYnFheDBBL1orZm9iMmlj?=
 =?utf-8?B?UHdCK0x4UE5iRXZ4OVhZdlZVOTEzY04rN0V6eVpxa015aGcyYjF0Y2Y4UjBj?=
 =?utf-8?B?bWlIcERMcERjSUd4SG1xZnZIZWlmUlBJd2J2bGpTTVlqaGJDNVMrakozUVJU?=
 =?utf-8?B?bVorV2JKUjF4SDJzb1BNY1ZvQ1FHWnY3NUJEUm9Zb2dlcjJ5eTk1N2xuWXk1?=
 =?utf-8?B?WkRMOFFjR0J2a1B1SXQyRGNjbFVlR1dQRGdab2FvSzJ6aExpaVRGNjk0Q3ZR?=
 =?utf-8?B?YXJtNThZU01LSWxNcS9Id2Y4bjV0QTVxbHJkVFE1VmtKVDdRQTd2VnVrMCtw?=
 =?utf-8?B?VE5yanlMN005ZGFzVHU1UUxqS3VEM3FoMDlxT3BCTUVEUGFJdTBNU0IrbEhM?=
 =?utf-8?B?bXFabmRCOE12cVU0ZDAzcERzRjdYNlo2aDBGLzgyejhUNTNvb2U2REtoQ3Yx?=
 =?utf-8?B?eVNKOGFXeVR1a3VtY2RxTC92aUR6ZFpWRldqdEo0SGRKZWxYbk5LSGM0Rlp5?=
 =?utf-8?B?cGJMdUtWa1VGM0ZSQ1N4dmVHdlBPQUF4ZENZTnUvL2xrTFdCRXZUK001d0Y3?=
 =?utf-8?B?MEVpYnJLbjQwdUk4SlJMSlo4YmUydktEYS9ibVpLSWk2TU0raG4rZVR1SEda?=
 =?utf-8?B?N05FdVBVdVA3SEZMczlSUHc2ems0Y052SENIckFhdGl2K3N6Wk1tM1dzMS8y?=
 =?utf-8?B?TnMxSmJKSGRXVXhwSkdUa1luV2hpaGxFQ0JyaW8xNEZudG53ZWNHS0hTSDJE?=
 =?utf-8?B?TVFobm1EaldwS2ttY084UnVscGJ1U3NEY1lCOXdscm1YRTU2QUR0dnZvNlcw?=
 =?utf-8?B?MmkyNmxKQ003MVVxTitWMDFQS2RUbmNOSVhMQ2VKUStwMDd3bWdvSTZVMDlX?=
 =?utf-8?B?SzVZcnZaTWQ5KzkvV256cEkvRkhVb0FlTUx6UUhKbzdEK09PYVB1by9ZZ3NB?=
 =?utf-8?B?WkdkV1MvN2xuVXBaZTNScXlrc0h1YnI2L1JWaGhuSTFobTVHWXl5M1BsR01t?=
 =?utf-8?B?UFdyaHE2cC8vcXRoNGlYR2FMZ0VlU1JmN0tMdDg5TmkweU5ZdmpxNXVBNXFB?=
 =?utf-8?B?Q3kzaklmUDRDUm55cTRFTHp6MG5aYnFubTg1M0M2VkV3Rm1hMStxTURuZHcz?=
 =?utf-8?B?ZzhwVUw3ei9UMzNWZzNMQ1o1THRoWUpoVXRiVGU5VHFRRThQeFgxUEtYT0po?=
 =?utf-8?B?RzBsUU1aYmxvSW5ia0JxbytOcm5UdEpQWU9uWEdYamRQZmNqN1FsaGhKUjFa?=
 =?utf-8?B?Z3RBR0JEdUdabmxIMFNKNU5PVVN0Ulo4VkswTkcxc3k3R0lSZGdtdnVDeTFm?=
 =?utf-8?B?Um5vdVY3c0lCM0laOGN5Y256bzFXQnNKcmxNWDloSmNDbndPc3ZVVzhrOHNT?=
 =?utf-8?B?dmo2RTZhNXNyMjVoNGh2bFNNVzBuTTJJNE9HbmFWZWY2ZDdCVmJGMVdLcHBh?=
 =?utf-8?B?aGF4bGovWnEvUzdnckJJSjAzbEp3eHo3S1dYVlZZeEVnT21CKzdKUnhKdWsr?=
 =?utf-8?B?eTFEVE95NnhRWlN1WmZ3UmF1YTd2N2Uxb1JxT0ZrdEhmSlZ0Zm8zS1ZRRlNQ?=
 =?utf-8?B?L3huUGRwKzA1QW1kMmtaZlZRS1pKUWlwY2VqSmRWWmt6QWxwVndpR1BEb2pZ?=
 =?utf-8?Q?UUR6hUlS3d61RCb+5sHCDpM=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: aec4a341-3f7e-450a-0755-08db25b37571
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Mar 2023 00:14:50.4491 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xVf83Kkfsmdpo90FbWjzPJuIfYk4u4wkQ9GLWjBQuSZgVqc1+7xptAyyRPK8BUwQ/fY2uOAY4lTmhGu98rt65i65TfLN+ljl5slPHBja/lE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5888
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 00/12] Add OAM support for MTL
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

Please ignore this series. Will post another one after rebase.

Thanks,
Umesh

On Wed, Mar 15, 2023 at 05:09:20PM -0700, Umesh Nerlige Ramappa wrote:
>The OAM unit captures OA reports specific to the media engines. Add support to
>program the OAM unit on media tile on MTL.
>
>The OAM unit is selected by passing the class:instance of a media engine to perf
>parameters. Corresponding UMD changes are posted to the igt-dev repo as part of
>supporting the GPUvis tool.
>
>v2: Incorporate review feedback (Jani, Ashutosh)
>v3: Incorporate review feedback (Jani, Ashutosh)
>v4: Incorporate review feedback (Ashutosh)
>v5:
>- Enforce paired engine-class and engine-instance configuration
>- Include fix for Wa_14017512683
>
>Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>
>Chris Wilson (1):
>  drm/i915/perf: Drop wakeref on GuC RC error
>
>Umesh Nerlige Ramappa (10):
>  drm/i915/perf: Add helper to check supported OA engines
>  drm/i915/perf: Validate OA sseu config outside switch
>  drm/i915/perf: Group engines into respective OA groups
>  drm/i915/perf: Fail modprobe if i915_perf_init fails on OOM
>  drm/i915/perf: Parse 64bit report header formats correctly
>  drm/i915/perf: Handle non-power-of-2 reports
>  drm/i915/perf: Add engine class instance parameters to perf
>  drm/i915/perf: Add support for OA media units
>  drm/i915/perf: Pass i915 object to perf revision helper
>  drm/i915/perf: Wa_14017512683: Disable OAM if media C6 is enabled in
>    BIOS
>
>Vinay Belgaumkar (1):
>  drm/i915/mtl: Synchronize i915/BIOS on C6 enabling
>
> drivers/gpu/drm/i915/gt/intel_engine_types.h |  10 +
> drivers/gpu/drm/i915/gt/intel_rc6.c          |  28 +
> drivers/gpu/drm/i915/gt/intel_rc6.h          |   2 +
> drivers/gpu/drm/i915/gt/intel_rc6_types.h    |   2 +
> drivers/gpu/drm/i915/gt/intel_sseu.c         |   3 +-
> drivers/gpu/drm/i915/i915_driver.c           |   4 +-
> drivers/gpu/drm/i915/i915_drv.h              |   2 +
> drivers/gpu/drm/i915/i915_getparam.c         |   2 +-
> drivers/gpu/drm/i915/i915_pci.c              |   1 +
> drivers/gpu/drm/i915/i915_perf.c             | 570 +++++++++++++++----
> drivers/gpu/drm/i915/i915_perf.h             |   4 +-
> drivers/gpu/drm/i915/i915_perf_oa_regs.h     |  78 +++
> drivers/gpu/drm/i915/i915_perf_types.h       |  75 ++-
> drivers/gpu/drm/i915/intel_device_info.h     |   1 +
> include/uapi/drm/i915_drm.h                  |  23 +
> 15 files changed, 681 insertions(+), 124 deletions(-)
>
>-- 
>2.36.1
>
