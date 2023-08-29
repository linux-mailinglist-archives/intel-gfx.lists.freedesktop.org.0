Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F07678CC56
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Aug 2023 20:45:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1229510E479;
	Tue, 29 Aug 2023 18:45:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBD6D10E11F;
 Tue, 29 Aug 2023 18:45:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693334721; x=1724870721;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=AmT87PR8svXSqgj3Oia/77POAc6U7G5Rb6uE2mlDx7g=;
 b=HqoDrP3OcrLwavBKD6BISTcHIaJtk2BSybjSmHe8BABDHn7FKVkbQyfD
 KoUxg8ywO+xuKo6J/2HmU57PNOScdbmtZ5deRvbiRfvGfdEYOBOj6C7CJ
 3JJUgbtHRcHXp049ivyhVZs7dYI3tVKvX3sbf7KFlCNqK/RdPIIJL/lxU
 yDoJ91RdzK7HV7IgvjSTYbxROToqCqShPTjRZFbpLYqmVhYuRvglFvweQ
 LHiyrDdBTA5G/rt34emv8bsndi70f15oxx2uMngO/Er0OZmNUCdoL972+
 b758OVwd1cTW8F9u/KUIvjLdWaL+JFH8w1q2/fzy3LRxUhyH7cCU326bc A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="378168334"
X-IronPort-AV: E=Sophos;i="6.02,211,1688454000"; d="scan'208";a="378168334"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2023 11:45:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="732312102"
X-IronPort-AV: E=Sophos;i="6.02,211,1688454000"; d="scan'208";a="732312102"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga007.jf.intel.com with ESMTP; 29 Aug 2023 11:45:19 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 29 Aug 2023 11:45:18 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 29 Aug 2023 11:45:17 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 29 Aug 2023 11:45:17 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 29 Aug 2023 11:45:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kNPjUW65cDa8B+LgHvwdj94tuP/MgHFCMXw1/RFUhAbEXe8B5nlArfTSWWrc74ykIu683mxsV1zYQO4KqeHACU3aB34k8jIfoJaFrt7yheiRh7pfCl4jG8vB0VmFtSs/j1l7g1ggIhQDYgWi9jFHro1NRN77xW8b62L84kZVDesdAW3TShPw9qvqOkMRPyseH4RBGI1sn9rKmUBf6Xrwlm8QvH/KBjJbEtxpQoiLyFcUt7TFdrKPtbVdfyIp1iKMQjKfCcjm2qi0nsjdk2MpYfmtTYwEGOLY9ZCgXGciROhwmgH/c+9BteQbnH9d/SzVm2yC+pujEGRmE52bR9+BLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KUEWI/t0oTL2zahkE9pAW4DORP4wySdzHBrWGsi5zWU=;
 b=PGcdIA+iNKj4HkdeJOVEwzsoUzRS7CmwKn17C8+5eoSWyI2NwUGsKQsUbnpMoV1C32qfuU611bJ0/jSpbPzWmHPyMPFBfpImvkc/Shp8GI/QwpVpuHzWRQ2KX1IPywj9ayZYnPlYsEdCZUf7qaTgpE8vbDeBa45l3gt6BlGJGi4s2NLmOem8tKbwDVRxQGHjKzlWLQFjKfomU8zfX4O9Vmn72gT/KHSraOUMhS2kEP9Evlprkty7b66xTgzGCszFjtRRKd/5PyAG4xw9AYfpY0cvpAcaPCOtpkX5tJMUURkUSM1V6EbUqVoH9myU0HtxPlr6lPtcsj2Mpa7EBFehNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by DM4PR11MB6094.namprd11.prod.outlook.com (2603:10b6:8:ab::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.35; Tue, 29 Aug
 2023 18:45:15 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79%5]) with mapi id 15.20.6699.035; Tue, 29 Aug 2023
 18:45:14 +0000
