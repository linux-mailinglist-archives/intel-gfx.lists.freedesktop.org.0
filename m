Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 326F777FFB4
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Aug 2023 23:21:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC4E710E02F;
	Thu, 17 Aug 2023 21:21:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0F3B10E02F
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Aug 2023 21:21:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692307301; x=1723843301;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=pTR3nBv9uV/4+FMPpKOkk7MwSEEmckojBiS3dnRLdsU=;
 b=WBn4LFIWzquWqIrHnl+XdiNhsPDI76wtk6uAxIRMO2WGAOfdUgNDk/Pt
 W6cK5necnt/yGKL7bOC6XC1FnlAJQc9Qy0C4mJLGWCxlBP2Alvndwv0CN
 ErGfr3M+5uu+NkmGBqBKzNnsqfrvgWtxRRjxJ0Ul1HYNp9IrIf51GMc4M
 0BUp+2xn2+IN0tTDqKs+YjvhEIbiEjXE0Qep2Jgf2PsHM4J53tyQjJ5eG
 wwxp9Qhi3Ip+sOCDcN8+CshRQNJ8mBphTT++hvnZtkU2c+HAsAaO8pqeW
 4BrSRY7OsVy2JoFr19dR+ru37HVWYBjrrPkWSzcFqCdfd3jYoXLi5hOK5 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="439313495"
