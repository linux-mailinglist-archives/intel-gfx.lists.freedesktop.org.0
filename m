Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFA7F4D47E2
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Mar 2022 14:16:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 090DE10E936;
	Thu, 10 Mar 2022 13:16:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3273E10E7C6
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Mar 2022 13:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646918159; x=1678454159;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=LO8u2Afk182eT+azNF0XyZj9u2g4BjVD1xWRqwk+HHU=;
 b=f1b5vKL6q824GAJHJYyci1qRzLf1VsGvIxF6YxWN8o9UNAl7dcTlnGeP
 QYPbwzTwiwlrhzixlufXwlvpKC+CGTSI0AsDMDbFewvoO1LAEbZyGXIQk
 Vz7FNzwhLmHs1xzp6iFETRoomjkxnIlYd56RfNhGgorNOw6h4GF/0Gbyz
 qrcOwO12ozLwGLTUYwi3dSWGe0oibSFEBAtQUp3uLwTER8boO65zUrbmw
 E6svWanKQn9vvqbirpzvigOZUniJE6zqLxz0lgtPUC1i29RENLBw59e2p
 M62peAlfCNXDujzmr0GT5jzrO3geOtZbvk9soSMyZCat49XmMWPexjtel g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="242691997"
X-IronPort-AV: E=Sophos;i="5.90,170,1643702400"; d="scan'208";a="242691997"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 05:15:57 -0800
X-IronPort-AV: E=Sophos;i="5.90,170,1643702400"; d="scan'208";a="548007889"
Received: from npalmass-mobl1.amr.corp.intel.com (HELO [10.213.186.207])
 ([10.213.186.207])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 05:15:56 -0800
Message-ID: <9cb04727-971d-842f-db79-dcc10d70532b@linux.intel.com>
Date: Thu, 10 Mar 2022 13:15:53 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Kai Vehmanen <kai.vehmanen@linux.intel.com>, alsa-devel@alsa-project.org, 
 tiwai@suse.de
References: <20220309182439.1053856-1-kai.vehmanen@linux.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220309182439.1053856-1-kai.vehmanen@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v3] ALSA: hda/i915 - avoid hung task timeout
 in i915 wait
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
Cc: intel-gfx@lists.freedesktop.org, lucas.demarchi@intel.com,
 amadeuszx.slawinski@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 09/03/2022 18:24, Kai Vehmanen wrote:
> If kernel is built with hung task detection enabled and
> CONFIG_DEFAULT_HUNG_TASK_TIMEOUT set to less than 60 seconds,
> snd_hdac_i915_init() will trigger the hung task timeout in case i915 is
> not available and taint the kernel.
> 
> Use wait_for_completion_killable_timeout() for the wait to
> avoid this problem.
> 
> Co-developed-by: Ramalingam C <ramalingam.c@intel.com>
> Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
> Signed-off-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> ---
>   sound/hda/hdac_i915.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> Changes V2->V3:
>   - drop the loop and just use
>     wait_for_completion_killable_timeout() (feedback from Tvrtko Ursulin)
>   - new approach, so dropped the previous reviewed-by tags
> 
> diff --git a/sound/hda/hdac_i915.c b/sound/hda/hdac_i915.c
> index 454474ac5716..efe810af28c5 100644
> --- a/sound/hda/hdac_i915.c
> +++ b/sound/hda/hdac_i915.c
> @@ -160,8 +160,8 @@ int snd_hdac_i915_init(struct hdac_bus *bus)
>   		if (!IS_ENABLED(CONFIG_MODULES) ||
>   		    !request_module("i915")) {
>   			/* 60s timeout */
> -			wait_for_completion_timeout(&acomp->master_bind_complete,
> -						    msecs_to_jiffies(60 * 1000));
> +			wait_for_completion_killable_timeout(&acomp->master_bind_complete,
> +							     msecs_to_jiffies(60 * 1000));
>   		}
>   	}
>   	if (!acomp->ops) {

Works for me, as discussed I think this is more correct.

Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko

> 
> base-commit: 3a0099a1909dea6022690b0ae496938dd2e5771c
