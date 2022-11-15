Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD4B062911D
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Nov 2022 05:11:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B155F10E012;
	Tue, 15 Nov 2022 04:11:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3461910E012
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Nov 2022 04:11:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668485493; x=1700021493;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=IMBN6k+DcpoC6B5iNQyky7HFoFBjsgbUk5SaA0LLVl4=;
 b=KOB54saUqApF9Ts096zTlq7fglZ7Am5UFuvIsclcw+CU9mFLTHPMB0rJ
 1eJPhbZKb51W0P7briU/79Q2VXxuubbTC38UMs+YYQtibwpWa9uuMSFDi
 3wHz21f/sUCP6oTX5vdlmngAKSyqY6XeQ4TA+5LivzVRCDL9zMHLd17sD
 u9BUPZlTLsWJ7pyDFrZIPnwLG+oiXCeg5uLnDDybi9kau0mXx9TFatfYF
 Iocp0YxbkPxN9vGBi7EK/biSVPv/f+ypiENNiEkvvONdkCoCWtKWxg6Yb
 IHjDM7l4ZYUPcGrKDeGULxCWxx+zgBTMgwl8h5+4lrJGoMGZZ9zONS4ec g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="374287951"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="374287951"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 20:11:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="727799874"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="727799874"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Nov 2022 20:11:23 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 14 Nov 2022 20:11:23 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 14 Nov 2022 20:11:23 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 14 Nov 2022 20:11:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pk4Jp6jIwAqVcm7WXBHpLC14zMEvNklfkTVpubrc4clDHk7nQhlrFjxjHPf6oUKsEr5mpP/Y37nsIMzlsJin3ukYFvGIZzq4qcbAeRfruFsJ+SIyxFQAw30qPPSoLNQLL9TOV7n8vnrUoKGXQFGO2LnOerRsGCAKwwUUMy36uuqSMbfxhHlj67Y5eBhAJwBSQeMe/8u55GG05s2FONB+E0FqgmCi3iWogVImdpEJ+1Dl7U/iKld+lBgpfgS+a4ydMcbWjwO5PJa9NMbVwU1eKjsGNHcheh59MIWfeSbtXtwHOgfFy2ZNlwRzfKLkI0DSMPzdE6k04rvwXu9EG46tFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lvSgHB4hh9uCBLm2ZX0qc9yaauv7aQgQ9FS/ucmvysE=;
 b=Tt+YJC0rCEtDDES1qqUfzIyQdOG6fFiUZwQ/9US3XcuenuhpwJbCFKiNfsfoGvir3/TlgQB9jRuHYSGNpkpKnzajCeHWOfuAaEuVkSRjfgU2y5zZ1RPXu0SSnJxl1yRTjRQ9/TT4VnKq3GLjmWG+WgNdvmtvW5ThSCFg5M6PADgCO2OA+IEjHGG3pnm3f8y/RbFl9KilK66zzpYsx5Cor2QY9Jiws87Ygj24g9ZGHrXkDZwzBl0DG1MrK+GNMGHA59/e2DNmDeYb7AmfJn0sbsrNJF3Mt1DCjR9sJQiBN30yFTuolnR1rb5tmSxHm5t/ZOgM0x0geANxM7PWBKhb6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 BL1PR11MB5493.namprd11.prod.outlook.com (2603:10b6:208:31f::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5813.17; Tue, 15 Nov 2022 04:11:21 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::bff2:8e4f:a657:6095]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::bff2:8e4f:a657:6095%5]) with mapi id 15.20.5813.017; Tue, 15 Nov 2022
 04:11:21 +0000
Message-ID: <8722056e-3e6f-8ec6-6586-eaa9711d6b49@intel.com>
Date: Mon, 14 Nov 2022 20:11:18 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: Alan Previn <alan.previn.teres.alexis@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20221021173946.366210-1-alan.previn.teres.alexis@intel.com>
 <20221021173946.366210-3-alan.previn.teres.alexis@intel.com>
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
In-Reply-To: <20221021173946.366210-3-alan.previn.teres.alexis@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0297.namprd03.prod.outlook.com
 (2603:10b6:a03:39e::32) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5488:EE_|BL1PR11MB5493:EE_
