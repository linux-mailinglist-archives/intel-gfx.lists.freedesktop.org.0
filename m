Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7527B6FB61F
	for <lists+intel-gfx@lfdr.de>; Mon,  8 May 2023 19:53:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38B3010E066;
	Mon,  8 May 2023 17:53:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2754010E2EA
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 May 2023 17:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683568403; x=1715104403;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=+RiRvzPr0OQc1ig5alD+RfL8h+0wwG1srlQbbbehgk0=;
 b=Y8o+VEhYPEP2WB35EtKjgCD6G0j+ZaHch833iDoXfCqNEEl7ki8LU1pp
 +fQSEwXkNFXoy9aLWnOJW5LHuTUq/iO38HbkIF0nAohrFFN7Vjk9bOftM
 t2ackmJNbyhvym31O80E8GfN3ibpt2PAzF0egz1kUdUrAzR7S2rFXOSHM
 S9nWefh8jfxkjUiSScfDbuK/JLe13IVUXAkl0OvGW2Sfbf+ZBMNrv4h7b
 DxPqy9g8csoC9muTrc0KokcHsY6Mr8gh1NIJzxBN7Qw3Vs431+lBRuGoU
 N16Se1p7/amAisH+7ya46IfTtjJCVpkCv9v8esHMhs9j0xJqNsIKiLv2S A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="334161092"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="334161092"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2023 10:53:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="768163283"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="768163283"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 08 May 2023 10:53:22 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 8 May 2023 10:53:21 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 8 May 2023 10:53:21 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 8 May 2023 10:53:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JaGTI+WtJEuGgl1g74Aqj7qYKMqJ+Bk4XpNBKZuJbp6heLOo71ebvHujTF+AfebhW/tzrabt8QRpmxf2gcq2QzR+4Uveb4o8coacS0EWmIlrUOe21zHw+ul9WtKkDATXpq9QjUEG2hZ+UALneMU8S0k5YCPnBspOqMA9Tr+016NkR1gUubYJxBSAK1d1B8pmlqyO1p1W/MlBUonOxItqL+zzq3o1tklufK5eApM+Ag3joJMcbc/mAOk1adX0ZUnU78J/TzeLBGEM1K79s7KVIxE8Xvvca18cu6vF9ewaaKRkJIMmLsp6qPRFV3uiXn0HD73UwFT7Uf/muPJlvg3Pkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WMO8afaHiOq6pNlyiVcNaWaxhza5fvSE1j8RA3TFl24=;
 b=ZU0p42BXp8kjz8u/g4k6o30nc0x5OZ1O8FYpgJrAfH+lGBKCHtBLL5/iTRcGTUKlljfDIJmVnNbVzfZ26c1peyHRDOxDRVzmqf/wsC4ubRDsqlVO1jkMuV29+27xlEU5T1MAAo8s5ZR7IrORHAOf7iA+MrVXSxp4gH0j7k0CEDYfa+SMVb93MsHuSfCzfLlmRRYsdKn6fY3ruEWhPGSLJo6QbO2LSKcovnxzgI0kRfLJUGcPxT5HONdzGgXBWbU62BZ739ANYTHzu95ur/+nOreiyx6ViRGQPLXo1QHguN7Us88DY6/8Wfe+E2eax5l6qlWUW9LG1we0i/brY+QMwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 SJ2PR11MB7646.namprd11.prod.outlook.com (2603:10b6:a03:4c3::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.31; Mon, 8 May
 2023 17:53:19 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::3c72:3d28:fbb1:818b]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::3c72:3d28:fbb1:818b%6]) with mapi id 15.20.6363.032; Mon, 8 May 2023
 17:53:19 +0000
Date: Mon, 8 May 2023 10:53:10 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: <intel-gfx@lists.freedesktop.org>, Tvrtko Ursulin
 <tvrtko.ursulin@linux.intel.com>, Ashutosh Dixit <ashutosh.dixit@intel.com>
Message-ID: <ZFk3Bg4mMKJbcWMb@orsosgc001.jf.intel.com>
References: <20230506005816.1891043-1-umesh.nerlige.ramappa@intel.com>
 <20230506005816.1891043-3-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230506005816.1891043-3-umesh.nerlige.ramappa@intel.com>
X-ClientProxiedBy: BY3PR04CA0022.namprd04.prod.outlook.com
 (2603:10b6:a03:217::27) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|SJ2PR11MB7646:EE_
