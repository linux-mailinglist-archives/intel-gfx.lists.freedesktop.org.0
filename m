Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3221C75CC7B
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jul 2023 17:50:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1E5F10E6A0;
	Fri, 21 Jul 2023 15:50:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E69BC10E6B2
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jul 2023 15:50:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689954613; x=1721490613;
 h=date:from:to:subject:message-id:references:mime-version:
 in-reply-to; bh=EaG6FFusxX3qYRN0Kn1dvkwhOLXXCzEapTAMgEQxsj0=;
 b=JxBVCFhj79oThHv2y6kkI6s5A//abq/Q5zxucf9dRnyuCnUxGFhidHCY
 eq31U3SU+ohMDDLibU/O2JbCwd3bDLlX7pKoPPr8D8b4BYiRD2bkB7Bbw
 NIUxoHixSzsfUcG5LJPjZmpA6EXOoEa1n99TgtlPv9peqmenbNVURS0SC
 iJUhsxjmNpmdfoEneI0Z4UMm21Xdj2aLrQMxl23rj2WEyilXBg0gC2ODY
 R+08XrE4B54Adry1BUjD/PmeMktKHcIrCLPlzta9+T+6Vtn3ig+PTP6+t
 bbQthHfBRhtPvjTdhUw8qMfzOz7cJrIauvGthUOJm4zxkPk6QQIA44Ylj g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10778"; a="347344669"
X-IronPort-AV: E=Sophos;i="6.01,222,1684825200"; d="scan'208";a="347344669"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2023 08:50:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10778"; a="795006680"
X-IronPort-AV: E=Sophos;i="6.01,222,1684825200"; d="scan'208";a="795006680"
Received: from smile.fi.intel.com ([10.237.72.54])
 by fmsmga004.fm.intel.com with ESMTP; 21 Jul 2023 08:50:11 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.96)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1qMsOQ-00B86T-2I for intel-gfx@lists.freedesktop.org;
 Fri, 21 Jul 2023 18:50:10 +0300
Date: Fri, 21 Jul 2023 18:50:10 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <ZLqpMq6IYhaSvxYJ@smile.fi.intel.com>
References: <20230721135318.17603-1-andriy.shevchenko@linux.intel.com>
 <168995079555.22546.5088289986554893220@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <168995079555.22546.5088289986554893220@emeril.freedesktop.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv2=2C1/1=5D_drm/i915=3A_Move_abs=5F?=
 =?utf-8?q?diff=28=29_to_math=2Eh?=
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

On Fri, Jul 21, 2023 at 02:46:35PM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: series starting with [v2,1/1] drm/i915: Move abs_diff() to math.h
> URL   : https://patchwork.freedesktop.org/series/121131/
> State : warning
> 
> == Summary ==
> 
> Error: dim checkpatch failed
> 543baaccedcc drm/i915: Move abs_diff() to math.h
> -:142: CHECK:SPACING: No space is necessary after a cast
> #142: FILE: include/linux/math.h:161:
> +	(void) (&__a == &__b);			\

Ah, ah, this is existing code in the driver :-)
I will amend this in case a new version will be needed.

-- 
With Best Regards,
Andy Shevchenko


