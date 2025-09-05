Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12772B45788
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Sep 2025 14:18:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CD0210EB97;
	Fri,  5 Sep 2025 12:18:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MKAuw78q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AF5610EB97
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Sep 2025 12:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757074733; x=1788610733;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=JpSDG2PebG60+YUN+QmcPn1RdMGuhHnNSgMQLTBlWNw=;
 b=MKAuw78q7P5GBMiab5ampNhlTq4x0uYZyp9xFiHKj+UVstPQJZg8JD2i
 TOUo98YwYcxJW4bpGyJReln9yBYSXoH6juj3TxaRqq3duACmxe4IiBZLM
 wti4TBbrje4rWKkYnkjxedSfp0X03m5AXGAah4K4nS2OlRRAAhtu7c91n
 xz2ounsKb+3Y+mcYtv0iRHZX8Sjl/L3xHQ/GNbWJ+3v4x1xGId/RdIiep
 /5G8Z9feFSrgXoSpEgT4WoI55J0+HQ4mD+P8GGS4JRGr6rfckMaIsPhuh
 VCLN+7QspVis+PAv4U/AQdoQi0BrVumhNthW+rrhoozJUxz3XGQS/MKqk Q==;
X-CSE-ConnectionGUID: ZYAvNqiCRomiISakQxqs1g==
X-CSE-MsgGUID: fiMPY9x5T7SOnLyYTVCVSA==
X-IronPort-AV: E=McAfee;i="6800,10657,11543"; a="46996398"
X-IronPort-AV: E=Sophos;i="6.18,241,1751266800"; d="scan'208";a="46996398"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 05:18:53 -0700
X-CSE-ConnectionGUID: SjUQ7Z6CS0KDvIZ4YH2Nbw==
X-CSE-MsgGUID: /1/E+59fRDSSh0sOjr9/AQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,241,1751266800"; d="scan'208";a="209324860"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.248])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 05:18:51 -0700
Date: Fri, 5 Sep 2025 14:18:48 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
Cc: intel-gfx@lists.freedesktop.org, saurabhg.gupta@intel.com,
 alex.zuo@intel.com, krzysztof.karas@intel.com,
 sebastian.brzezinka@intel.com
Subject: Re: [PATCH] drm/i915/gt: Fix memory leak in hangcheck selftest
Message-ID: <aLrVKJO_9dnBP_3f@ashyti-mobl2.lan>
References: <20250904193041.12888-2-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250904193041.12888-2-jonathan.cavitt@intel.com>
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

Hi Jonathan,

...

> diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> index 619c70c54ef9..4f252f704975 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> @@ -904,9 +904,7 @@ static void active_engine(struct kthread_work *work)
>  			arg->result = PTR_ERR(ce[count]);
>  			pr_err("[%s] Create context #%ld failed: %d!\n",
>  			       engine->name, count, arg->result);
> -			if (!count)
> -				return;
> -			while (--count)
> +			while (count--)

This is a good catch, but we still need to decrease count by 1
before entering the loop, right?

Andi

>  				intel_context_put(ce[count]);
>  			return;
>  		}
> -- 
> 2.43.0
