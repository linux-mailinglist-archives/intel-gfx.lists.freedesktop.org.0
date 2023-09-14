Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6CC07A0E76
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Sep 2023 21:45:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 572EC10E0D4;
	Thu, 14 Sep 2023 19:45:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A80C10E0D4
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Sep 2023 19:45:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694720718; x=1726256718;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=H+00nrmSiVHx0/oAigXnqoJuIYk/I/RRdpou00gKt3o=;
 b=XwKGc8v+3u47k50M+432XA2D9w0Vx8vCgG7rVYpRQ5mI3Q52otvWaA6C
 XHUUibf8gQFVlejy5NRnzsMG4aTP3ofM9MGuuhXkfqCuUlP6+mGOIWs1E
 XwCfbjn3zqghpgy5D/DoTGHR2rzxYyIJfUVBOR2fg3W7APuOKxxwNgHPe
 SzrW056lIJBKB4GUTuETbhN7mG4EFB4Vs1ZjVmBLsq+Dmj5ECV17MD0cH
 8XqI7qZQ5S6I1OGlIkAiDFLHez2WiJAKaq0DJLBz/lG55W1GfIOFXYv6O
 iUcIddyRQ00a8slsfK39iIHsKToB3a1Qf1hjyblFTPDW1MfQry0k/rynV g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="378978196"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="378978196"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 12:45:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="887936765"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="887936765"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Sep 2023 12:44:44 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 14 Sep 2023 12:45:16 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 14 Sep 2023 12:45:15 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 14 Sep 2023 12:45:15 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.109)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 14 Sep 2023 12:45:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EU+D6iXBF385mvNuXfyIg33PdHkaZ0UMyC+RN5PqI5/chGWX6j+o4cJroiGGkgCwrwg4YZtlGNa4mz9ymmorDIIs5pcI6xBO99D7dx98PneXsE7Dld+sTKk9T+HjCJh+RglKIqEErNMdw39fIUNhCHNiFFyZdyeykqV6hmKF9RwQ5DStDgsiL1vzsCvqzfCx831ZR2W2aSvnvr+WqxvmgEvEXtQlnNs5iNJewGfDjbp1wkMwDgPS3QPK8VRF4Y91jxJEa0av9oUH6iVB7UEhK4xrO3zUQlTdiP8rUMoj/tgTIPRmvBuF0LCpTOXAhM1hZqvTUD3tL+uIPpCOHZq4Ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wzFPSMOOxxqDHfvTaYsmEKs4XLK3LeVUimJQJFFo2cA=;
 b=bDwn6kWrEZJXafKyJNcmDZzyeSVwG7PQWxI6RpXeZCGqW511IRfedEM/U7uysc1O3YzmXrk7Mn3EzXwZTtpezTSFBXPCSxsVJoJisDNHoLxuTO5LnoPFbDnGu9GB0kz6EutPsm0C75CIaduKWRlSZ5NMLnUBs64sKxLl94QJvZbfg3GbjSKfYkJOXBrKXxXMKQQxlxr20EV7zZ/RgOXEnGvcVCps911uf+RdAcEy+4PP78Mn4EIv/gWETC+o7lUj5GUObDpuLeWT3maFzVY/v/16jAHT2mdA7hjlrr7n3Povw8hMljDi1dykuVrNqloz+bG5GWBg2nj7bMuaSgFl/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN2PR11MB4239.namprd11.prod.outlook.com (2603:10b6:208:192::20)
 by PH8PR11MB8037.namprd11.prod.outlook.com (2603:10b6:510:25d::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.20; Thu, 14 Sep
 2023 19:45:08 +0000
Received: from MN2PR11MB4239.namprd11.prod.outlook.com
 ([fe80::396d:bef4:459:c050]) by MN2PR11MB4239.namprd11.prod.outlook.com
 ([fe80::396d:bef4:459:c050%3]) with mapi id 15.20.6768.029; Thu, 14 Sep 2023
 19:45:08 +0000
Date: Thu, 14 Sep 2023 12:45:04 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Message-ID: <ZQNiwPlvobxGEUEb@msatwood-mobl>
References: <20230914194032.1066442-1-dnyaneshwar.bhadane@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20230914194032.1066442-1-dnyaneshwar.bhadane@intel.com>
X-ClientProxiedBy: SJ0PR05CA0138.namprd05.prod.outlook.com
 (2603:10b6:a03:33d::23) To MN2PR11MB4239.namprd11.prod.outlook.com
 (2603:10b6:208:192::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN2PR11MB4239:EE_|PH8PR11MB8037:EE_
X-MS-Office365-Filtering-Correlation-Id: adce67b5-e10a-47f9-36c4-08dbb55b19ec
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AuPoX/qmZQRO6HHnjuUiXGxVHoRt7VMyhvD1yzxzMotpV6PO6tw7QAYga2lc/oJyNxLkVjT/xWDKAT0zNj2prXQsiw4URKmjThZ8omcPvKKsrXsTjsUeAxz+5ZKD+1X5QUH9N11tCihoCEdkcVvPGd/Znv38Jz3+xcnLqMdAJ+ZLWqLtEJQL8Km5NwOLjc2nU0uT4TgaK5sVXZsH4PLkBhQCS51xqFReuECDzQkog8HuGkQVy+MrXh4x0k4LmiGGPWDYhaE7vb6+/4nC5X9ByWDaoVmLRsOM40VXuhrdgvl1uuAoYFqIxE9+FkXtYMknXypGANJiI0gU4oMEuVfXi+4ouxFtejWAunW8L+W8we/TDATikVqIocX/CLo3No+v/CMAFMyRTl/u6ppKJijkYpsYlmSXsjOTNWJr9iFLhLcsMxqH7dLWX9U7EDJ2VkRRRPiAeifFpwxX8xVVMxlKKoJpKnfgklwJy0TDyX+5mLtuzBax5LjWSqmdi2rV2QgQw+/bxEkS4m5WhpOIdfPkyId6SceqbNanLU+tEu/Yzbk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4239.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(366004)(376002)(136003)(346002)(39860400002)(396003)(186009)(451199024)(1800799009)(82960400001)(6506007)(6512007)(6486002)(6666004)(38100700002)(966005)(478600001)(9686003)(33716001)(66476007)(316002)(66556008)(66946007)(6636002)(41300700001)(83380400001)(26005)(107886003)(5660300002)(6862004)(4326008)(8676002)(8936002)(86362001)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZFovN1lOT2RieVN3TitYK0x6aFQrelg1bXFrUmVINmdDcWlDMFdBS0V5SXUx?=
 =?utf-8?B?MU54MmRxOURINElSVEVrM0tRTHFzUTErbDhvK1NMUlk4UE1Jeno5Z1FTNlF5?=
 =?utf-8?B?Q001a0VZZWpObkFOcnNsd1A5VXBTWHBzdTkyVm9COUIzVnhKVWY4NFdPVVF4?=
 =?utf-8?B?VUx1c3BvdDQ5cFg3eVZyM1FsL29DT1JVd0kvNlV4M2VoM09RK2tzb01mVERP?=
 =?utf-8?B?U1hsMTRuOE1oUDN6QXU3Wmd3SG5pbm9kWEhxTEovRi9qTEFJTzRkRnpkemY5?=
 =?utf-8?B?dmdnL0ZwUE5oK3ZqRE5Id3FBcEl6SVI2K1NRNlJsMnh5L2VsSW9pQkZZN0Z2?=
 =?utf-8?B?THNrYjI4ZFBtcVVMb093TkJjYUxaM3pwUmpLWHdXK3c0ZjI5OFZkS1UvODVT?=
 =?utf-8?B?Q3RhNmowU2V1d1BiSWk4anl2OEhrc0Rwb1BkYlhOTmxXU3YzQytoc0M2VURM?=
 =?utf-8?B?YVYvL0x2NEtLNU52dG81Z0JPdmMzdFZHOEloUmNqQ1NyTVZOUlArQnpCN254?=
 =?utf-8?B?SU1DS1VLSCtHdUtPZGpYd0plTmdMNEJYWDcySEhiRkNJckFYbFBZUXE2N2Za?=
 =?utf-8?B?WXlYWndWQ21uejhhTWRjcm9GMTAvV0tlQVNFMlcwSjU5NWFzMkl5NEgyOVVQ?=
 =?utf-8?B?VzJ5YlJZZng4a3B5NkFOajZJYnVMQWFXNGN6b2xQb0NHaEpPRDV4M1JoUStL?=
 =?utf-8?B?T00ramZzTDVBSDExNSttU1JRbk5CbjlYOFJJdjRkT3pNOUtmWUQyT0VxRGc3?=
 =?utf-8?B?RUJSY3cwejZteExIM2k0d1dFYldVUjJ4TzdQOW8rRFhkWGphT3FQbDFwSWwy?=
 =?utf-8?B?V25LZWthUWR1WnV0NVVaa1RDQ1RGVVc2UVVMYWEvK3ZQMXhIdzA1aTJVbUtO?=
 =?utf-8?B?Z0xFRFdkcHF0QlpnNGFrZUk3Zk5HZG9wZm96aERRNUVVME4wRHhONUlkZTRX?=
 =?utf-8?B?VkYwcVFSQWcrNnpNLzRWazRnb2RQVDlUY00xeHl1ejkrdlQ0SmdlczdBTCt1?=
 =?utf-8?B?RXU1WVJkQ3NrQVRIblhhZFpqbDZqeDVhQXF5NCszbnFLZzRnTHExU0MvSXBR?=
 =?utf-8?B?L3dkeUZGQVhBUmgwZDB5VjJPbmtWamo2Z1dxS3BkYlpDYnZqeS9PL0pnWjBF?=
 =?utf-8?B?TE5odW1OK3kzWHRIVTJrNFd0Y25FeEc2cGd0NmNMQ3p3L09mcmlJN2FiZWk3?=
 =?utf-8?B?NWpwMTF5bUdCL1UvbFQ4SHZPOXJveHhFVHJQZzkxNi83eGxtWDJDeE50WVk1?=
 =?utf-8?B?RWtoVlhnSHpJaldndnRZQXNhb25oZFpLOWdlV2tXL3R2UzdGN2F2OW9ROTh1?=
 =?utf-8?B?VXlIUnBHeVpkOUhIZlhyMDBRdXVQSzdKRWlxRUpaS0pkQVJnaEtPd01vVTNQ?=
 =?utf-8?B?dW9Wb2F6M09SRldzMUYwQTZqY3JEb1NtRWdqenpxam5JZkcyaDdzdXJCRGFE?=
 =?utf-8?B?eVlFTi8wTitFZkp3Q1V6eCtqcGUrWHlSKzJTNjFETHhmSE50dDlRZnY1ajEw?=
 =?utf-8?B?eVVQeElyZ3FtUlpCaUVHQjNYTE8vTWNNZEpSVC9mMU40TlNRUmIyT24zZmVH?=
 =?utf-8?B?SmduT0xvVENIZE5BOVlTMUkrUUE2SktWbnhoc0NzSGF0b25LNFJuajlrV1Zn?=
 =?utf-8?B?QjVPMmNvOURQdEJkTlk5Y1dCdThxRzZWZU5lVUl6NXVnZW5oa3BVck1sQTlj?=
 =?utf-8?B?R2VIblY2KytRMEp1RGI1OU5BNXhJOTBFWm1jRHJpTUhmVk10b1VRR1ZBaURo?=
 =?utf-8?B?SGNtR2tRVFVTTHgzL2YvQURmWm9McUl1VCsyNXZzOFJHTGYxN2FKcDF0Mm1k?=
 =?utf-8?B?a0hJeW45TjlLNlp6WUthbXRkeGpGdTNaVmw2YUdYdTdZaGVYTExURzNMbWwv?=
 =?utf-8?B?MVdzWnBJSDByUDZuSjVSRUNUQS9NdGZLck10elNiaUk1bTZ2Y1FzOXZVaUpK?=
 =?utf-8?B?eE92TTA4eGtVLzRrUVVKTzdnZzhkTUwwc1pvTnNneVFhdWJQSkcxUmF5ODZT?=
 =?utf-8?B?bjdQa0pCZnZkTzlPUzN5QnZFK2lzMUtkU2dPZnVQaURNbzVBbFhiSXBub3VM?=
 =?utf-8?B?RFpkd2w0a2I2cTN2eHh2cVVzRUhVbVY1YzhIbmJ1ckwwNzFRWDhsaXRsTURr?=
 =?utf-8?B?TkNaSnJYSC90TVBHYm1Kb1FRNCsySW1oUTBNRm5KbU92NVBCNENtemROcHlz?=
 =?utf-8?B?dnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: adce67b5-e10a-47f9-36c4-08dbb55b19ec
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4239.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2023 19:45:08.7022 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IMHZDTqij3qRhjmnvJN/lXZf58RNQ8a74qCYbR95luDS8rxrEbO5sfPv6cQPVayHRSpk6zuYOmA0NXnQEXuIMAn1uDvCoSm/xCRNryxG0+c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8037
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v6] drm/i915: Add Wa_18022495364
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
Cc: matthew.d.roper@intel.com, intel-gfx@lists.freedesktop.org,
 lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Sep 15, 2023 at 01:10:32AM +0530, Dnyaneshwar Bhadane wrote:
> Invalidate instruction and State cache bit using INDIRECT_CTX on
> every gpu context switch for gen12.
> The goal of this workaround is to actually perform an explicit
> invalidation of that cache (by re-writing the register) during every GPU
> context switch, which is accomplished via a "workaround batchbuffer"
> that's attached to the context via INDIRECT_CTX. (Matt Ropper)
> BSpec: 11354
> 
> Please refer [1] for more reviews and comment on the same patch
> 
> [1] https://patchwork.freedesktop.org/patch/556154/
> 
> v2:
> - Remove extra parentheses from the condition (Lucas)
> - Align spacing and new line (Lucas)
> 
> v3:
> - Fix commit message.
> 
> v4:
> - Only GEN12 changes are kept  (Matt Ropper)
Not clear to me what this means, also its Matt Roper
> - Fix the commit message for r-b (Matt Ropper)
> - Rename the register bit in define
> 
> v5:
> - Move out this workaround from golden context init (Matt Roper)
> - Use INDIRECT_CTX to set bit on each GPU context switch (Matt Roper)
> 
> v6:
> - Change IP Version base condition for Gen12 (Matt Ropper)
Matt Roper
> - Made imperative form of commit version messages (Suraj)
> - s/Added/Add in patch header (Suraj)
> 
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> 
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h |  2 ++
>  drivers/gpu/drm/i915/gt/intel_lrc.c     | 13 +++++++++++++
>  2 files changed, 15 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index a00ff51c681d..0d5260d126d8 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -164,6 +164,8 @@
>  #define GEN9_CSFE_CHICKEN1_RCS			_MMIO(0x20d4)
>  #define   GEN9_PREEMPT_GPGPU_SYNC_SWITCH_DISABLE	(1 << 2)
>  #define   GEN11_ENABLE_32_PLANE_MODE		(1 << 7)
> +#define GEN12_CS_DEBUG_MODE2			_MMIO(0x20d8)
> +#define   INSTRUCTION_STATE_CACHE_INVALIDATE	REG_BIT(6)
>  
>  #define GEN7_FF_SLICE_CS_CHICKEN1		_MMIO(0x20e0)
>  #define   GEN9_FFSC_PERCTX_PREEMPT_CTRL		(1 << 14)
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index b99efa348ad1..56c916730e9b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1333,6 +1333,15 @@ dg2_emit_draw_watermark_setting(u32 *cs)
>  	return cs;
>  }
>  
> +static u32 *
> +gen12_invalidate_state_cache(u32 *cs)
> +{
> +	*cs++ = MI_LOAD_REGISTER_IMM(1);
> +	*cs++ = i915_mmio_reg_offset(GEN12_CS_DEBUG_MODE2);
> +	*cs++ = _MASKED_BIT_ENABLE(INSTRUCTION_STATE_CACHE_INVALIDATE);
> +	return cs;
> +}
> +
>  static u32 *
>  gen12_emit_indirect_ctx_rcs(const struct intel_context *ce, u32 *cs)
>  {
> @@ -1346,6 +1355,10 @@ gen12_emit_indirect_ctx_rcs(const struct intel_context *ce, u32 *cs)
>  
>  	cs = gen12_emit_aux_table_inv(ce->engine, cs);
>  
> +	/* Wa_18022495364 */
> +	if (IS_GFX_GT_IP_RANGE(ce->engine->gt, IP_VER(12, 0), IP_VER(12, 10)))
> +		cs = gen12_invalidate_state_cache(cs);
> +
>  	/* Wa_16014892111 */
>  	if (IS_GFX_GT_IP_STEP(ce->engine->gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
>  	    IS_GFX_GT_IP_STEP(ce->engine->gt, IP_VER(12, 71), STEP_A0, STEP_B0) ||
> -- 
> 2.34.1
> 
