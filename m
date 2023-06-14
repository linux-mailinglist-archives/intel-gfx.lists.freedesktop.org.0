Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C7F3772F25E
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jun 2023 04:02:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E68D010E3FC;
	Wed, 14 Jun 2023 02:02:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E554010E098;
 Wed, 14 Jun 2023 02:02:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686708159; x=1718244159;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=uXE/KQbrUuETTo82aQ9eOemVJZSSAjB1UwtINmtrlbg=;
 b=J6PSAxGMzVu2kPDv4bniiUHriiS0mSFqrjZLTGi7D6uwzVyyI6qe13TB
 25ia6xbZyOf6Jrp/yjaonq83+fjHLnugjMlxUOuPi3Oj5SVaq1ax+wGXo
 Q4IgQh1HFFOC7M+cH2T/1YAblv3sKAKYGQKGn59/dmsfHH+6m/s0bh92w
 JGK8HbJnhOMpg1buHEV7qzHOUN1peW8Ra0iBFfUPs3q0YS5szw6ERRtH5
 I1zsojxlc+tIdXlsC80LRu38Gs35hQoffygkEKyfTFD/YpUr+xV79nQ9t
 rxBKs7e7iS0mPsxyCZmYWTb7QIP5mJl6UInc9vJBHtxXNGIwUfdUCJLLX Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="343191665"
X-IronPort-AV: E=Sophos;i="6.00,241,1681196400"; d="scan'208";a="343191665"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 19:02:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="958634210"
X-IronPort-AV: E=Sophos;i="6.00,241,1681196400"; d="scan'208";a="958634210"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP; 13 Jun 2023 19:02:38 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 13 Jun 2023 19:02:38 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 13 Jun 2023 19:02:38 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 13 Jun 2023 19:02:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K1oMEE8xELGvtvLe3MiAtMwbMx+wO9VegH6H0542lgcqXcr16SXclWIWEdXRTsI3OKWvwv3Mj2OnAEw+BdLNvvpfVxgX8g961ZZk7GwrvWjsiLD+YMbY5OkELGrCQ6VtRA+rt173Z/lLASTR03AzbBE8LEHJLCzNukXJ1o0zooy1PykdcFT6X7jhhYa2/AFb50PM0vTpVAtRkz9321cPKIpp8QVacyjKz3sy+XaTdzZdvXUFkITgGdV8DlO2KoDIEybuitMW5vriw5l+LzkLPRmg4KM3Qhqn+mnXGG8sKBWGNKnjhN+iF/Ss98O6dvDKpnmlp/IPyvsCCzYX4g6YCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PZncZgx3alnCQ72B64hF5j4LPnMizfEiQdjFxAY5nQ4=;
 b=AryYqj/HoBD5sqo3PIH8znUVP4g/xuHAHjS7J3VZ78WuOO5yEiDMmLY4vnc9EaSe4H+z/bIZSnUMLcMiU8EVF6oUXpbhdYgyO/Yucw2uzY1Ou3n2BvXyo7TieKjcjIhp2T+14eHiM3FE75xjWa1KkFtdJDIWFtz+1Fr5+yj1wgEiDzX7vtu49w1SEN6/AUWdqmRDAKhVylxjTnHuS/At3uSMG152ZBb2jBIrGfTkB23iH2I/yHK31a/1qB2O5v4IJkLFWmf2Mu2KU3CNxfDJ71sCltdMifDHrZqaICh8Qf7UOUJEnlNBzfe0JR0I36juxL7R5e391v1VLpDQqQMjmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 DM4PR11MB5552.namprd11.prod.outlook.com (2603:10b6:5:399::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6455.46; Wed, 14 Jun 2023 02:02:36 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396%6]) with mapi id 15.20.6455.043; Wed, 14 Jun 2023
 02:02:36 +0000
Date: Tue, 13 Jun 2023 19:02:32 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <20230614020232.GS5433@mdroper-desk1.amr.corp.intel.com>
References: <20230614001315.1552497-1-radhakrishna.sripada@intel.com>
 <20230614001315.1552497-2-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230614001315.1552497-2-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: SJ0PR13CA0118.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::33) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|DM4PR11MB5552:EE_