Date: Tue, 29 Aug 2023 11:45:12 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <43afy4ezon7nz4rnv6jdhglht2hf4oid6bo2fjc5ssv72z4zyv@diiu5hmmfkdg>
X-Patchwork-Hint: comment
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
 <20230823170740.1180212-35-lucas.demarchi@intel.com>
 <20230823220133.GO1529860@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230823220133.GO1529860@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: MW4PR03CA0167.namprd03.prod.outlook.com
 (2603:10b6:303:8d::22) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|DM4PR11MB6094:EE_
X-MS-Office365-Filtering-Correlation-Id: 8571fe1c-8ae1-48f4-7b8c-08dba8c01542
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Gf4O9VhU4XAUSdR0B+bEjjnrdtucxhQYCGCB+8etOk212fC2bAPmPFgqrtWVkYN+fjejKxRbLSMUCJYThOJzmFK/URNjw6ZPeD3GU7rn0VBCfreZ+h3HIFMzt+K32PhGC+h1A8t05JE7mzed4rAyML3m/KQx1FDW4RcRamUz7I2tgsvQG9+VuaScakDWoXwMZlmqQuOeBqKXS32+QMw6S0VcwI3B8ElG5RfWzidxzV0yYNw1eE0JnUX9Lkj07fjIhoF3qwShL21LCKufN+4jSFi+9zWauE+HqvnjHSv76Sn5QyMG42o2ENVI0xUvPmlD5SVUdoGbpW02FxLtnrnPCbMTUs+uo5qYrDUFnBlSNqFmwQvV1puWgulHfKyK3T2e16AVEcrkxNznZ7KuVEHEWts72gR/ZJBus36l1mVXXOoi7RRJM/PJo0VG0u0d43jtJw4tJhg7UOQjsxBWOmwrjAdL4MnQA5jAPEI7+cihwwJNNU2oyRck/B4/wzMp8vpwsAMJsQEMW5HZlb4fZy+1rxKbkQAUa3GyziSHGPq9yx+IoPtlxC+VNJcck1wG2juP
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(39860400002)(376002)(136003)(366004)(346002)(396003)(451199024)(1800799009)(186009)(6512007)(9686003)(38100700002)(316002)(6636002)(41300700001)(82960400001)(6862004)(4326008)(2906002)(83380400001)(33716001)(86362001)(26005)(5660300002)(8676002)(450100002)(8936002)(6506007)(6486002)(66476007)(66556008)(66946007)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?gwgqW3z2vSlGbwpVymaBa+Vn1vyxHGnIsC1XOUKs6hPKJ1A2bcrm12bBoR3K?=
 =?us-ascii?Q?kzAkhqAWIdS5CX7ovfZVoy/D4QvpLMvHQItAYFD0q08IhA3baw+iEOGO3iVo?=
 =?us-ascii?Q?ybwro7pESMwkJ6pNlQlPFoWKj2H4HvOqde2Q/MG5oPtoSjY5RJAYhk3zw5hK?=
 =?us-ascii?Q?QYclsHKMf4qfsjCv6HgFIR7gatiC5pXHTkuEUXQF8Gff4tdMV+7wbAorRUAP?=
 =?us-ascii?Q?yrQdpy1Ld+fyZiF6sl48fRTLthk/NAYkJFIt7ewNNX2s2l78zDeG6m+uvQvP?=
 =?us-ascii?Q?kzzKVf2Ni9P5jrNBddDSlG5WJewl4J0H1vnqV42GJ8+JB6o03z1XzpY9DFw4?=
 =?us-ascii?Q?v3rieCsstyG/xvSy9e1JN4ReHIShtPgOQZ/SAsTCayeVWjNIGH+qmp3Bwipj?=
 =?us-ascii?Q?dmu0GXBOlqmrnSXYUxWAw3CeCcGB2UdCeBSifaJnlqvqoN+g0tanGpjmYBXd?=
 =?us-ascii?Q?mn9y/VJBVvjgDo0n4m4jOsV3ad+PApid7uQ+Cgo+RwglaUWWhJwKf8IF213D?=
 =?us-ascii?Q?BTWXQQ8L6Q0oI/NpkJnUFy2rQr6pX7QvrzuiTVZgJ9I0BucBHhhRdZxVfIdR?=
 =?us-ascii?Q?/C2/vDi3YjfVsT8oPjYQ0l2uK2fKXbPes+g2r6Gea7kdl2bDh3kfbNfBAYZB?=
 =?us-ascii?Q?mm9ourhoCSW+RQpQFU2ZKdPewKiOEuX8Ss15Vu6U5mobSdNk2qyJ9P4/228p?=
 =?us-ascii?Q?lAgF//1D0yBbqxnRx2o3Py5MBG9P/O3PTaw6uyLnJty3Uz3BFBsSnfhDyma8?=
 =?us-ascii?Q?HErVUsJEg20sVDNgAY9EiTbf8r4luln5Eg1okoLjsO0wVWaQUan6/iQjDYqS?=
 =?us-ascii?Q?1FFK9qMl8kEPzCetPsz9ZehahynlKHC2pwnc76L06YFyvoOx1DNbSATUjolC?=
 =?us-ascii?Q?gaNjstgpuDZWJyN5lQEFNrifSDhlatzqDmOs+JDGIGzBC+m+ulEZ623uw6Cu?=
 =?us-ascii?Q?cAH9RK1HoU3y/4vi7isjxmjGQY6z1RrHBmEGfEmR4V0rmRo7hy+AZmV7zH9B?=
 =?us-ascii?Q?AI02lem1m+sz9gsSdWXv22UQi0XtEMybz2WFzcaTQjmhVOfFDEZb/HQ2cyUz?=
 =?us-ascii?Q?9zYa4PUq3ryKnk7A/G0EqdeVJAktNLPCqZg7YPeKs+F+CWLVByxSH9TVzDsH?=
 =?us-ascii?Q?3G7NnfgeudGH5RFqttY/is8Z4xLuQh85ifWECHta+pHekqyKMc0+EFQ9ad38?=
 =?us-ascii?Q?+H4XENaMRDF1dBfHXo60yDWqdJCNl2f+HVNSiQCxZwORFnEaKOqSy/aQMjAk?=
 =?us-ascii?Q?7Pf5YdEtC3gfjTmBRORalJHNnp1QqXYQ+p7TGKrOaZ9lW0FJTrg2No7I0pYJ?=
 =?us-ascii?Q?fB6iX194dUSpx+XIR4Xl8qx4Ixs0cEzq9xHBAoC1ZeiaWhlDOwfe0GJtrLxw?=
 =?us-ascii?Q?EP62LTFXhtTDiADvsfQs2+qt8oiHVbV5Lp/ebhEky0I3nnQ4QkO521/5UvBa?=
 =?us-ascii?Q?yVeS499pmS5U6yh9NrrrrlEpqbza21kkHKed6lOKbN2O4JlldiE/OfqzwPy5?=
 =?us-ascii?Q?iCN92U2ZUlCTx+kQflZ0ruZ+pMUMv1JKUwIQeGONz+sos3nEp0SLVGsurJqF?=
 =?us-ascii?Q?8vnqtr/fwVC2z7fbzm3UwwcLYf+p6eCaXi3fJC/M5WrhrTQoG2FpeNxAxowu?=
 =?us-ascii?Q?YA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8571fe1c-8ae1-48f4-7b8c-08dba8c01542
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Aug 2023 18:45:14.9047 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NGyJX2kCnMXO4dst+4t0aj/b5s3iXi5Ukc6+SEN8vUW+w9y9nm/hRrGm5je5G9pSTFQ93hClT7H+9hMCaz3veHLX377+irlLxxzcCLB8ZJI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6094
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 34/42] drm/i915/lnl: Start using
 CDCLK through PLL
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

