Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F407A4D1D2A
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Mar 2022 17:29:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AE2A10E2B4;
	Tue,  8 Mar 2022 16:29:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E744310E29B
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Mar 2022 16:29:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646756990; x=1678292990;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=W9dElgi4Wx08lrXUpbo7Hw/HPCKx7EyX1sVOO6YHXpY=;
 b=EuF9W5JLEWzOxvcc889dyCy14LcWI6StgI4Fw+zF2mlAcCLdnYvHNG0G
 6UIRzhaHKD+2/enJR6VGadg/+7lvluz4YQZ9djd5Xw8Zsw6izPFHYvvb6
 ffaKetRCT0Z72OTsckHy3xlI+5jqD8Km1u4MCLGyfRMMmC3SwoFFdiU1A
 bNkPqICYeTNYFSXf1LyYWQKL//hq4Zl9AO28/wHYQR5LMAWzjRutxgWFx
 uBRdCY/L0GM/LdkpTdeArfebuLx6B6GM7sW7sdUO17YFRJiCEr7XDCzen
 JeLb/rWJYZy99NpNDtmXC//g1ZvON1lqwIwD1aMq8UReyaeGf4OMrhqIp Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10280"; a="315447177"
X-IronPort-AV: E=Sophos;i="5.90,165,1643702400"; d="scan'208";a="315447177"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2022 08:29:25 -0800
X-IronPort-AV: E=Sophos;i="5.90,165,1643702400"; d="scan'208";a="553685100"
Received: from aslawinx-mobl.ger.corp.intel.com (HELO [10.99.249.183])
 ([10.99.249.183])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2022 08:29:23 -0800
Message-ID: <bc7f076d-e4b7-d995-391b-63cbdd2901f2@linux.intel.com>
Date: Tue, 8 Mar 2022 17:29:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Content-Language: en-US
To: Kai Vehmanen <kai.vehmanen@linux.intel.com>, alsa-devel@alsa-project.org, 
 tiwai@suse.de
References: <20220308141112.880662-1-kai.vehmanen@linux.intel.com>
From: =?UTF-8?Q?Amadeusz_S=c5=82awi=c5=84ski?=
 <amadeuszx.slawinski@linux.intel.com>
In-Reply-To: <20220308141112.880662-1-kai.vehmanen@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] ALSA: hda/i915 - avoid hung task timeout in
 i915 wait
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 3/8/2022 3:11 PM, Kai Vehmanen wrote:
> If kernel is built with hung task detection enabled and
> CONFIG_DEFAULT_HUNG_TASK_TIMEOUT set to less than 60 seconds,
> snd_hdac_i915_init() will trigger the hung task timeout in case i915 is
> not available and taint the kernel.
> 
> Split the 60sec wait into a loop of smaller waits to avoid this.
> 
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Co-developed-by: Ramalingam C <ramalingam.c@intel.com>
> Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
> Signed-off-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> ---
>   sound/hda/hdac_i915.c | 10 ++++++----
>   1 file changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/sound/hda/hdac_i915.c b/sound/hda/hdac_i915.c
> index 454474ac5716..6219de739b56 100644
> --- a/sound/hda/hdac_i915.c
> +++ b/sound/hda/hdac_i915.c
> @@ -143,7 +143,8 @@ static bool i915_gfx_present(void)
>   int snd_hdac_i915_init(struct hdac_bus *bus)
>   {
>   	struct drm_audio_component *acomp;
> -	int err;
> +	unsigned long wait = 0;

I'm not sure if it is best name for variable that is set to 0 ("false"), 
maybe `done` would be better? Especially looking at condition in the 
following for loop.

> +	int err, i;
>   
>   	if (!i915_gfx_present())
>   		return -ENODEV;
> @@ -159,9 +160,10 @@ int snd_hdac_i915_init(struct hdac_bus *bus)
>   	if (!acomp->ops) {
>   		if (!IS_ENABLED(CONFIG_MODULES) ||
>   		    !request_module("i915")) {
> -			/* 60s timeout */
> -			wait_for_completion_timeout(&acomp->master_bind_complete,
> -						    msecs_to_jiffies(60 * 1000));
> +			/* max 60s timeout */
> +			for (i = 0; !wait && i < 60; i++)
> +				wait = wait_for_completion_timeout(&acomp->master_bind_complete,
> +								   msecs_to_jiffies(1000));
>   		}
>   	}
>   	if (!acomp->ops) {
> 
> base-commit: fd7698cf0858f8c5e659b655109cd93c2f15cdd3

