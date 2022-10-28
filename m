Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 96A01611CA2
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Oct 2022 23:46:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CFE910E8E5;
	Fri, 28 Oct 2022 21:46:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01F6910E8E5
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Oct 2022 21:46:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666993571; x=1698529571;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=BEBZ7L3DdthY+ml7NxdlR1N1vzGvjxGNNFGLIWmWHsU=;
 b=giIvC7Yu1PMYvEVBLJT6p/NAuCl3g5IZCjf2RT95/6omuO4VKmr/uyCP
 jhsGMP2UVTD33Iru8mrR749OBoSRfzhJ0DIud5u/ukuQNBamsQHjdRudH
 py3HHfmD5hLwOq5b9rC4dxkGW27AmyBi5IuocrPsotsElfdPYrtSw3Zo0
 GuY+kK4X4XVHBrrNrGASLJO6lbGg2fbPzxYcaxQdK7EqiRef1tTMvR2nl
 ALaicgrMj8ljDsOQF7mcQ1IC4DfqhcIVOer6ikVF2ZPlj+LyVlqNr3nUJ
 wwdzhIvX/eJFKZFN0FX/RwP+tD4qgDzMJ0cajpHZaENLt2Y0u6G79AMM+ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10514"; a="394913512"
X-IronPort-AV: E=Sophos;i="5.95,222,1661842800"; d="scan'208";a="394913512"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 14:46:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10514"; a="722204466"
X-IronPort-AV: E=Sophos;i="5.95,222,1661842800"; d="scan'208";a="722204466"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 28 Oct 2022 14:46:10 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 28 Oct 2022 14:46:09 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 28 Oct 2022 14:46:09 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 28 Oct 2022 14:46:09 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 28 Oct 2022 14:46:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jnyyTrFrfyBGvbBv+FjoUx55DdeQdVQleH4wkXWINXMxDkjy3AzR+KYhv0QOM2u/BO8tW2O8fAVXtU16k2OUzr+VC77109q6OJYC9waHmHT8glzU+t7xTgMXDwBIm2kpN2joqOy4ZC/kukw+hOmm8RC9XZjIPzxRP2HxbV4vFxJQIMbieEJXMyzUZs80mSxMGEw5kSyNTrTMz7tbtH8bnO0yKwu358HCt0gOlePBP4Sj/GPRX/jZtCETVyFG9vH3W8QMpPPTLPbfHihioMAgXobh94LslUcGqGoOeIrzvM8Mr1pOBuVUzxBeGnrsl537mb3OIOtqFVR4DWMu/Sh4jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Tq4YuzSdqTxtq1AiONw/+c6AwOYktmKBxGUA+yayebM=;
 b=Rhi7VI/+19do+yZsJFV34C5hxstU1uL3DHVzgJa4Lhe8lTNRqGuaLsKFLIHEabf3WOJReSo+FIEy6aogAtlXjjAQSDuBcHMKSdF7kxPA15bd++h8TUc4TsM3jsYtuOlPKDTCbxkZDUo9yASXbTcknesBUm+cir1MAlGqvad4PT7uJwJsFKcxhHFZRyyDxe+5lXzImSO/f3Xv/FoKhQNBW9PzeqVdfDT//a3k7+bJYis+xZLaauMFqyDKUMm71nxG5DP/FAXv1UrkjlQAR+L3jsa59cqo/pTvA4JL4xAgKQRDF1mBV0FIC8F3cfQRd8VbN+WwdkRzTzXDBkrfRdffcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN2PR11MB4239.namprd11.prod.outlook.com (2603:10b6:208:192::20)
 by CY8PR11MB7081.namprd11.prod.outlook.com (2603:10b6:930:53::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5746.21; Fri, 28 Oct
 2022 21:46:07 +0000
Received: from MN2PR11MB4239.namprd11.prod.outlook.com
 ([fe80::4720:277:ea9a:e602]) by MN2PR11MB4239.namprd11.prod.outlook.com
 ([fe80::4720:277:ea9a:e602%4]) with mapi id 15.20.5769.015; Fri, 28 Oct 2022
 21:46:07 +0000
Date: Fri, 28 Oct 2022 14:45:57 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>, <intel-gfx@lists.freedesktop.org>
Message-ID: <Y1xNlVOCa7zB/WQ4@msatwood-mobl>
References: <20221025180335.1723742-1-matthew.s.atwood@intel.com>
 <20221025180335.1723742-2-matthew.s.atwood@intel.com>
 <20221027172853.yz3t2ny6anxshvoz@gjsousa-mobl2>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20221027172853.yz3t2ny6anxshvoz@gjsousa-mobl2>
X-ClientProxiedBy: BYAPR01CA0014.prod.exchangelabs.com (2603:10b6:a02:80::27)
 To MN2PR11MB4239.namprd11.prod.outlook.com
 (2603:10b6:208:192::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN2PR11MB4239:EE_|CY8PR11MB7081:EE_
X-MS-Office365-Filtering-Correlation-Id: fd9e66a8-df3c-4443-ed76-08dab92dcdf1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wjiuAyyG4g6zy04/Oh7/Lnxf+w9nIWF8kgXcPrsA0QVodAQpJvyH9/vmtD8KUKGQmiL3erdM8NUlvHu5Zxsy/Y5+55RIqvNbkLSUjFJnz98rXAGZRG4mFoLX/RFQqVhMZBP+Q2ACOWVPz7QZG9GY4LVA67hjJQaovlak9V+XVVjcVXASNLtC12ikqnFnLOgD9qQahsHWXGBIVGe5mJJO7GEXAGnSIhrUz77GC+7dN77UYcmJYMlqu/jU+soiJSlPEKAvzkxg8dqDPlPX8VY/A19Vx3+p3jNeyOUyEh/A0qDfZN+iLJrbzkICV29eNUCMY7rYLLYn/pTciRey6nPqwx6wZFSwLJfnk9vdzb2StaxR9rP8CoeXM5sW39iuvwGQ9VbkkJHqQnpNULeJH9CJobTa1P8VHt/qMp5Evs+/336aOsBLehzm/0ArAi+PE3TMl8JPE0aO0TWc2MGsexQILikoM8vPN60ZUEC3mhuj5Tlrg3LHrFzfH2jauCToPw+Oa8AHkfKm6v6RxGtR6vGRtZ5/6G2pWUxbkxYv7CPNtwdSLTgeyJyNSH967BVMzm0exyM9c4lZAc+xOfwsLnIZIt5EUFmfTZ5pzTI+sYnqaIdJ3HT3r0VgGsVHbhHYSRHhv0BVDUfr2KYSOtGKMT3FKpW2r+F2Zlge8jYvHE5Lb1VbmFHgOLtgJqDXny+kClWPNxNihNaq0Lstiz/oWwV3BA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4239.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(136003)(366004)(346002)(396003)(39860400002)(376002)(451199015)(8936002)(6666004)(83380400001)(316002)(66476007)(5660300002)(41300700001)(2906002)(186003)(4326008)(8676002)(9686003)(66556008)(66946007)(6512007)(6506007)(86362001)(38100700002)(6486002)(33716001)(82960400001)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WU1MN0o2STVZQm5UNHZ3ZmUvTThGUHFMSERsck00ZHRyQXpoYVpmRWxqdTU5?=
 =?utf-8?B?TmNWVDF1T2lxOEM3OTZOWE5kSnNjLzJ3Uk9GWTg0ODAvQjJpeHdIUjc1dEhz?=
 =?utf-8?B?ZE1lcVZEVGJOdklORFVEcXN1OVUzYmV0Q0planl3bFdJMENidER1NEFPRFZZ?=
 =?utf-8?B?c2tLTW1wRTdUb3doNndPdFNuYS9vdXlVay9SZE5kcGxYQXAzcHc2ME1tOHpl?=
 =?utf-8?B?UTRBbmhnVnhzSHEzaG9IelY4c3hQUmpqcDdPayswSUkrRmQ2anhwb3Urdy9t?=
 =?utf-8?B?di9YUWMyZ1NmUFpCUG5aUnYyczNwMFlSWHdKTllnUHpkWktCZFcrVkpPbVZk?=
 =?utf-8?B?YU5WM0ovZ1dVaEpmUXBHVlE3ajNibk93c0R5YkRWVWxkR0IyQXdGK2NDVUV6?=
 =?utf-8?B?NnhSMkdEU1lzT0ZzL1lsWUxPVDdtYXpzWHRvQ3hUSmNRUFFlbStpUGhjekJV?=
 =?utf-8?B?NkFvS1krWkNZYjJCbEZrOXFLbWZ1RGF0ZG5maHZGVCtDVG9jRXRtYzdxVkVR?=
 =?utf-8?B?THpUWW1hMWprR3Y2Y21NSUNvZ0pxeWR2UzBDYTd1Vzdna3ByczZBMEc1bThV?=
 =?utf-8?B?VHp1aHhrNWpSK3NIUktvNlI2NjVQcnd1alRYbUUvaGFSRXdpODh5NUYzQUJC?=
 =?utf-8?B?UXVaSUxHbElzTkNpVS9oelRyVzlXaWo2WEU4RE00VkJZdXdzdnNGcllJWkNV?=
 =?utf-8?B?K3dCVDBEa3Ztbk00NHVxT2xNci9rODFGL3p6ZUttZU1ZNU0ySzBXL1o4akhP?=
 =?utf-8?B?T1dGd1B0RzNCSFROY20yS1AzSEhybFlmVVpLZDVpSHo2RUlrTW1lcUNEZmN2?=
 =?utf-8?B?VDFiNWhqNHc5UXNVTjI4Q2FTWVliMkZBRUZRbDIxNVhYay9YR3VsSVRiWUht?=
 =?utf-8?B?L3ZBUEZFT2hNdTFqcXR0TVpKclpQWHk5RU9FQmIvcHFUdTNYeGVvM255TnFV?=
 =?utf-8?B?aHpVVXVORVJmREltTUQrNitmZzNwR3IzSXF4N1VHWVFOMmwydnJqT0h1ejhq?=
 =?utf-8?B?cFNyd21Zb2FHMExpS050UlZsRjlPNkswLzhaUGZvSmRNTEFmaFhPMGJ3Ykps?=
 =?utf-8?B?ZlRXRHY4VngwanBPOEg0ZlpkekRBWTkxQW0zbGZBcVVuQjk5eWVFQmtEVUlv?=
 =?utf-8?B?STU0SzlsUllFYzRsK1dTU1BnalMvSmpwaTkyUWJoOXBiNkUzcE1mMU1SeEhr?=
 =?utf-8?B?WFdmajNlaml3UE9MMDZXVWVVUWI3SENkNWs2ZlBlRzNINlZjeC94OEQ3M3k0?=
 =?utf-8?B?c1FMQXI1eERoMEVpVnVrYW0xMy9kWXZpRVdCWGZIUS9QMG5USWJDWWMyRGJm?=
 =?utf-8?B?cEJ2Q3JNN3BvZUg1cm1RYXpqTFcwWE1CYzlKTE5aTlhVS25sUnNtaXM1bmV2?=
 =?utf-8?B?V2VvemtEUkVrODdHWXpmckp0NlM0V3NMaWxiYWIvdkF5UHlKZGxQWDVocXRw?=
 =?utf-8?B?dzNGSVgzMndQbGRlQitYaDV1bkhqaEl2STg3TWZSYmZ2RjJrSlcxSUpjZ0lM?=
 =?utf-8?B?dW1jNStkQ1RLdDhzZjRaeVU5MnBubERzV3BrREMzaXcvd2RkVEFBRS9lY0N6?=
 =?utf-8?B?SlkxR3F0eWw0VTJ3YVkxLzh0cFpkNkV3SG82a2Uwd2FOK2VrU0NJV0JVVkkv?=
 =?utf-8?B?MjM5UThPaFYrTno5b3FTbHBZa0cwMVJ0WUFzRjFqMFhWSFdpeXZhckViS2VJ?=
 =?utf-8?B?NEtWNzVhQzl1TVN5RFV2K1NqWjA2MEFKQ1hYYmc0K2RrVEZjbTkvWTBnejVo?=
 =?utf-8?B?dmZKZUNHMmdJOXRoakpaQlJEVVJRdDFmdHZkTG5MdmUrVDVZY0swMm0wL2R0?=
 =?utf-8?B?bXlJS3VqZ01TUVlYN05tRjkwVnJhVC80a0p1KzJUbklaUkxhd3EydEp1bC9X?=
 =?utf-8?B?d09qbVVrTWZTbUEwNTlISXdLcC9KRmxCdHl0Z3BRaFh6L29DNW4yanZXaktz?=
 =?utf-8?B?ckhTamlLNjJBR20xYUZVczdKQ2RnbmtBbmxaemRqalNXSmVlUTlNR3IwSy9w?=
 =?utf-8?B?TVRLQ3V1RXltU1hrVkdlNGVrRk8vWXVIOHpxSklCRmJuMU1yR1RRT0V2T1ZY?=
 =?utf-8?B?Si8xOEloY0Y5TnAwbVQ2NXl1cWlkdmJLV2wxdmh0d21BNEdEaXpTWFY3N2Nz?=
 =?utf-8?B?NVVZRlA0UThVQzdyZE9QWDlSV3ZaOEhFUlZDMjk1VEdEUWhqQmNBUStBVlNu?=
 =?utf-8?Q?s0D3HD/Sbrczx+UG11q/cXI=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fd9e66a8-df3c-4443-ed76-08dab92dcdf1
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4239.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Oct 2022 21:46:07.1192 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: m3jw+z3rxJmhh+pf7ScOXcLD2TdS++m7vjVXtjlvUalaQtZiPFVysqxNGMruC2x61eWVeXTuMS7WrVZFntTkK7N9yo4T6uzy4HxCZSnSe3M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7081
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/dg2: Introduce Wa_18019271663
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

On Thu, Oct 27, 2022 at 02:28:53PM -0300, Gustavo Sousa wrote:
> On Tue, Oct 25, 2022 at 11:03:35AM -0700, Matt Atwood wrote:
> > Wa_18019271663 applies to all DG2 steppings and skus.
> > 
> > Bspec:45809
> 
> Could we also add the reference to the BSpec containing the WA description?
Good catch bspec ref should be 66622
> 
> > 
> > Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 7 ++++---
> >  drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
> >  2 files changed, 7 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > index e8372d4cd548..46035503068c 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > @@ -421,9 +421,10 @@
> >  #define   RC_OP_FLUSH_ENABLE			(1 << 0)
> >  #define   HIZ_RAW_STALL_OPT_DISABLE		(1 << 2)
> >  #define CACHE_MODE_1				_MMIO(0x7004) /* IVB+ */
> > -#define   PIXEL_SUBSPAN_COLLECT_OPT_DISABLE	(1 << 6)
> > -#define   GEN8_4x4_STC_OPTIMIZATION_DISABLE	(1 << 6)
> > -#define   GEN9_PARTIAL_RESOLVE_IN_VC_DISABLE	(1 << 1)
> > +#define   MSAA_OPTIMIZATION_REDUC_DISABLE	REG_BIT(11)
> > +#define   PIXEL_SUBSPAN_COLLECT_OPT_DISABLE	REG_BIT(6)
> > +#define   GEN8_4x4_STC_OPTIMIZATION_DISABLE	REG_BIT(6)
> > +#define   GEN9_PARTIAL_RESOLVE_IN_VC_DISABLE	REG_BIT(1)
> >  
> >  #define GEN7_GT_MODE				_MMIO(0x7008)
> >  #define   GEN9_IZ_HASHING_MASK(slice)		(0x3 << ((slice) * 2))
> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > index ced3a26cf7e7..9f39b7758ff3 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > @@ -750,6 +750,9 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
> >  
> >  	/* Wa_15010599737:dg2 */
> >  	wa_masked_en(wal, CHICKEN_RASTER_1, DIS_SF_ROUND_NEAREST_EVEN);
> > +
> > +	/* Wa_18019271663:dg2 */
> > +	wa_masked_en(wal, CACHE_MODE_1, MSAA_OPTIMIZATION_REDUC_DISABLE);
> >  }
> >  
> >  static void fakewa_disable_nestedbb_mode(struct intel_engine_cs *engine,
> > -- 
> > 2.37.3
> > 
