Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D21E87995F
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Mar 2024 17:50:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7771C112F21;
	Tue, 12 Mar 2024 16:50:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jKxatCsS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5274112F25;
 Tue, 12 Mar 2024 16:50:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710262238; x=1741798238;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=J4Hq+OeuDYuCiVww0trLK77KXAGH+Ixa0zi4yR6jm7g=;
 b=jKxatCsSrBhMh1bCVc0pW2ulMHkRaedASwbW/jLrT1iUcQFhhWWseWB6
 42WdkUtgZeYrvhn5R4Llo2FQcCoFvkhzo5zxSD+y5QteUpwrwQVX49Aqb
 R6WZXW4Rkcq2uqbvGIUoBvSxtzlQaq3LQd7PORg5g5LJPqynqO2ziAH41
 XfdCvjvfMH+F0sPKahjNUM8Wmx2G+0UI0ZcGhlEqE1UgqlYcbI7bVkyZ+
 IGsuUjkd0yCkUX704rrCCLVV88EqwCKFUu7OxL/iwvMcIifCQ07xZqKaE
 vQkyGoTtjUraYlcWKazl67+sBOicT7Z3ND76vEOfyf2n74f/kgDDm5oZL A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="4836419"
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; 
   d="scan'208";a="4836419"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 09:50:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="16210122"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Mar 2024 09:50:37 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 12 Mar 2024 09:50:36 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 12 Mar 2024 09:50:27 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 12 Mar 2024 09:50:27 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 12 Mar 2024 09:50:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XlVKp0K8Cudlp5wMtC/z7iTZg0BCSKMCp1jZJrQfwf01cGMYkFY6qKaUaOOAqGUQGlzoU1DhD4Ox3tGQGagxImocJ6lfH41WQYbaC2VZ0z+4BZxfImBWRaYD6LFy3O8tVLUTpTgqvf7xMEx4qMQOLoawIQOrDLZHAkOi6Jba0oi6OL7Gn/5h8/3Le+92ndcHQanGGgzjLW0CLrF0YBHUYysAQxNItJ2ouuQG0F+BJGn4nbTCT1/TuHvy+wMyRPGdoqKQV+CfyJMIUQ/LWtdTDjRNEaNHVUH8yAmkEA05Av2K84tOo3DM2NtBKqDhfsRHXoV44fpl8SgsoUeL+U4N3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1x4cJhQLMpPP7nQNetMM9KfSwSjSod9io1DLijgl5FA=;
 b=nAImri9/A/4bXLQY65S7RU6psOcdPLhC0+s15PNHF357NMwf9yx7vxbABrzcKBtrOhvy8jR4G2997hnCikNT0k/1hY8GZ9FJKtuvmqGSE02lVWdoj7b3N2urL42QygHPcHRBZZn3r+q0HaU8zslANVhls6NraSxZhLMwM137kx0mCijY+IC10B75mMdtLM/Ep9NcesD+Bq2YqUzEfPEfatpIEZmNlpJGNlpp8l+O/OmrLJG7sVxJKRtljYgPgxJthz2uy3euUnybBr/S7CSKEDhLfWIOEODrdmidCqyPFjiWkRkrfb74rkRJYPKJyg7Qj0SuAVAE/cqRW3l8zwaYjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by CYYPR11MB8408.namprd11.prod.outlook.com (2603:10b6:930:b9::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.17; Tue, 12 Mar
 2024 16:50:25 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493%6]) with mapi id 15.20.7386.016; Tue, 12 Mar 2024
 16:50:25 +0000
Date: Tue, 12 Mar 2024 09:50:22 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, Lucas
 De Marchi <lucas.demarchi@intel.com>, Stanislav Lisovskiy
 <stanislav.lisovskiy@intel.com>
Subject: Re: [PATCH v2 5/8] drm/i915: Add mdclk_cdclk_ratio to intel_dbuf_state
Message-ID: <20240312165022.GJ718896@mdroper-desk1.amr.corp.intel.com>
References: <20240312163639.172321-1-gustavo.sousa@intel.com>
 <20240312163639.172321-6-gustavo.sousa@intel.com>
 <171026193253.160672.4254959394542559311@gjsousa-mobl2>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <171026193253.160672.4254959394542559311@gjsousa-mobl2>
