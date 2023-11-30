Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F8C7FFBFB
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Nov 2023 21:08:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A96410E02B;
	Thu, 30 Nov 2023 20:08:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 427 seconds by postgrey-1.36 at gabe;
 Thu, 30 Nov 2023 20:08:30 UTC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B73810E02B
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Nov 2023 20:08:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701374910; x=1732910910;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Ur4JoG8R2Mp0PbDWr/xrTh0zwk8yF+IcNfkNw2lftx8=;
 b=KHGDc9hke4I3XWMp8IaUbWBQYnuzAHi8Bj6441IK4GviM2twb0hEx7l+
 vHTmlFYynvZwMB8KIBs2LqbmcVFru4gaMdjturmhby9W66NkRqIj6e01L
 xkfi92m4MdI0K8SjkwLzIW36LUyZNBxID8REFC0vR2ufr0//LylP5/Xj0
 RSIUz23p4tU+rhSjaPVrvuNtoWUMNDHB/gEC82FmUDIu3wOHUhpkiMsxc
 W4iEB6MjuaDyauTOJ3dgPFqiTyOc80M5RxSdHjNBIvd3D2UjUi2bK0iSN
 Og6249UvY/3kBmfWdoNrc2wK5FwlKVIU3kXQCG1HOYphjOzbhhb2qyQRP g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10910"; a="386835"
X-IronPort-AV: E=Sophos;i="6.04,239,1695711600"; 
   d="scan'208";a="386835"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2023 12:01:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10910"; a="835511447"
X-IronPort-AV: E=Sophos;i="6.04,239,1695711600"; d="scan'208";a="835511447"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Nov 2023 12:01:20 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 30 Nov 2023 12:01:20 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 30 Nov 2023 12:01:14 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 30 Nov 2023 12:01:14 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 30 Nov 2023 12:01:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e9xKpjPVIO0H/mw1o+Xn7aRKGDFM5Tt/vUJJu1Duw3BmOC1YPZQXWleaXJg8SRSG5w7cizotbshRDc+d6cK98g6+4axhyZNrlqQBpk1we/GjIdWOh8vLmKbnAOtDxuEYp4XALPuurODMzLYKiEQepsiLPSo3ETy9nj16L8OFNAeIZh1BXl2/syUcutQZn5iAQwc5pAlEQttynB8Z4PnzNJFv7ah1p5/1wQo1EYFNB8oi0mkHOGoMXaG7WPSo7KoidvJ9EDKX2AOyDuHj0D5yfhEtH7QYTyg2dc7xNWnnIQoDyMdVWY3prTbqVPQuSIw43Hj4s6Jha+YVsRKJC0Y/ZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hvHW3SrA+3MsoGrxVLC/FOI5e1QAPszTQQMewR+J65k=;
 b=j/Ub9pZgsBqqobQnsnx9TBSzPjlOvmNsE/39CDOirDQhDuNuaRTzY2D+kwDfx9nNkNGzJpNmKsD41oIfuUJwL4Su/FkYRJTI8JldPpLSZqYHPhmg4P81Blh2BYVGfhcOZQNAp9vHlAljnJAAbGHYrcYwnd5p54tQtbmjJR3k9WmVj4sQ6Hc/KtDbR7il6xkciIG7yyvP8K4YhSDV/SMjf29ZYYmZC5tf0629IE9XPdbsuDUlkBfQcnTAkTBXdOiNm1l+37S9d+l1v/K5ywEwfYy8nqUL97bEcAu/XulArowrvsD3M5sh+O9b8EPVefN38Ci3LTPyrCK6IXXLEd1ZAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH7PR11MB7606.namprd11.prod.outlook.com (2603:10b6:510:271::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.29; Thu, 30 Nov
 2023 20:01:04 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::ada2:f954:a3a5:6179]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::ada2:f954:a3a5:6179%5]) with mapi id 15.20.7046.023; Thu, 30 Nov 2023
 20:01:03 +0000
Date: Thu, 30 Nov 2023 15:00:59 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>
Message-ID: <ZWjp-8uYFQ6dXt5o@intel.com>
References: <20231129205122.3464299-1-matthew.s.atwood@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231129205122.3464299-1-matthew.s.atwood@intel.com>
X-ClientProxiedBy: BYAPR05CA0055.namprd05.prod.outlook.com
 (2603:10b6:a03:74::32) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH7PR11MB7606:EE_