X-MS-Office365-Filtering-Correlation-Id: 9ab84e27-b689-420a-ad8a-08db4fed1b6d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4XF8MJgjB86gOwefqYmbYqdXxbifNZytDiEO6a43XGhRnNXIBbf0CMcWcUtryZq6W4J+dvWlIGapkwAYUGU5aDSGBfZwt7SHw1YlMPnnx4KeTN7mYk/7Bk++ioNObzjJDMnZTGe5Bta9upVOHX3naQ8LcVH4r73WORJkU3aXU0H+6DIl3YTrqTF76WmMvI7mZMvjRWRhjbps/TE8gsEZ4vkYf7sBNVPMZVo/UZIa51CgL/V9jNPh0TSDccaIuK5y4UNquIhP3VbxUEVXN40mb59/hN+0ldHx7+AW5SLwCsB+jJA/frcLJI031gAs/Se7AI4YQaS0TTDVTw+OOD9NMOarH0GkI630PgNMZd6da8fQUEIc2qkaeI1N2tPrYdSwqp7KMTgXoU86e4O7fcoKLXTFU0v62Y2/uMjivpnk1ohbF6rXwfPNpXrfZvZkPh6UO8JyqrQywfb7oKutlyK9jC9NBHLPa+S/gmwgcy2ogkdZQZhCsdLmqAKfEKu06WQ46P4dIGoJYyboVrF2aS6UNhyL/5SqPDRd53eKCSFXzUy+5d1tv/Apwxb+Rfj68WK+
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(346002)(376002)(39860400002)(366004)(396003)(451199021)(2906002)(4744005)(478600001)(316002)(41300700001)(8936002)(8676002)(110136005)(6666004)(66476007)(6636002)(66556008)(5660300002)(66946007)(6486002)(6512007)(6506007)(26005)(186003)(82960400001)(38100700002)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dG1uWmQreWNVRlpsUnhhNWkzdnpmZi9LSHZvU2pMTnl0b2VJeGdBbC9uSnE3?=
 =?utf-8?B?eEQxR2RNYUllc3dUSFlPRDVTUGFvNVdYWjhHWEM1RnpRQ3VWNTNxSjZwMHBK?=
 =?utf-8?B?NG9aMlNGSmdtTVdIdnNyc1paeDdDRUk4bU5DWDNIbGZ2cWxpcXkvVUZZQ0tR?=
 =?utf-8?B?b0FuYzhuN25PVFVLQklSbzBNVW8rRmdCMUFnUDNtOFZmVGR1S29saHJlUFhW?=
 =?utf-8?B?ODFUQ0JXc2xHbnpKSDZXelc4TnlPRU8yeE1XNlNUSDBrQkVvTUY4UkdIQ0Yz?=
 =?utf-8?B?eVVxKzhwOEhiSVIyTFluVGwwM1JMV095bzcrYzJjVGhkRnp3WnJTV0s2MTIz?=
 =?utf-8?B?ZldIb2RTbDVZSk14SXlTMHhyR2h1anFKWjhEazVjSmZLdDJDQ2tJSTc1eStK?=
 =?utf-8?B?Rjg4MWovQXh3MGRCci84Q1Z2VW5IUDhzTCtzNnFqOVBQMTR6b1FTV0hnWnpH?=
 =?utf-8?B?QXFoc1pVZ09CYXBLaERPcVlTSjMrcERaRDdNTjdQbXdlVHlEK1ovbEY4dkdR?=
 =?utf-8?B?K1k5MVJtNEVpalVpcDJyZHpXR01wOEsyenBIazM0SnBBTnZLK0VEeGhnbDRB?=
 =?utf-8?B?MHlUSEovcTIyY1kzbENrZ1FIN0tnN0lyNVUxcit1aHY0aUx5VmttdFRLNnNq?=
 =?utf-8?B?ZEVZcmlCeGRROUF1aVloNFVTd3JYUG1sbUpqNXhUT2o4ZDBXNUpnTDJudEVL?=
 =?utf-8?B?bFhNTEQ4Z0NJcEI3OE1pa014RU5NYzVheCtORDRib3lIRjh2b0FuR2ZSMWds?=
 =?utf-8?B?dStNVHNSUTlzY1JERFkwMXBJbG8xaFZZME5BeVBQaXQ0NzNSc09aNVBiWG5K?=
 =?utf-8?B?NXlqcmFrUnIxYWRrSU5RM2p4NVFGNWltbDZaaitaWUtMbGluWkpaZW9reHRu?=
 =?utf-8?B?NlA4OUppVS95aWVCT0RsdmEyalk5UkpFNXkybHo1cms2TUgxRWlMcHAxY0Nz?=
 =?utf-8?B?aHM2TTIzTUQ3RXAyR0xLOFdmWWdmdCtLYUtoRzFsWGw2ZHZNZktwOTB0YStr?=
 =?utf-8?B?WmtXQ0Z6c2hIMmhGSTloMFk5aXBxT0JCOEJsaURwcHpiN0ZLUFJzUkZDOGta?=
 =?utf-8?B?T3BjdlRXT0lTNjgzOVJYblFmZUFsTHlTMjMxWjhOUzl2THY1TW90SkpDRmpK?=
 =?utf-8?B?NXFydHpwSTlMUzMrUEJRVENFTGdnUWp5alRjVm9FZVhaYUZNdTVLMzE1NUVB?=
 =?utf-8?B?cmVSaFFpVytyandRRGRSMENhTG1zNXFTVUVHOHJMdThFRExQR0NST3Zub1p3?=
 =?utf-8?B?bzBRT0N0K2ZjWkNwb3BQbS9udUdUNjg2dzFsK3BSVExsTEpUNFBuemNvZ3VO?=
 =?utf-8?B?YnNYbWgvWlFkZ1YxaXd0b054TVNxbkxYY3NsY3JVSW4xR003K0tYL3dWQSt1?=
 =?utf-8?B?bW4zcDFmaStBeW1BeDR5Wm9BalVxTm5ER3ZpSEkrNG9mSjhaWFZ4NFMrM054?=
 =?utf-8?B?QzVhdU5LS2NaTHl1T3lDMzJJR21BRnd0OGJ3aHlkQkpRQWY4MlBlSHhDNjcw?=
 =?utf-8?B?ZDh4UkhEaUI4RkFIMDF0TW93cmlhdFAvT1dBRUNXMEFJV1hoZUxhaVpaTEpQ?=
 =?utf-8?B?WlI2YnJ2N1A3enRxdW94YnFCeS9NWStwQzBJTkxwZmdVeUJLRW9kbnN4Q0ll?=
 =?utf-8?B?YzBUMG5ZTlY0QmhER0tXS2hxdUpXUDVXeFM0MTM4RE5PQXhlU3kzZ1lsUmda?=
 =?utf-8?B?TGJnWUd0eFdsMUZhQzhMNDVWLzRjNUdEUmZvZFVOYUJHanhPNWI0ejhtUS9j?=
 =?utf-8?B?RzRVQjA4dGZ1R2FwTlhvZzBRT3lMa2NDZWdrS3Q3TnJkR1BRME5NTE55aXV0?=
 =?utf-8?B?aUx6cnNqY3RyQWJGYUwyejIzQTRqclh4RnR3NlFCbndqUHh4OEt5Q2VyZGxG?=
 =?utf-8?B?a3JrL0t4dnRQaXlkSmw5MmJ3Z2dRa2FuUkJRUEdOSWRXQXdONmRxZ3o2bmFz?=
 =?utf-8?B?T01OekREUE5QM2VrMFg1NTlRc0VsN2l4QW43NzhTY0J6akt5a2FJYVFUeXEx?=
 =?utf-8?B?MGUxMFNhY2drUG1kUFpub0ptN3NsQk8zMng5a2lGOXRWM052RVB5U0R0REJR?=
 =?utf-8?B?c3UwL0NyZjh0QTM3b0RVWVJGd0EvazlHeGJPaGJQMjhWS21YN1NEMnBPTFEw?=
 =?utf-8?B?T3MzSWwzYmpnT29LNDFHT1dBMFRTeXRaTGpuZTdHTlJ5QXlyMDNUUjNFVHAv?=
 =?utf-8?Q?zmYQHbll3JX7kbx4tdlIqT8=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ab84e27-b689-420a-ad8a-08db4fed1b6d
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2023 17:53:19.1551 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WGxT7w40t11i1P/sONdU+/ZHz1FHAq+eo0JFSGKcDh65LRHVtyhamImFVNjUvt+PNLzW8uGxb6XzKwCdErgVY7HztgOPfI2JiLqRu10cRqE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7646
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915/pmu: Skip sampling engines
 with no enabled counters
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

On Fri, May 05, 2023 at 05:58:12PM -0700, Umesh Nerlige Ramappa wrote:
>From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>
>As we have more and more engines do not waste time sampling the ones no-
>one is monitoring.
>
>Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>---
> drivers/gpu/drm/i915/i915_pmu.c | 3 +++
> 1 file changed, 3 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
>index 67fa6cd77529..ba769f7fc385 100644
>--- a/drivers/gpu/drm/i915/i915_pmu.c
>+++ b/drivers/gpu/drm/i915/i915_pmu.c
>@@ -339,6 +339,9 @@ engines_sample(struct intel_gt *gt, unsigned int period_ns)
> 		return;
>
> 	for_each_engine(engine, gt, id) {
>+		if (!engine->pmu.enable)
>+			continue;
>+

Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Thanks,
Umesh
> 		if (!intel_engine_pm_get_if_awake(engine))
> 			continue;
>
>-- 
>2.36.1
>
