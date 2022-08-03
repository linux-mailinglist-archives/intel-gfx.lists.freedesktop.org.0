Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 408AE589347
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Aug 2022 22:33:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32D5210F2E5;
	Wed,  3 Aug 2022 20:33:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FD7510F511
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Aug 2022 20:33:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659558786; x=1691094786;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=MxTZIqmuHG1ljUUyccMszPlT+85H7nTIO/3bNFEGkqI=;
 b=O4+Fhf1USCQiqYaM1/WGkQCAM66rySrvWw1vii/vr9XjqEcorNy+7ane
 kpEubpLe3OIL5wNPtV09O7K66+EZMcT0fR987FjlpGP1NftcQCq5RoirR
 pydZkIpUuOsC44nMl3MskFI/JnYvFJ3Ev3CasPjk+7jFR2X+y8c/FyEOo
 OHtdmEbiEnuviSlhQK0e0MFUav8uegbmqVbqGCUJW2gXOA5yPX1Y9LbEe
 dU6Xoh6J5zBpK6NsyAapc6rYXBOFJPHq3Hewx7zfygLWXUlydiVIQpqNm
 Yrw0/if2/YGEMblW8gzExKKBX1CDfsMV7tUnzeZgHmwL2UWuvpYThe/Ow A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10428"; a="276688631"
X-IronPort-AV: E=Sophos;i="5.93,214,1654585200"; d="scan'208";a="276688631"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2022 13:33:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,214,1654585200"; d="scan'208";a="599761895"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga007.jf.intel.com with ESMTP; 03 Aug 2022 13:33:04 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 3 Aug 2022 13:33:04 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 3 Aug 2022 13:33:03 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Wed, 3 Aug 2022 13:33:03 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Wed, 3 Aug 2022 13:33:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FIsxjlSH4+Qv26ii+x65Gx2zx1DHvCSMSosBK7tO8L6bQCkEwon2o1x4uMjKupaHIVFj3fR4ISaosVUYCJLLF7mAtUJ5biZ44Tqfslgm/4TaFLsVOpbN/PqMZepJfutsBZu4HQu4COMEcJTqEvIA1d92W58jdo2rWKRTGKbnLDXQoZV0Pop6mFX/MWpMwwh812pis8H9AjsoOkiVZKhwHntYETLt8VMuDBFLJbvseso1zM2MBGUnxjGSSQquNocGbsU2VdKpw4U59T9M8z9DZlFmuucmhUzbcdeSL400I/nydFY0RJcxrPRwWCYcRie+zrNoyOCXzwag3/BvbrK3kQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/AOk13fKtX5RkA/rUt7LHLfFzBTb96jt9LAdjzDBsRo=;
 b=iHqhE8rjYUIHf8zPl7OzbyyTYrfEFNFQxnNw4jxRS2RnHEdC87wd+mVK/IGn+C9GkxxYB+cgTAECylnfVYL+wUzuTlZ0zEpFVhYOzq7molXLp/SLnUhMs9c3OT90UjHKyQksItyVEE/MkeO0VzPfLOKpDPdztQ4XITtyGxWupxhHgJPliOVlbvqj3eNihv9p+vlcu5p3iXmz0lLTr7rpXze9hOpEDH0reDQOqAypQgmRBDQrqtwyyKhCD0WL1tqnBrrolqdpsAlPRrHOFRE7a2/2D9KQRU8hbrbs76d87Y47Q/9r0sJPANDCR3XJuHupmE9Kjyw3gGdtGNpIh3M4TQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by MWHPR11MB1776.namprd11.prod.outlook.com (2603:10b6:300:110::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.12; Wed, 3 Aug
 2022 20:33:01 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a968:40aa:6163:5c79]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a968:40aa:6163:5c79%6]) with mapi id 15.20.5504.014; Wed, 3 Aug 2022
 20:33:01 +0000
Date: Wed, 3 Aug 2022 16:32:55 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <tilak.tangudu@intel.com>, <anusha.srivatsa@intel.com>,
 <imre.deak@intel.com>
Message-ID: <Yurbd4DMH4bCRifh@intel.com>
References: <20220721095955.3986943-1-tilak.tangudu@intel.com>
 <20220721095955.3986943-5-tilak.tangudu@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20220721095955.3986943-5-tilak.tangudu@intel.com>
