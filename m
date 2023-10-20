Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB6457D1399
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Oct 2023 18:05:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 453E010E5D5;
	Fri, 20 Oct 2023 16:05:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BAA010E5D5
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Oct 2023 16:05:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697817929; x=1729353929;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=BveqxFS9ed5yWeH9C5dlLoWcBOmafgAfVv+29Ue5FO0=;
 b=LgA0v6sk6CyGXdQ6copsK4YQctbgPfEGfzm1o33FLS3NmrjfbFXEL+Ui
 pF+3FKY1y2CXH/7Hgx4T86fi0KYjG3CEhCsIgqsWIKKkJPR7rLIxZDPcU
 4wto11McJ/gCf4REvfs4WgAzak56NRd4lR4ry3dK9daHaMwtaoGxP/aZu
 DnJWnTnHO4sbBNb1LzmlRAzkk+Ws4qK289l5XT9t8wuDTvHSsBoyYgEfk
 9NPMsbClVz8arPXPewbhc9ulK7YqYsuIJFc89Ilk55GjwnUnUsLFw3Rky
 8XGK9HGi5e52LjrgePTnie1uz2o785xe3nQDR0hgINDPdtCRO1Ltgfy8k g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10869"; a="389384455"
X-IronPort-AV: E=Sophos;i="6.03,239,1694761200"; d="scan'208";a="389384455"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2023 09:04:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10869"; a="757501451"
X-IronPort-AV: E=Sophos;i="6.03,239,1694761200"; d="scan'208";a="757501451"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Oct 2023 09:04:39 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 20 Oct 2023 09:04:39 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 20 Oct 2023 09:04:39 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 20 Oct 2023 09:04:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ceqc9cUtrmIZOvyKD0mXrcWYVGZY0Ra5hLkJ808+AVOrRI766efRiSaytYtU4M2FvXBwEpf4uCw8Xz+o10I6bkNaLm80MEqiVuhhdnoXSa7Qkn0FC55Vw3sjiAdKIYM8YeDj4lFvVOGk3BiJp27dtXNv+JlJ1M4MI4xJJqVM5C4IAEpQjhxzu6Y9D61Rno8ZjhHRMj/APHO0lKOOk8qgvTvZhF4czAnLDxjZbOxkON4HQbrN3iG2R9sAT/mvd1Z2rkzgtG+DN4vGPwxbl0f1oLKqj6uA0u3Fi5ytsLZM8oQTlS6mMwteWRlsL9EUQaYyT7WU8H8ZeniRiSZgJL5mvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t9qE+YTPuAblkARUCziZA5A3TOGpjy1sVfopLO/NsZI=;
 b=Zi+2yj6xq+wGJ0D5SqlyFfxL0OvM7mQ7zhq6biKwvgPviSJ1uj3Z5P0B8dRsiKJLYkuE+rJDLQWyHbA75LCT6wBDGVoJlk+w+Gf1t/RkTEa5KHroHK5INAvI6R2xzvylM9Ko5TK7FY/RGI0H+1i5DWasVCphVb5dQ6jXoz+Ob0FJCgvMbgs7BNcL4o360rl6u8qJgH1LoZLQKYozBBS2+sI5mg1iH3DrCTs58Oeqnkg8EVb6aPBfG/Tlbx49icw1hLSAyv0N0xzGkaL3o3sWh8kKbGzGwd7CulbSfayvD+4dkGkLDlexa+gsy9Q4+ZRUfE6KgU9g7aAjcbm8XWj/9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by DS0PR11MB7767.namprd11.prod.outlook.com (2603:10b6:8:138::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.23; Fri, 20 Oct
 2023 16:04:36 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::c228:5055:b7da:d0bf]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::c228:5055:b7da:d0bf%6]) with mapi id 15.20.6907.021; Fri, 20 Oct 2023
 16:04:33 +0000
Date: Fri, 20 Oct 2023 11:04:48 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Message-ID: <kdxpremxa22f3ds3uzrtp2cohkkos3nef7vcfi5c7ikr5ojl22@ihkv6bktqett>
References: <20231018222441.4131237-1-lucas.demarchi@intel.com>
 <20231018222441.4131237-3-lucas.demarchi@intel.com>
 <169773148009.1959.9111774447308795723@gjsousa-mobl2>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <169773148009.1959.9111774447308795723@gjsousa-mobl2>
