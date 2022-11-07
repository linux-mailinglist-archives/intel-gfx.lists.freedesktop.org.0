Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BDB761F7E1
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 16:41:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5798B10E3F7;
	Mon,  7 Nov 2022 15:41:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D467010E3F7
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Nov 2022 15:41:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667835714; x=1699371714;
 h=message-id:date:subject:to:references:cc:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=e0B2/6h7pKA9GYG9/+qWlnAC/YYCUpqq7PIq4NJDDSA=;
 b=W96WvPNGMQXyQLx89gYjt53+b9h/G8XP5O4lXA6aRVaVCIlyvNmbl8tZ
 rE7lN+dL7cVJnntc+vb+zktEXyS70v+EMk0FxFQWIPG+NHD/Ybu2WV/m/
 wbeL4ecVy+2vMUpa11GWfjP/d4Ql8YB4QBC7hdTIj4e5SJnIdQRbaPV+P
 Lggxf4BsWyfEH/Z24iZ3c480UpK+lF3MdcA3SaHxT0Lqg7chDFVCO3+3i
 /pCzJhobx9le6HZnq7I0sfzERRDDcjEGNaOsGKkBEf6b3vmsVsNEUjDF+
 KhEdoNbb9q4qYXA+lKvgPM+eTI44vknI5BPoh+3l9fKjO4/U/ro5xHRsE A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="290829349"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="290829349"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 07:41:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="704918860"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="704918860"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga004.fm.intel.com with ESMTP; 07 Nov 2022 07:41:25 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 7 Nov 2022 07:41:25 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 7 Nov 2022 07:41:24 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 7 Nov 2022 07:41:24 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.105)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 7 Nov 2022 07:41:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VBLAyUc4O1OSaQius6BDh5G3fi8HcC/EnOR4b1LvpRi47bRCFCfDK5unHZYHpg7TdAjDojCYnscKcTRJzeup1QIOn8b/nH2SuBQ7hv3QbNaM+dOsaWAJJ9RzOjI3GFBygbuJFOfyaaqox30Nb/JCKP9u1nx1R2g56MEM14CIVqNkBytk/rDzWwvLIHOs7I14jZrnrMHsRc+oEbccWhrV3WMlISNRnmYMEKSl3h11kNeiMxN/LrGloHIESp35s5+JqyjIx1vIukRU0BS9YgtpZAKdNVF9xiLWotOcexYRyXUR3dKSsddw1KXvku9jRUmByOellQu0UDRyG3dLsunkqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U+JFDRP159CP5sEITgUjfJeRosmkEu0sui/yPTCua1Y=;
 b=e0Ig6XHIQoNtDx9T5osOU3gxrjd3HInLiTrMEliWCj/VtccDqlCH0EcAvctaVc/B6Uug9Wj1PQXGpyQ7IxjYDzNbfs+0Z8Oy96Rnx5+nRRvOmOwmlDmQTUzM9TuFIDAgtszLKfpC+MdLX5wrg4gBKdHk+rP3zrjhYNRJ20xG27ve/SL3jeSbG28lAItQFd4To9DsNnaXv2XL6Kr4tDn4RxJ09W84dtd5a9Haj+YOVs/R3PbF6ajaCcQmTSbPe6LT99Zjpdok4+dNri2tah1m5QVyA1/wBkSHVomf+c8TkO0yKNMpSCciRuMTO3fa0za1WezIL2sX7t/MHViiuc651g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5108.namprd11.prod.outlook.com (2603:10b6:303:92::9)
 by PH0PR11MB5094.namprd11.prod.outlook.com (2603:10b6:510:3f::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.25; Mon, 7 Nov
 2022 15:41:17 +0000
Received: from CO1PR11MB5108.namprd11.prod.outlook.com
 ([fe80::f37c:bd24:e428:d548]) by CO1PR11MB5108.namprd11.prod.outlook.com
 ([fe80::f37c:bd24:e428:d548%3]) with mapi id 15.20.5791.026; Mon, 7 Nov 2022
 15:41:17 +0000
Message-ID: <0114f950-3534-3aae-8920-36f8e84a76db@intel.com>
Date: Mon, 7 Nov 2022 07:41:16 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.4.1
Content-Language: en-US
To: Matt Atwood <matthew.s.atwood@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20221025180335.1723742-1-matthew.s.atwood@intel.com>
From: Wayne Boyer <wayne.boyer@intel.com>
In-Reply-To: <20221025180335.1723742-1-matthew.s.atwood@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR07CA0058.namprd07.prod.outlook.com
 (2603:10b6:a03:60::35) To CO1PR11MB5108.namprd11.prod.outlook.com
 (2603:10b6:303:92::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5108:EE_|PH0PR11MB5094:EE_
X-MS-Office365-Filtering-Correlation-Id: 5eea68cf-ed42-4755-f43f-08dac0d6826f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CD1QG/XjECPJrCvOJ6thLP36PqDt9oULpsJXLABB0L70UfKs1MhNsMpsTPyLT0po72onsE/z0YzwoyQD2GfM+Yl87YUAyUtA7dsSjWMDmUV1BmJ7tazg36T7rr9PUlJs8MEMtmmRe1tEeKr8Cf8q0YlEtk5EEcKg5Re+3dy3rX1GYmp0WCVJK1HqRqC95Q5lTD2FP2N3JTA7wnEtQs7+2IV4o8Lmy6Rhs4pfl3hhAC4H1G4HKj1VVzHPcCXh9TCVV6Lm/3gEbhfJHdfFzNwQ6vZNWE7fmaXJkSqtp/y8Hp6ZNSdl4rCsfiJgskjreXOllTDitTOZVTkGHcWsjDak4qtx+TL5k70h4KDL/vGPeImtReJPW4JA4Ipgf4CBec4sDlfiqPmqzofUwVqu+CIZRvZn66HnWUTbuGPLS/kuXGXpeLn2AJRMArjQ1Aj4/SurQHPi12X3aIV/oh1mPU5YnqCNGEed07RGfLTOGkPaRDO55Wi6M8o4/C4OAUVZ+cnI2OvMPUUdekcg4O0zJbSW71lf0C0UirVVLzBIDaFKzA9iRy+V15o/SCIFrTwgS5s0pgTkbwQscZsixRUj/VEfOzFjA3bzELzbGWAYlUv18i4eR2mlBvDlqn+sB8LbA/pnyb6wy6TX+nrpNLbkGDqXFEWPxYQCmBaM+dASsbPyNOc3s6tJjp7inq7DyyQeuWECuup/CgUFo61O/wmMRluGH1CtLmOeejPWs5Epcc2k4kFSUIFWMaQATO7Q76QqIBpTjZr78NnaOFIAUycMvaQuQO+zKNlFmlAesZ0LOx1YxoE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5108.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(39860400002)(376002)(346002)(396003)(136003)(451199015)(82960400001)(38100700002)(8676002)(36756003)(2616005)(4326008)(316002)(83380400001)(44832011)(2906002)(5660300002)(66556008)(66476007)(41300700001)(107886003)(8936002)(6506007)(53546011)(186003)(6512007)(26005)(478600001)(6486002)(31696002)(66946007)(86362001)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dkJIanRhNmxiZnU1SzBFRWl5ZVUwNHo1VUFMblhuaE01OTRmcTQyZEJmcXV5?=
 =?utf-8?B?bDR3NHpHbW9BZ25XaVprWG94MldNQnlqM1pzQVowOTYrK0pOSUZFUG9qZkFW?=
 =?utf-8?B?Y3pDbkMvOVh0djFPQlQzY3djcnZ4UWpMV0MxNTlsYVNKMyttbFZWbldwUy9r?=
 =?utf-8?B?WFB3Q2lkbUZmYThMTFAxL3hmdnQ2dzF4UWdYa3BRLzlnRGtBaEwxcDdiR0l1?=
 =?utf-8?B?djJpUXE5aWJHRFlSeHE2TzE5aHpjczZ1ejJ3Tk1IMksxYjdhR1NtUGFDNVkw?=
 =?utf-8?B?VjFiNUJFMm9mNUpsdGVmWElrSzE3d3JVZU53SFY1bGg1U01lRjQ3bGdETlc0?=
 =?utf-8?B?eDVZdFI1UWNpWnZ0U09SbGVaZWR1V0kwcDF5YVdML1RPdVdSU2Jsazd6WkQy?=
 =?utf-8?B?alpydmlwUS9sY01iRzR6OHNWSFNSaVl2R2VqeUdHNzhYQm14c1JEVUtGUHMv?=
 =?utf-8?B?L2o2eFE5cmNFamJndjJPSWFaRmNNcHdCcmRVTlV4SkMreTFMU3ZnbEkzZjZB?=
 =?utf-8?B?dG91MDlIOGVMbFdKaTMyWmgxWXRJR1ZmT1pIQ2pKdWRwT3RhK1oyM1htM29R?=
 =?utf-8?B?TG5IbTZaV3gvc2dob0pLMGJ6ZHBtK0NVTEZLMEppaW5DbUFlRit6bVlnL01L?=
 =?utf-8?B?Wkg1OVAzZWhjblByemt6a3BhRit1V0diclk4Sld4OXpkaytaT01FT2FTcE1K?=
 =?utf-8?B?L01iUnZoOS9OQkVhTWo4ZlNBNTNETzhyencxVlhETXJIZ3BBbXc2WGxocElK?=
 =?utf-8?B?QmlvbHRCWVZpQTJ3UkxaK3RRNndPMlAxanYvdk9jb0dtWjVpZS9BWkpuWXJE?=
 =?utf-8?B?bW44NjZkV1pTNzlWa0ZINXNsV3ZBcEx6WXVXb1FEZkpuOE9lUjZyK1hqd0JH?=
 =?utf-8?B?QmpwVmErQnhqRzVxTXNvRmFYaTRXZVhuZTcweWc4b3BuUTJjVFVKWDZrYlpw?=
 =?utf-8?B?YkJtU3J5UnNSczBDbVF4WDVtTnJXLzloN3pTTFFVTGtTRzFNM3FzNkZyanVt?=
 =?utf-8?B?K0d0ZXVWTktBMWpzYkVOMzgzV2U3UlFhdVk2RGdRY0l5dEVHdElmRndZbktl?=
 =?utf-8?B?aFNSS3Y0YjZVZEYveUZxcXpEVkc2Ym1uMlU2YXBBbjdiS3EvQisrRkRlWkNo?=
 =?utf-8?B?UjhnRUZqTkFFeE0wazVyQlM2SERFRVR1Tmd1SURWVXNzYlMxamF2d1FlVEZt?=
 =?utf-8?B?cGFXZXhCWVlWeC9NVWFvNnBia3FsMy9Wd1h2cEd6N1VnSjFpbmVleHVSK1Fn?=
 =?utf-8?B?b2FuTUNtOHBzb2xsWU5ZRkdGalBFMytyU09BM2s1UEIrb0JabGFNcnd5VGN5?=
 =?utf-8?B?djhLeEVTMGl2anpPc2dlRUFGcUNFcGNYT1JQWmZueFI0UkkzcXI2ekF6T214?=
 =?utf-8?B?bHZ5TjZOd3U2eUNLQkJaSloyVmdLUDhycVlBZCthVVRKeG9tTmhXbWd5cW1r?=
 =?utf-8?B?ZC9lNUVhVmd5SFNjK0p2V0JsLzMvdUROVHNiUW5rT2xUNDhTL1VIcm42MkN1?=
 =?utf-8?B?YXVQQzJ2T3psdzNXWStzaTFsd1I0VjdUamVUSzJBdWt4YVhDdFRhMHVjbkta?=
 =?utf-8?B?aUtweE5aMmZaTUJMQnhpUHU0czZUbGYrN2hDaGJLZ1ZiNFhsT3VXWDhrYnZ5?=
 =?utf-8?B?cGJxMng3Rlc0VUxUQVZ2aEtydnlubGVmVnVjRkl5MTlRaHNFRjlaTGFQSlRY?=
 =?utf-8?B?Ynp0OW1ORTltRUJ0dW5sWUQyTmk3Zmd3ZXAvRkJySGFET1dObVBPaGZxa1ly?=
 =?utf-8?B?dG9LMW9XOFR0ejY2QkhiRDV5MUtDTUx4ZnNlZ1BqeXE5dzRBY3ozSGcxVmpG?=
 =?utf-8?B?cWxRQzRqZUo3K2lDSHRzM3BYQ1BLNXFnU0ZWeHpCWk01YXk5enNqaVBPc1A2?=
 =?utf-8?B?MVJDUFY5UE5FOUdwNEhJSWFRN0Qyc1cxRENPQTkxSmtiSk9KSlh1YWlSb3Fo?=
 =?utf-8?B?dHhTRnNnaCtyNmoyVVdtejJIWmxYOXROMndJNUVHaEE3eGhjUlRuakY5Wlht?=
 =?utf-8?B?eGo2ejlGK2ZTbnVseFc5NzN5WjJBb0o2SVhTOVJEZjN6UUZOcWV6WnpsRTd0?=
 =?utf-8?B?aVUxclF0WDU4NjVLWG5kQWozeUlCTG9ZWm9OYm9mS1UzVGhSRzExemNIZ0E1?=
 =?utf-8?Q?vzDHdHpStviRZEc0J80tSJXnz?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5eea68cf-ed42-4755-f43f-08dac0d6826f
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5108.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Nov 2022 15:41:17.2432 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: E1ul4ZiQz67DwVd5t8RcQznxdOlDyRlfjZayTxGOQxwXH+aa/WBqrQVoLyYAYKv7KC/mC2TaNAnWz9nPLTu3uQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5094
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/dg2: Introduce Wa_18018764978
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



On 10/25/22 11:03 AM, Matt Atwood wrote:
> Wa_18018764978 applies to specific steppings of DG2 (G11 C0+,
> G11 and G12 A0+).
> 
> Bspec: 66622
> 
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>

With fixups to commit messages as mentioned by Gustavo,
Reviewed-by: Wayne Boyer <wayne.boyer@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 3 +++
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 +++++
>  2 files changed, 8 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 36d95b79022c..e8372d4cd548 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -448,6 +448,9 @@
>  #define GEN8_L3CNTLREG				_MMIO(0x7034)
>  #define   GEN8_ERRDETBCTRL			(1 << 9)
>  
> +#define PSS_MODE2				_MMIO(0x703c)
> +#define   SCOREBOARD_STALL_FLUSH_CONTROL	REG_BIT(5)
> +
>  #define GEN7_SC_INSTDONE			_MMIO(0x7100)
>  #define GEN12_SC_INSTDONE_EXTRA			_MMIO(0x7104)
>  #define GEN12_SC_INSTDONE_EXTRA2		_MMIO(0x7108)
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 63e1e6becf34..ced3a26cf7e7 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -743,6 +743,11 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
>  		IS_DG2_G11(engine->i915) || IS_DG2_G12(engine->i915))
>  		wa_masked_field_set(wal, VF_PREEMPTION, PREEMPTION_VERTEX_COUNT, 0x4000);
>  
> +	/* Wa_18018764978:dg2 */
> +	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_C0, STEP_FOREVER) ||
> +		IS_DG2_G11(engine->i915) || IS_DG2_G12(engine->i915))
> +		wa_masked_en(wal, PSS_MODE2, SCOREBOARD_STALL_FLUSH_CONTROL);
> +
>  	/* Wa_15010599737:dg2 */
>  	wa_masked_en(wal, CHICKEN_RASTER_1, DIS_SF_ROUND_NEAREST_EVEN);
>  }

-- 
Wayne Boyer
Graphics Software Engineer
AXG SCSS Platform Enablement
