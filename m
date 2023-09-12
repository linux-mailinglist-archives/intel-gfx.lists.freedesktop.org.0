Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A74D679D4F2
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 17:32:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40EFE10E435;
	Tue, 12 Sep 2023 15:32:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E87C10E431;
 Tue, 12 Sep 2023 15:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694532742; x=1726068742;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=MaLw9DXHEdm1GQ97KuxiZiNa9PGLsHkX2ad/SexMlxg=;
 b=gZWpujyJkvDWONof9gnb1cEITQOogzOOAUvfRBv63ZaqZnrEcMM8yJby
 v1UsAKuoUFK2MfC+hFWQRYIVmhtYm22WjeQ1lVqce+FzD99s/zjFnilin
 kCiIPYj7owi9KW9+zk2NimMzF3kM17E/TRupLR8cmZqYH1kSt18xfDTUV
 Su3l96yXrXz9Z5RqX4DonjmVQ4bzshO/io0Qg7OnrX9snDsuO8G3zvD5Q
 7awPyFBxrYiYYrexgOcNgVGDTBJH4O3GhbBlap38IsVsfb1bX2ZIna791
 gnTZHYID5HCbwcvI9dxQjUTI5oPApx5IbO5ydElizb6Oja4H5esSPxOEn w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="357842017"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="357842017"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 08:31:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="743760831"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="743760831"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2023 08:31:50 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 12 Sep 2023 08:31:50 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 12 Sep 2023 08:31:50 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 12 Sep 2023 08:31:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CBuVermD1NIcZk9qpOwA/UTc3qNd+Arowcvuu+XZMWFprAVpwudXQC+GiLcfneSofTa1REZCSykbbMMHXF7vchGpehPq/neR27tvyrceWIm/PPREkeCMqjXSd/2SvVPg9qk5Bb4FOvR8ze+dnvmWO7kA+zF311NUs6826bnrWF/5efGaC+Iiz0eh6CerYw8ZMOc/OoVbY44zfQS97Bfp8t57ctol0rJPWPvggwqXXIkckUuZa6Hw6PmknmTeC/oIUfrgzM0znrgNU5pNR8UIMrEd3tOmIhRy1WJfLdvix44tZ6CD/btya5RrXC0zAeS2lp2Kncf0NQbWiYDGl9sBnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PeiZdu75VvbaGd0deGoipijMFxlE0Zk32SWvpH/d4J4=;
 b=JVrOnMzSVltwFS6FNv8/rtM1czKobYoLbzoTdSDtnof9f4uam6olyiwCfEPFOmBL6HC/cDbtUNGjHkR4+VYgrPd29DW3MT5AvvyLvXW0CLiHQouFKtMVJ7ezXVQsSx7ydD+MPW0wdzFPbdyUt3dgecK1iwdqo07rHXmKjf/H15V/L0ZgwW3r4rsBJEG0ckeOuNlPjzUIt+UQFv9ApaBPpEwvZRBjIKrMJRwcIZIlFJwtKU0omi82qhY/tZTg6lOJWxfJJykMAdGogmRcFzZugVl2Mb//WDSIjnw+wSZbmMIvKycdl2m9YjWOhs3QgGIeIlw3cdlxXw59g4CfYd904w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SA1PR11MB5875.namprd11.prod.outlook.com (2603:10b6:806:238::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.33; Tue, 12 Sep
 2023 15:31:47 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79%5]) with mapi id 15.20.6768.029; Tue, 12 Sep 2023
 15:31:47 +0000
Date: Tue, 12 Sep 2023 10:31:44 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <utg7wk2lr7a7x2x5ax4gmdqpjdg4ach6lzb6o6aqziu63ysq4y@zxo6c4iwv34a>
References: <20230912044837.1672060-1-lucas.demarchi@intel.com>
 <20230912044837.1672060-2-lucas.demarchi@intel.com>
 <20230912151338.GG2706891@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230912151338.GG2706891@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: SJ0PR03CA0174.namprd03.prod.outlook.com
 (2603:10b6:a03:338::29) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SA1PR11MB5875:EE_
