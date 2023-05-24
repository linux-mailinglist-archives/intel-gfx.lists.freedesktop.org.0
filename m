Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD32D70FFA7
	for <lists+intel-gfx@lfdr.de>; Wed, 24 May 2023 23:07:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41D9810E63A;
	Wed, 24 May 2023 21:07:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0787F10E63A
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 May 2023 21:07:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684962430; x=1716498430;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=WPiqvjLtjcPjxbgR1BIn0x0ot3aU5TpXAkLlYpvexYM=;
 b=H76qFnNghdWiWhYtBb1C9GnGJ8uVSYxQ1MEsYDJ2cedcbWKJNoHUeHPm
 MWVzdv1WwUvM6jO4VEfRlhngj0e5WegLNllrp6bT3wFmtsR/Tq98xDawT
 wM8Ek3D6BKOjCWzSVuHpL3oxrJVUewG4MvBqcZaJ+EdNnk9ZcX3/b55X4
 u6JJ7jHDQzJa+taqnEvDbLJALuLXfk9Ov9Gz8NYxLFlWwPwWpN3qD7gcZ
 upOoqCUU0lcn15jMK1Fnt6FqnnGFUz7ClvxVMrFu1b1HdJpHyZer/RlhX
 AgUs67kcBiPitEYwDOKAiXzPyS6TF43FHLVMMZolF3GvLaiiqCVXI7Ae5 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10720"; a="352537000"
X-IronPort-AV: E=Sophos;i="6.00,190,1681196400"; d="scan'208";a="352537000"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2023 14:07:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10720"; a="698703679"
X-IronPort-AV: E=Sophos;i="6.00,190,1681196400"; d="scan'208";a="698703679"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 24 May 2023 14:07:08 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 24 May 2023 14:07:08 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 24 May 2023 14:07:08 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 24 May 2023 14:07:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R8/i9w1VjQ1VEsLq1jpV1jMGG9z0CnDfaZ3zm/7a1HqHR4FIVs7DEt8eXmK8W1sG57G3t2K31KoCzRpQZesXy4hwODF2AlLMtHlcI+pJo+GYbYjYvZBoyAAux7YzmOA4YWJSrpPGOCXhaJniiuypFBuaLZgmpnaT/FEMK7kHt/V0rp+rKKjiRaLrlbiQnhVkngdcXZ1rqoPo6BheyYFjqDBaajfuPxl+NP6qhhuQTNBvptFC0AZ2o1P87v72dMdEUk225aPMNGjHvfOUtLyoXtjoLVZKScg8qFiPWIkxMrnkcnnHABViXAVYXR1DrUsTlG4Vb4bPl1U/g4gGrjybMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vDZ83S3ut24FTs48bmSAn3Ezxwi8dRvhxrDLKOzl8Yo=;
 b=SL+yTCqOZcGlcA/lAlJHFpS0fFfeBrFZzcdIzdwedxfDJi+PFOec+EmVRZkdIaafLG/F4I92iURyz32oQl1VZ4la+LxK8ipMKHXonkTKI0TN7ioeO7+PHcICUBUHLm7LCwe1brLENByVKA3Pu8b2t5oJPVHBOxIjBQI1imEkrouWAenfSvd1ZS9z4u0m3+9fPWT3Z+QfGUkrijJ3f4kYixDpwDqayWLby3P/CAnCm3oKBxMnA0l6zsaUI2/iu+R+T+S6hHY0qKYarJmKMIbjV7T0b7BYtjoMEiyJaHavYiK+wdw27q7ddkBf1ck+VMiedjXLQCCWLiLoWEpK5NUGTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by LV3PR11MB8580.namprd11.prod.outlook.com (2603:10b6:408:1ae::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.29; Wed, 24 May
 2023 21:07:05 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::7c95:635b:8059:9e68]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::7c95:635b:8059:9e68%4]) with mapi id 15.20.6433.015; Wed, 24 May 2023
 21:07:05 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230524124124.378194-8-vinod.govindapillai@intel.com>
References: <20230524124124.378194-1-vinod.govindapillai@intel.com>
 <20230524124124.378194-8-vinod.govindapillai@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Wed, 24 May 2023 18:06:58 -0300
