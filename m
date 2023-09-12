Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B7779D5E2
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 18:13:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C34F10E05E;
	Tue, 12 Sep 2023 16:12:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E37310E43D;
 Tue, 12 Sep 2023 16:12:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694535175; x=1726071175;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=sHeJfOdA1xW1yj+kTjmxs15Bizq9iOXCPDk96JvdP+Q=;
 b=K08KAf1br3SkyY+pMRDskGi6IdfvYJZw6iDshu/UQW+K3i72DEgvLylk
 ajptTOXwKQEmTSBDUjV/oonQpJNKFr9YuNn46xG/d8CQ1o2Jt0Z9yZ0tx
 abVM5V2aez7U59UIjl+6NEfATAbN214eFMov76f3XhL/ebkr0FZWI5yPK
 1Ti2w/aWO3T945lNNWfP0g3NSAiW029oWWVq5GU8Xrg5WQVP8vdHs9ls2
 eL5kyThCV+Cq4H0IUgfjJifOKlhNdPE67Xi/g0fKkTH/vJxbtDpS4RN+l
 eNNJWFhHRYmhHLNqMGybVlpWvKv6b6kLjsz0muLB1YnWkVnEGYwdmjBXq w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="368685821"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="368685821"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 09:04:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="693540213"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="693540213"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2023 09:04:28 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 12 Sep 2023 09:04:28 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 12 Sep 2023 09:04:27 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 12 Sep 2023 09:04:27 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 12 Sep 2023 09:04:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AKt8bQnHB7fVUUu9CYpx/Xb7dG1u+L9qWnfZDCRRAdAj3oqxb8zXnGb+Ck9gEK/p02DWFYj4+7LbwBqB/tg+kBatwLYJTdSEecGzhRV0ST6gJiMY13VqRlKyagQ2vQEW7x7BjWFPfHjueAINUDWEZzBueRitO8fSBKbpBkucaMNKADb5IXk2OZjAsT5T6D6exdkMs5rUBpp6vgxkqLE65r2fg2zmVP8fMUmT5o/UIT4t9WR41sVMmBUrMrmw/LRs8Nw3PZCWwat2NuZlr5p6pLQ/DmqnnchrG9A9U96ciObNOa6fqj2ShtAGYuMfCds3ZU3n3KEN8qdmqCkIA7J4Zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ohtI3js10v+gkyvW+IXhFgzkvmDbmI2TQJHgVNsytkk=;
 b=TcBm/Y4ILCFhdqwmtOWQmEYh2T1Gtk3eETV1qG4pTi/1POGyD4M4ZayJ4fh3TCt6kTIkLt5HHTypwZA7akRit9kedIGdxQW8Pzs86TTqoy1U5prwaXJAer6uuBnIbS/Vlu2n3kijP3CxPhYPO2gaOecbXU+3y143XVhZMeToHEY7LUoPtGaR9V26iI+gzfI2A6vBZtly+3NwaKmUq6w3//m0XhXcBSMxJWmleQomlQ3HDLQOZCmP7O7c+21QUr87Gq8o7HI+vik9X0zEwYBqv4W8iqB0kmJydwE5Pw4GDbLxWUUqgDkUIIB82S2OmlBsoEVfaSCVtBMvxPeNWCX3uQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 IA1PR11MB6420.namprd11.prod.outlook.com (2603:10b6:208:3a8::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6768.30; Tue, 12 Sep 2023 16:04:24 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6768.029; Tue, 12 Sep 2023
 16:04:24 +0000
Date: Tue, 12 Sep 2023 09:04:17 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20230912160417.GL2706891@mdroper-desk1.amr.corp.intel.com>
References: <20230912044837.1672060-1-lucas.demarchi@intel.com>
 <20230912044837.1672060-17-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230912044837.1672060-17-lucas.demarchi@intel.com>