X-MS-Office365-Filtering-Correlation-Id: 26a11408-96e0-4784-8b89-08dbb3a56081
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Yu0F+TY5OFmBdGwLFj2Sc9Sw0VSHOhUk97S75N1+ivjDFEIxAemHBxo8iN1v2hQ12u34zce9an/q9vd0/1dQhVF2XdDEqSi/gW4fuR0Gb420gEJKbylUC2mJz8yjmqJlpoWf/lJwcs2YMFQZ2aSUHfdG3y3OgNYr815Tux9KHfzLwqIg2N9FtmA0wzKYmYhQW12DKhl5KRvHxh6lVJhldAqLym47QHekn71lBmOkOKgE+ON4q/jiIKgNuadN21UWCvpM3Jl7burJIPp9xomQw4h9iqXbrMaXpLQTM6TNy/1bZ5dUK3U2g1Audr3tdvX9q9P/oY5tTs1G5iKC0hxEf3FIOUOaQ7lx8jaEOwSXRqj+L/nR5ZbV+5rRPDHTaw/zzrEOn6w6bVib03VxmYwyNIzcQkOPZrKkMkmoCZMN/1Opkbh5R5xp5EayXSXRGTY5puAnnsh8nKDt31qQE2+vSXujvgOrqC3Zf5tbWDrZJvXXbXr4Bj4Nl/E+mj2ScCf74DreiHVi74npWpxSZCi2C+NSsZlsGONfHOLskTmMu2BIKpZ/bFqCgr6wIp5vIjY8
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(346002)(366004)(136003)(39860400002)(376002)(396003)(1800799009)(451199024)(186009)(450100002)(6486002)(6666004)(6506007)(86362001)(82960400001)(38100700002)(2906002)(26005)(6512007)(9686003)(83380400001)(316002)(478600001)(4326008)(41300700001)(8936002)(5660300002)(8676002)(6862004)(66946007)(66556008)(66476007)(6636002)(33716001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?KLwhdDeu5IEdP0wF5JedbzXT96ijb4juun81Hn0Uygk6Z1VqUIKjsPJo/Gzc?=
 =?us-ascii?Q?0SoDx5lNPNJjG4pAt9puii5a6Zml8+A8tY+todIHUpLkMNhbuQeRocvMuwng?=
 =?us-ascii?Q?9WLMir16oSTNfqjrw+UXywG78+LPjkr/UE9KnxORYErDLSxFGSXvXnShiOG/?=
 =?us-ascii?Q?f+RVsWPdIEK1fFJHmQImfGMzK/f9trcWkkBYF18PbRPaFLVvmGne/M9jd6dl?=
 =?us-ascii?Q?wmnXKiySuIgj3jNtt+Qm6kILcXQHFHBXoGmrDrRLfgHpp1xvjPohx3ryRlVv?=
 =?us-ascii?Q?z7R+XOeMRFQ5iMUtHVdZmTvuKj7aJoZq/bRb0Yfq6Zw5sglPHH+y02DWeSgH?=
 =?us-ascii?Q?Mro9JFvseTMqVX8fYPawLzLm0mYecGtqI/og1Z1fTUc8E+KKjpn8k2S7GXVU?=
 =?us-ascii?Q?UWLjkqq6WyHuUpN5GV8h8uSJmKr947KgYMq1GVEA512ZT3WrpKTx1/cY02Dc?=
 =?us-ascii?Q?hV4ocvCPtOKZdgLn0e4J2MQkUHpRsgWZ/g/v5HfIedkdpPFhWPvJYsuLJBk6?=
 =?us-ascii?Q?YooB+Hg5z/m1F12jidJnCsf9VJQ7jnJ/Vt6SwZJS7+DhW6gGzS8Ugl7HztLk?=
 =?us-ascii?Q?2ToTYI0Ypy6cfko8Lm1R/HNlNE3JsZzYGY6xiZzgDFLeApgPrTXcoilN9tLg?=
 =?us-ascii?Q?GIS9cYIaUXbxwiAmlvq0AMgy+swdaxiF2lGdo3pFsxauTajA/JAWEjlqYXeA?=
 =?us-ascii?Q?lAAwHLJXxEIDzWPPxCo8bMSNFgqrx5WvEo1Y7zVkpX20YKugUcDpffPQXlzN?=
 =?us-ascii?Q?gNJSN0n6PtWVoe5375GmC7HKXUbkLz4KbO3JqDGnHXlpjrqRr9kvDOlJHgpZ?=
 =?us-ascii?Q?8Jv6gNNvUQVKB6nysPdgmoWzRT7qKKnxArxR00+X76yFTqcnGO2yXikQpK9Q?=
 =?us-ascii?Q?PiI4H3/8QTib14rU4+I1sC8TEGJXjp9jAIBdP/nJOM9EcqxaBVfZOnVvadDu?=
 =?us-ascii?Q?8ukQ79QRHh1vrb5qOmuNRaLiBhOg0WHD823SyeoE3VSYM7ojnsFsshpjWmv+?=
 =?us-ascii?Q?2YjTgwSlm765SwZbUGYgfN8FDSKeNiIKYTUZMoqJ6Tb3DUvcI5yetDXDODaC?=
 =?us-ascii?Q?UhdEifnvuI/uk15WncDwhk1mJ7czrsRTtxI6ojRyJhgVYUn6rOMiIDdpFgoN?=
 =?us-ascii?Q?Fo0aYiD0Us47LD0zKcHpqu/FuciGq7wyvAdDsS61F1L2IR29OAL/bhrYiILW?=
 =?us-ascii?Q?AsibE0P4IvGV9x1xFu07DyNFdTW+eR91013ZDTGYKFJfIAmIIK+kVFdXvFRr?=
 =?us-ascii?Q?mFyoE77erm9PsGL0FJojW/4zmGqQbhRDLjSeUzqNBnpOSXpSEkXGZFTpvFn4?=
 =?us-ascii?Q?4RQHJ9SOziphaClhXsLPfr+PFIEn/HpxoJlWdWW1o97wEQMGx3ZWZR9Z5pb6?=
 =?us-ascii?Q?K/3bct6Bk1Ej3AXMsw+kSzgOk7eFAUQL1C87kDK7Pz2FnS8P4v/sBeL2UCNx?=
 =?us-ascii?Q?zvQP3Ezu2Zuhxfmc/KGG1c3VmFtgSzB3YonMWrpbssy48C2Z+tAysxAEDufz?=
 =?us-ascii?Q?b0hoqJT9synu85mld1qUYm1OQ0SBuhLDWj3h8iTrwDba4Cofph8K/JzId0LS?=
 =?us-ascii?Q?K4IGeKkjfmRO7bwMpvaVybih0l0SiqCr1rMQe/pzKJywIS/TXatD1TfeqFqu?=
 =?us-ascii?Q?0g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 26a11408-96e0-4784-8b89-08dbb3a56081
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Sep 2023 15:31:47.7295 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lwqONyuCZNiZJRZM9ku33ZlRMfBlwghuONi472GOvo2hGDDaphAU782fv649sYz5CwDZNvZXyHhJDOq8+zUBidBkI7C60elKv9Az6iNEMDg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5875
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 01/29] drm/i915/xelpdp: Add
 XE_LPDP_FEATURES
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

