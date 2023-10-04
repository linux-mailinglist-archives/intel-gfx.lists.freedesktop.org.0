Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D9E97B79FB
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Oct 2023 10:25:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F41310E345;
	Wed,  4 Oct 2023 08:25:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7482510E345
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Oct 2023 08:25:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696407944; x=1727943944;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=IPC/on8aXTxxqA8D4zIrSwtoJzoEwJMo3ZZp8X4eGQM=;
 b=PrWjZ3miAYgir4iAnADNlrpDU+HxOcqxNVvp+6UWZbjF+njVyFnWUDhr
 Vgnu5/rDcJrMSb/2R2JMBnkSKagH69hh7DtddssTNuOZGnWxIp9tooaPO
 LIgdk1I4nnxoxIrG6ze1NqHrR1Zh2rt+7XN1/OXjcq86ILj53XY1mETyR
 2WnsjVu+Zc/F64cLl+FQoPUi9yzQQ2gVzfiduCG9aORTFbhK5X/tolCFI
 Ds3F8365K5uDqMsb657Sz2hVnYNiPObcmC2iLWq96UuQaT2FQWHQhR/8J
 jSOocch2HSMlJeUahD6LkrUt5hLEx9fsKLXVSKFxGACXKHKEr63J6e41c A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="373440787"
X-IronPort-AV: E=Sophos;i="6.03,199,1694761200"; d="scan'208";a="373440787"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 01:25:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="867251163"
X-IronPort-AV: E=Sophos;i="6.03,199,1694761200"; d="scan'208";a="867251163"
Received: from mridgewa-mobl.ger.corp.intel.com (HELO [10.213.209.90])
 ([10.213.209.90])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 01:25:42 -0700
Message-ID: <985f0a7d-eb26-7739-e158-29b9fc07ff91@linux.intel.com>
Date: Wed, 4 Oct 2023 09:25:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20231003210840.1173401-1-jonathan.cavitt@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20231003210840.1173401-1-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Increase MCR lock timeout
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
Cc: gregory.f.germano@intel.com, saurabhg.gupta@intel.com, "Roper,
 Matthew D" <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 03/10/2023 22:08, Jonathan Cavitt wrote:
> Increase the timeout MCR waits for the steering semaphore
> in intel_gt_mcr_lock by a factor of 10.

Ideally you mention why in the commit message, with some appropriate 
level of detail depending on the situation.

+Matt for MCR stuff.

Regards,

Tvrtko

> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_gt_mcr.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> index 326c2ed1d99bb..e3f7fb1248809 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> @@ -378,7 +378,7 @@ void intel_gt_mcr_lock(struct intel_gt *gt, unsigned long *flags)
>   	 */
>   	if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 70))
>   		err = wait_for(intel_uncore_read_fw(gt->uncore,
> -						    MTL_STEER_SEMAPHORE) == 0x1, 100);
> +						    MTL_STEER_SEMAPHORE) == 0x1, 1000);
>   
>   	/*
>   	 * Even on platforms with a hardware lock, we'll continue to grab
