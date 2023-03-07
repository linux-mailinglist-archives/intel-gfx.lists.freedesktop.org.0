Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 264C66AD350
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Mar 2023 01:24:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0539610E34B;
	Tue,  7 Mar 2023 00:24:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26E2D10E34B
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Mar 2023 00:24:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678148695; x=1709684695;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=spf51Lam6l13Xx0wZ2mAMVJwI1RuGSpVve/DarVTaVg=;
 b=WiFCgurpT744QHrP1Ls63sZex/DR0yVwxMKOuDJ7219McpywYwsutt6d
 Nc8zWOTpBImpDogO6xDR7GlKNAprs5EAvU8OWCZ2Zsy68SB1N4u9CyW2s
 wldmoxgXiX3I5b6l3rb1ZwAliwMeCuON9JG4U2bW2iqqbDZ5ZrxTw5AWq
 Ckj7OVtdeRfrdP+kt6yYGtXJ1aXImqww3MKwJMhzYb4yh1OFj53EG4MDy
 9C52tSxzcnz9nNcPmLlwSxHTGWuK2uPbXZ8yLK8UTX/qIrrnizADOn+ek
 iA4WNcuaLCS5/E1grEMeBN2FNaWbbDerIYWuQ+uO3AGsg3zsvOox2+Ywi Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="319546777"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="319546777"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 16:24:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="706619236"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="706619236"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 06 Mar 2023 16:24:36 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 6 Mar 2023 16:24:36 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 6 Mar 2023 16:24:35 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 6 Mar 2023 16:24:35 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 6 Mar 2023 16:24:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cascbcxXf4SCJpPczjO32M2OiPma5wWbd2hJmp5ZL94I54Js2ZvC+clhJxhmDu7J0wwzoCoCJHHeQl7oZ0958T124+kX5ganD0Gu/MMXMg9DK6n3Ka7Zzd4R9edSt4p8qiJcOIJt23vEHaEvIwUrvILuVRoutdTOShLe4IFkHghg+NrSCOp0+MS4r2wnCw5ReqpBMJWxQvqmd5ZO4yYmeiOvTZwqVfG+Fl3xFphFlHj20/yK56hdAtehEtxl6KeYdO07QUmbCIzARYz00XR0dpl+HyWrNZqwnivUaQ/EbWYYhVO5IU97pwE/LDTH/TDPUUXNOLdobicbjSG8VYc58w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a4faiEr5jdbeiP78vhlm41u48iEOSu+PoEoCctU7ECQ=;
 b=LD9WtmR5DRcC1a3NM3IOxnlbD1ft92diNE9ds044c9cZFH92sbJxXdo7SYtOvLdxfh3eMCmr+TkECOQ6wcjA5ob5cKBYy4u4tgbLU/ojLBAxsk0eiPO/13Mv9dhY7IsrHw5Em3xXQ9jNiO7nCy9boRFIl/zqJyOuIc0XP/SE4zZoR5DoJqRNSQ2RJexLS/1fmT2yfAjufjxwUKmt+h1IBDDs/wsHe3gHAv2oyFckojRJuhd6FQ8om7dpmuuQW8pA7Y2uARARhnrL0ZWx+k5jQTxHeQcbR4RqP2cADpevLl7wu9dAdGmDa5+prS0Pfq0GgK8iuRceP7LGuCcswDELtg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 DM4PR11MB6552.namprd11.prod.outlook.com (2603:10b6:8:8f::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6156.28; Tue, 7 Mar 2023 00:24:34 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b%6]) with mapi id 15.20.6156.028; Tue, 7 Mar 2023
 00:24:34 +0000
Date: Mon, 6 Mar 2023 16:24:31 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
Message-ID: <20230307002431.GL1543793@mdroper-desk1.amr.corp.intel.com>
References: <20230301201053.928709-1-radhakrishna.sripada@intel.com>
 <20230301201053.928709-4-radhakrishna.sripada@intel.com>
 <20230306225449.GH1543793@mdroper-desk1.amr.corp.intel.com>
 <DM4PR11MB59716229DA2E5B20947C49FF87B79@DM4PR11MB5971.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <DM4PR11MB59716229DA2E5B20947C49FF87B79@DM4PR11MB5971.namprd11.prod.outlook.com>
X-ClientProxiedBy: SJ0PR05CA0195.namprd05.prod.outlook.com
 (2603:10b6:a03:330::20) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|DM4PR11MB6552:EE_