On Tue, Sep 12, 2023 at 08:13:38AM -0700, Matt Roper wrote:
>On Mon, Sep 11, 2023 at 09:48:09PM -0700, Lucas De Marchi wrote:
>> Add a FEATURES macro for XE_LPD+ as this is expected to be the baseline
>> for Xe2_LPD and will allow to see the delta more easily.
>>
>> v2: Move everything from xe_lpdp_display to the new macro and remove
>>     the version setting: it's not needed with GMD_ID.
>>
>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>> ---
>>  .../drm/i915/display/intel_display_device.c   | 58 +++++++++++++++----
>>  1 file changed, 47 insertions(+), 11 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
>> index c39f8a15d8aa..ddd938bfe7d9 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
>> @@ -710,18 +710,54 @@ static const struct intel_display_device_info xe_hpd_display = {
>>  		BIT(PORT_TC1),
>>  };
>>
>> -static const struct intel_display_device_info xe_lpdp_display = {
>> -	XE_LPD_FEATURES,
>> -	.has_cdclk_crawl = 1,
>> -	.has_cdclk_squash = 1,
>> +#define XE_LPDP_FEATURES							\
>> +	.abox_mask = GENMASK(1, 0),						\
>> +	.color = {								\
>> +		.degamma_lut_size = 129, .gamma_lut_size = 1024,		\
>> +		.degamma_lut_tests = DRM_COLOR_LUT_NON_DECREASING |		\
>> +		DRM_COLOR_LUT_EQUAL_CHANNELS,					\
>> +	},									\
>> +	.dbuf.size = 4096,							\
>> +	.dbuf.slice_mask = BIT(DBUF_S1) | BIT(DBUF_S2) | BIT(DBUF_S3) |		\
>> +		BIT(DBUF_S4),							\
>> +	.has_cdclk_crawl = 1,							\
>> +	.has_cdclk_squash = 1,							\
>> +	.has_ddi = 1,								\
>> +	.has_dp_mst = 1,							\
>> +	.has_dsb = 1,								\
>> +	.has_fpga_dbg = 1,							\
>> +	.has_hotplug = 1,							\
>> +	.has_ipc = 1,								\
>> +	.has_psr = 1,								\
>> +	.pipe_offsets = {							\
>> +		[TRANSCODER_A] = PIPE_A_OFFSET,					\
>> +		[TRANSCODER_B] = PIPE_B_OFFSET,					\
>> +		[TRANSCODER_C] = PIPE_C_OFFSET,					\
>> +		[TRANSCODER_D] = PIPE_D_OFFSET,					\
>> +	},									\
>> +	.trans_offsets = {							\
>> +		[TRANSCODER_A] = TRANSCODER_A_OFFSET,				\
>> +		[TRANSCODER_B] = TRANSCODER_B_OFFSET,				\
>> +		[TRANSCODER_C] = TRANSCODER_C_OFFSET,				\
>> +		[TRANSCODER_D] = TRANSCODER_D_OFFSET,				\
>> +	},									\
>> +	TGL_CURSOR_OFFSETS,							\
>> +										\
>> +	.__runtime_defaults.cpu_transcoder_mask =				\
>> +		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |				\
>> +		BIT(TRANSCODER_C) | BIT(TRANSCODER_D),				\
>> +	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A) | BIT(INTEL_FBC_B),	\
>> +	.__runtime_defaults.has_dmc = 1,					\
>> +	.__runtime_defaults.has_dsc = 1,					\
>> +	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),			\
>
>fbc_mask is set just a few lines above (and this second version is wrong
>for Xe_LPD+).

fixed

>
>With this line dropped,
>
>        Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

thanks
Lucas De Marchi

>
>
>Matt
>
>> +	.__runtime_defaults.has_hdcp = 1,					\
>> +	.__runtime_defaults.pipe_mask =						\
>> +		BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),		\
>> +	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) |		\
>> +		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4)
>>
>> -	.__runtime_defaults.ip.ver = 14,
>> -	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A) | BIT(INTEL_FBC_B),
>> -	.__runtime_defaults.cpu_transcoder_mask =
>> -		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
>> -		BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
>> -	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) |
>> -		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4),
>> +static const struct intel_display_device_info xe_lpdp_display = {
>> +	XE_LPDP_FEATURES,
>>  };
>>
>>  /*
>> --
>> 2.40.1
>>
>
>-- 
>Matt Roper
>Graphics Software Engineer
>Linux GPU Platform Enablement
>Intel Corporation
