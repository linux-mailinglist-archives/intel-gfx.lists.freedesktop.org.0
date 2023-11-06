Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B36B37E2DA1
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Nov 2023 21:07:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5BB389C2C;
	Mon,  6 Nov 2023 20:07:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F07FF89C2C
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Nov 2023 20:07:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699301249; x=1730837249;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=UI2Uf2NGNwy7u60HuZt6aaiVuhyHG1I6UoELmeYkbQg=;
 b=hnqj1aFDIQocSCq51jSX6uQbJRLsMRtXbxIBDK4TtKIRHGEPRP5SiWVs
 kufPOHOYqj+x9V2nCTi3cVgIQtnUleYJdk3r5WDPNGSy0ZVRLMq64we2a
 wqPRfklXcH8w2NDAQUEkjAZ7+68DFcPhht94+NxBl16rFeEbSu5rtbG8B
 HTP8a4bUV2UUoXSEHGYxDw1POWsHWL2qZHV2vP5PzOuEGPPYrbo8aZCER
 yM53hJjdj7FXPuJ6ljJZdIO29aQmKeWf30y3qTKICdWYi4p2eiP8C5Plq
 zrEOU13qWMw/ACY9zt3Pu5rKXVSl+onGsZIXt5YFFxJdkry4dgn/VS6mP A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="455839206"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; d="scan'208";a="455839206"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 12:07:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; 
   d="scan'208";a="3731348"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Nov 2023 12:07:29 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 6 Nov 2023 12:07:28 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 6 Nov 2023 12:07:28 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Mon, 6 Nov 2023 12:07:28 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 6 Nov 2023 12:07:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j3H6S8Lb02ymZKryrI5ScS2WvW38We6/Z7lIdLZ6dbiAN3vSQ+j03dr1BP3amQrIrl9Uphg0zrzvUrIrohovrYu1kaIcDW/FExIkpqlw92FUcWWrLna12tB+Tii5XFwTfGlWCd72h/6t4KAGAWR0O3Lr57EMdJ9XU72gM07K6pAJjq8kWmUk5TDywZgfrIm90/dzB4cwCHQwvASm+oR9Dqi59WLN8+AOAIEUxMyrqT30qpNdRaBPR41P5gybdTVEUd7ysXgnJXM54nGyYkpv/cKaxSu6OZ3yjDc3YUSDF18Ccz+fq4WI6sg85QiMRW0j5ix+B2oZojJpg0LQoFdl3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Nf/3z2uQOvrqN7MtGXzNw4RAMa1HYq04SQixMGGEUyo=;
 b=jXGN+0q7I59bzckl1Zl8QmUgvdg1Csl274xdAFK4GA9M+We6iVGWSUxpQvOBq7LhkI1K/hE/Cs6/aRGN2t+ycuDXB/JkVNjc7Ofc7Ja6/NQqy1WaOKOlv4vCE7ZaEEyMUCPk6Wnadg7qb+K9BbWnMUg/JltWgkskgV+rq+idv4nKPy5OmzE6GK/q8Qb+IFaRjGBfilECTq1gbRFOe4UsqTgNuZtO2CYREFVdA5IbICbHoiV4C6cT6GDfV+QEHSh0WL+9GATz/76XIWB7TzsYHjsiNJi/mGVTNOKFqeZFDf9qVajUUAKvjwuigyJ5UQRVy0UzXUh59T0gSr0R+lLeOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 MW4PR11MB6668.namprd11.prod.outlook.com (2603:10b6:303:1e9::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.28; Mon, 6 Nov
 2023 20:07:26 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::f723:f4d9:c12a:5b62]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::f723:f4d9:c12a:5b62%4]) with mapi id 15.20.6954.028; Mon, 6 Nov 2023
 20:07:25 +0000
Date: Mon, 6 Nov 2023 12:07:21 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Message-ID: <20231106200721.GT1327160@mdroper-desk1.amr.corp.intel.com>
References: <20231106194627.144435-1-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231106194627.144435-1-gustavo.sousa@intel.com>
X-ClientProxiedBy: BY3PR05CA0015.namprd05.prod.outlook.com
 (2603:10b6:a03:254::20) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|MW4PR11MB6668:EE_