X-ClientProxiedBy: SJ0PR13CA0071.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::16) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3a6ae14e-5090-466c-3a89-08da758f5be7
X-MS-TrafficTypeDiagnostic: MWHPR11MB1776:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YZoF4lj8/ZzmDZI3lv0gsc6WSKhIjN6XWNl2AnXe5v5AQt+3RL3hAXSfpFVvQLKqvEFKn9amEv2H++FcqNbno2hQ4pagQXBGejiuHm1BaWsb2c2b+4j0UcFv4Aq54i9Ns3ZP/IiD7CUtBueh1KeEjFiSVMTLRLLAb06sisVNTSi85D42T3gaOcFeXjU8p0m6zMlI1MCIiGwbyx434MNr+7yo4ocE5urnpXPYyf6GKNSsi0POT1386kYYWGEGFeM+9PDEyw41z5YX3b90uSrUZfbe5mnyMwNiC+xkhLUVUarxFb9cK9Bg89ue0OMouKtVom+QLtlCgPnK5y4oZ5YdT8JE6J+MReIfZ87v7/F1aZuvYuH+HCsr7FWqU84BB3fbXA1ZGBA/dqU8GBmQ3NWBGDITcEmSHW7IfK2b+D6c6rl8JIb1UFodc3UW7ANDn2rRL2qbSbDyDyzFMGofT7+ztUuHVg1kqMbOZOpwYlRPl/n7sd05gn0DEZ/g8a1oDiR3CdC1Dpw/V6VPr1zZDEj0Gles8mLw3yTIz6CK44WfDhY02eJX1yr10SLYgNf0GYzao9yR5xkBlczmjusnSX+0hLas+BWyP4tjy4/w6wdQr+CIU8blvEKs+5EQxUCP0AAEWpbe8FUfJpwAK+NipYyquibyELqkuNmJd+DvIj9F/ioDdRgv3/BeBTZIylry634O8BemzKpAUl5KGmCVJ0UsxD2MG8ce4rRdPqlxT7TLOkg2e8nquWjIhP/31jv7laYh
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(396003)(376002)(136003)(39860400002)(366004)(6512007)(41300700001)(26005)(86362001)(6666004)(6636002)(6506007)(316002)(478600001)(6486002)(38100700002)(82960400001)(2616005)(186003)(83380400001)(5660300002)(2906002)(66556008)(36756003)(4326008)(66946007)(44832011)(8676002)(66476007)(8936002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?WrDlEJsTsCtEb+ibIoLW32ft4PASJLedbdsCiAcBqJJ5D18VR3A8+cNg9HFe?=
 =?us-ascii?Q?NqDMJFyfE6tvHVOSCThnMR1A8U+GWkSTOA1xTahcEHnZW7ZjnYwDUxf8VQJk?=
 =?us-ascii?Q?PAwN8gqIGiHvIJ7HhX45T6KpaCO005JNkNfJp3x21d+iqaMKjpgqQ6Q3ByYU?=
 =?us-ascii?Q?BOvSsmg8x4Mhsqr4NNbm1DC5LIihGsEZVlfXhrDdV1dak39Hac42+cEFnzyo?=
 =?us-ascii?Q?jj/lUAMB0VjT10itp1FuJVORxnAxS/q/RLXVhI+nE4M+S0UBjtnDvLVW6I+f?=
 =?us-ascii?Q?PtmbQdoFNYSha7n4BNkx0W623Bv8KMZYmU1FFANtJrax2mdSr9MU7MluV6te?=
 =?us-ascii?Q?TaQNN7ReR/erDlLozCgICH4W88iPESAKuGmIyplu4Gfw3Qgup/p4q2TsAM+T?=
 =?us-ascii?Q?gge9n4CraOlEL055Uj5sXN52XIde4WTDHOGpT0e9r/41vT3sLfmTHy+LW26S?=
 =?us-ascii?Q?g2dhxBcNSVOdSCMiR1rNmyrrZ266703t3O8Z0Tkzij0iHE6zwyDIzjBzyTwE?=
 =?us-ascii?Q?8MtWPpc5aN0u/iChY3NkIUbi4TDrar3Tyzv7fhXolo/HdDOiMpftZcTUHKHJ?=
 =?us-ascii?Q?2UZ2LxOtSMAucvvbQSPy/sHwQ21KdWQivX542sZS2SzhfauKs8cJ1AOhn3hw?=
 =?us-ascii?Q?365MnjEJL0rAb0YyL7Gc9VkztIkypGicU/Hb1iFLx1CPspC4BhmbSC/9kDBV?=
 =?us-ascii?Q?169wU2XhDda1lPUVNyPICXlqaX7xl5f/rhYouornDaJLKp4ce/0dGuEgBj57?=
 =?us-ascii?Q?1aPCZPVbmHNcvw08r9KyLi6HUN4p4s9Y6sNF/hvE916qz98OSAlb1O5xMq3e?=
 =?us-ascii?Q?Ycf1VCX2U72xvBdaFkvUjFmTN4FO9z5gTJOJy8v5XuzjasquyqYiuTpmq9gz?=
 =?us-ascii?Q?T4FAgCMdhhY0Wk1GHHMGPYk5bzvH2OmO6z6sxsuUEs6R2iG7UzB7839PpGzv?=
 =?us-ascii?Q?muFEX5MbHxVX1JjliM3q5GLfNi+hwS1vgAyUNOTIFBw6PLk8LWj31FO5RfIB?=
 =?us-ascii?Q?+4Ka+pyBQe0Qo61o2MGr4QSmXJ95cB/P/insyE/UcAA87lqYgHZ+pPvQ9Jwm?=
 =?us-ascii?Q?73bLpG4hNSVaHwRpFQmWvbIuSS+PByG2NsG+ug9PPGLVffDQbo+CUDMflDgj?=
 =?us-ascii?Q?rq3FwanfX8hthiqfIHd85L0OVfPpZ+dVZD/JfH8v/6dZm1bOyccctXVYNwQR?=
 =?us-ascii?Q?QhGh4+wNM41wD/Q6L2og6ggQb5ob2ELqZBok25Yxrt935VJUSzctgOPjhQJa?=
 =?us-ascii?Q?6wALapy12hCZie/oq0d6YuCxQwmJ6dKJzUoswLeYgpyCqq59znqmI3nT0YZ0?=
 =?us-ascii?Q?k/yUaXHPR6vGW2MPC2b+5A/VN1JiM3p6rHZ0GNBSQKeX5obI7SE+rjizBMoC?=
 =?us-ascii?Q?YDCY1at4wIzoDMP8VombKXIqPb+EeCRMpX3jzVFrlI8f+ZbKEWSS1vyr9QWm?=
 =?us-ascii?Q?5TKEZh0+6ni01mrlocGfrKFQO0HSQwtvrAKCja8Pdrr+TeAmzwSyok85cp8r?=
 =?us-ascii?Q?fVGVXFi+zWDlP1qeqOMdomv4j+al4FcLXfT56obxeS5ztDE0EyZNkVnztAzU?=
 =?us-ascii?Q?+5pUvJ5HpxeZr3L53Ze/9fnwgZOW/tPr+hqNqcy5YR80KXylp2SDPo+c4iza?=
 =?us-ascii?Q?CQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a6ae14e-5090-466c-3a89-08da758f5be7
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Aug 2022 20:33:01.2450 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: I74Rdpz/2wLrijtzUcsSQ+qmRwGF5UX/+kUyTGcmHVDChFGzRmvwptxE0czMHxfb85mVuP6iyVJJazyA+c3rAQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1776
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/8] drm/i915: sanitize dc state in rpm
 resume
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
Cc: jani.nikula@intel.com, chris.p.wilson@intel.com, saurabhg.gupta@intel.com,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 21, 2022 at 03:29:51PM +0530, tilak.tangudu@intel.com wrote:
> From: Tilak Tangudu <tilak.tangudu@intel.com>
> 
> During runtime resume the display init sequence is called via
> intel_display_power_resume() -> icl_display_core_init()
> which should restore the display HW state. For restoring the DC9 enabled
> state in DC_STATE_EN, gen9_sanitize_dc_state() should be called on the
>  runtime resume path too to avoid the
> 
> [  513.818190] i915 0000:03:00.0: [drm] *ERROR DC state mismatch (0x8 -> 0x0)*
> 
> Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
Cc: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 589af257edeb..799f84d3eed6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -2229,6 +2229,7 @@ void intel_display_power_suspend(struct drm_i915_private *i915)
>  void intel_display_power_resume(struct drm_i915_private *i915)
>  {
>  	if (DISPLAY_VER(i915) >= 11) {
> +		gen9_sanitize_dc_state(i915);
>  		bxt_disable_dc9(i915);
>  		icl_display_core_init(i915, true);
>  		if (intel_dmc_has_payload(i915)) {
> -- 
> 2.25.1
> 