X-ClientProxiedBy: SJ0P220CA0023.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::21) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|DS0PR11MB7767:EE_
X-MS-Office365-Filtering-Correlation-Id: f9e192a2-f959-44fb-dfa7-08dbd1863ff9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9mG3y5NRyDNyNKREEVTqzkplcmF02/jX+XtT3KLAog2ZSRMZotAeLT5Gbf3vNTV3LtyQJ/ZgR4b16Fu7HNw+0QGiPPUPC8rJoc1CUN6maMvTtgd8k4bZwt0cLp3CTudP4v6/XZg0xUHWt3jdH6h1aJ4SVcybud6yeZffqRB1I268mtD2WxzyRTnYkANBk+SKrrGMXttYCYXZMz6dusyMA6CrQ3rv4LgqYDT6lfzL2iIebtApwxZOWHoZojM73aT8D4BbSr0d9rCumwZlFQ3eO8T7bzQzs8IE1RomjynpWG7q80FhLdEweWBMf8Fd3I1cawDEitqOCrN6FpHkcY4ISbKZjY5mFRJpu91a2BXbyVYUFL6OD+tZce6CUaJxDH4BatuaH5pURDYvWaXq9xQnUp6XxC9cpfCA4WmblnpmHsUqoBeZzv8mAZn28mPRwcPg8lexpAVbrr+fGSgIyuqYfy01lalpi1ItDc9Twl8wBrW3fjdwCANsMHQpy2i8LkG9ndMwZo0BDhMD+T/QXztOX7z2NspUlCJhpvEcd+isluMyDWecO3Gmhc6+wfuRFp+N
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(136003)(376002)(396003)(39860400002)(366004)(346002)(230922051799003)(451199024)(1800799009)(186009)(64100799003)(26005)(6666004)(83380400001)(33716001)(66556008)(6506007)(6512007)(107886003)(6636002)(5660300002)(316002)(41300700001)(4326008)(8936002)(2906002)(8676002)(6862004)(4001150100001)(478600001)(66946007)(6486002)(86362001)(38100700002)(66476007)(82960400001)(9686003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qOZiYP8YBJsEKEHMObf8HXSsQLLYgTd04SjhfswgjRg3KIE15gC9EDjVlDVJ?=
 =?us-ascii?Q?eRPN5cSyXfiSNd08MUQuzuBOXnK7XIzRAUey1DtQ1n+I3mOzflacY/DHF8QI?=
 =?us-ascii?Q?SyqmusNS1ctQywtK/5uy/O985UquWMN9noQPfSr5YwSKjkxxaeJ7a9rj2/qq?=
 =?us-ascii?Q?AAP5m0PhTfBiIjpxVey7UYh+amkjLkRIYU4q0M5c84o+jQ9numxPKx4caapM?=
 =?us-ascii?Q?YUyzvu1dw/r1w2s9++ruhUvYrT2L5MHeHTLtO9x1cpLXTB4pjI+Axd9capJc?=
 =?us-ascii?Q?ZT6fuxNdKZF/IcenlXK0ThPLCjS862sZ40CxOas7vT0BYuHoKVJVkt9jDj/8?=
 =?us-ascii?Q?qJ3kiqnUHYQz1MMQsYOp5VgpA7+OFa7MvRR77TcOYrpPGtTAUHDfPUeJxJcO?=
 =?us-ascii?Q?I1WU67HjqpFmpJA9arv6VqbgltoclXVPDedPz54FrmPy231uUZh5kcmXfBgz?=
 =?us-ascii?Q?pEN8szR3zkoCxijv6clHImbX6sd/4sM6hi/pJUNPs4gsdxyYnRLbyuIzDz/F?=
 =?us-ascii?Q?sm9XRWOStDSaKCl/tU1K+31vNjfcqWYyqJQ0ntHv20+/na7uwxDJio8sTkgy?=
 =?us-ascii?Q?vHDlFmNDSSz08Fl9OdRnG69RMjIcEfpRgpMH6jaaMxYkAXU9ILtXuBOZfNsd?=
 =?us-ascii?Q?6cUAq9Lj2razMxnDbiudwk0NelkrATVZUqKuFg9hUxxkBGRiCZIMVFuhLwc9?=
 =?us-ascii?Q?/mtuH1/av0yt4QlTvuMsiRY66yxJberblmuzheHrXXR7ECcw5yunrc6+ziM8?=
 =?us-ascii?Q?PWy2WZKhUAuSKPuS5MOqeq6MGAFIeMq7qU8Kt95oPa5CUOSGM0QuoYkU9/k1?=
 =?us-ascii?Q?OB9ak3/hvHg2jr1k5goWUU6cdWuVX2FxTsBjInbQw2lX6X9FGfPm4wfctaBw?=
 =?us-ascii?Q?qUQjA17q8qPeDMxZLySjvL4N5zu93O2/fQBmMK80Xk4PpEoJ4RsIgDrZbwcf?=
 =?us-ascii?Q?O58GPBmOlU7es74SP1krr/tkDJL+ItD6wCH1K5V8riZU4mIQwmm5eICVLzBN?=
 =?us-ascii?Q?b/nvjuXM2QWun4Zc0KOW34m1fLQG2dm5iiQGLImzbgf1TW8VmqsHfGB23qLW?=
 =?us-ascii?Q?HNwcrIpUNLKqdSRyBmuwkB8c2FGfXzrhu8qGTMd5wQLs+p+dx/F3nWS4JCig?=
 =?us-ascii?Q?qw5i2FRCdBwGk3YDtEw3BYcSFg3ybr0fjxAHsWapGqqOxftZUWvcc8dFXE+0?=
 =?us-ascii?Q?uisuLcgHEDfIBhWgVlLZA6OlOQA60X9PbSwb30WQrHLvNfyg7FbsIyTSXK7E?=
 =?us-ascii?Q?nOGc8hzvokHgbbtr0OhlTW7veMRMvASQPTizqdfX0cQzD2T034lgmpI6QpEC?=
 =?us-ascii?Q?mBBFoKZZrBGPRnx6EAF1s01ZxuH4xmKtR5pTOGgg+adgJ/EbhBg5U+EISwfQ?=
 =?us-ascii?Q?McTIX3ANyZ3MyigtEAhkb6Z+dCsPhaTorxZeP1Z3wOgz1kIDp3HgvXFvFdI6?=
 =?us-ascii?Q?nz2LaBUJH/dW90MDQTAbXq1AUWxSt4N/hfW7woqr6oujcSM5gmshI2t0P18D?=
 =?us-ascii?Q?mcBmLQEZ6enu0g5QBgeTwkZyIHe+lzKXB92n+LiMk4TOrhNfgY5tbAIQSXkp?=
 =?us-ascii?Q?qPIRJHUj12cwMFhPEizwzeWHCev2GKcXDOeKkA96VlC9Vqo+hBp2mB2fmrMt?=
 =?us-ascii?Q?VA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f9e192a2-f959-44fb-dfa7-08dbd1863ff9
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Oct 2023 16:04:33.4699 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: W+C9aA+zn7vVhPHOFdncJ0cGE+rGqcOs4agR526bR+EfWj4lqJrcPmds0RPObaPCKYM10LZF8lnObwiKCsOwwhHKpL/KLCptSsjH0keXRZs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7767
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/lnl: Fix check for TC phy
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
Cc: intel-gfx@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Oct 19, 2023 at 01:04:40PM -0300, Gustavo Sousa wrote:
>Quoting Lucas De Marchi (2023-10-18 19:24:41-03:00)
>>With MTL adding PICA between the port and the real phy, the path
>>add for DG2 stopped being followed and newer platforms are simply using
>>the older path for TC phys. LNL is no different than MTL in this aspect,
>>so just add it to the mess. In future the phy and port designation and
>>deciding if it's TC should better be cleaned up.
>>
>>To make it just a bit better, also change intel_phy_is_snps() to show
>>this is DG2-only.
>>
>>Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>>---
>> drivers/gpu/drm/i915/display/intel_display.c | 29 ++++++++++----------
>> 1 file changed, 15 insertions(+), 14 deletions(-)
>>
>>diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>>index 28d85e1e858e..0797ace31417 100644
>>--- a/drivers/gpu/drm/i915/display/intel_display.c
>>+++ b/drivers/gpu/drm/i915/display/intel_display.c
>>@@ -1784,31 +1784,32 @@ bool intel_phy_is_combo(struct drm_i915_private *dev_priv, enum phy phy)
>>
>> bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy phy)
>> {
>>+        /* DG2's "TC1" output uses a SNPS PHY and is handled separately */
>>         if (IS_DG2(dev_priv))
>>-                /* DG2's "TC1" output uses a SNPS PHY */
>>                 return false;
>>-        else if (IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER_FULL(dev_priv) == IP_VER(14, 0))
>>+
>>+        /*
>>+         * TODO: This should mostly match intel_port_to_phy(), considering the
>>+         * ports already encode if they are connected to a TC phy in their name.
>>+         */
>>+        if (IS_LUNARLAKE(dev_priv) || IS_METEORLAKE(dev_priv) ||
>>+            IS_ALDERLAKE_P(dev_priv))
>
>Just like already done with the previous patch, I think we should have a
>paragraph in the commit message justifying s/DISPLAY_VER_FULL(dev_priv) ==
>IP_VER(14, 0)/IS_METEORLAKE(dev_priv)/.

humn... after giving this a second thought, I will take this back.
intel_phy_is_tc() is different than the check in the first patch and
it's actually something dependent on display engine. Here the check is
about is this a DDIA/DDIB or a TC1-TC4? This will change how some
registers in the display engine are programmed:

	$ git grep intel_phy_is_tc -- drivers/gpu/drm/i915/display/intel_ddi.c
	drivers/gpu/drm/i915/display/intel_ddi.c:               if (intel_phy_is_tc(dev_priv, phy))
	drivers/gpu/drm/i915/display/intel_ddi.c:       if (IS_ALDERLAKE_P(i915) && intel_phy_is_tc(i915, phy)) {
	drivers/gpu/drm/i915/display/intel_ddi.c:                 intel_phy_is_tc(i915, phy)))
	drivers/gpu/drm/i915/display/intel_ddi.c:       if (!intel_phy_is_tc(dev_priv, phy) ||
	drivers/gpu/drm/i915/display/intel_ddi.c:       bool is_tc_port = intel_phy_is_tc(i915, phy);
	drivers/gpu/drm/i915/display/intel_ddi.c:       } else if (IS_ALDERLAKE_P(dev_priv) && intel_phy_is_tc(dev_priv, phy)) {
	drivers/gpu/drm/i915/display/intel_ddi.c:       if (DISPLAY_VER(i915) >= 14 || !intel_phy_is_tc(i915, phy))
	drivers/gpu/drm/i915/display/intel_ddi.c:       bool is_tc_port = intel_phy_is_tc(dev_priv, phy);
	drivers/gpu/drm/i915/display/intel_ddi.c:       if (intel_phy_is_tc(i915, phy))
	drivers/gpu/drm/i915/display/intel_ddi.c:       if (intel_phy_is_tc(i915, phy)) {
	drivers/gpu/drm/i915/display/intel_ddi.c:       if (intel_phy_is_tc(i915, phy))
	drivers/gpu/drm/i915/display/intel_ddi.c:       if (intel_phy_is_tc(i915, phy))
	drivers/gpu/drm/i915/display/intel_ddi.c:       bool is_tc = intel_phy_is_tc(i915, phy);
	drivers/gpu/drm/i915/display/intel_ddi.c:       return init_dp || intel_phy_is_tc(i915, phy);
	drivers/gpu/drm/i915/display/intel_ddi.c:       if (intel_phy_is_tc(dev_priv, phy)) {
	drivers/gpu/drm/i915/display/intel_ddi.c:               if (intel_phy_is_tc(dev_priv, phy))

and particularly the creation of intel_tc, which we do want to happen.

I think we will really need to rollback the port -> phy conversions all
around the code and simplify it. While we don't do that, my proposal
here is to turn this commit into:

-----------------8<--------------------
Subject: [PATCH] drm/i915/lnl: Fix check for TC phy

With MTL adding PICA between the port and the real phy, the path
add for DG2 stopped being followed and newer platforms are simply using
the older path for TC phys. LNL is no different than MTL in this aspect,
so just add it to the mess. In future the phy and port designation and
deciding if it's TC should better be cleaned up.

To make it just a bit better, also change intel_phy_is_snps() to show
this is DG2-only.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
  drivers/gpu/drm/i915/display/intel_display.c | 28 ++++++++++----------
  1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 28d85e1e858e..1caf46e3e569 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1784,31 +1784,31 @@ bool intel_phy_is_combo(struct drm_i915_private *dev_priv, enum phy phy)
  
  bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy phy)
  {
+	/*
+	 * DG2's "TC1", although TC-capable output, doesn't share the same flow
+	 * as other platforms on the display engine side and rather rely on the
+	 * SNPS PHY, that is programmed separately
+	 */
  	if (IS_DG2(dev_priv))
-		/* DG2's "TC1" output uses a SNPS PHY */
  		return false;
-	else if (IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER_FULL(dev_priv) == IP_VER(14, 0))
+
+	if (DISPLAY_VER(dev_priv) >= 13)
  		return phy >= PHY_F && phy <= PHY_I;
  	else if (IS_TIGERLAKE(dev_priv))
  		return phy >= PHY_D && phy <= PHY_I;
  	else if (IS_ICELAKE(dev_priv))
  		return phy >= PHY_C && phy <= PHY_F;
-	else
-		return false;
+
+	return false;
  }
  
  bool intel_phy_is_snps(struct drm_i915_private *dev_priv, enum phy phy)
  {
-	if (phy == PHY_NONE)
-		return false;
-	else if (IS_DG2(dev_priv))
-		/*
-		 * All four "combo" ports and the TC1 port (PHY E) use
-		 * Synopsis PHYs.
-		 */
-		return phy <= PHY_E;
-
-	return false;
+	/*
+	 * For DG2, and for DG2 only, all four "combo" ports and the TC1 port
+	 * (PHY E) use Synopsis PHYs. See intel_phy_is_tc().
+	 */
+	return IS_DG2(dev_priv) && phy > PHY_NONE && phy <= PHY_E;
  }
  
  enum phy intel_port_to_phy(struct drm_i915_private *i915, enum port port)
-- 
2.40.1
-----------------8<--------------------

This would at make intel_phy_is_tc() match intel_port_to_phy(), at least
for display version >= 13.

Lucas De Marchi