On Wed, Aug 23, 2023 at 03:01:37PM -0700, Matt Roper wrote:
>On Wed, Aug 23, 2023 at 10:07:32AM -0700, Lucas De Marchi wrote:
>> From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>>
>> Introduce correspondent definitions and for choosing between CD2X CDCLK
>> and PLL CDCLK as a source.
>>
>> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_cdclk.c | 14 ++++++++++++--
>>  drivers/gpu/drm/i915/i915_reg.h            |  3 +++
>>  2 files changed, 15 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
>> index ed45a2cf5c9a..04937aaabcee 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>> @@ -1932,8 +1932,7 @@ static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
>>  		dg2_cdclk_squash_program(dev_priv, waveform);
>>
>>  	val = bxt_cdclk_cd2x_div_sel(dev_priv, clock, vco) |
>> -		bxt_cdclk_cd2x_pipe(dev_priv, pipe) |
>> -		skl_cdclk_decimal(cdclk);
>> +		bxt_cdclk_cd2x_pipe(dev_priv, pipe);
>>
>>  	/*
>>  	 * Disable SSA Precharge when CD clock frequency < 500 MHz,
>> @@ -1942,6 +1941,17 @@ static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
>>  	if ((IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) &&
>>  	    cdclk >= 500000)
>>  		val |= BXT_CDCLK_SSA_PRECHARGE_ENABLE;
>> +
>> +	if (DISPLAY_VER(dev_priv) >= 20)
>> +		/*
>> +		 * Using CDCLK through PLL seems to be always better option when
>> +		 * its supported, both in terms of performance and power
>> +		 * consumption.
>> +		 */
>
>I'm not sure what this comment is based on.  But the table on bspec
>68861 specifically tells us to set this bit for the cdclk table we
>implemented in the last patch, so the logic is correct regardless.