X-IronPort-AV: E=Sophos;i="6.01,181,1684825200"; d="scan'208";a="439313495"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 14:21:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="981359732"
X-IronPort-AV: E=Sophos;i="6.01,181,1684825200"; d="scan'208";a="981359732"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP; 17 Aug 2023 14:21:40 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 17 Aug 2023 14:21:40 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 17 Aug 2023 14:21:40 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 17 Aug 2023 14:21:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eN2PAWuhxvWBZXzvC3PPfvFeZhhZ2OT0dWJa3/7qfF4sjCWizj3JcpoSndK2dbMrj4vvUdta71aKI+A76Oyt2YgXn8lawZt1+jrJ37bYNZkmd/EdUeHd0OwcNPtKadKX9tU8APzu8SLBXnwi8sh6q+Bhc+PeeSLCIx1XKt2V8Og1/PUx2+fVwUtpALFV5nvJ4WpSNiKrMy6jsV1lYX72VzsitCr4xyJPHo/ttmiYJhi2sevfmDGkvkmZu1ETjrKu6T2TRwqZGxbkWHWjtSXTolrq7PxlwyzL+uZS7H0tN7MkvK0+B0VzTBLRFFaRhQq7fUuaOK934/w8E/1Ts9Xm6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DRR+oupwhaupCs872cDqtWQf7St2rNtZBnICePMkhF8=;
 b=XKp0VYehv0SCL7efKk/fTSrKoxHOLIbPDvef7FuAR7Qha2/JzpDrtKuUFxeFnTls7xhl0nKhM5MjitbTIv4sqGOLbchU1g4sTiKhooRNWmlFlvcDMLRt6H9PfW6R0/5JgHhg2OvUus9Skyt1vjinfk2lfzyUKyO9lxEzE9pWLJd9cZeT5tKLmOOSJXSFqbWYuzQuwp83bXDgdPAEpW8ReYR7VKyjNFdZrZD5pEprwCczrWUNeRv5rlSAHgoeywjgJr49xe6qp9TQj/gTMpb9UOdoNVC6Wh89WdbgldFGYESitSPzM0eT1niUPPDDI9saN75LxuMdRyHYoaVxbVqowA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN2PR11MB4239.namprd11.prod.outlook.com (2603:10b6:208:192::20)
 by SJ2PR11MB8586.namprd11.prod.outlook.com (2603:10b6:a03:56e::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.31; Thu, 17 Aug
 2023 21:21:16 +0000
Received: from MN2PR11MB4239.namprd11.prod.outlook.com
 ([fe80::18a6:cbff:9bcd:4acc]) by MN2PR11MB4239.namprd11.prod.outlook.com
 ([fe80::18a6:cbff:9bcd:4acc%4]) with mapi id 15.20.6678.031; Thu, 17 Aug 2023
 21:21:15 +0000
Date: Thu, 17 Aug 2023 14:21:09 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, <intel-gfx@lists.freedesktop.org>
Message-ID: <ZN6PRWEWmYE0xEnY@msatwood-mobl>
References: <20230816214201.534095-7-matthew.d.roper@intel.com>
 <20230816214201.534095-10-matthew.d.roper@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20230816214201.534095-10-matthew.d.roper@intel.com>
X-ClientProxiedBy: MW3PR05CA0006.namprd05.prod.outlook.com
 (2603:10b6:303:2b::11) To MN2PR11MB4239.namprd11.prod.outlook.com
 (2603:10b6:208:192::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN2PR11MB4239:EE_|SJ2PR11MB8586:EE_
X-MS-Office365-Filtering-Correlation-Id: b21a49f8-d1b7-4a96-ee1a-08db9f67e3a3
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QKbyD+y8PfEcqq2PoqeeNg4lXgwxni+IdpXKtsnZ5P5hS5piWtDFx+4ik5NnJoG/PA+v4wfjx9qOWTpSQ5JwTML8HiZVdAgVlTqsaQiOff9hgboPY1u5xVnIog8h4lNXKnOQDWyXcVSKR/BoQpEcD6xFgPBOhpVyRTSUrqntL3M67JCJOWdsk1QOqk+LyElLQ7VdUFUAK7cA8qYIatLVcKjhd3jhJSLxg8NF2R2Bsrn1ZVcV476zsMzXL850wGQZSub1lvQjIs246I5KfuftCsXKmeq9qUeDm6PYqxzYajaAXAvcFjBciVbozNs7Mo7TK7OS9DD/lzUItqRhOzKLbCWYD6EBVE0W+qHSXLrBRZAz/YWOrZvLqGqt3eZUKhjke9JKbqFHK48e1hThUrpebDxatwyFZPxBH5e1jM2GasKQlTcVaWkz+EnLMIMjIXbNCcFThxCRYfel42mfTxUrDMMDxkQmBBv0e/PD8fMY5QpwxIXjXdhJ/BdTQ07pe8eQX11Dl9Sqr5CXIitCg78uMQ1erBt/kYg6XlXtE+uo5cG5PHkL4BSBEh4hW6w5UNiD
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4239.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(376002)(396003)(346002)(366004)(136003)(39860400002)(451199024)(186009)(1800799009)(33716001)(86362001)(5660300002)(83380400001)(8676002)(8936002)(4326008)(2906002)(30864003)(41300700001)(26005)(6486002)(6666004)(6506007)(107886003)(66574015)(9686003)(6512007)(478600001)(38100700002)(316002)(82960400001)(66556008)(66946007)(66476007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cmU2RFQzeG10RGVRZHIxUWN6ZWp1U2lHUlFkbmsxTzk3MVI2WDh6a2ZLbEJ0?=
 =?utf-8?B?VTY0d2ErSHdobVF3eVYvMnN6YkVsY1RDcm9hZ2xpOXVOaGVabElJM3pJOGt6?=
 =?utf-8?B?d05xNVpUeDdmcXFBK011dE4rVk9GM1UrUUN3VFVJdmFBbExXdkVTQkpDY2xx?=
 =?utf-8?B?QlYvMWpVcWF4dU1TMy9CWUV5bTVWOTBUTGQzWnZIaHZLYXo5YmJCSEFZOXl5?=
 =?utf-8?B?akVxZ3N6aEUyTXlmNVNiVjRxcTYydlB2ZlZRUWlkVW1pWmpWWnE4S3hKbExi?=
 =?utf-8?B?NVRuUHJGRXZCdjZ3V0pxam5RY2QvTExnM1ZuWXoyYmlvVjVtRDNjRmRMblBy?=
 =?utf-8?B?N2xSaHQ5R1NlaUJkMDdvTlFDSlFYeDA1bGQzWGJUb1VsUmY3QkthT0VqdG9q?=
 =?utf-8?B?RTZFWnVqcmZSTVFIZHdUaS9IT3FOdC9sdStseXNaeDI1MjIwU2ZMWWdoeUlO?=
 =?utf-8?B?WEtRKzdRQ08yWjZmYzd1eCtvdzhqNjJzTm8yMnpOaGM4eWFPaFI4dENLUDBQ?=
 =?utf-8?B?eWZSeXh3ZjYra09jcEhXVUVpanZWL0lvb1AvOHN3MytIQTIxZlk2NWJ6UUla?=
 =?utf-8?B?cGJabEtJcmVnVVh2blY2cTR2ZlRQZTlUalptUEJ3c2ZQKytyS3BFN0pLKy9B?=
 =?utf-8?B?QzJ2R3czVFhnWExkeGp1NkU5TnQvaWFGWFVsSTNYZlNUY2x1TC9Tek5WK0gy?=
 =?utf-8?B?eWJyaXZVbVlqTGFZenVxZVcwQW13MmZYK3dsTG1ySWRubjFXdEp1MUJuR0hR?=
 =?utf-8?B?WTg5SG4xeVN2aGREMTVPSk0vWGZ4T3A2YXFNTlc4RDJ6T05vTGtWbUlrR0o0?=
 =?utf-8?B?djFrTitrQXdiK3ZmNjIzNVpvK0c0L3RvL2didW0rUEY3RVZ3TXErUTVZNVVh?=
 =?utf-8?B?cVViQ2paZTRsYWs0Q0tWT1A5SDV2SmRBd2xuanVHQnI3ZUFWVzFPNnF2bnN5?=
 =?utf-8?B?SmtqdVAwWGRUN081L242YzdEc09qdVI5L3Fub2kvdCtJekR4cFBxV2xLOUQ5?=
 =?utf-8?B?WVJpNGlyNFFRNCtoSno3WmYyT2MwL2YyVnZ6NjAvVUF2dmpSdWRsY0tjeUJF?=
 =?utf-8?B?MEZqYVJTa1h4MmNJUU9YMzR2ZnNuVFExVkNqb0VscnRYaGJHUW5yN1BnVmNk?=
 =?utf-8?B?em9nbjBqSFRmZS9zTnRWc1czbmEycmZBNUJNTk5IQW5XR3ZVeU9Ia2o0YW1t?=
 =?utf-8?B?bFFOcTdudlQvU2M3cldSMFJONGM2bnh3dy82emQzUkFBZWNkZ1lBa29sVk8r?=
 =?utf-8?B?cTR1ZDhSUS9QemhueUJkMHlDTE5RRkZDeGZiejBOODNTNC9rbWJtZit6QWx6?=
 =?utf-8?B?M3A3S2k2U2hOanRVZWVFVjV6d2hCcWtONzFKN1laSWN6VmZ5dExwb2MvbUx5?=
 =?utf-8?B?UVUyaWlnTTl0cS8rS052VmZuZnpVZWxCa2Z2NTQvMFBTNjV6VFRQVGV1TE1P?=
 =?utf-8?B?OHo5ejFYb083aDBKWXdkWTkva3JSbUNra01Bcld4NGlvWjRoeTF5V0k1cWtN?=
 =?utf-8?B?dTN4NTRGNmxxQkVrY3BvajM5M2dicG10RDM3T21iVFFiQUJDQUtSNnlJM0dx?=
 =?utf-8?B?eCtHMFlZdkpGd0M2WlpMTHg1QXJQSzdlVDkwVVhkekd6Y05nWmtsb3ZFMmpa?=
 =?utf-8?B?MDFHeHBRSmszL095T0s0OENYR1J4RXpVUGwrVUxQQnh5TzNUMFFYeUZ0UWUr?=
 =?utf-8?B?Wk9yMllXUWhmOTZDd3NrRHJGWkF1TExBR3pIWW1rWS83R25QVW9VTTVzZ3ha?=
 =?utf-8?B?RmdwaWU1NWdBcXZWL00zbnRIM0VvaGhsUm9BNUxzQWNiK3hhVk0wWVE1OWgy?=
 =?utf-8?B?c0txNWFuaisvYWs5eXBsbWJUNFRETTRmSXpoSGZwcHBaMXA4eTU5QnZKY3Jz?=
 =?utf-8?B?RUE4V2V3RnB0eWY0ZVlyL25lZ09qRUpjYVNXVG5HOUFTOGdvcTMvUzM3enhh?=
 =?utf-8?B?ZjlMZmlnZjRjOUFWM2pxRHoydk5tVXQxUG43Y3Y1Yk5ENFlYdk1pejRCOUVi?=
 =?utf-8?B?TnlMWWQyYkR0K2JBU2RBR3RPd0RDUHdvS1IyanU2eUxLdTFnUmFxN09uRGRl?=
 =?utf-8?B?NXdIQmlTK2hRQzdGcEJiRi9HYjVhSVJ3eGlSeGhGVXZKVGZORnduaTVnSWo5?=
 =?utf-8?B?ZVYzdTladlhsVHhtVHo3RjRXSThXbm5QaWZjNHFPTENRRkFFSGVOZ3ZvZ3ZG?=
 =?utf-8?B?QWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b21a49f8-d1b7-4a96-ee1a-08db9f67e3a3
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4239.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Aug 2023 21:21:15.5152 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: koXyhxkEvbctKTofQQ82yA2WIeNezXL2lidp/x+gUj7GNhIWi66ilZTLmt5oEqQ6pGS6yfQNst2asMa4lOTspyC9h/DERFzlSmDjH4sEhf0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8586
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 3/5] drm/i915/dg2: Drop pre-production GT
 workarounds
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Aug 16, 2023 at 02:42:05PM -0700, Matt Roper wrote:
> DG2 first production steppings were C0 (for DG2-G10), B1 (for DG2-G11),
> and A1 (for DG2-G12).  Several workarounds that apply onto to
> pre-production hardware can be dropped.  Furthermore, several
> workarounds that apply to all production steppings can have their
> conditions simplified to no longer check the GT stepping.
> 
> v2:
>  - Keep Wa_16011777198 in place for now; it will be removed separately
>    in a follow-up patch to keep review easier.
> 
> Bspec: 44477
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> Acked-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_lrc.c         |  34 +---
>  drivers/gpu/drm/i915/gt/intel_mocs.c        |  21 +-
>  drivers/gpu/drm/i915/gt/intel_rc6.c         |   6 +-
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 211 +-------------------
>  drivers/gpu/drm/i915/gt/uc/intel_guc.c      |  20 +-
>  drivers/gpu/drm/i915/intel_clock_gating.c   |   8 -
>  6 files changed, 21 insertions(+), 279 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 957d0aeb0c02..bc7ce2c2b959 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1315,29 +1315,6 @@ gen12_emit_cmd_buf_wa(const struct intel_context *ce, u32 *cs)
>  	return cs;
>  }
>  
> -/*
> - * On DG2 during context restore of a preempted context in GPGPU mode,
> - * RCS restore hang is detected. This is extremely timing dependent.
> - * To address this below sw wabb is implemented for DG2 A steppings.
> - */
> -static u32 *
> -dg2_emit_rcs_hang_wabb(const struct intel_context *ce, u32 *cs)
> -{
> -	*cs++ = MI_LOAD_REGISTER_IMM(1);
> -	*cs++ = i915_mmio_reg_offset(GEN12_STATE_ACK_DEBUG(ce->engine->mmio_base));
> -	*cs++ = 0x21;
> -
> -	*cs++ = MI_LOAD_REGISTER_REG;
> -	*cs++ = i915_mmio_reg_offset(RING_NOPID(ce->engine->mmio_base));
> -	*cs++ = i915_mmio_reg_offset(XEHP_CULLBIT1);
> -
> -	*cs++ = MI_LOAD_REGISTER_REG;
> -	*cs++ = i915_mmio_reg_offset(RING_NOPID(ce->engine->mmio_base));
> -	*cs++ = i915_mmio_reg_offset(XEHP_CULLBIT2);
> -
> -	return cs;
> -}
> -
>  /*
>   * The bspec's tuning guide asks us to program a vertical watermark value of
>   * 0x3FF.  However this register is not saved/restored properly by the
> @@ -1362,14 +1339,8 @@ gen12_emit_indirect_ctx_rcs(const struct intel_context *ce, u32 *cs)
>  	cs = gen12_emit_cmd_buf_wa(ce, cs);
>  	cs = gen12_emit_restore_scratch(ce, cs);
>  
> -	/* Wa_22011450934:dg2 */
> -	if (IS_DG2_GRAPHICS_STEP(ce->engine->i915, G10, STEP_A0, STEP_B0) ||
> -	    IS_DG2_GRAPHICS_STEP(ce->engine->i915, G11, STEP_A0, STEP_B0))
> -		cs = dg2_emit_rcs_hang_wabb(ce, cs);
> -
>  	/* Wa_16013000631:dg2 */
> -	if (IS_DG2_GRAPHICS_STEP(ce->engine->i915, G10, STEP_B0, STEP_C0) ||
> -	    IS_DG2_G11(ce->engine->i915))
> +	if (IS_DG2_G11(ce->engine->i915))
>  		cs = gen8_emit_pipe_control(cs, PIPE_CONTROL_INSTRUCTION_CACHE_INVALIDATE, 0);
>  
>  	cs = gen12_emit_aux_table_inv(ce->engine, cs);
> @@ -1390,8 +1361,7 @@ gen12_emit_indirect_ctx_xcs(const struct intel_context *ce, u32 *cs)
>  	cs = gen12_emit_restore_scratch(ce, cs);
>  
>  	/* Wa_16013000631:dg2 */
> -	if (IS_DG2_GRAPHICS_STEP(ce->engine->i915, G10, STEP_B0, STEP_C0) ||
> -	    IS_DG2_G11(ce->engine->i915))
> +	if (IS_DG2_G11(ce->engine->i915))
>  		if (ce->engine->class == COMPUTE_CLASS)
>  			cs = gen8_emit_pipe_control(cs,
>  						    PIPE_CONTROL_INSTRUCTION_CACHE_INVALIDATE,
> diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
> index 2c014407225c..bf8b42d2d327 100644
> --- a/drivers/gpu/drm/i915/gt/intel_mocs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
> @@ -404,18 +404,6 @@ static const struct drm_i915_mocs_entry dg2_mocs_table[] = {
>  	MOCS_ENTRY(3, 0, L3_3_WB | L3_LKUP(1)),
>  };
>  
> -static const struct drm_i915_mocs_entry dg2_mocs_table_g10_ax[] = {
> -	/* Wa_14011441408: Set Go to Memory for MOCS#0 */
> -	MOCS_ENTRY(0, 0, L3_1_UC | L3_GLBGO(1) | L3_LKUP(1)),
> -	/* UC - Coherent; GO:Memory */
> -	MOCS_ENTRY(1, 0, L3_1_UC | L3_GLBGO(1) | L3_LKUP(1)),
> -	/* UC - Non-Coherent; GO:Memory */
> -	MOCS_ENTRY(2, 0, L3_1_UC | L3_GLBGO(1)),
> -
> -	/* WB - LC */
> -	MOCS_ENTRY(3, 0, L3_3_WB | L3_LKUP(1)),
> -};
> -
>  static const struct drm_i915_mocs_entry pvc_mocs_table[] = {
>  	/* Error */
>  	MOCS_ENTRY(0, 0, L3_3_WB),
> @@ -521,13 +509,8 @@ static unsigned int get_mocs_settings(const struct drm_i915_private *i915,
>  		table->wb_index = 2;
>  		table->unused_entries_index = 2;
>  	} else if (IS_DG2(i915)) {
> -		if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_B0)) {
> -			table->size = ARRAY_SIZE(dg2_mocs_table_g10_ax);
> -			table->table = dg2_mocs_table_g10_ax;
> -		} else {
> -			table->size = ARRAY_SIZE(dg2_mocs_table);
> -			table->table = dg2_mocs_table;
> -		}
> +		table->size = ARRAY_SIZE(dg2_mocs_table);
> +		table->table = dg2_mocs_table;
>  		table->uc_index = 1;
>  		table->n_entries = GEN9_NUM_MOCS_ENTRIES;
>  		table->unused_entries_index = 3;
> diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
> index 58bb1c55294c..90933fb8cb97 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rc6.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
> @@ -118,14 +118,12 @@ static void gen11_rc6_enable(struct intel_rc6 *rc6)
>  			GEN6_RC_CTL_EI_MODE(1);
>  
>  	/*
> -	 * Wa_16011777198 and BSpec 52698 - Render powergating must be off.
> +	 * BSpec 52698 - Render powergating must be off.
>  	 * FIXME BSpec is outdated, disabling powergating for MTL is just
>  	 * temporary wa and should be removed after fixing real cause
>  	 * of forcewake timeouts.
>  	 */
> -	if (IS_METEORLAKE(gt->i915) ||
> -	    IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_C0) ||
> -	    IS_DG2_GRAPHICS_STEP(gt->i915, G11, STEP_A0, STEP_B0))
> +	if (IS_METEORLAKE(gt->i915))
>  		pg_enable =
>  			GEN9_MEDIA_PG_ENABLE |
>  			GEN11_MEDIA_SAMPLER_PG_ENABLE;
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index ce483ee1f4cb..76e55738332f 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -764,39 +764,15 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
>  {
>  	dg2_ctx_gt_tuning_init(engine, wal);
>  
> -	/* Wa_16011186671:dg2_g11 */
> -	if (IS_DG2_GRAPHICS_STEP(engine->i915, G11, STEP_A0, STEP_B0)) {
> -		wa_mcr_masked_dis(wal, VFLSKPD, DIS_MULT_MISS_RD_SQUASH);
> -		wa_mcr_masked_en(wal, VFLSKPD, DIS_OVER_FETCH_CACHE);
> -	}
> -
> -	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_A0, STEP_B0)) {
> -		/* Wa_14010469329:dg2_g10 */
> -		wa_mcr_masked_en(wal, XEHP_COMMON_SLICE_CHICKEN3,
> -				 XEHP_DUAL_SIMD8_SEQ_MERGE_DISABLE);
> -
> -		/*
> -		 * Wa_22010465075:dg2_g10
> -		 * Wa_22010613112:dg2_g10
> -		 * Wa_14010698770:dg2_g10
> -		 */
> -		wa_mcr_masked_en(wal, XEHP_COMMON_SLICE_CHICKEN3,
> -				 GEN12_DISABLE_CPS_AWARE_COLOR_PIPE);
> -	}
> -
>  	/* Wa_16013271637:dg2 */
>  	wa_mcr_masked_en(wal, XEHP_SLICE_COMMON_ECO_CHICKEN1,
>  			 MSC_MSAA_REODER_BUF_BYPASS_DISABLE);
>  
>  	/* Wa_14014947963:dg2 */
> -	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_B0, STEP_FOREVER) ||
> -	    IS_DG2_G11(engine->i915) || IS_DG2_G12(engine->i915))
> -		wa_masked_field_set(wal, VF_PREEMPTION, PREEMPTION_VERTEX_COUNT, 0x4000);
> +	wa_masked_field_set(wal, VF_PREEMPTION, PREEMPTION_VERTEX_COUNT, 0x4000);
>  
>  	/* Wa_18018764978:dg2 */
> -	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_C0, STEP_FOREVER) ||
> -	    IS_DG2_G11(engine->i915) || IS_DG2_G12(engine->i915))
> -		wa_mcr_masked_en(wal, XEHP_PSS_MODE2, SCOREBOARD_STALL_FLUSH_CONTROL);
> +	wa_mcr_masked_en(wal, XEHP_PSS_MODE2, SCOREBOARD_STALL_FLUSH_CONTROL);
>  
>  	/* Wa_18019271663:dg2 */
>  	wa_masked_en(wal, CACHE_MODE_1, MSAA_OPTIMIZATION_REDUC_DISABLE);
> @@ -1603,31 +1579,11 @@ xehpsdv_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>  static void
>  dg2_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>  {
> -	struct intel_engine_cs *engine;
> -	int id;
> -
>  	xehp_init_mcr(gt, wal);
>  
>  	/* Wa_14011060649:dg2 */
>  	wa_14011060649(gt, wal);
>  
> -	/*
> -	 * Although there are per-engine instances of these registers,
> -	 * they technically exist outside the engine itself and are not
> -	 * impacted by engine resets.  Furthermore, they're part of the
> -	 * GuC blacklist so trying to treat them as engine workarounds
> -	 * will result in GuC initialization failure and a wedged GPU.
> -	 */
> -	for_each_engine(engine, gt, id) {
> -		if (engine->class != VIDEO_DECODE_CLASS)
> -			continue;
> -
> -		/* Wa_16010515920:dg2_g10 */
> -		if (IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_B0))
> -			wa_write_or(wal, VDBOX_CGCTL3F18(engine->mmio_base),
> -				    ALNUNIT_CLKGATE_DIS);
> -	}
> -
>  	if (IS_DG2_G10(gt->i915)) {
>  		/* Wa_22010523718:dg2 */
>  		wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE,
> @@ -1638,65 +1594,6 @@ dg2_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>  				DSS_ROUTER_CLKGATE_DIS);
>  	}
>  
> -	if (IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_B0) ||
> -	    IS_DG2_GRAPHICS_STEP(gt->i915, G11, STEP_A0, STEP_B0)) {
> -		/* Wa_14012362059:dg2 */
> -		wa_mcr_write_or(wal, XEHP_MERT_MOD_CTRL, FORCE_MISS_FTLB);
> -	}
> -
> -	if (IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_B0)) {
> -		/* Wa_14010948348:dg2_g10 */
> -		wa_write_or(wal, UNSLCGCTL9430, MSQDUNIT_CLKGATE_DIS);
> -
> -		/* Wa_14011037102:dg2_g10 */
> -		wa_write_or(wal, UNSLCGCTL9444, LTCDD_CLKGATE_DIS);
> -
> -		/* Wa_14011371254:dg2_g10 */
> -		wa_mcr_write_or(wal, XEHP_SLICE_UNIT_LEVEL_CLKGATE, NODEDSS_CLKGATE_DIS);
> -
> -		/* Wa_14011431319:dg2_g10 */
> -		wa_write_or(wal, UNSLCGCTL9440, GAMTLBOACS_CLKGATE_DIS |
> -			    GAMTLBVDBOX7_CLKGATE_DIS |
> -			    GAMTLBVDBOX6_CLKGATE_DIS |
> -			    GAMTLBVDBOX5_CLKGATE_DIS |
> -			    GAMTLBVDBOX4_CLKGATE_DIS |
> -			    GAMTLBVDBOX3_CLKGATE_DIS |
> -			    GAMTLBVDBOX2_CLKGATE_DIS |
> -			    GAMTLBVDBOX1_CLKGATE_DIS |
> -			    GAMTLBVDBOX0_CLKGATE_DIS |
> -			    GAMTLBKCR_CLKGATE_DIS |
> -			    GAMTLBGUC_CLKGATE_DIS |
> -			    GAMTLBBLT_CLKGATE_DIS);
> -		wa_write_or(wal, UNSLCGCTL9444, GAMTLBGFXA0_CLKGATE_DIS |
> -			    GAMTLBGFXA1_CLKGATE_DIS |
> -			    GAMTLBCOMPA0_CLKGATE_DIS |
> -			    GAMTLBCOMPA1_CLKGATE_DIS |
> -			    GAMTLBCOMPB0_CLKGATE_DIS |
> -			    GAMTLBCOMPB1_CLKGATE_DIS |
> -			    GAMTLBCOMPC0_CLKGATE_DIS |
> -			    GAMTLBCOMPC1_CLKGATE_DIS |
> -			    GAMTLBCOMPD0_CLKGATE_DIS |
> -			    GAMTLBCOMPD1_CLKGATE_DIS |
> -			    GAMTLBMERT_CLKGATE_DIS   |
> -			    GAMTLBVEBOX3_CLKGATE_DIS |
> -			    GAMTLBVEBOX2_CLKGATE_DIS |
> -			    GAMTLBVEBOX1_CLKGATE_DIS |
> -			    GAMTLBVEBOX0_CLKGATE_DIS);
> -
> -		/* Wa_14010569222:dg2_g10 */
> -		wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE,
> -			    GAMEDIA_CLKGATE_DIS);
> -
> -		/* Wa_14011028019:dg2_g10 */
> -		wa_mcr_write_or(wal, SSMCGCTL9530, RTFUNIT_CLKGATE_DIS);
> -
> -		/* Wa_14010680813:dg2_g10 */
> -		wa_mcr_write_or(wal, XEHP_GAMSTLB_CTRL,
> -				CONTROL_BLOCK_CLKGATE_DIS |
> -				EGRESS_BLOCK_CLKGATE_DIS |
> -				TAG_BLOCK_CLKGATE_DIS);
> -	}
> -
>  	/* Wa_14014830051:dg2 */
>  	wa_mcr_write_clr(wal, SARB_CHICKEN1, COMP_CKN_IN);
>  
> @@ -2239,29 +2136,10 @@ static void dg2_whitelist_build(struct intel_engine_cs *engine)
>  
>  	switch (engine->class) {
>  	case RENDER_CLASS:
> -		/*
> -		 * Wa_1507100340:dg2_g10
> -		 *
> -		 * This covers 4 registers which are next to one another :
> -		 *   - PS_INVOCATION_COUNT
> -		 *   - PS_INVOCATION_COUNT_UDW
> -		 *   - PS_DEPTH_COUNT
> -		 *   - PS_DEPTH_COUNT_UDW
> -		 */
> -		if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_A0, STEP_B0))
> -			whitelist_reg_ext(w, PS_INVOCATION_COUNT,
> -					  RING_FORCE_TO_NONPRIV_ACCESS_RD |
> -					  RING_FORCE_TO_NONPRIV_RANGE_4);
> -
>  		/* Required by recommended tuning setting (not a workaround) */
>  		whitelist_mcr_reg(w, XEHP_COMMON_SLICE_CHICKEN3);
>  
>  		break;
> -	case COMPUTE_CLASS:
> -		/* Wa_16011157294:dg2_g10 */
> -		if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_A0, STEP_B0))
> -			whitelist_reg(w, GEN9_CTX_PREEMPT_REG);
> -		break;
>  	default:
>  		break;
>  	}
> @@ -2412,12 +2290,6 @@ engine_fake_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  	}
>  }
>  
> -static bool needs_wa_1308578152(struct intel_engine_cs *engine)
> -{
> -	return intel_sseu_find_first_xehp_dss(&engine->gt->info.sseu, 0, 0) >=
> -		GEN_DSS_PER_GSLICE;
> -}
> -
>  static void
>  rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  {
> @@ -2432,42 +2304,20 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  
>  	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>  	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> -	    IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
> -	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
> +	    IS_DG2(i915)) {
>  		/* Wa_1509727124 */
>  		wa_mcr_masked_en(wal, GEN10_SAMPLER_MODE,
>  				 SC_DISABLE_POWER_OPTIMIZATION_EBB);
>  	}
>  
> -	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
> -	    IS_DG2_G11(i915) || IS_DG2_G12(i915) ||
> -	    IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0)) {
> +	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> +	    IS_DG2(i915)) {
>  		/* Wa_22012856258 */
>  		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2,
>  				 GEN12_DISABLE_READ_SUPPRESSION);
>  	}
>  
> -	if (IS_DG2_GRAPHICS_STEP(i915, G11, STEP_A0, STEP_B0)) {
> -		/* Wa_14013392000:dg2_g11 */
> -		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2, GEN12_ENABLE_LARGE_GRF_MODE);
> -	}
> -
> -	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_B0) ||
> -	    IS_DG2_GRAPHICS_STEP(i915, G11, STEP_A0, STEP_B0)) {
> -		/* Wa_14012419201:dg2 */
> -		wa_mcr_masked_en(wal, GEN9_ROW_CHICKEN4,
> -				 GEN12_DISABLE_HDR_PAST_PAYLOAD_HOLD_FIX);
> -	}
> -
> -	/* Wa_1308578152:dg2_g10 when first gslice is fused off */
> -	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_C0) &&
> -	    needs_wa_1308578152(engine)) {
> -		wa_masked_dis(wal, GEN12_CS_DEBUG_MODE1_CCCSUNIT_BE_COMMON,
> -			      GEN12_REPLAY_MODE_GRANULARITY);
> -	}
> -
> -	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
> -	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
> +	if (IS_DG2(i915)) {
>  		/*
>  		 * Wa_22010960976:dg2
>  		 * Wa_14013347512:dg2
> @@ -2476,34 +2326,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  				  LSC_L1_FLUSH_CTL_3D_DATAPORT_FLUSH_EVENTS_MASK);
>  	}
>  
> -	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_B0)) {
> -		/*
> -		 * Wa_1608949956:dg2_g10
> -		 * Wa_14010198302:dg2_g10
> -		 */
> -		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN,
> -				 MDQ_ARBITRATION_MODE | UGM_BACKUP_MODE);
> -	}
> -
> -	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_B0))
> -		/* Wa_22010430635:dg2 */
> -		wa_mcr_masked_en(wal,
> -				 GEN9_ROW_CHICKEN4,
> -				 GEN12_DISABLE_GRF_CLEAR);
> -
> -	/* Wa_14013202645:dg2 */
> -	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_C0) ||
> -	    IS_DG2_GRAPHICS_STEP(i915, G11, STEP_A0, STEP_B0))
> -		wa_mcr_write_or(wal, RT_CTRL, DIS_NULL_QUERY);
> -
> -	/* Wa_22012532006:dg2 */
> -	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_A0, STEP_C0) ||
> -	    IS_DG2_GRAPHICS_STEP(engine->i915, G11, STEP_A0, STEP_B0))
> -		wa_mcr_masked_en(wal, GEN9_HALF_SLICE_CHICKEN7,
> -				 DG2_DISABLE_ROUND_ENABLE_ALLOW_FOR_SSLA);
> -
> -	if (IS_DG2_GRAPHICS_STEP(i915, G11, STEP_B0, STEP_FOREVER) ||
> -	    IS_DG2_G10(i915)) {
> +	if (IS_DG2_G11(i915) || IS_DG2_G10(i915)) {
>  		/* Wa_22014600077:dg2 */
>  		wa_mcr_add(wal, GEN10_CACHE_MODE_SS, 0,
>  			   _MASKED_BIT_ENABLE(ENABLE_EU_COUNT_FOR_TDL_FLUSH),
> @@ -3047,8 +2870,7 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
>  
>  	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>  	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> -	    IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
> -	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
> +	    IS_DG2(i915)) {
>  		/* Wa_22013037850 */
>  		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW,
>  				DISABLE_128B_EVICTION_COMMAND_UDW);
> @@ -3069,8 +2891,7 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
>  		wa_masked_en(wal, VFG_PREEMPTION_CHICKEN, POLYGON_TRIFAN_LINELOOP_DISABLE);
>  	}
>  
> -	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_C0) ||
> -	    IS_DG2_G11(i915)) {
> +	if (IS_DG2_G11(i915)) {
>  		/*
>  		 * Wa_22012826095:dg2
>  		 * Wa_22013059131:dg2
> @@ -3084,18 +2905,6 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
>  				FORCE_1_SUB_MESSAGE_PER_FRAGMENT);
>  	}
>  
> -	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_B0)) {
> -		/*
> -		 * Wa_14010918519:dg2_g10
> -		 *
> -		 * LSC_CHICKEN_BIT_0 always reads back as 0 is this stepping,
> -		 * so ignoring verification.
> -		 */
> -		wa_mcr_add(wal, LSC_CHICKEN_BIT_0_UDW, 0,
> -			   FORCE_SLM_FENCE_SCOPE_TO_TILE | FORCE_UGM_FENCE_SCOPE_TO_TILE,
> -			   0, false);
> -	}
> -
>  	if (IS_XEHPSDV(i915)) {
>  		/* Wa_1409954639 */
>  		wa_mcr_masked_en(wal,
> @@ -3128,7 +2937,7 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
>  		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW, DIS_CHAIN_2XSIMD8);
>  	}
>  
> -	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_C0) || IS_DG2_G11(i915))
> +	if (IS_DG2_G11(i915))
>  		/*
>  		 * Wa_22012654132
>  		 *
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> index 569b5fe94c41..82a2ecc12b21 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> @@ -272,18 +272,14 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
>  	    GRAPHICS_VER_FULL(gt->i915) < IP_VER(12, 50))
>  		flags |= GUC_WA_POLLCS;
>  
> -	/* Wa_16011759253:dg2_g10:a0 */
> -	if (IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_B0))
> -		flags |= GUC_WA_GAM_CREDITS;
> -
>  	/* Wa_14014475959 */
>  	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
>  	    IS_DG2(gt->i915))
>  		flags |= GUC_WA_HOLD_CCS_SWITCHOUT;
>  
>  	/*
> -	 * Wa_14012197797:dg2_g10:a0,dg2_g11:a0
> -	 * Wa_22011391025:dg2_g10,dg2_g11,dg2_g12
> +	 * Wa_14012197797
> +	 * Wa_22011391025
>  	 *
>  	 * The same WA bit is used for both and 22011391025 is applicable to
>  	 * all DG2.
> @@ -297,17 +293,11 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
>  	    GRAPHICS_VER_FULL(gt->i915) < IP_VER(12, 70)))
>  		flags |= GUC_WA_PRE_PARSER;
>  
> -	/* Wa_16011777198:dg2 */
> -	if (IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_C0) ||
> -	    IS_DG2_GRAPHICS_STEP(gt->i915, G11, STEP_A0, STEP_B0))
> -		flags |= GUC_WA_RCS_RESET_BEFORE_RC6;
> -
>  	/*
> -	 * Wa_22012727170:dg2_g10[a0-c0), dg2_g11[a0..)
> -	 * Wa_22012727685:dg2_g11[a0..)
> +	 * Wa_22012727170
> +	 * Wa_22012727685
>  	 */
> -	if (IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_C0) ||
> -	    IS_DG2_GRAPHICS_STEP(gt->i915, G11, STEP_A0, STEP_FOREVER))
> +	if (IS_DG2_G11(gt->i915))
>  		flags |= GUC_WA_CONTEXT_ISOLATION;
>  
>  	/* Wa_16015675438 */
> diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
> index 81a4d32734e9..c66eb6abd4a2 100644
> --- a/drivers/gpu/drm/i915/intel_clock_gating.c
> +++ b/drivers/gpu/drm/i915/intel_clock_gating.c
> @@ -396,14 +396,6 @@ static void dg2_init_clock_gating(struct drm_i915_private *i915)
>  	/* Wa_22010954014:dg2 */
>  	intel_uncore_rmw(&i915->uncore, XEHP_CLOCK_GATE_DIS, 0,
>  			 SGSI_SIDECLK_DIS);
> -
> -	/*
> -	 * Wa_14010733611:dg2_g10
> -	 * Wa_22010146351:dg2_g10
> -	 */
> -	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_B0))
> -		intel_uncore_rmw(&i915->uncore, XEHP_CLOCK_GATE_DIS, 0,
> -				 SGR_DIS | SGGI_DIS);
>  }
>  
>  static void pvc_init_clock_gating(struct drm_i915_private *i915)
> -- 
> 2.41.0
> 
