Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 26FE879C934
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 10:04:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9689A10E3AD;
	Tue, 12 Sep 2023 08:04:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B35B10E3AD
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Sep 2023 08:04:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694505892; x=1726041892;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=C3AE2cmeV1gaUP3VN/Uj8WnWAM6qcg/vy5QyY/T/px4=;
 b=EYmiQocOqHlBItGT/l6OqfZqZDCHJgZkLr/2xY/VAd8+vs9nNUQ41d2e
 AbQN0XduYJv0MVf9Ln64VQ7OQ55/ClTtdtjKWYrIePaDR64mI7svRm6hl
 dvLJ1urKZDNuKU7+fAvcQnB+ZB6YaIqAlpQEofFT6+IMHaHVOp/6stpxa
 JM39W65Y0SB8I7sjCd6OmfH6TkvL+BzNVoopwSqn17Oz5zOLe/l9Wo9T0
 kU0PxdBAkJw9qlgVOgUGlppUNV1xPdm983nfiqkleihpIP4kzTEyfZcCo
 V4rnPBpvvksI/w8oftbBRII/oLT+JZdWLmPq3hA0JDppRW7L4BLb6qnIr w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="378218533"
X-IronPort-AV: E=Sophos;i="6.02,245,1688454000"; d="scan'208";a="378218533"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 01:04:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="743637511"
X-IronPort-AV: E=Sophos;i="6.02,245,1688454000"; d="scan'208";a="743637511"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.3.219])
 ([10.213.3.219])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 01:04:45 -0700
Message-ID: <0caf627f-cd3c-db31-cae4-f8ccdd163008@intel.com>
Date: Tue, 12 Sep 2023 10:04:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.15.0
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org
References: <20230912073521.2106162-1-andrzej.hajda@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20230912073521.2106162-1-andrzej.hajda@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: skip WA verfication for
 GEN7_MISCCPCTL on DG2
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



On 12.09.2023 09:35, Andrzej Hajda wrote:
> Some DG2 firmware locks this register for modification. Using wa_add
> with read_mask 0 allows to skip checks of such registers.
>
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>


Forgot to add tag:
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8945

Regards
Andrzej

> ---
>   drivers/gpu/drm/i915/gt/intel_workarounds.c | 7 +++++--
>   1 file changed, 5 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 70071ead0659cc..1d1474ad945e0c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1597,8 +1597,11 @@ dg2_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>   	/* Wa_14014830051:dg2 */
>   	wa_mcr_write_clr(wal, SARB_CHICKEN1, COMP_CKN_IN);
>   
> -	/* Wa_14015795083 */
> -	wa_write_clr(wal, GEN7_MISCCPCTL, GEN12_DOP_CLOCK_GATE_RENDER_ENABLE);
> +	/* Wa_14015795083
> +	 * Skip verification for possibly locked register.
> +	 */
> +	wa_add(wal, GEN7_MISCCPCTL, GEN12_DOP_CLOCK_GATE_RENDER_ENABLE,
> +	       0, 0, false);
>   
>   	/* Wa_18018781329 */
>   	wa_mcr_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);