I think this is more a justification for having the entries in the
table. I agree there is no need for it here as the driver is simply
implementing what is the spec.

>
>> +		val |= CDCLK_SOURCE_SEL_CDCLK_PLL;
>> +	else
>> +		val |= skl_cdclk_decimal(cdclk);
>> +
>>  	intel_de_write(dev_priv, CDCLK_CTL, val);
>>
>>  	if (pipe != INVALID_PIPE)
>> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
>> index fa85530afac3..d5850761a75a 100644
>> --- a/drivers/gpu/drm/i915/i915_reg.h
>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>> @@ -5933,6 +5933,9 @@ enum skl_power_gate {
>>  #define  CDCLK_FREQ_540		REG_FIELD_PREP(CDCLK_FREQ_SEL_MASK, 1)
>>  #define  CDCLK_FREQ_337_308		REG_FIELD_PREP(CDCLK_FREQ_SEL_MASK, 2)
>>  #define  CDCLK_FREQ_675_617		REG_FIELD_PREP(CDCLK_FREQ_SEL_MASK, 3)
>> +#define  CDCLK_SOURCE_SEL_MASK		REG_BIT(25)
>> +#define  CDCLK_SOURCE_SEL_CD2X		REG_FIELD_PREP(CDCLK_SOURCE_SEL_MASK, 0)
>
>No need to make a single-bit "mask" or define the unused
>CDCLK_SOURCE_SEL_CD2X here.  We can just define
>CDCLK_SOURCE_SEL_CDCLK_PLL as REG_BIT(25) directly.

will change in v2.

thanks
Lucas De Marchi

>
>
>Matt
>
>> +#define  CDCLK_SOURCE_SEL_CDCLK_PLL	REG_FIELD_PREP(CDCLK_SOURCE_SEL_MASK, 1)
>>  #define  BXT_CDCLK_CD2X_DIV_SEL_MASK	REG_GENMASK(23, 22)
>>  #define  BXT_CDCLK_CD2X_DIV_SEL_1	REG_FIELD_PREP(BXT_CDCLK_CD2X_DIV_SEL_MASK, 0)
>>  #define  BXT_CDCLK_CD2X_DIV_SEL_1_5	REG_FIELD_PREP(BXT_CDCLK_CD2X_DIV_SEL_MASK, 1)
>> --
>> 2.40.1
>>
>
>-- 
>Matt Roper
>Graphics Software Engineer
>Linux GPU Platform Enablement
>Intel Corporation
