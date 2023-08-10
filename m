Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 479557783B3
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Aug 2023 00:34:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3897110E610;
	Thu, 10 Aug 2023 22:34:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58C7A10E610
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Aug 2023 22:34:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691706883; x=1723242883;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=xhmVxLMTov7AHhze4Iy3m/ELsQ6ISHSCOftNacgnGD4=;
 b=O6HxXiV/YFtkXvdWvTAvpZWAfpVvr7ReXS3UvaOSinDkhX1+AGL5C5ek
 OTxd890C5/lqlZouEjliVxcfwStEeVw+U031AHeqwuW/DbHsHYMsmJMFU
 9kul+Onia1ZR+uFzTMeflQYTI5pxmxiZFj4qJIkwFW6WyKYFup93fNBnu
 L+/9aIMS58xFr3LgARf9cNenwTioB6b6m6yJAGaFO90ITHrPeiejX49GH
 QsdCihaMP/Epmis7l0ne5TbArqp/ujjars6fODoJrWrEU7L+/LCErS0jp
 1xl1lOo1eDF8nVpjp3K+PEMuoEZpaWjtNGU14JpSekUkGJWy0oLcl4U05 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="375250975"
X-IronPort-AV: E=Sophos;i="6.01,163,1684825200"; d="scan'208";a="375250975"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 15:34:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="822429488"
X-IronPort-AV: E=Sophos;i="6.01,163,1684825200"; d="scan'208";a="822429488"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by FMSMGA003.fm.intel.com with ESMTP; 10 Aug 2023 15:34:42 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 10 Aug 2023 15:34:42 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 10 Aug 2023 15:34:41 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 10 Aug 2023 15:34:41 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 10 Aug 2023 15:34:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OspudtmfYDGYZWicEHyIff/MCwycJuerczMIkXAGVcLNpwTmgCKRsb3i7jQFfEdqx2BEZUKf3vVSXmfpdd4bLpMiVsAN/9HZDskJBa9wG0wXI1UXUn0LDTqs7Mu9mqilNOCh3TuQqG3jjrROBWLtu5LdhqnDDKcbAN74Qu/X++Rus+vn6zxIcpTcD5t/pULD2xhyvh1gLDuf8jSxyhwQQ/qfSo/xv4kWMm4B0fgcC045Gr5ZZNbTmAK3jK4Yhtg/InEYW+NXsSUD2O7SmcrybFy9J5j07a9zYvhVHECTRLqBR+9is6v784lPJjYKkHyRq8DmHtc1MyKd6rDdPrqkrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jz2DaCOKeT3e6xuHi5dr69pOIZirn4yqT3qkKYxZIdw=;
 b=GChvlmz4SnnMbjcc3JAIV7JZvjoPcgwn3vMf3x5UWHzYk3oBaw1OJhIPt5CPtxyjidZhVNul5v21sljBZ1H3x8OIr+VmNvHmbdc6C4wfYWvXz7ZnECVw4mn2ck/jPAqy4/yjAysQClYMaZ+Au9AZ/WUXj74HJARAbHPhC1841CE46et3TzuGch4qIzsG8QueseFB6kH4WO3TKBMQs+fftgsVyRDIwXkMK1JYGtektjP9wh6LkIbbpNXEzh5SRF7PffJtRUXZr8TDWI38Ut53nW5LB6nqXIVBg5XgV+/C+QzTmuscYq3A/qErhnbl1DZABYT0IRIpnpJHHEQv8Jqsfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 MN2PR11MB4726.namprd11.prod.outlook.com (2603:10b6:208:269::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6652.30; Thu, 10 Aug 2023 22:34:35 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41%5]) with mapi id 15.20.6652.029; Thu, 10 Aug 2023
 22:34:35 +0000
Date: Thu, 10 Aug 2023 15:34:31 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
Message-ID: <20230810223431.GA3375865@mdroper-desk1.amr.corp.intel.com>
References: <20230810203620.388827-1-jonathan.cavitt@intel.com>
 <20230810203620.388827-2-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230810203620.388827-2-jonathan.cavitt@intel.com>
X-ClientProxiedBy: SJ0PR05CA0199.namprd05.prod.outlook.com
 (2603:10b6:a03:330::24) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|MN2PR11MB4726:EE_