X-MS-Office365-Filtering-Correlation-Id: c589452d-41c9-4af8-b6a5-08dac6bf73d7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZZ2h0VbLi/NP0fGcW7i2dOcoAQHSfoWcuI7SFGIzCnn/i1/FuKJynd08swRe6zptE/JhpvTMnp+oELUofa0OBs3jt6xgz2bs+wupFCTmDNPgqocDep0MERV3KKhlEnWRTvpOjOrooqFlsNZm0X9zoateSFIiVf6T6XLq6SNxLK8umKch+3G90bSIDwcWUiowfljS+qtY9ld5pq/prqXGo0FqI+Wp8/kVpwXEsVI9MTEqHEpjMToo2rp7ZNWIEumlmbBXl4B4onMrxnkYQLxwnp8OWxdlS3txMNqx5i/CoTdmIor1/QWXeSOeZVqlXRQb5LUwc5eObaBNg9TxNG4YL4L6yevhSZSTV0Xs5W6snUEx+4U2szOjSDc0Dn3o7EvXY7wN6S65Xc3iD74k0xz5niOwDVTyDL+41g4grRSh7XtK3DTX2N/8RyUirgacSON95217zpUiNxJBEjOzXVJfjc1OL1RM5/HmbOX5C3xWuey8Z9qUYIYPDudvAvwvoL2f8j0ejnS1ubryVxHPI5Fx7gzChdTWfi3tqT88C2SzPdx22rzsTWY5tSkVWiBlCEUwCkaPWI8JLYOQUhqWwJO1yA8O9vmte5/tsJPVxSC4H3iYhKBDM7alIU4+HJGvZIcRBm8HwazcuPY7Dj1YiZJcrFStysHHeb1F1HenQseLrooo1xhHaZqyGecQq2DbhQz6BtS/WusvBYfGgnFvKtkgmGUrkIu9fn/ptmKgAgXWbJJ73/9QQg6LoQ5NwYVM1mmehx0/XbAbZeYdnlw+jlTC2cvw+7Ssyyp+hT/x/T6Z+4k=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(136003)(346002)(366004)(396003)(39860400002)(451199015)(31686004)(36756003)(86362001)(31696002)(6666004)(6512007)(8936002)(83380400001)(38100700002)(186003)(6506007)(53546011)(2616005)(26005)(6486002)(82960400001)(41300700001)(316002)(66556008)(66946007)(8676002)(66476007)(478600001)(5660300002)(2906002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VjBCRGJyWlVFWXNtMVgxSzc3YVJVYlprMHA2cDk4alFtQmFhd01kZ29JN2xl?=
 =?utf-8?B?VG5HMHp2U1NjbkxnNXZVNllDZWNPMkovbXNLL2RodUl5RjRKRFZOd2JDSEJL?=
 =?utf-8?B?dnlCanl6MTVEMlRSVjFvRndRa0w5NUxRQ0I4OU8vMkt0SEVlZDJWSEdocUU3?=
 =?utf-8?B?Y0VBUE5raDZjcSt0YTdMeURkOHk4OCtLR0FWRFhXdzc4T2YxcFY2TnhaMmh3?=
 =?utf-8?B?cERkbEh1VThtR3hTSzBuZTVYNDFicjI1Nkl6UU1mZ0F5RGhYaGZqM1NONXYw?=
 =?utf-8?B?eXR1ZTB0SXB6Ri9FNzV2UklxTDhiRFJnM3YyMWNWOGxkWEtVNnVubktRN1VQ?=
 =?utf-8?B?L1lOUTNUeGZvQU9Jb0t5Q3hyUzJEL3VzVGx5UThwQ3BmdloyVVRzRW0zSExK?=
 =?utf-8?B?S2NTVS93dWtxMUVOM1VNU3IxL1FGU3U0TFFuUDR1ckFZSEdhNGhUMVFZdmY2?=
 =?utf-8?B?bFk1R21PZFBLU2g1ZzRvZDRXbjVNVW1UZEQ0QitoQ1JTNmcrUFBRWDJVS1Bn?=
 =?utf-8?B?RlhpSUFyWUxSUWlhaElaaUtlL0Nwc0JTeC9MUzNVU3VmWkJkY0tKQXZsN2o5?=
 =?utf-8?B?Nk5WQnF2dkFSNU1QTFBsUzF3RXdjRkRYWlExSEc3L0Z5amNHTWYvQm01Y2g3?=
 =?utf-8?B?ckx5NWlOVExLNXRTd1ZIaFhocUJNRzdjQ1FXWXlhM25VTk5mR2h1QjMvSVJu?=
 =?utf-8?B?SlJhNUZYcmFBUjFwL0FUZUhVcDlBeHl4M09teDFUYk9qNC9YM05ONzNuUlIx?=
 =?utf-8?B?THllMW1LNkpiTmY5bFZESW5zS2hqdURnWlhjWkd5S004TEZiTENieXM2UTNo?=
 =?utf-8?B?MmwwWGJ4SmZjSEdDZ1l6a1BYVVFHQ1VSNENZenl0b3RLUlhIa3E5aXBlUVJv?=
 =?utf-8?B?K1I4QkdjS3F4SE5weHFkbmxsR1p6VEdoa3ozeEQ3TFIwMThnOVVuUWVMazBl?=
 =?utf-8?B?bDhSdS96WnozQS9oNk40RzNPRTlHNmcwN29hMHdTMm1HOEQzaUxoNVFkTXFV?=
 =?utf-8?B?MVRja2h4eDgyR1V5MzJzaWNkL3NzWXJrV2pVb2RNVW16aUIxejV4cWNXcXNM?=
 =?utf-8?B?VVNNMmJlejlXbHM3RDdkeTExWXNzaEYyZzFWUHRiS0NBK3BvbjJiaUpZa2tN?=
 =?utf-8?B?em5UNzZJdjd5UFE0QVVMeVhHdE5za2NwN1pQaEhXTmFmaHJwc0IxV1ZIcTBs?=
 =?utf-8?B?UUtDa2lZeWh2SmUvNXI3aWxKc21YY0Z2NW1NZ3E5ZTBQTlZ5dCtrQTFiVUtr?=
 =?utf-8?B?dUJCbHlVY0lNZzFXdndSemRSYXFuc2ZudDZtc2JYMzJ1WkRIQndvNWl0RlQx?=
 =?utf-8?B?ektHbzl5blM0QWVRRVJ1L3hWSzZ2Y2pNVDdxRUxRSjhPeFY1NUcya25oQlRW?=
 =?utf-8?B?OGxMWm0vQUJDeDZoNXMrQWtFcjJCRjJIdkVaTC9hdytDWlQyaWI3TUxqWFZS?=
 =?utf-8?B?Rk11MUlvaUNSbExLNng5Y2lyU0c5RmtWUjBsR0RWaG9nR3FzZ1pQWU4zRGRz?=
 =?utf-8?B?cDM2dElRM2JXemQrOWRENU82aXIyajd3SmlOQzIwUjFVL0c2dXYxV21nd201?=
 =?utf-8?B?aDFHY0tNWTROdlRiZHJxekZRL3l6K2YzcnF4a21Dc0xzdExlbG16NlgrUjBO?=
 =?utf-8?B?NjBvWFcxN2hZOVdXM1kxSGl6V1FrQnRBREV3ek1zbVRkSHB3QmFoRVBDQU54?=
 =?utf-8?B?YjB0TkVsdFkrUXVtVUdtNGduWk1UMVRnZTVBaGpVU2dxUXFtbjBmandKckRz?=
 =?utf-8?B?YndndnVHTzR6eEZkQUFVS2JyKzZFdmEyclRxcUtUTmZPc2FvSWVtcmNpZTFN?=
 =?utf-8?B?Q3RIMXFFMk1ON1FZOEFYYlBUZGVYOHJjUWYwc1N5N3RkSHdGdUUyZ2l6djdX?=
 =?utf-8?B?TEVZb2h6b2g4TnZEMlhzemcvU1V2dEFQVnhjeHRTQzdrK3hFR2tPT2dhYVFz?=
 =?utf-8?B?VG5WbXFyK3VqN2Jydk9wL2FYT2NVb1FNdWJPUDhGQ0pkWXJMa2FuVlpUSWtE?=
 =?utf-8?B?cm9XVmM3aGowVko1ek5KMHlWZHo0Rlo2cGNuZExxUFlDN1pUWjFycnY5bDVJ?=
 =?utf-8?B?YmUycXNsT0lhR2pUckQwWk53Q2tSVGNKWmZ1N1F3ZlU5VWdKWWV3Znl1UDVL?=
 =?utf-8?B?bXhtR1FtQjdIeWNvd1I1eG5ndS9nMUxXZkFCcjNFWGtwWmxkNHFuN0JRYUEw?=
 =?utf-8?Q?sPHsD8CCM36PtMcN6jcSneY=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c589452d-41c9-4af8-b6a5-08dac6bf73d7
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Nov 2022 04:11:21.2322 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: V3Yqo4NuQPwfaMSP3SqKRqdPdW4OuQSMFRRj7eK/U0bQOcnpzgkCNZcQGIkrFMIt87+g+p93s1vE4+ZUbjCiw0JnbUblAJ1etl29WwRwI9o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5493
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 2/6] drm/i915/pxp: Make
 intel_pxp_is_enabled implicitly sort PXP-owning-GT
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



