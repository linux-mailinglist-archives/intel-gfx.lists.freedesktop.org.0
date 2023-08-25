Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 676F17891C3
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Aug 2023 00:36:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54EF010E6F2;
	Fri, 25 Aug 2023 22:36:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0387310E6F0;
 Fri, 25 Aug 2023 22:36:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693002979; x=1724538979;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=zbRUWgtcWM75eOi8DmV/iLZyNNBUshcdBtSktU+HpxY=;
 b=aT0zrVfTtuGuwomi6JrxPcMEeAh0IEX89YTBs/+o0fnAsRBR90l1iJ1/
 WUr2mrZrGVv0UAo/CNO7Svf3lvusiVlaMCNdDGgIGkoz5MhekEm6tOIgG
 etZlmvLuVwtk1MpS6RPXbqUu3YQLZ0Fclm622dazT93+apepiJiYPQJQ6
 UnIheBf4rTfpU3jX7cPXZEwXfwi8954E0sXEykt6+kU6t56GK7p9sl8A/
 CVzqejIyRS/uaGfS3qdtv0am7Ac3JKDhbGcb09V1R6kaKOp54gmRYsXcq
 FqaqNaBfNWR7hkBt+Lu7xfPudPLXxv0SNItQuRe+6p+LuKS6TlVIXCh8X w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10813"; a="441163192"
X-IronPort-AV: E=Sophos;i="6.02,202,1688454000"; d="scan'208";a="441163192"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2023 15:36:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10813"; a="740760780"
X-IronPort-AV: E=Sophos;i="6.02,202,1688454000"; d="scan'208";a="740760780"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga007.fm.intel.com with ESMTP; 25 Aug 2023 15:36:17 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 25 Aug 2023 15:36:17 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 25 Aug 2023 15:36:17 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 25 Aug 2023 15:36:17 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 25 Aug 2023 15:36:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SDnXXS2bkdFKs57/IrfAKHqwuKzz/Hc9SSQeAV/EL2QUIHfMfjGYYvtz62samKTrHRCNRtlzp0X818Qp0Py3A3YvcQ4JOZEVJe/DfvwHaN4qGl5DngeqlTg04igl8sU/TCDyKeeLclpFzt168tTL5IhheLbWRUm1zceYCEU1i1Z+6OTSdRzaxxYldt/9jdJ1hQSNUgxWRnG3FaRPAa+cgKOR3Rg8ix+rkBh5Tdu5QLNXpifESHM/Drcv/WOGhaDUQbSfZg7EQs1ktaRsSbyNjsHwX1ERAuKlajzAtagIiNMabkZ/+uqJnNw8maPH3VNRzO/ww5SVs+Z8ed9V4x6NFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b+9d7o2G0FSzo8B/uAtqqQ6iKECH06P8A1PO3fxfO9E=;
 b=KRwUtf6rWdorjePPnEGrTnW3e7E9xa2WW6G84yiww/Hh/VtbzrqxUazqxbs9KxeqqXW9fxYsqYt7RIko2RSNuVSsFebfFHayqQ53uWR4OXWbnqtw8GL1Z9d6F+wi5UXT/GfZnsidBCSnH6qEohHFkKhyjWJ0IxFFIN8IwRzg8PERjljnE1+Mol08LPq/NqkTdqIgPp9ULe5y+yjcqodvVF/1ZX0VtoBnn43Ser0ZffSBF5cIZ3l/qgbKAakghhWLRSHq17I23Kb02vu62vjGddwJONmDwU/Wtn3jFy9AtzAz3gcsdn+VwcOglZJ1frQsVKSrjbxY3EwZPmb9OXKiVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SJ0PR11MB6768.namprd11.prod.outlook.com (2603:10b6:a03:47f::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.24; Fri, 25 Aug
 2023 22:36:13 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79%5]) with mapi id 15.20.6699.028; Fri, 25 Aug 2023
 22:36:13 +0000
