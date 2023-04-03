Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C0106D41DF
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Apr 2023 12:21:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0851E10E3CF;
	Mon,  3 Apr 2023 10:21:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FB1710E3CF
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Apr 2023 10:21:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680517314; x=1712053314;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=BZD2MU8WWr1Rbdc5dBUffesIGPzJx4weMQAvj2p2cQc=;
 b=geMDzivmAhySFtMBQ/fHTGWGo512PiK+g6ELK4zDGMXNDL8co5Ulsxwz
 1OyduxF42bsAYK1ERetDEB5hrIXtKuMo9zz+pSe7hNTDytlqcpGh8bQvA
 1D875GO1+VcCgSXw90UV3wAApQ7AlyJtM+ZzxbMepskVdhz02ZDnzStA0
 /4Fe3kHw66ujxPw0LlczRg/IrDFa/0u+8J772h6bKyVerBV+GGEoCkSm1
 O8wdSjnCIffm73IRA06nLQr1Kav8PtyP7ps74O/jxHcRoy0T0mkV1uKuC
 Jb24zc4YwfcCYElyY+YgLZCxAxKWXyhAnI2F1nWOxpBjYTw+9T832wwOY A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10668"; a="321523901"
X-IronPort-AV: E=Sophos;i="5.98,314,1673942400"; d="scan'208";a="321523901"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2023 03:21:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10668"; a="663148490"
X-IronPort-AV: E=Sophos;i="5.98,314,1673942400"; d="scan'208";a="663148490"
Received: from sbonehil-mobl.ger.corp.intel.com (HELO [10.213.227.48])
 ([10.213.227.48])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2023 03:21:52 -0700
Message-ID: <bf911744-c53b-d10c-1ad1-36b0dc91502e@linux.intel.com>
Date: Mon, 3 Apr 2023 11:21:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20230331200253.1435236-1-umesh.nerlige.ramappa@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20230331200253.1435236-1-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/fdinfo: Enable fdinfo for GuC
 backends
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


On 31/03/2023 21:02, Umesh Nerlige Ramappa wrote:
> The underlying mechanism used to provide the client specific utilization
> in fdinfo is context busyness. When a context switches out, the HW
> records the runtime in the specific context field. This information is
> accumulated in fdinfo. This information is independent of the scheduling
> backend as long as contexts are switching out in reasonable time.
> 
> If a context is actively running on the engine, then the active busyness
> is calculated by using the delta between current time and the context
> switch in time. This part of the calculation depends on the scheduling
> backend. For GuC backends, this data comes entirely from GuC FW. The FW
> implementation is WIP.
> 
> Enable fdinfo for GuC based platforms with the exception that long
> running contexts will not provide reliable busyness data unless they
> switch out at some reasonable point in time.
> 
> Revert "drm/i915: Don't show engine information in fdinfo with GuC submission"
> This reverts commit 8d0e3decf26bc423d8b1c42c05636ccc05ea6b17.
> 
> Resolves: https://gitlab.freedesktop.org/drm/intel/issues/8303
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> Test-with: 20230331195915.5839-1-umesh.nerlige.ramappa@intel.com
> ---
>   drivers/gpu/drm/i915/i915_drm_client.c | 6 +-----
>   1 file changed, 1 insertion(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drm_client.c b/drivers/gpu/drm/i915/i915_drm_client.c
> index e8fa172ebe5e..d18d0a3ed905 100644
> --- a/drivers/gpu/drm/i915/i915_drm_client.c
> +++ b/drivers/gpu/drm/i915/i915_drm_client.c
> @@ -147,11 +147,7 @@ void i915_drm_client_fdinfo(struct seq_file *m, struct file *f)
>   		   PCI_SLOT(pdev->devfn), PCI_FUNC(pdev->devfn));
>   	seq_printf(m, "drm-client-id:\t%u\n", client->id);
>   
> -	/*
> -	 * Temporarily skip showing client engine information with GuC submission till
> -	 * fetching engine busyness is implemented in the GuC submission backend
> -	 */
> -	if (GRAPHICS_VER(i915) < 8 || intel_uc_uses_guc_submission(&i915->gt0.uc))
> +	if (GRAPHICS_VER(i915) < 8)
>   		return;
>   
>   	for (i = 0; i < ARRAY_SIZE(uabi_class_names); i++)

Ack in principle but we have to figure out why Kurt reports this doesn't 
work - usage always zero with real workloads.

Regards,

Tvrtko
