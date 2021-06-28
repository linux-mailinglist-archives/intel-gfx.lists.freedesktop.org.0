Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DAEC43B6407
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Jun 2021 17:01:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3713D6E492;
	Mon, 28 Jun 2021 15:01:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C94C76E492
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Jun 2021 15:01:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10029"; a="204964663"
X-IronPort-AV: E=Sophos;i="5.83,306,1616482800"; d="scan'208";a="204964663"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2021 08:01:26 -0700
X-IronPort-AV: E=Sophos;i="5.83,306,1616482800"; d="scan'208";a="419195530"
Received: from sankeeth-mobl.ger.corp.intel.com (HELO [10.213.225.79])
 ([10.213.225.79])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2021 08:01:25 -0700
To: Bommu Krishnaiah <krishnaiah.bommu@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210628143829.22995-1-krishnaiah.bommu@intel.com>
 <20210628143829.22995-4-krishnaiah.bommu@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <d329d512-0398-a373-d8d7-cd0dc8bb3a73@linux.intel.com>
Date: Mon, 28 Jun 2021 16:01:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210628143829.22995-4-krishnaiah.bommu@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 3/4] Klock work Fix for possible memory leak
 in intel_execlists_submission.c
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 28/06/2021 15:38, Bommu Krishnaiah wrote:
> Signed-off-by: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/gt/intel_execlists_submission.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> index cdb2126a159a8..a4673900af0e0 100644
> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> @@ -3847,6 +3847,7 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
>   
>   err_put:
>   	intel_context_put(&ve->context);
> +	kfree(ve);
>   	return ERR_PTR(err);
>   }
>   
> 
It looks like a false positive to me because it is already freed:

intel_context_put(&ve->context)
   -> rcu_virtual_context_destroy
        -> kfree(ve)

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