Date: Fri, 25 Aug 2023 15:36:11 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <qktozcvyxzd34njw23r4or5celal5rwgjrhvgmz3mne7mfcxz7@idxlu6rvnn6m>
X-Patchwork-Hint: comment
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
 <20230823170740.1180212-32-lucas.demarchi@intel.com>
 <20230823204921.GL1529860@mdroper-desk1.amr.corp.intel.com>
 <sydv7bpb3ov6nemwjcmbf5f5eojpdcul6bz43lsjmshgmo4pxg@utjuv4nyyerf>
 <20230825215533.GH1529860@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230825215533.GH1529860@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: MW4P221CA0011.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:303:8b::16) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SJ0PR11MB6768:EE_
X-MS-Office365-Filtering-Correlation-Id: 08657d88-7745-43e4-354c-08dba5bbb00d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Wsca96s/3l/S3GNj8VEoGuDVoekKcE5114FasFKvctAntG2bRfG/APKRBhM0fLYTVbuXMljBhtgjgp1D00jAzKSqP7KITx6RixyP0sB0Q4HxUJf2yom5W3XlOgNdKISSOjjiKpDULXbsXd2otK0TlDuAIbbRb1GlFs53FYQdd80cmGHxFpO3ZQx6XPDk9jFt97ZVG6ajgrc7Ac5HfxwHXcC5ZWcPxUODakWRIl/NoMAwMMQ0zuNKGodtLS/P9m4KgVQoaPX+PNj/zTjCabvX+dRirgYW83H2I8ugurmspc5yAEbm7qHGwPzERUzmRSKHcuTi0cgwN7RPwCjdhKs1t7WverRWaueXjNrTCtRRPD43nSH4p3ZgGXLOa52faPHpgoWHy9KqXd4FQls1IqIHFPmlEhU1CY4WxpNVqwOiM75/uWN5F60PgB7+3jbdLmeoPv8RX1/WToyKLHN0d/FzfK12d0rsXMgVAQOap/X1UG4FJbMF5S4qJw3ikN5h6dfaUb+NasX511znv0vKorNmU4BoJWFG8i7M1xZyGJLj+e2EFgBlvB06kr9PL+O9JU51
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(376002)(396003)(136003)(346002)(366004)(39860400002)(186009)(451199024)(1800799009)(450100002)(66476007)(66556008)(66946007)(41300700001)(478600001)(9686003)(6512007)(6506007)(6486002)(6636002)(316002)(5660300002)(8676002)(6862004)(8936002)(4326008)(26005)(83380400001)(82960400001)(86362001)(33716001)(2906002)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?WxRmoShBQEweas89QrY9BFzOI23oSZIRuudLHp2UWGzrm0uU4VBO2SI64ZKh?=
 =?us-ascii?Q?gHZJRBNdPmA7PpDJB+8qPeMx2rl1Mis7H08kOpTP21rMhIGYXeLRA/71t1ry?=
 =?us-ascii?Q?10I7Py8R5o4Rzoj9XWJiQl5EgTBIKa7No9L1AeL0ODR4BMue6WAhZNjyTIle?=
 =?us-ascii?Q?pck0ly3i38eKYxfw/jpi9gDP14UD60q62HgOqpUpU/m4zfzxpCk/ntcKKUuf?=
 =?us-ascii?Q?WdZvHTOeQaKpzbO5AP/mtuEK0Bwsq4gkEVbF5FWwZGzOH7tSyX9bHQyiarrx?=
 =?us-ascii?Q?TN3KFiEud55UZcNvFlkCaOeGvvsfDc0ZNZcGUpoRnOmyliE9TfHC0jQxJqIQ?=
 =?us-ascii?Q?IwuJoLYKFy1Uc1qJUxkWSy4m6POmHzyusF2ztVQf7ZCBHKS3D/UYhSt4Nvrf?=
 =?us-ascii?Q?93ZfV1g6W4qX9nTGbRSfEV9tSp+Plgsn3kE77WXsQrBBVsGoaK4RbqnF6OwK?=
 =?us-ascii?Q?mxEjwhHEdtMm+36KD5kydn7dlG7oH87P4aby1mSyEAS628hpLWjiMG7xB79V?=
 =?us-ascii?Q?30Q6KKxoI5FwgdsvTKpuHjX2twey2jQMJg+7s7XEv/0dWqwe2KAJE2QEespU?=
 =?us-ascii?Q?J9mIuBIBx8vfyYP3qWMMEdMeds4y4Nv1eaKtnODxEJn5NJRg8979rN0r+O/w?=
 =?us-ascii?Q?hHXnnrWwLuqZV5iA6qpVEqSgshrL4IZR7TzPs4jbb6CsLlHs0Y7zggaZ6vDx?=
 =?us-ascii?Q?Ek4wr6U+5srhd0jtLy543yXB7EmEjLl5tmf3v9XGGH+txIXz8VtKSiRbfbg7?=
 =?us-ascii?Q?u/sr37fEAruD80aYx/m9SZiSe4Fds1aUb7CnjoC9q0w0TXd929uE/S+dHYpl?=
 =?us-ascii?Q?jGTvkgOOL8sNIiVkOw5pDO0PlCl6gig+sSLUKwctvgPogFok0XfZjt7x2m4x?=
 =?us-ascii?Q?nWGveX4TLAiK7ZI8t4++XGEt5qhREXjWq/pkeJ/O53H09PqiA3+13TYHlCz1?=
 =?us-ascii?Q?CbWXK/iSpC2edcxYugXphwfNT6L+ED8goQ3X6JywwpHzUHtC55mlRAT1dO43?=
 =?us-ascii?Q?pd5TAs5mkVDGC3JwijHSO1zx0BVoTmE1zze6DKSinTojZQ7D8bMlxPTuLNwe?=
 =?us-ascii?Q?+soLpq/yR+q1A49QhHsCteSR5qmpfPGvH+U7EerXt2khW4GxCHOdw19jooU7?=
 =?us-ascii?Q?FW/VAR/rvIS3CuogMUgCqA6ZvzxZXEU6+lG9IdJj6CbHqIE32tdEm1F7Dqk6?=
 =?us-ascii?Q?MA+693VGnTDDLvz+xRAyf+36hoKj9/6nl5eAzwfX8/1AJ1PrSdtdUNwUD4LU?=
 =?us-ascii?Q?cXitXiinxytchVNl/BPgJItMEKBy6qzdvf0KNb3KD2NDba3RVHJJw2vMJX9m?=
 =?us-ascii?Q?Hw9IgXXjbbOPyYy1t16nmpN3Rt1EbBVCZpGnK3eUC9Ro2EDE0q3UjwH3JoeD?=
 =?us-ascii?Q?JZiYxjm7Kwwu3mBdNoY7NhsVvimz0y1eVzbkJRipPEDqqSOYerPkex9Lg1ni?=
 =?us-ascii?Q?Mzj1Dbo1FDXTMKv79LT7kFPVwTImJwBbslYVkH1UFInUNytOIMCZZp8eyTLX?=
 =?us-ascii?Q?Ay/8A2NC6bqe/ha4lOwZU1pyfDWBelBU2594YtxHP0wL1wvgQg369OBCZEKG?=
 =?us-ascii?Q?APq1HF4fv0/K/Ctn7+NWnNIddu43l65CmxcNBlWHEATcp7cuYWxUjLu9LM8l?=
 =?us-ascii?Q?yw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 08657d88-7745-43e4-354c-08dba5bbb00d
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Aug 2023 22:36:13.6067 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5PsjV9EB82eWgR+Aj3WS34fptXoZ3Z7N6pftIqTKT9y5/1D+FwDzbYczSWkRzZAogpeS7BNb8FH1Gt6c3wntKTe8PFxkoTmmuBNA032Byjs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6768
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 31/42] drm/i915/lnl: Add
 gmbus/ddc support
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Aug 25, 2023 at 02:55:33PM -0700, Matt Roper wrote:
>On Thu, Aug 24, 2023 at 09:25:54PM -0700, Lucas De Marchi wrote:
>> On Wed, Aug 23, 2023 at 01:49:21PM -0700, Matt Roper wrote:
>> > On Wed, Aug 23, 2023 at 10:07:29AM -0700, Lucas De Marchi wrote:
>> > > LNL's south display uses the same table as MTP. Check for LNL's fake PCH
>> > > to make it consistent with the other checks.
>> > >
>> > > The VBT table doesn't contain the VBT -> spec mapping for LNL. Like in
>> > > other cases, uses the same as the previous platform.
>> > >
>> > > Bspec: 68971, 20124
>> > > Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
>> > > Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>> > > ---
>> > >  drivers/gpu/drm/i915/display/intel_bios.c  | 2 +-
>> > >  drivers/gpu/drm/i915/display/intel_gmbus.c | 5 ++++-
>> > >  2 files changed, 5 insertions(+), 2 deletions(-)
>> > >
>> > > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
>> > > index 097c1f23d3ae..3772b91e155c 100644
>> > > --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> > > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> > > @@ -2195,7 +2195,7 @@ static u8 map_ddc_pin(struct drm_i915_private *i915, u8 vbt_pin)
>> > >  	const u8 *ddc_pin_map;
>> > >  	int i, n_entries;
>> > >
>> > > -	if (HAS_PCH_MTP(i915) || IS_ALDERLAKE_P(i915)) {
>> > > +	if (HAS_PCH_MTP(i915) || IS_ALDERLAKE_P(i915) || IS_LUNARLAKE(i915)) {
>> >
>> > The LUNARLAKE here vs PCH_LNL below seems inconsistent.  Either way, we
>> > should probably put the newer platform first in the condition.
>> >
>> > Aside from those
>>
>> If we drop IS_LUNARLAKE, then we need to check for something else here.
>> What about doing this?
>>
>>
>> 	if (INTEL_PCH_TYPE(i915) >= PCH_LNL || HAS_PCH_MTP(i915) || IS_ALDERLAKE_P(i915)) {
>>
>> ?
>
>Yeah, that's fine in the short term.  Although I wonder if moving
>PCH_LNL before the discrete GPUs might simplify the various conditions
>that need to match on SDE behavior since it's probably closer to the MTL
>SDE than to the discrete SDEs?  I haven't looked through all the
>conditions to see which order is simplest overall.
>
>Longer term I think we need to replace the whole intel_pch enum with an
>intel_sde enum or something since this stuff generally isn't related to
>PCH anymore, and we should be looking at different things to determine
>the exact version of the SDE logic.
>
> - For MTL, both NDE and SDE live on the same die (SOC); PCH isn't
>   involved.
> - For LNL, NDE lives on the compute die and SDE lives on the SOC die
>   (as does the PICA, so the PICA ID can be used to fingerprint a
>   specific version).

Yeah, agreed.

Lucas De Marchi

>
>
>Matt
>
>>
>> >
>> >        Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
>> >
>> > >  		ddc_pin_map = adlp_ddc_pin_map;
>> > >  		n_entries = ARRAY_SIZE(adlp_ddc_pin_map);
>> > >  	} else if (IS_ALDERLAKE_S(i915)) {
>> > > diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
>> > > index e95ddb580ef6..801fabbccf7e 100644
>> > > --- a/drivers/gpu/drm/i915/display/intel_gmbus.c
>> > > +++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
>> > > @@ -155,7 +155,10 @@ static const struct gmbus_pin *get_gmbus_pin(struct drm_i915_private *i915,
>> > >  	const struct gmbus_pin *pins;
>> > >  	size_t size;
>> > >
>> > > -	if (INTEL_PCH_TYPE(i915) >= PCH_DG2) {
>> > > +	if (INTEL_PCH_TYPE(i915) >= PCH_LNL) {
>> > > +		pins = gmbus_pins_mtp;
>> > > +		size = ARRAY_SIZE(gmbus_pins_mtp);
>> > > +	} else if (INTEL_PCH_TYPE(i915) >= PCH_DG2) {
>> > >  		pins = gmbus_pins_dg2;
>> > >  		size = ARRAY_SIZE(gmbus_pins_dg2);
>> > >  	} else if (INTEL_PCH_TYPE(i915) >= PCH_DG1) {
>> > > --
>> > > 2.40.1
>> > >
>> >
>> > --
>> > Matt Roper
>> > Graphics Software Engineer
>> > Linux GPU Platform Enablement
>> > Intel Corporation
>
>-- 
>Matt Roper
>Graphics Software Engineer
>Linux GPU Platform Enablement
>Intel Corporation