Message-ID: <168496241851.2227.11853405820132174482@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR13CA0163.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::18) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|LV3PR11MB8580:EE_
X-MS-Office365-Filtering-Correlation-Id: 42547251-a5cd-43a6-6748-08db5c9ad37e
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ESxGXPVv9u6v7oJWF9dgtb8WkFI2AXcpq3KKEp4umV11KQE6V5EfVtGgjgGB1H0UUkY9EjnfHcI7hJ0ySkGdwiubWCwyiAJW7oKuFryX6lBGlrZeA+nWbzurt1LeBAIga9uoVsEMdeIxinNol/N+JNk7wASVBPF3TjjIGc3ycrXtQRKyo1XCH2crxSgh6D4YLcGfKi/EThLKt65Qd10v4UDAxo1g0otCsH0SsPyspYUIGRW/x4dtGj5uCp6OwpOuGff/4UmJYcl4DwtAG0QEHqKc0rY/qoO5oQj3P0yvGCKGBthIqwcCzGUlhVkT1KVPrN/lfDVKZVKsW8aXDxXpIXQAc9P8djjpl17hJPdWvRvci871mz+rDWWvugojt6zPTlO98eEqXrTgQxHMi5uGDDDc1YmMcYbfuAQ5Jl4ZUbm5ixpjfnsSnpx8eUqIKNg8bm4I8ImVuhJlgVCaDJxeDkTF1+IWd046DLATTjKXs2wIb1KTgYlU26+a3YIcb10IsFIhCKgMeyffTnGAnFaW1QE+eda6w9Nz/q3R8+hRNaZcRD9wb/scwu81dmj0F660
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(39860400002)(396003)(376002)(136003)(366004)(346002)(451199021)(6512007)(26005)(30864003)(186003)(6506007)(82960400001)(9686003)(107886003)(44832011)(83380400001)(2906002)(6486002)(316002)(41300700001)(6666004)(38100700002)(33716001)(478600001)(66946007)(66476007)(66556008)(4326008)(86362001)(8936002)(8676002)(5660300002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eHpwZURPK0tRRlJ4VHh3Z0UrTlJvR0pHSFFIWmg5eWltdldoZDZVdGVzS0ZV?=
 =?utf-8?B?Ny8reGlzV3NEK1V4ODc2ZVZzeFNnbXVYeXpnVTltQmUrbDFQR05YV2JWS2Jq?=
 =?utf-8?B?ZGVvN3RQLzR5UlRBY1JZUGNUbjZKSjZLbUtMZ1ZtdmNFaW1NVW03YWUxVllU?=
 =?utf-8?B?MmJIZWxDamhCWmdoRHAydnpYTlFnZzV6RGxGak12ZTN4c2d0aDNsd01MSkUx?=
 =?utf-8?B?dXJKTTlXbWN1bUxZclB0THUvOWFwU1g1RHVvdldzUC9oQjU0eEIxMDhVUjRH?=
 =?utf-8?B?MzFGb0JZTWt2RTkyZmdWMml2Q3dPNGMzT3dWQnRnb2RlWWttVk1QTVlON0gr?=
 =?utf-8?B?VEk4WjE3QmtaUTYzOVlSbW9Rck1UZFBKSHM5b2VMM0NDcVYvdE1PUHZoVDlS?=
 =?utf-8?B?bkVPUStJNkk1bVJUdHBLNHlKVElJTlROZFRSeVZiV2EzTVdqUEd6eVhVQi81?=
 =?utf-8?B?TVlnMWNLUERqT0QvUVlJMjlneVRJYlVSWmR2c1h5YWh0cTBtZ05oY2N4SmVP?=
 =?utf-8?B?ZGNqdWYxUzU1dFY1OHplaU5UYmYxWVdhdVdVQWNXVEZYaUZxSk9IOTZ1K21E?=
 =?utf-8?B?bU1malNadG9haGdHcGpSTDVwTVFzdkxIMXd3NzFrOVhSRlZWb1JFRzhIWVVy?=
 =?utf-8?B?UVdtczUzMmJUeFJjRlZIQVZUOVI3Zk1sUTNaZUFzSnlRSENieGFkSlkzWmpW?=
 =?utf-8?B?MzZSRmZHaU1nbUM0VElVNFV6aHBaTTBXVGxLTTI0MjNyU0NOclNZYWRsczZJ?=
 =?utf-8?B?akg0VEdnVXR1dWl4ZERGZjhHcnNsMjJGS0J5N1dIQjlPR2FKSnpxcytlaTcz?=
 =?utf-8?B?V3lwTURmcGd6SHhPcG9FTC9GWlI4RzV1OERaWmx1M0Yxd0NBeU5LOVFSa1VH?=
 =?utf-8?B?VEJ3aEpMRExISkZvajJyMExtbDFra1dYTi9mOTlwWThlZWJyeTZORUUvekhF?=
 =?utf-8?B?Mm8ySTMyOWZ2SnNxKys5YVlVOFlQUmVsR2dyQ3FBanNzZ0dFUUFlRmNBdERn?=
 =?utf-8?B?RHp5UGFmVWRJeXlNWTlIWUdiNHJXRDZuaWxWV29TY3o2NUZmeng2MmRmYUpX?=
 =?utf-8?B?K0t3dEkrRTIwVVRPempzZ25MMmtIdUY1QWNVN1pzY2laT0pieitoUjNPVERa?=
 =?utf-8?B?MkVJcExkeUNSVVNBVkFFUHladVRVeEpBUG9aSEV0YndpeEYwa25KbHI3REJR?=
 =?utf-8?B?VHlUQ004YUhNRmJuejdCZzBmMHNocXNSK1dsa25oNkhObkYyZ0lLUkNZNXNl?=
 =?utf-8?B?NWlza3RkM0xkSUhCRTI3Y0djT3BpMjJDQWEweElBS2VGdjNTdkxjdkhINkZv?=
 =?utf-8?B?QTdub0l3THI4Rjh5M1c1a3BCVENpeEU1SEw2Z3d1ejJGd2c2KzFhelhBZEVW?=
 =?utf-8?B?blNZNmg4V3BTU0wwcGptdGgvenI0WjJEWUJyTjM2UmVYSERTUHZwVGtFYWVo?=
 =?utf-8?B?dFRkbEJDbU5pVk05bUdGcXp3STdiN3hqS05vYmpHV0kwN0VVTlVnMk1qam45?=
 =?utf-8?B?MXdURUVwclVRZDdsMER3QU5KZjNwSHpSdXlQa1RZYWQvMllDQ05EdmI4b3pu?=
 =?utf-8?B?L0p6ZHUwZEtTVUZZTnBBL25DWEpZUVg0UldTbzd5L1lJaXJONFhwZVYwTnE0?=
 =?utf-8?B?WS9CL1hIaHhuYVZGTE1WRTNzSGp6OWJsQTc5aW1mdCt0ZklmS1RNZjhVWjNq?=
 =?utf-8?B?VHg2U0dDMG1EdWNnd01hY01PWjlNYm9oL3pvdmFLQlF6UjE1Q3lQblE0Qkh3?=
 =?utf-8?B?bXpEc05uSXoyKzZFNFdURTgxaGpXV0pyeWNlek8yQlduakcvZ0dOVEF5cUFU?=
 =?utf-8?B?cXhvbGlNZFhDMzR3M1VxTC9qRnE4OHcvZ0NJamdUUkV6U3VPRUNVUlFxVlRi?=
 =?utf-8?B?Ni9MdFhMMWwvWUlycDB5SFFBRG1zdlhzOHhvSWJsb2JjczhTWnllcTRtamJi?=
 =?utf-8?B?SXVzellHbjRCdGlPQSt4YXRtSlJzT21yMnBGMm1Hc2xjRGMzai9VMS9mKzZk?=
 =?utf-8?B?MWswZm1CUmVpTldrSVRaN2VLbEliSnVKdkxvUFkvTnlYRGZ4SldDQkxRWm5v?=
 =?utf-8?B?TmpQanpLY2IvOHZmQWJ5V1BSSW02RGp3b0xKK2w1Z1U0bStsSjdEbFN4MHpz?=
 =?utf-8?B?OWtIak1nLzVqdmpPZTB6Rk5TTmFFckJqdytBVk9EaWdadkUwSStPWjd4V2Z0?=
 =?utf-8?B?UFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 42547251-a5cd-43a6-6748-08db5c9ad37e
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 May 2023 21:07:05.3825 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cFrBbhKD5FEiI8FK8HIcJdNsCbK23NhHgje4PwfeIkIQcR9lKd/e4i4cLPD3CwcIL7ndDkGcBCxJpPzGjvZefw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8580
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v7 7/7] drm/i915/mtl: Add support for PM
 DEMAND
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Vinod,

Thanks a lot for updating the logic for the max port clock and active
phys. I believe we are on the right track. I think they still need some
tweaks and I provided comments inline.

