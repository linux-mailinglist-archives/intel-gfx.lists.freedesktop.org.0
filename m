Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 279656AD217
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Mar 2023 23:55:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6C8010E233;
	Mon,  6 Mar 2023 22:54:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8C8010E233
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Mar 2023 22:54:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678143296; x=1709679296;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=MEL9PaywckGhRsOe/aTNjVj+e8o+n3V+ABN34IMCWco=;
 b=PnNXiLa+FHry4cbHRQNW5b4TRbfDq1m+BMtkNDsMghH3p+2PsW4gSMLc
 kfjFrkUHdKulgRg41c8tlZF6oS/39iJQtGNirytk3TBt+sPZbBMPCCLMw
 rpCVHBev0BpfXlkw4E8RPhIeNxTKrfQhGuOeX4f9NY4lpkgNP7c8USt7H
 UiYTYldtKrGAf5yrktwdpkl0UV7C/01bBkY7UR7yQtrRmP36f5DERkxqT
 Mu76d38V7JNok5jhaW9HznvCucxdqwUNJ4VBHzpL5nsTqMpL6w7yTeXT/
 eAMPrp3VEWOVWxH/3vLV7DsgQL8QpZnjpzdDu8FWKgImWzpYakAoO95k/ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="334413319"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="334413319"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 14:54:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="626321847"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="626321847"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 06 Mar 2023 14:54:55 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 6 Mar 2023 14:54:55 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 6 Mar 2023 14:54:54 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 6 Mar 2023 14:54:54 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 6 Mar 2023 14:54:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M1Ll8ccLF1y0/ft267Tb2YuNoQqlsc5ZmQaMDex3hp5CtRLb6kXkPjSgE23d3KJ7JuqDoBxTsFcurSO1psqP/O7OruzgZ5DzeXG72vlnxECCyO9XIu4DQhEIiKOoiUj1S6HfZ9cRUXIo3prxv4gOMoydFrez/bSr3o8Ly4FAU0DoJ9MGkxlYvu9KDOO9HYHNGQXkuqsrXUGnHi8WOdj0qvJ/UvZIsieSwlDRbb/DxDUXGbMLpIG8nzn81VIfjv04v2kGIfFBlkUxpnzvVg2WuMhjgBdVXFvszGAJE0r1GygmLXp86U+3dPKZxZUEkRvnzA3aJPyChRinwX8y1qnNSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LNlzt512oswAK8f5BfDZAEVWk4kQHGetFIih6evOfEE=;
 b=cq6SYYwwvDMAmkCnc1PcIbauyvYo9qmJzc71tYaqbDRmV979Y3F5NqVTR2tU8mgK1O0zEZ1LfMkDAkYq2e5EVyuEJoGjXq4WN2PeVhah7r0S+0kYnK9qsg7fFm7AFjlcgUay8PxcrNiKg4CyDF88/A/d24RzdNX4T3JMe/FyahxAbGchF8k/HhgPA3LBhqeYLNyYX7QWkscx255mOE5aLvqFq/7APCGIA9pXVsO7Mg2M3sxzLX/0A7kBOjmWG3JeNhbYNK7kVWHEIMJA03Rd7Iufd6p2DOogdwVRcnPEVfUXlBT9yi7ELTPdMkEQjvIrBgO0ynaHmry1rjIPDrM1Tg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 MN0PR11MB6231.namprd11.prod.outlook.com (2603:10b6:208:3c4::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.28; Mon, 6 Mar
 2023 22:54:52 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b%6]) with mapi id 15.20.6156.028; Mon, 6 Mar 2023
 22:54:52 +0000
Date: Mon, 6 Mar 2023 14:54:49 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <20230306225449.GH1543793@mdroper-desk1.amr.corp.intel.com>
References: <20230301201053.928709-1-radhakrishna.sripada@intel.com>
 <20230301201053.928709-4-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230301201053.928709-4-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: SJ0PR13CA0174.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::29) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|MN0PR11MB6231:EE_
