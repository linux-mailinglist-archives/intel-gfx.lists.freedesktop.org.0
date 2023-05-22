Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ECF470C24E
	for <lists+intel-gfx@lfdr.de>; Mon, 22 May 2023 17:23:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB91810E35D;
	Mon, 22 May 2023 15:23:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AB3E10E35D
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 May 2023 15:23:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684769035; x=1716305035;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=qcNgew9yoNqf6KOoaCPK0gfMRmtqUt/MYvDCoG6L6qM=;
 b=FrLEkBQtYWQ2kSEF7p/Ib6UIyzJINlCdvgUERldVjbTA8E3aKuS7J+Fj
 uXb4N9kvbOVXqi+xeVLziuAvxWWYOKByPlGTQFDZO/3JHye8OGSVLvNmj
 fH/ILer1EM5mrfwKTIzpk62a6tcrYFkSNvFdQT+em3lRXXd4QGm/4N4ZH
 RU20LI5kbU1FVXucZVSHKKsw7/Qbb/4njaM4gTYmNOfaz2tc33Od9k5Oq
 gJ72+WCUu5HcP7KpdRqNkuO6pif9Tw4mB+AZ8867VYfMnloHWQYSmE1iW
 ss4hKZj68Din++al+f8Cldr9myp62+IOn29PAYsq7gc4Alo5qw1QykNnw A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="352972589"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="352972589"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2023 08:23:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="768567397"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="768567397"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.31.35])
 ([10.213.31.35])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2023 08:23:53 -0700
Message-ID: <45bd45ca-55e7-8239-9a4a-977cc2caca14@intel.com>
Date: Mon, 22 May 2023 17:23:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.11.0
Content-Language: en-US
To: Nirmoy Das <nirmoy.das@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230522124205.368-1-nirmoy.das@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20230522124205.368-1-nirmoy.das@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Wait for active retire before
 i915_active_fini()
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
Cc: andi.shyti@intel.com, chris.p.wilson@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 22.05.2023 14:42, Nirmoy Das wrote:
> i915_active_fini() finalizes the debug object, which can occur before
> the active retires and deactivates the debug object. Wait for one
> final time before calling i915_active_fini();
>
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/8311
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej

> ---
>   drivers/gpu/drm/i915/i915_vma.c | 2 ++
>   1 file changed, 2 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> index 20a44788999e..bad698bece27 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -1710,6 +1710,8 @@ static void release_references(struct i915_vma *vma, struct intel_gt *gt,
>   	if (vm_ddestroy)
>   		i915_vm_resv_put(vma->vm);
>   
> +	/* Wait for async active retire */
> +	i915_active_wait(&vma->active);
>   	i915_active_fini(&vma->active);
>   	GEM_WARN_ON(vma->resource);
>   	i915_vma_free(vma);

