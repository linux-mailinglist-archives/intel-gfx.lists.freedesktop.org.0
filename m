Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EEF863B9FF
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Nov 2022 07:52:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8154910E25B;
	Tue, 29 Nov 2022 06:51:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B327510E25B
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Nov 2022 06:51:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669704714; x=1701240714;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=03eSdX12lRjvVMCOPKc5M/GcKMtltpCbOXAcQtCjPeg=;
 b=hxsttg+p+c4Vm3dgynHDXPQlQCZaRXgTXGPBHZUZ3fnIcVXE4rZUG05B
 kqgU1zuDCTlJpd5RNA0pAf7iDa6Fqg38nGMJD+ofc/n6uxRlWYVh+fdCL
 QEyzLwHBw5nPYEShWD5+w6PBWORon3sHYA1fDv84gDTFhrui7Y9W/xA8U
 3Me4ey/7ttI9/f19EZZMj0zDR0TSUQtN/W0WxaHoRkf0l5SuBN1cVoobN
 OTM5yrntgfLcm2dK4LA2kzOYrTgSRs24DtV8hPVu9+LrjcTgesaqTnHKA
 s2XkBkswvlbpikztrGk72nAWytbqRjGORwcyF3J8QskTEFj+sKqCPYzlz w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="316871147"
X-IronPort-AV: E=Sophos;i="5.96,202,1665471600"; d="scan'208";a="316871147"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 22:51:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="676326003"
X-IronPort-AV: E=Sophos;i="5.96,202,1665471600"; d="scan'208";a="676326003"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP; 28 Nov 2022 22:51:53 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 28 Nov 2022 22:51:53 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 28 Nov 2022 22:51:53 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 28 Nov 2022 22:51:53 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 28 Nov 2022 22:51:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eiQBlOPgPjQXxEhHyhNz3bLsXcY6lm0K5peueP0iOOCK2dSFNku5kJcifc5BSgmWikOLYQQ2vrYU2vUEdZOGNFPpS3yN+dvQgoScn76MSaugqXhSTW8SnLKFUaz5AB4v5N0sznVjPzaepsPvxBN/FRt7auZWGbVmy7c8imPQEbk1r9hA7sR9S5DvOuyAN08rsjVCR7EOp57ESOUOljzn26YaA0NtOXsbUcvXrXP8GtFe72ur4RumybTPbAk+0kWR5WlNP8Yfn++0KWXz5Tjkfa/ddGp4aHN79godkMJl6O4PC0mJrHBwf77i4/OElbxrPnh1kNpflZrIDTyUQiSbsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S8tP/MarHrL4wVOktxnSgQsHRUEr/LzdPjrBhumKBFk=;
 b=bRvSIw/zaemZ8BIbZuwtA0MxEHhW+0cymI/D0C0umQ6OAvdbITo2sCC5PgE2hy/4+VMRDf+7nCdIcbkwLzfjwF2UEYm5c2HyhPW9eD0bJSbB02eKJFYevonDd+JeyZ+jXIsahQ6Y36fBdOoRBEmaymEVF30OxeuKFxXGwe787O4Px7vP0M7VaSY9jVCU8Lk3w9XXtAPdPius5Z1nHrj+bILuuIMhjNLrw5iYI6+bFHRtrkg6Da8t+njALSRLtQO/yo4qwYPQmApcOqb2HsxwwSR/VmbEIib/C0tCSCmox2B9kbkKEmjHOcUZjzjky9Hv7CpFwEXhTsfhdLVgbpQcCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by PH0PR11MB4838.namprd11.prod.outlook.com (2603:10b6:510:40::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Tue, 29 Nov
 2022 06:51:51 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::22:fdef:cea5:e8f3]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::22:fdef:cea5:e8f3%3]) with mapi id 15.20.5857.022; Tue, 29 Nov 2022
 06:51:51 +0000
Date: Mon, 28 Nov 2022 22:51:49 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: "Iddamsetty, Aravind" <aravind.iddamsetty@intel.com>
Message-ID: <20221129065149.xdsxivthgwkua34m@ldmartin-desk2.lan>
References: <3a47d428e1929942374b9eaead5372bfaaefdeed.1669629369.git.aravind.iddamsetty@intel.com>
 <e65f3bc9dc0f90bc95bd529d2822568ac596be28.1669629369.git.aravind.iddamsetty@intel.com>
 <20221128202743.zf2ro6ay67bxwjxa@ldmartin-desk2.lan>
 <ac385078-9b6f-2d1e-721b-f70619cbed51@intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ac385078-9b6f-2d1e-721b-f70619cbed51@intel.com>
