Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3016B6C93D6
	for <lists+intel-gfx@lfdr.de>; Sun, 26 Mar 2023 13:04:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3853B10E081;
	Sun, 26 Mar 2023 11:04:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F65C10E080;
 Sun, 26 Mar 2023 11:04:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679828656; x=1711364656;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=G62bzNKEwIdq8bXUwv54pjEZts8R7b9EYmNFHcKszMc=;
 b=EuJNyAaJQiOZ+jjiZyUoVGO3y4kfJlUEvHK8gL7OT9TaUYcdHZ+LyKFI
 t6aFi7hsqlA5wYZWU4tu4CfYNcTvnPKT20CaBbA5HptFE9ycEAo81L+p0
 GokkFPdBCTtxxtf0OTrtKOFpubKvm7Aa8VX1mkDPDhS9bxalz/WkyO5+F
 YzQ89/Lqwqim223lteFokx3v9EzGvGGQsxyXmGMH4OccrDbEUne6di5Zs
 pmMPK82ZSgyYtYxe0YHwpNIfhUIi4Yi2x77e7ik3j6MtDJ0R4W8q3HJCs
 TYcXHzfwaiM/RLxQ1zHoOUF9fFXwCDH+Cy2Qh56Srn9AR5uV2hVroZLpA Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10660"; a="404995088"
X-IronPort-AV: E=Sophos;i="5.98,292,1673942400"; d="scan'208";a="404995088"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2023 04:04:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10660"; a="685689559"
X-IronPort-AV: E=Sophos;i="5.98,292,1673942400"; d="scan'208";a="685689559"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga007.fm.intel.com with ESMTP; 26 Mar 2023 04:04:15 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Sun, 26 Mar 2023 04:04:15 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Sun, 26 Mar 2023 04:04:14 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Sun, 26 Mar 2023 04:04:14 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Sun, 26 Mar 2023 04:04:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LEth0avd1aJkHG9romxQ6IOxSVG9Tx8mFjVFl2AvZgGSqrp/hve5ENrfJpPiZeeUqKOGEyn0CTcLPMTmge9mJKrovWPm4yuE8mKASw/pMAr6LjCEnAr50Y9Z6IyLi+MVhJidNVXkx/o324qjF7gJrJNBdQHZY8o8T62MTS9SnFmMEtBHJuOl+AQCUeADZKpHs5mJ8rP5ZUWxQT5dQpzvOmr4btBnebGz8b7sgwh4sNR0kIFSuyudboaALR72FKVFudbPUzkpPTr+Lz8623sf4xLGo9NlFiImPUnqJH8vzpvgnF90pUmLK3zAd2xotRhPQP/ub+HnUx/CBjyAV/x+/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/sFOFQYIdwLNrazw2WU0penXtI5Ag4SuxfFnjFF8bTg=;
 b=jKFFKXK9d9n9AhKh3ST4AVfGkl7gjfBvqjpOI2p+XD+EYCmVfqaVOzPGBPu3qZ6pzgOasPTr6t9OL9RiicxE9t7YiDftLhbxA5OxpzgN9dmbGO7h66MUQSZihmK84Viw+hAjPY2v0YHib1iWWggSa4nFWShsOAuBAI9dt4BTINDH9le7vGjX3Q21m5Xb6c5liQjE42N/F25CCYDSfGentvozmYfYP2PMmjTcmrjsFRMpM2GtNUENWXaEcEwF6iSQ3Gv6Kj/2+WJmmQirOXxoJSnt17EtEdWIY+KwBQoy6qbGeU6DOrIupK/jXiAAcXcYffJxVI55pm4rGHqhX384PA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CO1PR11MB4771.namprd11.prod.outlook.com (2603:10b6:303:9f::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6222.29; Sun, 26 Mar
 2023 11:04:12 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158%9]) with mapi id 15.20.6178.041; Sun, 26 Mar 2023
 11:04:12 +0000
