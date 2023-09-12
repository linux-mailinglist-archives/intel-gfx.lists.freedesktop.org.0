Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2649079D656
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 18:31:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFBC010E43D;
	Tue, 12 Sep 2023 16:31:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15F3510E43B;
 Tue, 12 Sep 2023 16:31:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694536263; x=1726072263;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Y760Uld7rgTzdw44OeI5u67iUl+IqBKMHhUIBCED8RA=;
 b=Qe0q83/6b5G3rTFMCTKCwux8/uUC9yzvECveh/F7lOy6C96SXKBCQakH
 yKe0lqub3p20/d0FIbqjxejQ5cLi/W3Vs8uu3twHVi1TP3AOxzoysLRZ/
 96ApLYc4jC0uHpz46bcaJmqpYwyz5wIMPUERtK7BfPkpUoykoAngG4PVC
 3WBgXruuL1JMvdWwTjS/04ClFYPhsnmWC4a9FKnFMnvv98dEmVENBqOs/
 fr7iU/G1YUYREfpi/7OJ+Gz0qE8vUoNpig/6YOd1SzrJIoNUHch6YK0k3
 1WQnsDoYkjWvpEWHG1O/S3ymu2m0S4PXHgQk1ktwBWTROJHZfBhfb7cYU g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="357861606"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="357861606"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 09:31:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="737174428"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="737174428"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2023 09:31:01 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 12 Sep 2023 09:31:01 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 12 Sep 2023 09:31:01 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.48) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 12 Sep 2023 09:31:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ChWvIJOlZPRVz/xZHrY72RMShYcqbG1pT91lMpqS/T2rwDtaFHtf16GtoprS7w3S1aciIw4mF+Ii3U0I7N397Bk+K0k0I3nIi6ng4YqsOQBNlIwblF0Z2VJupz1FAhh04uE8od8kuwzPfu9Pttbc4poZIaXns7w6lAKAjuZ/Bu3c0BSdkAl7hrUPzG94U/myQDKzkLy/J/bMQfZXUqaySnrPsCO3Yb6eK/3Cw/46meyaeZ2KQe7u1ENyocSQPZMThD/Ofmy+3zps/onGdzWTqLQP+8ApTEU7aWIpNADLhnShD/aXWY+vFD3yqnAUXhXvE6ZDFspYpaoL+9Kfk4JVig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qzOlDXOlpdcsZgpuSrwuk3dao7mWFJSOpY83AKlDsv8=;
 b=N7M2k9FSCotG/1jDoOdYHORhfL13LEXFoqwbD1PpcbaDFqcq1Img/lONBNaaf3AstZb92qepTaSisLFGUkwZEh6W3JwpQmX4POzmAajHd5jMjhhFwsnL2uZFj4AjGm+w2y/gqDtQrYyjJAJSpb0GFKnlGaGR8gtc2IB55IZrh9Ko8JfGvgLIBe5Tj9k9KjQMjdoZG2WmEZaml+MK5MzJXpGrYvX7r99QkwXArGLqod8dh3iBrUQhYJPJW4+A3xOmUGit5kO0bU1PMWotuMytfK4Np/J8NrFhtEUGXFEkOr+4LhN5/8/XgJU1QSTFdHuVRJCJ9qmKzMs7fd77FpQzkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by PH0PR11MB7448.namprd11.prod.outlook.com (2603:10b6:510:26c::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.34; Tue, 12 Sep
 2023 16:30:59 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79%5]) with mapi id 15.20.6768.029; Tue, 12 Sep 2023
 16:30:59 +0000
Date: Tue, 12 Sep 2023 11:30:50 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <b5osfnqb2ahzsqzjdgau7jwpe22nfmhegiugmfzdntrdl6h35g@hbb4bnrd2aud>
References: <20230912044837.1672060-1-lucas.demarchi@intel.com>
 <20230912044837.1672060-17-lucas.demarchi@intel.com>
 <20230912160417.GL2706891@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230912160417.GL2706891@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: BYAPR06CA0064.namprd06.prod.outlook.com
 (2603:10b6:a03:14b::41) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|PH0PR11MB7448:EE_
