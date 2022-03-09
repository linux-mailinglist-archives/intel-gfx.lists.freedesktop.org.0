Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 08D654D2ABC
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Mar 2022 09:37:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DBD610EAAD;
	Wed,  9 Mar 2022 08:37:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5ADE210EAA7
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Mar 2022 08:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646815019; x=1678351019;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=br0Ks0x/B/6K1FBNRqE+IVP3UylZgYmhB0SZRUpCtYM=;
 b=Y1uqqcdaNskjnD2rrad1DJtcpvQS1dq5HTN+DRVZakISOJxBFSX7CuFo
 rAGFPNCV2Utz9jpr4L2MyYrgQTLITTzO/M4QYn1Wmi3WeEVgVkq4xcO+I
 Tz9zDCASgVT9+ciFKUpe/Cidz9fTOCFXhCADIFT7iMuqjGCGm05UjLAJS
 SV5MTAEpGc1XguF0mE+SuEjX8oF+NrL4wjJ5E+QzAJLwvx99gjTkRB/2E
 hrAFlMLbStlyvCgYT1QQw7q6Dz9z7If3mZv0a1uNKJzv4W7n1OfeVQGBt
 d+D3TxqxWiUzRqWd/CTR6VQmIcDDAbJ6bMgvIFXrRwW67POxEv03c/S7d g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10280"; a="341351252"
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="341351252"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 00:36:58 -0800
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="642073062"
Received: from hedwards-mobl1.ger.corp.intel.com (HELO [10.213.198.86])
 ([10.213.198.86])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 00:36:57 -0800
Message-ID: <f9f6f831-a05d-2d20-8ade-ab717f342ba5@linux.intel.com>
Date: Wed, 9 Mar 2022 08:36:54 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Kai Vehmanen <kai.vehmanen@linux.intel.com>, alsa-devel@alsa-project.org, 
 tiwai@suse.de
References: <20220308172759.920551-1-kai.vehmanen@linux.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220308172759.920551-1-kai.vehmanen@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2] ALSA: hda/i915 - avoid hung task timeout
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 amadeuszx.slawinski@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 08/03/2022 17:27, Kai Vehmanen wrote:
> If kernel is built with hung task detection enabled and
> CONFIG_DEFAULT_HUNG_TASK_TIMEOUT set to less than 60 seconds,
> snd_hdac_i915_init() will trigger the hung task timeout in case i915 is
> not available and taint the kernel.
> 
> Split the 60sec wait into a loop of smaller waits to avoid this.
> 
> Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
> Co-developed-by: Ramalingam C <ramalingam.c@intel.com>
> Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
> Signed-off-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> ---
>   sound/hda/hdac_i915.c | 10 ++++++----
>   1 file changed, 6 insertions(+), 4 deletions(-)
> 
> Changes V1->V2:
>   - address local variable naming issue raised by Amadeusz
>     and use Takashi's proposal
> 
> diff --git a/sound/hda/hdac_i915.c b/sound/hda/hdac_i915.c
> index 454474ac5716..aa48bed7baf7 100644
> --- a/sound/hda/hdac_i915.c
> +++ b/sound/hda/hdac_i915.c
> @@ -143,7 +143,7 @@ static bool i915_gfx_present(void)
>   int snd_hdac_i915_init(struct hdac_bus *bus)
>   {
>   	struct drm_audio_component *acomp;
> -	int err;
> +	int err, i;
>   
>   	if (!i915_gfx_present())
>   		return -ENODEV;
> @@ -159,9 +159,11 @@ int snd_hdac_i915_init(struct hdac_bus *bus)
>   	if (!acomp->ops) {
>   		if (!IS_ENABLED(CONFIG_MODULES) ||
>   		    !request_module("i915")) {
> -			/* 60s timeout */

Where does this 60s come from and why is the fix to work around 
DEFAULT_HUNG_TASK_TIMEOUT in a hacky way deemed okay? For instance would 
limiting the wait here to whatever the kconfig is set to be an option?

Regards,

Tvrtko

> -			wait_for_completion_timeout(&acomp->master_bind_complete,
> -						    msecs_to_jiffies(60 * 1000));
> +			/* max 60s timeout */
> +			for (i = 0; i < 60; i++)
> +				if (wait_for_completion_timeout(&acomp->master_bind_complete,
> +								msecs_to_jiffies(1000)))
> +					break;
>   		}
>   	}
>   	if (!acomp->ops) {
> 
> base-commit: fd7698cf0858f8c5e659b655109cd93c2f15cdd3