Quoting Vinod Govindapillai (2023-05-24 09:41:24-03:00)
>From: Mika Kahola <mika.kahola@intel.com>
>
>MTL introduces a new way to instruct the PUnit with
>power and bandwidth requirements of DE. Add the functionality
>to program the registers and handle waits using interrupts.
>The current wait time for timeouts is programmed for 10 msecs to
>factor in the worst case scenarios. Changes made to use REG_BIT
>for a register that we touched(GEN8_DE_MISC_IER _MMIO).
>
>Wa_14016740474 is added which applies to Xe_LPD+ display
>
>v2: checkpatch warning fixes, simplify program pmdemand part
>
>v3: update to dbufs and pipes values to pmdemand register(stan)
>    Removed the macro usage in update_pmdemand_values()
>
>v4: move the pmdemand_pre_plane_update before cdclk update
>    pmdemand_needs_update included cdclk params comparisons
>    pmdemand_state NULL check (Gustavo)
>    pmdemand.o in sorted order in the makefile (Jani)
>    update pmdemand misc irq handler loop (Gustavo)
>    active phys bitmask and programming correction (Gustavo)
>
>v5: simplify pmdemand_state structure
>    simplify methods to find active phys and max port clock
>    Timeout in case of previou pmdemand task pending (Gustavo)
>
>v6: rebasing
>    updates to max_ddiclk calculations (Gustavo)
>    updates to active_phys count method (Gustavo)
>
>Bspec: 66451, 64636, 64602, 64603
>Cc: Matt Atwood <matthew.s.atwood@intel.com>
>Cc: Matt Roper <matthew.d.roper@intel.com>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Gustavo Sousa <gustavo.sousa@intel.com>
>Signed-off-by: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>
>Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>Signed-off-by: Mika Kahola <mika.kahola@intel.com>
>Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
>Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>---
> drivers/gpu/drm/i915/Makefile                 |   1 +
> drivers/gpu/drm/i915/display/intel_display.c  |  14 +
> .../gpu/drm/i915/display/intel_display_core.h |   9 +
> .../drm/i915/display/intel_display_driver.c   |   7 +
> .../gpu/drm/i915/display/intel_display_irq.c  |  23 +-
> .../drm/i915/display/intel_display_power.c    |   8 +
> drivers/gpu/drm/i915/display/intel_pmdemand.c | 550 ++++++++++++++++++
> drivers/gpu/drm/i915/display/intel_pmdemand.h |  24 +
> drivers/gpu/drm/i915/i915_reg.h               |  36 +-
> 9 files changed, 668 insertions(+), 4 deletions(-)
> create mode 100644 drivers/gpu/drm/i915/display/intel_pmdemand.c
> create mode 100644 drivers/gpu/drm/i915/display/intel_pmdemand.h
>
>diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
>index dd9ca69f4998..358463d02a57 100644
>--- a/drivers/gpu/drm/i915/Makefile
>+++ b/drivers/gpu/drm/i915/Makefile
>@@ -273,6 +273,7 @@ i915-y +=3D \
>         display/intel_pch_display.o \
>         display/intel_pch_refclk.o \
>         display/intel_plane_initial.o \
>+        display/intel_pmdemand.o \
>         display/intel_psr.o \
>         display/intel_quirks.o \
>         display/intel_sprite.o \
>diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/dr=
m/i915/display/intel_display.c
>index 0490c6412ab5..b3bb2c607650 100644
>--- a/drivers/gpu/drm/i915/display/intel_display.c
>+++ b/drivers/gpu/drm/i915/display/intel_display.c
>@@ -99,6 +99,7 @@
> #include "intel_pcode.h"
> #include "intel_pipe_crc.h"
> #include "intel_plane_initial.h"
>+#include "intel_pmdemand.h"
> #include "intel_pps.h"
> #include "intel_psr.h"
> #include "intel_sdvo.h"
>@@ -6343,6 +6344,10 @@ int intel_atomic_check(struct drm_device *dev,
>                         return ret;
>         }
>=20
>+        ret =3D intel_pmdemand_atomic_check(state);
>+        if (ret)
>+                goto fail;
>+
>         ret =3D intel_atomic_check_crtcs(state);
>         if (ret)
>                 goto fail;
>@@ -6988,6 +6993,14 @@ static void intel_atomic_commit_tail(struct intel_a=
tomic_state *state)
>         for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
>                 crtc->config =3D new_crtc_state;
>=20
>+        /*
>+         * In XE_LPD+ Pmdemand combines many parameters such as voltage i=
ndex,
>+         * plls, cdclk frequency, QGV point selection parameter etc. Volt=
age
>+         * index, cdclk/ddiclk frequencies are supposed to be configured =
before
>+         * the cdclk config is set.
>+         */
>+        intel_pmdemand_pre_plane_update(state);
>+
>         if (state->modeset) {
>                 drm_atomic_helper_update_legacy_modeset_state(dev, &state=
->base);
>=20
>@@ -7107,6 +7120,7 @@ static void intel_atomic_commit_tail(struct intel_at=
omic_state *state)
>                 intel_verify_planes(state);
>=20
>         intel_sagv_post_plane_update(state);
>+        intel_pmdemand_post_plane_update(state);
>=20
>         drm_atomic_helper_commit_hw_done(&state->base);
>=20
>diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/g=
pu/drm/i915/display/intel_display_core.h
>index 9f66d734edf6..ae45b2c42eb1 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_core.h
>+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>@@ -345,6 +345,15 @@ struct intel_display {
>                 struct intel_global_obj obj;
>         } dbuf;
>=20
>+        struct {
>+                wait_queue_head_t waitqueue;
>+
>+                /* mutex to protect pmdemand programming sequence */
>+                struct mutex lock;
>+
>+                struct intel_global_obj obj;
>+        } pmdemand;
>+
>         struct {
>                 /*
>                  * dkl.phy_lock protects against concurrent access of the
>diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers=
/gpu/drm/i915/display/intel_display_driver.c
>index 60ce10fc7205..dc8de861339d 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
>@@ -47,6 +47,7 @@
> #include "intel_opregion.h"
> #include "intel_overlay.h"
> #include "intel_plane_initial.h"
>+#include "intel_pmdemand.h"
> #include "intel_pps.h"
> #include "intel_quirks.h"
> #include "intel_vga.h"
>@@ -211,6 +212,8 @@ int intel_display_driver_probe_noirq(struct drm_i915_p=
rivate *i915)
>         if (ret < 0)
>                 goto cleanup_vga;
>=20
>+        intel_pmdemand_init_early(i915);
>+
>         intel_power_domains_init_hw(i915, false);
>=20
>         if (!HAS_DISPLAY(i915))
>@@ -240,6 +243,10 @@ int intel_display_driver_probe_noirq(struct drm_i915_=
private *i915)
>         if (ret)
>                 goto cleanup_vga_client_pw_domain_dmc;
>=20
>+        ret =3D intel_pmdemand_init(i915);
>+        if (ret)
>+                goto cleanup_vga_client_pw_domain_dmc;
>+
>         init_llist_head(&i915->display.atomic_helper.free_list);
>         INIT_WORK(&i915->display.atomic_helper.free_work,
>                   intel_atomic_helper_free_state_worker);
>diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gp=
u/drm/i915/display/intel_display_irq.c
>index 3b2a287d2041..0b3739310f81 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
>@@ -18,6 +18,7 @@
> #include "intel_fifo_underrun.h"
> #include "intel_gmbus.h"
> #include "intel_hotplug_irq.h"
>+#include "intel_pmdemand.h"
> #include "intel_psr.h"
> #include "intel_psr_regs.h"
>=20
>@@ -827,12 +828,27 @@ static u32 gen8_de_pipe_fault_mask(struct drm_i915_p=
rivate *dev_priv)
>                 return GEN8_DE_PIPE_IRQ_FAULT_ERRORS;
> }
>=20
>+static void intel_pmdemand_irq_handler(struct drm_i915_private *dev_priv)
>+{
>+        wake_up_all(&dev_priv->display.pmdemand.waitqueue);
>+}
>+
> static void
> gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
> {
>         bool found =3D false;
>=20
>-        if (iir & GEN8_DE_MISC_GSE) {
>+        if (DISPLAY_VER(dev_priv) >=3D 14) {
>+                if (iir & (XELPDP_PMDEMAND_RSP |
>+                           XELPDP_PMDEMAND_RSPTOUT_ERR)) {
>+                        if (iir & XELPDP_PMDEMAND_RSPTOUT_ERR)
>+                                drm_dbg(&dev_priv->drm,
>+                                        "Error waiting for Punit PM Deman=
d Response\n");
>+
>+                        intel_pmdemand_irq_handler(dev_priv);
>+                        found =3D true;
>+                }
>+        } else if (iir & GEN8_DE_MISC_GSE) {
>                 intel_opregion_asle_intr(dev_priv);
>                 found =3D true;
>         }
>@@ -1576,7 +1592,10 @@ void gen8_de_irq_postinstall(struct drm_i915_privat=
e *dev_priv)
>         if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
>                 de_port_masked |=3D BXT_DE_PORT_GMBUS;
>=20
>-        if (DISPLAY_VER(dev_priv) >=3D 11) {
>+        if (DISPLAY_VER(dev_priv) >=3D 14) {
>+                de_misc_masked |=3D XELPDP_PMDEMAND_RSPTOUT_ERR |
>+                                  XELPDP_PMDEMAND_RSP;
>+        } else if (DISPLAY_VER(dev_priv) >=3D 11) {
>                 enum port port;
>=20
>                 if (intel_bios_is_dsi_present(dev_priv, &port))
>diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/=
gpu/drm/i915/display/intel_display_power.c
>index 6ed2ece89c3f..59de308234a6 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_power.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>@@ -20,6 +20,7 @@
> #include "intel_mchbar_regs.h"
> #include "intel_pch_refclk.h"
> #include "intel_pcode.h"
>+#include "intel_pmdemand.h"
> #include "intel_pps_regs.h"
> #include "intel_snps_phy.h"
> #include "skl_watermark.h"
>@@ -1085,6 +1086,10 @@ static void gen9_dbuf_enable(struct drm_i915_privat=
e *dev_priv)
>         dev_priv->display.dbuf.enabled_slices =3D
>                 intel_enabled_dbuf_slices_mask(dev_priv);
>=20
>+        if (DISPLAY_VER(dev_priv) >=3D 14)
>+                intel_program_dbuf_pmdemand(dev_priv, BIT(DBUF_S1) |
>+                                            dev_priv->display.dbuf.enable=
d_slices);
>+
>         /*
>          * Just power up at least 1 slice, we will
>          * figure out later which slices we have and what we need.
>@@ -1096,6 +1101,9 @@ static void gen9_dbuf_enable(struct drm_i915_private=
 *dev_priv)
> static void gen9_dbuf_disable(struct drm_i915_private *dev_priv)
> {
>         gen9_dbuf_slices_update(dev_priv, 0);
>+
>+        if (DISPLAY_VER(dev_priv) >=3D 14)
>+                intel_program_dbuf_pmdemand(dev_priv, 0);
> }
>=20
> static void gen12_dbuf_slices_config(struct drm_i915_private *dev_priv)
>diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/d=
rm/i915/display/intel_pmdemand.c
>new file mode 100644
>index 000000000000..ff0e9183bfac
>--- /dev/null
>+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
>@@ -0,0 +1,550 @@
>+// SPDX-License-Identifier: MIT
>+/*
>+ * Copyright =C2=A9 2023 Intel Corporation
>+ */
>+
>+#include <linux/bitops.h>
>+
>+#include "i915_drv.h"
>+#include "i915_reg.h"
>+#include "intel_bw.h"
>+#include "intel_cdclk.h"
>+#include "intel_cx0_phy.h"
>+#include "intel_de.h"
>+#include "intel_display.h"
>+#include "intel_display_trace.h"
>+#include "intel_pmdemand.h"
>+#include "skl_watermark.h"
>+
>+struct pmdemand_params {
>+        u16 qclk_gv_bw;
>+        u8 voltage_index;
>+        u8 qclk_gv_index;
>+        u8 active_pipes;
>+        u8 dbufs;
>+        /* Total number of non type C active phys from active_phys_mask *=
/
>+        u8 active_phys;
>+        u16 cdclk_freq_mhz;
>+        /* max from ddi_clocks[]*/
>+        u16 ddiclk_max;
>+        u8 scalers;
>+};
>+
>+struct intel_pmdemand_state {
>+        struct intel_global_state base;
>+
>+        /* Maintain a persistent list of port clocks across all crtcs */
>+        int ddi_clocks[I915_MAX_PIPES];
>+
>+        /* Maintain a persistent list of non type C phys mask */
>+        u16 active_phys_mask;
>+
>+        /* Parameters to be configured in the pmdemand registers */
>+        struct pmdemand_params params;
>+};
>+
>+#define to_intel_pmdemand_state(x) container_of((x), \
>+                                                struct intel_pmdemand_sta=
te, \
>+                                                base)
>+static struct intel_global_state *
>+intel_pmdemand_duplicate_state(struct intel_global_obj *obj)
>+{
>+        struct intel_pmdemand_state *pmdmnd_state;
>+
>+        pmdmnd_state =3D kmemdup(obj->state, sizeof(*pmdmnd_state), GFP_K=
ERNEL);
>+        if (!pmdmnd_state)
>+                return NULL;
>+
>+        return &pmdmnd_state->base;
>+}
>+
>+static void intel_pmdemand_destroy_state(struct intel_global_obj *obj,
>+                                         struct intel_global_state *state=
)
>+{
>+        kfree(state);
>+}
>+
>+static const struct intel_global_state_funcs intel_pmdemand_funcs =3D {
>+        .atomic_duplicate_state =3D intel_pmdemand_duplicate_state,
>+        .atomic_destroy_state =3D intel_pmdemand_destroy_state,
>+};
>+
>+static struct intel_pmdemand_state *
>+intel_atomic_get_pmdemand_state(struct intel_atomic_state *state)
>+{
>+        struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>+        struct intel_global_state *pmdemand_state =3D
>+                intel_atomic_get_global_obj_state(state,
>+                                                  &i915->display.pmdemand=
.obj);
>+
>+        if (IS_ERR(pmdemand_state))
>+                return ERR_CAST(pmdemand_state);
>+
>+        return to_intel_pmdemand_state(pmdemand_state);
>+}
>+
>+static struct intel_pmdemand_state *
>+intel_atomic_get_old_pmdemand_state(struct intel_atomic_state *state)
>+{
>+        struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>+        struct intel_global_state *pmdemand_state =3D
>+                intel_atomic_get_old_global_obj_state(state,
>+                                                      &i915->display.pmde=
mand.obj);
>+
>+        if (!pmdemand_state)
>+                return NULL;
>+
>+        return to_intel_pmdemand_state(pmdemand_state);
>+}
>+
>+static struct intel_pmdemand_state *
>+intel_atomic_get_new_pmdemand_state(struct intel_atomic_state *state)
>+{
>+        struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>+        struct intel_global_state *pmdemand_state =3D
>+                intel_atomic_get_new_global_obj_state(state,
>+                                                      &i915->display.pmde=
mand.obj);
>+
>+        if (!pmdemand_state)
>+                return NULL;
>+
>+        return to_intel_pmdemand_state(pmdemand_state);
>+}
>+
>+int intel_pmdemand_init(struct drm_i915_private *i915)
>+{
>+        struct intel_pmdemand_state *pmdemand_state;
>+
>+        pmdemand_state =3D kzalloc(sizeof(*pmdemand_state), GFP_KERNEL);
>+        if (!pmdemand_state)
>+                return -ENOMEM;
>+
>+        intel_atomic_global_obj_init(i915, &i915->display.pmdemand.obj,
>+                                     &pmdemand_state->base,
>+                                     &intel_pmdemand_funcs);
>+
>+        if (IS_MTL_DISPLAY_STEP(i915, STEP_A0, STEP_C0))
>+                /* Wa_14016740474 */
>+                intel_de_rmw(i915, XELPD_CHICKEN_DCPR_3, 0, DMD_RSP_TIMEO=
UT_DISABLE);
>+
>+        return 0;
>+}
>+
>+void intel_pmdemand_init_early(struct drm_i915_private *i915)
>+{
>+        mutex_init(&i915->display.pmdemand.lock);
>+        init_waitqueue_head(&i915->display.pmdemand.waitqueue);
>+}
>+
>+static void pmdemand_update_max_ddiclk(struct intel_atomic_state *state,
>+                                       struct intel_pmdemand_state *pmd_s=
tate)
>+{
>+        int max_ddiclk =3D 0;
>+        struct intel_crtc *crtc;
>+        int i;
>+        const struct intel_crtc_state *new_crtc_state;
>+
>+        for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
>+                pmd_state->ddi_clocks[crtc->pipe] =3D new_crtc_state->por=
t_clock;

Hm... I couldn't find anywhere in the code we setting port_clock to zero fo=
r
inactive CRTCS (and I'm not even sure that would be correct). I think we sh=
ould
depend on new_crtc_state->hw.active to properly update the array:

    if (new_crtc_state->hw.active)
            pmd_state->ddi_clocks[crtc->pipe] =3D new_crtc_state->port_cloc=
k;
    else
            pmd_state->ddi_clocks[crtc->pipe] =3D 0;

>+
>+        for (i =3D 0; i < ARRAY_SIZE(pmd_state->ddi_clocks); i++)
>+                max_ddiclk =3D max(pmd_state->ddi_clocks[i], max_ddiclk);
>+
>+        pmd_state->params.ddiclk_max =3D DIV_ROUND_UP(max_ddiclk, 1000);
>+}
>+
>+static struct intel_encoder *
>+pmdemand_get_crtc_old_encoder(const struct intel_atomic_state *state,
>+                              const struct intel_crtc_state *crtc_state)
>+{
>+        const struct drm_connector_state *connector_state;
>+        const struct drm_connector *connector;
>+        struct intel_encoder *encoder =3D NULL;
>+        struct intel_crtc *master_crtc;
>+        int i;
>+
>+        master_crtc =3D intel_master_crtc(crtc_state);
>+
>+        for_each_old_connector_in_state(&state->base, connector, connecto=
r_state, i) {
>+                if (connector_state->crtc !=3D &master_crtc->base)
>+                        continue;
>+
>+                encoder =3D to_intel_encoder(connector_state->best_encode=
r);
>+        }
>+
>+        return encoder;
>+}
>+
>+static void
>+pmdemand_update_active_non_tc_phys(struct drm_i915_private *i915,
>+                                   const struct intel_atomic_state *state=
,
>+                                   struct intel_pmdemand_state *pmd_state=
)
>+{
>+        struct intel_crtc *crtc;
>+        int i;
>+        const struct intel_crtc_state *new_crtc_state, *old_crtc_state;
>+
>+        for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>+                                            new_crtc_state, i){

Style: missing a space between ")" and "{".

>+                struct intel_encoder *encoder;
>+                enum phy phy;
>+
>+                if (!intel_crtc_needs_modeset(new_crtc_state))
>+                        continue;
>+
>+                if (new_crtc_state->hw.active) {
>+                        encoder =3D intel_get_crtc_new_encoder(state, new=
_crtc_state);
>+                        if (!encoder)
>+                                continue;
>+
>+                        phy =3D intel_port_to_phy(i915, encoder->port);
>+
>+                        if (intel_phy_is_tc(i915, phy))
>+                                continue;
>+
>+                        pmd_state->active_phys_mask |=3D BIT(phy);
>+                } else if (old_crtc_state->hw.active) {
>+                        encoder =3D pmdemand_get_crtc_old_encoder(state, =
old_crtc_state);
>+                        if (!encoder)
>+                                continue;
>+
>+                        phy =3D intel_port_to_phy(i915, encoder->port);
>+                        pmd_state->active_phys_mask &=3D ~BIT(phy);
>+                }
>+        }

I think we should do things in the following order:

  1. First iterate through CRTCS that will be disabled to make sure we
     unset all bits for PHYs being disabled. That would mean doing the
     "if else" part of your logic above.

  2. Then we can loop again to set bits for phys of active CRTCs.

I suggest doing it this way because there isn't a strict 1:1 map between
connectors and crtcs, meaning that a connector could be driven by crtc A
in the old state and but then by crtc B in the new state. Doing it in a
single loop could cause us think that a certain PHY is inactive while it
is actually active in a new crtc (i.e. we could be setting it for the
new crtc state before the unsetting for the old crtc state).

>+
>+        pmd_state->params.active_phys =3D hweight16(pmd_state->active_phy=
s_mask);
>+}
>+
>+static bool pmdemand_needs_update(struct intel_atomic_state *state)
>+{
>+        bool states_checked =3D false;
>+        struct intel_crtc *crtc;
>+        int i;
>+        const struct intel_crtc_state *new_crtc_state, *old_crtc_state;
>+
>+        for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>+                                            new_crtc_state, i) {
>+                const struct intel_bw_state *new_bw_state, *old_bw_state;
>+                const struct intel_cdclk_state *new_cdclk_state;
>+                const struct intel_cdclk_state *old_cdclk_state;
>+                const struct intel_dbuf_state *new_dbuf_state, *old_dbuf_=
state;
>+
>+                if (old_crtc_state->port_clock !=3D new_crtc_state->port_=
clock)
>+                        return true;
>+
>+                /*
>+                 * For the below settings once through the loop is enough=
.
>+                 * Some pmdemand_atomic_check calls might trigger read lo=
ck not
>+                 * taken assert if these following checks are kept outsid=
e this
>+                 * loop.
>+                 */
>+                if (states_checked)
>+                        continue;
>+
>+                new_bw_state =3D intel_atomic_get_new_bw_state(state);
>+                old_bw_state =3D intel_atomic_get_old_bw_state(state);
>+                if (new_bw_state && new_bw_state->qgv_point_peakbw !=3D
>+                    old_bw_state->qgv_point_peakbw)
>+                        return true;
>+
>+                new_dbuf_state =3D intel_atomic_get_new_dbuf_state(state)=
;
>+                old_dbuf_state =3D intel_atomic_get_old_dbuf_state(state)=
;
>+                if (new_dbuf_state && new_dbuf_state->active_pipes !=3D
>+                    old_dbuf_state->active_pipes)
>+                        return true;
>+
>+                new_cdclk_state =3D intel_atomic_get_new_cdclk_state(stat=
e);
>+                old_cdclk_state =3D intel_atomic_get_old_cdclk_state(stat=
e);
>+                if (new_cdclk_state &&
>+                    (new_cdclk_state->logical.cdclk !=3D
>+                     old_cdclk_state->logical.cdclk ||
>+                     new_cdclk_state->logical.voltage_level !=3D
>+                     old_cdclk_state->logical.voltage_level))
>+                        return true;
>+
>+                states_checked =3D true;
>+        }
>+
>+        return false;
>+}
>+
>+int intel_pmdemand_atomic_check(struct intel_atomic_state *state)
>+{
>+        struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>+        const struct intel_bw_state *new_bw_state;
>+        const struct intel_cdclk_state *new_cdclk_state;
>+        const struct intel_dbuf_state *new_dbuf_state;
>+        struct intel_pmdemand_state *new_pmdemand_state;
>+        int ret;
>+
>+        if (DISPLAY_VER(i915) < 14)
>+                return 0;
>+
>+        if (!pmdemand_needs_update(state))
>+                return 0;
>+
>+        new_pmdemand_state =3D intel_atomic_get_pmdemand_state(state);
>+        if (IS_ERR(new_pmdemand_state))
>+                return PTR_ERR(new_pmdemand_state);
>+
>+        ret =3D intel_atomic_lock_global_state(&new_pmdemand_state->base)=
;
>+        if (ret)
>+                return ret;
>+
>+        new_bw_state =3D intel_atomic_get_bw_state(state);
>+        if (IS_ERR(new_bw_state))
>+                return PTR_ERR(new_bw_state);
>+
>+        /* firmware will calculate the qclck_gc_index, requirement is set=
 to 0 */
>+        new_pmdemand_state->params.qclk_gv_index =3D 0;
>+        new_pmdemand_state->params.qclk_gv_bw =3D
>+                min_t(u16, new_bw_state->qgv_point_peakbw, 0xffff);
>+
>+        new_dbuf_state =3D intel_atomic_get_dbuf_state(state);
>+        if (IS_ERR(new_dbuf_state))
>+                return PTR_ERR(new_dbuf_state);
>+
>+        new_pmdemand_state->params.active_pipes =3D
>+                min_t(u8, hweight8(new_dbuf_state->active_pipes), 3);
>+
>+        new_cdclk_state =3D intel_atomic_get_cdclk_state(state);
>+        if (IS_ERR(new_cdclk_state))
>+                return PTR_ERR(new_cdclk_state);
>+
>+        new_pmdemand_state->params.voltage_index =3D
>+                new_cdclk_state->logical.voltage_level;
>+        new_pmdemand_state->params.cdclk_freq_mhz =3D
>+                DIV_ROUND_UP(new_cdclk_state->logical.cdclk, 1000);
>+
>+        pmdemand_update_max_ddiclk(state, new_pmdemand_state);
>+
>+        pmdemand_update_active_non_tc_phys(i915, state, new_pmdemand_stat=
e);
>+
>+        /*
>+         * Setting scalers to max as it can not be calculated during flip=
s and
>+         * fastsets without taking global states locks.
>+         */
>+        new_pmdemand_state->params.scalers =3D 7;
>+
>+        ret =3D intel_atomic_serialize_global_state(&new_pmdemand_state->=
base);
>+        if (ret)
>+                return ret;
>+
>+        return 0;
>+}
>+
>+static bool intel_pmdemand_check_prev_transaction(struct drm_i915_private=
 *i915)
