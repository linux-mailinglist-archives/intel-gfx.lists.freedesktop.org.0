Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DABE787A8EC
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Mar 2024 15:01:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06BC910F319;
	Wed, 13 Mar 2024 14:01:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FBLtO4vx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57D4010F319
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Mar 2024 14:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710338514; x=1741874514;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=VW+S61MDR02W2ff21E1hYBH3aKi8Jdr986p299SND/s=;
 b=FBLtO4vxyZ56pdcRw5xFoiu8SIYEG+SeNYkRUq9cn9IqHp0l4YerflZL
 qaZmiyPqD9X+1CKQqcH8WnT1sBR7M51W9itVRFtdd2t2wha/uyw8epgM3
 +QY6WThtZUC7zRIMC9CX1bmxku68hhJ6uTPNDNhHZgHgRd35yZQDzFnCg
 0W15cfqo4RiSkgUV+7D+auQXCsYPZ2M8beE0dpylVHw2/mMQgzHYfQQC6
 12StFG+QmZmgsscjJ4rNGvczNCSgxl7u8EAY5uoUXf68x+nDJ/MnJWLrP
 NajD/GIPL1qwpd2YVyFg7+kv7059AICI2JZIo0xgOfwqsp7g1NZ1Xsb3N Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="27580936"
X-IronPort-AV: E=Sophos;i="6.07,122,1708416000"; d="scan'208";a="27580936"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2024 07:01:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="827779249"
X-IronPort-AV: E=Sophos;i="6.07,122,1708416000"; d="scan'208";a="827779249"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 13 Mar 2024 07:01:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 13 Mar 2024 16:01:49 +0200
Date: Wed, 13 Mar 2024 16:01:49 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v6 4/4] drm/i915/display: Increase number of fast wake
 precharge pulses
Message-ID: <ZfGxzYQl5GuPGM4J@intel.com>
References: <20240313133221.868391-1-jouni.hogander@intel.com>
 <20240313133221.868391-5-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240313133221.868391-5-jouni.hogander@intel.com>
X-Patchwork-Hint: comment
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

On Wed, Mar 13, 2024 at 03:32:21PM +0200, Jouni Högander wrote:
> Increasing number of fast wake sync pulses seem to fix problems with
> certain PSR panels. This should be ok for other panels as well as the eDP
> specification allows 10...16 precharge pulses and we are still within that
> range.
> 
> v2: add comment explaining pulse count is increased
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9739
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_aux.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> index 7e69be100d90..3264026454b2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> @@ -145,7 +145,12 @@ static int intel_dp_aux_sync_len(void)
>  
>  int intel_dp_aux_fw_sync_len(void)
>  {
> -	int precharge = 10; /* 10-16 */
> +	/*
> +	 * We faced some glitches on MTL with one PSR2 panel when using HW
> +	 * default 18. Using 20 is fixing these problems with the panel. It is
> +	 * still within range mentioned in eDP specification.
> +	 */

"MTL with one PSR2 panel" is super vague. Please mention the
actual machine model here.

With that 
Acked-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> +	int precharge = 12; /* 10-16 */
>  	int preamble = 8;
>  
>  	return precharge + preamble;
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
