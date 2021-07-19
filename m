Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 072A33CD017
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jul 2021 11:09:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0ED189E0D;
	Mon, 19 Jul 2021 09:09:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57BA989E0D;
 Mon, 19 Jul 2021 09:09:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10049"; a="191302238"
X-IronPort-AV: E=Sophos;i="5.84,251,1620716400"; d="scan'208";a="191302238"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2021 02:09:02 -0700
X-IronPort-AV: E=Sophos;i="5.84,251,1620716400"; d="scan'208";a="631842063"
Received: from mtlovett-mobl.ger.corp.intel.com (HELO [10.213.196.244])
 ([10.213.196.244])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2021 02:09:01 -0700
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>
References: <20210719083534.2949348-1-daniel.vetter@ffwll.ch>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <ea0ecfbd-6428-02e1-4785-bdf32e475eb8@linux.intel.com>
Date: Mon, 19 Jul 2021 10:09:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210719083534.2949348-1-daniel.vetter@ffwll.ch>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Check for nomodeset in
 i915_init() first
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 19/07/2021 09:35, Daniel Vetter wrote:
> Jason is trying to sort out the unwinding in i915_init and i915_exit,
> while reviewing those patches I noticed that we also have the
> nomodeset handling now in the middle of things.
> 
> Pull that out for simplisity in unwinding - if you run selftest with
> nomodeset you get nothing, *shrug*.

Where "nothing" equals success!? Quite bad for platform bringup on two 
levels.

Regards,

Tvrtko

> Cc: Jason Ekstrand <jason@jlekstrand.net>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_pci.c | 16 ++++++++--------
>   1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 67696d752271..6fe709ac1b4b 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -1199,14 +1199,6 @@ static int __init i915_init(void)
>   	bool use_kms = true;
>   	int err;
>   
> -	err = i915_globals_init();
> -	if (err)
> -		return err;
> -
> -	err = i915_mock_selftests();
> -	if (err)
> -		return err > 0 ? 0 : err;
> -
>   	/*
>   	 * Enable KMS by default, unless explicitly overriden by
>   	 * either the i915.modeset prarameter or by the
> @@ -1225,6 +1217,14 @@ static int __init i915_init(void)
>   		return 0;
>   	}
>   
> +	err = i915_globals_init();
> +	if (err)
> +		return err;
> +
> +	err = i915_mock_selftests();
> +	if (err)
> +		return err > 0 ? 0 : err;
> +
>   	i915_pmu_init();
>   
>   	err = pci_register_driver(&i915_pci_driver);
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