X-MS-Office365-Filtering-Correlation-Id: adcd8ac2-7e57-4c7b-06f4-08db1ea2539f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XYYH8CmIsm/NW05KCuLS6Wm1sQPuNMDcStEKh2/IqWRdfaAuz6Q/Iq3Q3vBqTFmspbk9BVlukOjHtCaMzre1IqrihXv73fgEaC8N6KUwwIV4ccAp8zfqZomkEesvRSf/ZIjEIcWb45c02htFYa67jKisAAYDoGO1nq5sz28kM+trZNZeRdiSDaKnC+soBwNpHwPG4VM3J2IXbxkRuWt1WlTzp5a/keUw5edtGVOdKT88iJNseXrwOZKXT70DO2a0FU5pj6HRBhfBJBOLU3SrsXQIiEzq2J2EF1R7h+Wg3JFKnFP3wOAtW8/FAQ0cy7ISeKhsRI573U0+61fc2lmatAFBXKJ+IDnqGsuLIiB6fO2RkVDgda9vAAVz5/6EV0dqJ3molOAyrBAN7kJJgpos2PzyJmXaDerUJilkPyCxkWZeYsQg4HOsDjVJkqnk1P82Sm+N+xOPkZpp2JTF8JK3Fd1qbA1mCWA9TZIircVhdBvqocVUHQl3XP3VmCIclNgRKVXO2gUGWcenze0gXaffXRkxPMHlsSJkcZTa/Cfm4d5DXpjCB/Ghuev0Pw9dJrLfGfP35Ttl9Na9TYgKa+NCYbd6Ty8K9Dcr/kjF0Q5Na7gHZmKKqXCbE3/6f9pfAQrBjHfw2ViFP6DQ9wQy5MtHqA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(396003)(346002)(39860400002)(366004)(376002)(451199018)(6512007)(1076003)(6506007)(6486002)(53546011)(107886003)(6666004)(83380400001)(33656002)(86362001)(82960400001)(38100700002)(186003)(26005)(41300700001)(66556008)(66946007)(66476007)(8676002)(4326008)(2906002)(6862004)(5660300002)(8936002)(478600001)(316002)(6636002)(54906003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?RpjNZeluV/DfrVLgkSe09HDid2RKnG4pjJEJTmP1o73mYfWL03kEC01CnSY5?=
 =?us-ascii?Q?lFD+bno68w9a+PDbT1JXI/LTAm/8mNUB/seAKCUDVrn/kEoE/6GVkVKsYLN+?=
 =?us-ascii?Q?E4FvUKoMrbX/Hm3STTPI7yyLQ5HWrkKNcfwMrZOi/iz+mKYuj2r4+mVgoha2?=
 =?us-ascii?Q?k/tQ+YS7NwVZXP2bQCT8qfViO80Y3YS4xnkBjzi3ctYlZcdWvjAgXgVxpnSv?=
 =?us-ascii?Q?scwAb46FUdYsqAVoOXg/n3IMbXeRLXXcijgW4m2G8Hd0Z4pDBgF4bDXlkyeh?=
 =?us-ascii?Q?EEHq9jWfy4L/exUoa57luhDPoxHgA5P9XMyh7jbHTNOUz6aDijOg4A2RgcKk?=
 =?us-ascii?Q?fJ7dt5dgLFN0h//tHbSeCzm84urtH0ZyMjopBKOp6as1+g9AN9PimGdCaJXa?=
 =?us-ascii?Q?izo9aZBKHLhgy0SSY8M+j4v5GPxo4J3OuZsRwDM20gpAVvQx4z6zHyAEoK2v?=
 =?us-ascii?Q?Z2QglYBzSGQFcRJkZTxB3S85Q5tfqlHNsk5CXLM2OKaR8RS1sX2aCB8BgUi6?=
 =?us-ascii?Q?boC9fT3nKuE75BY/VEIfyiMXuJ9604oJ2psfUfsbHM2V0zcr/8/ybNwbE1vR?=
 =?us-ascii?Q?czg0dzX3YweAWxr3wppYH8kD2sgrjTDTFBMgIETa0a60msQ0QE8/I04H2Sib?=
 =?us-ascii?Q?S4DsdePj9fjy2jrTVLiimNcLm+NvqN/+XJH29pwH/D2pNFtnB5EGQJEE6e8c?=
 =?us-ascii?Q?3OebxAlkCNdBiAJvpxIJUnLWI4tXu4yYj9qe8hthybB3Qh+rX4LrNsRPoSm8?=
 =?us-ascii?Q?fpxHWY+oUzfCOYFrcxRZuc0jrDvgw1XbtmAGndvYpsUWsNKOFfYZlWrh88aL?=
 =?us-ascii?Q?38LHWW9ewnR11w6tvZT/X6yH1u8WBuYShsNk1futItuVi/ZIVBhyvkavnGMj?=
 =?us-ascii?Q?rhYQdOT+y5FW+Q0bbFVtv951SZeWzCJD6iAtRUen6rqZeJPy8vtIOsrzi6Wu?=
 =?us-ascii?Q?VbXVpxoufEc+H7WHDeBAuk7A6xUWlcX2TinRuKXZiJ0ilkeNvugLiK630NTt?=
 =?us-ascii?Q?vWWx+f3xi/Sc/p+q1jTzg5ma+MwHNPHSdaPJmZPTjM82cDfmeB2375qaX6yM?=
 =?us-ascii?Q?N0HOtoHGUvaZJ/n35ALbxJs0mcTTGOItQBVCGoShfNHofyVeFuDz4Xeq5g/F?=
 =?us-ascii?Q?MUsqCchkTI1C6P/8p5V47aSbD+3Cb+KUxaiehLm+tzqehupIgHz2ONrdz2yp?=
 =?us-ascii?Q?tuaFfQXuG1BJfGwHl3uSnXOCHwK0rBMQWiZnl9Y3OUxKei/hSDXPJjjOudYA?=
 =?us-ascii?Q?mAIauNNTlC/fLPjL9/RXARsbnqlnTWhE+FoJSrAtnvg9s75M2bkv1ZWbT5GE?=
 =?us-ascii?Q?ha1YPv6dgFujaWDSBVYUB6VfulznKZmOvRuuoBXIcxRgfMHvFNxQDyWRjyVA?=
 =?us-ascii?Q?sRyUYb7FoUBykPl6j7sP8xmr3M0J7vOEO8pGmQIpZoZBbs2Pd8Boi+n0KL59?=
 =?us-ascii?Q?vE9ROe8SRt68cFfQcRd6CsROHDWMws+b9FVdbRC/xmmzJETGs0EG7IrN+j1P?=
 =?us-ascii?Q?vP1Hv6oSH17PF+AHaTNiqFHVmhRTHnC0mnuORD+4JXo3VRm+i5lU7w7NABDQ?=
 =?us-ascii?Q?32pj4bGBNmnuXELhQO23COsDh71311bfXfRSWcDzbTwcnpUXZysrrbON1a7T?=
 =?us-ascii?Q?Vg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: adcd8ac2-7e57-4c7b-06f4-08db1ea2539f
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Mar 2023 00:24:34.1554 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: D+VwbTRtVA3YPXTJY4C0gzWwhi5J7kdfTTwPjM+6Hd3NkniREqVpIrRMVZbCBsmwRP+S0hws87As/GuBXnuO/VYUEVESd/LUWSxFlZNcWKI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6552
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>, "Zanoni,
 Paulo R" <paulo.r.zanoni@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 06, 2023 at 04:14:49PM -0800, Sripada, Radhakrishna wrote:
> +Daniele,
> 
> Hi Matt,
> 
> > -----Original Message-----
> > From: Roper, Matthew D <matthew.d.roper@intel.com>
> > Sent: Monday, March 6, 2023 2:55 PM
> > To: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org; De Marchi, Lucas
> > <lucas.demarchi@intel.com>; Zanoni, Paulo R <paulo.r.zanoni@intel.com>
> > Subject: Re: [Intel-gfx] [PATCH v3 3/5] drm/i915/mtl: make IRQ reset and
> > postinstall multi-gt aware
> > 
> > On Wed, Mar 01, 2023 at 12:10:51PM -0800, Radhakrishna Sripada wrote:
> > > Irq reset and post install are to be made multi-gt aware for the
> > > interrupts to work for the media tile on Meteorlake. Iterate through
> > > all the gts to process irq reset for each gt.
> > 
> > I think I mentioned on the previous version, but this isn't right.  MTL
> > does not have separate interrupt registers for each GT the way
> > multi-tile platforms like PVC do.  The GT interrupt registers you're
> > handling here are in the sgunit so there's only a single copy of them;
> > iterating over them multiple times in a row doesn't accomplish anything.
> > 
> > The media engine bits are still on the same registers as the primary GT
> > and the GSC and media GuC are new additional bits that need to be
> > handled.  The necessary handling for the GSC and media GuC should have
> > already landed in a187f13d51fa ("drm/i915/guc: handle interrupts from
> > media GuC") and c07ee636901d ("drm/i915/mtl: add GSC CS interrupt
> > support"), but if there's another bit that was missed somewhere (or if
> > we were doing something like looking at the wrong intel_gt's engine mask
> > somewhere), that would need to be addressed directly rather than just
> > looping over the same IRQ registers multiple times.
> 
> This patch is needed to handle media interrupts. Without this patch we observed
> GuC not loading/communication errors on media gt.
> 
> My understanding is that Sgunit is embedded into the SAMedia block and hence need
> To be iterated over separately.

No, the sgunit is not replicated.  You can confirm by just going to the
various IRQ register pages in the bspec...there's only a single register
offset rather than (offset) and (offset+0x380000) like there are for GT
GSI registers.  The i915 code also only adds the GSI offset to register
operations in the 0x0 - 0x40000 range.


Matt

> 
> Daniele,
> Can you confirm if that is accurate.
> 
> Thanks,
> RK
> > 
> > 
> > Matt
> > 
> > >
> > > Based on original version by Paulo and Tvrtko
> > >
> > > Cc: Paulo Zanoni <paulo.r.zanoni@intel.com>
> > > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > > Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
> > > Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/i915_irq.c | 30 ++++++++++++++++++------------
> > >  1 file changed, 18 insertions(+), 12 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> > > index 417c981e4968..9377f59c1ac2 100644
> > > --- a/drivers/gpu/drm/i915/i915_irq.c
> > > +++ b/drivers/gpu/drm/i915/i915_irq.c
> > > @@ -2759,16 +2759,19 @@ static void gen11_irq_reset(struct
> > drm_i915_private *dev_priv)
> > >
> > >  static void dg1_irq_reset(struct drm_i915_private *dev_priv)
> > >  {
> > > -	struct intel_gt *gt = to_gt(dev_priv);
> > > -	struct intel_uncore *uncore = gt->uncore;
> > > +	struct intel_gt *gt;
> > > +	unsigned int i;
> > >
> > >  	dg1_master_intr_disable(dev_priv->uncore.regs);
> > >
> > > -	gen11_gt_irq_reset(gt);
> > > -	gen11_display_irq_reset(dev_priv);
> > > +	for_each_gt(gt, dev_priv, i) {
> > > +		gen11_gt_irq_reset(gt);
> > >
> > > -	GEN3_IRQ_RESET(uncore, GEN11_GU_MISC_);
> > > -	GEN3_IRQ_RESET(uncore, GEN8_PCU_);
> > > +		GEN3_IRQ_RESET(gt->uncore, GEN11_GU_MISC_);
> > > +		GEN3_IRQ_RESET(gt->uncore, GEN8_PCU_);
> > > +	}
> > > +
> > > +	gen11_display_irq_reset(dev_priv);
> > >  }
> > >
> > >  void gen8_irq_power_well_post_enable(struct drm_i915_private *dev_priv,
> > > @@ -3422,13 +3425,16 @@ static void gen11_irq_postinstall(struct
> > drm_i915_private *dev_priv)
> > >
> > >  static void dg1_irq_postinstall(struct drm_i915_private *dev_priv)
> > >  {
> > > -	struct intel_gt *gt = to_gt(dev_priv);
> > > -	struct intel_uncore *uncore = gt->uncore;
> > >  	u32 gu_misc_masked = GEN11_GU_MISC_GSE;
> > > +	struct intel_gt *gt;
> > > +	unsigned int i;
> > >
> > > -	gen11_gt_irq_postinstall(gt);
> > > +	for_each_gt(gt, dev_priv, i) {
> > > +		gen11_gt_irq_postinstall(gt);
> > >
> > > -	GEN3_IRQ_INIT(uncore, GEN11_GU_MISC_, ~gu_misc_masked,
> > gu_misc_masked);
> > > +		GEN3_IRQ_INIT(gt->uncore, GEN11_GU_MISC_,
> > ~gu_misc_masked,
> > > +			      gu_misc_masked);
> > > +	}
> > >
> > >  	if (HAS_DISPLAY(dev_priv)) {
> > >  		icp_irq_postinstall(dev_priv);
> > > @@ -3437,8 +3443,8 @@ static void dg1_irq_postinstall(struct
> > drm_i915_private *dev_priv)
> > >  				   GEN11_DISPLAY_IRQ_ENABLE);
> > >  	}
> > >
> > > -	dg1_master_intr_enable(uncore->regs);
> > > -	intel_uncore_posting_read(uncore, DG1_MSTR_TILE_INTR);
> > > +	dg1_master_intr_enable(to_gt(dev_priv)->uncore->regs);
> > > +	intel_uncore_posting_read(to_gt(dev_priv)->uncore,
> > DG1_MSTR_TILE_INTR);
> > >  }
> > >
> > >  static void cherryview_irq_postinstall(struct drm_i915_private *dev_priv)
> > > --
> > > 2.34.1
> > >
> > 
> > --
> > Matt Roper
> > Graphics Software Engineer
> > Linux GPU Platform Enablement
> > Intel Corporation

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
