Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A6E75AACBF
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Sep 2022 12:48:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 567C010E45E;
	Fri,  2 Sep 2022 10:48:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BEE510E45E
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Sep 2022 10:48:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662115712; x=1693651712;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=PUWm4RYd+huePFeSsn3be57zy1CwpgALMbVIlqqbCsA=;
 b=CG9vjr00K7OYHXty18UNe0SM//Ma51XLgY/UrmOX4wI/qyT/62vT+wEQ
 K9sNbB331WFJWQ0MkvM3Fe2B6aqYdVBC+7yP4SmD/7G0b5BPYZsA4yLuR
 Ol6QPqvJa0LhSGb6Y2hC2WsS395/coHzoY8aMDKVUenXDpivivgfKaMP0
 AlGpZcLWi3Wyge/VeHqcsIau3z8etB/giS7GGoBvtqS2GOJ92JTeIiQm/
 sgBUljktWndSWWwal87/2j2ZG2NPpX6NiO2qFaOdlXMEdl/cmH0DJWWHY
 fJ6SSYGl3mFWemturXNZDT+EkIYIpyLeOWTfabWKJN1QBJF4G+yMCFUfy A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10457"; a="278971139"
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="278971139"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 03:48:19 -0700
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="674311187"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.43.234])
 ([10.252.43.234])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 03:48:18 -0700
Message-ID: <4af93785-c413-50ac-748a-cc7b3ada536a@linux.intel.com>
Date: Fri, 2 Sep 2022 12:48:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Content-Language: en-US
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220902095126.373036-1-rodrigo.vivi@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20220902095126.373036-1-rodrigo.vivi@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Don't try to disable host RPS
 when this was never enabled.
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

LGTM the series is:

Acked-by: Nirmoy Das <nirmoy.das@intel.com>

On 9/2/2022 11:51 AM, Rodrigo Vivi wrote:
> Specially in GT reset case this could be triggered and try
> to disable things that had never been enabled. Let's add
> some protection here.
>
> Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_rps.c | 3 +++
>   1 file changed, 3 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
> index 579ae9ac089c..6fadde4ee7bf 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
> @@ -1551,6 +1551,9 @@ void intel_rps_disable(struct intel_rps *rps)
>   {
>   	struct drm_i915_private *i915 = rps_to_i915(rps);
>   
> +	if (!intel_rps_is_enabled(rps))
> +		return;
> +
>   	intel_rps_clear_enabled(rps);
>   	intel_rps_clear_interrupts(rps);
>   	intel_rps_clear_timer(rps);
