Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7BB76EF8DB
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 18:59:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B83D10E8A8;
	Wed, 26 Apr 2023 16:59:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 106E710E8A8
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Apr 2023 16:59:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682528367; x=1714064367;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=0FtL8C6pb0zUEkFDNDiX1sGRRZfaYE1Qmpe7P5DrN5k=;
 b=G1MuVcyQ1dNxr1oYfCLia/bwzHngsbMPJFt2CwKKAuRmhBwHGFM+sLDb
 VpCuTHuucnhzmTcRsvv0HFmaKV68hyvoQXAguikdG+8YXmIUXoURUOCNG
 nuk1N0e/3KF6zjbQq5u5hztyd9zb8E3Lc2ZSVZo59O/V0ATiYXMs8ekxW
 DkEQVssBMlC9hW0FMOuTmhjum/Q7HSUlsz8bwuj/7wXHlCClplnlgQsCt
 8PCLPQbUmgXe6AkTI3xuFnDPQZSGVgCHZV0gn42qBVyic4Tq5mYC4jCZU
 y75ed2whFCZUBvzYL03gK1Bldp38yaVjUMYQkQWzVAxX6oNdswuej3O4W Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="410184975"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="410184975"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 09:59:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="688016865"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="688016865"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 26 Apr 2023 09:59:26 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 26 Apr 2023 09:59:26 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 26 Apr 2023 09:59:26 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.42) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 26 Apr 2023 09:59:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eeix3MLW872XpT4iLaShpuqlap75DwD8iXxQuTP9JggQu5Sf6OSeJvM+9iGxFAuIcHmyXM3WGHDIOW5HlJLKy3BEn89tvMKmEOy2+IyfuvwG2HaI0nLMWIBLy0QQ2qbeh9pN2T6iHX4XfNbc+KkH3S8xkxUu9H75ffn1nMUv5szdi5ZfK3hl5rjliuXJcw3t4XdPNxE/e+w03sdzV88huu4Pb0vf/M/UrjvxYgTsfEiOeAqlGSOwU4R69tG9ZZLAxrs0P77c5wi7fa+DEgoEY+ZQBu+uLrPbE9VnqbYdkyYI7PC49C2wXQ7V5oHT3pjl8YjJ2P9rOYTRxVJmgSyRRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DpHkJn6ycKfRR1Q7Lbv3tugsxy1ncWb+Sav6MNaIPR4=;
 b=IEAht6unSOAe2BjMzUpntxN+JhSVBWEaLoJU1lyHbwI68zxSKpc+vzduhPRF38ee5tCorEzL9lfUkVpSBl8mN9F/LJqpODNyRzfsQOTwBvXr64a2+x064p6mlrE0WW6KTIs1EyBQKeLDvJq7EO1afkIOvnNZ2+I5uN9HCwrCOJ97PYkmRICWvn7pjquHzkUFIu5/cQp/9lU2TVaOd6egZVH/2XybV0nwZJRBpJIkpxydUK138agJ6IM8D1zrNRmqvqHbC1SbzOZG48NouuvQbt7Z3hhnU+/IPtAlQpVxnPjGZTPUIr3gfdJHYPvQYBn0/J7RUC7JIHVoQy7dfB8t1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 CY5PR11MB6389.namprd11.prod.outlook.com (2603:10b6:930:3a::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6340.21; Wed, 26 Apr 2023 16:59:24 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9c02:9b11:8756:fe69]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9c02:9b11:8756:fe69%5]) with mapi id 15.20.6340.021; Wed, 26 Apr 2023
 16:59:24 +0000
Date: Wed, 26 Apr 2023 09:59:14 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <ZElYYunD19Va7bnR@orsosgc001.jf.intel.com>
References: <20230425183011.865085-1-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230425183011.865085-1-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: SJ0PR13CA0121.namprd13.prod.outlook.com
 (2603:10b6:a03:2c6::6) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|CY5PR11MB6389:EE_