X-ClientProxiedBy: BYAPR02CA0021.namprd02.prod.outlook.com
 (2603:10b6:a02:ee::34) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|CYYPR11MB8408:EE_
X-MS-Office365-Filtering-Correlation-Id: 98db3937-0ae7-4699-4b2f-08dc42b4838c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: g5Hkyai0TQN4T/kVtWgrDoKcnnez2WttvzaTkZS6gcst7meKD0boeT9D77k0LB6ZqOGqDR1iQm4hqMzxFGGLahYEZKpEHTNqcvdQtqis3E6XFAFFimul7MCnO3oGIc1ZhLRN8b8gmGam6rEAul8AqxLWTisphhJLt+G02fOv4VFm5HOw8p3IaExbYxBQ1kyBowwC0sv8T2P8++6pXJC72WVk7g3on72KlRV614KCAHnzKGv/kv0ihMmR5Pdl3yVUdDWE51cxUDMmcRdx1fGVVAhfmFTaYfhcNJ1P7G7E6sTZeY1tEW38smcIqT5sJN3ptZKOkCLI/XR4fGM7C6QGc9rlysxgCyLNBLTHvcCNhzs/WD6NirBh3V9WZNemrc388PA38gctB1UgNAGLStzKAxILdL8DalS9rI/V5vFaAgAWdbFtV69Fen9ReYb0J0kMURBoWCR3TBJUYg7jAoN8rzO+IHbpndPw7czUiFyYsrpkhu4TA2qlrY6o+/p2jiqXNGMtZr7gOXLnog8L0eE7cjWHVl1jZ3f6/zKtnVtO4apKYNRE507NkNbkPW5AHYxFfiXREe4M2H8BV1RqyAPIqe8mfciCPNLG3qAfdEuHOWTtaoUzMkZyjHHsi3DIO72gD5Y/0fmLM/yKrFcqZOavEwiFsJDXFPBL8z8X+7hbzZc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?lhHPcfNbXPOuEQi/d8ByYiZmFQMuTwPqQeH4WjZg751tyzQ9wmzrinkRMaoX?=
 =?us-ascii?Q?WnpNL4+1e/LX0FLzpn5VMXJvtLG3lOfq/zGEhStDd344RdxRb9Cg0JG44nUd?=
 =?us-ascii?Q?DHTZ3qS0P87iYrXh04NbvV+ucmUFvDFVENjBJyXFW6ePHgRPP8QR5yzitCRz?=
 =?us-ascii?Q?SeJiqiElDjc019rr8BRxCTBAaaiSjGoe/cLQtHhUkaqcisfsqF7MAEqnR+5l?=
 =?us-ascii?Q?S5nHGqbL3cywmYrE4I4kvkfhxWWL/2nIuHbfL0g1kBcP3jw9pvKkHaUR97eS?=
 =?us-ascii?Q?ruOzTL6gCyn/K5NcnZ6dsHAr+D3gIw/2z/BXrjR6pOodcuLQmMGg5nUNfw6X?=
 =?us-ascii?Q?c+muiZcSLF+1JbeV26ykBjqqCRon6cAmr7YRPsKMxcQiYnLhxgD6O1CD6qY1?=
 =?us-ascii?Q?dd8t3RqNn4UiDxbvV5I9CcpEm8jQcFCPvbaC8iHM+W0iL0gxtTfQ0VseXL7d?=
 =?us-ascii?Q?+P0907d8cwgloGOKv0xQ8PWe78Yo/i3QCdDbyUSETiKSmxOpLpYywhlNInm3?=
 =?us-ascii?Q?6XW0sijHdrXugxOIHxADkSKCzwfDnEfqidZLiCaqU8I+H/KiVe84QUmJEicj?=
 =?us-ascii?Q?qEu/dahetbnVklOHgBTVdxAuISMP6QAL/lWRNeA4eCz5a9IzggiEA2bOEsLs?=
 =?us-ascii?Q?Iqlc/1LdoDp6LmyEEQIScR3FZNxRQ79YbOoCPMo8aGG3T1pfZm7m1dgO4M4B?=
 =?us-ascii?Q?jvG6v0N540ts+TmSXNa/UNKvJdPru23qUB/7ujMP6GLclkJ7ObVKe2c8W+Lv?=
 =?us-ascii?Q?jl3Dk8qG5aueuWlCPQbUB1ag9WNK+XCYoOIXceihbM0B60JCzh/CJaern+IK?=
 =?us-ascii?Q?bbYZOtYI2lHHTaa55Wk0wcTqvebAjQwAIQKSkTWVKHWkgCfqChCZufsUaQJ2?=
 =?us-ascii?Q?vlWxEdha0s+TbL5r/tGkJwvsARJyOWT7qkzo9f70lpw1qcTCPZgpZTwycg4v?=
 =?us-ascii?Q?/vaIGFKHj+eCv6ryDs92UtxR0qfuleglfU4lPoY4s3jIjdrjY5rTtVzKx27Z?=
 =?us-ascii?Q?Yt6/EuZzAz8ln1KBSnXcnZLJ1dSxsz5cjZvU9Jzlq0lgL0VjlCZ/c53dR0B7?=
 =?us-ascii?Q?+fcaf0rmjqW/b0YKooWUM0v+4DuZpT55QbCrtjgtEsuDuSuKfzzizTNp2EhT?=
 =?us-ascii?Q?r7UO+miBKC+LKzIaST/iY1k4hkSihFUo8ga56ctPPQ01RaU94WXB7hCXJcv3?=
 =?us-ascii?Q?bSXgDs9kKcNTV06tYVTt58Zss4+2t2voJg2gB9GHhVsEiHP5yFWnUADGmU3N?=
 =?us-ascii?Q?kfFXrMlkDbGil4H1W2dZ6KgAtUvVk2WLmUNpnjMV4ID6mHNzuLgPebN+6eqZ?=
 =?us-ascii?Q?fndxnOlGzhIuRnU9voUCWj7UwAA+XdpXBEYhPv0Nd3N7bZOtGE/k/UTbDdGr?=
 =?us-ascii?Q?q3MHihvfewVNevh3aJ0E95XX7bs8k6EZUIK0k3YjxYTgFTFdUswmnTAeasbF?=
 =?us-ascii?Q?yjNgDtcREnnAgztRqyPNdMeXOc0QTjuPo5vmBefGgno+pv+pn61YeWLFj2Vh?=
 =?us-ascii?Q?gQWflwrnrPh5pAuIknGs9R47oTAbuGgAF8HRWzyT4Osd1AUYdL7BIR9KXHke?=
 =?us-ascii?Q?JsvbHHFTOJ//47kNHwqnGPmY/KecP/KZFj5SRq7hugVtN8a93ui/7X4gptQ0?=
 =?us-ascii?Q?Rw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 98db3937-0ae7-4699-4b2f-08dc42b4838c
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2024 16:50:24.9844 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OURBdNE2ZieEVTmdhskLxT6iNmLyPcKZAXoKQvNTsLc7/0LV72MD6lcSFg8kUUAXOCAaehs0FoiM11gVZroNFqkAH4boRZAHmENybqsEdhs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8408
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 12, 2024 at 01:45:32PM -0300, Gustavo Sousa wrote:
> Quoting Gustavo Sousa (2024-03-12 13:36:36-03:00)
> >Xe2LPD always selects the CDCLK PLL as source for the MDCLK. Because of
> >that, the ratio between MDCLK and CDCLK is not be constant anymore. As
> >such, make sure to have the current ratio available in intel_dbuf_state
> >so that it can be used during dbuf programming.
> >
> >Note that we write-lock the global state instead of serializing to a
> >hardware commit because a change in the ratio should be rather handled
> >in the CDCLK change sequence, which will need to take care of updating
> >the necessary registers in that case. We will implement that in upcoming
> >changes.
> >
> >That said, changes in the MBus joining state should be handled by the
> >DBUF/MBUS logic, just like it is already done, but the logic will need
> >to know the ratio to properly update the registers.
> >
> >v2:
> >  - Make first sentence of commit message more intelligible. (Matt)
> >
> >Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
> >Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> >---
> > drivers/gpu/drm/i915/display/intel_cdclk.c   | 20 ++++++++++++++++++++
> > drivers/gpu/drm/i915/display/intel_cdclk.h   |  2 ++
> > drivers/gpu/drm/i915/display/skl_watermark.c | 18 +++++++++++++++++-
> > drivers/gpu/drm/i915/display/skl_watermark.h |  3 +++
> > 4 files changed, 42 insertions(+), 1 deletion(-)
> >
> >diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> >index 354a9dba6440..4e143082dca1 100644
> >--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> >+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> >@@ -39,6 +39,7 @@
> > #include "intel_pcode.h"
> > #include "intel_psr.h"
> > #include "intel_vdsc.h"
> >+#include "skl_watermark.h"
> > #include "vlv_sideband.h"
> > 
> > /**
> >@@ -1889,6 +1890,16 @@ static u32 xe2lpd_mdclk_source_sel(struct drm_i915_private *i915)
> >         return MDCLK_SOURCE_SEL_CD2XCLK;
> > }
> > 
> >+u8 intel_mdclk_cdclk_ratio(struct drm_i915_private *i915,
> >+                           const struct intel_cdclk_config *cdclk_config)
> >+{
> >+        if (mdclk_source_is_cdclk_pll(i915))
> >+                return DIV_ROUND_UP(cdclk_config->vco, cdclk_config->cdclk);
> >+
> >+        /* Otherwise, source for MDCLK is CD2XCLK. */
> >+        return 2;
> 
> Matt, this function was updated as a result of updating the second patch
> (now "drm/i915/cdclk: Add and use mdclk_source_is_cdclk_pll()").
> 
> Since the update here is functionally equivalent to v1, I took the
> liberty of carrying your r-b over. Please let me know if you have
> concerns here.

