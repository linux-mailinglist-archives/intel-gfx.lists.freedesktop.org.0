Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 387ADA5D0DE
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 21:40:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 112E810E683;
	Tue, 11 Mar 2025 20:40:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CK2eVlec";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E118610E681;
 Tue, 11 Mar 2025 20:40:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741725620; x=1773261620;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=i0s/CfTXkEbzv0y414fw860S7abpP5kPUn1eWs8s+lY=;
 b=CK2eVleclDVWMBz6WqkO/LQAJeSA+n3WOgCwS5fAF9f08ydwR7YHS2Pj
 GLoEjFa4nuVD2S2nwZP558VNpJ4/aU+y3fzRbDu7oWcIHEQGa4j+Tz7Le
 GPFu0ggsjMnA415VfR9JK2eOSzDLTXvh6OgJH3ZF+DjVF2EHrK13BTFTo
 sSp26uF1tn0AM7oz0n9z5CBngLazyMFgDAPgAB/fG/1gSHA+qF/ZpGnt4
 iKFRcX7eMMwA+PAUO4Rnmz+E4zUxPw23k53SZtRGlFPR9ndv4bQjA40rq
 56xR2s5X9mcVX5yKvaiB/dPUJHW+te59UJOTVCbpzUS0m+J0x43S7aD4P g==;
X-CSE-ConnectionGUID: ULWtHZ0CTjyqbkmqYhSEPQ==
X-CSE-MsgGUID: Mraup+lfSTKLfwO0/LlwMw==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="42913991"
X-IronPort-AV: E=Sophos;i="6.14,240,1736841600"; d="scan'208";a="42913991"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 13:40:19 -0700
X-CSE-ConnectionGUID: Vk4Su+qfTw2BnHi7D0s/qg==
X-CSE-MsgGUID: FIEalPFGQfmw0PZFAByAQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,240,1736841600"; d="scan'208";a="151234140"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Mar 2025 13:40:19 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 11 Mar 2025 13:40:18 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 11 Mar 2025 13:40:18 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Mar 2025 13:40:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RjAOE0xL+HCB5Ka9htN8smfLKuP6kPupoC80fVYkd8iCy9RkkfeCgXh6OVSv+KDR0r2zRS4O/iuH95bij4faoAMi3lYvF00ACE0GhscWJYGnHem6T+YReci87jLTjU72XOPm8shVMNVRRmU+UmuKJPRk+YCq7DXQPoW4dZtDqjX/WurYXPihwRd5i5g7Ed02B3lrF+7q+3mTCoR0VPq8Rs1UOcY4EpZ2W+IlKnC2uAkeKevSPU2cgX6rx29hc1Exw7xRDzLyJC6dverENODMtE5z5YW41+keiLZgrhCLdZuak+/L82LzYmwOLcedUa9PqZkqaDo2a42oKeGRb36mNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WjwglF3okAiBT7v8zDoJL/stX2h66yLIq2+GeSeMWYg=;
 b=FMEoenOrqTFL8CLAGTnYzrisjUKji09Yy6Xq22rCFNww5JzfFwQjOIwCXkfj4m6Glnds2Gk7UtEa71+0Xgx9M06wXjP0SdFdnyyWujvn4NrhMK7Juh+Rh5yMRQwaC4UFhX0BjPi8tA0gqzGZv7/m5KJ0lYTo6x5g0azBlFNxRD5pJYgfMpjaM3d/SIABMKd5E4f8hH5yUmVWYmBvUN6SAEAYF8STjcFLdkWpuDDv2Y/+kEkD9j/hKVgGYKi1nxZjMcAofN+GU+iHvo+gWJFxaVJZA0KGBLDSoWFU3w6aPyLSIGy06rZV5erqvz8b3FBzjp0tnZRgOu2R1qoPUEXwgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by IA1PR11MB6124.namprd11.prod.outlook.com (2603:10b6:208:3ec::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Tue, 11 Mar
 2025 20:39:24 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%4]) with mapi id 15.20.8511.026; Tue, 11 Mar 2025
 20:39:24 +0000
Date: Tue, 11 Mar 2025 16:39:20 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <imre.deak@intel.com>, <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 3/6] drm/i915/display: use display runtime PM interfaces
 for for atomic state
Message-ID: <Z9CfeCYz3cgxC56u@intel.com>
References: <cover.1741694400.git.jani.nikula@intel.com>
 <1e3cf97853b3214fe56eea345c3e6226adde9e83.1741694400.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <1e3cf97853b3214fe56eea345c3e6226adde9e83.1741694400.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW3PR05CA0024.namprd05.prod.outlook.com
 (2603:10b6:303:2b::29) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|IA1PR11MB6124:EE_