X-MS-Office365-Filtering-Correlation-Id: c28989e8-94ce-452a-8468-08db46779620
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: z5DbYqmIsHwg8ZQ3VbjIHengeH7Xpm0hfHjt4tmUWsN/FkyM8QdL4DsrCV+CfvxZbBvQD7qJDA7/9XvmWRJtNBifd8HWbnotp/GRxL1HOla20gOwHUruuVhz6xLH7piMmLa0LEkV1Yhl+unOCHbWNa6NaMksqqNlGPb/kJ4f7DpI1sYOfPEpQbUb7kivBX5d6tWdZJORRY65gUdpRkZuY6SXHLl7wKzeUUl6cQGiE1N6RxzvullseuQU7qo05mQo3yIwShAnbtjV5mvpkeHwlrVt6NIF5f9SvDA01LNpc11DhwOOGZT3+Smi4QUWjBfovqLXzEvBJb15SQ29RdkkG2NowGbtmY//FuKABzc0a7xDvMoBF8Ax8YS6D2x0oJpbCrFe1I6aizuspKze4k28/DM6o9RBV/pwQBGg4568WARF8nHDzyUIFs5UGvNKOUsv9S9jylf6y53y+h1EqFD28MKtoW9AT0+F3FcUfJiL9WFg/PMpgqr7OzwonJxtJ1YYPvIUQc2EBfWAaH12tUswlktPQ2PNU9XikB2U+GmZwY/Rxn2UApBTE9NNi6/etLf1
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(346002)(366004)(396003)(136003)(39860400002)(451199021)(83380400001)(186003)(6512007)(26005)(6506007)(6636002)(316002)(86362001)(82960400001)(4326008)(66476007)(38100700002)(66556008)(66946007)(2906002)(41300700001)(107886003)(478600001)(5660300002)(8676002)(6862004)(6486002)(8936002)(6666004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MmJFUzUwVVNWb2lrUjcyT0pIMlN0cFRLSDB6REQ2V2kwOW5iMit0S0p1QkZ2?=
 =?utf-8?B?M0hKdERINW1YcHU0NEFQd1kxNk1saXpacnNJU1dwR0RuY0c5WncwYXEzTFBw?=
 =?utf-8?B?dExaSnhLTFhrR3lIYlE4ZnYyOHVnajFpaXBrQ1d4enZyenhmdlFaSFIvUlho?=
 =?utf-8?B?KzNESmxxRndTSkk3NlBTck9ydUFGTnZLWU9vNjA3N1ovMGZ0UFQ2ZzluZXFE?=
 =?utf-8?B?UTVVSjVGWVExaFBWNTZrQ2JFcUw0VWRZOE1WUmxWTGFLK3RkL3NpV0JubXRV?=
 =?utf-8?B?M05XNWF4ekk5c3hKc2tqZU1CZDlJU24wdktZL01UelB1Z3k5cURuRnZFK09w?=
 =?utf-8?B?ODNaZmIxdFB6ZGYzS3FsOWdtS1UzMWNUb1Z4TW83M0FQQ1VaVDMrNkd5V29U?=
 =?utf-8?B?eVhIRWM0eTJmTkRQYmpCMVR4T3hQTDgreEJHN0pkVGJGdVdrVzV3b1dobi9Z?=
 =?utf-8?B?cWxtcW1MeXBGWXM3Z3NTa0RVaTY3QW0veVl5cGJPTUV3TnZlOWxMQlg2dkRX?=
 =?utf-8?B?dzZuckFWK3E2VlNQOWhzRUtIRlJwWUk0OXA4QlZ1bFRYRzJtdnZSU3I5TEhl?=
 =?utf-8?B?MnVlSDN2M2RKVU5oaDNmZWlleTk1RFJTZGpneFArR0VtSXFVdHUwd1RNQlVZ?=
 =?utf-8?B?Ykg0WFpEY3V1ZmQxQjYya01aWGMzczFGYnpNKzM2U3h0WUt1RjliSWVIKzNu?=
 =?utf-8?B?NERyTWxudzB2YXQwQWxrVDRzRmdicW5NS3k5eHprVDlpb0VnYXhqaFFzaklS?=
 =?utf-8?B?WDJsbkNWaGtnQ3FoMTBOeWREbWhXZ0JyMmdTZU5uN1EzZnN1VC9HRWRQYlhw?=
 =?utf-8?B?UDFoSnE0ckFjdkhqUGh6TzZEaUluOUp0VDdmQ1RRRDF1dktzOGNjMmxkTnpH?=
 =?utf-8?B?cXVJRlFJVTY3Z2RzQmw3SitwSDhTeWYxRE45a1VBWlRWbkFERXNUdXVJcVpu?=
 =?utf-8?B?YzhyTmF5MmZ4ZTh1MzkrdERKalBINHBFNlNpcHNuNVdtbXZlWi80WStCUEwy?=
 =?utf-8?B?eFVjZVZvSW1KUDlsUS9OR0ZvQ1BaUHExWWVYWW15Ni9hZ1IyRFJXcXpYQW0v?=
 =?utf-8?B?R2UwVXhGSDBIeHptZmpMZEh5V245ZUxYNnBHTG52cFpPMHJKOStKbUlGY0R0?=
 =?utf-8?B?RzhKZXFXaFNmdk9ZVE12b3dFbkZXSEJlMUFwNDd5blNIc2JKR1pNK1A5K1Ft?=
 =?utf-8?B?NTFtd3BSelBReUJjOCtYM2c5MXFvM3RLMDcySGlLUXRhbjhJVDArWjltTUJW?=
 =?utf-8?B?MmxFeTBOMGYwNEsxL3I0THkvWUozRmZ2YWhQSWExWCtOMmMwVm9VSDNLZGFq?=
 =?utf-8?B?Y3ZDemlUSUZRYnF1bm0zZUZJQmRkTWJJNzVKaTdtOCt0WFQwNVZ4ZDVWdVY0?=
 =?utf-8?B?MHBzMzdUQTZ0Q3htcXdRbDVsVFl5SUE0anE4ZmE3cGpyZmhBRk9xdDZwbmVN?=
 =?utf-8?B?WjJ0UWNaTnJTaDNLeC9laDhMZUEzV1Yzd1JId3pBcDBiRnpyV3ptVU1lRnNh?=
 =?utf-8?B?SCtTMHU2V2c3TVpNbVI1WG5Gd2N2aG1qMFROTVdGNjRxbU40ZDZQdmxZZXAy?=
 =?utf-8?B?cjRTUEcvNVVzWVNwcUc3VElZZ291TUhWdDhEV1QrZm1HMzJIcURRM3Z6UDhJ?=
 =?utf-8?B?MDFUa25aN2lVTkxDZUFkSDZFV3NkUFRMMUhDYzJwcjU0a1dmdnVQTHIwTUJ1?=
 =?utf-8?B?b1dsT1BXZCtoNTZnQVdmR1V1K1VxOXh1WG5Ja0RHMWt6Zm1zKzh3UEZNTlho?=
 =?utf-8?B?d2RkbjBaQXhZR0NjejdiUVk2UGYxWlc5cTdMLzRxeGMwN0tOVG9OZ0ZLK3A3?=
 =?utf-8?B?ZXlPdGtoRXlEeHkyangvMlJ4N3ZBWWJWaG9takM5dThQQXlXKzVTWndZa2N4?=
 =?utf-8?B?UE5zQ1Y5V25EbytZVXNZbnpoR1owTUhmM1E0VWtVSm1VNnc1UlN4b05vVVht?=
 =?utf-8?B?ek9sVXJPQmprZkxDbm1uV0pidWJHRVVnaktEMHV0NGNMVSsrTmVLQ3A1VDBi?=
 =?utf-8?B?VDdYOW9CYThURlRLWFRMUkJPQlAweHRXOGNNcE5tdnhRQXNFbEZuS2I0dzFK?=
 =?utf-8?B?MmZmYXRITEZvR2dMNnE5RDdselhraVhBOFMwWG81a21USEFnYXBEWmI3WGt0?=
 =?utf-8?B?dnBiTnlCeDhWTS85Q1VWeFdqblZEeFRpZlVqSTdCT09LZnVaNkw0ZEV3MXFo?=
 =?utf-8?Q?91Dp7ZjvpmpDH9IjPP07Yrw=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c28989e8-94ce-452a-8468-08db46779620
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2023 16:59:23.8812 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0cywX8x4m6ftPNB6ue8HkIQTg+uV0OycI4O6dDuNSRAPiri7dfGZZeNav+n9ix71xJxQGMnme3nrz6Of+3Ml8RgNiNW6VyM4IJdYMHTr5WA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6389
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v1.1] drm/i915/mtl: Implement Wa_14019141245
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
Cc: intel-gfx@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 25, 2023 at 11:30:11AM -0700, Radhakrishna Sripada wrote:
>Enable strict RAR to prevent spurious GPU hangs.
>
>v1.1: Rebase
>
>Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>---
> drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 5 +++++
> drivers/gpu/drm/i915/gt/intel_workarounds.c | 4 ++++
> drivers/gpu/drm/i915/i915_perf_oa_regs.h    | 4 ----
> 3 files changed, 9 insertions(+), 4 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>index e8c3b762a92a..af80d2fe739b 100644
>--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>@@ -529,6 +529,11 @@
>
> #define GEN8_RC6_CTX_INFO			_MMIO(0x8504)
>
>+#define GEN12_SQCNT1				_MMIO(0x8718)
>+#define   GEN12_SQCNT1_PMON_ENABLE		REG_BIT(30)
>+#define   GEN12_SQCNT1_OABPC			REG_BIT(29)
>+#define   GEN12_STRICT_RAR_ENABLE		REG_BIT(23)
>+
> #define XEHP_SQCM				MCR_REG(0x8724)
> #define   EN_32B_ACCESS				REG_BIT(30)
>
>diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>index de4f8e2e8e8c..ad9e7f49a6fa 100644
>--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>@@ -1699,6 +1699,9 @@ xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
> 	wa_mcr_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);
> 	wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
>
>+	/* Wa_14019141245 */
>+	wa_write_or(wal, GEN12_SQCNT1, GEN12_STRICT_RAR_ENABLE);
>+

