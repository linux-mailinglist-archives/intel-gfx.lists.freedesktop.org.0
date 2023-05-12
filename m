Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07F28700826
	for <lists+intel-gfx@lfdr.de>; Fri, 12 May 2023 14:35:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E11110E696;
	Fri, 12 May 2023 12:35:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4707310E696
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 May 2023 12:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683894900; x=1715430900;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=X1yrdq24TscATSKbqtEZgz5SAkxNB26DWjvRjzq8/q0=;
 b=E5qGKATIOj1ILtYVJ3AGE4sGELU5yoMiQD41dvKqVwg9Gixo78XBPt6E
 Z/dhVHfE9jrv4KZB7mHwtV2wOzfBMkROA62twAGlLiMY1yCRrCdiH5fMa
 3BMRXga5UqbRaL/KPmaZvcn6Q8jEjo5SSbBepTV12WRS0qJvbGSToq8i2
 Y0zF7h85GimjK25vVe9wL0NEisuNfmEosb5XxsoG5NYIlb0lzfPY4SP81
 5pv6kC0BaRb37zEsOWJ31sFmCq1NHGu6NULAlDj9NI8rBmIousnclVbKv
 xYzVHUGphHN0JkkoAUIXbGvFUWMbxrkvNrPVN7Pzcsywz25BBddSh9gBs g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="378913288"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="378913288"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 05:34:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="677646660"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="677646660"
Received: from srajbhan-mobl9.amr.corp.intel.com (HELO [10.213.229.156])
 ([10.213.229.156])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 05:34:58 -0700
Message-ID: <96ec6553-120d-a94f-ef89-53ff0f10116a@linux.intel.com>
Date: Fri, 12 May 2023 13:34:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Luca Coelho <luciano.coelho@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230511082013.1313484-1-luciano.coelho@intel.com>
 <20230511082013.1313484-2-luciano.coelho@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20230511082013.1313484-2-luciano.coelho@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: add a dedicated workqueue
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 11/05/2023 09:20, Luca Coelho wrote:
> In order to avoid flush_scheduled_work() usage, add a dedicated
> workqueue in the drm_i915_private structure.  In this way, we don't
> need to use the system queue anymore.
> 
> This change is mostly mechanical and based on Tetsuo's original
> patch[1].
> 
> Link: https://patchwork.freedesktop.org/series/114608/ [1]
> Cc: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>

[snip]

> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 14c5338c96a6..06cd956b03ab 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -259,6 +259,8 @@ struct drm_i915_private {
>   	 */
>   	struct workqueue_struct *wq;
>   
> +	struct workqueue_struct *i915_wq;

Two things.

First, the i915->wq has a nice big comments accompanying both the 
declaration and initialization. Lets come up with at least one solid 
comment for the new one too. No one will otherwise know when to use 
i915->wq and when i915->i915_wq.

Which leads me to the second point. Lets try find a nicer name for it. 
i915->i915_wq reads a bit bad when we both have i915->wq and also i915 
mentioned twice. Easy cheat option could be to signify the property in 
the name - like i915->unordered_wq. Or something. It may depend on what 
that "solid comment" from the first point will be. I mean what we decide 
the prescribed use cases for the new wq will be.

Regards,

Tvrtko