>+{
>+        return !(intel_de_wait_for_clear(i915,
>+                                         XELPDP_INITIATE_PMDEMAND_REQUEST=
(1),
>+                                         XELPDP_PMDEMAND_REQ_ENABLE, 10) =
||
>+                 intel_de_wait_for_clear(i915,
>+                                         GEN12_DCPR_STATUS_1,
>+                                         XELPDP_PMDEMAND_INFLIGHT_STATUS,=
 10));
>+}
>+
>+static bool intel_pmdemand_req_complete(struct drm_i915_private *i915)
>+{
>+        return !(intel_de_read(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1))=
 &
>+                 XELPDP_PMDEMAND_REQ_ENABLE);
>+}
>+
>+static int intel_pmdemand_wait(struct drm_i915_private *i915)
>+{
>+        DEFINE_WAIT(wait);
>+        int ret;
>+        const unsigned int timeout_ms =3D 10;
>+
>+        ret =3D wait_event_timeout(i915->display.pmdemand.waitqueue,
>+                                 intel_pmdemand_req_complete(i915),
>+                                 msecs_to_jiffies_timeout(timeout_ms));
>+        if (ret =3D=3D 0)
>+                drm_err(&i915->drm,
>+                        "timed out waiting for Punit PM Demand Response\n=
");
>+
>+        return ret;
>+}
>+
>+/* Required to be programmed during Display Init Sequences. */
>+void intel_program_dbuf_pmdemand(struct drm_i915_private *i915,
>+                                 u8 dbuf_slices)
>+{
>+        u32 dbufs =3D min_t(u32, hweight8(dbuf_slices), 3);
>+
>+        mutex_lock(&i915->display.pmdemand.lock);
>+        if (drm_WARN_ON(&i915->drm,
>+                        !intel_pmdemand_check_prev_transaction(i915)))
>+                goto unlock;
>+
>+        intel_de_rmw(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(0),
>+                     XELPDP_PMDEMAND_DBUFS_MASK, XELPDP_PMDEMAND_DBUFS(db=
ufs));
>+        intel_de_rmw(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1), 0,
>+                     XELPDP_PMDEMAND_REQ_ENABLE);
>+
>+        intel_pmdemand_wait(i915);
>+
>+unlock:
>+        mutex_unlock(&i915->display.pmdemand.lock);
>+}
>+
>+static void update_pmdemand_values(const struct intel_pmdemand_state *new=
,
>+                                   const struct intel_pmdemand_state *old=
,
>+                                   u32 *reg1, u32 *reg2)
>+{
>+        u32 plls, tmp;
>+
>+        /*
>+         * The pmdemand parameter updates happens in two steps. Pre plane=
 and
>+         * post plane updates. During the pre plane, as DE might still be
>+         * handling with some old operations, to avoid unwanted performan=
ce
>+         * issues, program the pmdemand parameters with higher of old and=
 new
>+         * values. And then after once settled, use the new parameter val=
ues
>+         * as part of the post plane update.
>+         */
>+
>+        /* Set 1*/
>+        *reg1 &=3D ~XELPDP_PMDEMAND_QCLK_GV_BW_MASK;
>+        tmp =3D old ? max(old->params.qclk_gv_bw, new->params.qclk_gv_bw)=
 :
>+                    new->params.qclk_gv_bw;
>+        *reg1 |=3D XELPDP_PMDEMAND_QCLK_GV_BW(tmp);
>+
>+        *reg1 &=3D ~XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK;
>+        tmp =3D old ? max(old->params.voltage_index, new->params.voltage_=
index) :
>+                    new->params.voltage_index;
>+        *reg1 |=3D XELPDP_PMDEMAND_VOLTAGE_INDEX(tmp);
>+
>+        *reg1 &=3D ~XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK;
>+        tmp =3D old ? max(old->params.qclk_gv_index, new->params.qclk_gv_=
index) :
>+                    new->params.qclk_gv_index;
>+        *reg1 |=3D XELPDP_PMDEMAND_QCLK_GV_INDEX(tmp);
>+
>+        *reg1 &=3D ~XELPDP_PMDEMAND_PIPES_MASK;
>+        tmp =3D old ? max(old->params.active_pipes, new->params.active_pi=
pes) :
>+                    new->params.active_pipes;
>+        *reg1 |=3D XELPDP_PMDEMAND_PIPES(tmp);
>+
>+        *reg1 &=3D ~XELPDP_PMDEMAND_PHYS_MASK;
>+        plls =3D old ? max(old->params.active_phys, new->params.active_ph=
ys) :
>+                     new->params.active_phys;
>+        plls =3D min_t(u32, plls, 7);
>+        *reg1 |=3D XELPDP_PMDEMAND_PHYS(plls);
>+
>+        /* Set 2*/
>+        *reg2 &=3D ~XELPDP_PMDEMAND_CDCLK_FREQ_MASK;
>+        tmp =3D old ? max(old->params.cdclk_freq_mhz,
>+                        new->params.cdclk_freq_mhz) :
>+                    new->params.cdclk_freq_mhz;
>+        *reg2 |=3D XELPDP_PMDEMAND_CDCLK_FREQ(tmp);
>+
>+        *reg2 &=3D ~XELPDP_PMDEMAND_DDICLK_FREQ_MASK;
>+        tmp =3D old ? max(old->params.ddiclk_max, new->params.ddiclk_max)=
 :
>+                    new->params.ddiclk_max;
>+        *reg2 |=3D XELPDP_PMDEMAND_DDICLK_FREQ(tmp);
>+
>+        *reg2 &=3D ~XELPDP_PMDEMAND_SCALERS_MASK;
>+        tmp =3D old ? max(old->params.scalers, new->params.scalers) :
>+                    new->params.scalers;
>+        *reg2 |=3D XELPDP_PMDEMAND_SCALERS(tmp);
>+
>+        /*
>+         * Active_PLLs starts with 1 because of CDCLK PLL.
>+         * TODO: Missing to account genlock filter when it gets used.
>+         */
>+        plls =3D min_t(u32, plls + 1, 7);
>+        *reg2 &=3D ~XELPDP_PMDEMAND_PLLS_MASK;
>+        *reg2 |=3D XELPDP_PMDEMAND_PLLS(plls);
>+}
>+
>+static void intel_program_pmdemand(struct drm_i915_private *i915,
>+                                   const struct intel_pmdemand_state *new=
,
>+                                   const struct intel_pmdemand_state *old=
)
>+{
>+        bool changed =3D false;
>+        u32 reg1, mod_reg1;
>+        u32 reg2, mod_reg2;
>+
>+        mutex_lock(&i915->display.pmdemand.lock);
>+        if (drm_WARN_ON(&i915->drm,
>+                        !intel_pmdemand_check_prev_transaction(i915)))
>+                goto unlock;
>+
>+        reg1 =3D intel_de_read(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(0))=
;
>+        mod_reg1 =3D reg1;
>+
>+        reg2 =3D intel_de_read(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1))=
;
>+        mod_reg2 =3D reg2;
>+
>+        update_pmdemand_values(new, old, &mod_reg1, &mod_reg2);
>+
>+        if (reg1 !=3D mod_reg1) {
>+                intel_de_write(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(0),
>+                               mod_reg1);
>+                changed =3D true;
>+        }
>+
>+        if (reg2 !=3D mod_reg2) {
>+                intel_de_write(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1),
>+                               mod_reg2);
>+                changed =3D true;
>+        }
>+
>+        /* Initiate pm demand request only if register values are changed=
 */
