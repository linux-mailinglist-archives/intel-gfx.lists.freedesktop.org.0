Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A1F97EC88A
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Nov 2023 17:29:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9370D10E0D2;
	Wed, 15 Nov 2023 16:29:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C8DA10E0D2
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Nov 2023 16:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700065739; x=1731601739;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=lJZMLqVmqwgXpzPCzKEWHTCEFZ2X9R3gEnPwxCLH7Tg=;
 b=M2hKk9nN7Tii+cP9ayXlYo+Occwx1fQz1cXhCHY8uIE5UO5ew7zCElxr
 RCBlZW4AV4TVdmCzsj8KeDZd+tvqPbdDgA8z0a+CWqZbCbmR/rF3Mbe00
 R0MQuUqCo4cJpPTXRaelD4g52Hb/fQ1jaMzOLjw/4W5PWqE+tZyTazPPk
 rbL91OUVeu8WNYkNWZAJtXgPOU/Clpy/ULiv7U0Q2JSgeqrrhL56Ox8uo
 5w5QbLJBRLMpdt7NdK6AV8F22UDJNZZzQZIhBiSHGLciQQMVC3cwqRIE6
 Vjwps1PN1b8RujMiC+g95mKpojH1f3CJGWTqFtOVmJIvZSAT/qD57iFc4 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="390702857"
X-IronPort-AV: E=Sophos;i="6.03,305,1694761200"; d="scan'208";a="390702857"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 08:28:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="908828296"
X-IronPort-AV: E=Sophos;i="6.03,305,1694761200"; d="scan'208";a="908828296"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.57.123])
 ([10.252.57.123])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 08:28:57 -0800
Message-ID: <676ff1ea-f54f-4f0e-8903-2c65aa6170f0@linux.intel.com>
Date: Wed, 15 Nov 2023 17:28:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Andrzej Hajda <andrzej.hajda@intel.com>, intel-gfx@lists.freedesktop.org
References: <20231115-eols-v1-1-d47a2f52b807@intel.com>
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <20231115-eols-v1-1-d47a2f52b807@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: add missing new-line to
 GT_TRACE
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
Cc: Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 11/15/2023 1:10 PM, Andrzej Hajda wrote:
> Trace requires new-line at the end of message (in opposition to printk),
> otherwise trace dump becomes messy.
>
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>

Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>

> ---
>   drivers/gpu/drm/i915/gt/intel_gt_pm.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> index f5899d503e234b..471b7cdc10ba0f 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> @@ -167,7 +167,7 @@ static void gt_sanitize(struct intel_gt *gt, bool force)
>   	enum intel_engine_id id;
>   	intel_wakeref_t wakeref;
>   
> -	GT_TRACE(gt, "force:%s", str_yes_no(force));
> +	GT_TRACE(gt, "force:%s\n", str_yes_no(force));
>   
>   	/* Use a raw wakeref to avoid calling intel_display_power_get early */
>   	wakeref = intel_runtime_pm_get(gt->uncore->rpm);
>
> ---
> base-commit: 1489bab52c281a869295414031a56506a375b036
> change-id: 20231115-eols-20f9f52cf338
>
> Best regards,