Date: Sun, 26 Mar 2023 07:04:08 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Message-ID: <ZCAmqEsDAxVt7ysy@intel.com>
References: <20230324224959.1727662-1-vinay.belgaumkar@intel.com>
 <20230324224959.1727662-3-vinay.belgaumkar@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230324224959.1727662-3-vinay.belgaumkar@intel.com>
X-ClientProxiedBy: BYAPR01CA0072.prod.exchangelabs.com (2603:10b6:a03:94::49)
 To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CO1PR11MB4771:EE_
X-MS-Office365-Filtering-Correlation-Id: 6ee71a09-daa5-4ebf-3c76-08db2de9d4c5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0pNuf6Vd9CNUIsFF98lt8Wg6GKBBN2UxlIfQuPg5ZbVB+fvIuhYdCK18pbYKa/xbxzdOGTToEFAcQYHPAKbaIsFpfJg1Xv5dTgUS9ouNTOSDn9DYU8ERUbPYYJh6Nhfd7CK6u31o4hhB9tj2bO3LzkxoxovtbKx0hekL7yVwNAZr/c9C9ZCBnkWiG7sYp/eKtHqcF1ng/egy6m7nRY/UB2uB0DO9eH3plAcN6F1iJfnVWIIJmXynz3z7a54tm3kc9uIZVaSJZvrXBBCO/zCw7fuaLMtk/02poe3R8/5l+6lVV9DOFB4K6DuvMBGsvBXwm8wBQv6Pkr5WG2iSXF4m2NskM8uMODsyO0/GLmSnBR1IVwoc4wFnLzQFnAAn9AjVm/+pXOMMEFd4aodCJZSDMxoYmguhvMT1PadzgoQH0lgVLDDRBCLfwZJXlESTkRKwgs2Qi5W038lVVWhDNhWkhwN76wVLG/5DUeVCalfyVpUhUIv6kNkb9X4xY19Zwtn6/K0mHEY70XYAB4CJrphVq7WY1KY45WQ5BcV/HFVjYImn8iR93iSPgcZzhWFP29TU
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(39860400002)(346002)(376002)(396003)(136003)(451199021)(36756003)(86362001)(478600001)(316002)(37006003)(6636002)(66476007)(66556008)(66946007)(8676002)(4326008)(82960400001)(41300700001)(450100002)(83380400001)(26005)(6512007)(6506007)(2616005)(186003)(6486002)(6666004)(2906002)(38100700002)(44832011)(8936002)(6862004)(5660300002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?crstSdFJlbPGp7twMbFXQmLYKfBiWMflefuE+gR1UEJxTLC4zbCKd239+Z?=
 =?iso-8859-1?Q?O4LANS1Cl5kGRwTUOfBG4Cp6euBNh7Hhf0C6+X3gm/Rn9aA3MPmRQN1yo9?=
 =?iso-8859-1?Q?fm1OvzirgUziLOyi6FwKlbBHuhcwIkmuiVqLR7YByt7RSRcAlPTIBakZLC?=
 =?iso-8859-1?Q?iyYRhodqF0BTON9Indb8WJ3D8byDUT/Y0uIYb+Acbms+s/wKTEN4RBNwXf?=
 =?iso-8859-1?Q?D49jC/c62u+Axs5KagzU3Y6eFQNC8jVIzQ/0QPu+p8Ba+yxR5bzOFIvX+p?=
 =?iso-8859-1?Q?wb9dB27As5wHtahboWPTwS4igVm6wtSzvJmJ4ycks4AlOzjI+mt9aoRr83?=
 =?iso-8859-1?Q?g44BIp1Z4LdN0c6USMtktpc4GL4dDfSLi6oeawucuFvu9Y0+X8sg/FGvkb?=
 =?iso-8859-1?Q?mf1NVfH/EtRtLC0wy9z5LEdbxkgIlzF7Uo3ixzt3zDbJnoW7AGsXYw/N8q?=
 =?iso-8859-1?Q?WFVyAWifUknpNJ4fYj4XdWTj0rc++UvYDaR1CMvSRpgo9mWq9xJCvD3PBp?=
 =?iso-8859-1?Q?FEqp6sqqyLHdopVvmOSSZao2NnhBgOu8Dhn52v26Ls9jOq9h8ELDyLVGET?=
 =?iso-8859-1?Q?81Tv0okb5Jx2PXVV3Pa2bpAG8raFRbFNTifTHcFfF1FigKFibOfWpu/T3B?=
 =?iso-8859-1?Q?oAgu+QIFslUsfQZopmWHzv3oze7LY41W9RrDrGsSHinNy13IxAixSj4/rs?=
 =?iso-8859-1?Q?B/0ivU+14OFlEX9taZVAq+mtFsJLhzAHlHt9wKaKiyFECOW1q/5XP6E9MM?=
 =?iso-8859-1?Q?eJNyiKy3OaJ1cGn6hQ55/cdUsmnvxKpA3KuMNwUCctMQ1Cqd4M31dOoaxr?=
 =?iso-8859-1?Q?HqswZbnD0+Cx5uiHO8jdrfWL2dIwHZdSJpEWBZmXPaOkPDyjJNspE9dIVL?=
 =?iso-8859-1?Q?gbvEjZ+EVsQxmEFX5B4TQLU4/9WcCF82JDjLURRbqn5kTkEzTysl0jupQ8?=
 =?iso-8859-1?Q?WMJwfoDpsMKlvakwo0PpYWzVUDWbOWP2KIC5TuCzMY2EhVMpBSF390S5dC?=
 =?iso-8859-1?Q?Z337b008eOEzvJiYC8+NXG+0W250BjZVVh9g8+SFRb2AppdFBB5kPTRuDs?=
 =?iso-8859-1?Q?81XMsGY0y3jb4lSgAtPnSGxR9qnDh4NqO5uR4eA0Uswf6p0cUPtgFC/DZz?=
 =?iso-8859-1?Q?YrpARD4/it0ILUP9u5+RP3DszqwCzRfk1Me7NJyMFcTdh4CW0eJs+VUqVT?=
 =?iso-8859-1?Q?eyZmY9eEZAK4J0KDawijL9+xsrAPswW0pq44dQKM1aylegMcMZNj7M2CED?=
 =?iso-8859-1?Q?vyy9qpydKWZh1k0dsdNNdYnXH+9lT4Vj7qYO3nIqi9vntbHBscZhxmEvJR?=
 =?iso-8859-1?Q?TIL2GkxL3HUebwNw3WrqR1Kc/lZzKe7hWHUpn0a75aqb/5/DX/jyZPkkWj?=
 =?iso-8859-1?Q?ShgnKbvzh5r1ZlowF/VQEjxoRVpJIptxxBRsf+F/pItk51fbP4qwwAQFGF?=
 =?iso-8859-1?Q?QnQZDFHl8MQnVpHtvMWC8cQWM5+oWZsElSH5uxtxDzmlI0mNelCm0AjmQt?=
 =?iso-8859-1?Q?RU0Kf0sr/ZSiC8Ja8cixZXZH2aSUW8iha0UBXormxGM6qm+uuhe6mB8JIw?=
 =?iso-8859-1?Q?NU8bqLZirrQeQAPlK/Sf/DHqx0cgROZ7f4At8QwgF7kT/jRnSfb2/UWYBu?=
 =?iso-8859-1?Q?NgipKXBJmWqyTLCJSiLZ/WAOhZtSktztZh?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ee71a09-daa5-4ebf-3c76-08db2de9d4c5
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Mar 2023 11:04:12.6038 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wjjnLKqCJRlGifXLCzQbelukETvAg+haR5069gLd3nL7uRrYecHBcOms8EyhWzqKdg6iU75c5ZDV/ZkUUvvvHQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4771
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH i-g-t 2/2] i915_guc_pc: Add some basic SLPC
 igt tests
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 24, 2023 at 03:49:59PM -0700, Vinay Belgaumkar wrote:
> Use the xe_guc_pc test for i915 as well. Validate basic
> api for GT freq control. Also test interaction with GT
> reset. We skip rps tests with SLPC enabled, this will
> re-introduce some coverage. SLPC selftests are already
> covering some other workload related scenarios.
> 
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