X-MS-Office365-Filtering-Correlation-Id: 5c7ffbf9-617c-4187-2539-08db1e95cbde
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1AGhOYKZTvXmBuh8o9xiVC6Un6dgpWTJ1p/nYv1hBcB0fwoT2w62Handx6Q4ycQU7rolqVS3QEYtSFbzpBbRfwenC1NfXlQZ4P8msVqd/7QrzgI21TJUC/RqZN/iYWNyq7txLOhl3DwbOL6NeO0VUiWkbWjpXS6Lom9vd84uCs3dkp37M1J7YzIalrwdo6kEZ4lXSbRMVh3xcztr8rDrHf77ezPLKnP8YYjcitP4rj/S5R4m5BfpZEcW+/cETh8+9bEEfX9OKQ4p6I0AD7JcxaabqJAek2WkiXiOziAVydHx11Wldq8/V3dYSPUSUCfh5bBBLJjZHlduopNSBTKFaHuHKNhHdCPq2lICHu4P5IvnNuw4HJAkzDzM4Bkgv+sudB1S7TjRyosR6+lSSKyUB5WQmW9h9Z/voIbEbK566bp7YWzm6Uztx+AiNppe3lAzMKO86kBqxubQkR6aAS+GZt4JcCDq6mHKOeV1xXg8iHY7Y4aCYjJyOlcdAgc2l6QyR2bp6u5v14Cdu95HRdhGLOtApKL/0kpGeR4NSu4SjJ7VKqGrlBPcqjArOt4PAtFdTLsYy1+1zzDuzYwjJzZe2QHKp2u3GUS8t9V/MPFmodlpoxxwRv3eulJ+p7sUmNmZjEVta+UKTHm+r3RFDzvPGw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(376002)(346002)(39860400002)(396003)(136003)(451199018)(33656002)(4326008)(66946007)(66476007)(41300700001)(8936002)(6862004)(66556008)(8676002)(2906002)(5660300002)(86362001)(82960400001)(38100700002)(6666004)(6486002)(478600001)(6636002)(316002)(107886003)(54906003)(1076003)(83380400001)(6506007)(6512007)(186003)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?d92Uxg+7Ffd0YN55jyUrIpI3YD0p7/gh/SfLQlL9dJDaF3mF9f8mRRpDgbQn?=
 =?us-ascii?Q?Tx1yJPPn58eGboPSZ/ZvCN3WbAqyI764ixFyxdc4xw57gDAuLbEbMwNKhdK1?=
 =?us-ascii?Q?W6ZfgDeMEk9+6ImE7N9WobmdFWcW8m6bBikbRtAZEUfONHyZfqrq1K/YIoZp?=
 =?us-ascii?Q?Xi2Sfm1N5BHz9QhwasosTJpHkAjkb+Wb18QwVKR0P4ky37uTfwXbQ5sLqphL?=
 =?us-ascii?Q?HXII0vtxW6HYRb/b3/50GMGRUW5ceMbgaBiazWJoCMXJ5SDXJJblYRFXPngP?=
 =?us-ascii?Q?FCvsGzilg48lPIWJFjELg2Qn+QoWXQ1Ngm8faZaVF0ulJjOZ9hAebrQjBsqX?=
 =?us-ascii?Q?mGEnKdqF+1YRzE3JzBOW3mOyLrwCKofpiBo/+Q49mZkJlmlYU3JatZ68SJQN?=
 =?us-ascii?Q?JiUI+1tqyfQ80Kzpgye2Ya7OedP8FPcWAFRIfl6p5l1GQJzGN1aHglyg+mMt?=
 =?us-ascii?Q?2n4M0gqBOCODsn0DwEM9PhFvUDEehJYshU89NKMBHAdR7nYExV1A/xqtSnyX?=
 =?us-ascii?Q?Qt4yW51OoSO0ZNRorwkT/XvVNXdSr5QELnyWXosMRvkUohkculRfj7AaG2js?=
 =?us-ascii?Q?O9k/QPLvhKw5Q7TwKCPSOsan1T8qdt402v4I2XthZ/j2opSrApkCKRgRrwnF?=
 =?us-ascii?Q?U728slz/Q9xseOD8T2OVz5gxa+h/seS9hIzGir/Js8BVyVssClFtrQsYczfY?=
 =?us-ascii?Q?isW4AQGTanam24J0rmYZ1z9EIohvfxVa/NgYGlv68MxdGqGvS6b/5Ov675uu?=
 =?us-ascii?Q?Y6MGu23bSeSSOqVB5joYC7NluEeqLv8ilnpX3KhwqCe9OG/L6U0cNMXDLpqu?=
 =?us-ascii?Q?+WvHEF/jAO0JkSW5XDBkLuk/bltDKI8bpFli9Ha+umnl6vICYD/sXn8h025Z?=
 =?us-ascii?Q?YzY1/VgakcoLMdu0hzVy8h2YQvYUe6ay2rPnbr9zQrWVJqpOuRUuH4ayl0C/?=
 =?us-ascii?Q?DGyqw4/FA7MoxrQFxQcTZ1kExIHWce1ShbLkuCxrq9SsFGBXpH+tzIRs+R1m?=
 =?us-ascii?Q?p8OknxvTbqbEzszLVLKHZ0sPC6ChEDYnbrKuUgBLuI5m77EUCvvpuUIlB6TE?=
 =?us-ascii?Q?cndc8JMqEDlIl0QND5zLDXQtFtiiFogjwG3Gw3lbWsT+ZxgiZqKJud18b+HW?=
 =?us-ascii?Q?ntRXOLagyvTRdQX2NzEYUJKWdhwIn2F12B4lF3fwOkTRLV1bp+7kzCoOKcA0?=
 =?us-ascii?Q?jWas927fHf5OqpbrFQtXiOLYFyMGvIh8lSk/uBmH6Io4jEnDzSFimBrS665c?=
 =?us-ascii?Q?T7i2po3w2MiuUY7VoaiayEbPYDbytF0DyZ01Gz5tgduqJ7tenYmKw/M2J/vV?=
 =?us-ascii?Q?dZG8Y1xYbp/s0Lk2TbIed++nz9hDBLipFaNTMssztga+64yjehU1NXPmxK3v?=
 =?us-ascii?Q?OkAqyVPYAszYDnSUrW8yULUt85HKQ5js5uxX049yQ14ZhFSjFS0vQydk4Jzi?=
 =?us-ascii?Q?9I42AC89+wOYKExprKUZq7ztvB3K/YBdH/MYYO7BQjDtmhxplwZLqb85OO0n?=
 =?us-ascii?Q?GolPq0z3xQuuwWI6sXrRIulFyRMUdUWvnHoumB6Ws+3ilYU79xTZFdVSeYZl?=
 =?us-ascii?Q?4uK+0eJfjYXjpSIBeCMBEtrF0yk/cava7TuC15QEG5gtdgd8jZfWnEWMgIOd?=
 =?us-ascii?Q?ZQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c7ffbf9-617c-4187-2539-08db1e95cbde
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2023 22:54:52.5163 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sXUAsKXdKoc+A3Azvg299vwV7wW1P69UijfnCxQr631QUp0gPVeEV0+Ik4yT8sV9CGk/F7uBH+Ghdw20y+2BUMOzB04TPtIb6IdjXnqOOwM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6231
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 3/5] drm/i915/mtl: make IRQ reset and
 postinstall multi-gt aware
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
 Paulo Zanoni <paulo.r.zanoni@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Mar 01, 2023 at 12:10:51PM -0800, Radhakrishna Sripada wrote:
