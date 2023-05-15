Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4020D70382B
	for <lists+intel-gfx@lfdr.de>; Mon, 15 May 2023 19:28:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FB2210E0BE;
	Mon, 15 May 2023 17:28:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A74210E0BE
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 May 2023 17:28:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684171711; x=1715707711;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=kinm8zOO5WN4VU2NN6HWVxCGEs8UTKCd/eRbhqNsc08=;
 b=CdRVS59r3G7/eSgvz/GRSjkEwhAz1fTgWuEMD1KeVglzRRDYyOBgAq5T
 1R0z+CB0fc5B9gcXvoOMh3pYTDI4CfUCqvshqGh4NZf6dYm6wo2asQMLE
 Oky8Yvo14CeGAg0Qijp/k/gVDwjl1mEnc6BPIJClSnxKEfdUwyE2l2kvt
 9Lq2/NF7+NQaAkAJWZ/+cN2fY4v4OvoC1Vb5DUIYDPzpWuleHcDicVkNg
 mbKIWhFydFdp5vrKt83nXQ7Uc8rt++67tckXh5ud8RDZSmgdFba2noUdQ
 kP4fLPiiVb8Nuy95c5w50Xlt7UWcK3pUXHrfuUkp+8li4SWs2sgjq/920 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="379425603"
X-IronPort-AV: E=Sophos;i="5.99,277,1677571200"; d="scan'208";a="379425603"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 10:28:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="695098761"
X-IronPort-AV: E=Sophos;i="5.99,277,1677571200"; d="scan'208";a="695098761"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 15 May 2023 10:28:29 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 15 May 2023 10:28:29 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 15 May 2023 10:28:29 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.109)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 15 May 2023 10:28:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RnURUSl/Wg7pQ0QyRZWj5Jw4/dYsfUuMo5DzZ/B0/yONgmCBycGyUo9UVPMoZtwrXlgB34cY0ys4ymPWI/pmkL7cVzRe4pqDw0MJuBsGcJ9y2zlXFvWdGrf8zQFXxougpPXbg0e7RbubbWYWqy2zODkLIK2ti+j5W7NDzJEvyzkYXkYL8IL05Shd920axPNOX0WjkRAOMqg716Jcj2J+o74eMaTn3n8VW9JNG9h/5iOeFYLYJvgz+iu3bTeI2esHITC5h+ProVF33Ba8xTZnIozswhaAtHViGaCxIr8a/XgKfh3UsFFA/eg6f5sCVMzkGCMMooj4tMBdCnJG53hlwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sop2PsuXUG6Jy2mlJDw7Ea/Sqi0dROH+xRG2j2MzXKs=;
 b=QzA+Kp6m9qMvQH3g99PXNyHuGQMvXFWPmiceyBPkt+JCaeIDoB5d3w1awGc+3BpVWeJnYCH8/Z8eLCBRMUiTXHDyZO5GsjiIfBC3dXa/2lw2C3972bTm7CJAlAznhVr9Nt31B9Yg8ee7RC0ufTTX62byXHiOcCrpLTE9RY3mTstDiLVLoX2xdbOABxZOxBRxBdEUZ1SwhCdMr9iyOmkbnM38LF5itVhtVVod9yrK3g4mmFxKtFIhTYdKnQEgEGE2vN3kO943Ux0rCADNDa/3tFFH6We3zsvQKcLPxNTa8Ozap472fitrRvdh6EdiRcN9DW/fzm7QZWSX8sFjF02+Xw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 CO1PR11MB4835.namprd11.prod.outlook.com (2603:10b6:303:9e::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6387.30; Mon, 15 May 2023 17:28:27 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396%6]) with mapi id 15.20.6387.030; Mon, 15 May 2023
 17:28:27 +0000
Date: Mon, 15 May 2023 10:28:23 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
Message-ID: <20230515172823.GJ10045@mdroper-desk1.amr.corp.intel.com>
References: <20230513021438.185352-1-radhakrishna.sripada@intel.com>
 <168416187402.13184.12797174790557715354@gjsousa-mobl2>
 <DM4PR11MB597193BE801E39B1A1FDE4A887789@DM4PR11MB5971.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <DM4PR11MB597193BE801E39B1A1FDE4A887789@DM4PR11MB5971.namprd11.prod.outlook.com>