>+        if (!changed)
>+                goto unlock;
>+
>+        drm_dbg_kms(&i915->drm,
>+                    "initate pmdemand request values: (0x%x 0x%x)\n",
>+                    mod_reg1, mod_reg2);
>+
>+        intel_de_rmw(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1), 0,
>+                        XELPDP_PMDEMAND_REQ_ENABLE);
>+
>+        intel_pmdemand_wait(i915);
>+
>+unlock:
>+        mutex_unlock(&i915->display.pmdemand.lock);
>+}
>+
>+static bool
>+intel_pmdemand_state_changed(const struct intel_pmdemand_state *new,
>+                             const struct intel_pmdemand_state *old)
>+{
>+        return memcmp(&new->params, &old->params, sizeof(new->params)) !=
=3D 0;
>+}
>+
>+void intel_pmdemand_pre_plane_update(struct intel_atomic_state *state)
>+{
>+        struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>+        const struct intel_pmdemand_state *new_pmdmnd_state =3D
>+                intel_atomic_get_new_pmdemand_state(state);
>+        const struct intel_pmdemand_state *old_pmdmnd_state =3D
>+                intel_atomic_get_old_pmdemand_state(state);
>+
>+        if (DISPLAY_VER(i915) < 14)
>+                return;
>+
>+        if (!new_pmdmnd_state ||
>+            !intel_pmdemand_state_changed(new_pmdmnd_state, old_pmdmnd_st=
ate))
>+                return;
>+
>+        intel_program_pmdemand(i915, new_pmdmnd_state, old_pmdmnd_state);
>+}
>+
>+void intel_pmdemand_post_plane_update(struct intel_atomic_state *state)
>+{
>+        struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>+        const struct intel_pmdemand_state *new_pmdmnd_state =3D
>+                intel_atomic_get_new_pmdemand_state(state);
>+        const struct intel_pmdemand_state *old_pmdmnd_state =3D
>+                intel_atomic_get_old_pmdemand_state(state);
>+
>+        if (DISPLAY_VER(i915) < 14)
>+                return;
>+
>+        if (!new_pmdmnd_state ||
>+            !intel_pmdemand_state_changed(new_pmdmnd_state, old_pmdmnd_st=
ate))
>+                return;
>+
>+        intel_program_pmdemand(i915, new_pmdmnd_state, NULL);
>+}
>diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.h b/drivers/gpu/d=
rm/i915/display/intel_pmdemand.h
>new file mode 100644
>index 000000000000..2883b5d97a44
>--- /dev/null
>+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.h
>@@ -0,0 +1,24 @@
>+/* SPDX-License-Identifier: MIT */
>+/*
>+ * Copyright =C2=A9 2023 Intel Corporation
>+ */
>+
>+#ifndef __INTEL_PMDEMAND_H__
>+#define __INTEL_PMDEMAND_H__
>+
>+#include <linux/types.h>
>+
>+struct drm_i915_private;
>+struct intel_atomic_state;
>+struct intel_crtc_state;
>+struct intel_plane_state;
>+
>+void intel_pmdemand_init_early(struct drm_i915_private *i915);
>+int intel_pmdemand_init(struct drm_i915_private *i915);
>+void intel_program_dbuf_pmdemand(struct drm_i915_private *i915,
>+                                 u8 dbuf_slices);
>+void intel_pmdemand_pre_plane_update(struct intel_atomic_state *state);
>+void intel_pmdemand_post_plane_update(struct intel_atomic_state *state);
>+int intel_pmdemand_atomic_check(struct intel_atomic_state *state);
>+
>+#endif /* __INTEL_PMDEMAND_H__ */
>diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_r=
eg.h
>index 2a9ab8de8421..91fb12b65c92 100644
>--- a/drivers/gpu/drm/i915/i915_reg.h
>+++ b/drivers/gpu/drm/i915/i915_reg.h
>@@ -4450,8 +4450,10 @@
> #define GEN8_DE_MISC_IMR _MMIO(0x44464)
> #define GEN8_DE_MISC_IIR _MMIO(0x44468)
> #define GEN8_DE_MISC_IER _MMIO(0x4446c)
>-#define  GEN8_DE_MISC_GSE                (1 << 27)
>-#define  GEN8_DE_EDP_PSR                (1 << 19)
>+#define  XELPDP_PMDEMAND_RSPTOUT_ERR        REG_BIT(27)
>+#define  GEN8_DE_MISC_GSE                REG_BIT(27)
>+#define  GEN8_DE_EDP_PSR                REG_BIT(19)
>+#define  XELPDP_PMDEMAND_RSP                REG_BIT(3)
>=20
> #define GEN8_PCU_ISR _MMIO(0x444e0)
> #define GEN8_PCU_IMR _MMIO(0x444e4)
>@@ -4536,6 +4538,33 @@
> #define  XELPDP_DP_ALT_HPD_LONG_DETECT                REG_BIT(1)
> #define  XELPDP_DP_ALT_HPD_SHORT_DETECT                REG_BIT(0)
>=20
>+#define XELPDP_INITIATE_PMDEMAND_REQUEST(dword)                _MMIO(0x45=
230 + 4 * (dword))
>+#define  XELPDP_PMDEMAND_QCLK_GV_BW_MASK                REG_GENMASK(31, 1=
6)
>+#define  XELPDP_PMDEMAND_QCLK_GV_BW(x)                        REG_FIELD_P=
REP(XELPDP_PMDEMAND_QCLK_GV_BW_MASK, x)
>+#define  XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK                REG_GENMASK(14=
, 12)
>+#define  XELPDP_PMDEMAND_VOLTAGE_INDEX(x)                REG_FIELD_PREP(X=
ELPDP_PMDEMAND_VOLTAGE_INDEX_MASK, x)
>+#define  XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK                REG_GENMASK(11=
, 8)
>+#define  XELPDP_PMDEMAND_QCLK_GV_INDEX(x)                REG_FIELD_PREP(X=
ELPDP_PMDEMAND_QCLK_GV_INDEX_MASK, x)
>+#define  XELPDP_PMDEMAND_PIPES_MASK                        REG_GENMASK(7,=
 6)