X-MS-Office365-Filtering-Correlation-Id: fa054717-c929-4cc6-317a-08db6c7b6bfc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MMb3CdH/3sU656/b3kRob+VJ440xdg796Wq6EAgviViI5OxNtjIr8XZ2mvLs5taAA+URKOeQLOHVv3ZcCxDHc07engqUSkKLIg5+4B2/ZKYfiSM62uN1EhXcQOEy5Z9qV+UefmUibf2yPHR0LlKwGajrCr282VhQPesuFOdoKzqp0kgwj5r8LjqbAF2Te4uh8+rz3/TVxgVMqSALV1AU2kws2ep5gAp6vtD166PS42viTpJ5G5LSidW4aIAzk/yaECqi5rsudBcmaCdlLMRp9AND0HT3iiA4eCOO5kFk/T9PUjY0OnOJkPg/CZgJlxmoFc+b+nch9eOgc/Pgd93OYVeQa0vs40ahbbQWcAZCnUWoBUjrUhbkd+/qoLO06qKOG0EJRzQJtN3zk6syZ7PlggtXP3jIWausa8FgtWP6PMqZdd34drc/Zte1fC+c7tvxmwS45X66N/WVBtdprJNS2HUoPhgFLTsGvjtmBcfNcJqL51U0RcvHRScqACt6w12hesaM5zwVfRw1tWbDC3CEpZ9NLZ1LXG72DeLZkBvuOb0BInH6vgdkXW7SEWf/QrUT
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(396003)(346002)(376002)(366004)(136003)(451199021)(66556008)(83380400001)(6862004)(6636002)(82960400001)(4326008)(41300700001)(38100700002)(316002)(66946007)(66476007)(33656002)(1076003)(6486002)(6512007)(26005)(107886003)(6506007)(6666004)(450100002)(478600001)(2906002)(86362001)(5660300002)(8936002)(8676002)(186003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?KqLDPU3yUHBRaPVPIG2v4VaEnRDZj45y4m2QTHTj0e6GQgHcDIWwCaKx28lD?=
 =?us-ascii?Q?S8iha+UzWzRWfQAOmYUj5qAtK2HG46c+/VeqEUjJAQMGFdnSg5IAKBzuE/rV?=
 =?us-ascii?Q?0V9m/fbbkd0avgjwITFAwuBeZ+wVQHjFDVoIWKhDG5eo+3rnFlry5gffGggB?=
 =?us-ascii?Q?vzI/DnbRogIXLiXjNZ6DspBKhv6LNQnQgLwZQcIsTKUN6vGzbBXWpxd8N+B4?=
 =?us-ascii?Q?tRMVJyU+buDdEvj9g20qTBW8BkBqp45q+SVvctdTreEx/0rLDgeWJrjHN81g?=
 =?us-ascii?Q?A1urd71LYYvUrDfDLfrCz1P382lUZ/C/y8N9hnlMbkwEOhxcFPjmh+RgG50g?=
 =?us-ascii?Q?A7J5xw+RStP7l17Vfm7VeT/0hbKvqit+xxjucSFLhxWMWeP4kEIlQNv5b2F2?=
 =?us-ascii?Q?PAg1k9PbLRmfH3iUCqvkIMQAosDuEc9VOc5e7EBQqc5EQKbiEuksFKvL/1aQ?=
 =?us-ascii?Q?4y5ZMWP2/AqDJWntPytbh8xYnQVXlMdUVaNY9NsaNaFu7RwT1JYC+nEGVQYt?=
 =?us-ascii?Q?ueXdTvtN0oRqLPJsB3X87F+9lShOc6MohGfP+debCUfsK1UuDGLPTumezduZ?=
 =?us-ascii?Q?fqH+UQpS3q/t6k0UbV4lVEWOqOyQG6ISpcN+ZJEtoaWxcp7Qjel4dvqVqbvY?=
 =?us-ascii?Q?uHrjrB0obJ0EGD6lFS+oV0MRLCTVxe9xMTtQ8atcNK6EKtkpIt9j1X5NEf8g?=
 =?us-ascii?Q?dQzBTsJnH1KyFMKl+2wDiyGsXy8L+5UX1qaI6aSiLOwt8FilvLZwbWmyi3Mo?=
 =?us-ascii?Q?IkiNPqskDTQXkNBg6ungj3FY1SQjfybZX8pjnjs7QEhh3PbXz0tyC8U1zLfw?=
 =?us-ascii?Q?oKqeC4VAAIQQ/NsEbj3Zh6yor7Fg5UJoPNBNJHWEeAC+tzTHmefJ/MTt3WNG?=
 =?us-ascii?Q?Z0S9+XZvefnPQHf5uZyW/i0CCtHcIr2Um3DUR8J5gEyg32237yHuswvhy3R+?=
 =?us-ascii?Q?BPuSM4siv1CG464TyZR2Y/T/T15TkAYRbdQN6SMTRwUY4zdEcdxFsT3sXKfn?=
 =?us-ascii?Q?41SchuoOu6z08rdsm78b94NqqXkgWARF9sBWhTaFAIdHxe/h45KNQNFFLz3g?=
 =?us-ascii?Q?5Kpo1lxx4E9q7BAr4Fi9ynAR/Y8oM6mcq7v/M4KMFX7rMNC9Asx/u3wbTtw4?=
 =?us-ascii?Q?wJk/PWtkX+63KNAVejWzBhqay6NvmMMtCl0l84CRJXPzSSMq6oYQDcRIdCdx?=
 =?us-ascii?Q?P3i2XSlTIe2GhcqcctYkFBobTDE7rn20fc4+Uny+SgPzN0VxybZJDSW2PfTA?=
 =?us-ascii?Q?SV5gioGFwqTZSQOE+ABPLgUxCaJondnaaAHHueqKrAdf12mRmNkyF32fsf50?=
 =?us-ascii?Q?ZobaeRGYQaiaAadRjL56K4L+KthrNnxKuhv37ZfMy66pYAKwE54dWFI3s8S3?=
 =?us-ascii?Q?nY0OZ0z7txjOWaxtPpYDCkz6F2/uPr7p31QAFhwEW7lK7C1WGPJkxiHS3lv1?=
 =?us-ascii?Q?LXj4zrUq1sipM3/j5+6qinS9tgsh5vDRObRjfQubgy90WUWSdxgnKJSqWSCB?=
 =?us-ascii?Q?KWkEaO48UVxPvQVfZEnIiIydJRnBYgkbUIbn8wzxuNVB5UtjevOy5enrbnlC?=
 =?us-ascii?Q?ndW4fNf/XGqtIBZvCsTpNi3g4pSReofmzg8TeoyiRce65/0pzMUhifDwCjqn?=
 =?us-ascii?Q?uA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fa054717-c929-4cc6-317a-08db6c7b6bfc
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jun 2023 02:02:35.4811 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: X0sFOJq8My4AzhdNEsO6GOAbQIFFYMhxAGh4qXuP999e+owklxSj59RbLJG/LrOCdvzJws/6FURdI4HOAb1YIKaYHbQIdKIAcgpqbshpfh0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5552
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC 1/2] drm/xe: Move mmio read/write functions to
 xe_mmio.c
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jun 13, 2023 at 05:13:14PM -0700, Radhakrishna Sripada wrote:
> Move the register read/write apis to xe_mmio.c to prepare for
> adding tracing infrastructure for the same. Adding tracing support
> in xe_mmio.h messes with the compilation of the display code.
> 
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/gpu/drm/xe/xe_mmio.c | 113 ++++++++++++++++++++++++++++++
>  drivers/gpu/drm/xe/xe_mmio.h | 129 ++++-------------------------------
>  2 files changed, 128 insertions(+), 114 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/xe_mmio.c b/drivers/gpu/drm/xe/xe_mmio.c
> index 475b14fe4356..70ad1b6a17a0 100644
> --- a/drivers/gpu/drm/xe/xe_mmio.c
> +++ b/drivers/gpu/drm/xe/xe_mmio.c
> @@ -435,6 +435,119 @@ static const struct xe_reg mmio_read_whitelist[] = {
>  	RING_TIMESTAMP(RENDER_RING_BASE),
>  };
>  
> +inline u8 xe_mmio_read8(struct xe_gt *gt, struct xe_reg reg)