you probably meant 'Cc:'

> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> ---
>  tests/i915/i915_guc_pc.c | 151 +++++++++++++++++++++++++++++++++++++++
>  tests/meson.build        |   1 +
>  2 files changed, 152 insertions(+)
>  create mode 100644 tests/i915/i915_guc_pc.c
> 
> diff --git a/tests/i915/i915_guc_pc.c b/tests/i915/i915_guc_pc.c
> new file mode 100644
> index 00000000..f9a0ed83
> --- /dev/null
> +++ b/tests/i915/i915_guc_pc.c

since 'guc_pc' is not a thing in i915 I'm afraid this will cause
confusion later.

I know, guc_slpc also doesn't make a lot of sense here...

Should we then try to move this code to the 'tests/i915/i915_pm_rps.c'
or maybe name it i915_pm_freq_api or something like that?

> @@ -0,0 +1,151 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright © 2023 Intel Corporation
> + */
> +
> +#include <dirent.h>
> +#include <errno.h>
> +#include <fcntl.h>
> +#include <inttypes.h>
> +#include <stdlib.h>
> +#include <sys/stat.h>
> +#include <sys/syscall.h>
> +#include <sys/types.h>
> +#include <unistd.h>
> +
> +#include "drmtest.h"
> +#include "i915/gem.h"
> +#include "igt_sysfs.h"
> +#include "igt.h"
> +
> +IGT_TEST_DESCRIPTION("Test GuC PM features like SLPC and its interactions");
> +/*
> + * Too many intermediate components and steps before freq is adjusted
> + * Specially if workload is under execution, so let's wait 100 ms.
> + */
> +#define ACT_FREQ_LATENCY_US 100000
> +
> +static uint32_t get_freq(int dirfd, uint8_t id)
> +{
> +	uint32_t val;
> +
> +	igt_require(igt_sysfs_rps_scanf(dirfd, id, "%u", &val) == 1);
> +
> +	return val;
> +}
> +
> +static int set_freq(int dirfd, uint8_t id, uint32_t val)
> +{
> +	return igt_sysfs_rps_printf(dirfd, id, "%u", val);
> +}
> +
> +static void test_freq_basic_api(int dirfd, int gt)
> +{
> +	uint32_t rpn, rp0, rpe;
> +
> +	/* Save frequencies */
> +	rpn = get_freq(dirfd, RPS_RPn_FREQ_MHZ);
> +	rp0 = get_freq(dirfd, RPS_RP0_FREQ_MHZ);
> +	rpe = get_freq(dirfd, RPS_RP1_FREQ_MHZ);
> +	igt_info("System min freq: %dMHz; max freq: %dMHz\n", rpn, rp0);
> +
> +	/*
> +	 * Negative bound tests
> +	 * RPn is the floor
> +	 * RP0 is the ceiling
> +	 */
> +	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn - 1) < 0);
> +	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rp0 + 1) < 0);
> +	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn - 1) < 0);
> +	igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rp0 + 1) < 0);
> +
> +	/* Assert min requests are respected from rp0 to rpn */
> +	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rp0) > 0);
> +	igt_assert(get_freq(dirfd, RPS_MIN_FREQ_MHZ) == rp0);
> +	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpe) > 0);
> +	igt_assert(get_freq(dirfd, RPS_MIN_FREQ_MHZ) == rpe);
> +	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn) > 0);
> +	igt_assert(get_freq(dirfd, RPS_MIN_FREQ_MHZ) == rpn);
> +
> +	/* Assert max requests are respected from rpn to rp0 */
> +	igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rpn) > 0);
> +	igt_assert(get_freq(dirfd, RPS_MAX_FREQ_MHZ) == rpn);
> +	igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rpe) > 0);
> +	igt_assert(get_freq(dirfd, RPS_MAX_FREQ_MHZ) == rpe);
> +	igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rp0) > 0);
> +	igt_assert(get_freq(dirfd, RPS_MAX_FREQ_MHZ) == rp0);
> +
> +}
> +
> +static void test_reset(int i915, int dirfd, int gt)
> +{
> +	uint32_t rpn = get_freq(dirfd, RPS_RPn_FREQ_MHZ);
> +	int fd;
> +
> +	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn) > 0);
> +	igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rpn) > 0);
> +	usleep(ACT_FREQ_LATENCY_US);
> +	igt_assert(get_freq(dirfd, RPS_MIN_FREQ_MHZ) == rpn);
> +
> +	/* Manually trigger a GT reset */
> +	fd = igt_debugfs_gt_open(i915, gt, "reset", O_WRONLY);
> +	igt_require(fd >= 0);
> +	igt_ignore_warn(write(fd, "1\n", 2));
> +	close(fd);
> +
> +	igt_assert(get_freq(dirfd, RPS_MIN_FREQ_MHZ) == rpn);
> +	igt_assert(get_freq(dirfd, RPS_MAX_FREQ_MHZ) == rpn);
> +}
> +
> +igt_main
> +{
> +	int i915 = -1;
> +	uint32_t *stash_min, *stash_max;
> +
> +	igt_fixture {
> +		int num_gts, dirfd, gt;
> +
> +		i915 = drm_open_driver(DRIVER_INTEL);
> +		igt_require_gem(i915);
> +		/* i915_pm_rps already covers execlist path */
> +		igt_require(gem_using_guc_submission(i915));
> +
> +		num_gts = igt_sysfs_get_num_gt(i915);
> +		stash_min = (uint32_t*)malloc(sizeof(uint32_t) * num_gts);
> +		stash_max = (uint32_t*)malloc(sizeof(uint32_t) * num_gts);
> +
> +		/* Save curr min and max across GTs */
> +		for_each_sysfs_gt_dirfd(i915, dirfd, gt) {
> +			stash_min[gt] = get_freq(dirfd, RPS_MIN_FREQ_MHZ);
> +			stash_max[gt] = get_freq(dirfd, RPS_MAX_FREQ_MHZ);
> +		}
> +	}
> +
> +	igt_describe("Test basic API for controlling min/max GT frequency");
> +	igt_subtest_with_dynamic_f("freq-basic-api") {
> +		int dirfd, gt;
> +
> +		for_each_sysfs_gt_dirfd(i915, dirfd, gt)
> +			igt_dynamic_f("gt%u", gt)
> +				test_freq_basic_api(dirfd, gt);
> +	}
> +
> +	igt_describe("Test basic freq API works after a reset");
> +	igt_subtest_with_dynamic_f("freq-reset") {
> +		int dirfd, gt;
> +
> +		for_each_sysfs_gt_dirfd(i915, dirfd, gt)
> +			igt_dynamic_f("gt%u", gt)
> +				test_reset(i915, dirfd, gt);
> +	}
> +
> +	igt_fixture {
> +		int dirfd, gt;
> +		/* Restore frequencies */
> +		for_each_sysfs_gt_dirfd(i915, dirfd, gt) {
> +			igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, stash_max[gt]) > 0);
> +			igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, stash_min[gt]) > 0);
> +		}
> +		close(i915);
> +	}
> +}
> diff --git a/tests/meson.build b/tests/meson.build
> index 7d2168be..3ebd3bf2 100644
> --- a/tests/meson.build
> +++ b/tests/meson.build
> @@ -202,6 +202,7 @@ i915_progs = [
>  	'gem_workarounds',
>  	'i915_fb_tiling',
>  	'i915_getparams_basic',
> +	'i915_guc_pc',
>  	'i915_hangman',
>  	'i915_hwmon',
>  	'i915_module_load',
> -- 
> 2.38.1
> 
