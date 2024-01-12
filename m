Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 604CA82B88A
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jan 2024 01:16:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0927F10E9A9;
	Fri, 12 Jan 2024 00:16:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EB5910E9A9
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jan 2024 00:16:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705018610; x=1736554610;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ippPLBenaO9Q6zLAYgtusU5XTEKw/Hh/vj+YJkeef/Q=;
 b=j8M7khcPR/xM8djn4AR2B6SqQanHb6UCTBZJh7COdb43siTsV2ovSJUT
 jRd5WDqwX9dTcInMhoE/rD6C57t18Kenf+DcnGvfvLzfxQ2rFdZ7BprnJ
 mZViEPV1d+3hG2o7R7zZvwGB89hdouTzlYkeJ+9Gz1YpH2MZHoVLtt+6l
 Q309Bc3Ppxeasstr0GU1Tpce81JHcrYUMzidCGn8UGifCGG6ojOQbkGfr
 Ctwa0Uk3A3pgSrHpO+qZhbgkrcDkeDx7p+6jyZGDsqGW1fmJdMTnhSnlk
 Tpx00uJb4mO1nbBfgwL8wB7JZyU+/+HgLyYutpQMAgpArXxYhVeHt8VIB Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="6404193"
X-IronPort-AV: E=Sophos;i="6.04,187,1695711600"; 
   d="scan'208";a="6404193"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2024 16:16:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="1029741818"
X-IronPort-AV: E=Sophos;i="6.04,187,1695711600"; d="scan'208";a="1029741818"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Jan 2024 16:16:49 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 11 Jan 2024 16:16:48 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 11 Jan 2024 16:16:48 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 11 Jan 2024 16:16:48 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 11 Jan 2024 16:16:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JQiBWPcqikuZymnMP3kJgzKjbzi7Z02ZnNcs5aFmvIXczutw2XyJWCk+56Jjk+OwqUWWNo0Ihg14A61nWWkyCC+eu6xf9qRebQHI5zm6TfJnCj1nFv2ff6IGIXrA7U52Is9spoNK56rmL7JO0yOMTvTpUKZ3M1hPFRJDdu8Wh1JHx5G30lS9+Vq3mmQhvTrBi2XC1LQtET+IC26lP5PmwcFMrN9m2ZWprlr8PsmwCkkjRNw5YxBRnKv8qlV0Lsxmu4qE1CMX1dcP4PgOdVBYCxEB475SovaTClDbn7vWglcAqoy/B14cu+WXsEks4kRF9C9CxSx/9FsQiywcS+vX5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WdGfThi64TkiSXUseYEPXN4VTmg0eotWR9ylk47mLlE=;
 b=QIctRUFpC5ZhxmLBqHS/RCBPHusVMdw6Ga9Hd80/4Pevwjwyk4Imi1ObLd5gDBPszajXIr0PJIGmc/4+J8H/muR02jHjKN9u63DM0Bp1dJA+XxwqOQOm2LtIjBcJUumV1x/DDyvaCh4GRqgFBo/rUltNwHCqBCEBpQiUW0ax4ijBHZduA6S4RDD8VWu8ypY4LYT5ixPL+3QFoe5CuNRBTtOe+JghxDnOS0eJV53qsv2l12m9HRL4RtIQhcHGo9YNC/GBNWUfepapiVb0gjHlr/wlDQq5fUOFGwK5DHFaP5Brn6KI5QFP2EZYktvOd5hd/zBrYEdjUj/qdE/iom7gMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 PH7PR11MB7662.namprd11.prod.outlook.com (2603:10b6:510:27d::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7181.19; Fri, 12 Jan
 2024 00:16:42 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::35b5:a275:4f49:2e10]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::35b5:a275:4f49:2e10%7]) with mapi id 15.20.7159.020; Fri, 12 Jan 2024
 00:16:41 +0000