X-MS-Office365-Filtering-Correlation-Id: 4faa1def-2739-4736-8571-08dbf1df14e4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QjBjViceX7i7Ju3XRKR51+VN5iCo9DkNrMYrNqXqlibLwSz6v22UCBBH8nrJVU+LAjD1PqfHoefFvimg+ubSNDPX5DkB9B3gIn8gWcHLkddE5sZOyQnA0So7gtxAFxB6p9ZFzzQgBHeT89Nz6Ju5HhdeRiusfCk0sHgSGpATi0H/xfoa9er3htNk+s2uGZujUeq/dqu2oXCvbyz4u3WTWWov+1vnSD9NaAZiCBh4HHLECPL/W4cvqqgLBXmQWCTEMw5AAeyHICryx1gSfN3QIMcjueqZC9iqCxUFjSJyoBfX40f1pMzJi4vhr2NmOGEOmDr16jDnesLiq4r+3flC3lzCo3bO1qjuZwuFKWRZZ0Co6whORslA48skdqZDbour0QgJrNvlP5+652W3E7T2apkgCNmM+A8ood0w1FShQmNgbXcVxRYqV1yHN9o1stYQ1BQizSX+39z3LMR07KxPk3ydmLO0AeyAJiPLFek3yeG01nqk4g+obWo1HEyK6L1yHDasIZYSH2GUPpL8T/N1yJwKwHT63suStGenTHk99znLMBoblh3GHWCjjsYIBOKM
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(376002)(39860400002)(396003)(346002)(366004)(230922051799003)(451199024)(64100799003)(186009)(1800799012)(66476007)(26005)(2616005)(6666004)(6512007)(2906002)(6486002)(8936002)(6506007)(41300700001)(5660300002)(44832011)(83380400001)(66556008)(66946007)(316002)(6862004)(8676002)(37006003)(4326008)(6636002)(86362001)(82960400001)(38100700002)(478600001)(36756003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?RMGx+mmPyJjYgkX9rG9bWnks9i1oY2f6VNGlyDuDXKBjdmzjWcR70EqZ9lCc?=
 =?us-ascii?Q?CanyhrBTyyDHEZwgsOUsGx2UB6JeN9fqR1KADFh8hbQ4aXPBfzzEg9IiapzT?=
 =?us-ascii?Q?wHvpa7LA9bqBifLyjwEH8cHGzaz57u0d980l8AsU3+1WtVsTij4wfuIl2Caf?=
 =?us-ascii?Q?uZvLlKEcMmOh4a8MWS5Nw68DwvSqBlPiZ8YaO5OZF8oNKvahgwTJOwAyYOoW?=
 =?us-ascii?Q?hRRuJw/M6WS8uMfH+e6KvwusqVzWj53rOrtsCgyed8raPXM7srEtKmGcNCbc?=
 =?us-ascii?Q?whOfErsP06XEfjUXlWr0BIjS4nGtN0aSMbIa7cUUuGwygtsqYc6MEItD28oL?=
 =?us-ascii?Q?V6YmWs67kJVl0xDyTleJaNqEmEhnbUkCDbHP821kDnDylo5gO/qS+6dvp2Og?=
 =?us-ascii?Q?VW5T59WlLr2/vBCELatlSKH/NykjqApBkhrQA9Y3T6/b53ZijM/rlWRQr6XV?=
 =?us-ascii?Q?mdKJ2edJg5CUTxBbHtwVxEKTYizd2wM2zyXupQ3fyEf3l68K/KWTC8/IM39t?=
 =?us-ascii?Q?oO93uNrQB4QwcYxnt4dJPidP6IbuXJSqP3u0/f/1JKhPsFR2oVXywx+zpek0?=
 =?us-ascii?Q?AQUbBmr1sFCD/bOwF8FFySG2KV/UkqJrtFhfSrmEdmGcGROoTuzCH+EFxo+K?=
 =?us-ascii?Q?yMgMYFuhRzozsEPrZ9y8MZIEMQGdk+dWAzgGcQoMjEv8NgLLurSK6IqO3jQk?=
 =?us-ascii?Q?8tBh+oFonKJfIbk/o7NkY2BmPBrhYaf+YDTAUZQLzuYU3rdXaC8WpRvHMEuB?=
 =?us-ascii?Q?XnbpJw0zYFGf/U0k+1l3NcppgixQ7pp1ADv+9VPd7dXp3nLclDfaV1pkdWJ7?=
 =?us-ascii?Q?OI4QJ07BPomTT3tDWah9UOhG5/PBxsijfBymk14QlCskoal+3+uj12XqN2Ua?=
 =?us-ascii?Q?SqHjL45+eq7F4YMNVGFnWF0R5jHqDBa+M4Q3j3VAJrMHIHqhY4PQj8BwaM5f?=
 =?us-ascii?Q?cP+0TnMHygQfKtUr9tIp49K17mbQB4gIc2urg4WR3F6nrcvhSC3+ix7sCM+U?=
 =?us-ascii?Q?dOoHci9EFI5l6zMhjrop3K4HOB2f6sCgpaSeuiSSBUEgRhBL9p6sJJtAea5y?=
 =?us-ascii?Q?uJ9B35XrMyXplGFJQe0JzDMlBLpOzSE88sNGmp8ygpN4JHmN8xA3ZQB8SLE+?=
 =?us-ascii?Q?EY7zqbT8IVyahJ93+hzUSwKEYs3kcC5ochDmbS+pkFBVZ5MrutPDoJUS/bah?=
 =?us-ascii?Q?OfbmMl6a7qdTtlGZxpKLHCQHv1/BSWzJVmTGRLLbuLCfj0u9DiS5e88T2UR9?=
 =?us-ascii?Q?+DCqAGEADPnuaxSP4BFCj1ozruoe30W594AtLN/qcQPv2IOcXCUMWttu07vy?=
 =?us-ascii?Q?LSQwdis/kcLDyq86h+B+e5s1kysIgtUpfApvWPa1h8G/ASH2XiytAEStMNXr?=
 =?us-ascii?Q?Lc1qMPVMUXG4qi2s2R0TqmtviePmA4SlTR7ZJMR4WDs8SUzbYOqbvtLmN9V8?=
 =?us-ascii?Q?CjPTYry6s/gb9avM2vk9qJ73diBp/OzEnrK4gEI52GTTtsadFCJNKbYIAFj9?=
 =?us-ascii?Q?QkHIKiB8WXep+ORYx64SS/ykakLbPmLR2Zvz7dPRGviPBcR+cWwHGuac5e40?=
 =?us-ascii?Q?2asOqbNUvB6fX/60Io4WWeHK1XkgI8511kj7+xAYpr/aklyzkHCs9NzMeMP5?=
 =?us-ascii?Q?yw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4faa1def-2739-4736-8571-08dbf1df14e4
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Nov 2023 20:01:03.6832 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aivnhCA9cK0jOX/h6SX3EIqicqoEiojPFER0U700YJrtwFw5060PbuZdgOiI9Ix4R2Jh62r6mwkgPCQQfRtLxg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7606
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Patch v3 1/2] drm/i915: Move reg_in_range_table
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 29, 2023 at 12:51:21PM -0800, Matt Atwood wrote:
> Function reg_in_range_table is useful in more places, move function to
> intel_uncore.h to make available to more places.
> 
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_perf.c    | 13 +------------
>  drivers/gpu/drm/i915/intel_uncore.h | 12 ++++++++++++
>  2 files changed, 13 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index 7b1c8de2f9cb3..5e5dc73621379 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -219,6 +219,7 @@
>  #include "i915_perf.h"
>  #include "i915_perf_oa_regs.h"
>  #include "i915_reg.h"
> +#include "intel_uncore.h"
>  
>  /* HW requires this to be a power of two, between 128k and 16M, though driver
>   * is currently generally designed assuming the largest 16M size is used such
> @@ -4324,18 +4325,6 @@ static bool gen8_is_valid_flex_addr(struct i915_perf *perf, u32 addr)
>  	return false;
>  }
>  
> -static bool reg_in_range_table(u32 addr, const struct i915_range *table)
> -{
> -	while (table->start || table->end) {
> -		if (addr >= table->start && addr <= table->end)
> -			return true;
> -
> -		table++;
> -	}
> -
> -	return false;
> -}
> -
>  #define REG_EQUAL(addr, mmio) \
>  	((addr) == i915_mmio_reg_offset(mmio))
>  
> diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/intel_uncore.h
> index f419c311a0dea..1e85eaec1fc5a 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.h
> +++ b/drivers/gpu/drm/i915/intel_uncore.h
> @@ -496,6 +496,18 @@ static inline int intel_uncore_write_and_verify(struct intel_uncore *uncore,
>  	return (reg_val & mask) != expected_val ? -EINVAL : 0;
>  }
>  
> +static inline bool reg_in_range_table(u32 addr, const struct i915_range *table)

exported functions should carry the name of the component that is exposing it.

something like intel_uncore_reg_in_range()

but also, based on your second patch, this doesn't seem to be the right thing to do.

although I hate the i915_utils.h, that sounds like a better place for a function like this.

or on a second thought... maybe just duplicate the logic that is inside this
function if only one extra call... or maybe duplicate this function along
the other table definition instead of having the table in one place and using
the helper from another place.

> +{
> +	while (table->start || table->end) {
> +		if (addr >= table->start && addr <= table->end)
> +			return true;
> +
> +		table++;
> +	}
> +
> +	return false;
> +}
> +
>  static inline void __iomem *intel_uncore_regs(struct intel_uncore *uncore)
>  {
>  	return uncore->regs;
> -- 
> 2.40.1
> 
