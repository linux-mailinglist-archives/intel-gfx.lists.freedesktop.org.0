Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 97F5D7AA16F
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 23:02:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDA6210E608;
	Thu, 21 Sep 2023 21:02:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DFC010E608
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Sep 2023 21:02:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695330144; x=1726866144;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=mHXb+JjrfkUiQ3/KN17yQVBI6kiMIt3qEVwLtdB1vlM=;
 b=IlOiB1UmMSHd/tuF+c45m9ZnTZviRDp0wvBPl+StgtabryV2VVVSBKMm
 b/TxhQ8jSlhzxh05OK5HSKwvjmXuYdUhJ4z99wtKljsmXVVlxQCWCA4sL
 dj5O8ebH80Mo0RpnWQdBDbKAcyWJx35pBggxPKTD6JlaAfa1YVNzWhGef
 28x09a0VGp3S20vht2/NuJPKhcgbI8gwOtWoV9RibQL3ciRq1f7WzuxpA
 aXTpBRsLD2fi41CQh/sqQ9c84hTM2hdUHZ9M8+8zuhTJXKej6YNa37DPY
 3uDTS0ySIuWkKovpvZHshWHrwp25APqsKl+nTv9sL8zPDX4TbdEG3EDuz g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="447141990"
X-IronPort-AV: E=Sophos;i="6.03,166,1694761200"; d="scan'208";a="447141990"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 14:02:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="870986046"
X-IronPort-AV: E=Sophos;i="6.03,166,1694761200"; d="scan'208";a="870986046"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Sep 2023 14:02:03 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 21 Sep 2023 14:02:03 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 21 Sep 2023 14:02:02 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 21 Sep 2023 14:02:02 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 21 Sep 2023 14:02:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E7KN0POYJ5HHvSFhCs+MMdtUCuLvuqY5GU2WC+zqzYozWsV9NLQI4DGZQ3y2HWcE/oLnD8sLnyWZ2LkXF6BEwdW/61pa06uVgs9qZ5kN4xEBUcul10C3QAI5tQByofRk/VhR39PaNvfug9tUNWBAuZnEeo5rAcLfz6Z3CwsCLnGBBhalb/KOa+Gj7RiUFKOXQVxfs6+SEOknXbIeBxke+naU0BQTA6uXkfcCttkfhLLOgI9rJsY9A05X9N5yMho17viYhNZq/1wRdt1pQzOrzmQz6RRZ/PNJA2R7UrZS69F+4XePka2Uqz44L2s1URu5FPTjQG5skuPg9rFn8L9+2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q3Vt6QFLVlfo/VyWyihtBab+HRbPpbC7jCCaANb+bYU=;
 b=Zo9SOhNh2dYNRurET7eTFTrFNSS2auKR52e9hHyGqaIL99cvt3Hc0Opc5JdlccV5xcktkLx78/GoIG7dfNlGnodBP4NHfPG+8Wod27dBjqgk9G/oGiet6suWEwZomqtOS0c8FNHSTo6dy5VZLTL0BccTt3ikIW11O9m3Y6Bv8jT1SyQFLnlbR2efhl3Z8TGNH2hshlfcYiDlO5NxGI2GXChpyX9MbWl3F5Z/oRUoRzSrJu7UP026qARbivSmwvfP0yKg69wjDWLdCOb6ZyEgTWWKWjfy66FgKZNtYASdeAOAh8gg0IBDhL/L+NwO0E/0VGsEU8tDxABtvoAr9zqf0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by CH3PR11MB7300.namprd11.prod.outlook.com (2603:10b6:610:150::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.24; Thu, 21 Sep
 2023 21:01:59 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf%6]) with mapi id 15.20.6813.018; Thu, 21 Sep 2023
 21:01:59 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230921143028.483008-1-shekhar.chauhan@intel.com>
