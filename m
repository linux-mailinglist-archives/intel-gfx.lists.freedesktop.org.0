Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBB0964B5DC
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Dec 2022 14:15:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 839F710E1E7;
	Tue, 13 Dec 2022 13:14:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F198A10E1E7
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Dec 2022 13:14:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670937265; x=1702473265;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=aP+zQcFK27idfACuk29ipdjpoX5r25TB9mknkaKbi80=;
 b=FO/O3ZZnCO2ANvR/b5CNgre95vmawGBaMVzhofSbubPTJI7XScq+sgZl
 EUvxXGxXoU38WZwNlg5GviT4FUE/fn7If6kIVwnTcT4YfgotIb59s9da3
 Gk0411HfCHy5aKuzosLS1ZEb1F8hZGN6kjXL83KNHNbrreBJVr5Yzastn
 tqlqBBfQ3kNUpJgPg3KUnvw9EG/u/tj8RqOegpyT3qs/rvflMgQ+6tw77
 sqBaTq/nmDIyZhkEXPd+LjZKifldMi0LgsqK+QxsV6n38F+jVhJoHNJfQ
 6dloT6WIT0VfJX579uEmxfE6EMWMX/x3uMBxhpIBljqsnlYrVoyHAQ19+ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="315764473"
X-IronPort-AV: E=Sophos;i="5.96,241,1665471600"; d="scan'208";a="315764473"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 05:14:25 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="790928950"
X-IronPort-AV: E=Sophos;i="5.96,241,1665471600"; d="scan'208";a="790928950"
Received: from lherman-mobl.ger.corp.intel.com (HELO [10.213.234.101])
 ([10.213.234.101])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 05:14:23 -0800
Message-ID: <7f60b60f-7eb5-ef61-8bb4-ba7721665e9c@linux.intel.com>
Date: Tue, 13 Dec 2022 13:14:21 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: Andrzej Hajda <andrzej.hajda@intel.com>, intel-gfx@lists.freedesktop.org
References: <20221213121951.1515023-1-andrzej.hajda@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20221213121951.1515023-1-andrzej.hajda@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: use proper helper in
 igt_vma_move_to_active_unlocked
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 13/12/2022 12:19, Andrzej Hajda wrote:
> There is no need to use _i915_vma_move_to_active.
> No functional changes.
> 
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.h | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.h b/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.h
> index 1379fbc1443126..71a3ca8a886506 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.h
> +++ b/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.h
> @@ -38,7 +38,7 @@ igt_vma_move_to_active_unlocked(struct i915_vma *vma, struct i915_request *rq,
>   	int err;
>   
>   	i915_vma_lock(vma);
> -	err = _i915_vma_move_to_active(vma, rq, &rq->fence, flags);
> +	err = i915_vma_move_to_active(vma, rq, flags);
>   	i915_vma_unlock(vma);
>   	return err;
>   }

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