X-ClientProxiedBy: SJ0PR13CA0089.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::34) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|IA1PR11MB6420:EE_
X-MS-Office365-Filtering-Correlation-Id: 2860e5a2-3a2f-4d5e-3b19-08dbb3a9eead
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: zEsqNbyPP2P2Vd44MA0A5u+ONoRpJ8cGrSult4arOyUxiy12CRKNPlevf9RxPF0+7Fo6GlfzFgHh+qpVpMj47OZpDBH4BBMzo5AJIgwIYDFw30EmRslDiDLMqo7iaWZtQ6kJILUno27j4pU4bPDBbWEQdOY13bEgVSyiCb6x7PcNgJOfmkF2wbJKXwFUB1jGlTJYOQPMJfi2SH8BE553K4UcfHT9BSEvrl8AywA9oYwW/GLvT4iGZl5Nus1bAloZXr5F7rp1mlL0af7i2/gO4l/OSP0FRLzmLxJwjXhqMhx/XRT/UrSROFzP5TNsXcgzK5NJQacUCnMNUj7hI5WKlId4UMg0dWUAZjLr/E3EMRomjpsC5lpzDlOpIbpFKZGyb1qw8iXOsqzibmKGBxy46uQMoi/BDrJ7FrtMzlqxjQA1xoHCgL020pELDSyPBuvKZOvjbf5pG47nGzVmwH7NwYjdnWljArMcH7BR+az0bWExATy5vJyRQKfhlCFl2lQAeHo/LsJZ3Iw/6rG+lQW6c6lFgKFuRQySaTpWhHzZNyuVw5S62LLIdnT+Lz4DxqvX
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(136003)(346002)(366004)(376002)(451199024)(186009)(1800799009)(82960400001)(6666004)(6486002)(6506007)(33656002)(38100700002)(86362001)(41300700001)(26005)(4326008)(2906002)(66556008)(6862004)(1076003)(6512007)(478600001)(83380400001)(450100002)(66476007)(6636002)(5660300002)(8676002)(316002)(66946007)(8936002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Gr2gMVR7DJHR9SDH3Qxcpe8wyH1CtLnrCDhvdHtlw9LOuD7Pny2NTgW/EW3B?=
 =?us-ascii?Q?6lLDaRNYTwFdSe1pSu90nLev7dKqgkKwoRQWwZZyQRi7ZROTxl5mvjXB+TT1?=
 =?us-ascii?Q?zRHo2bYYk1YirwsLGZYsenSzLPMJw05UsTfVRTI6rt577YM6VcmXkJ8OxNSb?=
 =?us-ascii?Q?H3Nd7dwpLVWKckFJzyeUD6waOpD30pbDAGkeGveh63pDRIva/DkGnq8A4PG5?=
 =?us-ascii?Q?WylSdL04sGZz/OaZhEYMhTh3NaDfFCMTAp8y5pre7wUZSmChEU6QUQhk7cnn?=
 =?us-ascii?Q?s/hUXOAZvgmjgc8D7cC5qexB+Id0bNd5uPL9DjmqXM/aZWcKGxey+sTihsnw?=
 =?us-ascii?Q?JjXb4y0Z85QM4K61kPu7n+fWk7EBPAR/V+hfScL8aSwdRmU0snTrjMHdJZC+?=
 =?us-ascii?Q?6zE+zvNJVWiu5ZrE8fDE5Egz0TobIEY4IVRJ0CYLlD9M34RS/VFclV0oOqxz?=
 =?us-ascii?Q?fESD784DC7QTWdt4832rFZ9Qh3Zz9KhImWboTrQstfoXv7bgDwva+cHjiXOu?=
 =?us-ascii?Q?dyVOwWXmMqZcKAflZhWbAy1mG0XOrt5CEb2NMUKH+0vMuo5T7heM52xRP22n?=
 =?us-ascii?Q?lFocJnZuPrwYGaK34VLe2xnoxE3Zh1NWiKji25stp15ufUeLd7qQ4bysqCxY?=
 =?us-ascii?Q?DvO2insuB6bhUU0oSfWDKLZhEbC/Bx7maz9sOTwjlTSl8JpQni4NNl+40Z1A?=
 =?us-ascii?Q?ZquFcT2zLIlaEL/NqsiLN6Q71R7q5LQh6MS0bvPve3UuhcYr0uFsVYzuknw9?=
 =?us-ascii?Q?8XkqsLnFv0Hzqan1H7TXAHHoxH8Wrn1t0pfcAz8fMZ4sjrOsaQzPB9nCZaAN?=
 =?us-ascii?Q?bfTW+wCpnXZl/0v6IaOOemxvn8V8EdMOhyVGl1jpa9kQKoA4+cAZx46C/qDJ?=
 =?us-ascii?Q?H97DgJmM782SxeHuJT9sznXB/TRDzkPSv59fbawz+u3eIsHNubQWHKLQ9rTC?=
 =?us-ascii?Q?pVEFrMJCwrp/iVJmjz0MyGZL4Un4xKX+VN6+SBbgHydMkSRfVH/DOFKo/dF0?=
 =?us-ascii?Q?IWaD375P5wCYENldlutthj7QqPu2znTqXwe3Gxij4Q4pdY5R+Zu3buANrZT6?=
 =?us-ascii?Q?B1CNKLYImHq33+3lQTFR3AG2snGELLNesMexlQN7aJbTrMejGtr1T+f9e/hW?=
 =?us-ascii?Q?+WeCxWMHxzlyCU751NzO57gC/yy30fQQXScITHVcDSOYGd81sI9e93XlpmQo?=
 =?us-ascii?Q?trRhbxHu3ve3GBFQoTlBcrgOEr9ZcDN/eYsFSZkiqYoAmbI/fWug6SkGDhcG?=
 =?us-ascii?Q?GNFPuwiguthitaBbANfghSP8e1dibTalNlwSZYQKNF+63Izk+6GNw0T2c5lc?=
 =?us-ascii?Q?yh+CtB6VFmLoLuHNJqnY3Ii4vdpJcxnA9xIclWHAlaNp12270PBIJfBETkBu?=
 =?us-ascii?Q?BSChytryyUzuNYPkUJefuFWkWDL/nubuL5oJjOR7aYIgM2yLlIr26g6+d1+a?=
 =?us-ascii?Q?qC6+indyD2oz449IKYTuqbvcC+Gw/R80x1xqBUaKWhHXlIPrXrzIumPOaYLN?=
 =?us-ascii?Q?WAhsk/jSG2VSR5ZDg/SJy/A/xQ1EkY9i5TIClPFFSAxahDk4CWSy8fkkgEmF?=
 =?us-ascii?Q?Hs8SBOOxQAFcs2rYgjL5Urxiz2vN6SlpQi1alfkqI111QPjLX1+fz3o4fjKM?=
 =?us-ascii?Q?8Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2860e5a2-3a2f-4d5e-3b19-08dbb3a9eead
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Sep 2023 16:04:24.0263 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fkDFX4VgNKm9eBHg9C7uSW755BuYBBIRIcy/qYgliz/IsRhuqRrXW7qCWEVZDmF6hrlGUAppvEv6Hfhs92YUAW22mpureeOSpiv5tK3V6V8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6420
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

On Mon, Sep 11, 2023 at 09:48:24PM -0700, Lucas De Marchi wrote:
> From: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
> 
> Add Display Power Well for LNL platform. It's mostly the same as MTL

It might be better to say "Xe2_LPD" and "Xe_LPD+" instead of LNL/MTL?

> platform so reuse the code. PGPICA1 contains type-C capable port slices
> which requires the well to power powered up, so add new power well
> definition for it.

Maybe add a sentence noting that the dc_off fake powerwell will be added
in a follow-up patch so that people don't think it was overlooked here?

> 
> BSpec: 68886
> Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  .../i915/display/intel_display_power_map.c    | 36 ++++++++++++++-
>  .../i915/display/intel_display_power_well.c   | 44 +++++++++++++++++++
>  .../i915/display/intel_display_power_well.h   |  1 +
>  .../gpu/drm/i915/display/intel_dp_aux_regs.h  |  5 +++
>  4 files changed, 85 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> index 0f1b93d139ca..31c11586ede5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> @@ -1536,6 +1536,38 @@ static const struct i915_power_well_desc_list xelpdp_power_wells[] = {
>  	I915_PW_DESCRIPTORS(xelpdp_power_wells_main),
>  };
>  
> +I915_DECL_PW_DOMAINS(xe2lpd_pwdoms_pica_tc,
> +		     POWER_DOMAIN_PORT_DDI_LANES_TC1,
> +		     POWER_DOMAIN_PORT_DDI_LANES_TC2,
> +		     POWER_DOMAIN_PORT_DDI_LANES_TC3,
> +		     POWER_DOMAIN_PORT_DDI_LANES_TC4,
> +		     POWER_DOMAIN_AUX_USBC1,
> +		     POWER_DOMAIN_AUX_USBC2,
> +		     POWER_DOMAIN_AUX_USBC3,
> +		     POWER_DOMAIN_AUX_USBC4,
> +		     POWER_DOMAIN_AUX_TBT1,
> +		     POWER_DOMAIN_AUX_TBT2,
> +		     POWER_DOMAIN_AUX_TBT3,
> +		     POWER_DOMAIN_AUX_TBT4,
> +		     POWER_DOMAIN_INIT);
> +
> +static const struct i915_power_well_desc xe2lpd_power_wells_pica[] = {
> +	{
> +		.instances = &I915_PW_INSTANCES(I915_PW("PICA_TC",
> +							&xe2lpd_pwdoms_pica_tc,
> +							.id = DISP_PW_ID_NONE),
> +					       ),
> +		.ops = &xe2lpd_pica_power_well_ops,
> +	},
> +};
> +
> +static const struct i915_power_well_desc_list xe2lpd_power_wells[] = {
> +	I915_PW_DESCRIPTORS(i9xx_power_wells_always_on),
> +	I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
> +	I915_PW_DESCRIPTORS(xelpdp_power_wells_main),
> +	I915_PW_DESCRIPTORS(xe2lpd_power_wells_pica),
> +};
> +
>  static void init_power_well_domains(const struct i915_power_well_instance *inst,
>  				    struct i915_power_well *power_well)
>  {
> @@ -1643,7 +1675,9 @@ int intel_display_power_map_init(struct i915_power_domains *power_domains)
>  		return 0;
>  	}
>  
> -	if (DISPLAY_VER(i915) >= 14)
> +	if (DISPLAY_VER(i915) >= 20)
> +		return set_power_wells(power_domains, xe2lpd_power_wells);
> +	else if (DISPLAY_VER(i915) >= 14)
>  		return set_power_wells(power_domains, xelpdp_power_wells);
>  	else if (IS_DG2(i915))
>  		return set_power_wells(power_domains, xehpd_power_wells);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index ca0714eba17a..adfe9901bde4 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -1833,6 +1833,43 @@ static bool xelpdp_aux_power_well_enabled(struct drm_i915_private *dev_priv,
>  		XELPDP_DP_AUX_CH_CTL_POWER_STATUS;
>  }
>  
> +static void xe2lpd_pica_power_well_enable(struct drm_i915_private *dev_priv,
> +					  struct i915_power_well *power_well)
> +{
> +	intel_de_rmw(dev_priv, XE2LPD_PICA_PW_CTL,
> +		     XE2LPD_PICA_CTL_POWER_REQUEST,
> +		     XE2LPD_PICA_CTL_POWER_REQUEST);

Do we need rmw here?  Bit 31 is the only writable bit in the register
(bit 30 is RO and can't be clobbered), so a simple write should suffice?
Ditto on the disable below.

> +
> +	if (intel_de_wait_for_set(dev_priv, XE2LPD_PICA_PW_CTL,
> +				  XE2LPD_PICA_CTL_POWER_STATUS, 1)) {
> +		drm_dbg_kms(&dev_priv->drm, "pica power well enable timeout\n");
> +
> +		drm_WARN(&dev_priv->drm, 1, "Power well PICA timeout when enabled");
> +	}
> +}
> +
> +static void xe2lpd_pica_power_well_disable(struct drm_i915_private *dev_priv,
> +					   struct i915_power_well *power_well)
> +{
> +	intel_de_rmw(dev_priv, XE2LPD_PICA_PW_CTL,
> +		     XE2LPD_PICA_CTL_POWER_REQUEST,
> +		     0);
> +
> +	if (intel_de_wait_for_clear(dev_priv, XE2LPD_PICA_PW_CTL,
> +				    XE2LPD_PICA_CTL_POWER_STATUS, 1)) {
> +		drm_dbg_kms(&dev_priv->drm, "pica power well disable timeout\n");
> +
> +		drm_WARN(&dev_priv->drm, 1, "Power well PICA timeout when disabled");
> +	}
> +}
> +
> +static bool xe2lpd_pica_power_well_enabled(struct drm_i915_private *dev_priv,
> +					   struct i915_power_well *power_well)
> +{
> +	return intel_de_read(dev_priv, XE2LPD_PICA_PW_CTL) &
> +		XE2LPD_PICA_CTL_POWER_STATUS;
> +}
> +
>  const struct i915_power_well_ops i9xx_always_on_power_well_ops = {
>  	.sync_hw = i9xx_power_well_sync_hw_noop,
>  	.enable = i9xx_always_on_power_well_noop,
> @@ -1952,3 +1989,10 @@ const struct i915_power_well_ops xelpdp_aux_power_well_ops = {
>  	.disable = xelpdp_aux_power_well_disable,
>  	.is_enabled = xelpdp_aux_power_well_enabled,
>  };
> +
> +const struct i915_power_well_ops xe2lpd_pica_power_well_ops = {
> +	.sync_hw = i9xx_power_well_sync_hw_noop,
> +	.enable = xe2lpd_pica_power_well_enable,
> +	.disable = xe2lpd_pica_power_well_disable,
> +	.is_enabled = xe2lpd_pica_power_well_enabled,
> +};
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.h b/drivers/gpu/drm/i915/display/intel_display_power_well.h
> index a8736588314d..9357a9a73c06 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.h
> @@ -176,5 +176,6 @@ extern const struct i915_power_well_ops icl_aux_power_well_ops;
>  extern const struct i915_power_well_ops icl_ddi_power_well_ops;
>  extern const struct i915_power_well_ops tgl_tc_cold_off_ops;
>  extern const struct i915_power_well_ops xelpdp_aux_power_well_ops;
> +extern const struct i915_power_well_ops xe2lpd_pica_power_well_ops;
>  
>  #endif
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h b/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
> index b4e96baae25a..c869f5661530 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
> @@ -86,4 +86,9 @@
>  		 _XELPDP_DP_AUX_CH_DATA(__xe2lpd_aux_ch_idx(aux_ch), i) :	\
>  		 _XELPDP_DP_AUX_CH_DATA(aux_ch, i))
>  
> +/* PICA Power Well Control */
> +#define XE2LPD_PICA_PW_CTL			_MMIO(0x16fe04)

Is this the right header for this?  It doesn't seem directly related to
DP AUX.


Matt

> +#define   XE2LPD_PICA_CTL_POWER_REQUEST		REG_BIT(31)
> +#define   XE2LPD_PICA_CTL_POWER_STATUS		REG_BIT(30)
> +
>  #endif /* __INTEL_DP_AUX_REGS_H__ */
> -- 
> 2.40.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