References: <20230921143028.483008-1-shekhar.chauhan@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Shekhar Chauhan <shekhar.chauhan@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Thu, 21 Sep 2023 18:01:52 -0300
Message-ID: <169533011276.1903.10121233791745587247@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR05CA0084.namprd05.prod.outlook.com
 (2603:10b6:a03:e0::25) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|CH3PR11MB7300:EE_
X-MS-Office365-Filtering-Correlation-Id: c89a61b0-877b-45cc-fada-08dbbae5ff09
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 40wcNUc0UBvQSg+jXj6tDLarV58G2DTPF7MveSaGBAzYGlKH55Uh7r+uulxW38wltTFu0W5OTjGpyrebouwUL4In+uhZmc022S1zF+jzK81Yfmrwa50U00UsB2naJqbX6HiWUxDjvvyU0OfB/iVlG52mAp/WHn2xXPyj0NJ3ZRjxna0NOncGV4fu8/WnRSUW7u2FDiyj9bv6hZjd+7dHWlCSxPkNbk/vuNRR+HRCDLs8J47KTWNQIT08SLvt+iVBVrtL81vk/wmkv/FaF9g11/XEIjLWLPOWsqQqtTUqte7iPigJuTMI1q35c82Aam0Ot1L4X85//SwNszz8LbcgqtrUx92ZjHc9RZnJQzLvmcbXEt2ZTiA1G6W58iqSE3a/7EDHfGUotXo4O/6uKNb7SPke/Tz8B2cG126pRgTOCIZ6mI7YepmQwKs29Zntjir3SnSES4QynVvUOPFndpbqayrxb09Dhbb2ccs8cOOwKh50BxUAloAYmVvI4wrT9n2SAXBcbvd7v2zj4W3oc7K5S0iijrjp6qyAuMCv07RrprM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(136003)(396003)(376002)(346002)(39860400002)(366004)(451199024)(186009)(1800799009)(6666004)(6506007)(6486002)(83380400001)(6512007)(82960400001)(38100700002)(86362001)(2906002)(966005)(66946007)(8936002)(8676002)(9686003)(26005)(41300700001)(5660300002)(4326008)(107886003)(66476007)(316002)(33716001)(478600001)(66556008)(44832011);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MXRsYUFaUlJkMFArY3ZkZW1JUnA0RUJEdWNkb2xVZ2R4MlJCVHlkSFp6SDZw?=
 =?utf-8?B?V1hna3ltcUVFejVyeEpjNGp2Q1haYzNHNUtvRjBYY3Z3Mm1EalhsUXVwYk02?=
 =?utf-8?B?cDFtSmhobzlWQWV4RWdTOXcxUys5S3hsV0JWV3JxS3gyOXVyZEtXK0lQT0ha?=
 =?utf-8?B?MXE1UStLOHNSWDd6cEd0OEFBNllLdGU1OEFUdVVkdUEzRitYNWQwVTJ6UHow?=
 =?utf-8?B?U3h6N0hsOVFpYlZyUkoxMVVMbytwVGsrWXFyWVJUQloxZGRUQ3E5VzJxRmRu?=
 =?utf-8?B?amlUcU8xbkU1SmNQZXNuT0FSMVc4V3pxWCtVOHh3SC9relhJTU5KNW9IZTJp?=
 =?utf-8?B?NlBvZkhQQ253YkFLa3lXcWxTOEdpK1ViQXBtWGd5eFlFalFzZ0ZGV3EyWUhy?=
 =?utf-8?B?b1pkL210VUQzWHM4MjRlTkROWGsxeEJiMUVpSDBkcXFFK1k1TzJCcWRnbWJF?=
 =?utf-8?B?L2ErVWYwUXRtRGRlMXpTSjhFTk5mbmxHK2xiWXZLRlFSd1Zma1pEM1pIc3Rh?=
 =?utf-8?B?Q2JBQkdyMkdvRGRmeXBrM1pRZ0djYnJhR3k3TmFnM2M5OGRPVUZuZ0dFSlBk?=
 =?utf-8?B?dUVSekYrc1d1M0V6U3JKeE4vZlRFT0x0N1NHY3F5NWIzN1pMWFJGZDhOL1Vo?=
 =?utf-8?B?MzB3YVc0TGEweGlyTzJMVHBxa1RkTS9GeFczVVZsRHh0UUtFY3Bxbm1lRGxr?=
 =?utf-8?B?bFAxTmdCS1UzSDNWSjF6L0NMSGdaa3EvZERsTjVKbEZta05DcEQ1dlBaN0NM?=
 =?utf-8?B?eUxYcGlLUmpQcks2bEliTUZzUU1lTnNHckVnZFBHK0hIWVpXK2Q4QUZlWVp6?=
 =?utf-8?B?Yml0OUNpZHFVaFZnQlc4bkRnYmsxMmppczlMQkJLSWJhZ3VmdUg4RndvdWZ2?=
 =?utf-8?B?dkk3NUtET3JtWENxakg5QU9pRHlpSjZGb0FiZmZreEdZMld4UURJRjZub0Ny?=
 =?utf-8?B?OUcrSGZLVEVmajk1WmZ3V3UwcnM2T24wcHNrbXdtOUZRbDFxRlp5OU0xeVl1?=
 =?utf-8?B?RFpVSUdsTEduMGNvYW9yc29acURGQW9GamJ1US9YS2crWWNLVVpzNit3cWI4?=
 =?utf-8?B?L1ZhenJxUlc1VWNVQ3RNMHQ4azNEU1ZhUXFjd3RRcVpqclBUeUhDbEQxZ1Jk?=
 =?utf-8?B?UVJYUkNMNjZmYlVxRkFpaGJQWFZjZjk1UlBIeE53Z0xKVlNjSUtGcnkrYS91?=
 =?utf-8?B?YmpDUkFjQ2I2WE5BL1lYYzIvaWlxVG5uV2thY09SVWRmd2h4SDY0YWtFb1o5?=
 =?utf-8?B?eWoxWXdNZk5ncjFwa0ovTTR2bk5Nc3pOOHdLU1cyenNHNzFZRXZ5cm9oT3dJ?=
 =?utf-8?B?YkxaMjd0bVR0ZzdScURxdHJNV1pRT25KeW5SZVRRNk1jSUhTcmI2WHFERnpL?=
 =?utf-8?B?aFBLT0JhZEp0OWxDdHZnbnc3dzhDNmEyZm45NVNqUTdoMWV5cEdRQ1VaQ245?=
 =?utf-8?B?b3o4Z08zcStxTEpYQ215bXVCNEhkT2pLU2RCei9wcTVRRjk0T2ZBamZSMit3?=
 =?utf-8?B?MTVOMENCSXk2Yll6dXFzL1dQYjhqcWZTWk9jTnVIbDZYUnZyOGdOY0w1UlJm?=
 =?utf-8?B?V0RoV01Wa2drZkhjTjIxT1h3MVBxSzg5R3pMUHJ4VUZkYTBXVUg0bGtOV2Vl?=
 =?utf-8?B?ZjQvS2xMbmZEQ3dSd1RpYndSOVdhMndDcHpaTGtSbHhuTHhVVXVJMUFjVzFk?=
 =?utf-8?B?Y0t3a2tlNFJiYjBkeGpSUkllUDYrZU04K3c2R2tuZy9IV04rNE90bGJLY0Zh?=
 =?utf-8?B?U2xDNlZsNnROV0lubzRPU0VhTDZKcERRT1VndGh2dEU5SldEMG5HNll4Rmlo?=
 =?utf-8?B?SlJsYjRyOXVBcjBNOU9sdWVtc1FTeVpXd0EyTnZJZlYzenJ5d3JOdlJGT284?=
 =?utf-8?B?QUJTWkpKKzF1ZWxKMlJaZTlHSUdEdTdtL0dla3Zvcmo3UWlwbjYxc1VJR091?=
 =?utf-8?B?aFY4Y295bzJiVnQ3ZzBSNTBVbmRWdlFCbFdFN3hDUFZ1WEtEZGF3YVBKaXBs?=
 =?utf-8?B?U2tDeGlsTG9QTnNoZGRJVlZVTWRZVzhOT1JPTFUrbW1ndzNaZFQ0LzcrYitY?=
 =?utf-8?B?Tk10SDJ1VzdHZXNQNFBtbDQ5WW5pK3FpQlNaZUo4TTJaYVdTZWR2dDBrdy9H?=
 =?utf-8?B?anhzcTNOQlVmcmdHRGVCWHhVZFAvY2U4NW1IT2phY3Z6cWhLNVhKbWJ2QmxR?=
 =?utf-8?B?V2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c89a61b0-877b-45cc-fada-08dbbae5ff09
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Sep 2023 21:01:59.3792 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: haA1LVWn7AFOXtJJwwDLFKQnQ8F4H//sTF3A0JwG3lYCIgn3nkAX2g/zZzaqHHLiSdu9Ipce9XnlOUagwkjMvg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7300
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add Wa_18028616096
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Shekhar Chauhan (2023-09-21 11:30:28-03:00)
>Drop UGM per set fragment threshold to 3
>
>BSpec: 54833
>Signed-off-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
>---
> drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 1 +
> drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
> 2 files changed, 4 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i91=
5/gt/intel_gt_regs.h
>index a00ff51c681d..431c575c532b 100644
>--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>@@ -1230,6 +1230,7 @@
> #define   DISABLE_D8_D16_COASLESCE                REG_BIT(30)
> #define   FORCE_1_SUB_MESSAGE_PER_FRAGMENT        REG_BIT(15)
> #define LSC_CHICKEN_BIT_0_UDW                        MCR_REG(0xe7c8 + 4)
>+#define   UGM_FRAGMENT_THRESHOLD_TO_3                REG_BIT(58 - 32)
> #define   DIS_CHAIN_2XSIMD8                        REG_BIT(55 - 32)
> #define   FORCE_SLM_FENCE_SCOPE_TO_TILE                REG_BIT(42 - 32)
> #define   FORCE_UGM_FENCE_SCOPE_TO_TILE                REG_BIT(41 - 32)
>diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm=
/i915/gt/intel_workarounds.c
>index 660d4f358eab..992041e3776c 100644
>--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>@@ -2914,6 +2914,9 @@ general_render_compute_wa_init(struct intel_engine_c=
s *engine, struct i915_wa_li
>                  * Wa_22015475538:dg2
>                  */
>                 wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW, DIS_CHAIN_2XS=
IMD8);
>+
>+                /* Wa_18028616096:dg2 */

This is not a blocker, but I would prefer to remove the ":dg2" suffix.

There was an effort to remove them from our driver[1], but it kinda of
stalled. I myself agree that we would be better off without them.

[1] https://lore.kernel.org/all/20221222082557.1364711-1-lucas.demarchi@int=
el.com

>+                wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW, UGM_FRAGMENT_=
THRESHOLD_TO_3);

This workaround applies to (i) DG2 G10 from stepping C0 to forever and
(ii) any stepping of DG2 G12. Here you are applying this workaround to
any variant of DG2.

It should be moved out of this "if" statement and rather be guarded by
something like:

	if ((IS_DG2_G10(i915) && IS_GRAPHICS_STEP(i915, STEP_C0, STEP_FOREVER)) ||
	    IS_DG2_G12(i915))

Note that we are there is still a pending decision for G11, so we may
need to update this in the future.

--
Gustavo Sousa

>         }
>=20
>         if (IS_DG2_G11(i915)) {
>--=20
>2.34.1
>