Date: Thu, 11 Jan 2024 16:15:16 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Subject: Re: [PATCH 5/6] drm/i915/gvt: use local INTEL_GVT_OPREGION_SIZE
Message-ID: <ZaCElN5sBpe6g9Yr@invictus>
References: <cover.1704992868.git.jani.nikula@intel.com>
 <8ae6e10fc0929934a14547a973312e82a4d7f7d1.1704992868.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <8ae6e10fc0929934a14547a973312e82a4d7f7d1.1704992868.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0275.namprd03.prod.outlook.com
 (2603:10b6:a03:39e::10) To DM4PR11MB5971.namprd11.prod.outlook.com
 (2603:10b6:8:5e::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5971:EE_|PH7PR11MB7662:EE_
X-MS-Office365-Filtering-Correlation-Id: b8d7f1c5-842d-4aaf-0cc2-08dc1303c047
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xsS+8Z9dlZ3GPFzKT2q8dseYacWWyuM/TRtsTQTc7dTPpNKkfdna4U2Xp+DZ2nhrmnjLrAIW4S5WT+HpxBcaijDXyUAAuafzmdvQEBAKN6s7bU5ziQRo1t0b3EFWzg4fI317NVwgwDzVUD+BcxFWBqCTbr6h8WodoGbYndaeIpF0A/2/fALt91yga7YyrNPVHoxhl/qYhEJQiShkXqQNA1gdM/ClhTV2o2UhPvCZG6sEyhsAHv+6YiyH7HbwN1+siE4aU658kXSpRktBZbDOCIe0xyx7l5hKs9gg6IVHq69KPOLXCYC1Cx+6SHhGwwJ+b0wx/xI9J23vxorD3RxJqIU0GNxMJbq7/f9co/fy0cslqiW7pwhXbZrHL8qVI5t2vJ6hADr/yjyGDEjqy1Udg8M2VvnVcOGBxkrSw0aq6zwy7hvI+ORKtAW03jeRE2GgJSBdoDnFqRzZLLCvA0JOdT1MKlaKQ+NoCHjHEN1AGqGNddPzmcUrj6PwzOwpaN17w/MVpIUU7TvdI6nVDAitQJzW/jkANDMIdVMunyZE+DuJUzVQIQZznE8a9Lph2aGz
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(366004)(346002)(136003)(39860400002)(376002)(396003)(230922051799003)(1800799012)(64100799003)(186009)(451199024)(6636002)(82960400001)(86362001)(33716001)(8676002)(4326008)(6862004)(38100700002)(83380400001)(26005)(5660300002)(9686003)(6512007)(54906003)(6506007)(66946007)(478600001)(66476007)(6666004)(6486002)(66556008)(316002)(41300700001)(2906002)(8936002)(44832011);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?vOgjgQKh7cpDWHoUNBEDTZYk5Vizg16+MfgU+j++Zdwf3TS9JmOiDS/lHkl9?=
 =?us-ascii?Q?zp/j4ScbJbqMcTNrr5/sdfqY0kuhY2h/sPo/gqtIFv1eYtgC3XRuENiOU3jE?=
 =?us-ascii?Q?aZ5BR6hnXzbF1ZYK5T0uZvKjtTLr01r5MjtJ34dMzPv8hGPj8j1CeqxJnqvI?=
 =?us-ascii?Q?Omg/MPU4OtP8dOjvI5jFTqV64MvR9RO8thhXK+QQ8kTXbMs7DdaDy5qRauBb?=
 =?us-ascii?Q?Iy76+OhF4XB0npT9rfQ7+5MNAIdhuMKJ/u9dY0Pv9oEJWhfTqfph9Aaus6Uj?=
 =?us-ascii?Q?vqNZ90/9RXxl0rfdyd3UO1lGRzH+s9Mdv9aOu0CvZA9kiCPvNJF5Ws7tfjb0?=
 =?us-ascii?Q?wKGC4YDycqREHlqFdTaPNkZxzyVrbjBwu3jvEhlRlB37LX9K/ZiRj/XQK/zK?=
 =?us-ascii?Q?1gt74llxARHWQacESuH4sg5SVXKxDjgIH3yA/Oi2E6bMTbAocXgq2TE/fCuc?=
 =?us-ascii?Q?GBEmxo23Rl204N/G6eLYzkX/vrlzDtivaJ0DwAzEJ2tNqh7PdjLFbGZvCYfA?=
 =?us-ascii?Q?8L4zqwieZOefCwNK2zQmiQEwRlYJEO0oKjJHg59DcXQtiKT8CjbY2ez26G6p?=
 =?us-ascii?Q?wnM2fnA/6onxcko7iJ+zXOsgWJ0b0gcY7rbvQORcrQMQK4U1E4w9Wrlhiv4z?=
 =?us-ascii?Q?dKi0QOijBBbiInWePLP4uSDjrNhZ/LZke1/4DlWOzcoDDKyM73MURdpNevTp?=
 =?us-ascii?Q?faY9wxXLqafBBDWs6G9J4W3RgH4d6Dh0Dp510uECit77SuCXzEzwxn/3CYAh?=
 =?us-ascii?Q?NeETT7olLXG9PUcqycmJ07VRDhvePSfF03uNhtKmvi3rlz6JHq7yeSS8x10j?=
 =?us-ascii?Q?b/g34sCyiC8t4K6vVRIl2ebVhhxG+mw8zuczsZyWeWZJScAo1GAkQjzoXRpu?=
 =?us-ascii?Q?GXby9yMqpYrrY7n9wXpZ3nYjHQqMl67zASeIFKghQRN1AL2VJ1qsbgxgl2Im?=
 =?us-ascii?Q?djG7Mog/EJlXOdsADYVI1GiaRnIFw3ZTV4Dqd/tHuG/OV/sRYDnUujk5iGcS?=
 =?us-ascii?Q?LliXskxxiNtL+oVNPnB9YzhVv4atee/hXWtuKNmuB9HqN+uhVTfiUfXNYkS+?=
 =?us-ascii?Q?htxOzXEjJyVFcun2JmwPq0s/SD7cKpVTOTqF1j0aJ4bexmwh7YbaSrWVHmQr?=
 =?us-ascii?Q?HpR54fQlCxwMsxZ+D6XcDyn3Q91eRNSeiVa4J7bUJL2JD0USx0PJAi0gtmTw?=
 =?us-ascii?Q?0wsY3Y4U6OeKY+1TXViG7uIAfDPTABLsJe9M3BCSqx/dUEsy4cO0bTHgGaqj?=
 =?us-ascii?Q?Ig5j6VgOpG3yAq3Dhg5y/D08Y+rYmtdvvFw6L25QpmN/smleAG375zoFI/LA?=
 =?us-ascii?Q?08rGMEe+7LHcng/w9BVSVJnXTDvclGQzDKd2nPdQf6zHLJ11l/9Dtho3otWK?=
 =?us-ascii?Q?1mM5u21GphS98Dvg0oqizrz+7a/9NFzc0hZjeJZFFJPpvoCj1SQAORok8Qor?=
 =?us-ascii?Q?ibfUbmKzqcv6UqugYPa2eJcF0Qq30LOJwh+4B4IpcHbxMmaPkixzFWfJ5rfc?=
 =?us-ascii?Q?0fuG7jQUvSvxZE9A2gG0qCXzQ7x5t91oD0A+ktS7ZjocenxSUwVvvjxH5Mk+?=
 =?us-ascii?Q?n0ca9F6RGUs8IUmFolEVKMgLy40iTGjyOWki7gnwCucZY9PnxpEzmwpJAfA7?=
 =?us-ascii?Q?PfOiqMEsbZvestzBOghOGVk=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b8d7f1c5-842d-4aaf-0cc2-08dc1303c047
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jan 2024 00:16:41.3129 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QjOygwgFUXthvlDx/YG/65vEvz/jEpmNWNprzuRsOzL8wcaWJ15U9VH3FBlKbeev0o6TqlaxfZeoihtCOpife5llvTyHx9fCOkbNHPaU1FA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7662
X-OriginatorOrg: intel.com
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
Cc: intel-gfx@lists.freedesktop.org, Zhi Wang <zhi.a.wang@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 11, 2024 at 07:21:18PM +0200, Jani Nikula wrote:
> All of gvt uses INTEL_GVT_OPREGION_SIZE for opregion size. Follow suit
> here.
> 
> Cc: Zhenyu Wang <zhenyuw@linux.intel.com>
> Cc: Zhi Wang <zhi.a.wang@intel.com>
> Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

> ---
>  drivers/gpu/drm/i915/gvt/kvmgt.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gvt/kvmgt.c b/drivers/gpu/drm/i915/gvt/kvmgt.c
> index faf21be724c3..4f74d867fe1a 100644
> --- a/drivers/gpu/drm/i915/gvt/kvmgt.c
> +++ b/drivers/gpu/drm/i915/gvt/kvmgt.c
> @@ -574,7 +574,7 @@ int intel_gvt_set_opregion(struct intel_vgpu *vgpu)
>  	ret = intel_vgpu_register_reg(vgpu,
>  			PCI_VENDOR_ID_INTEL | VFIO_REGION_TYPE_PCI_VENDOR_TYPE,
>  			VFIO_REGION_SUBTYPE_INTEL_IGD_OPREGION,
> -			&intel_vgpu_regops_opregion, OPREGION_SIZE,
> +			&intel_vgpu_regops_opregion, INTEL_GVT_OPREGION_SIZE,
>  			VFIO_REGION_INFO_FLAG_READ, base);
>  
>  	return ret;
> -- 
> 2.39.2
> 