>+#define  XELPDP_PMDEMAND_PIPES(x)                        REG_FIELD_PREP(X=
ELPDP_PMDEMAND_PIPES_MASK, x)
>+#define  XELPDP_PMDEMAND_DBUFS_MASK                        REG_GENMASK(5,=
 4)
>+#define  XELPDP_PMDEMAND_DBUFS(x)                        REG_FIELD_PREP(X=
ELPDP_PMDEMAND_DBUFS_MASK, x)
>+#define  XELPDP_PMDEMAND_PHYS_MASK                        REG_GENMASK(2, =
0)
>+#define  XELPDP_PMDEMAND_PHYS(x)                        REG_FIELD_PREP(XE=
LPDP_PMDEMAND_PHYS_MASK, x)
>+
>+#define  XELPDP_PMDEMAND_REQ_ENABLE                        REG_BIT(31)
>+#define  XELPDP_PMDEMAND_CDCLK_FREQ_MASK                REG_GENMASK(30, 2=
0)
>+#define  XELPDP_PMDEMAND_CDCLK_FREQ(x)                        REG_FIELD_P=
REP(XELPDP_PMDEMAND_CDCLK_FREQ_MASK, x)
>+#define  XELPDP_PMDEMAND_DDICLK_FREQ_MASK                REG_GENMASK(18, =
8)
>+#define  XELPDP_PMDEMAND_DDICLK_FREQ(x)                        REG_FIELD_=
PREP(XELPDP_PMDEMAND_DDICLK_FREQ_MASK, x)
>+#define  XELPDP_PMDEMAND_SCALERS_MASK                        REG_GENMASK(=
6, 4)
>+#define  XELPDP_PMDEMAND_SCALERS(x)                        REG_FIELD_PREP=
(XELPDP_PMDEMAND_SCALERS_MASK, x)
>+#define  XELPDP_PMDEMAND_PLLS_MASK                        REG_GENMASK(2, =
0)
>+#define  XELPDP_PMDEMAND_PLLS(x)                        REG_FIELD_PREP(XE=
LPDP_PMDEMAND_PLLS_MASK, x)
>+
>+#define GEN12_DCPR_STATUS_1                                _MMIO(0x46440)
>+#define  XELPDP_PMDEMAND_INFLIGHT_STATUS                REG_BIT(26)
>+
> #define ILK_DISPLAY_CHICKEN2        _MMIO(0x42004)
> /* Required on all Ironlake and Sandybridge according to the B-Spec. */
> #define   ILK_ELPIN_409_SELECT        REG_BIT(25)
>@@ -4695,6 +4724,9 @@
> #define   DCPR_SEND_RESP_IMM                        REG_BIT(25)
> #define   DCPR_CLEAR_MEMSTAT_DIS                REG_BIT(24)
>=20
>+#define XELPD_CHICKEN_DCPR_3                        _MMIO(0x46438)
>+#define   DMD_RSP_TIMEOUT_DISABLE                REG_BIT(19)
>+
> #define SKL_DFSM                        _MMIO(0x51000)
> #define   SKL_DFSM_DISPLAY_PM_DISABLE        (1 << 27)
> #define   SKL_DFSM_DISPLAY_HDCP_DISABLE        (1 << 25)
>--=20
>2.34.1
>