X-MS-Office365-Filtering-Correlation-Id: 95249abe-aacc-47c7-b299-08dd60dccf09
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?zzbcT1yyzjVUTFLQVOdUSKiL4ppkPeoUjurBmRjD/ISq08SARBY8tAda/6EE?=
 =?us-ascii?Q?v2C9jVBWDS3p01NzJ3w6UilIM+g1gzSIZu/aWZohA3RdFV7Cxpgwdu40A0Js?=
 =?us-ascii?Q?jQSgn/TPWCGWCbKp2Oy+q42r2jt0ygYCmpEgrYiZMwf26HtS/bwqE141mrqh?=
 =?us-ascii?Q?XxfZI50n/0I3Qi7gOTZibvUOIpgnn0RQg+g2X5ZSOsdf4s3Ttw1BYCyuVX+o?=
 =?us-ascii?Q?d+TMcHNbXBgCdnrBzxYZlU/imVk3V/ghnVYS0su6r31WU9QYZfdBW6oYSNky?=
 =?us-ascii?Q?x7fiJ/mJv9kVPVtwd+VYbkFk+GfZ55Fcm9/z4F5ncotlv4xKRDmB9fQIAzIG?=
 =?us-ascii?Q?bulcp82kN/QEOp7Oz5XI55T61F9LJS7Bb/8I7CKSYAzkzIJl6VJYg7eI4ICx?=
 =?us-ascii?Q?8lNkC1BBaeg2UDDgCaq9533jbBxRMw+Pba1Bp8VP7P6S/PXnsUoaN+QcTduC?=
 =?us-ascii?Q?oxSdZCoJCSM5Nd7sTyDR1A2B8UOXDllqc3lnDRMc6y9BA4eTUMbrhAKrqjg/?=
 =?us-ascii?Q?uCwOWcBAyApDH6MwOocRU1z1ohbOXLW8l+5wpqoGKDv5lyRHW5PuA9HmLkp0?=
 =?us-ascii?Q?7W25sKOnbF79QT6g7fizhpMKj56wT7FvlSi+3hKoO0MFXxaqi0tcsIZrIYGD?=
 =?us-ascii?Q?yi1zrk3lMjyv3odmLF40UaoA2Tn2bHEV72wLJHCCJsEINh5oSGLxpcTE3o3Y?=
 =?us-ascii?Q?3ZyU87rLDqT4O6MrLBNnlDv6EsoQZ6tEI3wv81krci1BO8+o/X+irgwmYUSd?=
 =?us-ascii?Q?ggWYNSkpivAGyr8yNtdL1Oc6Tnv01wP1gTEcTDtYPvrxfWPohYo9W9AyrwgW?=
 =?us-ascii?Q?oWfYzqQBLfCuftdxDVPi2IJFKHWAPeFMDzuOP3m1IpsL+fO11XNf1sAEE5ON?=
 =?us-ascii?Q?a+YNvdm5U0G62pCGjVG1is+bP8dLriAI2aAvBPtDemC/ltOKCHogsyEo40Ih?=
 =?us-ascii?Q?OvsoSU8gqnBLLGivwTRUmiykgxECohEwkICp7AxQNXBJlJvEb8C6XX1ax7N1?=
 =?us-ascii?Q?9RVkfDrsai1lOQrXerk4eQkgVjNDRw6FBKgxZFmWVdY3lrIGyrBqHXpGMA0u?=
 =?us-ascii?Q?P04t6Yk4YRv/ONsZlxRCEGJf0Oht470u9r+fL38wPGTOleTt64BD0mpzkqX8?=
 =?us-ascii?Q?B7k+HaIHZmqy96abGsF/Sdu4FQKoplYyhcciLVpQrJ7a+R7JEhFmMSA5Y5/2?=
 =?us-ascii?Q?RvFtiM7sx+BK6EXXSnNx8omRQuaEXOhkk8snKYT647HZuWy/z+unNUpLjFYG?=
 =?us-ascii?Q?iQK7mNptsumbkuQit+JyirmQZuBAEW8owtfFGlWazHoh4iMVMdVtXKBvaiNK?=
 =?us-ascii?Q?CQi64KXeGCxjhxbnL/95RYSZDLyN8nWUQp84DAYjHzrKbdRM+jq/tSakxjB0?=
 =?us-ascii?Q?ZN2ejJ4CuOfT3Wm/AmP1RrCuwWMr?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?br3nJGz+DNgGnv2rAIcFBzMuEcPiPTdNIAnumrN5RlQn0AhzM4oAjnpsbre1?=
 =?us-ascii?Q?+BqATdX/O7eAvzpRkiFDMqODEbR6oeERI4NK8ahdujpr3q21hJ/tz76vOyqD?=
 =?us-ascii?Q?soEGUyUXbgaT00yHOp4DxwQ7ZOtc+oj/unVYdc9RUGcpldLwi305q77kCim3?=
 =?us-ascii?Q?v44rQEakLzdNAUcGtYpGaiuZh8mNPxnhvmtBHzm0R53LWxogMDODljjOMQCy?=
 =?us-ascii?Q?VS+9oM8A7jOnx47BuoOSnmMDS40H0/KS6yr02Aw4jIlBsCO9rJ1z+xZjvs8s?=
 =?us-ascii?Q?SJN/j5yoeSVonKrcD16vvsVf3XJGkYVF7shO0wl195x7icCN2XaLYLVuKk20?=
 =?us-ascii?Q?5kChUMVg5dgSEVB1lBaHVKnjZDNqfFMDAWwy0JdLCOXtYQpDmhA3aaV5DpRQ?=
 =?us-ascii?Q?9LhsB/Sku1R5i5IgaqLsg6e0C+ml8C7TJkMQJhMx6LpodA2RFZRFmom8CPbv?=
 =?us-ascii?Q?soBeFyAMbTU1sbxjB53AxorxYeBi/29HSlTSCBgzgONUQ5cFzuJk5+AOF9En?=
 =?us-ascii?Q?kXNm/tLgNgqS+3rYnmhvSUQ8UrafWXgTSyhSQILn5vMWotV14MlbmQ8/OGK/?=
 =?us-ascii?Q?fMXiiGq/Z1z9r/iSysE57B58lWr9/Evi5ZiU6M1E0Px4MdPtG81wssppS+rx?=
 =?us-ascii?Q?zzcSuHyn5Oio4Ug2WlD8s705JgBl3ijHQAuemyJ6ubkcyW2OUp5nLctT0yo7?=
 =?us-ascii?Q?kPfCxTBmfhvenlKSMQSffSVJuiKkNOnCvvpkEpdPHZ4jehuHVckwcD+SMyDd?=
 =?us-ascii?Q?fwJqThJYoro8w1syEOEEoovx8Xxrd2icfmSS7OEc7nrrNqfKikSLQwf4smYW?=
 =?us-ascii?Q?zJBuUb/4cSWbq7AILKTY6bqblI6qIWNlfRGzOkFIlUbVt4wf1yEWLcIcQyVP?=
 =?us-ascii?Q?cnr8JASKv/oKeJCDxDQeyIm9SrnzFPDI7dFEinx50zA/1xdzW9JDug9K1eKX?=
 =?us-ascii?Q?Nn41ofpslnV8omHE0w3q3Q9IOOYtqdcADeS7qT9ndgijKnCyn3w3yBwh5YkC?=
 =?us-ascii?Q?e/fd+/xnyYTjo/vaYunULss22LwmVAu7Z53MXYpiDbmt3SWnOmxRqhlusKuZ?=
 =?us-ascii?Q?d/u1O2w2M3KkhWYjIvPNdbNr/lbcjPSzlAMPS/MXWxI0k+wNtOb/pjGg3AIs?=
 =?us-ascii?Q?nxgUtvNMafXBhBkKY5OFlENSwoPpuEUg22Z2TUFH7UZMVn+i5bY2fUyR4S4D?=
 =?us-ascii?Q?DMi1B3Ev10HpXZoJo3PnxYLdqVlw4dp83IoFz/qybIWIISvyjCL8+REBG7Od?=
 =?us-ascii?Q?bMs3yi3U2XPn0DH5/034jz6imUM+/kSQYzkh4grC2JJYt12FLfCmwLQLxEiI?=
 =?us-ascii?Q?fkhRAVjfhhrgFnqRwWpAZQRfcSOGPRv4iyXwVImCiFiV+adY5Sae1upkYQxO?=
 =?us-ascii?Q?KHXtFiCUeqqrz9tSQ0VWxTfxnHTRNUd/aSrWinMU0iU7R5r7NU/szUt6guJQ?=
 =?us-ascii?Q?HFvLodet05xdgOPtRsO1Kmn1RsCP+49REV5p/MYMcswX2lkICTdXdFRCj8r+?=
 =?us-ascii?Q?ZcliLRKEB+Eo3bhxNuPRC6fiGIvrtYsM+Xktthd7a30XFgWRVIQ98xqdtPk8?=
 =?us-ascii?Q?lG8NjKI4CAJ5CWCvvKvP2V3ZSwUG9lsAIoZ27uT2iUn4Y3xWjVHxLBJqLews?=
 =?us-ascii?Q?NA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 95249abe-aacc-47c7-b299-08dd60dccf09
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2025 20:39:24.1089 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: g6vkLzmnGtGQ3kqtFsW2sGSsIyW5ei25/VyWquudvgpeOHuHZ7lJ/ySMy3nB/fC/zhOizOgjmBnRvam0PR2kIQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6124
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