On 10/21/2022 10:39 AM, Alan Previn wrote:
> Make intel_pxp_is_enabled a global check and implicitly find the
> PXP-owning-GT.
>
> PXP feature support is a device-config flag. In preparation for MTL
> PXP control-context shall reside on of the two GT's. That said,
> update intel_pxp_is_enabled to take in i915 as its input and internally
> find the right gt to check if PXP is enabled so its transparent to
> callers of this functions.
>
> However we also need to expose the per-gt variation of this internal
> pxp files to use (like what intel_pxp_enabled was prior) so also expose
> a new intel_gtpxp_is_enabled function for replacement.
>
> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_context.c  |  2 +-
>   drivers/gpu/drm/i915/gem/i915_gem_create.c   |  2 +-
>   drivers/gpu/drm/i915/pxp/intel_pxp.c         | 28 ++++++++++++++++++--
>   drivers/gpu/drm/i915/pxp/intel_pxp.h         |  4 ++-
>   drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c     |  2 +-
>   drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c |  2 +-
>   drivers/gpu/drm/i915/pxp/intel_pxp_irq.c     |  2 +-
>   drivers/gpu/drm/i915/pxp/intel_pxp_pm.c      |  8 +++---
>   drivers/gpu/drm/i915/pxp/intel_pxp_tee.c     |  4 +--
>   9 files changed, 40 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index 1e29b1e6d186..72f47ebda75f 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -257,7 +257,7 @@ static int proto_context_set_protected(struct drm_i915_private *i915,
>   
>   	if (!protected) {
>   		pc->uses_protected_content = false;
> -	} else if (!intel_pxp_is_enabled(&to_gt(i915)->pxp)) {
> +	} else if (!intel_pxp_is_enabled(i915)) {
>   		ret = -ENODEV;
>   	} else if ((pc->user_flags & BIT(UCONTEXT_RECOVERABLE)) ||
>   		   !(pc->user_flags & BIT(UCONTEXT_BANNABLE))) {
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_create.c b/drivers/gpu/drm/i915/gem/i915_gem_create.c
> index 33673fe7ee0a..e44803f9bec4 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_create.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_create.c
> @@ -384,7 +384,7 @@ static int ext_set_protected(struct i915_user_extension __user *base, void *data
>   	if (ext.flags)
>   		return -EINVAL;
>   
> -	if (!intel_pxp_is_enabled(&to_gt(ext_data->i915)->pxp))
> +	if (!intel_pxp_is_enabled(ext_data->i915))
>   		return -ENODEV;
>   
>   	ext_data->flags |= I915_BO_PROTECTED;
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> index 545c075bf1aa..f7c909fce97c 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -9,6 +9,7 @@
>   #include "intel_pxp_tee.h"
>   #include "gem/i915_gem_context.h"
>   #include "gt/intel_context.h"
> +#include "gt/intel_gt.h"
>   #include "i915_drv.h"
>   
>   /**
> @@ -68,11 +69,34 @@ bool intel_gtpxp_is_supported(struct intel_pxp *pxp)
>   	return false;
>   }
>   
> -bool intel_pxp_is_enabled(const struct intel_pxp *pxp)
> +bool intel_gtpxp_is_enabled(const struct intel_pxp *pxp)

I'd rename this to intel_pxp_is_initialized, that way we don't have 2 
almost identically named checkers that mean different things (and also 
avoid the gtpxp prefix).

>   {
>   	return pxp->ce;
>   }
>   
> +static struct intel_gt *_i915_to_pxp_gt(struct drm_i915_private *i915)

nit: why the "_" prefix? we usually don't use it for x_to_y functions. 
Not a blocker.

> +{
> +	struct intel_gt *gt = NULL;
> +	int i = 0;
> +
> +	for_each_gt(gt, i915, i) {
> +		/* There can be only one GT that supports PXP */



> +		if (gt && intel_gtpxp_is_supported(&gt->pxp))

for_each_gt already checks for gt not being NULL, no need to check again.

Daniele

> +			return gt;
> +	}
> +	return NULL;
> +}
> +
> +bool intel_pxp_is_enabled(struct drm_i915_private *i915)
> +{
> +	struct intel_gt *gt = _i915_to_pxp_gt(i915);
> +
> +	if (!gt)
> +		return false;
> +
> +	return intel_gtpxp_is_enabled(&gt->pxp);
> +}
> +
>   bool intel_pxp_is_active(const struct intel_pxp *pxp)
>   {
>   	return pxp->arb_is_valid;
> @@ -229,7 +253,7 @@ int intel_pxp_start(struct intel_pxp *pxp)
>   {
>   	int ret = 0;
>   
> -	if (!intel_pxp_is_enabled(pxp))
> +	if (!intel_gtpxp_is_enabled(pxp))
>   		return -ENODEV;
>   
>   	if (wait_for(pxp_component_bound(pxp), 250))
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> index c12e4d419c78..61472018bc45 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> @@ -11,11 +11,13 @@
>   
>   struct intel_pxp;
>   struct drm_i915_gem_object;
> +struct drm_i915_private;
>   
>   struct intel_gt *pxp_to_gt(const struct intel_pxp *pxp);
>   bool intel_gtpxp_is_supported(struct intel_pxp *pxp);
> +bool intel_gtpxp_is_enabled(const struct intel_pxp *pxp);
>   
> -bool intel_pxp_is_enabled(const struct intel_pxp *pxp);
> +bool intel_pxp_is_enabled(struct drm_i915_private *i915);
>   bool intel_pxp_is_active(const struct intel_pxp *pxp);
>   
>   void intel_pxp_init(struct intel_pxp *pxp);
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
> index f41e45763d0d..0987bb552eaa 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
> @@ -99,7 +99,7 @@ int intel_pxp_terminate_session(struct intel_pxp *pxp, u32 id)
>   	u32 *cs;
>   	int err = 0;
>   
> -	if (!intel_pxp_is_enabled(pxp))
> +	if (!intel_gtpxp_is_enabled(pxp))
>   		return 0;
>   
>   	rq = i915_request_create(ce);
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
> index 124663cf0047..13f517f94bae 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
> @@ -18,7 +18,7 @@ static int pxp_info_show(struct seq_file *m, void *data)
>   {
>   	struct intel_pxp *pxp = m->private;
>   	struct drm_printer p = drm_seq_file_printer(m);
> -	bool enabled = intel_pxp_is_enabled(pxp);
> +	bool enabled = intel_gtpxp_is_enabled(pxp);
>   
>   	if (!enabled) {
>   		drm_printf(&p, "pxp disabled\n");
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c b/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
> index c28be430718a..8e8e5645e4fc 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
> @@ -22,7 +22,7 @@ void intel_pxp_irq_handler(struct intel_pxp *pxp, u16 iir)
>   {
>   	struct intel_gt *gt = pxp_to_gt(pxp);
>   
> -	if (GEM_WARN_ON(!intel_pxp_is_enabled(pxp)))
> +	if (GEM_WARN_ON(!intel_gtpxp_is_enabled(pxp)))
>   		return;
>   
>   	lockdep_assert_held(gt->irq_lock);
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
> index 6a7d4e2ee138..c095a9e0a01f 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
> @@ -11,7 +11,7 @@
>   
>   void intel_pxp_suspend_prepare(struct intel_pxp *pxp)
>   {
> -	if (!intel_pxp_is_enabled(pxp))
> +	if (!intel_gtpxp_is_enabled(pxp))
>   		return;
>   
>   	pxp->arb_is_valid = false;
> @@ -23,7 +23,7 @@ void intel_pxp_suspend(struct intel_pxp *pxp)
>   {
>   	intel_wakeref_t wakeref;
>   
> -	if (!intel_pxp_is_enabled(pxp))
> +	if (!intel_gtpxp_is_enabled(pxp))
>   		return;
>   
>   	with_intel_runtime_pm(&pxp_to_gt(pxp)->i915->runtime_pm, wakeref) {
> @@ -34,7 +34,7 @@ void intel_pxp_suspend(struct intel_pxp *pxp)
>   
>   void intel_pxp_resume(struct intel_pxp *pxp)
>   {
> -	if (!intel_pxp_is_enabled(pxp))
> +	if (!intel_gtpxp_is_enabled(pxp))
>   		return;
>   
>   	/*
> @@ -50,7 +50,7 @@ void intel_pxp_resume(struct intel_pxp *pxp)
>   
>   void intel_pxp_runtime_suspend(struct intel_pxp *pxp)
>   {
> -	if (!intel_pxp_is_enabled(pxp))
> +	if (!intel_gtpxp_is_enabled(pxp))
>   		return;
>   
>   	pxp->arb_is_valid = false;
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> index 052fd2f9a583..1c6bc56391b7 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> @@ -152,7 +152,7 @@ static int i915_pxp_tee_component_bind(struct device *i915_kdev,
>   		return 0;
>   
>   	/* the component is required to fully start the PXP HW */
> -	if (intel_pxp_is_enabled(pxp))
> +	if (intel_gtpxp_is_enabled(pxp))
>   		intel_pxp_init_hw(pxp);
>   
>   	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
> @@ -167,7 +167,7 @@ static void i915_pxp_tee_component_unbind(struct device *i915_kdev,
>   	struct intel_pxp *pxp = i915_dev_to_pxp(i915_kdev);
>   	intel_wakeref_t wakeref;
>   
> -	if (intel_pxp_is_enabled(pxp))
> +	if (intel_gtpxp_is_enabled(pxp))
>   		with_intel_runtime_pm_if_in_use(&i915->runtime_pm, wakeref)
>   			intel_pxp_fini_hw(pxp);
>   

