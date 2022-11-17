Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7F8C62E725
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Nov 2022 22:41:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89F5C10E697;
	Thu, 17 Nov 2022 21:41:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07B2810E697
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Nov 2022 21:41:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668721306; x=1700257306;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=O3UT815YQKhSE3I8Kj9K/6IBZxb2s4p+UTvlDZWT4KI=;
 b=IXa+78i6tMp6KjiJPuI3YLAtIgw24yhQX/HD7P+yZIZNajD3d5pLZWex
 N38K82puW2VfYzUYBOxkYFEqqqCSyc/Uyb09h56u2pgRMYfRsBz+OsP98
 u2+E0/7MMoAVN1ldeWla3LjRrZ+6Ce5qElYf7ZwrK8iQAkAFZGm1y/HeU
 ORYAegBVpWLz/mR53D/RjasCa0p8/YhOE5HIekxdSqxFWQHafIOynBxz+
 gzwnOgDxnrop8KDE5Y7WVUJ8MSsJvFLxAeUofOkpeciK9+FQCVoZxYDj7
 l949orDugRCtN23qKyLT4gljyGZuGXNElodTw8kyiSKg6v/6q1RbbtSF1 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="312995822"
X-IronPort-AV: E=Sophos;i="5.96,172,1665471600"; d="scan'208";a="312995822"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 13:41:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="703495111"
X-IronPort-AV: E=Sophos;i="5.96,172,1665471600"; d="scan'208";a="703495111"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga008.fm.intel.com with ESMTP; 17 Nov 2022 13:41:45 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 17 Nov 2022 13:41:45 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 17 Nov 2022 13:41:44 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 17 Nov 2022 13:41:44 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 17 Nov 2022 13:41:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MRO1iBdvOAF7BUMWlwDlrGzZzUU/Xp/cmyHRDWvuUNBB80fTk+tFDXA4V6BkpY/yggZTBdw4aQikRlPpqOasWySJ3mimA5gJZiaBFlI65FszlPRjVxDJ7l4cJCQTEW54mR7pLXLq7jxAfeVUe6rt5ZU3eSPO17s462dkPQcfS0ZAtkauD3JLpAeSo5A1yAoEd9uee9d+GWhjhUXXboKVPgt4VVqkW3nUZNoqP6tXmJP34AIOzoLpQiE7mvvTgGNuPKajl2ze2DuMe5DmdwPt4h2pbvTbdJmarEnnsbCwO2qQ6zWLaf6K6YYgvqZwZvY+Sty79am2ZJHPnn+G0+MP7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TC5fPNNpJPN3Kn6/0QNgPRgqO/xtdHz3LHHDeY4g09U=;
 b=HvqsonadZDeD9PH2HwOVWnwoOsUPdkq8HjwSFOVmmBnnSnBR//xwTHX7gPbGFzO0zUuOkn8yRNsCGGd90awxB0SFhV3XYmMNhoysFhXl4Phs8ko+BpUWU33GGAc7JYB8XBt+pbY4GNmiyu6taAsko/PCfbwWCpVuqsUed4qrJLLUL44MiEN0ss2iOqy9ic+ciBJM/WxgRjD/cMK+ZRHhne7gD4U/vp/Z3hiEUn9rwveigFi8uoaHqlwKtgX8JXMzGofNl07EcTYKhGEj3VSgPDYg6DpBmDeqmtsfX2SS1HktNZkBMkuTSnSZhKpW8ko1VhxXl28LRAWfOePd1+cW9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by DS0PR11MB7531.namprd11.prod.outlook.com (2603:10b6:8:14a::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.18; Thu, 17 Nov
 2022 21:41:37 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::6dfc:c022:bd04:fe3e]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::6dfc:c022:bd04:fe3e%7]) with mapi id 15.20.5813.020; Thu, 17 Nov 2022
 21:41:37 +0000
Date: Thu, 17 Nov 2022 13:41:35 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <Y3aqj2c+0H+HrVDB@mdroper-desk1.amr.corp.intel.com>
References: <20221117213015.584417-1-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20221117213015.584417-1-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: SJ0PR03CA0107.namprd03.prod.outlook.com
 (2603:10b6:a03:333::22) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|DS0PR11MB7531:EE_