On Tue, Mar 11, 2025 at 02:05:37PM +0200, Jani Nikula wrote:
> Convert intel_atomic_commit() and intel_atomic_commit_tail() to use
> display runtime PM interfaces. Also convert the wakeref member type to
> struct ref_tracker *, which is the same as intel_wakeref_t, but without
> the typedef.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c       | 12 ++++++------
>  drivers/gpu/drm/i915/display/intel_display_types.h |  2 +-
>  2 files changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 3afb85fe8536..b852ffe94a10 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -73,6 +73,7 @@
>  #include "intel_de.h"
>  #include "intel_display_driver.h"
>  #include "intel_display_power.h"
> +#include "intel_display_rpm.h"
>  #include "intel_display_types.h"
>  #include "intel_dmc.h"
>  #include "intel_dp.h"
> @@ -7229,7 +7230,7 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
>  static void intel_atomic_commit_tail(struct intel_atomic_state *state)
>  {
>  	struct intel_display *display = to_intel_display(state);
> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
> +	struct drm_i915_private __maybe_unused *dev_priv = to_i915(display->drm);

hmm... we will need to take care of the unclaimed mmio infra at
some point... that is entirely display anyway... it should probably
move to under display...

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

>  	struct intel_crtc_state *new_crtc_state, *old_crtc_state;
>  	struct intel_crtc *crtc;
>  	struct intel_power_domain_mask put_domains[I915_MAX_PIPES] = {};
> @@ -7443,7 +7444,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
>  	 * toggling overhead at and above 60 FPS.
>  	 */
>  	intel_display_power_put_async_delay(display, POWER_DOMAIN_DC_OFF, wakeref, 17);
> -	intel_runtime_pm_put(&dev_priv->runtime_pm, state->wakeref);
> +	intel_display_rpm_put(display, state->wakeref);
>  
>  	/*
>  	 * Defer the cleanup of the old state to a separate worker to not
> @@ -7515,10 +7516,9 @@ int intel_atomic_commit(struct drm_device *dev, struct drm_atomic_state *_state,
>  {
>  	struct intel_display *display = to_intel_display(dev);
>  	struct intel_atomic_state *state = to_intel_atomic_state(_state);
> -	struct drm_i915_private *dev_priv = to_i915(dev);
>  	int ret = 0;
>  
> -	state->wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
> +	state->wakeref = intel_display_rpm_get(display);
>  
>  	/*
>  	 * The intel_legacy_cursor_update() fast path takes care
> @@ -7552,7 +7552,7 @@ int intel_atomic_commit(struct drm_device *dev, struct drm_atomic_state *_state,
>  	if (ret) {
>  		drm_dbg_atomic(display->drm,
>  			       "Preparing state failed with %i\n", ret);
> -		intel_runtime_pm_put(&dev_priv->runtime_pm, state->wakeref);
> +		intel_display_rpm_put(display, state->wakeref);
>  		return ret;
>  	}
>  
> @@ -7562,7 +7562,7 @@ int intel_atomic_commit(struct drm_device *dev, struct drm_atomic_state *_state,
>  
>  	if (ret) {
>  		drm_atomic_helper_unprepare_planes(dev, &state->base);
> -		intel_runtime_pm_put(&dev_priv->runtime_pm, state->wakeref);
> +		intel_display_rpm_put(display, state->wakeref);
>  		return ret;
>  	}
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 99a6fd2900b9..7d9cc430a6b8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -581,7 +581,7 @@ struct dpll {
>  struct intel_atomic_state {
>  	struct drm_atomic_state base;
>  
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
>  
>  	struct __intel_global_objs_state *global_objs;
>  	int num_global_objs;
> -- 
> 2.39.5
> 