X-ClientProxiedBy: SJ0PR13CA0152.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::7) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|CO1PR11MB4835:EE_
X-MS-Office365-Filtering-Correlation-Id: 60e66069-3ebf-4610-141d-08db5569cacf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: u1hWXBRIjmHmm8qVLDTi4infUVDvIX8nkLdN2d3Wk6JB5QowuxWDdcjuwrphA8dhoWFiXzfL3xFh8HCfLRiHKIRLELsG6gh66ISazKsshVn/AzygEkjbxx/4d6x+rg6jgqG7bQ7gzHilKhsYG+3zMP8aACDMJrorsfzO3cqXmPDFWt9//OmTzDdhTL3DLag/IlVDH91zCpI+bw8EXBUpE61iQjvzE4hhAuDt3KqplDD2yg4D0Wb6i8bbJzMbkyatibosSpOqRdwwUOlmb36kJNIKrwuAHRErik8emTtX2/5bguk4q7Uv87UiPBxmG3RJWCy4wWQ6toytg3kILfpWo8dBBpfhAUFMvjkoYDibc5OqvcamEqqmpk5mZX8sn9Nny8MAlvEgUdezWRoVDZ6jv5TnUcGpWCdL7ARExjKiveu1By9e8ByQD7ytBb+fYx7uaRN1AM0nIQgDc3M9QQQvI5OKA+3nuyQnk88VNFGsCj5+XNKtJIH3DD3TfZs41RXOk6xkvxKKGPAqBmhz3r0IRqTIQCiZoLo71rR6bP7Z5mqN/dv+ANz8G9JThXVtdjVW
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(396003)(366004)(136003)(39860400002)(376002)(451199021)(66556008)(54906003)(478600001)(4326008)(66476007)(6636002)(66946007)(6666004)(316002)(6486002)(8936002)(2906002)(8676002)(6862004)(41300700001)(5660300002)(26005)(1076003)(82960400001)(107886003)(33656002)(86362001)(38100700002)(83380400001)(53546011)(6512007)(186003)(6506007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?bCSvw1t+RO0n9+vgIwnfocmq5yufkO77jMLOApfjk+yH8fAyj66V8JtNl1fF?=
 =?us-ascii?Q?HtHfHBMiRDPcil0lT12f5GB0i8Oh1yW4v7NPEOQsEZ/dGC7QSLOrnAI8IGGd?=
 =?us-ascii?Q?Txd+DcwTnkrwAo95ujDw0YNQ/ZDd5CKKONthbERBbja9TuPQEUirtZBQ+yVf?=
 =?us-ascii?Q?JfMcOnjcNd2NyPWy9CggPUdV7+J05QohEehk4aUrXeNEJB9hjzrVvpiX10Zg?=
 =?us-ascii?Q?n8R4UE83vR17A+kbnHi5JqXxFA2T6qG37QrKEIkYg51WqzDza5smPLSVNvje?=
 =?us-ascii?Q?uvWB7sl8NyWZ/d2rmIxceqr0xQH1H2Wohc+v37ybcaf0qwtdz9QKEBcImHSI?=
 =?us-ascii?Q?d58zFxB4zEQHO03f/FZdgiWoWJGzVCqkQIRVCq4/IFh//FI2YWSwdahYzXlI?=
 =?us-ascii?Q?gsBo4C9ly8UcbkGhyLh3D5Va5s4cyvbSvl02Q+BxsmK3hVrmTgpzKEIDr7NJ?=
 =?us-ascii?Q?6FaA2SFT9IBCbjtVGx8//NZhZMQluePHHz/v0UGh6gc/nfMx+e07BO6qdXJv?=
 =?us-ascii?Q?IO+ax5mvT/TrFbR5To52Z+yq7q+l62hKDHhsW38nBltptz2ETId/8l6llMZL?=
 =?us-ascii?Q?zPNJ9jJcUZ3jckF7RQL+qa+MT4+neBil46wdK92XG67fqsRFteoD6tCWkBDw?=
 =?us-ascii?Q?AGkFxQt7BaMe6d0YbWBxt5Bc0/+H2EA5B1L7jiopUuJ9LKQyHOvlpoGGUotG?=
 =?us-ascii?Q?JW9PDte2jMbSvA//xwqTHbnTiFi5rOdRdzy8Z57HBsaGpWTcBjA1/0IOLX8B?=
 =?us-ascii?Q?IQyP7hAkSH6xZSh/Rhrhdm9A4espKtarWA00+TrILC+QsXSgyVtKZsCPBYa4?=
 =?us-ascii?Q?DtIH4T5G/MGHZSzqrBgNEEYBdRbZaQA+4/jsIBL0IRTcK9qVuD+9gIPNy5a5?=
 =?us-ascii?Q?6QOGCcb93XEpvnenlXv4rhPemLI6EZRzEQPeKwt2rWhc7aVAgDqmfHVohrxo?=
 =?us-ascii?Q?niQPWNNndTN3e/C1EyS3k58MAiUao4b4Os99XjtRDy507mpI6H2yHI7lTmnj?=
 =?us-ascii?Q?JZpNrz+MjXFuZfGLXZX76fUdrh+sA6AIv6eCKDRGu7KaBmk+sASgunfxt6CF?=
 =?us-ascii?Q?MjL6f8E5j1HJqSQw2WrNhvyAFc8EgnfdSiu91ihH+Zj62if4HEhcwPJPQz9E?=
 =?us-ascii?Q?weZI++fJ2+RfCRGytHi/+qzQf12zvSjnnVZ4KRIvdsshrxXPY5BCVARGW43h?=
 =?us-ascii?Q?nVb3yRaVj/pdiIucrH8EK3rcFiF1qSvOEZbpx9PVy54MqOV8nUkcCaSS2hK+?=
 =?us-ascii?Q?EB4XwjZzkhhQf6n5NwCKVjf9yN5uLWxiYeKkp3S3pZ8OJtIBm3V6whGECBFr?=
 =?us-ascii?Q?sLRxYunYoU06Qdinue9o31yTAxQJ4/+1yu7hVJEfxD0xwExwFnTwk9tcxSVC?=
 =?us-ascii?Q?U8pMmthqXeqMwCDlMbjVatddTcA4wR45rlo1cK5h765oWvWuFN+UN/DUpv6l?=
 =?us-ascii?Q?cDwKdf0aoRKI5C+rfmXyATc0oNYOX8DVYxEhUyfdqjESR9ORyUguS+wUVxfb?=
 =?us-ascii?Q?9WwhnVHmLcRU29ZPT/fHtFOJyVGdxnoEOhGexMJXLAaqmM4IgqOd6OgPmlh1?=
 =?us-ascii?Q?r2yhomn2QcBWj0/ZzI/4sCOiUQlHx1aJ1BcrOFljR1ZkBLJV0WoU8g/cb4+/?=
 =?us-ascii?Q?Aw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 60e66069-3ebf-4610-141d-08db5569cacf
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2023 17:28:26.7750 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: r+w7PYlInsT71vaja8cILaivkbIOXliGiP1mL7edblIwzzD9hNfnNDeKp6cYHf/XA6ZUcr9xBkFHcwbpVVJ7gDyrj02gr91TAIfNGJpzKmg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4835
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/mtl: Extend Wa_16014892111
 to MTL A-step
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, May 15, 2023 at 08:42:25AM -0700, Sripada, Radhakrishna wrote:
> Hi Gustavo,
> 
> > -----Original Message-----
> > From: Sousa, Gustavo <gustavo.sousa@intel.com>
> > Sent: Monday, May 15, 2023 7:45 AM
> > To: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>; intel-
> > gfx@lists.freedesktop.org
> > Cc: Justen, Jordan L <jordan.l.justen@intel.com>; Sripada, Radhakrishna
> > <radhakrishna.sripada@intel.com>; Kalvala, Haridhar
> > <haridhar.kalvala@intel.com>; Roper, Matthew D
> > <matthew.d.roper@intel.com>
> > Subject: Re: [PATCH v2 1/2] drm/i915/mtl: Extend Wa_16014892111 to MTL A-
> > step
> > 
> > Quoting Radhakrishna Sripada (2023-05-12 23:14:37)
> > >The dg2 workaround which is used for performance tuning
> > >is needed for Meteorlake A-step.
> > >
> > >v2: Limit the WA for A-step
> > 
> > I think what Matt meant in the review for v1 was that this commit should
> > be rather about the tuning setting rather than the workaround itself. As
> > such, maybe we should change the commit message so that it focus on the
> > recommended tuning setting, i.e., instead of "Extend Wa_16014892111 to
> > MTL A-step" as subject, we should write something like "Apply
> > recommended tuning setting for ..." and give details.
> > 
> > That said, since we are focusing on the tuning settings here, I guess
> > this could be squashed with the second patch and we could add a note
> > about DRAW_WATERMARK needing Wa_16014892111 for A steps of MTL.
> 
> There are 2 aspects wrt. DRAW_WATERMARK. One that is a workaround
> which is applied on each context switch and is only applicable for DG2
> and MTL-A step which is what this patch does.

So just to be clear --- the workaround doesn't directly ask us to do
anything specific with DRAW_WATERMARK.  What the workaround says is that
*if* we wind up needing to change the value of DRAW_WATERMARK away from
the hardware default, then we need to handle the save/restore on each
context switch ourselves since the hardware doesn't process this
register properly on context switch and will lose its value.

It turns out that MTL has a tuning setting that suggests changing
DRAW_WATERMARK to a non-default value.  Since the tuning setting is
constant (i.e., it doesn't change at runtime based on other factors), we
can ignore the "save" part of the workaround and just hardcode the
"restore" part to the value specified by the tuning setting.  But what
we're programming here is still the tuning setting, it's just that the
way we implement the tuning is adjusted by the workaround's guidance.

It might make sense to swap the order of these patches --- make the
first patch add the tuning setting (in the normal manner) for all
steppings not impacted by the workaround.  Then come back and apply the
tuning setting in the special way on the A-step hardware to satisfy the
guidance of Wa_16014892111.  Or maybe it's simpler to just ignore the
tuning setting on A-step entirely; that's a pre-production stepping of
the platform, so it's not really going to get used for performance work
anyway.  If we don't bother programming the tuning on A-step, then we
also don't need to worry about the workaround either.


Matt

> 
> The other is the tuning parameter setting which is applicable for all
> of MTL which is a onetime configuration Handled by the next patch
> during ctx_workarounds_init.
> 
> - Radhakrishna Sripada
> 
> 
> > 
> > --
> > Gustavo Sousa
> > 
> > >
> > >Bspec: 68331
> > >Cc: Haridhar Kalvala <haridhar.kalvala@intel.com>
> > >Cc: Matt Roper <matthew.d.roper@intel.com>
> > >Cc: Gustavo Sousa <gustavo.sousa@intel.com>
> > >Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> > >---
> > > drivers/gpu/drm/i915/gt/intel_lrc.c | 4 +++-
> > > 1 file changed, 3 insertions(+), 1 deletion(-)
> > >
> > >diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c
> > b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > >index 81a96c52a92b..9c1007c44298 100644
> > >--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> > >+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > >@@ -1370,7 +1370,9 @@ gen12_emit_indirect_ctx_rcs(const struct
> > intel_context *ce, u32 *cs)
> > >                                               cs, GEN12_GFX_CCS_AUX_NV);
> > >
> > >         /* Wa_16014892111 */
> > >-        if (IS_DG2(ce->engine->i915))
> > >+        if (IS_DG2(ce->engine->i915) ||
> > >+            IS_MTL_GRAPHICS_STEP(ce->engine->i915, M, STEP_A0, STEP_B0) ||
> > >+            IS_MTL_GRAPHICS_STEP(ce->engine->i915, P, STEP_A0, STEP_B0))
> > >                 cs = dg2_emit_draw_watermark_setting(cs);
> > >
> > >         return cs;
> > >--
> > >2.34.1
> > >

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