X-ClientProxiedBy: SJ0P220CA0026.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::30) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|PH0PR11MB4838:EE_
X-MS-Office365-Filtering-Correlation-Id: a4fd6c3e-5f7b-4b17-da75-08dad1d63180
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EHxEWwBvonknkNWJkPRHD/NNQcjuSPQ+7jXOnuaPevcHA+Zy0a8c8bbEQQO1m98Hp1mvom4EBWa2k5jeyljakAmnBJbouLUAjxZ09pe7PzN4kNbFXpJKuNJQOPPxOnRDVvWVswI0XjhiedgjDHWcX2/wryng1/4MixcljTO8E/Gzwyq6U9PlJTgK6qUAfFftT3ckM4DsJMD0ftri7H9gKYnUR3/VqVIrrSWLBUwWQBN/uthTkqIjmJZ3HdRg9kCJwz5TfETrBomruY2F076MzkF9UncsjLhs2RHSsTQHiiKm2RZijTCwV1iH4hNUpl65K82xkgcSo4vkA8si2OVy6p+488O2miaN76PwXU0neHG9122TAsrjvSHQkpWrciGwxWKxcG/E9PFDW+wSNe43Jq1rZElK/yb66YNSZQ/KCEZINWrvpp/8ACbw7G5AUGJC7PaPvjUriKbokBSPdHK+04AxlygWtwJEB6gko8QnZKRbNsLBIXg961TJxVoqYjHBkjt1hFhzzaihA/9nFEAAUpZavXPTb4+k1F7wd9wSfKIrsKroK9mpaO1RsE0NqA47GhV7RlDzSIkHGpvg7AppHYIotMMzJsIPI5I1vVBmjtJcX/Il3EhhAfr9ETSOHQLcPOty/RRnaPEkOdUciTEfLw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(396003)(136003)(376002)(346002)(39860400002)(451199015)(6862004)(86362001)(83380400001)(66946007)(82960400001)(38100700002)(2906002)(41300700001)(8936002)(4326008)(5660300002)(6506007)(6512007)(26005)(107886003)(186003)(316002)(9686003)(66476007)(1076003)(66556008)(54906003)(8676002)(6486002)(6636002)(478600001)(36756003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?l3H06d6YkdYoMBdGWpYF8VI9usKxhMqr3fisCmWPt1+a/r8W4OAX+mq8qo?=
 =?iso-8859-1?Q?kANfw5wFKrpHpWPo/bhh0yDXFgkxrKn947HFkoxDALh4c6L4YKq47nhP9w?=
 =?iso-8859-1?Q?imM31c6Pdag3PTmTkDislhPAZKW9fmQPJROKx4ZPwWAGJhmq+gDT3GZUvV?=
 =?iso-8859-1?Q?cSTgIXNKNH1ml/qKn5SKsQWFuBV9t7Arw9foCFimqwKK+cMXSvVLxB/4ox?=
 =?iso-8859-1?Q?oRrCngahrEmiGrPNmz/jRKSx+HBND+isv+p8OHB4A517LEN0nDoR/AalRA?=
 =?iso-8859-1?Q?wmsmNoagBNeH/4m0JS9Ea7u0IX3rndrnRid7VsYNjAy5ojUvFozgl8kJbt?=
 =?iso-8859-1?Q?NxNl3RWA/kE0Ok1dK4pZ4lOS2HL7I8MSXGBgIMeGzu+MWaZ2ZpT9opyKID?=
 =?iso-8859-1?Q?RTNq7bpwMAedK9grM6xBnTyzUH0mOuuAS514GrTxrNA1SkkGSAdlKPoKnq?=
 =?iso-8859-1?Q?QdPXJrBGCf15hIFBV/lsv9HQ4MRQy//JxxwqAgIpnkGTxN4ErCOdv88tWj?=
 =?iso-8859-1?Q?YU7G1khJbugFKSErEvoOxMcHj9fTWkisHdvUYEN68LpmU5xQV5rSQtvQP2?=
 =?iso-8859-1?Q?bDfJhxk3iLKlWNU+NQIzJUbvLJOscMY2QHgWDNBzdMN+uKzVeHa227XF+f?=
 =?iso-8859-1?Q?6w3KSzmrB+3sgCQFyOutYy15AiNCmd3tzU0YCXfFbTSUUo3w5/iLYFCxaw?=
 =?iso-8859-1?Q?CWsCqv0Xk+8FX7069z/o5qRm62KXUMUaw00CDlPvZ9MZtvBVBXXHLqbzEU?=
 =?iso-8859-1?Q?upu1MrX5AnAqioqwj1zSpgmLS8fxK0k9KFM4B1BTdJUULRLTsyB/FuNNyM?=
 =?iso-8859-1?Q?PsuvvPe6a1Ed5V1azFWKYqAJ82lPvM9YtEFozYNRBezKpqGeT1ci87hH6x?=
 =?iso-8859-1?Q?haoonX6b3jOf5fIgqBur96e7FL+fihbLmyYz/nhwMn/rj0UnvNa3yVnE4c?=
 =?iso-8859-1?Q?PrP8cjw42I6QT+Bh8WVcZRMDUUPZnpcl0wCiZWzUL6SkWnRRmnpfAQ7ysu?=
 =?iso-8859-1?Q?9Es6QI5cEPOC87jotoCjCfdblALz0Wcm8L23g+0OiPgNw8174q1Rrt7ngW?=
 =?iso-8859-1?Q?ZlhrZVMQ+GBKAkFZQoWOxoVFwbbDywEAYmUlDMtvvKrNcNa6dwGiBnAjB3?=
 =?iso-8859-1?Q?GN8qDVQsYvu+bV46n9W8iqdI8JBBqinGwruTfB3ylkHxqetlynU7Ie2lnM?=
 =?iso-8859-1?Q?fz5MkMPDYkHDRCQRxf/I3FxelPRVZQ1zlpcUk1/gMep8Q8B4wyOo9XDtf1?=
 =?iso-8859-1?Q?XTMomIE+vALaeE1VFN7UduMS0gOQ0egVHMys0WruAXyhgkaEZjnlhhSsvB?=
 =?iso-8859-1?Q?RGV5fEleivwXnVyPJYnLOX/FuieSltU0ba5ikDCT7NA5KKVqFN5PeYao4c?=
 =?iso-8859-1?Q?FssRvH8nZhUi50bBN717ZBi/oAKsKO0JjbUoCURlamL7RAVD/cz8HuXLm/?=
 =?iso-8859-1?Q?WEPd7h8ydzHEEPO3H2RA/Urg1t6eydTU2UX+fgUy1Ak5+Vmpmp7PpY6Dqh?=
 =?iso-8859-1?Q?tkXG1svSHW5F8EINnY5/jeVIGpqoXUbwmjRXp1pLcpn6JOLSvayU/pazzL?=
 =?iso-8859-1?Q?k8vUViZCQKn+sCEYjiLnZt84cr7DDim7BmmZYLC8v3kor9m/CuQaDC8AkQ?=
 =?iso-8859-1?Q?L+pZW/ISeEreaDLDl3pDtZTcQKRCCMRR5fXHWI0H3Sy7/2pVedo78q4Q?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a4fd6c3e-5f7b-4b17-da75-08dad1d63180
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Nov 2022 06:51:51.0863 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oFs45dJYY+ZfDfDGbCk4cDna3EYUR6h3iTViqNmMihLohHZIxhvqB4oWEm2XyfBX6McTFsnqYqRWtcNRZC0cvqB2Ya3jJ4M1ph7Gqp+6pgg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4838
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/mtl: Define new PTE encode for
 MTL
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

On Tue, Nov 29, 2022 at 09:58:03AM +0530, Iddamsetty, Aravind wrote:
>
>
>On 29-11-2022 01:57, Lucas De Marchi wrote:
>> On Mon, Nov 28, 2022 at 03:43:51PM +0530, Aravind Iddamsetty wrote:
>>> Add a separate PTE encode function for MTL. The number of PAT registers
>>> have increased to 16 on MTL. All 16 PAT registers are available for
>>> PPGTT mapped pages, but only the lower 4 are available for GGTT mapped
>>> pages.
>>
>> this would be easier to review with a preparatory patch, replacing
>> direct calls to gen8_pte_encode() and gen8_ggtt_pte_encode() with the
>> indirect ones through vm.
>
>Well I did this together because it would be easy to justify the change
>as I'm adding new definitions but if you insist on separating it out I
>can do that too.

as long as they are in the same patch series, it should be fine: the
justification is already there and the commit message can simply say new
platforms will use a different encode function.

Lucas De Marchi


>
>Thanks,
>Aravind.
>>
>> Then the patch on top adding MTL would be the definition of the new
>> encoding (mtl_pte_encode/mtl_ggtt_pte_encode) and assigning the function
>> pointer.
>>
>>
>> Lucas De Marchi
>>
>>>
>>> BSPEC: 63884
>>>
>>> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>>> Cc: Matt Roper <matthew.d.roper@intel.com>
>>> Co-developed-by: Fei Yang <fei.yang@intel.com>
>>> Signed-off-by: Fei Yang <fei.yang@intel.com>
>>> Signed-off-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
>>> ---
>>> drivers/gpu/drm/i915/display/intel_dpt.c |  2 +-
>>> drivers/gpu/drm/i915/gt/gen8_ppgtt.c     | 43 ++++++++++++++++++++----
>>> drivers/gpu/drm/i915/gt/gen8_ppgtt.h     |  4 +++
>>> drivers/gpu/drm/i915/gt/intel_ggtt.c     | 36 ++++++++++++++++++--
>>> drivers/gpu/drm/i915/gt/intel_gtt.h      | 13 +++++--
>>> 5 files changed, 86 insertions(+), 12 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c
>>> b/drivers/gpu/drm/i915/display/intel_dpt.c
>>> index ad1a37b515fb..cb8ed9bfb240 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dpt.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_dpt.c
>>> @@ -298,7 +298,7 @@ intel_dpt_create(struct intel_framebuffer *fb)
>>>     vm->vma_ops.bind_vma    = dpt_bind_vma;
>>>     vm->vma_ops.unbind_vma  = dpt_unbind_vma;
>>>
>>> -    vm->pte_encode = gen8_ggtt_pte_encode;
>>> +    vm->pte_encode = vm->gt->ggtt->vm.pte_encode;
>>>
>>>     dpt->obj = dpt_obj;
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>>> b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>>> index 4daaa6f55668..4197b43150cc 100644
>>> --- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>>> +++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>>> @@ -55,6 +55,34 @@ static u64 gen8_pte_encode(dma_addr_t addr,
>>>     return pte;
>>> }
>>>
>>> +static u64 mtl_pte_encode(dma_addr_t addr,
>>> +              enum i915_cache_level level,
>>> +              u32 flags)
>>> +{
>>> +    gen8_pte_t pte = addr | GEN8_PAGE_PRESENT | GEN8_PAGE_RW;
>>> +
>>> +    if (unlikely(flags & PTE_READ_ONLY))
>>> +        pte &= ~GEN8_PAGE_RW;
>>> +
>>> +    if (flags & PTE_LM)
>>> +        pte |= GEN12_PPGTT_PTE_LM | GEN12_PPGTT_PTE_NC;
>>> +
>>> +    switch (level) {
>>> +    case I915_CACHE_NONE:
>>> +        pte |= GEN12_PPGTT_PTE_PAT1;
>>> +        break;
>>> +    case I915_CACHE_LLC:
>>> +    case I915_CACHE_L3_LLC:
>>> +        pte |= GEN12_PPGTT_PTE_PAT0 | GEN12_PPGTT_PTE_PAT1;
>>> +        break;
>>> +    case I915_CACHE_WT:
>>> +        pte |= GEN12_PPGTT_PTE_PAT0;
>>> +        break;
>>> +    }
>>> +
>>> +    return pte;
>>> +}
>>> +
>>> static void gen8_ppgtt_notify_vgt(struct i915_ppgtt *ppgtt, bool create)
>>> {
>>>     struct drm_i915_private *i915 = ppgtt->vm.i915;
>>> @@ -427,7 +455,7 @@ gen8_ppgtt_insert_pte(struct i915_ppgtt *ppgtt,
>>>               u32 flags)
>>> {
>>>     struct i915_page_directory *pd;
>>> -    const gen8_pte_t pte_encode = gen8_pte_encode(0, cache_level,
>>> flags);
>>> +    const gen8_pte_t pte_encode = ppgtt->vm.pte_encode(0,
>>> cache_level, flags);
>>>     gen8_pte_t *vaddr;
>>>
>>>     pd = i915_pd_entry(pdp, gen8_pd_index(idx, 2));
>>> @@ -580,7 +608,7 @@ static void gen8_ppgtt_insert_huge(struct
>>> i915_address_space *vm,
>>>                    enum i915_cache_level cache_level,
>>>                    u32 flags)
>>> {
>>> -    const gen8_pte_t pte_encode = gen8_pte_encode(0, cache_level,
>>> flags);
>>> +    const gen8_pte_t pte_encode = vm->pte_encode(0, cache_level, flags);
>>>     unsigned int rem = sg_dma_len(iter->sg);
>>>     u64 start = vma_res->start;
>>>
>>> @@ -743,7 +771,7 @@ static void gen8_ppgtt_insert_entry(struct
>>> i915_address_space *vm,
>>>     GEM_BUG_ON(pt->is_compact);
>>>
>>>     vaddr = px_vaddr(pt);
>>> -    vaddr[gen8_pd_index(idx, 0)] = gen8_pte_encode(addr, level, flags);
>>> +    vaddr[gen8_pd_index(idx, 0)] = vm->pte_encode(addr, level, flags);
>>>     drm_clflush_virt_range(&vaddr[gen8_pd_index(idx, 0)],
>>> sizeof(*vaddr));
>>> }
>>>
>>> @@ -773,7 +801,7 @@ static void __xehpsdv_ppgtt_insert_entry_lm(struct
>>> i915_address_space *vm,
>>>     }
>>>
>>>     vaddr = px_vaddr(pt);
>>> -    vaddr[gen8_pd_index(idx, 0) / 16] = gen8_pte_encode(addr, level,
>>> flags);
>>> +    vaddr[gen8_pd_index(idx, 0) / 16] = vm->pte_encode(addr, level,
>>> flags);
>>> }
>>>
>>> static void xehpsdv_ppgtt_insert_entry(struct i915_address_space *vm,
>>> @@ -820,7 +848,7 @@ static int gen8_init_scratch(struct
>>> i915_address_space *vm)
>>>         pte_flags |= PTE_LM;
>>>
>>>     vm->scratch[0]->encode =
>>> -        gen8_pte_encode(px_dma(vm->scratch[0]),
>>> +        vm->pte_encode(px_dma(vm->scratch[0]),
>>>                 I915_CACHE_NONE, pte_flags);
>>>
>>>     for (i = 1; i <= vm->top; i++) {
>>> @@ -963,7 +991,10 @@ struct i915_ppgtt *gen8_ppgtt_create(struct
>>> intel_gt *gt,
>>>      */
>>>     ppgtt->vm.alloc_scratch_dma = alloc_pt_dma;
>>>
>>> -    ppgtt->vm.pte_encode = gen8_pte_encode;
>>> +    if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 70))
>>> +        ppgtt->vm.pte_encode = mtl_pte_encode;
>>> +    else
>>> +        ppgtt->vm.pte_encode = gen8_pte_encode;
>>>
>>>     ppgtt->vm.bind_async_flags = I915_VMA_LOCAL_BIND;
>>>     ppgtt->vm.insert_entries = gen8_ppgtt_insert;
>>> diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.h
>>> b/drivers/gpu/drm/i915/gt/gen8_ppgtt.h
>>> index f541d19264b4..c48f1fc32909 100644
>>> --- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.h
>>> +++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.h
>>> @@ -19,4 +19,8 @@ u64 gen8_ggtt_pte_encode(dma_addr_t addr,
>>>              enum i915_cache_level level,
>>>              u32 flags);
>>>
>>> +u64 mtl_ggtt_pte_encode(dma_addr_t addr,
>>> +            enum i915_cache_level level,
>>> +            u32 flags);
>>> +
>>> #endif
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c
>>> b/drivers/gpu/drm/i915/gt/intel_ggtt.c
>>> index 8145851ad23d..ffe910694ca0 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
>>> @@ -237,6 +237,33 @@ static void guc_ggtt_invalidate(struct i915_ggtt
>>> *ggtt)
>>>         intel_uncore_write_fw(uncore, GEN8_GTCR, GEN8_GTCR_INVALIDATE);
>>> }
>>>
>>> +u64 mtl_ggtt_pte_encode(dma_addr_t addr,
>>> +            enum i915_cache_level level,
>>> +            u32 flags)
>>> +{
>>> +    gen8_pte_t pte = addr | GEN8_PAGE_PRESENT;
>>> +
>>> +    GEM_BUG_ON(addr & ~GEN12_GGTT_PTE_ADDR_MASK);
>>> +
>>> +    if (flags & PTE_LM)
>>> +        pte |= GEN12_GGTT_PTE_LM;
>>> +
>>> +    switch (level) {
>>> +    case I915_CACHE_NONE:
>>> +        pte |= MTL_GGTT_PTE_PAT1;
>>> +        break;
>>> +    case I915_CACHE_LLC:
>>> +    case I915_CACHE_L3_LLC:
>>> +        pte |= MTL_GGTT_PTE_PAT0 | MTL_GGTT_PTE_PAT1;
>>> +        break;
>>> +    case I915_CACHE_WT:
>>> +        pte |= MTL_GGTT_PTE_PAT0;
>>> +        break;
>>> +    }
>>> +
>>> +    return pte;
>>> +}
>>> +
>>> u64 gen8_ggtt_pte_encode(dma_addr_t addr,
>>>              enum i915_cache_level level,
>>>              u32 flags)
>>> @@ -264,7 +291,7 @@ static void gen8_ggtt_insert_page(struct
>>> i915_address_space *vm,
>>>     gen8_pte_t __iomem *pte =
>>>         (gen8_pte_t __iomem *)ggtt->gsm + offset / I915_GTT_PAGE_SIZE;
>>>
>>> -    gen8_set_pte(pte, gen8_ggtt_pte_encode(addr, level, flags));
>>> +    gen8_set_pte(pte, ggtt->vm.pte_encode(addr, level, flags));
>>>
>>>     ggtt->invalidate(ggtt);
>>> }
>>> @@ -274,8 +301,8 @@ static void gen8_ggtt_insert_entries(struct
>>> i915_address_space *vm,
>>>                      enum i915_cache_level level,
>>>                      u32 flags)
>>> {
>>> -    const gen8_pte_t pte_encode = gen8_ggtt_pte_encode(0, level, flags);
>>>     struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
>>> +    const gen8_pte_t pte_encode = ggtt->vm.pte_encode(0, level, flags);
>>>     gen8_pte_t __iomem *gte;
>>>     gen8_pte_t __iomem *end;
>>>     struct sgt_iter iter;
>>> @@ -984,7 +1011,10 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
>>>     ggtt->vm.vma_ops.bind_vma    = intel_ggtt_bind_vma;
>>>     ggtt->vm.vma_ops.unbind_vma  = intel_ggtt_unbind_vma;
>>>
>>> -    ggtt->vm.pte_encode = gen8_ggtt_pte_encode;
>>> +    if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))
>>> +        ggtt->vm.pte_encode = mtl_ggtt_pte_encode;
>>> +    else
>>> +        ggtt->vm.pte_encode = gen8_ggtt_pte_encode;
>>>
>>>     setup_private_pat(ggtt->vm.gt);
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h
>>> b/drivers/gpu/drm/i915/gt/intel_gtt.h
>>> index 43bf9188ffef..450ed0541d0f 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
>>> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
>>> @@ -88,9 +88,18 @@ typedef u64 gen8_pte_t;
>>> #define BYT_PTE_SNOOPED_BY_CPU_CACHES    REG_BIT(2)
>>> #define BYT_PTE_WRITEABLE        REG_BIT(1)
>>>
>>> +#define GEN12_PPGTT_PTE_PAT3    BIT_ULL(62)
>>> #define GEN12_PPGTT_PTE_LM    BIT_ULL(11)
>>> -
>>> -#define GEN12_GGTT_PTE_LM    BIT_ULL(1)
>>> +#define GEN12_PPGTT_PTE_PAT2    BIT_ULL(7)
>>> +#define GEN12_PPGTT_PTE_NC      BIT_ULL(5)
>>> +#define GEN12_PPGTT_PTE_PAT1    BIT_ULL(4)
>>> +#define GEN12_PPGTT_PTE_PAT0    BIT_ULL(3)
>>> +
>>> +#define GEN12_GGTT_PTE_LM        BIT_ULL(1)
>>> +#define MTL_GGTT_PTE_PAT0        BIT_ULL(52)
>>> +#define MTL_GGTT_PTE_PAT1        BIT_ULL(53)
>>> +#define GEN12_GGTT_PTE_ADDR_MASK    GENMASK_ULL(45, 12)
>>> +#define MTL_GGTT_PTE_PAT_MASK        GENMASK_ULL(53, 52)
>>>
>>> #define GEN12_PDE_64K BIT(6)
>>> #define GEN12_PTE_PS64 BIT(8)
>>> -- 
>>> 2.25.1
>>>