X-MS-Office365-Filtering-Correlation-Id: cd19bbae-c01b-4a34-8751-08dbdf03fdf7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: h2c6chRjJlv0fY8Dmz/DdSvtgli1cCDo+5sDjQYCmaepc3bTY2vEfXwV5gaEG0lixheMLtwrKtpeB6qra3pZwDrRX8XQO4rUlidz8BTkIF7TxcBsinNGNESKNXMeK+lTUF5pc+WELGbn3IxKaTsit+b0aqa8XfK6nNW6VlgVpVj8BUMnFPcQKDJIq+Wm9tqzKWliCP9Ycb9GuOQvgt3z9WucvqTwLI7sttDN2cFRrI0kjLJQapwAmMqvDXG+5HEpfRywftgYGh8BRfhV/w32KHCRaxYq2PENe7gHZpWSpABCTgYqlZoqC3O+WdekCPZgkjZSZn++DiVrtWg81VzyxiL5s2Wkt69TR7VF4YizmxMBY8iLS5Vw/wPR5PUiak2liodtRIb+OC+ml72N43hI5IosqsfCbbm78zrOtOp86Ua+auUuxFPut1CWh8iPKtUnhHXgUhR3j6lTnQjGugijz4WzsT3MDA/I44SJriE94bBZ3dtLCaJANENAF1+DeQz1ZWvS3S4LSWgzWzVd6MIBo8GiqxdXrGdPfTx1NCkSoCPdbgeXTbFzHhHQ9KFQssLx
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(376002)(366004)(39860400002)(346002)(136003)(230922051799003)(451199024)(64100799003)(1800799009)(186009)(6512007)(6666004)(6506007)(478600001)(6486002)(33656002)(38100700002)(86362001)(82960400001)(66556008)(5660300002)(41300700001)(66476007)(66946007)(83380400001)(2906002)(26005)(1076003)(316002)(6636002)(6862004)(8936002)(8676002)(4326008);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?FVQPYISvvmv+6ZnHHG7SCuQq/S2lyexfihtKVuFjk6I2GPOV1nY/f96NnURq?=
 =?us-ascii?Q?GyjV+nEYyxFdhrfuy0VckybUbdINCcThowEsitkvUE+R51PqFThx0QrP0rp2?=
 =?us-ascii?Q?q3BDNNOIdlYeKpb6rEUJtCMHmScP7wApyB8sRtMJ8kx968hrBqWb5HPReuzG?=
 =?us-ascii?Q?YIcWiBzc6RkrLhJw0zspY+cUjzw5dKy9sLrLFbl8/B8elxRXwCfcnEHuDpW8?=
 =?us-ascii?Q?U2jV+mlVtgQonox4eBgxE4ChkzWTlovLrWTyirGnDjjPs9cFJM4biF4fakNc?=
 =?us-ascii?Q?jrFpF1dDvaEsIflZgs+g27cKQUY7nWVwv0HGXcN64iKFone+Fk59icA60TLx?=
 =?us-ascii?Q?BYKEe19gBFMPiO/y+bZQwmE8BxGCOWf87Zf6Vp7WJFB756cGBo8vk6Fnno+V?=
 =?us-ascii?Q?rzpq4NL1ulqvJ2W8rDxCmnPoBFszgmGdnanzXsk1aiNy2PtjRYKCTNUIt5JB?=
 =?us-ascii?Q?u+vurV8akpNFCZCKdS4XHRVviD3iRk1VF377tz1lCFydT4xJ5ql6HaIXMtm7?=
 =?us-ascii?Q?boDTXxHaQt9RDlt15LK0kH+UzTcwgYkyNH1Pgoyu0AByDQI94ZkY/g0nvbdJ?=
 =?us-ascii?Q?4ifHe1Sw8J1fI1ew4usVak0/a4qWHXfnuBah0Thh25AkZ1/z876nlOVh6RYf?=
 =?us-ascii?Q?K4v3uVjxmlkpdHkqnBph8gMA4UmTHT8rnFnJ1L7mIrvp6iXf5N8RZd/SV6uM?=
 =?us-ascii?Q?dlp846IbfP5ylnSVryxykXBavN3/s0hNHAI00BixQ1tOYX987i4T4CIgX7Vw?=
 =?us-ascii?Q?Lz1OVSRGFoJj26FstfTx73fGDFRzv9ZMHoah0yva9ECVWT2sYixySxwFBICp?=
 =?us-ascii?Q?IlQyhng+vd5ISHzvLuHvHgJp51yu4VL4MjKEmGYoxpzWRhPiHgzYhW7YmnON?=
 =?us-ascii?Q?Fvhc/ErPJ+td44KQbyQmOoSCWcUEPDgP2loPIqdpwQp2g7ECK24dsAT01P3N?=
 =?us-ascii?Q?v2rfHA6/Fz/zFyApzKb2zcGG9FbyY+pkVkCXCuaHxc4JEvweTL3wGoms3t3s?=
 =?us-ascii?Q?nDbR5lDZ4eAW7XdM1ojRFG6Y14l1Hki9cK7PfSACbrgy2ITYYg2MbWzkEIaE?=
 =?us-ascii?Q?/anEfDEr4R/K/SVCjLyx9rPYhYDVVctZakAI/A2vRmRW9RNxyFXzaKBcPu6G?=
 =?us-ascii?Q?Q5rPtiwL/u8cgdEQBy3MbVoyX2pdN5IP2pK2QXqIhI31B7/jseLhaYri9nlV?=
 =?us-ascii?Q?SRn14mlp7zaB3VAG7+kRa1aYYZrPsxqyq7OeLIXcJ5RYYxd+uGou4Cju9sTz?=
 =?us-ascii?Q?9PCC3EJQF4ID315jfsEfmskpynLSfLRqTetbqfgbbRLxdhaHD/eax6WZ/QdO?=
 =?us-ascii?Q?joDGnQEtwyPHzTekEObTYqlPSCuHgDgghl4azz2qD0O3LUNnB5Tf+ScvJiDZ?=
 =?us-ascii?Q?CEFCEfajZ1/PV5HUgLVmEfRmzW0CLEDiX1Ls8V+Muc1HIcqT/+l3R4+7/obv?=
 =?us-ascii?Q?QCZH+KhiZvPtr1isEpKENDG8XKjS8HL+eFe4YT8mFuT3UQ9uiCg1I024lxAu?=
 =?us-ascii?Q?+aPPd2pdwofEDDLuyxpKXmyD2mkwfW3xOQS3n1LAZREZHx6Ngl1PRlhBcydN?=
 =?us-ascii?Q?bhuU6oIH0JOlf2uq7P/n/iWpcXz6kQo/2VOcc+szHUNrdJZdX/twHnZqtMDd?=
 =?us-ascii?Q?YA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cd19bbae-c01b-4a34-8751-08dbdf03fdf7
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Nov 2023 20:07:24.4101 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BrF3JXFhbyJH9z/1vNhcBw56wIqZX4yH1VkSBViC3Wj9Dk3EgqlWVbMVu7Y7UihCoijTzlUnz6Tu8naRoRPaiLZTL3hf1MX62RJBLnx8ebY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6668
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/xelpmp: Add Wa_16021867713
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 06, 2023 at 04:46:27PM -0300, Gustavo Sousa wrote:
> This workaround applies to all steppings of Xe_LPM+. Implement the KMD
> part.
> 
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_engine_regs.h |  3 +++
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 14 ++++++++++++++
>  2 files changed, 17 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_regs.h b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
> index c0c8c12edea1..7060ce4fe058 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
> @@ -260,6 +260,9 @@
>  #define VDBOX_CGCTL3F10(base)			_MMIO((base) + 0x3f10)
>  #define   IECPUNIT_CLKGATE_DIS			REG_BIT(22)
>  
> +#define VDBOX_CGCTL3F1C(base)			_MMIO((base) + 0x3f1c)
> +#define   MFXPIPE_CLKGATE_DIS			REG_BIT(3)
> +
>  #define VDBOX_CGCTL3F18(base)			_MMIO((base) + 0x3f18)
>  #define   ALNUNIT_CLKGATE_DIS			REG_BIT(13)

Nitpick:  3f1c should be sorted after 3f18 to keep the registers in
order.

Aside from that,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>


>  
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 12859b8d2092..63205edfea50 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1662,9 +1662,23 @@ xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>  	debug_dump_steering(gt);
>  }
>  
> +static void
> +wa_16021867713(struct intel_gt *gt, struct i915_wa_list *wal)
> +{
> +	struct intel_engine_cs *engine;
> +	int id;
> +
> +	for_each_engine(engine, gt, id)
> +		if (engine->class == VIDEO_DECODE_CLASS)
> +			wa_write_or(wal, VDBOX_CGCTL3F1C(engine->mmio_base),
> +				    MFXPIPE_CLKGATE_DIS);
> +}
> +
>  static void
>  xelpmp_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>  {
> +	wa_16021867713(gt, wal);
> +
>  	/*
>  	 * Wa_14018778641
>  	 * Wa_18018781329
> -- 
> 2.42.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