We shouldn't have 'inline' on non-static functions in a .c file (and
generally we don't really want it on static functions either since the
compiler can generally do a better job of figuring out whether or not
inlining would be beneficial).


Matt

> +{
> +	struct xe_tile *tile = gt_to_tile(gt);
> +
> +	if (reg.addr < gt->mmio.adj_limit)
> +		reg.addr += gt->mmio.adj_offset;
> +
> +	return readb(tile->mmio.regs + reg.addr);
> +}
> +
> +inline void xe_mmio_write32(struct xe_gt *gt,
> +			    struct xe_reg reg, u32 val)
> +{
> +	struct xe_tile *tile = gt_to_tile(gt);
> +
> +	if (reg.addr < gt->mmio.adj_limit)
> +		reg.addr += gt->mmio.adj_offset;
> +
> +	writel(val, tile->mmio.regs + reg.addr);
> +}
> +
> +inline u32 xe_mmio_read32(struct xe_gt *gt, struct xe_reg reg)
> +{
> +	struct xe_tile *tile = gt_to_tile(gt);
> +
> +	if (reg.addr < gt->mmio.adj_limit)
> +		reg.addr += gt->mmio.adj_offset;
> +
> +	return readl(tile->mmio.regs + reg.addr);
> +}
> +
> +inline u32 xe_mmio_rmw32(struct xe_gt *gt, struct xe_reg reg, u32 clr,
> +			 u32 set)
> +{
> +	u32 old, reg_val;
> +
> +	old = xe_mmio_read32(gt, reg);
> +	reg_val = (old & ~clr) | set;
> +	xe_mmio_write32(gt, reg, reg_val);
> +
> +	return old;
> +}
> +
> +inline void xe_mmio_write64(struct xe_gt *gt,
> +			    struct xe_reg reg, u64 val)
> +{
> +	struct xe_tile *tile = gt_to_tile(gt);
> +
> +	if (reg.addr < gt->mmio.adj_limit)
> +		reg.addr += gt->mmio.adj_offset;
> +
> +	writeq(val, tile->mmio.regs + reg.addr);
> +}
> +
> +inline u64 xe_mmio_read64(struct xe_gt *gt, struct xe_reg reg)
> +{
> +	struct xe_tile *tile = gt_to_tile(gt);
> +
> +	if (reg.addr < gt->mmio.adj_limit)
> +		reg.addr += gt->mmio.adj_offset;
> +
> +	return readq(tile->mmio.regs + reg.addr);
> +}
> +
> +inline int xe_mmio_write32_and_verify(struct xe_gt *gt,
> +				      struct xe_reg reg, u32 val,
> +				      u32 mask, u32 eval)
> +{
> +	u32 reg_val;
> +
> +	xe_mmio_write32(gt, reg, val);
> +	reg_val = xe_mmio_read32(gt, reg);
> +
> +	return (reg_val & mask) != eval ? -EINVAL : 0;
> +}
> +
> +inline int xe_mmio_wait32(struct xe_gt *gt, struct xe_reg reg, u32 val,
> +			  u32 mask, u32 timeout_us, u32 *out_val,
> +			  bool atomic)
> +{
> +	ktime_t cur = ktime_get_raw();
> +	const ktime_t end = ktime_add_us(cur, timeout_us);
> +	int ret = -ETIMEDOUT;
> +	s64 wait = 10;
> +	u32 read;
> +
> +	for (;;) {
> +		read = xe_mmio_read32(gt, reg);
> +		if ((read & mask) == val) {
> +			ret = 0;
> +			break;
> +		}
> +
> +		cur = ktime_get_raw();
> +		if (!ktime_before(cur, end))
> +			break;
> +
> +		if (ktime_after(ktime_add_us(cur, wait), end))
> +			wait = ktime_us_delta(end, cur);
> +
> +		if (atomic)
> +			udelay(wait);
> +		else
> +			usleep_range(wait, wait << 1);
> +		wait <<= 1;
> +	}
> +
> +	if (out_val)
> +		*out_val = read;
> +
> +	return ret;
> +}
> +
>  int xe_mmio_ioctl(struct drm_device *dev, void *data,
>  		  struct drm_file *file)
>  {
> diff --git a/drivers/gpu/drm/xe/xe_mmio.h b/drivers/gpu/drm/xe/xe_mmio.h
> index 3c547d78afba..2aa2c01e60dd 100644
> --- a/drivers/gpu/drm/xe/xe_mmio.h
> +++ b/drivers/gpu/drm/xe/xe_mmio.h
> @@ -20,120 +20,21 @@ struct xe_device;
>  #define GEN12_LMEM_BAR		2
>  
>  int xe_mmio_init(struct xe_device *xe);
> -
> -static inline u8 xe_mmio_read8(struct xe_gt *gt, struct xe_reg reg)
> -{
> -	struct xe_tile *tile = gt_to_tile(gt);
> -
> -	if (reg.addr < gt->mmio.adj_limit)
> -		reg.addr += gt->mmio.adj_offset;
> -
> -	return readb(tile->mmio.regs + reg.addr);
> -}
> -
> -static inline void xe_mmio_write32(struct xe_gt *gt,
> -				   struct xe_reg reg, u32 val)
> -{
> -	struct xe_tile *tile = gt_to_tile(gt);
> -
> -	if (reg.addr < gt->mmio.adj_limit)
> -		reg.addr += gt->mmio.adj_offset;
> -
> -	writel(val, tile->mmio.regs + reg.addr);
> -}
> -
> -static inline u32 xe_mmio_read32(struct xe_gt *gt, struct xe_reg reg)
> -{
> -	struct xe_tile *tile = gt_to_tile(gt);
> -
> -	if (reg.addr < gt->mmio.adj_limit)
> -		reg.addr += gt->mmio.adj_offset;
> -
> -	return readl(tile->mmio.regs + reg.addr);
> -}
> -
> -static inline u32 xe_mmio_rmw32(struct xe_gt *gt, struct xe_reg reg, u32 clr,
> -				u32 set)
> -{
> -	u32 old, reg_val;
> -
> -	old = xe_mmio_read32(gt, reg);
> -	reg_val = (old & ~clr) | set;
> -	xe_mmio_write32(gt, reg, reg_val);
> -
> -	return old;
> -}
> -
> -static inline void xe_mmio_write64(struct xe_gt *gt,
> -				   struct xe_reg reg, u64 val)
> -{
> -	struct xe_tile *tile = gt_to_tile(gt);
> -
> -	if (reg.addr < gt->mmio.adj_limit)
> -		reg.addr += gt->mmio.adj_offset;
> -
> -	writeq(val, tile->mmio.regs + reg.addr);
> -}
> -
> -static inline u64 xe_mmio_read64(struct xe_gt *gt, struct xe_reg reg)
> -{
> -	struct xe_tile *tile = gt_to_tile(gt);
> -
> -	if (reg.addr < gt->mmio.adj_limit)
> -		reg.addr += gt->mmio.adj_offset;
> -
> -	return readq(tile->mmio.regs + reg.addr);
> -}
> -
> -static inline int xe_mmio_write32_and_verify(struct xe_gt *gt,
> -					     struct xe_reg reg, u32 val,
> -					     u32 mask, u32 eval)
> -{
> -	u32 reg_val;
> -
> -	xe_mmio_write32(gt, reg, val);
> -	reg_val = xe_mmio_read32(gt, reg);
> -
> -	return (reg_val & mask) != eval ? -EINVAL : 0;
> -}
> -
> -static inline int xe_mmio_wait32(struct xe_gt *gt, struct xe_reg reg, u32 val,
> -				 u32 mask, u32 timeout_us, u32 *out_val,
> -				 bool atomic)
> -{
> -	ktime_t cur = ktime_get_raw();
> -	const ktime_t end = ktime_add_us(cur, timeout_us);
> -	int ret = -ETIMEDOUT;
> -	s64 wait = 10;
> -	u32 read;
> -
> -	for (;;) {
> -		read = xe_mmio_read32(gt, reg);
> -		if ((read & mask) == val) {
> -			ret = 0;
> -			break;
> -		}
> -
> -		cur = ktime_get_raw();
> -		if (!ktime_before(cur, end))
> -			break;
> -
> -		if (ktime_after(ktime_add_us(cur, wait), end))
> -			wait = ktime_us_delta(end, cur);
> -
> -		if (atomic)
> -			udelay(wait);
> -		else
> -			usleep_range(wait, wait << 1);
> -		wait <<= 1;
> -	}
> -
> -	if (out_val)
> -		*out_val = read;
> -
> -	return ret;
> -}
> -
> +inline u8 xe_mmio_read8(struct xe_gt *gt, struct xe_reg reg);
> +inline void xe_mmio_write32(struct xe_gt *gt,
> +			    struct xe_reg reg, u32 val);
> +inline u32 xe_mmio_read32(struct xe_gt *gt, struct xe_reg reg);
> +inline u32 xe_mmio_rmw32(struct xe_gt *gt, struct xe_reg reg, u32 clr,
> +			 u32 set);
> +inline void xe_mmio_write64(struct xe_gt *gt,
> +			    struct xe_reg reg, u64 val);
> +inline u64 xe_mmio_read64(struct xe_gt *gt, struct xe_reg reg);
> +inline int xe_mmio_write32_and_verify(struct xe_gt *gt,
> +				      struct xe_reg reg, u32 val,
> +				      u32 mask, u32 eval);
> +inline int xe_mmio_wait32(struct xe_gt *gt, struct xe_reg reg, u32 val,
> +			  u32 mask, u32 timeout_us, u32 *out_val,
> +			  bool atomic);
>  int xe_mmio_ioctl(struct drm_device *dev, void *data,
>  		  struct drm_file *file);
>  
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