X-MS-Office365-Filtering-Correlation-Id: e76c1422-4440-4403-1d6b-08dbb3ada581
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: q0GRaoSCS4ehrR0/dtfFY/KYy84fkgs4pQ1BlNo7ldn6zWm8l7UDonuj/Y80IAron/RZnaQ5w5t1tqYJO2DctrjofuBOGFZOH00KIjgxI8F0AtD84+g+EfP6nVZmhvt7K6bjGvnyLDpMpRETSUql0+wiGbCSaYx9jq+wSK29Qlfu+098SymnoM52h5oEaQFG+AVkva1qOKGMBdavK4Z7VKN6cARwR0LeU9pTQs8Ge0HoK01/a2ilX8reDgTzip1suFrTvCtV02AJLWClJWiZnAbGoWf1tDLmvjKcqnTBpm4MGkZXprHLUiKknpDlhfNVznbBlLgMj5P+rxkTkxPdxVtNtlm7ifNsGjDn+asO+dfvNCaHebMprVRJIzEFL6R4ud6NUUkPoy5ISy2FnRD8rB/BMbn1NypjUmBtaoU9iBy6KTWbfZStuGgoZ/j6Lg7MgZjKdgWQCqe2S25jKhpo1csE3o7fvy0pDR2+CkI8QEk12MOoQVlZ5x7it1Bg8BTkOSU0aFpzzh6UtCeTi/Y9QVywO9tfCOM2GRPgNDHBskoiSu/Q5rtVn1idXyHXgfh2
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(366004)(39860400002)(376002)(136003)(396003)(346002)(451199024)(186009)(1800799009)(41300700001)(6506007)(6486002)(6666004)(26005)(86362001)(6512007)(82960400001)(38100700002)(9686003)(2906002)(83380400001)(33716001)(8936002)(6862004)(6636002)(8676002)(4326008)(5660300002)(478600001)(66556008)(66946007)(316002)(66476007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?V/lx90pFGfqJDri50Ehvv3dGZfXj4SUHPbBqqbACJ9HbR98UtrTms1FDE6n6?=
 =?us-ascii?Q?4Dy7qXro2Fy1AaX25XoZzdClUwyAadRnh3/QwgnDBNmwxAGNwFAau1Z7DR/N?=
 =?us-ascii?Q?G+oMeYL4+9umu9TwuiTs5X4VaOb0usLLK1hnQD93yAyF/jXkEr2Zx3gHsOCr?=
 =?us-ascii?Q?/gwM1MudBgQQZpBHX1OLtUG/3I/rDcuxxFuCF/zD/qs9wAP87WSro47UaTxr?=
 =?us-ascii?Q?uM7mANiUwDuUjvU0g9pzabIotBsYcHDS3n/v8i4PdgT/yv8+hPPRM3A6Ee5l?=
 =?us-ascii?Q?kY+/ykcN+/402avGJoly+IcTCN1xvWVv1ty7fUc4sXeJ2h50CkaJastEyozI?=
 =?us-ascii?Q?N1H5FI3TUNtgV9ojOShBub3fuwTvUU03+M3QUijSRAqhhjMZEBjuLho0bca0?=
 =?us-ascii?Q?1QNNcWStayoH8QTwRNT+KMlkJ8WfcQZuLguI/ekaZgM9RnH+nb18xcvGlgcC?=
 =?us-ascii?Q?hTvAALvQhv8f2b7yg+6RtcJEvEbJJbKQN6q2bx/IwUANLBKrQuu2itsA5vvv?=
 =?us-ascii?Q?G7HXglLnTLA0PtYH56RUCtdrPRSIuHQ5jEV768Tq7NNg0P2eGmZI4UQ6KsXy?=
 =?us-ascii?Q?k2mw9VBa74cSD7br9X7GhYLcRUk61Mb39utTcDBkZ+oDl3alw7Kq8XMydhox?=
 =?us-ascii?Q?VljBPvw7iDgZbh18hMmAO4m109OkhoSYfm6ITosS5q5PPgpQbUZM4TAvni5t?=
 =?us-ascii?Q?a7SBRJcbngYEA9f/n6uN5iBbG7iD17cMBjP/JoDSjFO+GVGIsmcrn6N5cgSb?=
 =?us-ascii?Q?1R3DxmBN1k/P7IqGskeIBVqJt9+vb6/yKcYHCUBwb8bBI/ItiMU9rWp4jv59?=
 =?us-ascii?Q?eNdY4u7WLE5OK60qgtfPrtAJFCLwclbe/yiF2F9Ek+RPFsNu/0l0ipu6MDHj?=
 =?us-ascii?Q?iMOF++R3waeOE7KOOpnjI2cv+VpJtZjZdU8FOp42G8K/SF5WxgMEhMn1+ggt?=
 =?us-ascii?Q?M+SNI7R6FOuqIZFHN61EORMKAs2U85gmifa1yzG/GMQQztT63P4DxVd6t8dz?=
 =?us-ascii?Q?L7ozj0+DNpvpmeXlb/d8fCHEOl1ezIUXZaU/Sx4FcI0MsjLtlkCqNTPOtmJL?=
 =?us-ascii?Q?w5yU6DjIOvpNzJjv4mT0E78Fzg4Z+JJOe8U4EiNbuR5L7VIfmzlnHGN+r7Ls?=
 =?us-ascii?Q?VSxf9Mi+Jriy/w2ul5vnBiOV42qdU9Vh4tjeI7MW69TvjMNDyaumy1cySkdf?=
 =?us-ascii?Q?Bj0Nm+iG0EFaSYxsAdBMrwnDJG341os+Ph0me4+bDw3P/5kQAgO9x14Gik9h?=
 =?us-ascii?Q?JREzGiZkUiaF+xMk22IQrnmPLpAIIXaDOfUcvjKO3DkUf0CtHnqvg2ND5hW9?=
 =?us-ascii?Q?Jck9AXFGdH12s+h571PdOlZ4MzCz7mqUm6oGhoWy2CIMMiboFbtC/F6YKiw1?=
 =?us-ascii?Q?ygp/0y2MsBartb7+eI/ksjKvtmQlAVPkGZ/0j23uz0dddCqp+HdXNSBDnL27?=
 =?us-ascii?Q?DoWt7VDpYh64zYbEhBQqr8WoV5ETSDyfnMib/O7jGBDpXCS/jy3Yn0SrtZ0f?=
 =?us-ascii?Q?MqpEHfwYZTEKAl3PWZVQWn70qGThomT/m2vXlbF2ybQmsGCcQjkqpF3TmmR6?=
 =?us-ascii?Q?xSv94fADY6fAexw1KwTAPDstxc2A1psnjssTJloPAMBvSw3WOsSrOIr7Crqz?=
 =?us-ascii?Q?gg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e76c1422-4440-4403-1d6b-08dbb3ada581
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Sep 2023 16:30:59.2932 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jC8Ew7TdQmbjNLpKjIZBlTR2LPIt9BWdPIrJpv5utgHVg5sbNHdY4MYReBA6dFEZp4fPzLSQJU6kHwQEnef59KcUvfxsVaThL9KHAmFr/Ho=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7448
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 16/29] drm/i915/xe2lpd: Add display power
 well
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