X-MS-Office365-Filtering-Correlation-Id: d7723502-5f41-411e-6008-08dac8e48177
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: j3OuPiVMeAUd2rO4tdDFIXITlBaLavdhoHNyaIiDGYdiP0t7gy1FqMo2cWtu/eV3ReutRPtNHQ5LQfLaqi9pCj8WWR70dP2CLaLApPlAy621taq+amQRepz/oppfSoNBHt5OJhE130UaJ3cp8fqPYtAGCtpWQD44p4rMqavv3HPd2c81YRR0Ss8GIkqaKRTxeaJCjUQnAI5JfmM1bsu9HWC5SzbQRrUmHOlMHVXpFEQQ+sudlypq6d1G74A/3DHx0JymQAohKI1Sv9slRDC9TjYiFSvIgo6WjU9CIe59Oaf2AHHRhlMv3S9Yj0RF93aAyqrWzjlU8wVj+YRp48sEz9UAutvVR4bR9z3QpWzAejFokKAUup4X2JE2Dc1r/124wDUrFjpy6xQonWy+Z/pNZGm4L0Zdq02f9Su6ZidzM4Xpi5sPjYsIaAqJuU59JAjL3yhKgRtcA1Q7Wz7pKXeCPdFSqDc8p8n5bMOYoYVcr8f+fmoVKMlUW2lukFnMpAJeC+su7t3AbXElP58JV1L1CNbE9SVuZzKRxsSy1NJGjdqJOCMHmSU1EajHX6SZbff8RoW/eGUbEQZkuPe0pTI/ILo+FTurYjWrSLy9s3vEJbDbFRZ54nLQA+DrYt34JVzLOI30JqBWJgEVBcNb7wF3fw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(39860400002)(346002)(376002)(366004)(136003)(451199015)(82960400001)(5660300002)(2906002)(38100700002)(8936002)(6862004)(4326008)(8676002)(186003)(86362001)(41300700001)(66476007)(66556008)(66946007)(478600001)(6486002)(83380400001)(26005)(6512007)(6506007)(316002)(6636002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Kf9Emf8eww+SrDbPimBHGLMa8m4uhWgJW6dqiAcVCN9OquEuRx1/yyyA9K6+?=
 =?us-ascii?Q?cr75nQcKGgedph0tgL00ouAh9LrFjjMpl58cXEowgdnIBz4OEDQtwOlcBjN0?=
 =?us-ascii?Q?XtQ4LKPZTIPUaZ2MPBtYusN8GKee1TT9qjGMVKYKBOMTL5kBS3KWbMCbr1OM?=
 =?us-ascii?Q?ocuGZwf0K9Uu3I1wmGni+yfi4khUyOq1+QRmBR/xOuZjqfygIMMwwJ8XKCkg?=
 =?us-ascii?Q?fJFVJeP8BLS37PuHncri8wSYy3wy47XyF5vJ/mvwOsfjqdx3cVPGEXEIdpcL?=
 =?us-ascii?Q?rL3EdT554HGC6y8/FWTM7ULCawt6Es1a7hZK3LiaFPVbqQYn6D+ZFeVOM4Zx?=
 =?us-ascii?Q?GCqL4qcTHMKJtTHCF4rtqSA9pfyBensFMSvSF4cbEGixR9UltffAI5gfvlEB?=
 =?us-ascii?Q?8OVlU1npF93A/G76MQZMaH9y8zvihVuGtr19b/e28h9eP8huAtU8Jlu+PfkY?=
 =?us-ascii?Q?hfZsBGpYLSZITzDvrnPKvaI8Kg6ZWl9vJ9byJe6SHwcqi/A6C71a+hOai0KC?=
 =?us-ascii?Q?jTfeg+6Eph5OZqmKCaQFq6r/BNYnkNYPTsdOvbdpdWG6ckXH4Mz/a+KCueG+?=
 =?us-ascii?Q?M38x0Sb1w4rOTulSSM15z3qFi4VFzkEqM7P9hKhHPiAMIHVKzJDVzfxIgESP?=
 =?us-ascii?Q?FATQ3Zov4cL66lzlXjT/Nhl1jzipmc/cRAGCPipyc+JjRk9840LqpSr74fgf?=
 =?us-ascii?Q?NPNLGS9dqFCfh0CnvTP08AB7bIOPh4tGSp9Oq+7xsXd9zaDK0yXpNFd8iotU?=
 =?us-ascii?Q?4MrcI3KHYWoOxgnNVy7Q6mqBIRGkOZ7tDp0I/2W0zyfzVZ52QjE8nOy0hVDD?=
 =?us-ascii?Q?cDG0DHPDIE7LQ7hJ4A/JxLVuIMB5AzZf9CN+vfi8mN2S6tiY95y+/OD7lZt8?=
 =?us-ascii?Q?1ZbpmhU/LHOcYeP5C0SH8jtvRE8JHHRfBWKT5l9TdsTFUOgxUTwK29Pa7/Nt?=
 =?us-ascii?Q?k+2U8lH7RWA3MVo3MkdC6NBYrFQI2HMDOgyk1LKHlaUl8fUzCrQZ+52rahD6?=
 =?us-ascii?Q?ZTuo669o4Jtn3e+7knkHJ+y2u1cGh06nLz1N0TSS4kFyBSCffJjBZKjJf7u8?=
 =?us-ascii?Q?c85RWJ/rwRbECA6O3LJ0uyWrANoDGXh1IBlCzCOf3Ly33OJ2H3Pdv00zR2UL?=
 =?us-ascii?Q?7knzNY6q5uEjbYaIXI1ITJOAOHNWxSV7YE4+QGeRio5vJ+xIo3UlOWqZjDdx?=
 =?us-ascii?Q?GqVBDyWp88xQLnCedTAmQzx99rTLnwgefS+j+6P244G381sC3NlM+ge65Fgv?=
 =?us-ascii?Q?jPhTS6aUda9B+pCK6rl8vmInk5lK9zC+XXBokreAOc5gezZJ/EIx38uQCWYN?=
 =?us-ascii?Q?BQ6hphfhSe6adGCIHVvRDz5L5HDauRSYC8hrgBkFHlBtPPlzAupxn6yQoW1E?=
 =?us-ascii?Q?WPSEbkfQn/HQYyjq+h87jCZle1aNchS3WyM6k3ichUy3b/wJlqaEn7P7gHbZ?=
 =?us-ascii?Q?zD6Ig0T6vUqJp3cAZTPZWmAt2Y7+O5McjH7yY6yf+X3+fGpmeGqM5sKdR+Au?=
 =?us-ascii?Q?ODM9/0yw9kgOZo0yarREAYATRd4CL53OYJuqpWKVTUuR2d2m4/h6CpKnW3HE?=
 =?us-ascii?Q?rzhOFv/XWRAO2GfKf0wwRODstOi64anwTQDwpf7dl0PvSec1+jx9nzte+QCG?=
 =?us-ascii?Q?qQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d7723502-5f41-411e-6008-08dac8e48177
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Nov 2022 21:41:37.7779 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: E8JajGRWBegqeQtOBtk8YefJx1rFs+GJ5f0x6HB2WxKyisnvqYpaYA7juKr77y49QhX4DVeDCs9zDTnFGCz1ylYVAdSd9OsXoYlen2T/R/c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7531
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/mtl: Fix dram info readout
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

On Thu, Nov 17, 2022 at 01:30:14PM -0800, Radhakrishna Sripada wrote:
> Register info read from the hardware is being cleared out. Preserve
> the register value and use extracted fields in the logic.

This description is kind of hard to understand if you don't already know
what the problem is (and the context in the diff itself doesn't show
enough of the function to make it clear either).  You might want to
clarify that we were overwriting the 'val' variable that code later in
the function still expects to contain the full register value.

With a reworded commit message,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> 
> Fixes: 825477e77912 ("drm/i915/mtl: Obtain SAGV values from MMIO instead of GT pcode mailbox")
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_dram.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_dram.c b/drivers/gpu/drm/i915/intel_dram.c
> index 2403ccd52c74..bba8cb6e8ae4 100644
> --- a/drivers/gpu/drm/i915/intel_dram.c
> +++ b/drivers/gpu/drm/i915/intel_dram.c
> @@ -471,8 +471,7 @@ static int xelpdp_get_dram_info(struct drm_i915_private *i915)
>  	u32 val = intel_uncore_read(&i915->uncore, MTL_MEM_SS_INFO_GLOBAL);
>  	struct dram_info *dram_info = &i915->dram_info;
>  
> -	val = REG_FIELD_GET(MTL_DDR_TYPE_MASK, val);
> -	switch (val) {
> +	switch (REG_FIELD_GET(MTL_DDR_TYPE_MASK, val)) {
>  	case 0:
>  		dram_info->type = INTEL_DRAM_DDR4;
>  		break;
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
