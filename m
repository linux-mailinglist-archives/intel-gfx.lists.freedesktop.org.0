Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ABED733D47
	for <lists+intel-gfx@lfdr.de>; Sat, 17 Jun 2023 02:44:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7335B10E6B2;
	Sat, 17 Jun 2023 00:44:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:3::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E50A410E6B2
 for <intel-gfx@lists.freedesktop.org>; Sat, 17 Jun 2023 00:44:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
 Message-ID:Sender:Reply-To:Cc:Content-ID:Content-Description;
 bh=ItnGWuQpquf2b1TEP7clkw2IKQrhCrjgIHLfs11YHcM=; b=OXoTVG6tuNGMo28kkOBPLWYvjt
 u7824ydc5aQwbdp37WKTuiR9byTIVDRS6eBZzkZusbpbscBc18o2dPczYdKQDQtsi34IV7PTJWMPC
 /qX73ofr9U8qTLfaTM3wPYQBTArRNYfRSOKAVFNwhs+4enrPltV6YSEj8w8wd6Tuvww9TTXOjlDD5
 DwSTDPx0iBp3Fdkna4ygLDBVFWjouYCfY25BO/7X7pLvIKkwZZQO8FyZVcxos1h71AbfpbXP6qBwH
 BGZeaApVMlVJfCpX4Ow/XlCgG8bNpU+LqPGwcPDO0BifFyDQv7xtwsw9+qDp9jHiGNz5ljsG27cWc
 UDV30bYA==;
Received: from [2601:1c2:980:9ec0::2764]
 by bombadil.infradead.org with esmtpsa (Exim 4.96 #2 (Red Hat Linux))
 id 1qAK3J-002GFI-0E; Sat, 17 Jun 2023 00:44:29 +0000
Message-ID: <a1505581-38fb-9b64-d320-7c0e100186cf@infradead.org>
Date: Fri, 16 Jun 2023 17:44:27 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230616185104.2502003-1-imre.deak@intel.com>
From: Randy Dunlap <rdunlap@infradead.org>
In-Reply-To: <20230616185104.2502003-1-imre.deak@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: Add missing forward
 declarations/includes to display power headers
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi--

On 6/16/23 11:51, Imre Deak wrote:
> Add the seq_file struct forward declaration to intel_display_power.h
> fixing the build error below. While at it add the rest of missing
> forward declarations/includes to the display power header files.
> 
> In file included from <command-line>:
> ./../drivers/gpu/drm/i915/display/intel_display_power.h:255:70: error: 'struct seq_file'
> declared inside parameter list will not be visible outside of this definition or declaration [-Werror]
>   255 | void intel_display_power_debug(struct drm_i915_private *i915, struct seq_file *m);
>       |                                                                      ^~~~~~~~
> 
> Reported-by: Randy Dunlap <rdunlap@infradead.org>
> Closes: https://lore.kernel.org/intel-gfx/89adc1ac-25a0-6eb6-4cc9-ab6cc8d49730@infradead.org/
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Acked-by: Randy Dunlap <rdunlap@infradead.org>
Tested-by: Randy Dunlap <rdunlap@infradead.org> # build-tested

Thanks.

> ---
>  drivers/gpu/drm/i915/display/intel_display_power.h      | 4 ++++
>  drivers/gpu/drm/i915/display/intel_display_power_well.h | 2 ++
>  2 files changed, 6 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
> index be1a87bde0c9d..df38632c62371 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -6,6 +6,9 @@
>  #ifndef __INTEL_DISPLAY_POWER_H__
>  #define __INTEL_DISPLAY_POWER_H__
>  
> +#include <linux/mutex.h>
> +#include <linux/workqueue.h>
> +
>  #include "intel_wakeref.h"
>  
>  enum aux_ch;
> @@ -16,6 +19,7 @@ enum port;
>  struct drm_i915_private;
>  struct i915_power_well;
>  struct intel_encoder;
> +struct seq_file;
>  
>  /*
>   * Keep the pipe, transcoder, port (DDI_LANES,DDI_IO,AUX) domain instances
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.h b/drivers/gpu/drm/i915/display/intel_display_power_well.h
> index e494df379e6c2..1015bba4af01e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.h
> @@ -12,6 +12,8 @@
>  
>  struct drm_i915_private;
>  struct i915_power_well;
> +struct i915_power_well_ops;
> +struct intel_encoder;
>  
>  #define for_each_power_well(__dev_priv, __power_well)				\
>  	for ((__power_well) = (__dev_priv)->display.power.domains.power_wells;	\

-- 
~Randy