No concerns; you can keep my r-b.


Matt

> 
> --
> Gustavo Sousa
> 
> >+}
> >+
> > static bool cdclk_compute_crawl_and_squash_midpoint(struct drm_i915_private *i915,
> >                                                     const struct intel_cdclk_config *old_cdclk_config,
> >                                                     const struct intel_cdclk_config *new_cdclk_config,
> >@@ -3278,6 +3289,15 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
> >                             "Modeset required for cdclk change\n");
> >         }
> > 
> >+        if (intel_mdclk_cdclk_ratio(dev_priv, &old_cdclk_state->actual) !=
> >+            intel_mdclk_cdclk_ratio(dev_priv, &new_cdclk_state->actual)) {
> >+                u8 ratio = intel_mdclk_cdclk_ratio(dev_priv, &new_cdclk_state->actual);
> >+
> >+                ret = intel_dbuf_state_set_mdclk_cdclk_ratio(state, ratio);
> >+                if (ret)
> >+                        return ret;
> >+        }
> >+
> >         drm_dbg_kms(&dev_priv->drm,
> >                     "New cdclk calculated to be logical %u kHz, actual %u kHz\n",
> >                     new_cdclk_state->logical.cdclk,
> >diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
> >index fa301495e7f1..8e6e302bd599 100644
> >--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
> >+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
> >@@ -62,6 +62,8 @@ void intel_update_cdclk(struct drm_i915_private *dev_priv);
> > u32 intel_read_rawclk(struct drm_i915_private *dev_priv);
> > bool intel_cdclk_clock_changed(const struct intel_cdclk_config *a,
> >                                const struct intel_cdclk_config *b);
> >+u8 intel_mdclk_cdclk_ratio(struct drm_i915_private *i915,
> >+                           const struct intel_cdclk_config *cdclk_config);
> > void intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state);
> > void intel_set_cdclk_post_plane_update(struct intel_atomic_state *state);
> > void intel_cdclk_dump_config(struct drm_i915_private *i915,
> >diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> >index d9e49cd60d3a..4410e21888ad 100644
> >--- a/drivers/gpu/drm/i915/display/skl_watermark.c
> >+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> >@@ -3057,6 +3057,8 @@ static void skl_wm_get_hw_state(struct drm_i915_private *i915)
> >         if (HAS_MBUS_JOINING(i915))
> >                 dbuf_state->joined_mbus = intel_de_read(i915, MBUS_CTL) & MBUS_JOIN;
> > 
> >+        dbuf_state->mdclk_cdclk_ratio = intel_mdclk_cdclk_ratio(i915, &i915->display.cdclk.hw);
> >+
> >         for_each_intel_crtc(&i915->drm, crtc) {
> >                 struct intel_crtc_state *crtc_state =
> >                         to_intel_crtc_state(crtc->base.state);
> >@@ -3530,6 +3532,19 @@ int intel_dbuf_init(struct drm_i915_private *i915)
> >         return 0;
> > }
> > 
> >+int intel_dbuf_state_set_mdclk_cdclk_ratio(struct intel_atomic_state *state, u8 ratio)
> >+{
> >+        struct intel_dbuf_state *dbuf_state;
> >+
> >+        dbuf_state = intel_atomic_get_dbuf_state(state);
> >+        if (IS_ERR(dbuf_state))
> >+                return PTR_ERR(dbuf_state);
> >+
> >+        dbuf_state->mdclk_cdclk_ratio = ratio;
> >+
> >+        return intel_atomic_lock_global_state(&dbuf_state->base);
> >+}
> >+
> > static void intel_dbuf_mdclk_cdclk_ratio_update(struct drm_i915_private *i915,
> >                                                 u8 ratio,
> >                                                 bool joined_mbus)
> >@@ -3574,7 +3589,8 @@ static void update_mbus_pre_enable(struct intel_atomic_state *state)
> >                      MBUS_HASHING_MODE_MASK | MBUS_JOIN |
> >                      MBUS_JOIN_PIPE_SELECT_MASK, mbus_ctl);
> > 
> >-        intel_dbuf_mdclk_cdclk_ratio_update(i915, 2, dbuf_state->joined_mbus);
> >+        intel_dbuf_mdclk_cdclk_ratio_update(i915, dbuf_state->mdclk_cdclk_ratio,
> >+                                            dbuf_state->joined_mbus);
> > }
> > 
> > void intel_dbuf_pre_plane_update(struct intel_atomic_state *state)
> >diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/drm/i915/display/skl_watermark.h
> >index e3d1d74a7b17..fed4d12df584 100644
> >--- a/drivers/gpu/drm/i915/display/skl_watermark.h
> >+++ b/drivers/gpu/drm/i915/display/skl_watermark.h
> >@@ -58,6 +58,7 @@ struct intel_dbuf_state {
> >         u8 slices[I915_MAX_PIPES];
> >         u8 enabled_slices;
> >         u8 active_pipes;
> >+        u8 mdclk_cdclk_ratio;
> >         bool joined_mbus;
> > };
> > 
> >@@ -71,6 +72,8 @@ intel_atomic_get_dbuf_state(struct intel_atomic_state *state);
> >         to_intel_dbuf_state(intel_atomic_get_new_global_obj_state(state, &to_i915(state->base.dev)->display.dbuf.obj))
> > 
> > int intel_dbuf_init(struct drm_i915_private *i915);
> >+int intel_dbuf_state_set_mdclk_cdclk_ratio(struct intel_atomic_state *state, u8 ratio);
> >+
> > void intel_dbuf_pre_plane_update(struct intel_atomic_state *state);
> > void intel_dbuf_post_plane_update(struct intel_atomic_state *state);
> > void intel_mbus_dbox_update(struct intel_atomic_state *state);
> >-- 
> >2.44.0
> >

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