X-MS-Office365-Filtering-Correlation-Id: 28f6c853-71b7-4e8a-bb3e-08db99f1f911
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PYAdSXizwQO4EA3rmbT5TNTo5t7UCdmq54cGI0aUb9v/cNowbH/4cke61vbF6WWeuRZrAmvjJGK/0ZYm+oXDnzE2ZrdFpxAkq/mAs/UZjWt7U8/ULjjU6K+UEpIZj+Jf/Ox02KW360hBEny8AJ6cnI7qh4befXmYRUQ/MIvtVu/CR1PNvJQxWSv6Bz2L3g64woQxlUsIoOGxEry7zZOqUJtF28q2LSZDAKobGlFKpGOCZ7c4D3wyUnigS5WC94hUZtm2hY+QV4kzSA86PY67iKqI7OLQ0L0xIaCyqM3m1pd891TPOzpby82+FL0WL7zR/ERBL8T+y0YTKfaQen/Dao75jDc84MyWvk8O6yCFB+kqy44bcwjeQ1F5c/aJfcPISj8HTLTNXTLVvv9SezFefP4OaSAA/M++KzfbSqg49FQPUlJyN4f7BLyClQae3Sd8o212wt9F0RFVS8+TnoePhPBK10pt5LfunV83+s7JokopkzFn2nPm+uw0HIE7DNT6+CDruiC4LsblaM+3Sxj18TbDtlwdaXU9kSdhb1y+xsCvKnpUMdKGrSpp6fJ7GOoD
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(366004)(39860400002)(136003)(376002)(396003)(451199021)(186006)(1800799006)(33656002)(478600001)(86362001)(6512007)(2906002)(6666004)(6486002)(6506007)(1076003)(26005)(83380400001)(316002)(66946007)(66556008)(66476007)(38100700002)(4326008)(6636002)(41300700001)(5660300002)(8936002)(8676002)(82960400001)(6862004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?J315Mr5ech7Sx/F+eLVXXP1Kz8a6lJLfQV9tpaTnMM0FYRF9uJpVW/5l/ssH?=
 =?us-ascii?Q?ITxp69OjzE4/U5rA4KPRBCAMuDkHDosJxx9sCgPbW651hI5w/lFySQ/3Ahd1?=
 =?us-ascii?Q?pLAypITd/786iRSwlx7cHl8KOwQwr2ZrqfvHXNxhX0ERd2OwUvn6Rg26MOMx?=
 =?us-ascii?Q?DTOj7Ch5tJ5dh/PVqitE66udyRuV0xkDCBTn+NtOFGnDgodfIExm67wpkyb6?=
 =?us-ascii?Q?WqrgycjU8Q6g56goSIMzVV6nLL1S/kGOXPuhs38orM4WVoxHjgtBUu+omgrR?=
 =?us-ascii?Q?SBIeer5BXXBaYNO7G9zm1JiPZD2qmKgecA05vkNPzKrVtaybtyYpcHZhRhii?=
 =?us-ascii?Q?STck+GZqcfbfyhzyDkQT0YzlzKAV3jAdAeuXaqM77/raASswd1vpb4BcQH0A?=
 =?us-ascii?Q?q0IT+ihK5o5yJ6AnHU3rmZcsTOKe4pTNQIpYEHvdc3JqIIElqTXVttCA8QTw?=
 =?us-ascii?Q?ZbbR7kdqzK8VBvUySsI44aYtZPZp2etYBgjnpVCurOXCnX8h9dairXLAZLe8?=
 =?us-ascii?Q?hCyPoe/wsmKPuBkx5DxA1+KUlIXxKyYla1+zYsZgNzJrwLBos1e1aO1TH4Gv?=
 =?us-ascii?Q?ny1bc6xgvkYOyovmCf8/AKKI7jcM9ET/oRP8xrjzvwkmkt7S87iql+e5TRy/?=
 =?us-ascii?Q?l4i4UQMxkoxJeLwVckFe3HkzJ4KgSosNy7Ul5URnXnDv7w65FSSXk3tv+FPa?=
 =?us-ascii?Q?jkRZIFiwRUsPvYveCviTMSZ/5sCqe0qkslcK271iFr+mfTG5ktZU6zyeV+a1?=
 =?us-ascii?Q?3+cPuKp3ZCcR4w8tvTG0Z0sECl5uM7W3Dfn27L0KaJfLdhGcAEWXBolno1kO?=
 =?us-ascii?Q?B8AV3ysCVQ7cTsjkoQ9kdnzGqnTGOhFTRt+L5x1V//hD3K4jeQEFWiABo4NT?=
 =?us-ascii?Q?PeOaRfW2ytogqFly09qVqT49lcFwpGRQ6s9dCBwb2ScOYCU37b4kuMLsQ2hj?=
 =?us-ascii?Q?53EypHroEpupIbvSQ14Evy/hBt0mOE0C/Q38y6B8BhnOpxjkzEJfU5sd1dCS?=
 =?us-ascii?Q?ZDL2tXEmPNwUP49iSV5wrVE+ViYSWk6U8Q41VQg9QMGRjN8HYOcixVFd3ys2?=
 =?us-ascii?Q?p/4U3vx9vdQXulN8glppGC/0lmu1S2RUIWqi9+cJ+olo2wg62TYJk2AgftEw?=
 =?us-ascii?Q?UpV/lWYKPVlDEnQhSXj1NHGXZ1vhjINM1P5jiWfHRFRsLslz3bNinKmanAri?=
 =?us-ascii?Q?GykkRCXUP0cKAzlYe8d+mrptUryYy66SLer6yGGYGu1nJ83UtkD1kht8VAoF?=
 =?us-ascii?Q?7qGXvrD1607UuUBhkXzmIxmTIknLEhfnRaoiPB0iIFnDV3ez3ts8i7eip3hH?=
 =?us-ascii?Q?TAG+XgyqwCHFb3/BsFQAifK+kZW4JV12sbv9YrZb2HurW39n6GIRziUyt6hZ?=
 =?us-ascii?Q?+aRu5Bhow7FBhK9HQB1TJd55SjGQdHA74vILwJAwDu0lKXADhXQAHPDAi7U3?=
 =?us-ascii?Q?4Lv7rqStpLAjq4CnljBQNIfDgQdCGvcAJNcw6NnAf+ipxpNcuM/61gkvW8N2?=
 =?us-ascii?Q?6QQwc0oQwhm7hcalkWnrqixHeBhS+8Ns+t9A5JgPqDIl8I3Dndul4+yj0EAZ?=
 =?us-ascii?Q?qAAW3pPAv5v5xHNZmqyqN/pqsF/zv1571t5A8NxWMETbF9sOCYMGmNVIABrA?=
 =?us-ascii?Q?gg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 28f6c853-71b7-4e8a-bb3e-08db99f1f911
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Aug 2023 22:34:35.0067 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JuNk4625hJlfM5jpdX6fJl1/3VDaYH8URwqXatvukhSBC2b5o7DF8fLJqR4fPITFDdZPvNpdroR5m+fBSdlJZrFUnauGVDsZJviureTEpyQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4726
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/selftests: Align
 igt_spinner_create_request with hangcheck
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
Cc: andi.shyti@intel.com, michal.winiarski@intel.com,
 intel-gfx@lists.freedesktop.org, saurabhg.gupta@intel.com,
 chris.p.wilson@linux.intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Aug 10, 2023 at 01:36:20PM -0700, Jonathan Cavitt wrote:
> Align igt_spinner_create_request with the hang_create_request
> implementation in selftest_hangcheck.c.
> 
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> ---
>  drivers/gpu/drm/i915/selftests/igt_spinner.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/selftests/igt_spinner.c b/drivers/gpu/drm/i915/selftests/igt_spinner.c
> index 0f064930ef11..8c3e1f20e5a1 100644
> --- a/drivers/gpu/drm/i915/selftests/igt_spinner.c
> +++ b/drivers/gpu/drm/i915/selftests/igt_spinner.c
> @@ -179,6 +179,9 @@ igt_spinner_create_request(struct igt_spinner *spin,
>  
>  	*batch++ = arbitration_command;
>  
> +	memset32(batch, MI_NOOP, 128);
> +	batch += 128;
> +

This doesn't look like what you intended.  You zeroed out 128 bytes, but
then jumped your batch cursor forward 128 dwords (512 bytes).


Matt

>  	if (GRAPHICS_VER(rq->i915) >= 8)
>  		*batch++ = MI_BATCH_BUFFER_START | BIT(8) | 1;
>  	else if (IS_HASWELL(rq->i915))
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
