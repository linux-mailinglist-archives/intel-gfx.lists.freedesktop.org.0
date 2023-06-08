Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FEF0728274
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 16:17:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0AFF10E5CC;
	Thu,  8 Jun 2023 14:17:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from www262.sakura.ne.jp (www262.sakura.ne.jp [202.181.97.72])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43C4A10E196
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jun 2023 14:17:39 +0000 (UTC)
Received: from fsav411.sakura.ne.jp (fsav411.sakura.ne.jp [133.242.250.110])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 358EHQmu072088;
 Thu, 8 Jun 2023 23:17:27 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav411.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav411.sakura.ne.jp);
 Thu, 08 Jun 2023 23:17:26 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/fsav411.sakura.ne.jp)
Received: from [192.168.1.6] (M106072142033.v4.enabler.ne.jp [106.72.142.33])
 (authenticated bits=0)
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id 358EHQd5072084
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NO);
 Thu, 8 Jun 2023 23:17:26 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Message-ID: <b5701db1-080f-ba95-17ea-66fca595dc00@I-love.SAKURA.ne.jp>
Date: Thu, 8 Jun 2023 23:17:28 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <cover.1686231190.git.jani.nikula@intel.com>
 <c816ebe17ef08d363981942a096a586a7658a65e.1686231190.git.jani.nikula@intel.com>
From: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
In-Reply-To: <c816ebe17ef08d363981942a096a586a7658a65e.1686231190.git.jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v6 2/3] drm/i915: add a dedicated workqueue
 inside drm_i915_private
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
Cc: luciano.coelho@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2023/06/08 22:35, Jani Nikula wrote:
> From: Luca Coelho <luciano.coelho@intel.com>
> 
> In order to avoid flush_scheduled_work() usage, add a dedicated
> workqueue in the drm_i915_private structure.  In this way, we don't
> need to use the system queue anymore.
> 
> This change is mostly mechanical and based on Tetsuo's original
> patch[1].
> 
> v6 by Jani:
> - Also create unordered_wq for mock device
> 
> Link: https://patchwork.freedesktop.org/series/114608/ [1]
> Cc: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Ah, I responded to [PATCH v6 3/3] before finding [PATCH v6 2/3] .
OK, you managed to sort out which work items need to be handled by
per device workqueue. Then, my patch will no longer be needed.


> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index dc8de861339d..b909814ae02b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -442,7 +442,7 @@ void intel_display_driver_remove_noirq(struct drm_i915_private *i915)
>  	intel_unregister_dsm_handler();
>  
>  	/* flush any delayed tasks or pending work */
> -	flush_scheduled_work();
> +	flush_workqueue(i915->unordered_wq);
>  
>  	intel_hdcp_component_fini(i915);