On Tue, Sep 12, 2023 at 09:04:17AM -0700, Matt Roper wrote:
>On Mon, Sep 11, 2023 at 09:48:24PM -0700, Lucas De Marchi wrote:
>> From: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
>>
>> Add Display Power Well for LNL platform. It's mostly the same as MTL
>
>It might be better to say "Xe2_LPD" and "Xe_LPD+" instead of LNL/MTL?

ok

>
>> platform so reuse the code. PGPICA1 contains type-C capable port slices
>> which requires the well to power powered up, so add new power well
>> definition for it.
>
>Maybe add a sentence noting that the dc_off fake powerwell will be added
>in a follow-up patch so that people don't think it was overlooked here?

ok

>
>>
>> BSpec: 68886
>> Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>> ---
>>  .../i915/display/intel_display_power_map.c    | 36 ++++++++++++++-
>>  .../i915/display/intel_display_power_well.c   | 44 +++++++++++++++++++
>>  .../i915/display/intel_display_power_well.h   |  1 +
>>  .../gpu/drm/i915/display/intel_dp_aux_regs.h  |  5 +++
>>  4 files changed, 85 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
>> index 0f1b93d139ca..31c11586ede5 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
>> @@ -1536,6 +1536,38 @@ static const struct i915_power_well_desc_list xelpdp_power_wells[] = {
>>  	I915_PW_DESCRIPTORS(xelpdp_power_wells_main),
>>  };
>>
>> +I915_DECL_PW_DOMAINS(xe2lpd_pwdoms_pica_tc,
>> +		     POWER_DOMAIN_PORT_DDI_LANES_TC1,
>> +		     POWER_DOMAIN_PORT_DDI_LANES_TC2,
>> +		     POWER_DOMAIN_PORT_DDI_LANES_TC3,
>> +		     POWER_DOMAIN_PORT_DDI_LANES_TC4,
>> +		     POWER_DOMAIN_AUX_USBC1,
>> +		     POWER_DOMAIN_AUX_USBC2,
>> +		     POWER_DOMAIN_AUX_USBC3,
>> +		     POWER_DOMAIN_AUX_USBC4,
>> +		     POWER_DOMAIN_AUX_TBT1,
>> +		     POWER_DOMAIN_AUX_TBT2,
>> +		     POWER_DOMAIN_AUX_TBT3,
>> +		     POWER_DOMAIN_AUX_TBT4,
>> +		     POWER_DOMAIN_INIT);
>> +
>> +static const struct i915_power_well_desc xe2lpd_power_wells_pica[] = {
>> +	{
>> +		.instances = &I915_PW_INSTANCES(I915_PW("PICA_TC",
>> +							&xe2lpd_pwdoms_pica_tc,
>> +							.id = DISP_PW_ID_NONE),
>> +					       ),
>> +		.ops = &xe2lpd_pica_power_well_ops,
>> +	},
>> +};
>> +
>> +static const struct i915_power_well_desc_list xe2lpd_power_wells[] = {
>> +	I915_PW_DESCRIPTORS(i9xx_power_wells_always_on),
>> +	I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
>> +	I915_PW_DESCRIPTORS(xelpdp_power_wells_main),
>> +	I915_PW_DESCRIPTORS(xe2lpd_power_wells_pica),
>> +};
>> +
>>  static void init_power_well_domains(const struct i915_power_well_instance *inst,
>>  				    struct i915_power_well *power_well)
>>  {
>> @@ -1643,7 +1675,9 @@ int intel_display_power_map_init(struct i915_power_domains *power_domains)
>>  		return 0;
>>  	}
>>
>> -	if (DISPLAY_VER(i915) >= 14)
>> +	if (DISPLAY_VER(i915) >= 20)
>> +		return set_power_wells(power_domains, xe2lpd_power_wells);
>> +	else if (DISPLAY_VER(i915) >= 14)
>>  		return set_power_wells(power_domains, xelpdp_power_wells);
>>  	else if (IS_DG2(i915))
>>  		return set_power_wells(power_domains, xehpd_power_wells);
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> index ca0714eba17a..adfe9901bde4 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> @@ -1833,6 +1833,43 @@ static bool xelpdp_aux_power_well_enabled(struct drm_i915_private *dev_priv,
>>  		XELPDP_DP_AUX_CH_CTL_POWER_STATUS;
>>  }
>>
>> +static void xe2lpd_pica_power_well_enable(struct drm_i915_private *dev_priv,
>> +					  struct i915_power_well *power_well)
>> +{
>> +	intel_de_rmw(dev_priv, XE2LPD_PICA_PW_CTL,
>> +		     XE2LPD_PICA_CTL_POWER_REQUEST,
>> +		     XE2LPD_PICA_CTL_POWER_REQUEST);
>
>Do we need rmw here?  Bit 31 is the only writable bit in the register
>(bit 30 is RO and can't be clobbered), so a simple write should suffice?
>Ditto on the disable below.
>
>> +
>> +	if (intel_de_wait_for_set(dev_priv, XE2LPD_PICA_PW_CTL,
>> +				  XE2LPD_PICA_CTL_POWER_STATUS, 1)) {
>> +		drm_dbg_kms(&dev_priv->drm, "pica power well enable timeout\n");
>> +
>> +		drm_WARN(&dev_priv->drm, 1, "Power well PICA timeout when enabled");
>> +	}
>> +}
>> +
>> +static void xe2lpd_pica_power_well_disable(struct drm_i915_private *dev_priv,
>> +					   struct i915_power_well *power_well)
>> +{
>> +	intel_de_rmw(dev_priv, XE2LPD_PICA_PW_CTL,
>> +		     XE2LPD_PICA_CTL_POWER_REQUEST,
>> +		     0);
>> +
>> +	if (intel_de_wait_for_clear(dev_priv, XE2LPD_PICA_PW_CTL,
>> +				    XE2LPD_PICA_CTL_POWER_STATUS, 1)) {
>> +		drm_dbg_kms(&dev_priv->drm, "pica power well disable timeout\n");
>> +
>> +		drm_WARN(&dev_priv->drm, 1, "Power well PICA timeout when disabled");
>> +	}
>> +}
>> +
>> +static bool xe2lpd_pica_power_well_enabled(struct drm_i915_private *dev_priv,
>> +					   struct i915_power_well *power_well)
>> +{
>> +	return intel_de_read(dev_priv, XE2LPD_PICA_PW_CTL) &
>> +		XE2LPD_PICA_CTL_POWER_STATUS;
>> +}
>> +
>>  const struct i915_power_well_ops i9xx_always_on_power_well_ops = {
>>  	.sync_hw = i9xx_power_well_sync_hw_noop,
>>  	.enable = i9xx_always_on_power_well_noop,
>> @@ -1952,3 +1989,10 @@ const struct i915_power_well_ops xelpdp_aux_power_well_ops = {
>>  	.disable = xelpdp_aux_power_well_disable,
>>  	.is_enabled = xelpdp_aux_power_well_enabled,
>>  };
>> +
>> +const struct i915_power_well_ops xe2lpd_pica_power_well_ops = {
>> +	.sync_hw = i9xx_power_well_sync_hw_noop,
>> +	.enable = xe2lpd_pica_power_well_enable,
>> +	.disable = xe2lpd_pica_power_well_disable,
>> +	.is_enabled = xe2lpd_pica_power_well_enabled,
>> +};
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.h b/drivers/gpu/drm/i915/display/intel_display_power_well.h
>> index a8736588314d..9357a9a73c06 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.h
>> @@ -176,5 +176,6 @@ extern const struct i915_power_well_ops icl_aux_power_well_ops;
>>  extern const struct i915_power_well_ops icl_ddi_power_well_ops;
>>  extern const struct i915_power_well_ops tgl_tc_cold_off_ops;
>>  extern const struct i915_power_well_ops xelpdp_aux_power_well_ops;
>> +extern const struct i915_power_well_ops xe2lpd_pica_power_well_ops;
>>
>>  #endif
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h b/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
>> index b4e96baae25a..c869f5661530 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
>> @@ -86,4 +86,9 @@
>>  		 _XELPDP_DP_AUX_CH_DATA(__xe2lpd_aux_ch_idx(aux_ch), i) :	\
>>  		 _XELPDP_DP_AUX_CH_DATA(aux_ch, i))
>>
>> +/* PICA Power Well Control */
>> +#define XE2LPD_PICA_PW_CTL			_MMIO(0x16fe04)
>
>Is this the right header for this?  It doesn't seem directly related to
>DP AUX.

In Xe2_LPD, those AUX registers are also

I had the same question myself while rebasing this patch as this is
not related to DP. However the register itself seems to have the same
functionality as the other registers above with power request/status.
And if you look at bspec 69009, all of them are under pica for Xe2_LPD,
too.

I'm not sure what was the criteria for the split of this DP header.
It's clearer for things like gt, engine, snps phy, etc, but this one
seems to have been more or less arbitrary.

Any suggestion for a better place? A new display/intel_pica_regs.h
maybe? That may not be as future proof in the cases register move from
one place to the other like happened in Xe2_LPD: see bspec 69009.  All
the PORT_BUF_CTL*, PORT_HOTPLUG_CTL, etc should then be in this header,
which doesn't match previous platforms.

If instead of matching HW we try to match where it's used in SW, then
maybe a intel_display_power_well_regs.h, but that too doesn't match
previous platforms.

+Jani

Lucas De Marchi

>
>
>Matt
>
>> +#define   XE2LPD_PICA_CTL_POWER_REQUEST		REG_BIT(31)
>> +#define   XE2LPD_PICA_CTL_POWER_STATUS		REG_BIT(30)
>> +
>>  #endif /* __INTEL_DP_AUX_REGS_H__ */
>> --
>> 2.40.1
>>
>
>-- 
>Matt Roper
>Graphics Software Engineer
>Linux GPU Platform Enablement
>Intel Corporation