Was wondering if this should be a rmw, but since this write is at driver 
probe and OA always does a rmw on this register, this looks fine.

Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Thanks,
Umesh

> 	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
> 	    IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0)) {
> 		/* Wa_14014830051 */
>@@ -1707,6 +1710,7 @@ xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
> 		/* Wa_14015795083 */
> 		wa_write_clr(wal, GEN7_MISCCPCTL, GEN12_DOP_CLOCK_GATE_RENDER_ENABLE);
> 	}
>+
> 	/*
> 	 * Unlike older platforms, we no longer setup implicit steering here;
> 	 * all MCR accesses are explicitly steered.
>diff --git a/drivers/gpu/drm/i915/i915_perf_oa_regs.h b/drivers/gpu/drm/i915/i915_perf_oa_regs.h
>index ba103875e19f..e5ac7a8b5cb6 100644
>--- a/drivers/gpu/drm/i915/i915_perf_oa_regs.h
>+++ b/drivers/gpu/drm/i915/i915_perf_oa_regs.h
>@@ -134,10 +134,6 @@
> #define GDT_CHICKEN_BITS    _MMIO(0x9840)
> #define   GT_NOA_ENABLE	    0x00000080
>
>-#define GEN12_SQCNT1				_MMIO(0x8718)
>-#define   GEN12_SQCNT1_PMON_ENABLE		REG_BIT(30)
>-#define   GEN12_SQCNT1_OABPC			REG_BIT(29)
>-
> /* Gen12 OAM unit */
> #define GEN12_OAM_HEAD_POINTER_OFFSET   (0x1a0)
> #define  GEN12_OAM_HEAD_POINTER_MASK    0xffffffc0
>-- 
>2.34.1
>
