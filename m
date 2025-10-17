Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E379BE7BD7
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Oct 2025 11:31:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E74A510EB84;
	Fri, 17 Oct 2025 09:31:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BC64ijdK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B17FA10EB84;
 Fri, 17 Oct 2025 09:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760693461; x=1792229461;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=8R2NKlc5+nopVaWZr8tAnCReJJShqegxFOFc2eE/ppM=;
 b=BC64ijdK0jBKX0EPgwtmLreyfsFMQ3EPcKZgJ9nes9uiCThqoINKD2Gp
 77bd1qJBtnZFFFPPTAQOJqB3jEtwx5Bn6vKtPPoVHVUxINac2QwtuIBhq
 BwKi+iIZsd4KaEmV7/3miaoPfjtiOLVNuiUv80bC9Yg/2SjmiJAGeLuir
 59iPi6yBJsG3anqnQw3KK/zx0tNY7vM8xi6tx5KMQepAz5ExbA9NRuRCF
 CyjZ8K9tpG/Zyv9c4vEn8Phor1qAWaokaZ9omqkLt63hmKyYKLEeE7mMq
 Yka76l6mhwIxffr11kZV1XpHLf3HifoWhRy1/PJdjqkJQ2Lja3Jm323eU Q==;
X-CSE-ConnectionGUID: LYrWnNntR6mu6pqBrIFU/A==
X-CSE-MsgGUID: kqLsnlyiTlep0Tp5HO/O1A==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="88370730"
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="88370730"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 02:31:00 -0700
X-CSE-ConnectionGUID: BBxjmhjDT4e39IcvriOYvg==
X-CSE-MsgGUID: ANcYFtGXQRegQDUJIts6VA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="213659611"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 02:31:00 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 17 Oct 2025 02:30:59 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 17 Oct 2025 02:30:59 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.24) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 17 Oct 2025 02:30:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EgssKTn5PvdM0Q7HmCWsfP/vWp/005s7XvzE4xLArulDcSqyImJpDAbe/ZNCU/l9ktym/l+x8nzsVfE0KCqE66IVj0oUgxGe8YSF6XIq/txswXida/nMlrEDHVqskkBgBVsClfqoYySxSbyCOKbVAROZRL5O3edKbfxJrXj5jnZXkiIWTi1SGV5hR99peCfjXAOOZznsNBmMvGmEQzWb41xFGgNpkRp4QWyF8iih1z9dDA7Nk2llbtQyMcL7mX8Jo6cCpY+/OCgwR2qMd2kxMmf0jbDSVlMOFezceT22TW215AVVEwUddhYgUVgnD1lDLENhLGJEyisdeAmWN5cqIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3jH4KvxV2BlSzgRqh/dd2ZizOjGtMzfg8sL5gnTyUyQ=;
 b=PG8lpnK3Jv3aC2YA6XQHz7TH2YtrgAuYJd0mB7nbd/MZ/2430uqFwXf52ufG/yeAilmdpHhIuIzHduKsa6YviOLX/izOV+HYUtQDEE4Vxmj1QEfGHPzmiYe0AMPv30h4Mw0a2k30Ibe48Cy/SjjjyPn/mpS0tSTDeJGHvzdGXryU2mxgIb5t8ksL3uKTCX/1IcqkiJ9ZRAH2VyvpwIGVhMlj4bB/YeR+vY0oAjGPE9W/dEk9jlIh3VR7hj1JGjuMj18TyVRxPipx0Bd5NqCfxIm4A8BeWWplRpQJVxzUVBnqGx68Q06pQ415AqciASboVOwHVq+KYLr57Wsdq3Km0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by LV8PR11MB8533.namprd11.prod.outlook.com (2603:10b6:408:1e5::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.11; Fri, 17 Oct
 2025 09:30:52 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9228.011; Fri, 17 Oct 2025
 09:30:52 +0000
Date: Fri, 17 Oct 2025 12:30:47 +0300
From: Imre Deak <imre.deak@intel.com>
To: <I915-ci-infra@lists.freedesktop.org>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWls?= =?utf-8?Q?ure?= for
 drm/i915/dp: Fix panel replay in DSC mode (rev2)
Message-ID: <aPIMx-HJrhuM_xo7@ideak-desk>
References: <20251015161934.262108-1-imre.deak@intel.com>
 <176055989763.19094.12450157913190398736@97596180aaec>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <176055989763.19094.12450157913190398736@97596180aaec>
X-ClientProxiedBy: DB7PR05CA0013.eurprd05.prod.outlook.com
 (2603:10a6:10:36::26) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|LV8PR11MB8533:EE_
X-MS-Office365-Filtering-Correlation-Id: a966f0a1-0dfb-40ee-c57c-08de0d5fdd6a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|10070799003|7053199007|13003099007; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?m4BPKIYLTGfWAtnxv0gvg0mx5Vd/dsS5nZyCgiMDBqv3WovQMjmMnQxTy5qf?=
 =?us-ascii?Q?b5RkB4UhA1/98uMnbQbZpZ9HyumuziZQpexPXHSzobL5y0kOtKvA/lN9xE+3?=
 =?us-ascii?Q?NYcMSkn9VA8LKdbn48NWfg83Wpb1TsN05l4Dg2pnp9SmkKeRT+I0u0etnxUR?=
 =?us-ascii?Q?ipUjiMYqIFBtgBwpGSHszHIELbfIXXpfZ5ZrCMpvQ2oGclLNbtNyMPK1gt1s?=
 =?us-ascii?Q?MOHYgOII25PXlCE7PR7Cb/O43q9dj/Th/5/ZPop2IYYCXptJPhyWZEpuzsje?=
 =?us-ascii?Q?P8TILok1B+H3r0a/Gh6lDPUbYL/9kC7moUw+Fn9YtHafjDxdlbaOSmOSqiul?=
 =?us-ascii?Q?+revKofDDBgUXORII5owdnEi3nXbi0lD0aS0awHyWd42GdY7s29kEGZUlu2a?=
 =?us-ascii?Q?/mWYQbDevMES/iygBdfNIpHXqU84+Qac/UaAPkKOTOPjG/8itTvk5WZoSXU1?=
 =?us-ascii?Q?QNHUnKXoiUiY/MK0H5kPCnaNedH7lfUDRm8K6YhzhXG+Z7yiedDxdX0ua9Ba?=
 =?us-ascii?Q?cMl66f4a7VJAS7ASR4zKGvi7jgmtiOTG1zA1btc2FaWGEoTYkYLmfdUKzdMg?=
 =?us-ascii?Q?KfAm06d0iXw/RNARkIHP9oT4RcmN1UNF8kNL84FI0gnGAtTm/o1Nl4EdDbcE?=
 =?us-ascii?Q?Y0znH0QeoNi4SqAEqj/tR/IkvmxsBQd1mdb2DuMepJgnTxIw8z+g3OvPFuK7?=
 =?us-ascii?Q?3dvGkGDOjsGzX1TmpM26l/MuW0V2A8Zq7B5scbSeBbXZps/ac7N+AOLLce9+?=
 =?us-ascii?Q?WyrTyBp00mXAvVLEVtIqbJUFtBoCKr7BnOuCsrlMbEWK/h7Aq09WAxUSFfQz?=
 =?us-ascii?Q?SgyUbTXcTd7lR/2mWC6D6x1kdfF7XC569j1ce1jx3tESQoGG/wKUryaEJWUU?=
 =?us-ascii?Q?FJa9ZiOTXUBfQ31HkZRFGRqmNxtcahBOrYGhjMgDdu+s4qklHcQWCd7p2Y2w?=
 =?us-ascii?Q?PCRgrC5LH8uepuEiJl2xxKh46oVk6OcoaMz2fiEGGPZt5u5j4EobdtsW3pEz?=
 =?us-ascii?Q?cLcMXSCH1zPSPpiqnXPlV1oz1VTXMFiFqOZGecgJEl1lKhP8XeQJlyY/WFrp?=
 =?us-ascii?Q?i/TZCjHX+phbCipt8jMTOmweXf04PcWr0b+eNLnwNztyDCI6oCg87i3FB5Pn?=
 =?us-ascii?Q?zJrfrp1aa/g5oQr4c58l5OesEAuqNzEonS2pIlbYCQGMNar/6A9a7zMXhvkl?=
 =?us-ascii?Q?UHpC2zG8aviDiTGIKLMylzgrPYeDhKuveMbx/QxFwjXKBBuaQop3pxyJ1pVc?=
 =?us-ascii?Q?2WbNte2ezEUrHRXLjNf1SLRoyTbm+0lisb8BlK6+0eAHIwQo4iMcPouRlL3Z?=
 =?us-ascii?Q?LBtf7eAWUMrUjYxV2q1+d5kb1hx8eHzoVlFpM+GosKINwF95j35wWkjRd5iu?=
 =?us-ascii?Q?Kfi4UUFa8KS8R2e3k/73UWfmPe0N/jWRUlw14ByEB14/AHpjDQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(10070799003)(7053199007)(13003099007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?4xRRxye55EPu1eT5SRGMUZ8VBWl0m50gY24pNfGi4jkwwD1LT7t2EriLG55i?=
 =?us-ascii?Q?WJRLMd/QqOMHVeTSqH/LkHk+brLGOVDmMxwEdWMrzjYznogejYH6JzjVXybM?=
 =?us-ascii?Q?1zlilSoU6Ho7he/NFNIKPSIYrxekY4Tc7Ysm4tN1ZtzS7mfeqV9wXKbZ1B/f?=
 =?us-ascii?Q?13xorTVcuoGRafgx1+/99tUq6SE56xP1F7MrvSTLC4sCH4HkPQKByW7ebfKj?=
 =?us-ascii?Q?VvTvlQDFpkmE69BX+u2d3MOLoDni73fRJxSfkrpHRsEtbcXn3g2y+HGS0Wse?=
 =?us-ascii?Q?18l6PcEvfhFR5A3MTmuXETLXt/duZLsYc836LCP8jWBrVmUtXHDPddQ+7FOa?=
 =?us-ascii?Q?pLTt4WBYLxuBQ/T2LUVRJOBhwMiwAh+6swjL45ENoBDcPABfhW3EdNsmgNQ3?=
 =?us-ascii?Q?Pff5pKUPpNKkD2jvxdma6BqIRUa7KJJiMoVemsIqiPqfXsXkqiNebSHVvtvI?=
 =?us-ascii?Q?qkjBcxCZ5AB8bD+FZyYqRKSXoBXAFCOKXELJt5ZcOzEi05474QcAbyxEhW1a?=
 =?us-ascii?Q?3+eCDhD4+VTqCv9+Zl0Mxbjmb/mf6Drthh5GAC3WD22OIMzmE2WVh/Y6c7fX?=
 =?us-ascii?Q?VVQnP3mfBX/+mtiBaUN622VaGVEGLeDjlPCsKspX0dmXIInlhbrFKFB73+z2?=
 =?us-ascii?Q?gMFFgljj2n8n8dKCNffap70ee7hBj0yWtw2tah8sVg5B/+1J6ro1AvvtQBEj?=
 =?us-ascii?Q?XQeN4P7PcOqHiBJjF3DWWzYN5vhHB3FPyYxil5nauswuVZVjpOjkNeRmzNL8?=
 =?us-ascii?Q?co2gFAOfH/3UKT4qjiTvM6Hy+8INNtcJspyd0J/K23+j8WBp4v6Exf23i1mZ?=
 =?us-ascii?Q?3X7Cnmu/8ClSOxNv653AOOt6+DOBIq6Mx8S8ERmeIFCrC0c3Pt5kB+acnPlw?=
 =?us-ascii?Q?PDwTUp1voQIBiGl8krRi8jFxK7ctC/uOM3uGhu6Irv0CFAOy5GxK1i+gZaJG?=
 =?us-ascii?Q?9pzxwccC3rVveymGJbFKXnfVQy4cZBGS785Xz9PUwpfJG9GYfcxjUHAa589h?=
 =?us-ascii?Q?/IbMGpfc69vae35KL0NyFoCUUug+ZonbypLuLPyoehdfG/zj4uKh2r1p75M9?=
 =?us-ascii?Q?YyA1eype7aOr9AvP1ZUWR7BeitRxw1sp0v7x31c4J6krsDx3Mv7JyiXiyqWA?=
 =?us-ascii?Q?olouGMJeS3dYQMTOvLknUIJGzCmb++0WJhf1IpRp4wp6WoYiPYFxb3APue9R?=
 =?us-ascii?Q?bzW1o7zVknQjdw6p8hYkPsAhW8mOTd5r0o1YXI223qAR8AcWRwE8bPCnXS+U?=
 =?us-ascii?Q?rwh1uJ6fi0Bg3XvjXy+tBap/d1xRlrtT3izjpsbBulZIMHeeH8BoD+2WgHIG?=
 =?us-ascii?Q?lAl6BPyVG8RFMeEbZ7s7Wzx0iutM7Yq3mRkpGtpJhvsDzVNvqQnBWFxyi3vh?=
 =?us-ascii?Q?v5toDJeS6/kfk9Ur/sBspcm5BFEKV5TzX5x7fSKKKFPn4kOwlEGBW93V1Py/?=
 =?us-ascii?Q?lflMQw0ub7bDXLdBGS5QVNZxjc7/1GtF8XvRbMwj8xtN8Ft/UaDPBAGOygCl?=
 =?us-ascii?Q?HTguxgRx8aD5io0Y2DuQ5KAptXSJc1prWlNRx/7UJD7+EVCnwiHtMvr1Tv7y?=
 =?us-ascii?Q?+dGFYM7ZFBIn1EKKyit+YISoMVVasFwpiDOKboVlP7xFrkrzR8SPd9mQewxx?=
 =?us-ascii?Q?RRgCCYqWEXNow+I9+ZkZs69cwUKhDC29VUSCovJsj/QS?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a966f0a1-0dfb-40ee-c57c-08de0d5fdd6a
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Oct 2025 09:30:52.3633 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vUd/O+MQLTFCOlQoRBVL/pNRX+W8T/4v8wlW7d4pLs5QLGXpGZ69ZbU1Jjf+QjCU57kYBJwREWa0lsacoXgUFQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8533
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi CI team,

the failure is unrelated to the changes, see below for details, could
you please forward the patchset to testing on shards as well?

On Wed, Oct 15, 2025 at 08:24:57PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dp: Fix panel replay in DSC mode (rev2)
> URL   : https://patchwork.freedesktop.org/series/155587/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_17368 -> Patchwork_155587v2
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_155587v2 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_155587v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/index.html
> 
> Participating hosts (40 -> 38)
> ------------------------------
> 
>   Missing    (2): fi-snb-2520m bat-adls-6 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_155587v2:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_sync@basic-each:
>     - fi-kbl-guc:         [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/fi-kbl-guc/igt@gem_sync@basic-each.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/fi-kbl-guc/igt@gem_sync@basic-each.html

There doesn't seem to be any display connected to fi-kbl-guc, so the
display specific changes in the patchset are unrelated to the failure.

It took me a while to determine that no display is connected. Is an
empty "i915_display_info0" linked on the CI result page supposed to
indicat this always? Could you indicate in a more obvious way that "No
display connected" on the results page?

The failure imo, is either due to a network connection issue (no WARNs,
errors in the log, dmesg ending with a flood of 0 bytes read) or some
GFX device DC6 -> DC0 transition or some GFX GEM related issue, see
more below. There are no pstore or other post-mortem logs available, so
it's impossible to know the root cause for sure. Putting much more
effort into making such logs available everywhere would be really
appreciated.

The fact that the connection is lost while the system is active, so not
around system suspend/resume (where network device failures were typical
in the past) makes the likelihood of a network device failure lower.

I see the GFX device being in DC6 when the connection is lost, so it's
possible the machine hangs when GFX is trying to exit to DC0.

A recent similar connection lost failure during a GEM/GT test on the
same fi-kbl-guc machine is:
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154881v1/fi-kbl-guc/igt@i915_selftest@live@requests.html

> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_155587v2 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@dmabuf@all-tests:
>     - bat-apl-1:          [PASS][3] -> [ABORT][4] ([i915#12904]) +1 other test abort
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/bat-apl-1/igt@dmabuf@all-tests.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/bat-apl-1/igt@dmabuf@all-tests.html
> 
>   * igt@i915_selftest@live@late_gt_pm:
>     - fi-cfl-8109u:       [PASS][5] -> [DMESG-WARN][6] ([i915#13735]) +80 other tests dmesg-warn
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - bat-dg2-9:          [PASS][7] -> [DMESG-FAIL][8] ([i915#12061]) +1 other test dmesg-fail
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/bat-dg2-9/igt@i915_selftest@live@workarounds.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/bat-dg2-9/igt@i915_selftest@live@workarounds.html
>     - bat-arls-6:         [PASS][9] -> [DMESG-FAIL][10] ([i915#12061]) +1 other test dmesg-fail
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/bat-arls-6/igt@i915_selftest@live@workarounds.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/bat-arls-6/igt@i915_selftest@live@workarounds.html
> 
>   * igt@kms_pipe_crc_basic@read-crc:
>     - fi-cfl-8109u:       [PASS][11] -> [DMESG-WARN][12] ([i915#13735] / [i915#13890]) +49 other tests dmesg-warn
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc.html
> 
>   
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904
>   [i915#13735]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13735
>   [i915#13890]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13890
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_17368 -> Patchwork_155587v2
> 
>   CI-20190529: 20190529
>   CI_DRM_17368: 69ca30df000b382e7657f300148be505083377f2 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8585: 8585
>   Patchwork_155587v2: 69ca30df000b382e7657f300148be505083377f2 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/index.html