> Irq reset and post install are to be made multi-gt aware for the
> interrupts to work for the media tile on Meteorlake. Iterate through
> all the gts to process irq reset for each gt.

I think I mentioned on the previous version, but this isn't right.  MTL
does not have separate interrupt registers for each GT the way
multi-tile platforms like PVC do.  The GT interrupt registers you're
handling here are in the sgunit so there's only a single copy of them;
iterating over them multiple times in a row doesn't accomplish anything.

The media engine bits are still on the same registers as the primary GT
and the GSC and media GuC are new additional bits that need to be
handled.  The necessary handling for the GSC and media GuC should have
already landed in a187f13d51fa ("drm/i915/guc: handle interrupts from
media GuC") and c07ee636901d ("drm/i915/mtl: add GSC CS interrupt
support"), but if there's another bit that was missed somewhere (or if
we were doing something like looking at the wrong intel_gt's engine mask
somewhere), that would need to be addressed directly rather than just
looping over the same IRQ registers multiple times.


Matt

> 
> Based on original version by Paulo and Tvrtko
> 
> Cc: Paulo Zanoni <paulo.r.zanoni@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_irq.c | 30 ++++++++++++++++++------------
>  1 file changed, 18 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index 417c981e4968..9377f59c1ac2 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -2759,16 +2759,19 @@ static void gen11_irq_reset(struct drm_i915_private *dev_priv)
>  
>  static void dg1_irq_reset(struct drm_i915_private *dev_priv)
>  {
> -	struct intel_gt *gt = to_gt(dev_priv);
> -	struct intel_uncore *uncore = gt->uncore;
> +	struct intel_gt *gt;
> +	unsigned int i;
>  
>  	dg1_master_intr_disable(dev_priv->uncore.regs);
>  
> -	gen11_gt_irq_reset(gt);
> -	gen11_display_irq_reset(dev_priv);
> +	for_each_gt(gt, dev_priv, i) {
> +		gen11_gt_irq_reset(gt);
>  
> -	GEN3_IRQ_RESET(uncore, GEN11_GU_MISC_);
> -	GEN3_IRQ_RESET(uncore, GEN8_PCU_);
> +		GEN3_IRQ_RESET(gt->uncore, GEN11_GU_MISC_);
> +		GEN3_IRQ_RESET(gt->uncore, GEN8_PCU_);
> +	}
> +
> +	gen11_display_irq_reset(dev_priv);
>  }
>  
>  void gen8_irq_power_well_post_enable(struct drm_i915_private *dev_priv,
> @@ -3422,13 +3425,16 @@ static void gen11_irq_postinstall(struct drm_i915_private *dev_priv)
>  
>  static void dg1_irq_postinstall(struct drm_i915_private *dev_priv)
>  {
> -	struct intel_gt *gt = to_gt(dev_priv);
> -	struct intel_uncore *uncore = gt->uncore;
>  	u32 gu_misc_masked = GEN11_GU_MISC_GSE;
> +	struct intel_gt *gt;
> +	unsigned int i;
>  
> -	gen11_gt_irq_postinstall(gt);
> +	for_each_gt(gt, dev_priv, i) {
> +		gen11_gt_irq_postinstall(gt);
>  
> -	GEN3_IRQ_INIT(uncore, GEN11_GU_MISC_, ~gu_misc_masked, gu_misc_masked);
> +		GEN3_IRQ_INIT(gt->uncore, GEN11_GU_MISC_, ~gu_misc_masked,
> +			      gu_misc_masked);
> +	}
>  
>  	if (HAS_DISPLAY(dev_priv)) {
>  		icp_irq_postinstall(dev_priv);
> @@ -3437,8 +3443,8 @@ static void dg1_irq_postinstall(struct drm_i915_private *dev_priv)
>  				   GEN11_DISPLAY_IRQ_ENABLE);
>  	}
>  
> -	dg1_master_intr_enable(uncore->regs);
> -	intel_uncore_posting_read(uncore, DG1_MSTR_TILE_INTR);
> +	dg1_master_intr_enable(to_gt(dev_priv)->uncore->regs);
> +	intel_uncore_posting_read(to_gt(dev_priv)->uncore, DG1_MSTR_TILE_INTR);
>  }
>  
>  static void cherryview_irq_postinstall(struct drm_i915_private *dev_priv)
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
