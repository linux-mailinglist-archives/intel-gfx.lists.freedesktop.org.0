Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A86725F0CDD
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Sep 2022 15:59:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D29E810ED10;
	Fri, 30 Sep 2022 13:59:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BCD810ED10
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Sep 2022 13:59:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664546366; x=1696082366;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=RmuUo06e9cbJvrNWttShECctBpCW/3/JsF/5DuqkiMI=;
 b=j4EvzeJ28WJHpwbQFhH+GBeuvf53OIAZnkEZivAk5LJk4BYUhC5JzxyN
 CkVyna5E+86MpNZcRemGJOZvuGq9voRgAtuCet6NtKUJAtT9tJJwGI+fw
 OlFPHzBD/Oxb3jhZ3biNHml/k6f1CP6UmS3Viz/icmwOv/DD1aRjY2auc
 Y6UeuegfCqHUiRwisITDKNGHGpz9vTNzwaDwFZeYmZoi8QylKZyzwQddz
 L7KrXHWD8AM/mf9q6z9Lonrf6tgpFawK+BkKniYe36Zkla812Z632bRXz
 7f/Ipk2OyW49Y6CC2uOSFVWF/4Q8dXzYtIGNJSuZNCKolBdk3dfF/+dAi Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10486"; a="302168228"
X-IronPort-AV: E=Sophos;i="5.93,358,1654585200"; d="scan'208";a="302168228"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2022 06:59:25 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10486"; a="655962665"
X-IronPort-AV: E=Sophos;i="5.93,358,1654585200"; d="scan'208";a="655962665"
Received: from dtrawins-mobl1.ger.corp.intel.com (HELO [10.252.7.39])
 ([10.252.7.39])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2022 06:59:24 -0700
Message-ID: <b81093c6-6e0d-1e84-58a0-e2ff0e0f3e0a@intel.com>
Date: Fri, 30 Sep 2022 14:59:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.3.0
Content-Language: en-GB
To: Tejas Upadhyay <tejas.upadhyay@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220930133223.2757282-1-tejas.upadhyay@intel.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <20220930133223.2757282-1-tejas.upadhyay@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ehl: Update MOCS table for EHL
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
Cc: Chris Wilson <chris.p.wilson@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 30/09/2022 14:32, Tejas Upadhyay wrote:
> Add these extra EHL entries back since we have
> drm-tip commit 13d29c823738
> ("drm/i915/ehl: unconditionally flush the pages on acquire")
> introduces proper flushing to make it work as expected.
> 
> Cc: Chris Wilson <chris.p.wilson@intel.com>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Fixes: 046091758b50 ("Revert "drm/i915/ehl: Update MOCS table for EHL"")
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>

Acked-by: Matthew Auld <matthew.auld@intel.com>

> ---
>   drivers/gpu/drm/i915/gt/intel_mocs.c | 8 ++++++++
>   1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
> index c6ebe2781076..152244d7f62a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_mocs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
> @@ -207,6 +207,14 @@ static const struct drm_i915_mocs_entry broxton_mocs_table[] = {
>   	MOCS_ENTRY(15, \
>   		   LE_3_WB | LE_TC_1_LLC | LE_LRUM(2) | LE_AOM(1), \
>   		   L3_3_WB), \
> +	/* Bypass LLC - Uncached (EHL+) */ \
> +	MOCS_ENTRY(16, \
> +		   LE_1_UC | LE_TC_1_LLC | LE_SCF(1), \
> +		   L3_1_UC), \
> +	/* Bypass LLC - L3 (Read-Only) (EHL+) */ \
> +	MOCS_ENTRY(17, \
> +		   LE_1_UC | LE_TC_1_LLC | LE_SCF(1), \
> +		   L3_3_WB), \
>   	/* Self-Snoop - L3 + LLC */ \
>   	MOCS_ENTRY(18, \
>   		   LE_3_WB | LE_TC_1_LLC | LE_LRUM(3) | LE_SSE(3), \
