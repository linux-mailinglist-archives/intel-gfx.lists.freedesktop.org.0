Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E68343F4EE
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Oct 2021 04:19:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89FE76E9AC;
	Fri, 29 Oct 2021 02:19:29 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFFCD6E9AC;
 Fri, 29 Oct 2021 02:19:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10151"; a="228024445"
X-IronPort-AV: E=Sophos;i="5.87,191,1631602800"; d="scan'208";a="228024445"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2021 19:19:27 -0700
X-IronPort-AV: E=Sophos;i="5.87,191,1631602800"; d="scan'208";a="538277611"
Received: from jons-linux-dev-box.fm.intel.com (HELO jons-linux-dev-box)
 ([10.1.27.20])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2021 19:19:27 -0700
Date: Thu, 28 Oct 2021 19:14:51 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: John.C.Harrison@Intel.com
Cc: IGT-Dev@Lists.FreeDesktop.Org, Intel-GFX@Lists.FreeDesktop.Org
Message-ID: <20211029021451.GA33110@jons-linux-dev-box>
References: <20211021234044.3071069-1-John.C.Harrison@Intel.com>
 <20211021234044.3071069-2-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211021234044.3071069-2-John.C.Harrison@Intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 1/8]
 tests/i915/gem_exec_capture: Remove pointless assert
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

On Thu, Oct 21, 2021 at 04:40:37PM -0700, John.C.Harrison@Intel.com wrote:
> From: John Harrison <John.C.Harrison@Intel.com>
> 
> The 'many' test ended with an 'assert(count)', presumably meaning to
> ensure that some objects were actually captured. However, 'count' is
> the number of objects created not how many were captured. Plus, there
> is already a 'require(count > 1)' at the start and count is invarient
> so the final assert is basically pointless.
> 
> General concensus appears to be that the test should not fail
> irrespective of how many blobs are captured as low memory situations
> could cause the capture to be abbreviated. So just remove the
> pointless assert completely.
> 
> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

Reviewed-by: Matthew Brost <matthew.brost@intel.com>

> ---
>  tests/i915/gem_exec_capture.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/tests/i915/gem_exec_capture.c b/tests/i915/gem_exec_capture.c
> index 7e0a8b8ad..53649cdb2 100644
> --- a/tests/i915/gem_exec_capture.c
> +++ b/tests/i915/gem_exec_capture.c
> @@ -524,7 +524,6 @@ static void many(int fd, int dir, uint64_t size, unsigned int flags)
>  	}
>  	igt_info("Captured %lu %"PRId64"-blobs out of a total of %lu\n",
>  		 blobs, size >> 12, count);
> -	igt_assert(count);
>  
>  	free(error);
>  	free(offsets);
> -- 
> 2.25.1
> 
